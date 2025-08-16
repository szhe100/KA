 select d.district,
 rec_id=b.dtl_id,datatype='两票',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI='标准订单',VTWEG=null,VTEXT=null,KDGRP=null,ZKDGRP=null,VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null, ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=f.zcode,ZSALESNAM=f.zname,ZSALESID_O=null,ZSALESNAM_O=null, ZCOUNTRY=null,ZREGIO=null,ZZREGION=null,ZCITYNUM=null,ZCITYNAME=null,VKORG=c.mate_code,ZVKORG=c.mate_name,KUNNR=d.mate_code,NAME1=d.mate_name,ASSIGNED_BP=e.mate_code,NAME_FIRST=e.mate_name,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20), KWMENG=cast(b.qty as varchar(15)),b.qty,ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(20)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(20)), ZREC='0.00',amot2=cast(b.amot2 as decimal(15,2)),amot=cast(b.amot as decimal(15,2)),amot1=cast(b.amot1 as decimal(15,2)),rprice1=0.0000,rprice=0.0000, STKD=null,ZTERMNAME=null,ERNAM=cast(a.creat_by as varchar(15)),ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=cast(a.check_by as varchar(15)),ZUSNAM=dbo.fn_staff_name(a.check_by) 
 from tb_bill a 
 inner join tb_bill_dtl b on a.bod_id=b.bod_id 
 left join tb_busimate c on a.src_id=c.mate_id 
 left join tb_busimate d on a.dst_id=d.mate_id 
 left join tb_busimate e on a.agent_id=e.mate_id 
 left join tb_staff f on a.broker_id=f.sta_id 
 inner join tb_medicine m on b.med_id=m.med_id 
 where a.bod_type_id=1 and a.cate_id=1  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-06-29')
 order by a.carry_dt

 select * from vi_district1 where code=44

   select a.rec_id,datatype='SAP',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O, a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR, a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,a.qty,a.ZPR03,a.ZKHJE,ZKONV,a.KZWI5, a.ZREC,amot2,a.amot,a.amot1, rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM from SAP_ZSD_015 a left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt) where KDGRP in ('10','19') and 1=2  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-06-29') and 1=2 
   union all 
   select rec_id=b.dtl_id,datatype='两票',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI='标准订单',VTWEG=g.obj_code,VTEXT=g.zdesc,KDGRP=h.obj_code,ZKDGRP=h.zdesc, VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null,ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=f.zcode,ZSALESNAM=f.zname,ZSALESID_O=null,ZSALESNAM_O=null, ZCOUNTRY=null,ZREGIO=i.prov_code,ZZREGION=i.prov_name,ZCITYNUM=i.city_code,ZCITYNAME=i.city_name, VKORG=c.mate_code,ZVKORG=c.mate_name,KUNNR=d.mate_code,NAME1=d.mate_name,ASSIGNED_BP=e.mate_code,NAME_FIRST=e.mate_name,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20), KWMENG=cast(b.qty as varchar(15)),b.qty,ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(20)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(20)), ZREC='0.00',amot2=cast(b.amot2 as decimal(15,2)),amot=cast(b.amot as decimal(15,2)),amot1=cast(b.amot1 as decimal(15,2)),rprice1=0.0000,rprice=0.0000, STKD=null,ZTERMNAME=null,ERNAM=cast(a.creat_by as varchar(15)),ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=cast(a.check_by as varchar(15)),ZUSNAM=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_busimate c on a.src_id=c.mate_id left join tb_busimate d on a.dst_id=d.mate_id left join tb_busimate e on a.agent_id=e.mate_id left join tb_staff f on a.broker_id=f.sta_id left join (select obj_code,zdesc from tb_object where obj_type_id=11) g on a.channel_id=g.obj_code left join (select obj_code,zdesc from tb_object where obj_type_id=12) h on a.channel_dtl_id=h.obj_code left join vi_district1 i on d.district=i.code inner join tb_medicine m on b.med_id=m.med_id where a.bod_type_id=1 and a.cate_id=1  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-06-29')  order by a.carry_dt


select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict=dbo.fn_getdistrict1(j.district),b.bod_cd2, b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id), dist1=dbo.fn_getdistrictname(j.district,1), dist2=dbo.fn_getdistrictname(j.district,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.zname, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=0.0000,b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=l.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt, amot=cast(b.price*b.qty as decimal(18,2)), price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end, cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker= c.zname,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
left join tb_busimate l on a.src_id=l.mate_id 
where a.bod_type_id=2 and cate_id=1 and j.mate_type_id=1   and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29') 
union all 
select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict='',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id), dist1=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,1), dist2=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', 
a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=cast(b.price as decimal(15,4)),b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt, amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
where a.bod_type_id=1   and a.cate_id=2  and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29')  
--order by a.carry_dt,b.dtl_id

union all
select top 10 dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,
m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='',
channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP, dist1=dbo.fn_getdistrictlevel (c.district,1), dist2=dbo.fn_getdistrictlevel (c.district,2), 
med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='',customer=c.mate_name,agent=NAME_FIRST, 
level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0,
leader=ZSALESNAM,zcode=a.ZSALESID, 
mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0, 
price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)), 
a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=a.ZVKORG,busi_type=0,price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime), 
amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,6)), cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)), 
bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM
from vi_ZSD_015 a
inner join tb_medicine m on a.MATNR=m.material_code
left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name
where KDGRP not in ('10','19')


select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict=dbo.fn_getdistrict1(j.district),b.bod_cd2, b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id), dist1=dbo.fn_getdistrictname(j.district,1), dist2=dbo.fn_getdistrictname(j.district,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.zname, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=0.0000,b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=l.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt, amot=cast(b.price*b.qty as decimal(18,2)), price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end, cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker= c.zname,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_staff c on b.sta_id=c.sta_id inner join tb_medicine d on b.med_id=d.med_id left join tb_busimate e on a.agent_id=e.mate_id inner join tb_busimate j on a.dst_id=j.mate_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  left join tb_busimate l on a.src_id=l.mate_id where a.bod_type_id=2 and cate_id=1 and j.mate_type_id=1   and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29') 
union all 
select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict='',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id), dist1=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,1), dist2=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=cast(b.price as decimal(15,4)),b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt, amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_staff c on b.sta_id=c.sta_id inner join tb_medicine d on b.med_id=d.med_id left join tb_busimate e on a.agent_id=e.mate_id inner join tb_busimate j on a.dst_id=j.mate_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  where a.bod_type_id=1   and a.cate_id=2  and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29') 
union all 
select dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY, m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='', channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP, dist1=dbo.fn_getdistrictlevel (c.district,1), dist2=dbo.fn_getdistrictlevel (c.district,2), med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='',customer=c.mate_name,agent=NAME_FIRST, level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0, leader=ZSALESNAM,zcode=a.ZSALESID,mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0, price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)),a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,supplier=a.ZVKORG,busi_type=0, price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime),amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,6)), cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)),bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM from vi_ZSD_015 a inner join tb_medicine m on a.MATNR=m.material_code left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name where KDGRP not in ('10','19')  and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29')
order by a.carry_dt --,b.dtl_id


select med_id,med_code,material_code,material_code1,med_name,specifi,pdt_place,med_unit,	qty=sum(cast(isnull(qty,0) as decimal(15,0))),	amot=sum(cast(isnull(amot,0) as decimal(15,2))),	amot1=sum(cast(isnull(price1*qty,0) as decimal(15,2))),	amot2=sum(cast(isnull(price2*qty,0) as decimal(15,2))),	amot3=sum(cast(isnull(price3*qty,0) as decimal(15,2))) from ( 
select b.med_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id), b.price,price1=0.0000,price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end, b.price3,b.qty,amot=cast(b.price*b.qty as decimal(15,2)) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt) 
left join tb_busimate l on a.src_id=l.mate_id 
left join tb_staff p on k.sta_id=p.sta_id 
where a.bod_type_id=2 and cate_id=1 and j.mate_type_id=1   and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29') 
union all 
select b.med_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id), 
price=cast(b.price1 as decimal(15,6)), price1=cast(b.price as decimal(15,4)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)), 
b.price3,b.qty,amot=cast(case when b.amot2<>0 then b.amot2 else b.price1*b.qty end as decimal(15,2)) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
inner join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt) 
left join tb_staff p on k.sta_id=p.sta_id 
where a.bod_type_id=1   and a.cate_id=2  and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29')


) h group by med_id,med_code,material_code,material_code1,med_name,specifi,pdt_place,med_unit order by med_name,specifi,pdt_place