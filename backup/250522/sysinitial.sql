select * from tb_medicine

select top 10 * from tb_bill order by bod_id desc

truncate table tb_account
truncate table tb_account1
truncate table tb_agentdata
truncate table tb_bank
truncate table tb_bill
truncate table tb_bill_dtl
truncate table tb_bill_stadtl
truncate table tb_billid
truncate table tb_brokermed
truncate table tb_brokermedtl
truncate table tb_busimate
truncate table tb_busiframe
truncate table tb_clientlog
truncate table tb_drawlog
truncate table tb_image
truncate table tb_matemedfee
truncate table tb_medata
truncate table tb_medicine
truncate table tb_medinfo
truncate table tb_medstock_bat
truncate table tb_settle
truncate table tb_settlelist
truncate table tb_staff
truncate table tb_sysrule
truncate table tb_trustdevice
truncate table tb_trustdistrict
truncate table tb_trustlog
truncate table tb_trustmate
truncate table tb_trustmed
truncate table tb_updatelog
truncate table tb_useright
truncate table tb_visitlog

insert into tb_staff (comp_id,dept_id,zname,sex,use_priority,broker,manager,account,purchase,sta_type_id)
 values (1,48,'ºÎÑô',1,1,1,1,1,1,0)
