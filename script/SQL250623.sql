declare @channelcode int,@channeldtlcode int,@mateid int,@agentid int,@materialcode varchar(20),@price decimal(15,4),@price1 decimal(15,4),@dt datetime
/*
入参: 渠道+子渠道+商业公司+业务负责人+品规关联编码+销售单价+考核单价+启用日期
*/
select @channelcode=10,@channeldtlcode=11,@mateid=19482,@agentid=17049,@materialcode='1000008800',@price=4.0600,@price1=4.0600,@dt='2025-01-15'
	select * from tb_busiframe3 a 
--	select top 1 @ret=rec_id from tb_busiframe3 a 
	inner join tb_busimate c on a.mate_id=c.mate_id
	inner join (select med_id from tb_medicine m inner join (select top 1 material_code1 from tb_medicine where material_code=@materialcode) n on m.material_code1=n.material_code1) m on a.med_id=m.med_id
	where a.channel_id=@channelcode and a.channel_dtl_id=@channeldtlcode
		and a.mate_id=@mateid
		and a.agent_id=@agentid
		and a.med_id in (select med_id from tb_medicine where material_code1=(select top 1 material_code1 from tb_medicine where material_code=@materialcode))
		--and (dbo.fn_getdistrictname (c.district,1)=@provname or dbo.fn_getdistrictname (c.district,2)=@cityname)

		and a.price1=@price
		and a.price2=@price1

		and a.valid_dt<=@dt
	order by a.valid_dt desc,rec_id desc



	    commandtext:='sp_updatestock30 -30,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);


select c.channel_id,channel=dbo.fn_obj_desc1(c.channel_id),c.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(c.channel_dtl_id), b.bod_id,b.dtl_id,c.rec_id,c.mate_id,mate_name=dbo.fn_mate_name(c.mate_id),c.agent_id,agent=dbo.fn_mate_name(c.agent_id), c.med_id,c.type_id,c.type_id1,c.type_id2,c.price,c.price1,c.price2,c.price3,c.amot,c.rate,c.rate1,c.fee,c.remark,c.valid_dt,c.valid, 

med_code,material_code,material_code1,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id) 
from tb_bill_dtl b,tb_busiframe3 c,tb_medicine m 
where b.bod_id=17949  and b.med_id=c.rec_id and c.med_id=m.med_id

select * from tb_object where obj_type_id=11 and obj_code=10

select dbo.fn_obj_desc(10),dbo.fn_obj_desc1(10)

