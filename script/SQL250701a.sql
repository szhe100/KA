		insert tb_bill_stadtl (bod_id,dtl_id,agent_id,med_id,ckd_amot1,amot1)
		select b.bod_id,b.dtl_id,c.agent_id,b.med_id,null,b.amot1
		from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			left join (select c.rec_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end 
			from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c
			 on c.rec_id=bf3_id  --dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)
		where a.bod_id=@bod_id and not exists (select 1 from tb_bill_stadtl h where a.bod_id=h.bod_id and h.agent_id=c.agent_id)

select top 100 MATNR from SAP_ZSD_015

		insert tb_bill_stadtl (bod_id,dtl_id,agent_id,med_id,ckd_amot1,amot1)
		select bod_id=a.rec_id,dtl_id=a.rec_id,c.mate_id,m.med_id,null,b.amot1
		from SAP_ZSD_015 a
		left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name
		left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP
		left join (select med_id,material_code from tb_medicine) m on a.MATNR=m.material_code
		left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)
		where KDGRP not in ('10','19')

		from tb_bill a
			inner join tb_bill_dtl b on a.bod_id=b.bod_id
			left join (select c.rec_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end 
			from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c
			 on c.rec_id=bf3_id  --dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)
		where a.bod_id=@bod_id and not exists (select 1 from tb_bill_stadtl h where a.bod_id=h.bod_id and h.agent_id=c.agent_id)


	left join tb_busiframe3 i on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)';

	'
 select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent1=dbo.fn_mate_name(i.agent_id),agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0,not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(e.amot,0) as decimal(15,2)) 
 from SAP_ZSD_015 a 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) e on e.med_id=a.rec_id 
 left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i
 on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
 where KDGRP not in ('10','19')  
 and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) 
 and (a.GBELN='80018398' or a.VBELN='80018398')

 select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=1,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent1=dbo.fn_mate_name(i.agent_id),agent_id=c.mate_id,agent=NAME_FIRST,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION,	dist2=ZCITYNAME, level1=ZBEZEI,creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, ,not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(e.amot,0) as decimal(15,2)) from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) e on e.med_id=a.rec_id left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) and (a.GBELN='80018398' or a.VBELN='80018398')
 union all 
 select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent1='',a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id),dist1=dbo.fn_getdistrictlevel (f.district,1),dist2=dbo.fn_getdistrictlevel (f.district,2),level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1 and a.bod_cd='80018398'
