ALTER view [dbo].[vi_district1] as

select distinct parent='',rec_id=prov_code,zdesc=prov_name from tb_district
union all
select distinct parent=prov_code,rec_id=city_code,zdesc=city_name from tb_district where city_name<>''
union all
select parent=city_code,rec_id=county_code,zdesc=county_name from tb_district where county_name<>''

/*
select parent='',rec_id=prov_code,zdesc=prov_name from tb_district where level_id=1
union all
select parent=prov_code,rec_id=city_code,zdesc=city_name from tb_district where level_id=2 -- city_name<>''
union all
select parent=city_code,rec_id=county_code,zdesc=county_name from tb_district where level_id=3 --county_name<>''
*/

GO