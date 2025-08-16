select j.dtl_id,j.med_id,j.price,j.amot,a.*,b.mate_name
 from tb_bill_dtl j
 inner join tb_bill a on j.med_id=a.bod_id
 left join tb_busimate b on a.src_id =b.mate_id
 where j.bod_id=4839252

 00176577


select * from tb_bill where bod_type_id=18 and bod_cd='00035181'
select * from tb_bill where bod_type_id=19 and bod_cd in ('00021953','00022841','00022762','00022370')

select 118416.00/29604.0000


select top 10 c.bod_type_id,c.bod_cd,c.bod_id --c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id),';
  --med_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),o.type_id2

  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill_stadtl h on b.med_id=h.rec_id
  left join tb_bill_dtl d on d.dtl_id=h.dtl_id
  left join tb_bill c on c.bod_id=d.bod_id
  left join tb_medicine m on d.med_id=m.med_id
  left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (d.sta_id,c.dst_id,d.med_id,c.carry_dt)
  where a.bod_type_id=17 and bod_cd='00176577' --and c.bod_type_id=19
	and a.bod_id=4839241

  select * from tb_bill where bod_type_id=17 and bod_cd='00176577'

  select a.bod_type_id,a.bod_id,a.creat_dt, a.bod_amot, c.bod_type_id, c.bod_id, c.bod_amot, b.dtl_id,rec_id=0,med_id=0,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,sta_id=c.broker_id,broker=dbo.fn_staff_name(c.broker_id),mate_name=dbo.fn_mate_name(c.dst_id),
  m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  left join tb_medicine m on c.med_id=m.med_id
  left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (c.broker_id,c.dst_id,c.med_id,c.carry_dt)
  where a.bod_type_id=17 and a.creat_dt>='2025-04-01' and c.bod_cd in ( '00021953','00022841','00022762','00022370')

select * --a.bod_id,a.bod_type_id,a.bod_amot,b.dtl_id,b.price,b.amot 
 from tb_bill a --,tb_bill_dtl b
  where a.bod_type_id=19 and a.bod_id in (1797293,1797372,1792493,1780822)
  select * from tb_bill_dtl where bod_id in (1797293,1797372,1792493,1780822)



  select a.bod_type_id,a.bod_id, a.bod_cd,  a.creat_dt,a.bod_amot, c.bod_type_id,c.bod_id,c.bod_cd, c.creat_dt,c.bod_amot
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  where a.bod_type_id=17 and a.bod_status_id=1 and c.bod_type_id=19 and c.bod_status_id=1 and c.bod_cd in ( '00022370')  -- '00021953','00022841','00022762',
  order by a.creat_dt,c.creat_dt

select * from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id=4839241
select * from tb_bill_dtl where bod_id=4839241

select distinct bod_id from (
  select a.bod_type_id,a.bod_id, a.bod_cd,  a.creat_dt,a.bod_amot --, c.bod_type_id,c.bod_id,c.bod_cd, c.creat_dt,c.bod_amot
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  where a.bod_type_id=17 and a.bod_status_id=1 and a.creat_dt>='2025-04-01' and c.bod_type_id=19 and c.bod_status_id=1 and c.bod_cd in ( '00022370','00021953','00022841','00022762')
) a

  order by a.creat_dt,c.creat_dt

select a.bod_id,a.bod_type_id,a.creat_dt,a.bod_amot,b.dtl_id,b.price,b.amot,b.med_id
from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id  --=4839241
 in (4839230,4839231,4839239,4839241)

select bod_id,bod_type_id,bod_cd,bod_amot from tb_bill where bod_id in (4839230,4839231,4839239,4839241)

select * from tb_bill_dtl where bod_id=4839241

  select a.bod_type_id,a.bod_id, a.bod_cd,  a.creat_dt,a.bod_amot,b.dtl_id, b.price,b.amot --, c.bod_type_id,c.bod_id,c.bod_cd, c.creat_dt,c.bod_amot
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  where a.bod_type_id=17 and a.bod_status_id=1 and a.creat_dt>='2025-04-01' and c.bod_type_id=19 and c.bod_status_id=1 and c.bod_cd in ( '00022370','00021953','00022841','00022762')

select a.bod_id,a.bod_type_id,a.creat_dt,a.bod_amot,b.dtl_id,b.price,b.amot,b.med_id
from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id  --=4839241
 in (4839230,4839231,4839239,4839241)

select a.bod_id,a.bod_type_id,a.creat_dt,a.bod_amot,b.dtl_id,b.price,b.amot,b.med_id,c.bod_id,c.bod_amot
from tb_bill a,tb_bill_dtl b,tb_bill c
where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id in (4839230,4839231,4839239,4839241)
	and b.med_id=c.bod_id

select a.bod_id,a.bod_type_id,a.creat_dt,a.bod_amot,b.dtl_id,b.price,b.amot,b.med_id,c.bod_id,c.bod_amot,d.price,d.amot
from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d
where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id in (4839230,4839231,4839239,4839241)
	and b.med_id=c.bod_id and c.bod_id=d.bod_id

select a.bod_id,a.bod_type_id,a.creat_dt,a.bod_amot,b.dtl_id,b.price,b.amot,b.med_id,d.price,d.amot
from tb_bill a,tb_bill_dtl b,tb_bill_dtl d
where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id in (4839230,4839231,4839239,4839241)
	and b.med_id=d.bod_id

update d set price=b.amot,amot=b.amot
from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d
where a.bod_type_id=18 and a.bod_id=b.bod_id and b.med_id in (4839230,4839231,4839239,4839241)
	and b.med_id=c.bod_id and c.bod_id=d.bod_id


  select a.bod_type_id,a.bod_id,a.bod_cd,a.creat_dt, a.bod_amot, c.bod_type_id, c.bod_id,c.bod_cd, c.bod_amot, b.dtl_id

  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  where a.bod_type_id=17 and a.creat_dt>='2025-04-01' and c.bod_cd in ( '00021953','00022841','00022762','00022370')

  select a.bod_type_id,a.bod_id,a.creat_dt, a.bod_amot, c.bod_type_id, c.bod_id, c.bod_amot, b.dtl_id

  update c set bod_amot=a.bod_amot
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  where a.bod_type_id=17 and a.creat_dt>='2025-04-01' and c.bod_cd in ( '00021953','00022841','00022762','00022370')


  select a.bod_type_id,a.bod_id,a.bod_cd,a.creat_dt, a.bod_amot, c.bod_type_id, c.bod_id,c.bod_cd, c.bod_amot, b.dtl_id,rec_id=0,med_id=0,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,sta_id=c.broker_id,broker=dbo.fn_staff_name(c.broker_id),mate_name=dbo.fn_mate_name(c.dst_id),
  m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place
  from tb_bill a
  inner join tb_bill_dtl b on a.bod_id=b.bod_id
  inner join tb_bill c on b.sta_id=c.bod_id
  left join tb_medicine m on c.med_id=m.med_id
  left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (c.broker_id,c.dst_id,c.med_id,c.carry_dt)
  where a.bod_type_id=17 and c.bod_cd in ('00022370')
  order by a.creat_dt,c.creat_dt

