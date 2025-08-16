select * from tb_brokermedtl
select * from tb_brokermed

select * from tb_sysframe


select b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack, med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc, b.channel_id,channel=dbo.fn_obj_desc(b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(b.channel_dtl_id), a.dst_id,i.mate_name,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt, a.busi_type,b.price,b.qty,b.discount,amot=cast(b.price*b.qty as decimal(15,2)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=dbo.fn_staff_name(a.broker_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate i on a.dst_id=i.mate_id 
where a.bod_type_id=10 and a.bod_status_id=1  and a.carry_dt>= '2025-04-01' and a.carry_dt< dateadd(day,1,'2025-05-14')

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100),f11 varchar(100),f12 varchar(100), channel_id int,channel_dtl_id int,sta_id int,sta_id1 int,mate_id int,mate_id1 int,med_id int) insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12) select 2,'测试','10','10','刘永华','广州医药股份有限公司','白云区鹤龙街社区卫生服务中心','1000010000','','9.8','28.02',replace('','%',''),'2025-1-1' union all  select 3,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','','8.4','28.02',replace('','%',''),'2025-1-1' union all  select 4,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','冯强(王雪霜)','1.4','28.02',replace('','%',''),'2025-1-1' union all  select 5,'测试','10','10','刘永华','广州医药股份有限公司','广州市第十二人民医院','1000010000','','8.4','28.02',replace('5%','%',''),'2025-1-2' select top 5 * from ( select top 5 info='第'+line_no+'行无渠道' from @tab a where a.f2='' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.obj_code=a.f2) union all select top 5 '第'+line_no+'行无子渠道' from @tab a where a.f3='' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.obj_code=a.f3) union all select top 5 '第'+line_no+'行无业务员或数据无效' from @tab a where f4='' or not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname =a.f4) union all select top 5 '第'+line_no+'行无商业公司或数据无效' from @tab a where f5='' or not exists (select 1 from tb_busimate b where mate_type_id=2 and b.mate_name =a.f5) union all select top 5 '第'+line_no+'行无医院或数据无效' from @tab a where f6='' or not exists (select 1 from tb_busimate b where mate_type_id=1 and b.mate_name =a.f6) union all select top 5 '第'+line_no+'行无药品定价参考物料编码或数据无效' from @tab a where f7='' or not exists (select 1 from tb_medicine m where m.material_code1 =a.f7) union all select top 5 '第'+line_no+'行明细业务员无效' from @tab a where f8<>'' and not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname =a.f8) union all select top 5 '第'+line_no+'行无费用金额或数据无效' from @tab a where f9='' or try_cast(f9 as decimal(15,4)) is null union all select top 5 '第'+line_no+'行无中标价或数据无效' from @tab where f10='' or try_cast(f10 as decimal(15,4)) is null union all select top 5 '第'+line_no+'行无医院托管结算率或数据无效' from @tab where f11='' or try_cast(f11 as decimal(15,4)) is null union all select top 5 '第'+line_no+'行无启用日期或数据无效' from @tab where f12='' or try_cast(f12 as datetime) is null order by line_no) a


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100),f11 varchar(100),f12 varchar(100), channel_id int,channel_dtl_id int,sta_id int,sta_id1 int,mate_id int,mate_id1 int,med_id int) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12) 
select 2,'测试','10','10','刘永华','广州医药股份有限公司','白云区鹤龙街社区卫生服务中心','1000010000','','9.8','28.02',replace('5%','%',''),'2025-1-1' 
union all  
select 3,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','','8.4','28.02',replace('5%','%',''),'2025-1-1' 
union all  
select 4,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','冯强(王雪霜)','1.4','28.02',replace('5%','%',''),'2025-1-1' 
union all  
select 5,'测试','10','10','刘永华','广州医药股份有限公司','广州市第十二人民医院','1000010000','','8.4','28.02',replace('5%','%',''),'2025-1-2' 
update a set channel_id=b.obj_id,channel_dtl_id=c.obj_id,sta_id=d.sta_id,sta_id1=g.sta_id, mate_id1=e.mate_id,mate_id=f.mate_id,med_id=m.med_id 
from @tab a 
left join tb_object b on b.obj_type_id=11 and b.obj_code=a.f2 
left join tb_object c on c.obj_type_id=12 and c.obj_code=a.f3 
left join tb_staff d on d.sta_type_id=1 and d.zname =a.f4 
left join tb_staff g on g.sta_type_id=1 and d.zname =a.f8 
left join tb_busimate e on e.mate_type_id=2 and e.mate_name =a.f5 
left join tb_busimate f on f.mate_type_id=1 and f.mate_name =a.f6 
left join tb_medicine m on m.material_code1 =a.f7 

insert into tb_brokermed (comp_id,bod_desc,channel_id,channel_dtl_id,sta_id,mate_id1,mate_id,med_id,rate,price1,rate1,valid_dt,creat_by,creat_dt)  
select comp_id=1,bod_desc=f1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.sta_id,      
mate_id1=a.mate_id1,a.mate_id,a.med_id,rate=cast(f9 as decimal(15,4)),price1=cast(f10 as decimal(15,4)),rate1=cast(f11 as decimal(15,4)),valid_dt=cast(f12 as datetime),      
creat_by=19273,creat_dt=getdate() 
from @tab a 
where not exists (select 1 from tb_brokermed k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id and k.valid_dt=cast(f12 as datetime)) 

update a 
set rate=cast(f9 as decimal(15,4)),price1=cast(f10 as decimal(15,4)),rate1=cast(f11 as decimal(15,4)) 
from tb_brokermed a 
inner join @tab k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id and a.valid_dt=cast(k.f12 as datetime) 

insert into tb_brokermedtl (rela_id,sta_id,fee_type_id,rate,creat_by,creat_dt) 
select rela_id=k.rec_id,sta_id=a.sta_id1,fee_type_id=185,rate=cast(f9 as decimal(15,4)),creat_by=19273,creat_dt=getdate() 
from @tab a inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id and k.valid_dt=cast(f12 as datetime)  
where not exists (select 1 from tb_brokermedtl b where k.rec_id=b.rela_id and a.sta_id1=b.sta_id) 

update b set rate=cast(f9 as decimal(15,4)),modify_by=19273,modify_dt=getdate() 
from @tab a  
inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id and k.valid_dt=cast(f12 as datetime) 
inner join tb_brokermedtl b on k.rec_id=b.rela_id
