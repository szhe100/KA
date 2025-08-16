select * --creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,carry_dt1=c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2=j.bod_cd,amot=cast(b.amot as decimal(15,2)),price=cast(b.price as decimal(15,4)), 
--c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', 
--carryer=dbo.fn_staff_name(a.carry_by),receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,j.bank_name1, level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 

left join (select bod_type_id=0,bod_id=rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)) 		
from tb_bill a 
left join tb_busimate f on a.agent_id=f.mate_id 
left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.bod_id 

left join (select bod_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 

where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-01-01' and a.check_dt< dateadd(day,1,'2025-07-22')
	and a.bod_id in (418,420,422)
/*
select * from tb_bill a
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-01-01' and a.check_dt< dateadd(day,1,'2025-07-22')
	and a.bod_id in (418,420,422)
	*/
select * into tb_bill_dtl_250722 from tb_bill_dtl

update tb_bill_dtl set type_id=0 where dtl_id in (786,788,790)

select c.VTWEG,c.KDGRP,b.type_id,b.dtl_id, * from tb_bill a, tb_bill_dtl b,SAP_ZSD_015 c 
where a.bod_type_id=37 and a.bod_id=b.bod_id and b.med_id=c.rec_id

select * from tb_bill where bod_type_id=37

update a set channel_id=c.VTWEG,channel_dtl_id=c.KDGRP from tb_bill a, tb_bill_dtl b,SAP_ZSD_015 c 
where a.bod_type_id=37 and a.bod_id=b.bod_id and b.med_id=c.rec_id


select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,bod_desc1=j.bod_desc,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname, broker='',agent=k.mate_name,k.receiver,k.acnt_bank,k.bank_account,
carryer=g.zname,receiver1=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(c.district),cdistrict1=dbo.fn_getdistrict1(k.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1 ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) 
from tb_bill a 
left join tb_busimate b on a.src_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
left join (select bod_id,channel_id,channel_dtl_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 
left join tb_busimate k on a.agent_id =k.mate_id 
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-01-01' and a.check_dt< dateadd(day,1,'2025-07-22')

select top 10 * from tB_busimate where mate_type_id=1 order by mate_id desc

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) 
select 2,'986655','中牟县中医院（中牟县中医院总医院）','三级','公立','河南省 郑州市','河南省郑州市中牟县泰安街6号','0371-62170825','' union all  select 3,'878407','南京鼓楼医院','三级','公立','江苏省 南京市','南京市鼓楼区中山路321号','025-83106666','' union all  select 4,'868613','北京市丰台区妇幼保健计划生育服务中心（北京市丰台区妇幼保健院）','三级','公立','北京市 北京市','丰台区右安门外开阳里三区1号','010-67532464','' 
declare @cnt1 int,@cnt2 int update a set id3=case when f3 like '%一级%' then 1 when f3 like '%二级%' then 2 when f3 like '%三级%' then 3 when f3 like '%特三甲%' then 4      when f3 like '%社区%' then 5 when f3 like '%基层%' then 6 when f3 like '%诊所%' then 7 when f3 like '%药店%' then 8 end,  id4=case when f4 like '%公立%' then 1 when f4 like '%民营%' then 2 when f4 like '%连锁%' then 3 when f4 like '%电商%' then 4 when f4 like '%厂矿职工%' then 5 when f4 like '%第三终端%' then 6 end from @tab a 
--select * from @tab

select mate_name=b.f2,busi_type_id=b.id3,kind_id=b.id4,district=case when h.city_code<>'' then h.city_code else h.prov_code end,address=b.f6,phone=b.f7,remark1=b.f8 ,modify_by=19232,modify_dt=getdate() 
from tb_busimate a 
inner join @tab b on a.mate_code=b.f1 
inner join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on b.f5=h.prov_name+' '+h.city_name 


select * from tb_busimate where mate_name='中牟县中医院（中牟县中医院总医院）' and mate_type_id=1

update a set mate_name=b.f2,busi_type_id=b.id3,kind_id=b.id4,district=case when h.city_code<>'' then h.city_code else h.prov_code end,address=b.f6,phone=b.f7,remark1=b.f8 ,modify_by=19232,modify_dt=getdate() 
from tb_busimate a 
inner join @tab b on a.mate_code=b.f1 
inner join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on b.f5=h.prov_name+' '+h.city_name 

set @cnt1=@@ROWCOUNT 

--insert into tb_busimate (mate_type_id,mate_code,mate_name,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)  
select mate_type_id=1,mate_code=f1,mate_name=f2,busi_type_id=a.id3,kind_id=a.id4,district=case when h.city_code<>'' then h.city_code else h.prov_code end,  address=a.f6,phone=a.f7,remark1=a.f7,creat_by=19232,creat_dt=getdate() from @tab a left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on a.f5=h.prov_name+' '+h.city_name where not exists (select 1 from tb_busimate b where mate_type_id=1 and a.f1=b.mate_code)  and not exists (select 1 from tb_busimate b where mate_type_id=1 and a.f2=b.mate_name) set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2


select len('潮州市湘桥区中医医院（潮州市湘桥区骨伤专科医院、潮州市湘桥区湘桥社区卫生服务中心）')

select len('潮州市') --湘桥区中医医院（潮州市湘桥区骨伤专科医院、潮州市湘桥区湘桥社区卫生服务中心）')

select * from vi_district1

select mate_id,mate_code,mate_name,district,region from tb_busimate where mate_type_id=1 and district like '11%'

select mate_id,mate_code,mate_name,district,region,BEZEI,CITY1 from tb_busimate where mate_id=21284

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(200),f7 varchar(100),f8 varchar(100),id3 int,id4 int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8) select 2,'868613','北京市丰台区妇幼保健计划生育服务中心（北京市丰台区妇幼保健院）','三级','公立','北京市 丰台区','丰台区右安门外开阳里三区1号','010-67532464','' union all  select 3,'751827','北京怀柔医院','三级','公立','北京市 怀柔区','北京市怀柔区永泰北街9号院','010-60686699-8508','' union all  select 4,'620099','北京市西城区广内社区卫生服务中心','社区','公立','北京市 西城区','北京市西城区校场五条49号','-','' union all  select 5,'595596','北京市密云区河南寨镇社区卫生服务中心（北京市密云区河南寨镇卫生院）','一级','公立','北京市 密云区','北京市密云区河南寨镇芦各庄村北','-','' union all  select 6,'745504','北京市西城区展览路街道新华里社区卫生服务站','社区','公立','北京市 西城区','北京市西城区车公庄大街北里5栋大楼北侧','-','' union all  select 7,'668537','北京市朝阳区豆各庄社区卫生服务中心','社区','公立','北京市 朝阳区','北京市朝阳区豆各庄乡','010-67384620','' declare @cnt1 int,@cnt2 int update a set id3=case when f3 like '%一级%' then 1 when f3 like '%二级%' then 2 when f3 like '%三级%' then 3 when f3 like '%特三甲%' then 4      when f3 like '%社区%' then 5 when f3 like '%基层%' then 6 when f3 like '%诊所%' then 7 when f3 like '%药店%' then 8 end,  id4=case when f4 like '%公立%' then 1 when f4 like '%民营%' then 2 when f4 like '%连锁%' then 3 when f4 like '%电商%' then 4 when f4 like '%厂矿职工%' then 5 when f4 like '%第三终端%' then 6 end from @tab a 
update a set mate_name=b.f2,busi_type_id=b.id3,kind_id=b.id4,district=h.code,address=b.f6,phone=b.f7,remark1=b.f8 ,modify_by=19232,modify_dt=getdate() 
from tb_busimate a 
inner join @tab b on a.mate_code=b.f1 
inner join vi_district1 h on b.f5=h.name or b.f5=h.prov_name+' '+h.name 
set @cnt1=@@ROWCOUNT 
insert into tb_busimate (mate_type_id,mate_code,mate_name,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)  
select mate_type_id=1,mate_code=f1,mate_name=f2,busi_type_id=a.id3,kind_id=a.id4,district=h.code,  address=a.f6,phone=a.f7,remark1=a.f8,creat_by=19232,creat_dt=getdate() 
from @tab a 
inner join vi_district1 h on a.f5=h.name or a.f5=h.prov_name+' '+h.name 
where not exists (select 1 from tb_busimate b where mate_type_id=1 and (a.f1=b.mate_code or a.f2=b.mate_name))
set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2
