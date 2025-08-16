select y.bod_type_id,y.channel_id,y.channel_dtl_id,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),check_dt=cast(convert(char(10),a.check_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,y.*,a.*,j.bod_cd1, 
supplier=b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname, 
cdistrict=dbo.fn_getdistrict1(c.district),receiver1=f.receiver,f.bank_name,f.depo_acco,j.bank_id1,bank_name1=dbo.fn_mate_name(j.bank_id1), 
dist1=dbo.fn_getdistrictlevel (c.district,1), dist2=dbo.fn_getdistrictlevel (c.district,2), 
--level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3), 
level1=k.VKBUR_TXT,level2='''',level3=k.ZPLOT_T,
leader=k.BU_SORT1,a.channel_id,channel=dbo.fn_obj_desc1(11,y.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,y.channel_dtl_id) 
from tb_bill a 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_staff f on a.broker_id =f.sta_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
left join (select bod_cd1=a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id 
left join (
select b.bod_id,c.bod_type_id,d.channel_id,d.channel_dtl_id, bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),c.src_id,c.dst_id,  d.med_id,m.material_code1, med_code,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1  
from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_medicine m 
where b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and d.med_id=m.med_id 
union all 
select b.bod_id,c.bod_type_id,c.channel_id,c.channel_dtl_id,bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,qty=0,b.price,b.amot,carry_dt1=c.carry_dt,c.broker_id,broker=dbo.fn_staff_name(c.broker_id),c.src_id,c.dst_id,  
c.med_id,m.material_code1,m.med_code,med_name=case when m.med_name is null then 'Î´¹ØÁªÆ·ÖÖ' else m.med_name end,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),type_id1  
from tb_bill_dtl b inner join tb_bill c on b.sta_id=c.bod_id left join tb_medicine m on c.med_id=m.med_id
) y on a.bod_id=y.bod_id 
left join tb_busimate b on y.src_id =b.mate_id 
left join tb_busimate c on y.dst_id =c.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(y.channel_id,y.channel_dtl_id,c.district,y.material_code1,a.carry_dt) 
where a.bod_type_id=17 and a.bod_status_id=1  and a.check_dt>= '2025-06-25' and a.check_dt< dateadd(day,1,'2025-06-25')

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),check_dt=cast(convert(char(10),a.check_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,y.*,a.*,j.bod_cd1, supplier=b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(c.district),receiver1=f.receiver,f.bank_name,f.depo_acco,j.bank_id1,bank_name1=dbo.fn_mate_name(j.bank_id1), dist1=dbo.fn_getdistrictname (c.district,1), dist2=dbo.fn_getdistrictname (c.district,2), level1=k.VKBUR_TXT,level2='',level3=k.ZPLOT_T,leader=k.BU_SORT1 ,a.channel_id,channel=dbo.fn_obj_desc1(11,y.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,y.channel_dtl_id) from tb_bill a left join tb_staff d on a.creat_by =d.sta_id left join tb_staff e on a.check_by =e.sta_id left join tb_staff f on a.broker_id =f.sta_id left join tb_staff g on a.carry_by =g.sta_id left join tb_staff h on a.receipt_by =h.sta_id left join tb_staff i on a.storage_by =i.sta_id left join (select bod_cd1=a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id  left join (select b.bod_id,c.bod_type_id,d.channel_id,d.channel_dtl_id, bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,d.sta_id,  broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),c.src_id,c.dst_id,  d.med_id,m.material_code1, med_code,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id)  from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_medicine m  where b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and d.med_id=m.med_id  union all select b.bod_id,c.bod_type_id,c.channel_id,c.channel_dtl_id,bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,qty=0,b.price,b.amot,carry_dt1=c.carry_dt,c.broker_id,broker=dbo.fn_staff_name(c.broker_id),c.src_id,c.dst_id,  c.med_id,m.material_code1,m.med_code,med_name=case when m.med_name is null then 'Î´¹ØÁªÆ·ÖÖ' else m.med_name end,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id)  from tb_bill_dtl b inner join tb_bill c on b.sta_id=c.bod_id left join tb_medicine m on c.med_id=m.med_id) y on a.bod_id=y.bod_id left join tb_busimate b on y.src_id =b.mate_id left join tb_busimate c on y.dst_id =c.mate_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,d.material_code1,a.carry_dt) 
where a.bod_type_id=17 and a.bod_status_id=1  and a.check_dt>= '2025-06-25' and a.check_dt< dateadd(day,1,'2025-06-25')