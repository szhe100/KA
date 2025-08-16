select distinct mate_type_id from tb_busimate order by mate_type_id

select * from tb_busimate where mate_type_id=9

select top 10 mate_id,mate_name,confirm_dt from tb_busimate

alter table tb_busimate add agent_id int
alter table tb_busimate add confirm_dt datetime

agent_id,district_id,mate_name,mate_type_id,tax_type,Admission_status,use_status,edit_type,confirm_dt,creat_by,creat_dt


&E 设置药品中标价 277
&F 设置药品考核价 278
&G 设置学术标准政策 279
&H 设置分销标准政策 280

&F 设置推广服务商 281


select * from tb_sysframe 

update tb_sysframe set sf_title='药品管理' where sf_id=2

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置药品中标价',277)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置药品考核价',278)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置学术标准政策',279)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置分销标准政策',280)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置推广服务商',281)

select distinct obj_type_id from tb_object order by obj_type_id


select a.*,--zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),  
leader=e.zname,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack, 
creater=dbo.fn_staff_name(a.creat_by),  modifier=dbo.fn_staff_name(a.modify_by),	
dist1=dbo.fn_getdistrictlevel (a.district_id,1),	
dist2=dbo.fn_getdistrictlevel (a.district_id,2),	
dist3=dbo.fn_getdistrictlevel (a.district_id,3)  
from tb_busiframe a 
left join tb_staff e on a.sta_id=e.sta_id 
inner join tb_medicine m on a.med_id=m.med_id 
where a.comp_id=1


alter table tb_busiframe2 add
--	[district_id] [int] NULL,
	[channel_id] [int] NULL,
	[channel_dtl_id] [int] NULL,
	[nation_id] [int] NULL,
	[prod_line_id] [int] NULL,
	[broker_id] [int] NULL,
	[busi_center_id] [int] NULL,
	[sale_team_id] [int] NULL,
	[valid_from] [datetime] NULL,
	[valid_to] [datetime] NULL 


select top 100 * from tb_sysrule where type_id=2

alter table tb_sysrule add import_log varchar(50)

select top 5 '重复:'+mate_name+' '+address,count(1) from tb_busimate group by mate_name+' '+address having count(1)>1

select dateadd(day,-1,getdate())
select dateadd(day,1,cast(convert(char(10),getdate(),20) as datetime))

select top 100 * from ( select tmprow=row_number()over(order by getdate()),  a.*,cmate_type=case mate_type when 0 then '供应商' when 1 then '销售客户' when 2 then '供应商或客户' end,  cdistrict=dbo.fn_getdistrict(district),settle_name=b.zdesc,broker_name=c.zname,purchaser=d.zname,  checker1=e.zname,checker2=f.zname,checker3=g.zname,checker4=i.zname,stoper=h.zname,deliverway=dbo.fn_obj_desc(a.deliver_way),  creater=s.zname,modifier=t.zname from tb_busimate a,tb_object b,tb_staff c,tb_staff d,tb_staff s,tb_staff t,tb_staff e,tb_staff f,tb_staff g,tb_staff h,tb_staff i where a.comp_id=1 and a.settle_type*=b.obj_id and b.obj_type_id=2 and a.broker_id*=c.sta_id and a.broker_id1*=d.sta_id  and a.check_by1*=e.sta_id and a.check_by2*=f.sta_id and a.check_by3*=g.sta_id and a.check_by4*=i.sta_id and a.stop_by*=h.sta_id  and a.creat_by*=s.sta_id and a.modify_by*=t.sta_id and a.mate_type in (0,1,2)  and isnull(a.mate_hide,0)=0 and permit_valid<=dateadd(day,10,cast(convert(char(10),getdate(),20) as datetime)) ) t where tmprow>100*0


select top 100 * from ( select tmprow=row_number()over(order by getdate()),  a.*,cmate_type=case mate_type when 0 then '供应商' when 1 then '销售客户' when 2 then '供应商或客户' end,  cdistrict=dbo.fn_getdistrict(district),settle_name=b.zdesc,broker_name=c.zname,purchaser=d.zname,  checker1=e.zname,checker2=f.zname,checker3=g.zname,checker4=i.zname,stoper=h.zname,deliverway=dbo.fn_obj_desc(a.deliver_way),  creater=s.zname,modifier=t.zname from tb_busimate a,tb_object b,tb_staff c,tb_staff d,tb_staff s,tb_staff t,tb_staff e,tb_staff f,tb_staff g,tb_staff h,tb_staff i where a.comp_id=1 and a.settle_type*=b.obj_id and b.obj_type_id=2 and a.broker_id*=c.sta_id and a.broker_id1*=d.sta_id  and a.check_by1*=e.sta_id and a.check_by2*=f.sta_id and a.check_by3*=g.sta_id and a.check_by4*=i.sta_id and a.stop_by*=h.sta_id  and a.creat_by*=s.sta_id and a.modify_by*=t.sta_id and a.mate_type in (0,1,2)  and isnull(a.mate_hide,0)=0
and (a.permit_valid<=dateadd(day,10,cast(convert(char(10),getdate(),20) as datetime))   or a.gsp_valid<=dateadd(day,10,cast(convert(char(10),getdate(),20) as datetime)) ) ) t where tmprow>100*0