declare @materialcode varchar(20),@districtcode varchar(10),@levelid tinyint,@dt datetime
select @materialcode='1000010000',@districtcode='4401',@levelid=1,@dt='2025-01-17 00:00:00'

--	set @districtcode='44'
--	declare @ret varchar(100)

	select top 1 @districtcode,str(b.district)+'%',b.district,* --top 1 @ret=b.mate_name
	from tb_sysrule a	
	inner join tb_busimate b on a.mate_id=b.mate_id	
	inner join tb_medicine m on a.med_id=m.med_id	
--	where a.type_id=2 and a.lead_id=@levelid and (m.material_code1=@materialcode) 
	where a.type_id=2 and a.level_id=1 and (m.material_code1=@materialcode) 
	and @districtcode like ltrim(str(b.district))+'%'
	and a.valid_dt<=@dt
	order by case when b.district=@districtcode then 1 else 0 end desc,a.valid_dt desc

select h.rec_id,h.agent_id,a.rec_id,a.agent_id,agent=b.mate_name,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id
from tb_busiframe3_dtl a
left join tb_busimate b on a.agent_id=b.mate_id
left join tb_staff c on a.creat_by=c.sta_id
left join tb_staff d on a.modify_by=d.sta_id
inner join tb_busiframe3 h on a.rela_id=h.rec_id

select h.rec_id,h.agent_id,a.rec_id,a.agent_id,agent=b.mate_name,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id
from tb_busiframe3_dtl a
left join tb_busimate b on a.agent_id=b.mate_id
left join tb_staff c on a.creat_by=c.sta_id
left join tb_staff d on a.modify_by=d.sta_id
inner join tb_busiframe3 h on a.rela_id=h.rec_id

select * from tb_busiframe3 a,tb_busiframe3_dtl b
 where a.rec_id=b.rela_id 

update b set fee_type_id=case when a.agent_id=b.agent_id then 1 else 2 end
 from tb_busiframe3 a,tb_busiframe3_dtl b
 where a.rec_id=b.rela_id and b.fee_type_id is null

select b.dtl_id,a.bod_id,a.bod_cd,d.material_code1,j.district,1,a.carry_dt,
mate_name1=dbo.fn_getlevelmatename(d.material_code1,j.district,1,a.carry_dt), mate_name2=dbo.fn_getlevelmatename(d.material_code1,j.district,2,a.carry_dt), mate_name3=dbo.fn_getlevelmatename(d.material_code1,j.district,3,a.carry_dt), mate_name4=dbo.fn_getlevelmatename(d.material_code1,j.district,4,a.carry_dt), mate_name5=dbo.fn_getlevelmatename(d.material_code1,j.district,5,a.carry_dt), 
carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt, a.busi_type,b.price,b.price3,b.qty,b.discount, amot=cast(b.price*b.qty as decimal(15,2)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate i on a.mate_id1=i.mate_id 
left join tb_busimate e on a.mate_id2=e.mate_id 
left join tb_busimate f on a.mate_id3=f.mate_id 
left join tb_busimate g on a.mate_id4=g.mate_id 
left join tb_busimate h on a.mate_id5=h.mate_id 
left join tb_busimate j on a.dst_id=j.mate_id 
left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt) 
left join tb_staff p on k.sta_id=p.sta_id 
where a.bod_type_id=2   and a.bod_status_id in (0,1)  and a.cate_id=1 and a.bod_cd='00000066'

select b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack, cdistrict=dbo.fn_getdistrict1(j.district), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=case when j.mate_type_id=1 then j.mate_name else '' end,j.mate_type_id,mate_name=dbo.fn_mate_name(a.src_id), b.channel_id,channel=dbo.fn_obj_desc(b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(b.channel_dtl_id), level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3), leader=p.zname,a.data_type_id,data_type=dbo.fn_obj_desc(a.data_type_id), a.platform_id, mate_id1=a.src_id,mate_id2=a.dst_id,mate_id3=f.mate_id,mate_id4=g.mate_id,mate_id5=h.mate_id, mate_name1=dbo.fn_getlevelmatename(d.material_code1,j.district,1,a.carry_dt), mate_name2=dbo.fn_getlevelmatename(d.material_code1,j.district,2,a.carry_dt), mate_name3=dbo.fn_getlevelmatename(d.material_code1,j.district,3,a.carry_dt), mate_name4=dbo.fn_getlevelmatename(d.material_code1,j.district,4,a.carry_dt), mate_name5=dbo.fn_getlevelmatename(d.material_code1,j.district,5,a.carry_dt), carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt, a.busi_type,b.price,b.price3,b.qty,b.discount, amot=cast(b.price*b.qty as decimal(15,2)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_staff c on b.sta_id=c.sta_id inner join tb_medicine d on b.med_id=d.med_id left join tb_busimate i on a.mate_id1=i.mate_id left join tb_busimate e on a.mate_id2=e.mate_id left join tb_busimate f on a.mate_id3=f.mate_id left join tb_busimate g on a.mate_id4=g.mate_id left join tb_busimate h on a.mate_id5=h.mate_id left join tb_busimate j on a.dst_id=j.mate_id left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt) left join tb_staff p on k.sta_id=p.sta_id where a.bod_type_id=2   and a.bod_status_id in (0,1)  and a.cate_id=1 and a.bod_cd='00000066'

select a.rec_id,a.type_id,a.comp_id,a.mate_id,a.med_id,b.mate_name,m.med_code,m.material_code,m.material_code1,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,	b.district,b.BEZEI,b.CITY1,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,import_log='',	a.valid_dt,a.level_id,a.f4,a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname	from tb_sysrule a	left join tb_busimate b on a.mate_id=b.mate_id	left join tb_medicine m on a.med_id=m.med_id	left join tb_staff c on a.creat_by=c.sta_id	left join tb_staff d on a.modify_by=d.sta_id
where a.type_id=2 and a.med_id=262
