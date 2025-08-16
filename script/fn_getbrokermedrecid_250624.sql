ALTER function [dbo].[fn_getbrokermedrecid] (@mateid int,@medid int,@dt datetime)
returns integer
/*
取得业务员费用tb_brokermed.rec_id
 left join tb_brokermed d on b.med_id=d.med_id and a.dst_id=d.mate_id and d.valid=1 and isnull(d.stop_yn,0)=0
*/
as
begin
	
	declare @ret int

	select top 1 @ret=rec_id from tb_brokermed 
		where mate_id=@mateid and med_id=@medid and valid_dt<=@dt
			and valid=1 and (stop_yn is null or stop_yn=0)
	order by valid_dt desc


return (@ret)

end

GO


