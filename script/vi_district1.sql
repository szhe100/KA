ALTER view [dbo].[vi_district1] as

select * from (
select distinct parent='',code=prov_code,name=prov_name,name0=prov_name,prov_name,city_name,county_name from tb_district
union all
select distinct parent=prov_code,code=city_code,name=city_name,name0=city_name,prov_name,city_name,county_name from tb_district where city_name<>''
union all  --暂时不取区县
select parent=city_code,code=county_code,name=county_name,name0=county_name,prov_name,city_name,county_name from tb_district where county_name<>''
	and prov_code in (11,12,31,50)  -- ,44
) a order by code

/*
select top 10000 * from (
select distinct parent='',code=prov_code,name=prov_name+' '+prov_code,name0=prov_name,prov_name,city_name,county_name from tb_district
union all
select distinct parent=prov_code,code=city_code,name=city_name+' '+city_code,name0=city_name,prov_name,city_name,county_name from tb_district where city_name<>''
union all  --暂时不取区县
select parent=city_code,code=county_code,name=county_name+' '+county_code,name0=county_name,prov_name,city_name,county_name from tb_district where county_name<>''
	and prov_code in (11,12,31,50)  -- ,44
) a order by code
*/

GO


