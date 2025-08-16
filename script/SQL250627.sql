  select a.rec_id,datatype='SAP',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O, 
  a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR, 
  a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,a.qty,a.ZPR03,a.ZKHJE,ZKONV=case when isnull(ZKONV,'')='' then 0.0000 else cast(ZKONV as decimal(15,4)) end,a.KZWI5,
  ZREC=case when isnull(ZREC,'')='' then 0.00 else cast(ZREC as decimal(15,2)) end,amot2,a.amot,a.amot1,rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM 
  from SAP_ZSD_015 a left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt) 
  where KDGRP in ('10','19')  and a.carry_dt>= '2025-06-20' and a.carry_dt< dateadd(day,1,'2025-06-27')
  union all 
  
  select rec_id=b.dtl_id,datatype='两票',AUDAT=a.creat_dt,a.creat_dt,WADAT_IST=a.carry_dt,a.carry_dt,BEZEI='标准订单',VTWEG=null,VTEXT=null,KDGRP=null,ZKDGRP=null,VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null, ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=null,ZSALESNAM=null,ZSALESID_O=null,ZSALESNAM_O=null, 
  ZCOUNTRY=null,ZREGIO=null,ZZREGION=null,ZCITYNUM=null,ZCITYNAME=null,VKORG=null,ZVKORG=null,KUNNR=null,NAME1=null,ASSIGNED_BP=null,NAME_FIRST=null,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, 
  MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=b.valid_dt,KWMENG=b.qty,b.qty,ZPR03=b.price1,ZKHJE=cast(b.qty*b.price1 as decimal(15,2)),ZKONV=b.price,KZWI5=cast(b.qty*b.price as decimal(15,2)),
  ZREC=0.00,b.amot2,b.amot,b.amot1,rprice1=0.0000,rprice=0.0000,BSTKD=null,ZTERMNAME=null,ERNAM=a.creat_by,ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=a.check_by,ZUSNAM=dbo.fn_staff_name(a.check_by) 
  from tb_bill a 
  inner join tb_bill_dtl b on a.bod_id=b.bod_id 
  inner join tb_medicine m on b.med_id=m.med_id 
  where a.bod_type_id=1 and a.cate_id=1  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-06-27')  
  order by a.carry_dt


  select convert(char(10),getdate(),20),cast(5.666 as varchar(10))



 select a.rec_id,datatype='SAP',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O, a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR, a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,a.qty,a.ZPR03,a.ZKHJE,ZKONV=case when isnull(a.ZKONV,'')='' then 0.0000 else cast(a.ZKONV as decimal(15,4)) end,a.KZWI5, ZREC=case when isnull(a.ZREC,'')='' then 0.00 else cast(a.ZREC as decimal(15,2)) end,amot2,a.amot,a.amot1, rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM from SAP_ZSD_015 a left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt) where KDGRP in ('10','19')  and a.carry_dt>= '2025-05-28' and a.carry_dt< dateadd(day,1,'2025-06-27') union all select rec_id=b.dtl_id,datatype='Á½Æ±',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI='±ê×¼¶©µ¥',VTWEG=null,VTEXT=null,KDGRP=null,ZKDGRP=null,VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null, ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=null,ZSALESNAM=null,ZSALESID_O=null,ZSALESNAM_O=null, ZCOUNTRY=null,ZREGIO=null,ZZREGION=null,ZCITYNUM=null,ZCITYNAME=null,VKORG=null,ZVKORG=null,KUNNR=null,NAME1=null,ASSIGNED_BP=null,NAME_FIRST=null,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20), KWMENG=cast(b.qty as varchar(15)),b.qty,ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(15)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(15)), ZREC='0.00',b.amot2,b.amot,b.amot1,rprice1=0.0000,rprice=0.0000,BSTKD=null,ZTERMNAME=null,ERNAM=a.creat_by,ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=a.check_by,ZUSNAM=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id inner join tb_medicine m on b.med_id=m.med_id where a.bod_type_id=1 and a.cate_id=1  and a.carry_dt>= '2025-05-28' and a.carry_dt< dateadd(day,1,'2025-06-27')  order by a.carry_dt


  select a.rec_id,datatype='SAP',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O, a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR, a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,a.qty,a.ZPR03,a.ZKHJE,ZKONV,a.KZWI5, a.ZREC,amot2,a.amot,a.amot1, rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM from SAP_ZSD_015 a left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt)
  where KDGRP in ('10','19')  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-18') 
  union all 
  select rec_id=b.dtl_id,datatype='Á½Æ±',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI='±ê×¼¶©µ¥',VTWEG=null,VTEXT=null,KDGRP=null,ZKDGRP=null,VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null, ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=null,ZSALESNAM=null,ZSALESID_O=null,ZSALESNAM_O=null, ZCOUNTRY=null,ZREGIO=null,ZZREGION=null,ZCITYNUM=null,ZCITYNAME=null,VKORG=null,ZVKORG=null,KUNNR=null,NAME1=null,ASSIGNED_BP=null,NAME_FIRST=null,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null, MATNR=m.material_code1,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20), KWMENG=cast(b.qty as varchar(15)),b.qty,ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(15)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(15)), ZREC='0.00',amot2=cast(b.amot2 as decimal(15,2)),amot=cast(b.amot as decimal(15,2)),amot1=cast(b.amot1 as decimal(15,2)),rprice1=0.0000,rprice=0.0000, STKD=null,ZTERMNAME=null,ERNAM=cast(a.creat_by as varchar(15)),ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=cast(a.check_by as varchar(15)),ZUSNAM=dbo.fn_staff_name(a.check_by) 
  from tb_bill a 
  inner join tb_bill_dtl b on a.bod_id=b.bod_id 
  inner join tb_medicine m on b.med_id=m.med_id 
  where a.bod_type_id=1 and a.cate_id=1  and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-18') 
  order by a.carry_dt
