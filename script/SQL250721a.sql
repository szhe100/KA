select * --j.dtl_id,j.med_id,j.price,j.amot,a.*,c.mate_name,agent=b.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname 
from tb_bill_dtl j 
inner join tb_bill a on j.med_id=a.bod_id 
--/*
left join tb_busimate b on a.agent_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_staff f on a.broker_id =f.sta_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
--*/
where j.bod_id=1782

select b.dtl_id,b.med_id,d.bod_id from tb_bill a,tb_bill_dtl b,tb_bill_250717 c,tb_bill d
 where a.bod_type_id=30 and a.bod_id=b.bod_id and b.med_id=c.bod_id and d.old_id=c.bod_id 
  and a.bod_id=1782

 dtl_id,med_id,bod_id
796	  19898	  1780

update tb_bill_dtl set med_id=1780 where dtl_id=796

update b set med_id=d.bod_id from tb_bill a,tb_bill_dtl b,tb_bill_250717 c,tb_bill d
 where a.bod_type_id=30 and a.bod_id=b.bod_id and b.med_id=c.bod_id and d.old_id=c.bod_id 
  and a.bod_id=1782


select a.rec_id,a.agent_id,agent=b.mate_name,agent_code=b.mate_code,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id, a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname 
from tb_busiframe3_dtl a 
left join tb_busimate b on a.agent_id=b.mate_id 
left join tb_staff c on a.creat_by=c.sta_id 
left join tb_staff d on a.modify_by=d.sta_id
where a.rela_id=134

select creat_dt1=cast(convert(char(10),a.creat_dt,20) as datetime),modify_dt1=cast(convert(char(10),a.modify_dt,20) as datetime), a.*,broker='',c.mate_name,agent=d.mate_name,agent_code=d.mate_code,m.med_code,m.material_code,m.material_code1,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack, price10=dbo.fn_getprice1(c.district,a.med_id,a.valid_dt), m.pdt_place,bod_cd=dbo.fn_getbodcdbyrecid(a.rec_id), creater=dbo.fn_staff_name(a.creat_by),checker=g.zname, 
dist1=c.prov_name, dist2=c.city_name, 
dist1a=dbo.fn_getdistrictname (c.district,1),
dist2a=dbo.fn_getdistrictname (c.district,2),
dist3='', creater=e.zname,modifier=f.zname ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)
from tb_busiframe3 a left join (select mate_id,mate_name,district,prov_code='',prov_name=BEZEI,city_code='',city_name=CITY1 from tb_busimate where mate_type_id=2) c on a.mate_id=c.mate_id left join tb_busimate d on a.agent_id=d.mate_id left join tb_medicine m on a.med_id=m.med_id left join tb_staff e on a.creat_by=e.sta_id left join tb_staff f on a.modify_by=f.sta_id left join tb_staff g on a.check_by=g.sta_id where 1=1 and a.mate_id=19182

select * from tb_busimate where mate_type_id=2 and mate_name like '%大德%'
update tb_busimate set district=33 where mate_id=19182

select * from tb_busimate where mate_type_id=2 and district is null and region>0
update tb_busimate set district=region where mate_type_id=2 and district is null and region>0


select * into tb_busimate_250721 from tb_busimate

select * from tb_sysframe where sf_parent=4  -1

&1 SAP商业采购单  10
&2 商业采购入库单  16

update tb_sysframe set sf_invoke=16 where sf_id=30
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'SAP商业采购单',10)


 select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then i.agent else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),
 amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),
 amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, 
 not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2))
 from SAP_ZSD_015 a 
 left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name 
 left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id 
 left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id 
 left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) 
 where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) and (a.GBELN='84004546' or a.VBELN='84004546') 
