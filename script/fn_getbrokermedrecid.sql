ALTER function [dbo].[fn_getbrokermedrecid] (@mateid1 int,@mateid int,@medid int,@dt datetime)
returns integer
/*
取得业务员费用tb_brokermed.rec_id
 left join tb_brokermed d on b.med_id=d.med_id and a.dst_id=d.mate_id and d.valid=1 and isnull(d.stop_yn,0)=0

 mate_id1 商业公司， mate_id 医院
*/
as
begin
	
	declare @ret int

	select top 1 @ret=rec_id from tb_brokermed 
		where mate_id1=@mateid1 and mate_id=@mateid and med_id=@medid
			and valid=1
			and valid_dt<=@dt
	order by valid_dt desc,rec_id desc

return (@ret)

end

GO


