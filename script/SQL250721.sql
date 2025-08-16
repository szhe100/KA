select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,n.mate_name,bod_cd1=j.bod_cd,creater=d.zname,checker=e.zname, broker='',agent=l.mate_name,l.receiver,l.acnt_bank,l.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname, cdistrict=dbo.fn_getdistrict1(l.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1,y.*, dist1=dbo.fn_getdistrictname(l.district,1), dist2=dbo.fn_getdistrictname(l.district,2), level1='',level2='',level3='', leader='', a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id) 
from tb_bill a 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_bank f on a.bank_id =f.bank_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
left join (select bod_id,bod_cd,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id) 
left join (select b.bod_id,VTEXT,ZKDGRP,bod_cd2=a.VBELN,a.qty,b.price,b.amot,b.med_id,med_code=a.MATNR,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='',type_id1=1      from tb_bill_dtl b inner join SAP_ZSD_015 a on b.med_id=a.rec_id) y on a.bod_id=y.bod_id 
left join tb_busimate l on a.agent_id =l.mate_id 
left join tb_busimate n on a.dst_id =n.mate_id 
where a.bod_type_id=37 and a.bod_status_id=1  and a.check_dt>= '2025-05-26' and a.check_dt< dateadd(day,1,'2025-07-17')

select bod_type='采购',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST, material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='' 
from tb_bill_dtl b 
inner join SAP_ZSD_015 a on b.med_id=a.rec_id 
where b.bod_id=19898

1.分销结算/D其他支出记账单  bod_type_id=36
2.分销结算/G其他支出审批付款/付款审批3个环节单据  bod_type_id=37
3.分销结算/G其他支出审批付款/出纳付款审批2个环节单据  bod_type_id=30

select * from tb_billid_250717 where bod_type_id in (30,36,37)
select * from tb_billid where bod_type_id in (30,36,37)
select * from tb_billid where bod_type_id in (35)

insert into tb_billid (comp_id,bod_type_id,currentID) select comp_id,bod_type_id,currentID from tb_billid_250717 where bod_type_id in (30,36,37)

select * from tb_bill_250717 where bod_type_id in (30,36,37)
select * from tb_bill_dtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))
select * from tb_bill_stadtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))

select * into tb_bill_250721 from tb_bill
select * into tb_bill_dtl_250721 from tb_bill_dtl
select * into tb_bill_stadtl_250721 from tb_bill_stadtl
alter table tb_bill add old_id int
alter table tb_bill_dtl add old_dtl_id int

select * from tb_bill_250717 where bod_type_id in (30,36,37)
select * from tb_bill_dtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))
select * from tb_bill_stadtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))
	and dtl_id is not null

insert into tb_bill (comp_id,bod_cd,src_id,dst_id,bod_status_id,bod_type_id,busi_type,sub_busi_id,cate_id,stock_id,bod_amot,ckd_amot,ckd_amot1,creat_by,creat_dt,carry_by,carry_dt,check_by,check_dt,cash_by,cash_dt,delete_by,delete_dt,receipt_by,receipt_dt,bod_desc,relative_id,prncount,settle_type,allo_desc,broker_id,level_id1,level_id2,level_id3,agent_id,district_id,storage_by,mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,storage_dt,bod_desc1,bod_desc2,bank_id,carry_way,zmemo,med_id,order_id,invo_cd,submit_dt,platform_id,ckd_amot2,ckd_amot3,bf_id,channel_id,channel_dtl_id,data_type_id,prod_line_id,sale_team_id,old_id)
	select comp_id,bod_cd,src_id,dst_id,bod_status_id,bod_type_id,busi_type,sub_busi_id,cate_id,stock_id,bod_amot,ckd_amot,ckd_amot1,creat_by,creat_dt,carry_by,carry_dt,check_by,check_dt,cash_by,cash_dt,delete_by,delete_dt,receipt_by,receipt_dt,bod_desc,relative_id,prncount,settle_type,allo_desc,broker_id,level_id1,level_id2,level_id3,agent_id,district_id,storage_by,mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,storage_dt,bod_desc1,bod_desc2,bank_id,carry_way,zmemo,med_id,order_id,invo_cd,submit_dt,platform_id,ckd_amot2,ckd_amot3,bf_id,channel_id,channel_dtl_id,data_type_id,prod_line_id,sale_team_id,bod_id
	  from tb_bill_250717 where bod_type_id in (30,36,37)

insert into tb_bill_dtl (bod_id,level_id1,level_id2,level_id3,lead_id,sta_id,stock_id,med_id,bat_cd,price,price1,price2,price3,qty,qty1,qty2,discount,cost,amot,valid_dt,rela_value,dtlrate,sumqty,rela_id,rela_id1,rule_id,rate,ckd_amot1,ckd_amot2,ckd_amot3,ckd_amot4,zdesc,bod_cd1,bod_cd2,bod_cd3,sta_id1,type_id,rate0,drawprice,costprice,invo_cd,invo_dt,busiframe_id,platform_id,bf3_id,bf_id,amot1,amot2,channel_id,channel_dtl_id,old_dtl_id)
	select c.bod_id,b.level_id1,b.level_id2,b.level_id3,lead_id,sta_id,b.stock_id,b.med_id,bat_cd,price,price1,price2,price3,qty,qty1,qty2,discount,cost,amot,valid_dt,rela_value,dtlrate,sumqty,rela_id,rela_id1,rule_id,rate,b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,ckd_amot4,zdesc,bod_cd1,bod_cd2,bod_cd3,sta_id1,type_id,rate0,drawprice,costprice,b.invo_cd,invo_dt,busiframe_id,b.platform_id,bf3_id,b.bf_id,amot1,amot2,b.channel_id,b.channel_dtl_id,b.dtl_id
		from tb_bill_dtl_250717 b,tb_bill c
		where b.bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))
			and b.bod_id=c.old_id

select b.* from tb_bill a,tb_bill_dtl b where a.bod_type_id in (30,36,37) and a.bod_id=b.bod_id


insert into tb_bill_stadtl (bod_id,dtl_id,sta_id,mate_id,agent_id,med_id,rate,rule_id,ckd_amot,ckd_amot1,ckd_amot2,ckd_amot3,amot1,rate1,rate2)
	select c.bod_id,dtl_id=null,h.sta_id,mate_id,h.agent_id,h.med_id,h.rate,h.rule_id,h.ckd_amot,h.ckd_amot1,h.ckd_amot2,h.ckd_amot3,h.amot1,rate1,rate2
		from tb_bill_stadtl_250717 h,tb_bill c
		where h.bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (30,36,37))
			and h.bod_id=c.old_id 

select * from tb_bill_dtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (37))
select * from tb_bill_dtl where bod_id in (select bod_id from tb_bill where bod_type_id in (37))

select bod_type='采购',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST, material_code=a.MATNR,med_code='',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit=''
from tb_bill_dtl b 
inner join SAP_ZSD_015 a on b.med_id=a.rec_id 
where b.bod_id=1780

select j.dtl_id,j.med_id,j.price,j.amot,a.*,c.mate_name,agent=b.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname 
from tb_bill_dtl j 
inner join tb_bill a on j.med_id=a.bod_id 
left join tb_busimate b on a.agent_id =b.mate_id 
left join tb_busimate c on a.dst_id =c.mate_id 
left join tb_staff d on a.creat_by =d.sta_id 
left join tb_staff e on a.check_by =e.sta_id 
left join tb_staff f on a.broker_id =f.sta_id 
left join tb_staff g on a.carry_by =g.sta_id 
left join tb_staff h on a.receipt_by =h.sta_id 
left join tb_staff i on a.storage_by =i.sta_id 
where j.bod_id=1782

select * from tb_bill where bod_type_id=30
select * from tb_bill where bod_type_id in (35)

select * from tb_bill_250717 where bod_type_id in (35)

select * from tb_bill_dtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (35))
--select * from tb_bill_stadtl_250717 where bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (35))

select * from tb_billid where bod_type_id in (35)

insert into tb_bill (comp_id,bod_cd,src_id,dst_id,bod_status_id,bod_type_id,busi_type,sub_busi_id,cate_id,stock_id,bod_amot,ckd_amot,ckd_amot1,creat_by,creat_dt,carry_by,carry_dt,check_by,check_dt,cash_by,cash_dt,delete_by,delete_dt,receipt_by,receipt_dt,bod_desc,relative_id,prncount,settle_type,allo_desc,broker_id,level_id1,level_id2,level_id3,agent_id,district_id,storage_by,mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,storage_dt,bod_desc1,bod_desc2,bank_id,carry_way,zmemo,med_id,order_id,invo_cd,submit_dt,platform_id,ckd_amot2,ckd_amot3,bf_id,channel_id,channel_dtl_id,data_type_id,prod_line_id,sale_team_id,old_id)
	select comp_id,bod_cd+'A',src_id,dst_id,bod_status_id,bod_type_id,busi_type,sub_busi_id,cate_id,stock_id,bod_amot,ckd_amot,ckd_amot1,creat_by,creat_dt,carry_by,carry_dt,check_by,check_dt,cash_by,cash_dt,delete_by,delete_dt,receipt_by,receipt_dt,bod_desc,relative_id,prncount,settle_type,allo_desc,broker_id,level_id1,level_id2,level_id3,agent_id,district_id,storage_by,mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,storage_dt,bod_desc1,bod_desc2,bank_id,carry_way,zmemo,med_id,order_id,invo_cd,submit_dt,platform_id,ckd_amot2,ckd_amot3,bf_id,channel_id,channel_dtl_id,data_type_id,prod_line_id,sale_team_id,bod_id
	  from tb_bill_250717 where bod_type_id in (35)

insert into tb_bill_dtl (bod_id,level_id1,level_id2,level_id3,lead_id,sta_id,stock_id,med_id,bat_cd,price,price1,price2,price3,qty,qty1,qty2,discount,cost,amot,valid_dt,rela_value,dtlrate,sumqty,rela_id,rela_id1,rule_id,rate,ckd_amot1,ckd_amot2,ckd_amot3,ckd_amot4,zdesc,bod_cd1,bod_cd2,bod_cd3,sta_id1,type_id,rate0,drawprice,costprice,invo_cd,invo_dt,busiframe_id,platform_id,bf3_id,bf_id,amot1,amot2,channel_id,channel_dtl_id,old_dtl_id)
	select c.bod_id,b.level_id1,b.level_id2,b.level_id3,lead_id,sta_id,b.stock_id,b.med_id,bat_cd,price,price1,price2,price3,qty,qty1,qty2,discount,cost,amot,valid_dt,rela_value,dtlrate,sumqty,rela_id,rela_id1,rule_id,rate,b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,ckd_amot4,zdesc,bod_cd1,bod_cd2,bod_cd3,sta_id1,type_id,rate0,drawprice,costprice,b.invo_cd,invo_dt,busiframe_id,b.platform_id,bf3_id,b.bf_id,amot1,amot2,b.channel_id,b.channel_dtl_id,b.dtl_id
		from tb_bill_dtl_250717 b,tb_bill c
		where b.bod_id in (select bod_id from tb_bill_250717 where bod_type_id in (35))
			and b.bod_id=c.old_id

