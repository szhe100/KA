 select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc, 
 d.type_id2,d.price1,b.price3, e.mate_name,mate_name1=f.mate_name, 
 b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end, 
 broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, 
 b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1, 
 b.bat_cd,amot=cast(d.rate*b.qty as decimal(15,2)), b.qty,rate=cast(d.rate as decimal(15,4)), rate2=cast(case when isnull(d.price1,0)=0 then 0 else 100.00*d.rate/d.price1 end as decimal(10,2)), 
 y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3 ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) 
 from tb_bill a 
 inner join tb_bill_dtl b on a.bod_id=b.bod_id 
 left join tb_bill_stadtl h on b.dtl_id=h.dtl_id 
 left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end 
 inner join tb_busimate e on a.dst_id=e.mate_id 
 left  join tb_busimate f on a.src_id=f.mate_id 
 inner join tb_medicine m on b.med_id=m.med_id 
 left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt) and d.sta_id=h.sta_id 
 left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,e.mate_code,m.material_code1,a.carry_dt) 
 left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id 
 left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '2025-01-01' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id 
 where a.bod_type_id=2 and a.bod_status_id=1 and e.mate_type_id=1   
 and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-16') and (h.rate<>0 or b.rate<>0) 
