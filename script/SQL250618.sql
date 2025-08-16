declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100), f11 varchar(100),f12 varchar(100),f13 varchar(100),f14 varchar(100), channel_id int,channel_dtl_id int,mate_id int,mate_id1 int,mate_id2 int,med_id int) 
insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14) 
select 2,'南阳市济康医药有限公司','廉俊霞','1000010000','2025-4-3','10','11',replace('38%','%',''),replace('27.17',',',''),replace('12.5',',',''),replace('10.65',',',''),replace('0','%',''),replace('0',',',''),'','测试' union all  select 3,'南阳市济康医药有限公司','廉俊霞','1000010000','2025-4-3','10','11',replace('2%','%',''),replace('27.17',',',''),replace('12.5',',',''),replace('0.56',',',''),replace('0','%',''),replace('0',',',''),'王凯','' 
update a set channel_id=b.obj_id,channel_dtl_id=c.obj_id,mate_id=d.mate_id,mate_id1=e.mate_id,mate_id2=case when f.mate_id>0 then f.mate_id else e.mate_id end,med_id=m.med_id from @tab a left join tb_object b on b.obj_type_id=11 and b.obj_code=a.f5 left join tb_object c on c.obj_type_id=12 and c.obj_code=a.f6 left join tb_busimate d on d.mate_type_id=2 and d.mate_name =a.f1 left join tb_busimate e on e.mate_type_id=4 and e.mate_name =a.f2 left join tb_busimate f on f.mate_type_id=4 and f.mate_name =a.f13 left join tb_medicine m on m.material_code1 =a.f3 

select * from @tab
--导入 格式: 1商业公司,2业务负责人,3产品编码,4生效日期,5渠道编码,6子渠道编码,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人(选填), 14单据摘要

select rate,case when f7='' then 0 else cast(a.f7 as decimal(15,4)) end,price1,cast(a.f8 as decimal(15,4)),price2,cast(a.f9 as decimal(15,4)),  rate1,case when a.f11='' then 0 else cast(a.f11 as decimal(15,4)) end,bod_desc,a.f14
from tb_busiframe3 k 
inner join @tab a on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.med_id=a.med_id
and k.valid_dt=cast(a.f4 as datetime) 

declare @cnt1 int,@cnt2 int,@cnt3 int,@cnt4 int 

insert into tb_busiframe3 (comp_id,channel_id,channel_dtl_id,mate_id,agent_id,med_id,valid_dt,creat_by,creat_dt) 
select distinct comp_id=1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.mate_id,agent_id=a.mate_id1,a.med_id,valid_dt=cast(a.f4 as datetime), creat_by=19273,creat_dt=getdate()
from @tab a 
where not exists (select 1 from tb_busiframe3 k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime)) 
set @cnt2=@@ROWCOUNT 

update k set rate=case when f7='' then 0 else cast(a.f7 as decimal(15,4)) end,price1=cast(a.f8 as decimal(15,4)),price2=cast(a.f9 as decimal(15,4)),  rate1=case when a.f11='' then 0 else cast(a.f11 as decimal(15,4)) end,bod_desc=a.f14
from tb_busiframe3 k 
inner join @tab a on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) 
set @cnt1=@@ROWCOUNT 

update b set rate=cast(f7 as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)),modify_by=19273,modify_dt=getdate() 
from @tab a inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) 
inner join tb_busiframe3_dtl b on k.rec_id=b.rela_id and b.agent_id=a.mate_id2 
where (isnull(b.amot,0)<>cast(f10 as decimal(15,4)) or isnull(b.fee,0)<>cast(f12 as decimal(15,4))) 
set @cnt3=@@ROWCOUNT 

insert into tb_busiframe3_dtl (rela_id,agent_id,rate,amot,fee,fee_type_id,creat_by,creat_dt) 
select rela_id=k.rec_id,agent_id=a.mate_id2,rate=cast(f7 as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)), fee_type_id=case when mate_id1=mate_id2 then 1 else 2 end, creat_by=19273,creat_dt=getdate() 
from @tab a 
inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) 
where not exists (select 1 from tb_busiframe3_dtl b where k.rec_id=b.rela_id and b.agent_id=a.mate_id2) 
set @cnt4=@@ROWCOUNT 
select isnull(@cnt1,0),isnull(@cnt3,0),isnull(@cnt2,0),isnull(@cnt4,0)

--select isnull(@cnt1,0)+isnull(@cnt3,0),isnull(@cnt2,0)+isnull(@cnt4,0)
