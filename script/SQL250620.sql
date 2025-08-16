--从第2行开始导入,导入格式: 1商业公司, 2关联编码, 3流向词语, 4单位系数
declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int ) 
insert into @tab (line_no,f1,f2,f3,f4) select 2,'广州医药股份有限公司','1000019400','1000019401','1' union all  select 3,'广州医药股份有限公司','1000020400','1000020400','1' 
select * from @tab

declare @cnt1 int,@cnt2 int 

update a set mate_id1=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1 
update a set med_id =b.med_id from @tab a,tb_medicine b where b.material_code=a.f2 
select * from tb_linkword a,@tab b 
where a.type_id=1 and a.mate_id1=b.mate_id1 and a.med_id=b.med_id 


update a set zdesc=b.f3,rate=case when b.f4='' then 0 else cast(b.f4 as decimal(6,2)) end 
from tb_linkword a,@tab b 
where a.type_id=1 and a.mate_id1=b.mate_id1 and a.med_id=b.med_id 

select * from tb_medicine where med_id in (290,313)

select @cnt1=@@ROWCOUNT 

insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)  
select distinct type_id=1,comp_id=1,mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.f3,rate=case when f4='' then 0 else cast(f4 as decimal(6,2)) end,creat_by=19232,creat_dt=getdate() 
from @tab a 
where not exists (select 1 from tb_linkword b where b.type_id=1 and a.mate_id1=b.mate_id1 and a.med_id=b.med_id) 
set @cnt2=@@ROWCOUNT  
select @cnt1,@cnt2

select * from tb_bill where bod_type_id=58

select * from tb_bill_dtl where bod_id in (17916,17917)

select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime)
from tb_bill a,tb_bill_dtl b
where a.bod_type_id=58 and a.bod_status_id<>1 and a.bod_id=b.bod_id and (1=2
or b.type_id=36 and b.med_id in (30454) or b.type_id=1  and b.med_id in (30454) )



select * from tb_busimate where mate_id=103100

select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent, c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1,d.type_id2 
from tb_bill_dtl b left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) 
inner join tb_bill a on a.bod_id=b.bod_id 
left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end, 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end, 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id 
where b.bod_id=17918


select c.* --b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent, c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1  --,d.type_id2 
from tb_bill_dtl b 
left join SAP_ZSD_015 c on b.med_id=c.rec_id
--left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) 
inner join tb_bill a on a.bod_id=b.bod_id 
left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end, 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end, 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id 
where b.bod_id=17918

select mate_id,mate_name,prov_code,prov_name=BEZEI,city_code,city_name=CITY1,x.district,y.* from tb_busimate x left join tb_district y on x.district=y.rec_id and y.
 where mate_type_id=2 

