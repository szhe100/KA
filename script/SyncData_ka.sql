insert into tb_medicine (
	material_code,material_code1,
	med_name,specifi,
	pack_desc,
	material_desc,
	unit_id,
	med_holder,
	pdt_place,
	qtyperpack1,
	material_medium,
	medium_desc,
	appv_docu,
	med_type_id
)
select material_code=MATNR,material_code1=PMATN,
	med_name=ZTYM,specifi=ZGG,
	pack_desc=ZBCSX,
	material_desc=MAKTX,
	unit_id=b.obj_id,
	med_holder=ZSSXKCYR,
	pdt_place=ZSCQY,
	qtyperpack=ZDBZ,
	material_medium=EXTWG,
	medium_desc=EWBEZ,
	appv_docu=TWEWT,
	catlog_id=c.mc_id
	from SAP_ZSD_MARA a
	left join (select obj_id,zdesc from tb_object where obj_type_id=0) b on a.MEINS=b.zdesc
	left join tb_medcatlog c on a.ZJXMS=c.mc_title
	where ZTYM<>''