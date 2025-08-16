﻿select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),bod_desc='Ô­µ¥¾ÝºÅ:'+dbo.fn_getbodcd1(a.bod_id), 
type_id2=0,e.price1,d.price3,mate_name=dbo.fn_mate_name(c.dst_id),mate_name1=dbo.fn_mate_name(c.src_id), lead_id=0,leader=k.BU_SORT1,department=k.VKBUR_TXT,
sta_id=a.broker_id,broker=f.zname,cdistrict=dbo.fn_getdistrict1(q.district),receiver1=f.receiver,f.bank_name,f.depo_acco, 
m.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, d.bat_cd,amot=cast(b.amot as decimal(15,2)),d.qty,rate=0,rate2=0.00,ckd_amot=0.00,amot1=0.00,amot2=0.00,ckd_amot3=0.00 ,
d.channel_id,channel=dbo.fn_obj_desc1(11,d.channel_id),d.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,d.channel_dtl_id)
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_bill_stadtl h on b.dtl_id=h.dtl_id 
inner join tb_staff f on a.broker_id=f.sta_id 
inner join tb_bill_stadtl x on b.med_id=x.rec_id 
left join tb_bill_dtl d on d.dtl_id=x.dtl_id 
left join tb_bill c on c.bod_id=d.bod_id 
left join tb_medicine m on d.med_id=m.med_id 
left join tb_busimate q on c.dst_id=q.mate_id 
left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) e  on e.rec_id =dbo.fn_getbrokermedrecid(c.src_id,c.dst_id,d.med_id,c.carry_dt) and e.sta_id=x.sta_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(d.channel_id,d.channel_dtl_id,q.district,q.mate_code,m.material_code1,c.carry_dt) 
where a.bod_type_id=57 and a.bod_status_id=1  and a.creat_dt>= '2025-06-16' and a.creat_dt< dateadd(day,1,'2025-07-16')

select top 10 * from vi_district1

select bod_cd+bod_desc from tb_bill where bod_type_id=2

select a.rec_id,a.ckd_amot3,y.* from tb_bill_stadtl a inner join (
select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, d.type_id2,d.price1,b.price3, e.mate_name,mate_name1=f.mate_name, b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end, broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, b.bat_cd,amot=cast(d.rate*b.qty as decimal(15,2)), b.qty,rate=cast(d.rate as decimal(15,4)), rate2=cast(case when isnull(d.price1,0)=0 then 0 else 100.00*d.rate/d.price1 end as decimal(10,2)), y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_bill_stadtl h on b.dtl_id=h.dtl_id left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end inner join tb_busimate e on a.dst_id=e.mate_id left  join tb_busimate f on a.src_id=f.mate_id inner join tb_medicine m on b.med_id=m.med_id left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt) and d.sta_id=h.sta_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,e.mate_code,m.material_code1,a.carry_dt) left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-03-01' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id where a.bod_type_id=2 and a.bod_status_id=1 and e.mate_type_id=1   and a.carry_dt>= '2025-03-01' and a.carry_dt< dateadd(day,1,'2025-07-16') and (h.rate<>0 or b.rate<>0) 
union all 
select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, type_id2=0,price1=0,price3=0, mate_name=dbo.fn_mate_name(a.dst_id),mate_name1=f.mate_name, lead_id=0,leader='',department='',sta_id=a.broker_id,broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco, a.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, bat_cd='',amot=cast(a.bod_amot as decimal(15,2)),qty=0,rate=0,rate2=0.00,y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id inner join tb_staff c on a.broker_id=c.sta_id left join tb_busimate f on a.src_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1 and a.creat_dt>= '2025-03-01'  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-03-01' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id where a.bod_type_id=19 and a.bod_status_id=1  and a.carry_dt>= '2025-03-01' and a.carry_dt< dateadd(day,1,'2025-07-16') 
union all 
select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),bod_desc='Ô­µ¥¾ÝºÅ:'+c.bod_cd, type_id2=0,e.price1,d.price3,mate_name=dbo.fn_mate_name(c.dst_id),mate_name1=dbo.fn_mate_name(c.src_id), lead_id=0,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=a.broker_id,broker=f.zname,cdistrict=dbo.fn_getdistrict1(q.district),receiver1=f.receiver,f.bank_name,f.depo_acco, m.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, d.bat_cd,amot=cast(b.amot as decimal(15,2)),d.qty,rate=0,rate2=0.00,ckd_amot=0.00,amot1=0.00,amot2=0.00,ckd_amot3=0.00 ,d.channel_id,channel=dbo.fn_obj_desc1(11,d.channel_id),d.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,d.channel_dtl_id) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_bill_stadtl h on b.dtl_id=h.dtl_id inner join tb_staff f on a.broker_id=f.sta_id inner join tb_bill_stadtl x on b.med_id=x.rec_id left join tb_bill_dtl d on d.dtl_id=x.dtl_id left join tb_bill c on c.bod_id=d.bod_id left join tb_medicine m on d.med_id=m.med_id left join tb_busimate q on c.dst_id=q.mate_id left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) e  on e.rec_id =dbo.fn_getbrokermedrecid(c.src_id,c.dst_id,d.med_id,c.carry_dt) and e.sta_id=x.sta_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(d.channel_id,d.channel_dtl_id,q.district,q.mate_code,m.material_code1,c.carry_dt) where a.bod_type_id=57 and a.bod_status_id=1  and a.creat_dt>= '2025-03-01' and a.creat_dt< dateadd(day,1,'2025-07-16')
) y on a.rec_id=y.rec_id

00000360   00000361  00000362  00000363四张进项发票单做错了，何工，帮忙反审一下

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*, c.mate_name,c.bod_cd1,creater=d.zname,checker=e.zname, broker='',
 c.agent,receiver='',acnt_bank='',bank_account='',carryer=g.zname,receiver1='',storager='', cdistrict='',bank_name=0,depo_acco='',bank_id1=0,bank_name1='', 
 c.dist1, c.dist2, c.level1,level2='',level3='', leader='', c.channel_id,c.channel,c.channel_dtl_id,c.channel_dtl 
 from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt  from SAP_ZSD_015 where KDGRP not in ('10','19') union all select a.bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt 		
 from tb_bill a	
 left join tb_busimate f on a.agent_id=f.mate_id 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
 left join tb_staff d on a.creat_by =d.sta_id 
 left join tb_staff e on a.check_by =e.sta_id 
 left join tb_staff g on a.carry_by =g.sta_id 
 where a.bod_type_id=37 and a.bod_status_id=1  and c.carry_dt>= '2025-01-17' and c.carry_dt< dateadd(day,1,'2025-07-17')



 select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*, c.mate_name,c.bod_cd1,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name=0,depo_acco='',bank_id1=0,bank_name1='', c.dist1, c.dist2, c.level1,level2='',level3='', leader='', c.channel_id,c.channel,c.channel_dtl_id,c.channel_dtl 
 from tb_bill a 
 inner join tb_bill_dtl b on a.bod_id=b.bod_id 
 inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt  from SAP_ZSD_015 where KDGRP not in ('10','19') 	union all select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt 		from tb_bill a	left join tb_busimate f on a.agent_id=f.mate_id 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
 where a.bod_type_id=37 and a.bod_status_id=1  and c.carry_dt>= '2025-01-17' and c.carry_dt< dateadd(day,1,'2025-07-17')

 select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*, c.mate_name,c.bod_cd1,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', c.dist1, c.dist2, c.level1,level2='',level3='', leader='', c.channel_id,c.channel,c.channel_dtl_id,c.channel_dtl from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id 
 inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,  material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit=''  from SAP_ZSD_015 where KDGRP not in ('10','19') 	union all select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id) 		from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.rec_id where a.bod_type_id=37 and a.bod_status_id=1  and c.carry_dt>= '2025-06-17' and c.carry_dt< dateadd(day,1,'2025-07-17')

select distinct sta_type_id from tb_staff

select count(1) from tb_staff where sta_type_id=1
select count(*) from tb_linkword where type_id in (1,2)
select * into tb_staff_250717 from tb_staff
select * into tb_busimate_250717 from tb_busimate
select * into tb_sysrule_250717 from tb_sysrule

delete from tb_staff where sta_type_id=1
delete from tb_busimate where mate_type_id=1
truncate table tb_linkword

--delete from tb_bill where bod_type_id=2 and cate_id=1  -- 商业销售出库单
truncate table tb_brokermed
truncate table tb_brokermedtl
delete from tb_sysrule where type_id=4
truncate table tb_bill
truncate table tb_bill_dtl
truncate table tb_bill_stadtl
truncate table tb_billid

select * from tb_billid

select * into tb_bill_250717 from tb_bill
select * into tb_bill_dtl_250717 from tb_bill_dtl
select * into tb_bill_stadtl_250717 from tb_bill_stadtl
select * into tb_billid_250717 from tb_billid

select * from tb_sysrule where type_id=4

何工：新KA麻烦清除一下功能的测试数据：
1.业务管理：设置业务员、设置客户（医院）、流向词语对照
2.商业管理：商业销售出库单
3.商业结算：业务员费用规则（含审批环节单据）、医院托管费规则（含审批环节单据）、业务员费用兑付/应付费用记账、业务员费用兑付/付款审批、业务员费用兑付/出纳付款审批、业务员费用兑付/业务员费用补差、补差审批环节

select * from tb_staff where qry_code like '%lxq%'
select * from tb_staff where sta_type_id=0 and dept_id=43 and qry_code like '%lxq%'
19234

select * from tB_object where obj_id=43

select bod_id,bod_cd,broker_id from tb_bill where bod_type_id=1

update tb_bill set broker_id=19234 where bod_type_id=1 and broker_id is null

select * into tb_sysframe_250718 from tb_sysframe

select * from tB_sysframe where sf_parent=4

delete from tB_sysframe where sf_id in (129,130,132,133,134)


1.分销结算/D其他支出记账单  bod_type_id=36
2.分销结算/G其他支出审批付款/付款审批3个环节单据  bod_type_id=37
3.分销结算/G其他支出审批付款/出纳付款审批2个环节单据  bod_type_id=30


select mate_code,mate_name,count(1) from tB_busimate where mate_type_id=1 group by mate_code,mate_name having count(1)>1
select * from tB_busimate a where mate_type_id=1 and not exists (select 1 from (
select mate_code,mate_name,count(1) from tB_busimate where mate_type_id=1 group by mate_code,mate_name having count(1)>1
) b where a.mate_code=b.mate_code and a.mate_name=b.mate_name
