declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100)) insert into @tab (line_no,f1,f2,f3,f4,f5,f6) 
select 2,'黑龙江省药泉科技有限公司','小规模纳税人','准入','正常','2025-04-28 15:50:43','91230104MABUD8B90F' union all  select 3,'黑龙江省药泉科技有限公司','小规模纳税人','准入','正常','2025-05-29 09:03:13','91230104MABUD8B90F' union all  select 4,'黑龙江省药泉科技有限公司','小规模纳税人','准入','正常','2025-05-29 09:02:30','91230104MABUD8B90F' union all  select 5,'黄山耕读生物科技有限公司','小规模纳税人','准入','正常','2024-12-04 14:00:00','91341000MA2NCPBC34' union all  select 6,'马鞍山羽创医药咨询有限责任公司','小规模纳税人','准入','正常','2024-12-04 14:00:00','91340503MA8PLF0A12' union all  select 7,'马鞍山羽创医药咨询有限责任公司','小规模纳税人','准入','正常','2024-12-10 09:16:00','91340503MA8PLF0A12' 

select * from @tab

select f1,f2,f3,f4,f5=max(f5),f6 into #tmp from @tab
group by f1,f2,f3,f4,f6
select * from #tmp

select * from tb_busimate where mate_type_id=10

delete from tb_busimate where mate_type_id=10
delete from tb_busimate where mate_type_id=1

confirm_dt=max(f5),mate_code=f6,creat_by=19273,creat_dt=getdate() 
from @tab a 
--where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f6=b.mate_code) 
group by f1,case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,case f3 when '准入' then 1 when '终止' then 2 end,case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,f6


select comp_id=1,mate_type_id=10,mate_name=f1,  tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 1 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,
confirm_dt=max(f5),mate_code=f6,creat_by=19273,creat_dt=getdate() 
from @tab a 
--where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f6=b.mate_code) 
group by f1,case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,case f3 when '准入' then 1 when '终止' then 2 end,case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,f6

select distinct comp_id=1,mate_type_id=10,mate_name=f1,  tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 1 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,
confirm_dt=f5,mate_code=f6,creat_by=19273,creat_dt=getdate() 
from @tab a 
where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f6=b.mate_code) 

select @cnt2=@@ROWCOUNT  


declare @cnt1 int,@cnt2 int 

update a set mate_name=f1,tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 1 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,  confirm_dt=f5,mate_code=f6,modify_by=19273,modify_dt=getdate() 
from tb_busimate a,@tab b where a.mate_type_id=10 and a.mate_code=b.f6 
select @cnt1=@@ROWCOUNT 
insert into tb_busimate (comp_id,mate_type_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt,mate_code,creat_by,creat_dt)  
select distinct comp_id=1,mate_type_id=10,mate_name=f1,  tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 1 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,  confirm_dt=f5,mate_code=f6,creat_by=19273,creat_dt=getdate() 
from @tab a 
where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f6=b.mate_code) select @cnt2=@@ROWCOUNT  

select @cnt1,@cnt2

delete	from tb_sysrule where type_id=4

delete from SAP_ZSD_015 where GBELN='84005472'

select top 10 * from SAP_ZSD_015 where GBELN='84005472'
SAP_ZSD_015

select price=cast(KONV as decimal(15,4)),a.* from SAP_ZSD_015 a 
where KDGRP not in ('10','19')  and a.creat_dt>= '2025-05-01' and a.creat_dt< dateadd(day,1,'2025-06-18') 
and exists (select 1 from tb_medicine m where m.med_id=27 and (a.MATNR=m.material_code or a.MATNR=m.material_code1))
order by a.creat_dt

select * from tb_medicine m where m.med_id=27

select price=cast(KONV as decimal(15,4)),a.* from SAP_ZSD_015 a 
where KDGRP not in ('10','19')  and a.creat_dt>= '2025-05-01' and a.creat_dt< dateadd(day,1,'2025-06-18') 
and exists (select 1 from tb_medicine m,tb_medicine n where m.med_id=27 and a.MATNR=n.material_code and (m.material_code1=n.material_code1))


insert into tb_busimate (mate_type_id,mate_code,mate_name,address,tax_code,district,region,BEZEI,CITY1,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=a.region,region=a.region,a.BEZEI,a.CITY1,remark=a.ZCOM
 from SAP_ZSD_Z001 a

 insert into tb_busimate (mate_type_id,mate_code,mate_name,address,tax_code,district,region,BEZEI,CITY1,remark)

select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=a.region,region=a.region,a.BEZEI,a.CITY1,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 where not exists (select 1 from tb_busimate b where b.mate_type_id=2 and b.mate_name=a.NAME_ORG1)
	and PARTNER not in ('103313','103182','102831')

	and NAME_ORG1 like '上药%'

导入业务负责人
insert into tb_busimate (mate_type_id,mate_code,mate_name,personalID,district,region,BEZEI,CITY1)
select mate_type_id=4,mate_code=partner,mate_name=NAME_FIRST,personalID=BPEXT,district=a.region,region=a.region,BEZEI,CITY1
 from SAP_ZSD_Z005 a
 where not exists (select 1 from tb_busimate b where b.mate_type_id=4 and b.mate_name=a.NAME_FIRST)
 
select * into SAP_ZSD_Z005_250618 from SAP_ZSD_Z005

truncate table SAP_ZSD_Z005

select top 10 * from SAP_ZSD_Z005

select top 10 a.* from vi_ZSD_015 a where KDGRP in ('10','19')
	and rec_id=917

select a.district,a.BEZEI,a.city1,dbo.fn_getdistrictname(a.district,1),city1=dbo.fn_getdistrictname(a.district,2), a.*,mate_name1=e.mate_name, stoper=d.zname,creater=b.zname,modifier=c.zname 
from tb_busimate a 
left join tb_staff b on a.creat_by=b.sta_id 
left join tb_staff c on a.modify_by=c.sta_id 
left join tb_staff d on a.stop_by=d.sta_id 
left join tb_busimate e on a.mate_id1=e.mate_id 
where a.mate_type_id=4
	and a.district>0 and a.BEZEI is null

	select dbo.fn_getdistrictname('4401',1),dbo.fn_getdistrictname('4401',2)
	update tb_busimate set BEZEI=dbo.fn_getdistrictname('4401',1),city1=dbo.fn_getdistrictname('4401',2)
where mate_type_id=4
	and district>0 and BEZEI is null

	13

	update tb_busimate set district=13 where mate_id=	15957

	select mate_id,mate_name,district,BEZEI,city1 from tb_busimate where mate_id=	15957

	21938 授信客户