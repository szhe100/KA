CREATE TRIGGER tr_brokermed
   ON  tb_brokermed
   for INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/*
select price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),a.price1,rec_id,e.district,a.mate_id,a.med_id,a.valid_dt
from tb_brokermed a
 left join tb_busimate e on a.mate_id=e.mate_id 

18	NULL	21927
53	4401	22528

select * into tb_brokermed_250702 from tb_brokermed

update tb_brokermed set mate_id=21927 where rec_id=18

update tb_brokermed set mate_id=22528 where rec_id=53
update tb_brokermed set mate_id=mate_id


 */

if exists (select * from inserted) and (update(mate_id) or update(med_id) or update(valid_dt))
        update a
            set price1=dbo.fn_getprice1(b.district,i.med_id,i.valid_dt)
            from tb_brokermed a,inserted i,tb_busimate b
            where a.rec_id=i.rec_id and i.mate_id=b.mate_id

END
GO



