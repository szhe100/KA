declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100),f11 varchar(100),f12 varchar(100), channel_id int,channel_dtl_id int,sta_id int,sta_id1 int,mate_id int,mate_id1 int,med_id int) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12) 
select 2,'测试','10','10','刘永华','广州医药股份有限公司','白云区鹤龙街社区卫生服务中心(CS)','1000010000','','9.8','28.02',replace('','%',''),'2025-1-1' union all  select 3,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','','8.4','28.02',replace('','%',''),'2025-1-1' union all  select 4,'测试','10','10','周先福(周菊梅)','国药集团一致药业股份有限公司','广东省第二人民医院','1000010000','冯强(王雪霜)','1.4','28.02',replace('','%',''),'2025-1-1' union all  select 5,'测试','10','10','刘永华','广州医药股份有限公司','广州市第十二人民医院','1000010000','','8.4','28.02',replace('5%','%',''),'2025-1-2' union all  select 6,'测试','10','10','王红珍','广东省东莞国药集团有限公司','东莞市寮步镇社区卫生服务中心','1000010000','','9.8','28.02',replace('','%',''),'2025-1-1' 

--select * from @tab

update a set channel_id=b.obj_id,channel_dtl_id=c.obj_id,sta_id=d.sta_id,sta_id1=case when g.sta_id>0 then g.sta_id else d.sta_id end, mate_id1=e.mate_id,mate_id=f.mate_id,med_id=m.med_id 
from @tab a 
left join tb_object b on b.obj_type_id=11 and b.obj_code=a.f2 
left join tb_object c on c.obj_type_id=12 and c.obj_code=a.f3 
left join tb_staff d on d.sta_type_id=1 and d.zname =a.f4 
left join tb_staff g on g.sta_type_id=1 and g.zname =a.f8 left join tb_busimate e on e.mate_type_id=2 and e.mate_name =a.f5 
left join tb_busimate f on f.mate_type_id=1 and f.mate_name =a.f6 
left join tb_medicine m on m.material_code1 =a.f7 

update a 
	set price1=cast(f10 as decimal(15,4)) 
	from tb_brokermed a 
	inner join @tab k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id
	and a.valid_dt=cast(k.f12 as datetime)    
	and isnull(price1,0)<>cast(f10 as decimal(15,4)) 
	
insert into tb_brokermed (comp_id,bod_desc,channel_id,channel_dtl_id,sta_id,mate_id1,mate_id,med_id,price1,rate1,valid_dt,creat_by,creat_dt) 
select distinct comp_id=1,bod_desc=f1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.sta_id, mate_id1=a.mate_id1,a.mate_id,a.med_id,price1=cast(f10 as decimal(15,4)),rate1=cast(f11 as decimal(15,4)),valid_dt=cast(f12 as datetime), creat_by=19273,creat_dt=getdate() 
from @tab a 
where not exists (select 1 from tb_brokermed k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id
and k.valid_dt=cast(a.f12 as datetime)) 

update b set rate=cast(f9 as decimal(15,4)),modify_by=19273,modify_dt=getdate() 
from @tab a 
inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id
and k.valid_dt=cast(f12 as datetime) and k.rate1=cast(a.f11 as decimal(15,4)) 
inner join tb_brokermedtl b on k.rec_id=b.rela_id and b.sta_id=a.sta_id1 
where b.rate<>cast(f9 as decimal(15,4)) 

insert into tb_brokermedtl (rela_id,sta_id,fee_type_id,rate,creat_by,creat_dt) 
select rela_id=k.rec_id,sta_id=a.sta_id1,fee_type_id=185,rate=cast(f9 as decimal(15,4)),creat_by=19273,creat_dt=getdate() from @tab a 
inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id
and k.valid_dt=cast(f12 as datetime) 
where not exists (select 1 from tb_brokermedtl b where k.rec_id=b.rela_id and a.sta_id1=b.sta_id)