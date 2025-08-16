select top 10 * from SAP_ZSD_015 

select * into SAP_ZSD_015_250519 from SAP_ZSD_015 

delete from SAP_ZSD_015  where carry_dt<'2025-01-01'

请把发运日期为2025年以前的数据清掉

select * from sap_zsd_mara where matnr='1000018900'

select * from tb_medicine where material_code='1000018900'

select top 10 * from tB_medprice where type_id in (2)

select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*,	dist1=dbo.fn_getdistrictname (a.district_id,1),dist2=dbo.fn_getdistrictname (a.district_id,2),  creater=f.zname 
from tb_medprice a 
inner join tb_medicine m on a.MATNR=m.material_code 
left join tb_staff f on a.creat_by =f.sta_id 
inner join (select channel_id,channel_dtl_id,district_id,MATNR,rec_id=max(rec_id) from tb_medprice where type_id=2 group by channel_id,channel_dtl_id,district_id,MATNR) h on a.rec_id=h.rec_id 
where type_id=2 and material_code='1000018900'



declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id int,med_id int ) 
insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州国盈医药有限公司','1000010000','1','2025-1-1' union all  select 3,'广州国盈医药有限公司','1000019200','1','2025-1-1' 
declare @cnt1 int,@cnt2 int 
update a set mate_id=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 
update a set med_id=b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2 
update a set level_id=cast(b.f3 as int),valid_dt=cast(b.f4 as datetime),import_log=isnull(a.import_log,'')+cast(getdate() as varchar(20))+'导入修改' 
from tb_sysrule a,@tab b where a.type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id 
select @cnt1=@@ROWCOUNT 
insert into tb_sysrule (type_id,comp_id,mate_id,med_id,level_id,valid_dt,creat_by,creat_dt,import_log)  
select type_id=2,comp_id=1,a.mate_id,a.med_id,level_id=cast(f3 as int),valid_dt=cast(f4 as datetime),creat_by=19273,creat_dt=getdate(),   import_log=cast(getdate() as varchar(20))+'导入' 
from @tab a 
where not exists (select 1 from tb_sysrule b where type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id) 
select @cnt2=@@ROWCOUNT  select @cnt1,@cnt2

select * from tb_sysrule where type_id=2

select cast(getdate() as varchar(20))+'导入修改' 

select format(getdate(),'YYYY-MM-DD HH:NN:SS')
select format(getdate(),'yyyy-MM-dd hh:mm:ss')+'导入修改' 

select * from tb_sysrule where type_id=2
delete from tb_sysrule where type_id=2

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) 
insert into @tab (line_no,f1,f2,f3,f4) 
select 2,'广州国盈医药有限公司','1000019500','4000047835','1' union all  select 3,'广州国盈医药有限公司','1000020300','4000051081','10'

select * from @tab

select top 5 * from ( select top 5 info=line_no+'行无商业公司或数据无效' from @tab a where a.f1='' or not exists (select 1 from tb_busimate b where b.mate_type_id=2 and a.f1=b.mate_name) union all select top 5 '第'+line_no+'行无定价参考物料编码或数据无效' from @tab a where a.f2='' or not exists (select 1 from tb_medicine b where b.material_code1=a.f2) union all select top 5 '第'+line_no+'行无流向词语' from @tab where f3='' union all select top 5 '第'+line_no+'行无单位系数或数据无效' from @tab where f4='' or try_cast(f4 as decimal(6,2)) is null union all select top 5 '第'+line_no+'行商业公司及流向词语与已有记录重复' from @tab a inner join tb_busimate b on b.mate_type_id=2 and b.mate_name=a.f1  where exists (select 1 from tb_linkword c where c.type_id=1 and c.mate_id1=b.mate_id and c.zdesc=a.f3) ) a


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) 
insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州国盈医药有限公司','1000019500','4000047835','1' union all  select 3,'广州国盈医药有限公司','1000020300','4000051081','10' 
declare @cnt1 int,@cnt2 int 
update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 
update a set med_id =b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2 
select * from @tab
select type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=cast(f4 as decimal(6,2)),creat_by=19273,creat_dt=getdate()
from @tab a 

insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)  
select type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=cast(f4 as decimal(6,2)),creat_by=19273,creat_dt=getdate() from @tab a 
set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2

select * from tb_linkword where type_id=1
delete from tb_linkword where type_id=1

select * from tb_linkword where type_id=2
delete from tb_linkword where type_id=2
declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州国盈医药有限公司','1000019500','4000047835','1' union all  select 3,'广州国盈医药有限公司','1000020300','4000051081','10' declare @cnt1 int,@cnt2 int update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 update a set med_id =b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2 insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)  select type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=cast(f4 as decimal(6,2)),creat_by=19273,creat_dt=getdate() from @tab a set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州国盈医药有限公司','1000019500','4000047835','1' union all  select 3,'广州国盈医药有限公司','1000020300','4000051081','10' declare @cnt1 int,@cnt2 int update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 update a set med_id =b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2 insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)  select type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=cast(f4 as decimal(6,2)),creat_by=19273,creat_dt=getdate() from @tab a set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) 
insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州国盈医药有限公司','1000019500','4000047835','1' union all  select 3,'广州国盈医药有限公司','1000020300','4000051081','10' 
declare @cnt1 int,@cnt2 int 
update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 
update a set med_id =b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2 
insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)  
select type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=cast(f4 as decimal(6,2)),creat_by=19273,creat_dt=getdate() from @tab a 
set @cnt2=@@ROWCOUNT  
select @cnt1,@cnt2


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),mate_id1 int,mate_id int) 
insert into @tab (line_no,f1,f2,f3) select 2,'必填项','必填项','必填项' union all  select 3,'广州医药股份有限公司','南方医科大学珠江医院','南方医科大学珠江医院AAA' union all  select 4,'广州医药股份有限公司','深汕中心医院','AAA深汕中心医院' union all  select 5,'广州医药股份有限公司','微医医疗投资管理(杭州)有限公司广州天河综合门诊部','微医医疗投资管理(杭州)有限公司广州天河综合门诊部AAA' union all  select 6,'广州医药股份有限公司','天河区五山街社区卫生服务中心','天河区五山街社区卫生服务中心AAA' 
select top 5 * from ( select top 5 info=line_no+'行无商业公司' from @tab a where f1='' or not exists (select 1 from tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1) union all select top 5 '第'+line_no+'行无客户名称' from @tab a where f2='' or not exists (select 1 from tb_busimate b where b.mate_type_id=1 and b.mate_name=a.f2) union all select top 5 '第'+line_no+'行无流向词语' from @tab where f3='' union all select top 5 '第'+line_no+'行商业公司及流向词语与已有记录重复' from @tab a inner join tb_busimate b on b.mate_type_id=2 and b.mate_name=a.f1  where exists (select 1 from tb_linkword c where c.type_id=2 and c.mate_id1=b.mate_id and c.zdesc=a.f3) ) a


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),mate_id1 int,mate_id int) 
insert into @tab (line_no,f1,f2,f3) select 2,'广州医药股份有限公司','南方医科大学珠江医院','南方医科大学珠江医院AAA' union all  select 3,'广州医药股份有限公司','深汕中心医院','AAA深汕中心医院' union all  select 4,'广州医药股份有限公司','微医医疗投资管理(杭州)有限公司广州天河综合门诊部','微医医疗投资管理(杭州)有限公司广州天河综合门诊部AAA' union all  select 5,'广州医药股份有限公司','天河区五山街社区卫生服务中心','天河区五山街社区卫生服务中心AAA' 
declare @cnt1 int,@cnt2 int 
update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 
update a set mate_id =b.mate_id from @tab a,tb_busimate b where b.mate_type_id=1 and b.mate_name=a.f2 
insert into tb_linkword (type_id,comp_id,mate_id1,mate_id,zdesc,creat_by,creat_dt)  
select type_id=2,comp_id=1,mate_id1=a.mate_id1,mate_id=a.mate_id,zdesc=a.f3,creat_by=19273,creat_dt=getdate() from @tab a 
set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2


select cdistrict='',settletype=dbo.fn_obj_desc(a.settle_type), *,stoper=e.zname,creater=c.zname,modifier=d.zname 
from tb_busimate a 
left join tb_staff c on a.creat_by =c.sta_id 
left join tb_staff d on a.modify_by =d.sta_id 
left join tb_staff e on a.stop_by=e.sta_id
where a.mate_type_id=2 and a.region like '4401%'

select * from tb_district where prov_code like '44%'

select * from vi_district1

select cdistrict='',settletype=dbo.fn_obj_desc(a.settle_type), *,stoper=e.zname,creater=c.zname,modifier=d.zname 
from tb_busimate a 
left join tb_staff c on a.creat_by =c.sta_id 
left join tb_staff d on a.modify_by =d.sta_id 
left join tb_staff e on a.stop_by=e.sta_id where a.mate_type_id=2 and (a.BEZEI like '广东省%' or a.CITY1 like '广东省%')

//从第2行开始导入，导入格式: 1医院主数据编码, 2客户名称, 3级别, 4性质, 5所在地区(省份 城市), 6地址, 7电话, 8特色科室

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) 
select 2,'10010010','广东省第二人民医院','基层','公立','广东省 广州市','','','' union all  select 3,'10010001','白云区鹤龙街社区卫生服务中心(CS)','基层','公立','广东省 广州市','','','' union all  select 4,'10010002','白云区嘉禾街社区卫生服务中心（CS)','基层','公立','广东省 广州市','','','' 
declare @cnt1 int,@cnt2 int 
update a set id3=case when f3 like '%一级%' then 1 when f3 like '%二级%' then 2 when f3 like '%三级%' then 3 when f3 like '%特三甲%' then 4      when f3 like '%社区%' then 5 when f3 like '%基层%' then 6 when f3 like '%诊所%' then 7 when f3 like '%药店%' then 8 end,  id4=case when f4 like '%公立%' then 1 when f4 like '%民营%' then 2 when f4 like '%厂矿职工%' then 3 when f4 like '%调拨%' then 4 end 
from @tab a 

select * from @tab

update a set mate_name=b.f2,busi_type_id=b.id3,kind_id=b.id4,district=case when h.city_code<>'' then h.city_code else h.prov_code end,address=b.f6,phone=b.f7,remark1=b.f8 
from tb_busimate a
 inner join @tab b on a.mate_code=b.f1 
 inner join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on b.f5=h.prov_name+' '+h.city_name 

select * from tb_sysrule where type_id=2

delete from tb_sysrule where type_id=2

select * from tb_brokermed
truncate table tb_brokermed
select * from tb_brokermedtl
truncate table tb_brokermedtl


set @cnt1=@@ROWCOUNT 
insert into tb_busimate (mate_type_id,mate_code,mate_name,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)  
select mate_type_id=1,mate_code=f1,mate_name=f2,busi_type_id=a.id3,kind_id=a.id4,district=case when h.city_code<>'' then h.city_code else h.prov_code end, 
  address=a.f6,phone=a.f7,remark1=a.f7,creat_by=19273,creat_dt=getdate() 
  from @tab a 
  left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on a.f5=h.prov_name+' '+h.city_name 
  where not exists (select 1 from tb_busimate b where mate_type_id=1 and a.f1=b.mate_code) 
  set @cnt2=@@ROWCOUNT  
  select @cnt1,@cnt2

select top 20000 med_unit=b.zdesc,*,med_type=e.mc_title, creater=c.zname,modifier=d.zname 
from tb_medicine a 
left join tb_object b on a.unit_id =b.obj_id 
left join tb_staff c on a.creat_by =c.sta_id 
left join tb_staff d on a.modify_by =d.sta_id 
left join tb_medcatlog e on a.med_type_id =e.mc_id 
where 1=1 and exists (select 1 from tb_medicine n where n.med_id=123 and a.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+'%')

select * from tb_medicine n where n.med_id=123 and a.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+'%'

select  n.material_code1,len(n.material_code1)-1, * from tb_medicine n where n.med_id=123 


select top 20000 med_unit=b.zdesc,*,med_type=e.mc_title, creater=c.zname,modifier=d.zname from tb_medicine a left join tb_object b on a.unit_id =b.obj_id left join tb_staff c on a.creat_by =c.sta_id left join tb_staff d on a.modify_by =d.sta_id left join tb_medcatlog e on a.med_type_id =e.mc_id 
where 1=1 
and exists (select 1 from tb_medicine n where n.med_id=124 and a.material_code like substring(n.material_code,1,len(n.material_code)-1)+'%')

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) 
select 2,'23010001','成都市温江区涌泉街道社区卫生服务中心','基层','国营','44','珠江新城','9999999','中医针灸' union all  select 3,'11111111','测试','特三甲','国营','44','珠江新城','9999999','中医针灸' 

insert into tb_busimate (mate_type_id,mate_code,mate_name,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)  select mate_type_id=1,mate_code=f1,mate_name=f2,busi_type_id=a.id3,kind_id=a.id4,district=a.f5,address=a.f6,phone=a.f7,remark1=a.f7,creat_by=19273,creat_dt=getdate() from @tab a where not exists (select 1 from tb_busimate b where mate_type_id=1 and a.f1=b.mate_code) set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2


select a.rec_id,a.type_id,a.comp_id,a.med_id,a.mate_id,b.mate_name,b.rate,a.mate_id1,mate_name1=e.mate_name,m.med_code,m.material_code1,m.med_name,m.chm_name,m.specifi,m.pdt_place,	b.district,cdistrict=dbo.fn_getdistrict(b.district),med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,	a.level_id,a.f1,a.f2,a.f3,a.f4,a.f5,f6,valid,valid_dt,a.creat_by,a.creat_dt,creater=c.zname,a.modify_dt,a.modify_by,modifier=d.zname,	a.fee1,a.dt1,a.fee2,a.dt2,a.fee3,a.dt3,a.dt4,a.stop_yn,a.stop_by,a.stop_dt,a.stop_for,stoper=f.zname ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)	
from tb_sysrule a 	
left join tb_busimate b on a.mate_id=b.mate_id	
left join tb_busimate e on a.mate_id1=e.mate_id	
left join tb_medicine m on a.med_id=m.med_id	
left join tb_staff c on a.creat_by=c.sta_id	
left join tb_staff d on a.modify_by=d.sta_id	
left join tb_staff f on a.stop_by=f.sta_id	
where a.type_id=4

select * from tb_medicine where material_code1='1000010000'

select top 10 * from tb_district
select distinct city_code,city_name=prov_name+' '+city_name from tb_district)

select top 10 * from tb_medprice order by rec_id desc

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) 
select 2,'23010001','成都市温江区涌泉街道社区卫生服务中心','基层','国营','44','珠江新城','9999999','中医针灸' 
union all  
select 3,'11111111','测试','特三甲','国营','44','珠江新城','9999999','中医针灸'
select * from @tab

select top 10 * from ( select top 5 info=line_no+'行无医院主数据编码' from @tab a where f1='' union all select top 5 '第'+line_no+'行无客户(医院)名称' from @tab a where f2='' union all select top 5 '第'+line_no+'行无级别或数据无效' from @tab where f3='' or not (f3 like '%一级%' or f3 like '%二级%' or f3 like '%三级%' or f3 like '%特三甲%' or f3 like '%社区%' or f3 like '%基层%' or f3 like '%诊所%' or f3 like '%药店%')
union all 
select top 5 '第'+line_no+'行无性质或数据无效' from @tab where f4='' or not (f4 like '%国营%' or f4 like '%民营%' or f4 like '%厂矿职工%' or f4 like '%调拨%') 
union all 
select top 5 '第'+line_no+'行无地区编码或数据无效' from @tab a where f5='' or not exists (select 1 from tb_district b where a.f5=prov_code or a.f5=b.city_code or a.f5=b.county_code)
order by line_no ) a