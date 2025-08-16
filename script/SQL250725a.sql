--                update b set KNUMH=a.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                select b.rec_id, b.MATNR,b.district_id, KNUMH=a.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                 from SAP_ZSD_PR02 a
                 --inner join (select MATNR,ZREGIO,ZCITYNUM,KNUMH=max(KNUMH) from SAP_ZSD_PR02 group by MATNR,ZREGIO,ZCITYNUM) c on a.KNUMH=c.KNUMH
                 inner join tb_medprice b on b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end
				 where a.rec_id=4

select * from tb_medprice where rec_id in (35455,36752)

select * from tb_medprice where 
select distinct type_id from tb_medprice

select district_id,MATNR,price,valid_from,valid_to,count(1) from tb_medprice where type_id in (1,2,3,4) group by district_id,MATNR,price,valid_from,valid_to having count(1)>1

delete from tb_medprice where rec_id in (
select rec_id from tb_medprice a,(
select district_id,MATNR,price,valid_from,valid_to, min_rec_id=min(rec_id) from tb_medprice where type_id in (1,2) group by district_id,MATNR,price,valid_from,valid_to having count(1)>1
) b where a.district_id=b.district_id and a.MATNR=b.MATNR and a.price=b.price and a.valid_from=b.valid_from and a.valid_to=b.valid_to and a.rec_id<>b.min_rec_id
) 

select * from vi_district1 where code=36

select * into tb_medprice_250725 from tb_medprice

select * from tb_medicine where med_id in (181)

                select type_id=1,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR02 a
                 --left join tb_district b on a.ZCOUNTRY=b.country and b.city_code=a.zregio+'00'  -- and (b.city_name=''
                 left join tb_medicine m on a.matnr=m.material_code 
                where not exists (select 1 from tb_medprice b where b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end)

                select type_id=1,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR02 a
                 left join tb_medicine m on a.matnr=m.material_code 
                where not exists (select 1 from tb_medprice b where b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end)

                select KNUMH=a.KNUMH,KONDA=a.KONDA,VKORG=a.VKORG,sale_team_id=a.VKORG,cust_group_id=a.KONDA,price=a.KBETR,currency=a.KONWA,price_unit=a.KMEIN,KPEIN=a.KPEIN,KMEIN=a.KMEIN,valid_from=a.DATAB,valid_to=a.DATBI
                 from SAP_ZSD_PR03 a
                 --inner join (select MATNR,ZREGIO,VTWEG,KDGRP,KNUMH=max(KNUMH) from SAP_ZSD_PR03 group by MATNR,ZREGIO,VTWEG,KDGRP) c on a.KNUMH=c.KNUMH
                 inner join tb_medprice b on b.type_id=2 and a.MATNR=b.MATNR and b.district_id=a.ZREGIO and b.channel_id=a.VTWEG and b.channel_dtl_id=a.KDGRP

                --insert into tb_medprice (type_id,KNUMH,MATNR,ZREGIO,KONDA,VKORG,channel_id,channel_dtl_id,sale_team_id,cust_group_id,district_id,med_id,price,currency,price_unit,KPEIN,KMEIN,valid_from,valid_to)
                select type_id=2,KNUMH,MATNR,ZREGIO,KONDA,VKORG,channel_id=a.VTWEG,channel_dtl_id=a.KDGRP,sale_team_id=a.VKORG,cust_group_id=a.KONDA,district=a.zregio,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR03 a
                 left join tb_medicine m on a.matnr=m.material_code 
                 where not exists (select 1 from tb_medprice b where b.type_id=2 and a.MATNR=b.MATNR and b.district_id=a.zregio and b.channel_id=a.VTWEG and b.channel_dtl_id=a.KDGRP)


                update b  set KNUMH=a.KNUMH,KONDA=a.KONDA,VKORG=a.VKORG,sale_team_id=a.VKORG,cust_group_id=a.KONDA,price=a.KBETR,currency=a.KONWA,price_unit=a.KMEIN,KPEIN=a.KPEIN,KMEIN=a.KMEIN,valid_from=a.DATAB,valid_to=a.DATBI
                 from SAP_ZSD_PR03 a
                 inner join (select MATNR,ZREGIO,VTWEG,KDGRP,KNUMH=max(KNUMH) from SAP_ZSD_PR03 group by MATNR,ZREGIO,VTWEG,KDGRP) c on a.KNUMH=c.KNUMH
                 inner join tb_medprice b on b.type_id=2 and a.MATNR=b.MATNR and b.district_id=a.ZREGIO and b.channel_id=a.VTWEG and b.channel_dtl_id=a.KDGRP

                insert into tb_medprice (type_id,KNUMH,MATNR,ZREGIO,KONDA,VKORG,channel_id,channel_dtl_id,sale_team_id,cust_group_id,district_id,med_id,price,currency,price_unit,KPEIN,KMEIN,valid_from,valid_to)
                select type_id=2,KNUMH,MATNR,ZREGIO,KONDA,VKORG,channel_id=a.VTWEG,channel_dtl_id=a.KDGRP,sale_team_id=a.VKORG,cust_group_id=a.KONDA,district=a.zregio,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR03 a
                 left join tb_medicine m on a.matnr=m.material_code 
                 where not exists (select 1 from tb_medprice b where b.type_id=2 and a.MATNR=b.MATNR and b.district_id=a.zregio and b.channel_id=a.VTWEG and b.channel_dtl_id=a.KDGRP)
select * into tb_district_250725 from tb_district

select * from tb_district where dbo.fn_getpy(county_name)='kys'

select * from tb_district where dbo.fn_getpy(city_name)='altdq'

update tb_district set city_code=6543 where rec_id =3219 -- old value:6590

select mate_id,mate_name,district,region,BEZEI,CITY1 from tb_busimate where mate_type_id=2 and mate_code in ('102587','102641')

select * from tb_busimate where mate_type_id=2 and mate_code in ('101398') --102587','102641')

update tb_district set city_name='省辖县' where city_code=4690 and city_name=''


select * into tb_district_250726 from tb_district

select * into tb_busimate_250726 from tb_busimate

select * from tb_district where city_code like '46%' --469023

select * from vi_district1 where code like '46%'


select mate_id,mate_name,district,region,BEZEI,CITY1 from tb_busimate where mate_type_id=2 and mate_code in ('101398') --102587','102641')

	if update(district) --and exists (select 1 from inserted where )
		update c
			set BEZEI=dbo.fn_getdistrictname(i.district,1),city1=dbo.fn_getdistrictname(i.district,2) from tb_busimate c,inserted i
			where c.mate_id=i.mate_id

	select mate_id,mate_name,district, BEZEI=dbo.fn_getdistrictname(i.district,1),city1=dbo.fn_getdistrictname(i.district,2) 
	from tb_busimate i where mate_code='101398'
			where c.mate_id=i.mate_id

update tb_busimate set district=469023 where mate_code='101398'

select * into tb_medprice_250728 from tb_medprice

select top 10 *,KOTABNR from tb_medprice

select top 10 * from SAP_ZSD_BUS

select * from SAP_ZSD_PR02

select top 10 * from tB_object where obj_type_id=11

                select a.KNUMH,b.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                 from SAP_ZSD_PR02 a
                 inner join tb_medprice b on b.type_id=1 and a.KNUMH=b.KNUMH -- a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end

                update b set KNUMH=a.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                 from SAP_ZSD_PR02 a
                 inner join tb_medprice b on b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end

                update b set KNUMH=a.KNUMH,price=a.KBETR,currency=a.KONWA,price_unit=a.KPEIN,valid_from=a.DATAB,valid_to=a.DATBI,KPEIN=a.KPEIN,KMEIN=a.KMEIN
                 from SAP_ZSD_PR02 a
                 inner join tb_medprice b on b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end

                insert into tb_medprice (type_id,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district_id,med_id,price,currency,price_unit,KPEIN,KMEIN,valid_from,valid_to)
                select type_id=1,KNUMH,MATNR,ZCOUNTRY,ZREGIO,ZCITYNUM,district=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end,m.med_id,price=KBETR,currency=KONWA,price_unit=KPEIN,KPEIN,KMEIN,valid_from=DATAB,valid_to=DATBI
                 from SAP_ZSD_PR02 a
                 left join tb_medicine m on a.matnr=m.material_code 
                where not exists (select 1 from tb_medprice b where b.type_id=1 and a.MATNR=b.MATNR and b.district_id=case when a.ZCITYNUM>0 then a.ZCITYNUM else a.ZREGIO end)

				alter table tb_medprice add KOTABNR varchar(5)


select top 10 * from tB_bill where bod_type_id=2 order by bod_id desc

select * from tb_bill_dtl where bod_id in (2665,2663)

update tb_bill_dtl set channel_id=10,channel_dtl_id=10 where bod_id in (2665,2663)

select * from tB_object where obj_id in (1667,1668)

 select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O, 
  agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, 
  agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end, 
  agent_code1=case when i.rec_id>0 then i.agent_code1 else a.ASSIGNED_BP end, 
  stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt),
  i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) 
  from SAP_ZSD_015 a 
  left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
  left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
  left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id 
  left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
  where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) and (a.GBELN='84004859' or a.VBELN='84004859') 
  
  
  union all select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1='',agent_code1='',stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id), dist1=f.BEZEI,dist2=f.CITY1,level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1 and a.bod_cd='84004859'