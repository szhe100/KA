业务系统：分销结算/其他支出核销表，单据号00017713，这条在老KA，品种是银黄口服液，业务系统是授信压款，请检查这条单据

select bod_id,bod_cd,creat_dt,med_id from tb_bill where bod_type_id=36 and bod_cd='00017713'
4858781
select * from tb_medicine where med_id=4475


玉峡

update tb_medicine set tax_code=case med_id when 6211 then '107030499' when 5706 then '107030205' when 6052 then '107030301' when 1165 then '107030111' when 3012 then '107030404' when 4360 then '107030404' when 5478 then '107030302' else '' end
 where med_id in (6211,5706,6052,1165,3012,4360,5478)


select a.*,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,f.stoppay,carryer=g.zname,receiver=h.zname,storager=i.zname ,bod_cd1=dbo.fn_getbodcd1(a.bod_id),a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id) from tb_bill a left join tb_busimate b on a.src_id =b.mate_id left join tb_busimate c on a.dst_id =c.mate_id left join tb_staff d on a.creat_by =d.sta_id left join tb_staff e on a.check_by =e.sta_id left join tb_staff f on a.broker_id =f.sta_id left join tb_staff g on a.carry_by =g.sta_id left join tb_staff h on a.receipt_by =h.sta_id left join tb_staff i on a.storage_by =i.sta_id where a.bod_type_id=57  and a.creat_dt>= '2025-07-01' and a.creat_dt< dateadd(day,1,'2025-07-16')


select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id), d.bat_cd,e.price1,d.price3,med_code,m.material_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),e.type_id2 
from tb_bill_dtl b 
inner join tb_bill_stadtl h on b.med_id=h.rec_id 
left join tb_bill_dtl d on d.dtl_id=h.dtl_id 
left join tb_bill c on c.bod_id=d.bod_id 
left join tb_medicine m on d.med_id=m.med_id 
left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) e  on e.rec_id =dbo.fn_getbrokermedrecid(c.src_id,c.dst_id,d.med_id,c.carry_dt) and e.sta_id=h.sta_id 
where b.bod_id=19645


select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id), d.bat_cd,e.price1,d.price3,med_code,m.material_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),e.type_id2 
from tb_bill_dtl b 
inner join tb_bill_stadtl h on b.med_id=h.rec_id 
left join tb_bill_dtl d on d.dtl_id=h.dtl_id 
left join tb_bill c on c.bod_id=d.bod_id 
left join tb_medicine m on d.med_id=m.med_id 
left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) e  on e.rec_id =dbo.fn_getbrokermedrecid(c.src_id,c.dst_id,d.med_id,c.carry_dt) and e.sta_id=h.sta_id 
where b.bod_id=19645