select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, 
 c.mate_code,
  agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, 
  agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, 
  agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end, 
  stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt),
  i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) 
  from SAP_ZSD_015 a 
  left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
  left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id 
  left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
  where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
  and (a.GBELN='84004546' or a.VBELN='84004546') 
  
  --select * from tb_busimate where mate_type_id=4 and mate_code in ('1002199','9000001')

  select * from SAP_ZSD_015 where rec_id=30018

sp_qryreport24h 1,0,18366,0,'2025-01-01','2025-07-28'

select 360055.52	-298239.50


		select rec_amot=sum(a.bod_amot)
		  from tb_bill a
		 where a.bod_type_id=36 and a.bod_status_id=1
			and a.agent_id=18366

		select a.carry_dt,a.agent_id,amot=0,rec_amot=a.bod_amot,pay_amot=0
		  from tb_bill a
			--left join tb_busimate e on a.dst_id=e.mate_id
		 where a.bod_type_id=36 and a.bod_status_id=1
			and a.agent_id=18366
			and a.carry_dt<@dt2

  		select a.carry_dt,i.agent_id,-- agent_id=c.mate_id, amot=isnull(i.amot,0)*a.qty,
			amot=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else a.amot1/cast(a.KONV as decimal(15,4))*i.amot end as decimal(15,2)),
			rec_amot=0,pay_amot=0
			from SAP_ZSD_015 a
			left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
			left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP
			left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
				on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)
		where KDGRP not in ('10','19')
			and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)
            and a.carry_dt<@dt2

  		select 
--			amot=sum(cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else a.amot1/cast(a.KONV as decimal(15,4))*i.amot end as decimal(15,2)))
			amot=sum(cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else a.amot1/cast(a.KONV as decimal(15,3))*i.amot end as decimal(15,2)))
			from SAP_ZSD_015 a
			left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
			left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP
			left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
				on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)
		where KDGRP not in ('10','19')
			and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)
			and i.agent_id=18366

  		select a.rec_id,a.amot1,a.KONV,i.amot,a.qty,
		  cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else a.amot1/cast(a.KONV as decimal(15,4))*i.amot end as decimal(15,2)) 
		   
			from SAP_ZSD_015 a
			left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
			left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP
			left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
				on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)
		where KDGRP not in ('10','19')
			and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)
			and i.agent_id=18366

--            and a.carry_dt<@dt2

	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('amot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
	                               select 0 + 360055.40 -298239.50 -0
								                        -298239.5000

											  360055.40
											  360055.40  141557
360055.40
360055.40
-298239.50
select 360055.40-360045

+298239.50
       
select 61815.9-61816.02 61805.5

61815.90

383问题，分销结算-分销返款汇总表，在不包含未回款下，存在部份业务负责人金额有尾差，如明常艳正确金额应是61805.5，与分销返款汇总表相差 10.4元

-- sp_qryreport24h 1,0,17726,0,'2025-01-01','2025-07-28'
sp_qryreport24h 1,0,23084,0,'2025-01-01','2025-07-28'

sp_qryreport24h 1,0,23084,0,'2025-01-01','2025-07-28'

select * from tb_busimate where mate_type_id=4 and mate_code in ('9000001','9000003','9000004')

select * into tb_medprice_250728a from tb_medprice

select top 20000 a.KNUMH,med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*, dist1=dbo.fn_getdistrict1(a.ZREGIO), dist2=dbo.fn_getdistrict1(a.ZCITYNUM), creater=c.zname 
from tb_medprice a 
inner join tb_medicine m on (a.MATNR =m.material_code or a.med_id=m.med_id) 
left join tb_staff c on a.creat_by =c.sta_id 
where type_id=1 and exists (select 1 from tb_medicine n where n.med_id=225 and m.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+'%') 
and a.district_id like '44%'

select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*, dist1=dbo.fn_getdistrict1(a.ZREGIO), dist2=dbo.fn_getdistrict1(a.ZCITYNUM), creater=c.zname 
from tb_medprice a 
inner join tb_medicine m on (a.MATNR =m.material_code or a.med_id=m.med_id) 
left join tb_staff c on a.creat_by =c.sta_id 
inner join (select KNUMH,MATNR,rec_id=max(rec_id) from tb_medprice where type_id=1 group by KNUMH,MATNR) h on a.rec_id=h.rec_id 
where type_id=1 and exists (select 1 from tb_medicine n where n.med_id=225 and m.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+'%') and a.district_id like '44%'

  select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end, stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) 
  from SAP_ZSD_015 a 
  left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
  left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id 
  left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id 
  left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
  where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  
  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') 
  and exists (select 1 from tb_busimate c where c.mate_id=18366 and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))

  union all 
  select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1=f.mate_name,agent_code1=f.mate_code,stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id), dist1=f.BEZEI,dist2=f.CITY1,level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') and a.agent_id=18366


   select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end, stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) ,amot6=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else cast(a.amot1/cast(a.KONV as decimal(15,4)) as decimal(15,2))*i.amot end as decimal(15,2))-isnull(a.ckd_amot,0) from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') and exists (select 1 from tb_busimate c where c.mate_id=18366 and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))
   union all 
   select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1=f.mate_name,agent_code1=f.mate_code,stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id), dist1=f.BEZEI,dist2=f.CITY1,level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) ,amot6=cast(a.bod_amot as decimal(15,2))-isnull(z.ckd_amot,0) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.carry_dt>='2025-01-01' and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') and a.agent_id=18366


   select a.rec_id,--dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end, stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) ,
   amot6=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else cast(a.amot1/cast(a.KONV as decimal(15,4)) as decimal(15,2))*i.amot end as decimal(15,2))-isnull(a.ckd_amot,0) from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') and exists (select 1 from tb_busimate c where c.mate_id=18366 and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))

   select -- a.rec_id,--dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end, stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) ,
   amot6=sum(cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else cast(a.amot1/cast(a.KONV as decimal(15,4)) as decimal(15,2))*i.amot end as decimal(15,2))-isnull(a.ckd_amot,0))
   from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)  and a.carry_dt>='2025-01-01' and a.carry_dt< dateadd(day,1,'2025-07-28') and exists (select 1 from tb_busimate c where c.mate_id=18366 and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))
   
   360055.52

sp_qryreport24h 1,0,17823,0,'2025-01-01','2025-07-29'

sp_qryreport24h 1,0,17823,0,'2025-01-01','2025-07-29'

1356717.28

select len('新疆维吾尔自治区人民医院（新疆维吾尔自治区高血压病研究所、新疆维吾尔自治区急救医学研究所、新疆维吾尔自治区临床药学研究所、新疆维吾尔自治区临床营养研究所、新疆维吾尔自治区临床皮肤性病研究所、新疆维吾尔自治区普通外科微创研究所、新疆维吾尔自治区内分泌糖尿病研究所）')

select len('新疆维吾尔自治区人民医院（新疆维吾尔自治区高血压病研究所、新疆维吾尔自治区急救医学研究所、新疆维吾尔')

select * from tb_busimate where mate_code='576643'


select top 10 b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt,
dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt),
b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack, 
cdistrict=dbo.fn_getdistrict1(j.district), med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=case when j.mate_type_id=1 then j.mate_name else '' end,j.mate_type_id,mate_name=dbo.fn_mate_name(a.src_id), 
b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id), 
level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T, k.VKGRP,k.VKGRP_TXT,k.PARTNER,leader=k.BU_SORT1,a.data_type_id,data_type=dbo.fn_obj_desc(a.data_type_id), mate_id1=a.src_id,mate_id2=a.dst_id,mate_id3=0,mate_id4=0,mate_id5=0, mate_name1='', mate_name2='', mate_name3='', mate_name4='', mate_name5='', carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt, a.busi_type,b.price,b.price3,b.qty,b.discount, amot=cast(b.price*b.qty as decimal(15,2)), cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end, b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
inner join tb_medicine d on b.med_id=d.med_id 
left join tb_busimate j on a.dst_id=j.mate_id 
left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt) 
where a.bod_type_id=2   and a.bod_status_id in (0,1)  and a.cate_id=1  
	and a.bod_cd='00005466' --00004698'
and a.carry_dt>= '2025-01-01' and a.carry_dt< dateadd(day,1,'2025-01-31')