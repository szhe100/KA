declare @channelcode int,@channeldtlcode int,@districtid int,@matecode varchar(10),@materialcode varchar(20),@dt datetime
/*
设置业务结构 SAP_ZSD_BUS.recid
入参: 渠道+子渠道+地区+品规关联编码+启用日期
用于商业销售综合查询 等
10	10	310107	3098456	1000016700	2025-01-10 00:00:00
*/

--select @channelcode=10,@channeldtlcode=10,@districtid=310107,@matecode='3098456',@materialcode='1000016700',@dt='2025-01-10'

select @channelcode=10,@channeldtlcode=10,@districtid=441207,@matecode='3098456',@materialcode='1000016700',@dt='2025-01-10'


	declare @ret int

	if @channeldtlcode=10 set @channeldtlcode=11  -- 流向子渠道录入为10时，应识别业务架构中子渠道为：RX分销（11）的架构

--select top 1 @ret=rec_id
select *
	from SAP_ZSD_BUS
	where VTWEG=@channelcode and KDGRP=@channeldtlcode
		--and med_id=@medid 
		and MATNR=(select material_code1 from tb_medicine where material_code=@materialcode)
		--and (ZREGIO=@districtid or ZCITYNUM=@districtid or ZCNTYNUM=@districtid)
		and @districtid like ZREGIO+'%'
		and (KUNNR='' or KUNNR=@matecode)
		and DATE_FROM<=@dt
		--and (district_id=@districtid or @districtid like cast(district_id as varchar(6))+'%')
--	order by case when ZCNTYNUM=@districtid then 1 when ZCITYNUM=@districtid then 2 else 3 end,DATE_FROM desc,rec_id desc
--	order by case when KUNNR=@matecode then 1 else 2 end,case when ZCNTYNUM=@districtid then 1 when ZCITYNUM=@districtid then 2 else 3 end,DATE_FROM desc,rec_id desc
	order by case when KUNNR=@matecode then 1 else 2 end,case when ZCNTYNUM=@districtid then 1 when @districtid like ZCITYNUM+'%' then 2 else 3 end,DATE_FROM desc,rec_id desc

if exists (select 1 from tempdb..sysobjects where id=object_id('tempdb..#tmp')) drop table #tmp 
select bal0=0.00,h.sta_id, broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco, amot=sum(cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))), ckd_amot=sum(isnull(y.ckd_amot,0)),amot1=sum(j.amot1),amot2=sum(j.amot2) ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id) 
into #tmp 
from tb_bill a 
inner join tb_bill_dtl b on a.bod_id=b.bod_id 
inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id 
left join tb_staff c on h.sta_id=c.sta_id 
inner join tb_busimate e on a.dst_id=e.mate_id 
left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '2025-07-11' and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id 
left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.creat_dt>= '2025-07-11'  and a.bod_id=b.bod_id  and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id 
where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id=1 and e.mate_type_id=1   
and a.carry_dt>= '2025-07-11' and a.carry_dt< dateadd(day,1,'2025-08-10') 
group by h.sta_id,  c.zname,dbo.fn_getdistrict1(e.district),c.receiver,c.bank_name,c.depo_acco,
b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,dbo.fn_obj_desc(m.unit_id),m.type_id1 
having sum(b.qty*case when h.rate is null then b.rate else h.rate end)<>0 

union all 

select bal0=0.00,sta_id=broker_id, broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco, amot=a.bod_amot,y.ckd_amot,j.amot1,j.amot2 
from tb_bill a 
inner join tb_staff c on a.broker_id=c.sta_id 
left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2))) 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '2025-07-11' and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id 
left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1  and a.bod_id=b.bod_id 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id 
where a.bod_type_id=19 and a.bod_status_id=1  and a.carry_dt>= '2025-07-11' and a.carry_dt< dateadd(day,1,'2025-08-10') 

if exists (select 1 from tempdb..sysobjects where id=object_id('tempdb..#tmp1')) 
drop table #tmp1 
select broker_id,bal0=sum(cast(isnull(drawamot,0)+isnull(rec,0)-isnull(pay,0) as decimal(15,2))) into #tmp1 from vi_brokerexg where comp_id=1 and carry_dt< '2025-07-11' 	and broker_id in (select sta_id from #tmp) group by broker_id 

select b.bal0,a.* from #tmp a left join #tmp1 b on a.sta_id=b.broker_id
