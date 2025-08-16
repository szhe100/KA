 select dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) ,
  a.rec_id,dtl_id=h.rec_id,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='·ÖÏú²É¹º',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='', 
  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent1=dbo.fn_mate_name(i.agent_id1),dbo.fn_mate_name(i.agent_id),agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0,not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(e.amot,0) as decimal(15,2)) 
 from SAP_ZSD_015 a 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) e on e.med_id=a.rec_id 
 left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
	on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
 left join tb_bill_stadtl h on h.bod_id=0 and dtl_id=a.rec_id and h.agent_id=i.agent_id
 where KDGRP not in ('10','19')  
 and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
-- and (a.GBELN='80018398' or a.VBELN='80018398')
 and a.carry_dt>='2025-06-01' and a.carry_dt< dateadd(day,1,'2025-07-01') 

 
 --select * from tb_bill_stadtl where rec_id in (30391,30454)
