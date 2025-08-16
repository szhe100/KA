CREATE PROCEDURE [dbo].[sp_qrymedstock] (@year int,@month tinyint,@mateid int,@medid int) 

sp_qrymedstock 2025,1,0,0

sp_qrymedstock 2025,1,0,0

select * from tb_matestock

select * from tb_busimate where mate_id=23048

select top 10 * from tb_bill where bod_cd not in ('00','01')




select getdate(getdate())

select cast(convert(char(10),getdate(),20) as datetime)

select * from tb_bill where bod_type_id=10 and bod_cd='00000009'

update tB_bill set bod_type_id=110 where bod_id=18017

sp_updatestock10 -10,18017,19232

19232	2025-06-27 17:38:00


select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict=dbo.fn_getdistrict1(j.district),b.bod_cd2, b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id), dist1=i.prov_name, dist2=i.city_name, med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.zname, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=0.0000,b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=l.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt, amot=cast(b.price*b.qty as decimal(18,2)), price2=cast(n.price as decimal(15,4)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker= c.zname,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join vi_district1 i on j.district=i.code 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
left join tb_medprice n on n.rec_id=dbo.fn_getmedpricerecid1(d.material_code,b.channel_id,b.channel_dtl_id,i.prov_code,i.city_code,a.carry_dt) 
left join tb_busimate l on a.src_id=l.mate_id 
where a.bod_type_id=2 and cate_id=1 and j.mate_type_id=1   and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-31') 
union all 
select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict='',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id), dist1=dbo.fn_getdistrictname(case a.cate_id when 1 then e.district else a.district_id end,1), dist2=dbo.fn_getdistrictname(case a.cate_id when 1 then e.district else a.district_id end,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=cast(b.price as decimal(15,4)),b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt, amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,4)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
where a.bod_type_id=1   and a.cate_id=2  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-31') 
union all 
select dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY, 
m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='', 
channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP, 
dist1=dbo.fn_getdistrictname(c.district,1), ZZREGION,
dist2=ZCITYNAME, --dbo.fn_getdistrictname(c.district,2), 
med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='',customer=c.mate_name,agent=NAME_FIRST, level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0, leader=ZSALESNAM,zcode=a.ZSALESID,mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0, price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)),a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,supplier=a.ZVKORG,busi_type=0, price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime),amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,4)), cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)),bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM 
from SAP_ZSD_015 a 
inner join tb_medicine m on a.MATNR=m.material_code 
left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name 
where KDGRP not in ('10','19')  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-31')
order by a.carry_dt

select a.rec_id,a.ckd_amot3,y.* from tb_bill_stadtl a inner join (select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, d.type_id2,d.price1,b.price3, e.mate_name,mate_name1=f.mate_name, b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end, broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, b.bat_cd,amot=cast(d.rate*b.qty as decimal(15,2)), b.qty,rate=cast(d.rate as decimal(15,4)), rate2=cast(case when isnull(d.price1,0)=0 then 0 else 100.00*d.rate/d.price1 end as decimal(10,2)), y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_bill_stadtl h on b.dtl_id=h.dtl_id left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end inner join tb_busimate e on a.dst_id=e.mate_id left  join tb_busimate f on a.src_id=f.mate_id inner join tb_medicine m on b.med_id=m.med_id left join (select i.rec_id,i.type_id2,i.price1,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt) left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,e.mate_code,m.material_code1,a.carry_dt) left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-06-07' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id where a.bod_type_id=2 and a.bod_status_id=1 and e.mate_type_id=1  and a.bod_cd='00000087' and (h.rate<>0 or b.rate<>0) union all select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, type_id2=0,price1=0,price3=0, mate_name=dbo.fn_mate_name(a.dst_id),mate_name1=f.mate_name, lead_id=0,leader='',department='',sta_id=a.broker_id,broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco, a.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, bat_cd='',amot=cast(a.bod_amot as decimal(15,2)),qty=0,rate=0,rate2=0.00,y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id inner join tb_staff c on a.broker_id=c.sta_id left join tb_busimate f on a.src_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-06-07' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id where a.bod_type_id=19 and a.bod_status_id=1 and a.comp_id=1 and a.bod_cd='00000087') y on a.rec_id=y.rec_id

select a.rec_id,a.ckd_amot3,y.* from tb_bill_stadtl a inner join (
select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, d.type_id2,d.price1,b.price3, e.mate_name,mate_name1=f.mate_name, b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end, broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, b.bat_cd,amot=cast(d.rate*b.qty as decimal(15,2)), b.qty,rate=cast(d.rate as decimal(15,4)), rate2=cast(case when isnull(d.price1,0)=0 then 0 else 100.00*d.rate/d.price1 end as decimal(10,2)), y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_bill_stadtl h on b.dtl_id=h.dtl_id 
left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end 
inner join tb_busimate e on a.dst_id=e.mate_id 
left  join tb_busimate f on a.src_id=f.mate_id 
inner join tb_medicine m on b.med_id=m.med_id 
left join (select i.rec_id,i.type_id2,i.price1,j.rate from tb_brokermed i 
inner join tb_brokermedtl j on i.rec_id=j.rela_id) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt) 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,e.mate_code,m.material_code1,a.carry_dt) 
left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id 
left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-06-07' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id 
where a.bod_type_id=2 and a.bod_status_id=1 and e.mate_type_id=1  and a.bod_cd='00000087' and (h.rate<>0 or b.rate<>0) 

union all 
select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, type_id2=0,price1=0,price3=0, mate_name=dbo.fn_mate_name(a.dst_id),mate_name1=f.mate_name, lead_id=0,leader='',department='',sta_id=a.broker_id,broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco, a.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, bat_cd='',amot=cast(a.bod_amot as decimal(15,2)),qty=0,rate=0,rate2=0.00,y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id inner join tb_staff c on a.broker_id=c.sta_id left join tb_busimate f on a.src_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-06-07' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id where a.bod_type_id=19 and a.bod_status_id=1 and a.comp_id=1 and a.bod_cd='00000087') y on a.rec_id=y.rec_id
