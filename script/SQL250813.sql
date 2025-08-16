select * from tb_busimate where mate_type_id=4 and mate_code in ('1002471')

select * into tb_busimate_250813 from tb_busimate

update tb_busimate set mate_name='曾宝珍' where mate_type_id=4 and mate_code='1002471'
update tb_busimate set mate_name='朱建华' where mate_type_id=4 and mate_code='1001323'
update tb_busimate set mate_name='石教刚' where mate_type_id=4 and mate_code='1000790'
update tb_busimate set mate_name='秦锴' where mate_type_id=4 and mate_code='1000757'
update tb_busimate set mate_name='冷祥玉' where mate_type_id=4 and mate_code='1000407'

select * from tb_district where prov_code='37' and city_code='3712'
delete from tb_district where prov_code='37' and city_code='3712'

select * from tb_district where prov_code='37' and city_code='3701'

截至2025年8月，济南市辖10个区（历下区、市中区、槐荫区、天桥区、历城区、长清区、章丘区、济阳区、莱芜区、钢城区）和2个县（平阴县、商河县）。

insert into tb_district (country,prov_code,prov_name,city_code,city_name,county_code,county_name,level_id)
values ('CN','37','山东省','3701','济南市','370116','莱芜区',3)
insert into tb_district (country,prov_code,prov_name,city_code,city_name,county_code,county_name,level_id)
values ('CN','37','山东省','3701','济南市','370117','钢城区',3)

select * into SAP_ZSD_BUS_250813 from SAP_ZSD_BUS 


select top 10 * from tb_district where prov_code='37'

select * into tb_district_250813 from tb_district


select bod_type='采购',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST, material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='' 
from tb_bill_dtl b 
inner join SAP_ZSD_015 a on b.med_id=a.rec_id
where b.bod_id=23215 and b.type_id=0
union all  
select c.bod_type,b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent, c.material_code,c.med_code,c.med_name,c.specifi,c.pdt_place,c.med_unit 
from tb_bill_dtl b 
inner join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) 
where b.bod_id=23215

select * from tb_bill_dtl where bod_id=23215 

