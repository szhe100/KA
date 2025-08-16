select * from (
 select c.district,a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,
 agent=dbo.fn_mate_name(i.agent_id),
  agent_id=c.mate_id,agent1=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,
 dist1=dbo.fn_getdistrictlevel(c.district,1), 
 dist2=dbo.fn_getdistrictlevel(c.district,2), 
 level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(e.amot,0) as decimal(15,2)) 
 from SAP_ZSD_015 a 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
 left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id 
 left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
 where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  
 and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-04') 
 union all 
 select f.district,rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),
 agent1='',a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id), 
 dist1=dbo.fn_getdistrictlevel (f.district,1),
 dist2=dbo.fn_getdistrictlevel (f.district,2),
 level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) 
 from tb_bill a 
 left join tb_bill_stadtl h on a.bod_id=h.bod_id 
 left join tb_staff d on a.creat_by=d.sta_id 
 left join tb_busimate e on a.dst_id=e.mate_id 
 left join tb_busimate f on a.agent_id=f.mate_id 
 left join tb_medicine m on a.med_id=m.med_id 
 left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id 
 left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id 
 where a.bod_type_id=36 and a.bod_status_id=1  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-04')
) a where agent1='杨坤'


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100), f11 varchar(100),f12 varchar(100),f13 varchar(100),f14 varchar(100),f15 varchar(100), channel_id int,channel_dtl_id int,mate_id int,mate_id1 int,mate_id2 int,med_id int) insert @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15) 
select 2,'北京圆心医药有限公司','1002723','1000002200','2025-3-1','分销','B2B',replace('','%',''),replace('44.54',',',''),replace('12.89',',',''),replace('0.92',',',''),replace('0','%',''),replace('0',',',''),'9000007','','' union all  select 3,'北京圆心医药有限公司','1002723','1000002100','2025-3-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('0.61',',',''),replace('0','%',''),replace('0',',',''),'9000007','','' union all  select 4,'北京圆心医药有限公司','1002723','1000002200','2025-3-1','分销','B2B',replace('','%',''),replace('44.54',',',''),replace('12.89',',',''),replace('28.52',',',''),replace('0','%',''),replace('0',',',''),'','','' union all  select 5,'北京圆心医药有限公司','1002723','1000002100','2025-3-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('18.69',',',''),replace('0','%',''),replace('0',',',''),'','','' union all  select 6,'广东圆心恒金堂医药连锁有限公司','1002723','1000002100','2025-4-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('0.61',',',''),replace('0','%',''),replace('0',',',''),'9000007','','' union all  select 7,'广东圆心恒金堂医药连锁有限公司','1002723','1000002100','2025-4-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('18.69',',',''),replace('0','%',''),replace('0',',',''),'','','' union all  select 8,'广州交通集团物流有限公司','1002723','1000002200','2025-3-1','分销','B2B',replace('','%',''),replace('44.54',',',''),replace('12.89',',',''),replace('0.92',',',''),replace('0','%',''),replace('0',',',''),'9000007','','' union all  select 9,'广州交通集团物流有限公司','1002723','1000002100','2025-3-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('0.61',',',''),replace('0','%',''),replace('0',',',''),'9000007','','' union all  select 10,'广州交通集团物流有限公司','1002723','1000002200','2025-3-1','分销','B2B',replace('','%',''),replace('44.54',',',''),replace('12.89',',',''),replace('28.52',',',''),replace('0','%',''),replace('0',',',''),'','','' union all  select 11,'广州交通集团物流有限公司','1002723','1000002100','2025-3-1','分销','B2B',replace('','%',''),replace('29.18',',',''),replace('8.44',',',''),replace('18.69',',',''),replace('0','%',''),replace('0',',',''),'','','' 
update a set channel_id=b.obj_code,channel_dtl_id=c.obj_code,mate_id=d.mate_id,mate_id1=e.mate_id,mate_id2=case when f.mate_id>0 then f.mate_id else e.mate_id end,med_id=m.med_id 
from @tab a 
left join tb_object b on b.obj_type_id=11 and b.zdesc=a.f5 left join tb_object c on c.obj_type_id=12 and c.zdesc=a.f6 left join tb_busimate d on d.mate_type_id=2 and d.mate_name =a.f1 left join tb_busimate e on e.mate_type_id=4 and e.mate_code =a.f2 left join tb_busimate f on f.mate_type_id=4 and f.mate_code =a.f13 left join tb_medicine m on m.material_code =a.f3 
declare @cnt1 int,@cnt2 int,@cnt3 int,@cnt4 int 
insert tb_busiframe3 (comp_id,channel_id,channel_dtl_id,mate_id,agent_id,med_id,valid_dt,creat_by,creat_dt) 
select distinct comp_id=1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.mate_id,agent_id=a.mate_id1,a.med_id,valid_dt=cast(a.f4 as datetime), creat_by=19232,creat_dt=getdate() from @tab a  where not exists (select 1 from tb_busiframe3 k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0) 
set @cnt2=@@ROWCOUNT 

update k set rate=case when f7='' then 0 else cast(a.f7 as decimal(15,4)) end,price1=cast(a.f8 as decimal(15,4)),price2=cast(a.f9 as decimal(15,4)),  rate1=case when a.f11='' then 0 else cast(a.f11 as decimal(15,4)) end,bod_desc=a.f14,remark=a.f15 
from tb_busiframe3 k inner join @tab a on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.med_id=a.med_id    and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0 
set @cnt1=@@ROWCOUNT 

update b set rate=cast(f7 as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)),modify_by=19232,modify_dt=getdate() 
from @tab a 
inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0 
inner join tb_busiframe3_dtl b on k.rec_id=b.rela_id and b.agent_id=a.mate_id2 
where (isnull(b.amot,0)<>cast(f10 as decimal(15,4)) or isnull(b.fee,0)<>cast(f12 as decimal(15,4))) 
set @cnt3=@@ROWCOUNT 

insert tb_busiframe3_dtl (rela_id,agent_id,rate,amot,fee,fee_type_id,creat_by,creat_dt) select rela_id=k.rec_id,agent_id=a.mate_id2, rate=cast(case when f7='' then '0.0000' else f7 end as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)), fee_type_id=case when mate_id1=mate_id2 then 1 else 2 end, creat_by=19232,creat_dt=getdate() from @tab a inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0 where not exists (select 1 from tb_busiframe3_dtl b where k.rec_id=b.rela_id and b.agent_id=a.mate_id2) set @cnt4=@@ROWCOUNT select isnull(@cnt1,0)+isnull(@cnt3,0),isnull(@cnt2,0)+isnull(@cnt4,0)
