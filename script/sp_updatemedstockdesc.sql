CREATE PROCEDURE [dbo].[sp_updatemedstockdesc] (@year int,@month tinyint) 
  AS
/*
生成tb_settlelist数据
*/

declare @dt1 smalldatetime,@dt2 smalldatetime

--select @dt1=cast(str(@year,4)+'-'+str(@month,2)+'-1' as datetime)
-- 取当月第一天： SELECT dt1=DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0),dt2=DATEADD(DAY, 1, EOMONTH(GETDATE()))   -- 取下月第一天

select @dt1=DATEFROMPARTS(@year,@month,1)
select @dt2=DATEADD(DAY, 1, EOMONTH(@dt1)) 



--select @dt2=cast(str(case when @month=12 then @year+1 else @year end,4)+'-'+str(case when @month=12 then 1 else @month+1 end,2)+'-1' as datetime)

if exists (select 1 from tb_bill a,tb_busimate c where (a.bod_type_id in (2,36,42) or a.bod_type_id=1 and a.cate_id=2) and a.bod_status_id=1 and a.dst_id=c.mate_id
	and a.carry_dt>=@dt1 and a.carry_dt<@dt2
	and a.comp_id=@compid
	and not exists (select 1 from tb_settlelist t where a.comp_id=t.comp_id and t.year=@year and t.month=@month and t.district_id=c.district) )

insert into tb_settlelist (year,month,comp_id,district_id,settled)
select distinct @year,@month,a.comp_id,c.district,0
	from tb_bill a,tb_busimate c where (a.bod_type_id in (2,36,42) or a.bod_type_id=1 and a.cate_id=2) and a.bod_status_id=1 and a.dst_id=c.mate_id
	and a.carry_dt>=@dt1 and a.carry_dt<@dt2
	and a.comp_id=@compid
	and not exists (select 1 from tb_settlelist t where a.comp_id=t.comp_id and t.year=@year and t.month=@month and t.district_id=c.district)

return



GO


