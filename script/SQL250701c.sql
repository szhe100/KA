/*
 select a.rec_id,datatype='SAP',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O, a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR, a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,qty=cast(a.qty as decimal(15,2)),a.ZPR03,a.ZKHJE,ZKONV,a.KZWI5, a.ZREC,amot2,a.amot,a.amot1, rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM 
 from SAP_ZSD_015 a 
 left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt) 
 where KDGRP in ('10','19') and (a.VBELN='00000025' or a.GBELN='00000025' or a.BOLNR='00000025') 
 */
select dbo.fn_getmedpricerecid(m.material_code,g.obj_code,h.obj_code,i.prov_code,i.city_code,a.carry_dt),
 rec_id=b.dtl_id,datatype='两票',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI='标准订单',
 VTWEG=g.obj_code,VTEXT=g.zdesc,KDGRP=h.obj_code,ZKDGRP=h.zdesc, VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null,ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=f.zcode,ZSALESNAM=f.zname,ZSALESID_O=null,ZSALESNAM_O=null,
 ZCOUNTRY=null,ZREGIO=i.prov_code,ZZREGION=i.prov_name,ZCITYNUM=i.city_code,ZCITYNAME=i.city_name, VKORG=c.mate_code,ZVKORG=c.mate_name,KUNNR=d.mate_code,NAME1=d.mate_name,ASSIGNED_BP=e.mate_code,NAME_FIRST=e.mate_name,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, 
 MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20), KWMENG=cast(b.qty as varchar(15)),qty=cast(b.qty as decimal(15,2)),ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(20)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(20)),
 ZREC='0.00',amot2=cast(b.amot2 as decimal(15,2)),amot=cast(b.amot as decimal(15,2)),amot1=cast(b.amot1 as decimal(15,2)),rprice1=j.price1,rprice=j.price, STKD=null,ZTERMNAME=null,ERNAM=cast(a.creat_by as varchar(15)),ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=cast(a.check_by as varchar(15)),ZUSNAM=dbo.fn_staff_name(a.check_by) 
 from tb_bill a 
 inner join tb_bill_dtl b on a.bod_id=b.bod_id 
 left join tb_busimate c on a.src_id=c.mate_id 
 left join tb_busimate d on a.dst_id=d.mate_id 
 left join tb_busimate e on a.agent_id=e.mate_id 
 left join tb_staff f on a.broker_id=f.sta_id 
 left join (select obj_code,zdesc from tb_object where obj_type_id=11) g on a.channel_id=g.obj_code 
 left join (select obj_code,zdesc from tb_object where obj_type_id=12) h on a.channel_dtl_id=h.obj_code 
 left join vi_district1 i on d.district=i.code 
 inner join tb_medicine m on b.med_id=m.med_id 
 left join tb_medprice j on j.rec_id=dbo.fn_getmedpricerecid(m.material_code,g.obj_code,h.obj_code,i.prov_code,i.city_code,a.carry_dt) 
 where a.bod_type_id=1 and a.cate_id=1 and (a.bod_cd='00000025') 
 
select * from tb_busimate where mate_type_id in (0,1,2)

select * from tb_bill where bod_type_id=2 and bod_cd='00269942'
