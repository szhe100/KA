declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),type_id tinyint,id int,link_id int) 
insert into @tab (line_no,f1,f2,f3,f4,f5) 
select 2,'江门市康睿医疗信息技术有限公司','0001000001','新增','正常','2025-4-27 9:44' 
union all  
select 3,'江门市康睿医疗信息技术有限公司','20500875','新增','正常','2025-4-10 8:58' 
union all  
select 4,'江门市康睿医疗信息技术有限公司','0001000001','新增','正常','2024-12-4 14:00' 
union all  
select 5,'韶关市泽森信息咨询有限公司','20500875','新增','正常','2024-12-4 14:00' 
union all  
select 6,'菠萝维价（东莞）医药科技有限公司','0001000001','新增','正常','2024-12-4 14:00' 
declare @cnt1 int,@cnt2 int 
update a set type_id=case when c.sta_id>0 then 1 when d.mate_id>0 then 2 end, id=b.mate_id,link_id=case when c.sta_id>0 then c.sta_id when d.mate_id>0 then d.mate_id end 
from @tab a 
inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) b on b.mate_name=a.f1 
left join (select sta_id,zcode,zname from tb_staff where sta_type_id=1) c on c.zcode=a.f2 
left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) d on d.mate_code=a.f2 

insert into tb_linkdata (type_id,id,link_id,delete_yn,status_id,confirm_dt,creat_by,creat_dt) 
select type_id,id,link_id,delete_yn=case a.f3 when '新增' then 0 when '删除' then 1 end, 
status_id=case a.f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end, 
confirm_dt=f5,creat_by=19273,creat_dt=getdate() from @tab a 
where not exists (select 1 from tb_linkdata l where l.type_id=1 and l.type_id=a.type_id and l.id=a.id and l.link_id=a.link_id)      
and not exists (select 1 from tb_linkdata k where k.type_id=2 and k.type_id=a.type_id and k.id=a.id and k.link_id=a.link_id) 
set @cnt1=@@ROWCOUNT 
update b set delete_yn=case a.f3 when '新增' then 0 when '删除' then 1 end, status_id=case a.f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,confirm_dt=f5 
from @tab a,tb_linkdata b where a.type_id=b.type_id and a.id=b.id and a.link_id=a.link_id  
set @cnt2=@@ROWCOUNT 
select @cnt1,@cnt2

--select * from tb_linkdata

select d.mate_name,a.*,code=case type_id when 1 then b.zcode when 2 then c.mate_code end,name=case type_id when 1 then b.zname when 2 then c.mate_name end, dist1=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,1), dist2=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,2), delete_yn,status_id,confirm_dt,creater=dbo.fn_staff_name(creat_by) 
from tb_linkdata a 
left join (select sta_id,zname,zcode,district from tb_staff where sta_type_id=1) b on a.link_id=b.sta_id 
left join (select mate_id,mate_name,mate_code,district from tb_busimate where mate_type_id=4) c on a.link_id=c.mate_id 
inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) d on a.id=d.mate_id 
where type_id in (1,2)

select count(1) from SAP_ZSD_015

select * from tb_staff where sta_type_id=1
delete from tb_staff where sta_id=19277
select * into tb_staff_250509 from tb_staff 

select * from tb_busimate where mate_type_id=10 and mate_name='连云港财俊商务咨询有限公司'

delete from tb_busimate where mate_id in (8751,8752)

select * into tb_busimate_250509 from tb_busimate

select mate_code,count(*),mate_id=min(mate_id) from tb_busimate where mate_type_id=10 group by mate_code having count(1)>1

select * from tb_busimate where mate_code='91110101MA00CU8U0E' 91500000MADRHGLT23'

select * from tb_busimate a,(
select mate_code,cnt=count(*),mate_id=min(mate_id) from tb_busimate where mate_type_id=10 group by mate_code having count(1)>1
) b
where a.mate_code=b.mate_code and a.mate_id<>b.mate_id

delete from tb_busimate where mate_id in (
select a.mate_id from tb_busimate a,(
select mate_code,cnt=count(*),mate_id=min(mate_id) from tb_busimate where mate_type_id=10 group by mate_code having count(1)>1
) b
where a.mate_code=b.mate_code and a.mate_id<>b.mate_id
)

