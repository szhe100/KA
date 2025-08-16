select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),check_dt1=a.check_dt,a.*,
creater=d.zname,checker=e.zname, broker='',receiver='',acnt_bank='',bank_account='',carryer=g.zname,receiver1=h.zname,storager=i.zname, 
cdistrict='',bank_name=0,depo_acco='',bank_id1=0,bank_name1='',
--c.dist1, c.dist2, c.level1,level2='',level3='', leader='', 
--dist1=dbo.fn_getdistrictname(l.district,1), dist2=dbo.fn_getdistrictname(l.district,2), level1='',level2='',level3='', leader='', 
--c.channel_id,c.channel,c.channel_dtl_id,c.channel_dtl
a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) --a.VTEXT,a.ZKDGRP,
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
--left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-05-26' and a.check_dt< dateadd(day,1,'2025-07-17')
	and a.bod_id=19898

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,bod_desc1=j.bod_desc,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname, broker='',agent=k.mate_name,k.receiver,k.acnt_bank,k.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(c.district),cdistrict1=dbo.fn_getdistrict1(k.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1 ,
a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)
from tb_bill a 
left join tb_busimate b on a.src_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
left join (select bod_id,channel_id,channel_dtl_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 
left join tb_busimate k on a.agent_id =k.mate_id 
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-01-01' and a.check_dt< dateadd(day,1,'2025-07-17')

select * from tb_bill where bod_type_id=30
select * from tB_bill_dtl where bod_id in (19899,19900)


17930

select bod_type='采购',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST, material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='' 
from tb_bill_dtl b 
inner join SAP_ZSD_015 a on b.med_id=a.rec_id where b.bod_id=17930

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='', c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)) 		from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c 
on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
where a.bod_type_id=37 and a.bod_status_id=1  and c.carry_dt>= '2025-01-01' and c.carry_dt< dateadd(day,1,'2025-07-17')


select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,bod_desc1=j.bod_desc,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname, broker='',agent=k.mate_name,k.receiver,k.acnt_bank,k.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(c.district),cdistrict1=dbo.fn_getdistrict1(k.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1 ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id) 
from tb_bill a 
left join tb_busimate b on a.src_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id left join tb_staff i on a.storage_by =i.sta_id 
left join (select bod_id,channel_id,channel_dtl_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) left join tb_busimate k on a.agent_id =k.mate_id 
where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_cd='00000011'

select a.bod_amot,b.amot, creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='',
c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,j.bank_name1, level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
inner join (select bod_type_id=0,bod_id=rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	union all select bod_type_id,a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)) 		from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.bod_id 
left join (select bod_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 
where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_cd='00000011'


select a.channel_id,a.channel_dtl_id,c.channel_id,c.channel_dtl_id,x.obj_code,y.obj_code --  * --creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='', c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 

inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2))
from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c 
on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=11) x on x.zdesc=c.channel
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=12) y on y.zdesc=c.channel_dtl

select * from tB_object where obj_id in (1667,1673)
where a.bod_type_id=37 and a.bod_status_id=1 


update a set channel_id=x.obj_code,channel_dtl_id=y.obj_code
--select a.channel_id,a.channel_dtl_id,c.channel_id,c.channel_dtl_id,x.obj_code,y.obj_code --  * --creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='', c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 

inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2))
from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c 
on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=11) x on x.zdesc=c.channel
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=12) y on y.zdesc=c.channel_dtl


select * --creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='', c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
--/*
inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2))
from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c 
on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
--*/
where a.bod_type_id=37 and a.bod_status_id=1   and a.check_dt>= '2025-01-01' and a.check_dt< dateadd(day,1,'2025-07-17')
--and c.carry_dt>= '2025-01-01' and c.carry_dt< dateadd(day,1,'2025-07-17')
 and a.bod_id=17930

 select bod_id,dtl_id,type_id,med_id from tB_bill_dtl where bod_id=17930

update tb_bill_dtl set type_id=0 where bod_id in (17952,17977)  17930

 select * from tB_bill where bod_type_id=1 and bod_cd=22096
 select bod_type='采购',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST, material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='' 
from tb_bill_dtl b 
inner join SAP_ZSD_015 a on b.med_id=a.rec_id 
where b.bod_id=19898

select a.channel_id,a.channel_dtl_id,c.channel_id,c.channel_dtl_id --  * --creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2='', c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='',c.agent,receiver='',acnt_bank='',bank_account='', carryer='',receiver1='',storager='', cdistrict='',bank_name='',depo_acco='',bank_id1=0,bank_name1='', level2='',level3='', leader='' 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
--/*
inner join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST, 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='',      material_code=MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))      from SAP_ZSD_015 where KDGRP not in ('10','19') 	
union all 
select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),      dist1=f.BEZEI,dist2=f.CITY1,level1='',a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2))
from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id 		where a.bod_type_id=36 and a.bod_status_id=1) c 
on b.type_id=c.bod_type_id and b.med_id=c.rec_id 
--*/
where a.bod_type_id=37 and a.bod_status_id=1 

select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),c.carry_dt,check_dt1=a.check_dt,a.*,n.mate_name,bod_cd1=c.GBELN,creater=d.zname,checker=e.zname, broker='',agent=l.mate_name,l.receiver,l.acnt_bank,l.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(l.district),f.bank_name,depo_acco=f.bank_acnt,bank_id1=0,bank_name1='',
dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,level2='',level3='', leader='', 
--dist1=dbo.fn_getdistrictname(l.district,1), dist2=dbo.fn_getdistrictname(l.district,2), level1='',level2='',level3='', leader='', 
a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id) 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id
inner join SAP_ZSD_015 c on b.med_id=c.rec_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
--left join (select bod_id,bod_cd,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 
left join (select b.bod_id,VTEXT,ZKDGRP,bod_cd2=a.VBELN,a.qty,b.price,b.amot,b.med_id,med_code=a.MATNR,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=1      from tb_bill_dtl b inner join SAP_ZSD_015 a on b.med_id=a.rec_id) y on a.bod_id=y.bod_id 
left join tb_busimate l on a.agent_id =l.mate_id 
left join tb_busimate n on a.dst_id =n.mate_id 
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-05-26' and a.check_dt< dateadd(day,1,'2025-07-17')
	and a.bod_id=19898

369问题：分销结算/其他支出核销表，单据号84004546，应付金额按了两位小数计算，未付金额是不是按了三位小数计算？应是统一计算规则。我会让小妹们把政策都改成2位小数点。其他支出核销表里的计算，请你也检查一下修改

 select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type='分销采购',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='',bod_cd3=GBELN,bod_desc='',bod_desc1='',  broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then i.agent else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP, agent1=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI, creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=0,bat_cd=CHARG, a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3, a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)), price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt), i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,2)),amot1a=cast(i.amot as decimal(15,2)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0, not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2)) from SAP_ZSD_015 a left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id) i  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt) where KDGRP not in ('10','19')  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0) and (a.GBELN='84004546' or a.VBELN='84004546') union all select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type='应付记账',a.bod_cd,bod_cd1='',bod_cd2='',bod_cd3='',a.bod_desc,a.bod_desc1, a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1='',stoppay=isnull(f.stoppay,0), VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id), dist1=f.BEZEI,dist2=f.CITY1,level1='', creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='', z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3, qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0, type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0 ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2)) from tb_bill a left join tb_bill_stadtl h on a.bod_id=h.bod_id left join tb_staff d on a.creat_by=d.sta_id left join tb_busimate e on a.dst_id=e.mate_id left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),  				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2))) 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=36 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=a.bod_id where a.bod_type_id=36 and a.bod_status_id=1 and a.bod_cd='84004546'
