select e.district, h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, d.type_id2,d.price1, e.mate_name,mate_name1=f.mate_name, b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end, broker=c.zname,
cdistrict=dbo.fn_getdistrict(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, b.bat_cd,amot=cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2)), b.qty,rate=cast(case when h.rate is null then b.rate else h.rate end as decimal(15,4)), y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,
b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join (select rec_id,type_id2,price1 from tb_brokermed) d on b.rule_id=d.rec_id 
left join tb_bill_stadtl h on b.dtl_id=h.dtl_id 
left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end 
inner join tb_busimate e on a.dst_id=e.mate_id 
left  join tb_busimate f on a.src_id=f.mate_id 
inner join tb_medicine m on b.med_id=m.med_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,m.material_code1,a.carry_dt) 
left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id 
left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-01-01' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id 
where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id=1 and e.mate_type_id=1
and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-05') and (h.rate<>0 or b.rate<>0) 

select * from tb_bill where bod_type_id=10
select b.* from tb_bill a,tb_bill_dtl b where bod_type_id=10 and a.bod_id=b.bod_id


delete from tb_bill where bod_type_id=10

select * from tb_billid where bod_type_id=10

update tb_billid set currentID=0 where bod_type_id=10

select count(1) from SAP_ZSD_BUS where PARNR='0000000000'
44355


select b.bod_id,b.dtl_id,b.channel_id,b.channel_dtl_id,c.obj_code,d.obj_code
from tb_bill a,tb_bill_dtl b,tb_object c,tb_object d
where bod_type_id=10 and a.bod_id=b.bod_id and b.channel_id=c.obj_id and b.channel_dtl_id=d.obj_id

update b set channel_id=c.obj_code,channel_dtl_id=d.obj_code
from tb_bill a,tb_bill_dtl b,tb_object c,tb_object d
where bod_type_id=10 and a.bod_id=b.bod_id and b.channel_id=c.obj_id and b.channel_dtl_id=d.obj_id


select top 10 bod_id,bod_type_id,bod_cd,carry_dt,ltrim(str(year(carry_dt)))+ltrim(str(month(carry_dt))) from tb_bill where bod_type_id=2

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname,
cdistrict=dbo.fn_getdistrict(f.district),receiver1=f.receiver,f.bank_name,f.depo_acco,j.bank_id1,bank_name1=dbo.fn_mate_name(j.bank_id1) 
from tb_bill a 
left join tb_busimate b on a.src_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_staff f on a.broker_id =f.sta_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
left join (select a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id 
where a.bod_type_id=17 and a.bod_status_id=1  and a.check_dt>= '2025-06-25' and a.check_dt< dateadd(day,1,'2025-06-25')
