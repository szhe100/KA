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

union all 
/*
select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict='',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id), dist1=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,1), dist2=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', 
a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=cast(b.price as decimal(15,4)),b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt, amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 

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


*/

select top 10 m.med_id,m.med_code,material_code=a.MATNR,m.material_code1,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id), 
price=cast(a.price as decimal(15,6)), price1=cast(a.price as decimal(15,4)), price2=cast(a.ZPR03 as decimal(15,6)), 
price3=cast(a.price as decimal(15,4)),a.qty,amot=cast(a.price*a.qty as decimal(18,2))

from vi_ZSD_015 a
inner join tb_medicine m on a.MATNR=m.material_code
left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name
where KDGRP not in ('10','19')

inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
where a.bod_type_id=1   and a.cate_id=2  and a.carry_dt>= '2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-29')  order by a.carry_dt,b.dtl_id


select top 10 ZKONV,* from vi_ZSD_015 where isnull(price,0)=0

select top 10 AUDAT,WADAT_IST,BEZEI,VBELN,GBELN,ZKONV  from vi_ZSD_015  where ZKONV<>''

select top 10 * from tb_matestock_desc

select AUDAT,WADAT_IST,BEZEI,VBELN,GBELN,ZKONV,price=cast(case when price=0 then cast(KZWI5 as decimal(15,2))/cast(KWMENG as decimal(15,2)) else price end as decimal(15,4))
from vi_ZSD_015  where ZKONV is null

还有单价 为 null 的单据 传过来


select AUDAT,WADAT_IST,BEZEI,VBELN,GBELN,KONV  from SAP_ZSD_015  where KONV is null

SELECT DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0) AS FirstDayOfCurrentMonth;

SELECT 
    DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0) AS FirstDayOfCurrentMonth,
    DATEADD(DAY, 1, EOMONTH(GETDATE())) AS FirstDayOfNextMonth;


SELECT dt1=DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0),dt2=DATEADD(DAY, 1, EOMONTH(GETDATE())) 

select EOMONTH('2025-01-02')

SELECT DATEFROMPARTS (2025,1,1)



SELECT dt1=DATEADD(MONTH, DATEDIFF(MONTH, 0, '2025-01-02'), 0),dt2=DATEADD(DAY, 1, EOMONTH('2025-01-02')) 

    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';

	a.VBELN='''+Trim(dxEdit1.text)+''' or a.GBELN='''+Trim(dxEdit1.text)+''' or a.BOLNR='''+Trim(dxEdit1.text)+''')';
'

select * from tb_bill where bod_type_id=1 and bod_cd='00000025'

select * from tb_bill_dtl where bod_id=17994



select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict=dbo.fn_getdistrict1(j.district),b.bod_cd2, b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id), dist1=dbo.fn_getdistrictname(j.district,1), dist2=dbo.fn_getdistrictname(j.district,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.zname, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=0.0000,b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=l.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt, amot=cast(b.price*b.qty as decimal(18,2)), price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end, cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker= c.zname,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_staff c on b.sta_id=c.sta_id inner join tb_medicine d on b.med_id=d.med_id left join tb_busimate e on a.agent_id=e.mate_id inner join tb_busimate j on a.dst_id=j.mate_id left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  left join tb_busimate l on a.src_id=l.mate_id where a.bod_type_id=2 and cate_id=1 and j.mate_type_id=1  and a.bod_cd='80018199' 
union all 
select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name, cdistrict='',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id), dist1=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,1), dist2=dbo.fn_getdistrictlevel (case a.cate_id when 1 then e.district else a.district_id end,2), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name, level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER, j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='', a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, price1=cast(b.price as decimal(15,4)),b.price3, a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt, supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt, amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)), price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
left join tb_staff c on b.sta_id=c.sta_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate e on a.agent_id=e.mate_id 
inner join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)  
where a.bod_type_id=1   and a.cate_id=2 and a.bod_cd='80018199' 
union all 
select dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY, m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='', channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP, dist1=dbo.fn_getdistrictlevel (c.district,1), dist2=dbo.fn_getdistrictlevel (c.district,2), med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='',customer=c.mate_name,agent=NAME_FIRST, level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0, leader=ZSALESNAM,zcode=a.ZSALESID,mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0, price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)),a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,supplier=a.ZVKORG,busi_type=0, price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime),amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,6)), cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)),bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM 
from vi_ZSD_015 a 
inner join tb_medicine m on a.MATNR=m.material_code 
left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name 
where KDGRP not in ('10','19') and (a.VBELN='80018199' or a.GBELN='80018199' or a.BOLNR='80018199')

order by a.carry_dt



SAP_ZSD_015


select dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY, m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='', channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP, dist1=dbo.fn_getdistrictlevel (c.district,1), dist2=dbo.fn_getdistrictlevel (c.district,2), med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='',customer=c.mate_name,agent=NAME_FIRST, level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0, leader=ZSALESNAM,zcode=a.ZSALESID,mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0, price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)),a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,supplier=a.ZVKORG,busi_type=0, price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime),amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,6)), cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)),bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM 
from SAP_ZSD_015 a 
inner join tb_medicine m on a.MATNR=m.material_code 
left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name 
where KDGRP not in ('10','19') and (a.VBELN='80018199' or a.GBELN='80018199' or a.BOLNR='80018199')

select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.med_id) e on e.med_id=a.rec_id 
left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
where KDGRP not in ('10','19')  
and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
and (a.GBELN='80025550' or a.VBELN='80025550')


select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select a.mate_id,a.mate_code,mate_name from tb_busimate a inner join (select mate_code,mate_id=max(mate_id) from tb_busimate where mate_type_id=4 group by mate_code) b on a.mate_id=b.mate_id) c on c.mate_code=a.ASSIGNED_BP 
left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.med_id) e on e.med_id=a.rec_id 
left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
and (a.GBELN='80018386' or a.VBELN='80018386')


select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1=''
,  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select a.mate_id,a.mate_code,mate_name from tb_busimate a inner join (select mate_code,mate_id=max(mate_id) from tb_busimate where mate_type_id=4 group by mate_code) b on a.mate_id=b.mate_id) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.med_id) e on e.med_id=a.rec_id left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  and a.carry_dt>='2025-06-30' and a.carry_dt< dateadd(day,1,'2025-06-30')
union all 
select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1
, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0), VTEXT='',ZKDGRP='',dist1=dbo.fn_getdistrictlevel (f.district,1),dist2=dbo.fn_getdistrictlevel (f.district,2),level1='', creater=d.zname,a.dst_id,e.mate_name,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=a.bod_amot,amot2=0.0000,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-06-30' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-06-30' and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1  and a.carry_dt>='2025-06-30' and a.carry_dt< dateadd(day,1,'2025-06-30')

select top 10 * from SAP_ZSD_Z005 where partner='1002726'

select * from tB_busimate where mate_code='1002726'
delete from tb_busimate where mate_id=18375
select * into tb_busimate_250630 from tb_busimate


                insert into tb_busimate (mate_type_id,mate_code,mate_name,personalID,district,region,BEZEI,CITY1)
                select mate_type_id=4,mate_code=PARTNER,mate_name=NAME_FIRST,personalID=BPEXT,district=a.region,region=a.region,BEZEI,CITY1
                 from SAP_ZSD_Z005 a
                 where not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_code=a.PARTNER)

                update b set mate_name=a.NAME_FIRST,personalID=a.BPEXT,district=a.region,region=a.region,BEZEI=a.BEZEI,CITY1=a.CITY1
                 from SAP_ZSD_Z005 a,tb_busimate b 
				 where b.mate_type_id=4 and b.mate_code=a.PARTNER

				select * 
                 from SAP_ZSD_Z005 a,tb_busimate b 
				 where b.mate_type_id=4 and b.mate_code=a.PARTNER


