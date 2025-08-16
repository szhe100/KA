alter PROCEDURE [dbo].[sp_qrymedstock] (@year int,@month tinyint,@mateid int,@medid int) 
  AS
/*
生成 商业进销存报表 数据
*/

declare @dt1 smalldatetime,@dt2 smalldatetime

--select @dt1=cast(str(@year,4)+'-'+str(@month,2)+'-1' as datetime)
-- 取当月第一天： SELECT dt1=DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0),dt2=DATEADD(DAY, 1, EOMONTH(GETDATE()))   -- 取下月第一天

select @dt1=DATEFROMPARTS(@year,@month,1)
select @dt2=DATEADD(DAY, 1, EOMONTH(@dt1)) 

if exists (select 1 from tempdb..sysobjects where id=object_id('tempdb..#tmp'))
  drop table #tmp

  select a.mate_id,a.med_id,a.bat_cd,
		 qty0=sum(case when a.carry_dt< @dt1 then cast(qty1-qty2+qty3 as decimal(15,2)) end),
		 qty1=sum(case when a.carry_dt>=@dt1 then cast(qty1 as decimal(15,2)) end),
		 qty2=sum(case when a.carry_dt>=@dt1 then cast(qty2 as decimal(15,2)) end),
		 qty3=sum(case when a.carry_dt>=@dt1 then cast(qty1 as decimal(15,2)) end),
		 bal =sum(cast(qty1-qty2+qty3 as decimal(15,2)))
   into #tmp
   from 
  ( 
   ---SAP商业采购
  		select a.carry_dt,b.mate_id,m.med_id,bat_cd=a.CHARG,qty1=isnull(a.qty,0),qty2=0,qty3=0
			from SAP_ZSD_015 a
			left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
            inner join (select med_id,material_code from tb_medicine) m on a.MATNR=m.material_code 
		where KDGRP in ('10','19')
            and a.carry_dt<@dt2

   ---KA商业采购
		union all
  		select a.carry_dt,c.mate_id,b.med_id,bat_cd,qty1=isnull(b.qty,0),qty2=0,qty3=0
			from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			inner join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) c on a.dst_id=c.mate_id
		where a.bod_type_id=1 and a.cate_id=1
            and a.carry_dt<@dt2

   ---KA商业销售 - 调拨 调入方
		union all
  		select a.carry_dt,c.mate_id,b.med_id,bat_cd,qty1=isnull(b.qty,0),qty2=0,qty3=0
			from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			inner join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) c on a.dst_id=c.mate_id
		where a.bod_type_id=2 and a.cate_id=1
            and a.carry_dt<@dt2

   ---KA商业销售 - 销售 售出方
		union all
  		select a.carry_dt,c.mate_id,b.med_id,bat_cd,qty1=0,qty2=isnull(b.qty,0),qty3=0
			from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			inner join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) c on a.src_id=c.mate_id
		where a.bod_type_id=2 and a.cate_id=1
            and a.carry_dt<@dt2

   ---KA商业盘点单
		union all
  		select a.carry_dt,c.mate_id,b.med_id,bat_cd,qty1=0,qty2=0,qty3=isnull(b.qty,0)
			from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			inner join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) c on a.dst_id=c.mate_id
		where a.bod_type_id=10 and a.busi_type=1
            and a.carry_dt<@dt2
	) a 
	where (@mateid=0 or a.mate_id=@mateid) and (@medid=0 or a.med_id=@medid)
	group by a.mate_id,a.med_id,bat_cd

	insert tb_matestock_desc (fyear,fmonth,mate_id,med_id,bat_cd,qty0,qty1,qty2,qty3) --,adj_qty1,adj_qty2,desc1,desc2,adj_diff,
	select @year int,@month,mate_id,med_id,bat_cd,qty0,qty1,qty2,qty3
	from #tmp a where not exists (select 1 from tb_matestock_desc b where b.fyear=@year and b.fmonth=@month and a.mate_id=b.mate_id and a.med_id=b.med_id and a.bat_cd=b.bat_cd)

	update b set qty0=a.qty0,qty1=a.qty1,qty2=a.qty2,qty3=a.qty3
		from #tmp a inner join tb_matestock_desc b on b.fyear=@year and b.fmonth=@month and a.mate_id=b.mate_id and a.med_id=b.med_id and a.bat_cd=b.bat_cd

/*
以下加入 加入 导入库存记录   insert into tb_matestock (mate_id,med_id,bat_cd,occur_dt,qty,creat_by,creat_dt)
*/

	insert tb_matestock_desc (fyear,fmonth,mate_id,med_id,bat_cd,imp_qty) --,adj_qty1,adj_qty2,desc1,desc2,adj_diff,
	select @year int,@month,mate_id,med_id,bat_cd,qty
	from tb_matestock a where not exists (select 1 from tb_matestock_desc b where b.fyear=@year and b.fmonth=@month and b.fyear=year(a.occur_dt) and b.fmonth=month(a.occur_dt) and a.mate_id=b.mate_id and a.med_id=b.med_id and a.bat_cd=b.bat_cd)

	update b set imp_qty=a.qty
		from tb_matestock a inner join tb_matestock_desc b on b.fyear=@year and b.fmonth=@month and b.fyear=year(a.occur_dt) and b.fmonth=month(a.occur_dt) and a.mate_id=b.mate_id and a.med_id=b.med_id and a.bat_cd=b.bat_cd

	select a.*,bal=isnull(qty0,0)+isnull(qty1,0)-isnull(qty2,0)+isnull(qty3,0),c.mate_code,c.mate_name,cdistrict=dbo.fn_getdistrict1(c.district),
		m.med_code,m.material_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,m.qtyperpack,med_unit=dbo.fn_obj_desc(m.unit_id)
	from tb_matestock_desc a
	inner join tb_busimate c on a.mate_id=c.mate_id
	left join tb_medicine m on a.med_id=m.med_id
	where fyear=@year and fmonth=@month
		and (@mateid=0 or a.mate_id=@mateid) and (@medid=0 or a.med_id=@medid)
	order by dbo.fn_getdistrict1(c.district),c.mate_name

return

GO