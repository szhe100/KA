declare @compid tinyint,@distid int,@agentid int,@f1 bit,@dt1 datetime,@dt2 datetime
select @compid=1,@distid=0,@agentid=17823,@f1=0,@dt1='2025-01-01',@dt2='2025-07-24'

/*
分销返款汇总表(代理人汇总)

sp_qryreport24h 1,0,17823,0,'2025-01-01','2025-07-24'
*/

set nocount on

set @dt2=DATEADD(day,1,@dt2)

if exists (select 1 from tempdb..sysobjects where id=object_id('tempdb..#tmp'))
  drop table #tmp

  select a.agent_id,--a.district,
		 bal0=sum(case when a.carry_dt< @dt1 or a.carry_dt is null then cast(isnull(amot,0)+isnull(rec_amot,0)-isnull(pay_amot,0) as decimal(15,2)) end),
		 amot=sum(case when a.carry_dt>=@dt1 then cast(isnull(amot,0) as decimal(15,2)) end),
		 rec_amot=sum(case when a.carry_dt>=@dt1 then cast(isnull(rec_amot,0) as decimal(15,2)) end),
		 pay_amot=sum(case when a.carry_dt>=@dt1 then cast(isnull(pay_amot,0) as decimal(15,2)) end)
   into #tmp
   from 
  ( 
    		select a.carry_dt,agent_id=c.mate_id, --amot=isnull(i.amot,0)*a.qty,
			amot=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else a.amot1/cast(a.KONV as decimal(15,4))*i.amot end as decimal(15,2)),
		    rec_amot=0,pay_amot=0
			from SAP_ZSD_015 a
			left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
			left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP
			left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
				on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)
		where KDGRP not in ('10','19')
			and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)
            and a.carry_dt<@dt2

		union all 
		select a.carry_dt,a.agent_id,amot=0,rec_amot=a.bod_amot,pay_amot=0
		  from tb_bill a
			--left join tb_busimate e on a.dst_id=e.mate_id
		 where a.bod_type_id=36 and a.bod_status_id=1
			and a.carry_dt<@dt2

		union all 
		 select a.carry_dt,c.agent_id,amot=0,rec_amot=0,pay_amot=b.amot
		  from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			inner join tb_bill c on b.med_id=c.bod_id
		 where a.bod_type_id=30 and a.bod_status_id=1
			and a.carry_dt<@dt2

/*
		union all    -- 2022.1.1 期初
		 select carry_dt=null,a.agent_id,amot=bal0,rec_amot=0,pay_amot=0
		  from tb_agentbal a
*/
	) a 
	where (@agentid=0 or a.agent_id=@agentid)
	group by agent_id
	--having @f1=1 or sum(isnull(bal0,0))+sum(isnull(amot,0))+sum(isnull(rec_amot,0))-sum(isnull(pay_amot,0))<>0


  select h.*,agent=p.mate_name,agent_code=p.mate_code,cdistrict=dbo.fn_getdistrict1(p.district)
	from #tmp h
	left join tb_busimate p on h.agent_id=p.mate_id
	where @f1=1 or (isnull(bal0,0)<>0 or isnull(amot,0)<>0 or isnull(rec_amot,0)<>0 or isnull(pay_amot,0)<>0)
	order by dbo.fn_getdistrict1(p.district),p.mate_name

-- 徐福海 25.1.1 至今 分销采购 回款应付金额: 1978309.8

select top 10 * from tB_busimate where mate_type_id=1 order by mate_id desc  --28023

select top 10 * from tB_busimate order by mate_id desc  --28023

select * into tb_busimate_250724 from tB_busimate 


31502

alter table tb_busimate alter column mate_name varchar(200)





declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(200),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) 
select 2,'986655','中牟县中医院（中牟县中医院总医院）','三级','公立','河南省 郑州市','河南省郑州市中牟县泰安街6号','0371-62170825','' union all  select 3,'878407','南京鼓楼医院','三级','公立','江苏省 南京市','南京市鼓楼区中山路321号','025-83106666','' union all  select 4,'868613','北京市丰台区妇幼保健计划生育服务中心（北京市丰台区妇幼保健院）','三级','公立','北京市 丰台区','丰台区右安门外开阳里三区1号','010-67532464','' union all  select 5,'860112','昆山市第二人民医院','二级','公立','江苏省 苏州市','昆山市玉山镇中山路142号','0512-57553976','' union all  select 6,'754812','常熟市第一人民医院（常熟市职业病防治院）','三级','公立','江苏省 苏州市','常熟市书院街1号','0512-2772228','' union all  select 7,'751827','北京怀柔医院','三级','公立','北京市 怀柔区','北京市怀柔区永泰北街9号院','010-60686699-8508','' declare @cnt1 int,@cnt2 int update a set id3=case when f3 like '%一级%' then 1 when f3 like '%二级%' then 2 when f3 like '%三级%' then 3 when f3 like '%特三甲%' then 4      when f3 like '%社区%' then 5 when f3 like '%基层%' then 6 when f3 like '%诊所%' then 7 when f3 like '%药店%' then 8 end,  id4=case when f4 like '%公立%' then 1 when f4 like '%民营%' then 2 when f4 like '%连锁%' then 3 when f4 like '%电商%' then 4 when f4 like '%厂矿职工%' then 5 when f4 like '%第三终端%' then 6 end 
from @tab a 
update a set mate_name=b.f2,busi_type_id=b.id3,kind_id=b.id4,district=h.code,address=b.f6,phone=b.f7,remark1=b.f8 ,modify_by=19232,modify_dt=getdate() from tb_busimate a inner join @tab b on a.mate_code=b.f1 inner join vi_district1 h on b.f5=h.name or b.f5=h.prov_name+' '+h.name set @cnt1=@@ROWCOUNT insert into tb_busimate (mate_type_id,mate_code,mate_name,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)  select mate_type_id=1,mate_code=f1,mate_name=f2,busi_type_id=a.id3,kind_id=a.id4,district=h.code,  address=a.f6,phone=a.f7,remark1=a.f8,creat_by=19232,creat_dt=getdate() from @tab a inner join vi_district1 h on a.f5=h.name or a.f5=h.prov_name+' '+h.name where not exists (select 1 from tb_busimate b where mate_type_id=1 and (a.f1=b.mate_code or a.f2=b.mate_name)) set @cnt2=@@ROWCOUNT  
select @cnt1,@cnt2

select * from SAP_ZSD_PR02

                update b set KNUMH=a.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                 from SAP_ZSD_PR02 a
                 inner join (select MATNR,ZREGIO,ZCITYNUM,KNUMH=max(KNUMH) from SAP_ZSD_PR02 group by MATNR,ZREGIO,ZCITYNUM) c on a.KNUMH=c.KNUMH
                 inner join tb_medprice b on b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end

                insert into tb_medprice (type_id,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district_id,med_id,price,currency,price_unit,KPEIN,KMEIN,valid_from,valid_to)
                select type_id=1,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR02 a
                 left join tb_district b on a.ZCOUNTRY=b.country and b.city_code=a.zregio+'00'  -- and (b.city_name=''
                 left join tb_medicine m on a.matnr=m.material_code 
                where not exists (select 1 from tb_medprice b where b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end)
