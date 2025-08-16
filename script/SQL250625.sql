declare @materialcode varchar(20),@channelcode int,@channeldtlcode int,@provcode varchar(10),@citycode varchar(10),@dt datetime 
/*学术标准政策 tb_medprice.rec_id  type_id=3*/
-- 1000008800	00	19	广东省	广州市	2025-01-02 00:00:00.000	21201
-- 1000008800	00	19	44	4401	2025-01-02 00:00:00.000	21201

--select @materialcode='1000008800',@channelcode='00',@channeldtlcode='19',@provcode='44',@citycode='4401',@dt='2025-01-02'
select @materialcode='1000016701',@channelcode='10',@channeldtlcode='10',@provcode='31',@citycode='3101',@dt='2025-01-09'
--select @materialcode='1000016700',@channelcode='10',@channeldtlcode='10',@provcode='31',@citycode='3101',@dt='2025-01-09'

	select top 10 a.* --med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*,	dist1=dbo.fn_getdistrictname (a.district_id,1),dist2=dbo.fn_getdistrictname (a.district_id,2),  creater=f.zname 
	from tb_medprice a 
	--inner join tb_medicine m on a.med_id =m.med_id 
	--left join tb_staff f on a.creat_by =f.sta_id 
	inner join (select channel_id,channel_dtl_id,district_id,m.material_code1,rec_id=max(rec_id) from tb_medprice a,tb_medicine m where a.type_id=3 and a.med_id=m.med_id group by channel_id,channel_dtl_id,district_id,m.material_code1) h on a.rec_id=h.rec_id 
	where type_id=3 
	and exists (select 1 from tb_medicine n where a.med_id=n.med_id and n.material_code1='1000016700' )  --n.med_id=226 and m.material_code1=n.material_code1)


--	and (a.district_id=@provcode or a.district_id=@citycode or @citycode like cast(district_id as varchar(6))+'%')
--	and a.district_id like '31%'



--1000016701	10	10	31	3101	2025-01-09 00:00:00.000	NULL	926
--	select top 1 @ret=rec_id from tb_medprice a 
--select top 1 material_code1 from tb_medicine where material_code=@materialcode

	select top 10 * from tb_medprice a where type_id=3 and a.MATNR='1000016700'

	left join tb_object c on a.channel_id=c.obj_id
	left join tb_object d on a.channel_dtl_id=c.obj_id
	--inner join tb_medicine m on a.med_id=m.med_id 
	where a.type_id=3 
	   --and (m.material_code=@materialcode or m.material_code1=@materialcode) 
	   and a.MATNR='1000016700' --(select top 1 material_code1 from tb_medicine where material_code=@materialcode)
		--and (a.channel_id=@channelcode and a.channel_dtl_id=@channeldtlcode)
		--and c.obj_code=@channelcode and d.obj_code=@channeldtlcode
		--and (dbo.fn_getdistrictname (a.district_id,1)=@provname) -- or dbo.fn_getdistrictname (c.district,2)=@cityname)
		--and (prov_name=@provname) -- or dbo.fn_getdistrictname (c.district,2)=@cityname)

		--and (a.district_id=@provcode or a.district_id=@citycode or @citycode like cast(district_id as varchar(6))+'%')
		--and a.valid_from<=@dt
--	order by case when dbo.fn_getdistrictname (c.district,2)=@cityname then 1 else 0 end desc,a.valid_dt desc
	order by case when a.district_id=@citycode then 1 else 2 end,a.valid_from desc,rec_id desc

	--select top 10 cast(district_id as varchar(6))+'%',* from tb_medprice 


	--select rec_id,channel_id,channel_dtl_id,type_id  from tb_medprice a where type_id=3 and a.MATNR='1000016700'

	--select med_id,material_code,material_code1 from tb_medicine where material_code='1000016701' or material_code1='1000016701'


	select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*,	dist1=dbo.fn_getdistrictname (a.district_id,1),dist2=dbo.fn_getdistrictname (a.district_id,2),  creater=f.zname 
	from tb_medprice a 
	inner join tb_medicine m on a.med_id =m.med_id 
	left join tb_staff f on a.creat_by =f.sta_id 
	inner join (select channel_id,channel_dtl_id,district_id,m.material_code1,rec_id=max(rec_id) from tb_medprice a,tb_medicine m where a.type_id=3 and a.med_id=m.med_id group by channel_id,channel_dtl_id,district_id,m.material_code1) h on a.rec_id=h.rec_id 
	where type_id=3 
	and exists (select 1 from tb_medicine n where n.med_id=226 and m.material_code1=n.material_code1) and a.district_id like '31%'

	select rec_id,med_id,cha from tb_medprice where rec_id=24668

select b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack, cdistrict=dbo.fn_getdistrict1(j.district), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=case when j.mate_type_id=1 then j.mate_name else '' end,j.mate_type_id,mate_name=dbo.fn_mate_name(a.src_id), b.channel_id,channel=dbo.fn_obj_desc(b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(b.channel_dtl_id), level1=k.VKBUR_TXT,level2='',level3=k.ZPLOT_T, leader=k.BU_SORT1,a.data_type_id,data_type=dbo.fn_obj_desc(a.data_type_id), a.platform_id, mate_id1=a.src_id,mate_id2=a.dst_id,mate_id3=f.mate_id,mate_id4=g.mate_id,mate_id5=h.mate_id, mate_name1=dbo.fn_getlevelmatename(d.material_code1,j.district,1,a.carry_dt), mate_name2=dbo.fn_getlevelmatename(d.material_code1,j.district,2,a.carry_dt), mate_name3=dbo.fn_getlevelmatename(d.material_code1,j.district,3,a.carry_dt), mate_name4=dbo.fn_getlevelmatename(d.material_code1,j.district,4,a.carry_dt), mate_name5=dbo.fn_getlevelmatename(d.material_code1,j.district,5,a.carry_dt), carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt, a.busi_type,b.price,b.price3,b.qty,b.discount, amot=cast(b.price*b.qty as decimal(15,2)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
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
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,d.material_code1,a.carry_dt) left join tb_staff p on k.sta_id=p.sta_id 
where a.bod_type_id=2   and a.bod_status_id in (0,1)  and a.cate_id=1  and a.creat_dt>= '2025-06-08' and a.creat_dt< dateadd(day,1,'2025-06-25')
