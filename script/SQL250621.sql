select price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),  a.*,leader=dbo.fn_staff_name(a.lead_id),leader1=dbo.fn_staff_name(k.sta_id),b.material_code,b.material_code1, b.med_code,b.med_name,b.specifi,b.pdt_place,med_unit=c.zdesc,b.qtyperpack,b.qtyperbox, f.check_dt,stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getrate2(a.channel_id,a.channel_dtl_id,e.district,a.med_id,a.valid_dt),fee1=0.0000, b.chm_name,med_type=dbo.fn_med_type(b.med_id),broker=d.zname,e.mate_name,e.trusted,creater=g.zname,
e.district,dist_name=dbo.fn_getdistrictname (e.district,1)+' '+dbo.fn_getdistrictname (e.district,2), 
f1=dbo.fn_getsysrulef1(a.mate_id,a.med_id,a.valid_dt),f2=dbo.fn_getsysrulef1a(a.mate_id,a.med_id) ,mate_name1=h.mate_name,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id) 
from tb_brokermed a 
inner join tb_medicine b on a.med_id=b.med_id 
left join tb_object c on b.unit_id=c.obj_id 
left join tb_staff d on a.sta_id=d.sta_id 
left join tb_busimate e on a.mate_id=e.mate_id 
left join tb_busimate h on a.mate_id1=h.mate_id 
left join tb_staff g on a.creat_by=g.sta_id 
left join (select b.med_id,check_dt=max(a.check_dt) from tb_bill a,tb_bill_dtl b where a.bod_type_id=20 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.med_id) f on a.rec_id=f.med_id 
left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt) 
where 1=1 and isnull(a.stop_yn,0)=0 and e.district like '44%'

select * from tb_medicine left join tb_district on code=41
 where med_id=129 

select * from vi_district1


select  med_id,material_code,med_name,b.*
from tb_medicine a left join vi_district1 b on code=11
 where med_id=129 

select top 10 * from tb_medprice 

select type_id=1,comp_id=1,district_id=b.code,ZREGIO=b.,ZCITYNUM,med_id,MATNR,creat_by,creat_dt
from tb_medicine a left join vi_district1 b on code=11
 where med_id=129 

select type_id=1,comp_id=1,district_id=case when b.city_name='' then b.prov_code else b.city_code end,ZREGIO=b.prov_code,ZCITYNUM=b.city_code,b.prov_name,MATNR=a.material_code,creat_by,creat_dt
from tb_medicine a left join tb_district b on 1=1
 where med_id=129 and (b.prov_code=11 and b.city_name='' or city_code=11)

select top 10 * from tb_district

select * from tb_medprice where type_id=1 and creat_dt>'2025-06-18'

delete from tb_medprice where type_id=1 and creat_dt>'2025-06-18'

select top 5 * from tb_medprice where type_id=1 
select * from tb_medprice where type_id=2 and creat_dt>'2025-06-18'

select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=13

select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent, c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1,d.type_id2 
from tb_bill_dtl b 
left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) 
inner join tb_bill a on a.bod_id=b.bod_id 
left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end, 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end, 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id 
where b.bod_id=17918

select * --b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent, c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1,d.type_id2 
from tb_bill_dtl b 
--left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) 
inner join tb_bill a on a.bod_id=b.bod_id 
left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end, 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end, 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id 
where b.bod_id=17918
