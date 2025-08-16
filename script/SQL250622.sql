select a.MATNR,a.VTWEG,a.KDGRP,a.ZZREGION,a.ZCITYNAME,a.carry_dt, a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, ckd_amot=0.00,ckd_amot1=0.00,ckd_amot2=0.00,ckd_amot2a=0.00,ckd_amot3=0.00, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=a.price, price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on a.NAME_FIRST=c.mate_name 
left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt) 
where KDGRP not in ('10','19')  
and a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0
--and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.fee>0) 
and (a.GBELN='80018398' or a.VBELN='80018398')

select * from tb_busiframe3 where rec_id=748

select dbo.fn_getbusiframe3recid('1000019600','10','13','江苏省','苏州市','2025-01-08 00:00:00.000') 

select a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt,i.rec_id,a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, ckd_amot=0.00,ckd_amot1=0.00,ckd_amot2=0.00,ckd_amot2a=0.00,ckd_amot3=0.00, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=a.price, price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on a.NAME_FIRST=c.mate_name 
left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt) 
where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
and (a.GBELN='80018982' or a.VBELN='80018982')  -- 15979

select * from tb_medicine where material_code1=(select top 1 material_code1 from tb_medicine where material_code='1000008800')



15979


select a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt,a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, ckd_amot=0.00,ckd_amot1=0.00,ckd_amot2=0.00,ckd_amot2a=0.00,ckd_amot3=0.00, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,price1=a.price, price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on a.NAME_FIRST=c.mate_name 
left join tb_busiframe3 i on i.rec_id=743 --dbo.fn_getbusiframe3recid(a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt) 
where KDGRP not in ('10','19')  
and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
and (a.GBELN='15979' or a.VBELN='15979')

select a.VTWEG,a.KDGRP,b.mate_id,agent_id=c.mate_id,a.MATNR,a.price,price1=cast(ZPR03 as decimal(15,4)),a.carry_dt
from SAP_ZSD_015 a
left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on a.NAME_FIRST=c.mate_name 
where (a.GBELN='15979' or a.VBELN='15979')

-- 渠道+子渠道+商业公司+业务负责人+品规关联编码+销售单价+考核单价+启用日期


select top 10 * from 

select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',
broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), 
a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,
material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, ckd_amot=0.00,ckd_amot1=0.00,ckd_amot2=0.00,ckd_amot2a=0.00,ckd_amot3=0.00, 
a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),a.amot1,a.amot2,
price1=a.price, price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), 
type_id=0,type_id2=0,rate=i.rate,rate1=i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0 ,not_amot=0.00 
from SAP_ZSD_015 a 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
left join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on a.NAME_FIRST=c.mate_name 
left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.MATNR,a.VTWEG,a.KDGRP,ZZREGION,ZCITYNAME,a.carry_dt) 
where KDGRP not in ('10','19')  
and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  
and a.carry_dt>='2025-05-30' and a.carry_dt< dateadd(day,1,'2025-06-23')