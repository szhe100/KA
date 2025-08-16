CREATE TABLE SAP_ZSD_Z005 (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	PARTNER	varchar(10),
	NAME_FIRST varchar(20),
	BPEXT varchar(20),
	REGION varchar(6),
	BEZEI varchar(20),
	CITY1 varchar(40),
	XBLCK varchar(1)	
);

CREATE TABLE SAP_ZSD_Z001 (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	PARTNER	varchar(10),
	NAME_ORG1	varchar(20),
STREET	varchar(60),
TAXNUMXL	varchar(60),
REGION	varchar(6),
BEZEI	varchar(20),
CITY1	varchar(40),
AUFSD	varchar(1),
LIFSD	varchar(1),
FAKSD	varchar(1),
ZCOM	varchar(60),
)

输出表:ZSD_PR02
CREATE TABLE SAP_ZSD_PR02 (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,

KOTABNR	varchar(20),
KSCHL	varchar(20),
KNUMH	varchar(20),
ZCOUNTRY	varchar(20),
ZREGIO	varchar(20),
ZCITYNUM	varchar(20),
MATNR	varchar(40),
KBETR	varchar(20),
KONWA	varchar(20),
KPEIN	varchar(20),
KMEIN	varchar(20),
DATBI	varchar(20),
DATAB	varchar(20),
LOEVM_KO	varchar(1)
)

ZSD_PR03
CREATE TABLE SAP_ZSD_PR03 (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,

KOTABNR	varchar(20),
KSCHL varchar(20),
KNUMH varchar(20),
VKORG varchar(20),
VTWEG	varchar(20),
KDGRP	varchar(20),
ZREGIO	varchar(20),
KONDA	varchar(20),
MATNR	varchar(40),
KBETR	varchar(20),
KONWA	varchar(20),
KPEIN	varchar(20),
KMEIN	varchar(20),
DATBI	varchar(20),
DATAB	varchar(20),
LOEVM_KO varchar(1)
)
ZSD_BUS
CREATE TABLE SAP_ZSD_BUS (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,

ZID		varchar(20),
VTWEG	varchar(20),
KDGRP		varchar(20),
ZCOUNTRY		varchar(20),
LANDX50		varchar(50),
ZREGIO		varchar(20),
BEZEI		varchar(20),
ZCITYNUM		varchar(20),
CITYNAME		varchar(20),
ZCNTYNUM		varchar(20),
CNTYNAME		varchar(20),
MATNR		varchar(40),
ARKTX		varchar(40),
ZGG		varchar(60),
ZSCQY		varchar(60),
ZCPXSX		varchar(20),
PARTNER		varchar(20),
BU_SORT1		varchar(20),
BZIRK		varchar(20),
BZTXT		varchar(20),
VKBUR		varchar(20),
VKBUR_TXT		varchar(20),
VKGRP		varchar(20),
VKGRP_TXT		varchar(20),
ZPLOT		varchar(20),
ZPLOT_T varchar(20),
ZAREA varchar(20),
ZAREA_T varchar(20),
DATE_FROM		varchar(20),
DATE_TO		varchar(20),
ZSFSX		varchar(1),
ZAEDAT	varchar(20),
ZAEDAT1	varchar(20),
TABLE_NAME	varchar(20)
)

CREATE TABLE SAP_ZSD_MARA (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
MATNR	varchar(40),
PMATN	varchar(40),
ZTYM	varchar(200),
ZGG	varchar(60),
ZBCSX	varchar(200),
MAKTX	varchar(40),
MEINS	varchar(20),
MSEHT	varchar(20),
ZSSXKCYR	varchar(40),
ZSCQY	varchar(60),
ZDBZ	varchar(40),
EXTWG	varchar(20),
EWBEZ	varchar(20),
TWEWT	varchar(40),
ZJX	varchar(20),
ZJXMS	varchar(30),
MSTAE	varchar(2),
LVORM	varchar(1)
)

select top 10 * from SAP_ZSD_015

CREATE TABLE SAP_ZSD_015 (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,

AUDAT	varchar(20),
WADAT_IST	varchar(20),
BEZEI	varchar(6),
VTWEG	varchar(20),
VTEXT	varchar(20),
KDGRP	varchar(20),
ZVTWEG	varchar(20),
VKBUR	varchar(20),
ZBEZEI	varchar(20),
VKGRP	varchar(20),
ZVKGRP	varchar(20),
ZPLOT	varchar(20),
ZPLOT_T	varchar(20),
ZAREA	varchar(20),
ZAREA_T	varchar(20),
ZCPXSX	varchar(20),
ZSALESID	varchar(20),
ZSALESNAM	varchar(50),
ZSALESID_O	varchar(20),
ZSALESNAM_O	varchar(50),
ZCOUNTRY	varchar(3),
ZREGIO	varchar(20),
ZZREGION	varchar(20),
ZCITYNUM	varchar(20),
ZCITYNAME	varchar(20),
VKORG	varchar(20),
ZVKORG	varchar(20),
KUNNR	varchar(20),
NAME1	varchar(100),
ASSIGNED_BP	varchar(20),
NAME_FIRST	varchar(40),
VBELN	varchar(10),
GBELN	varchar(10),
BOLNR	varchar(35),
MATNR	varchar(40),
ARKTX	varchar(40),
ZGG	varchar(200),
ZSCQY	varchar(200),
CHARG	varchar(20),
VFDAT	varchar(20),
KWMENG	varchar(20),
ZPR03	varchar(20),
ZKHJE	varchar(20),
ZKONV	varchar(20),
KZWI5	varchar(20),
ZREC	varchar(20),
BSTKD	varchar(200),
ZTERMNAME	varchar(50),
ERNAM	varchar(20),
ZTERNAM	varchar(40),
USNAM	varchar(20),
ZUSNAM	varchar(40)
)


if exists (select 1 from SAP_ZSD_Z001 where PARTNER='100022') update SAP_ZSD_Z001 set NAME_ORG1='东莞市海天药品有限公司',STREET='东莞市东城街道梨川红川路12号厂房自编302',TAXNUMXL='',REGION='44',BEZEI='广东省',CITY1='东莞市',AUFSD='',LIFSD='',FAKSD='',ZCOM='' where PARTNER='100022' else 
insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM) values ( '100022','东莞市海天药品有限公司','东莞市东城街道梨川红川路12号厂房自编302','','44','广东省','东莞市','','','','' )

insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM)
values ( '100022','东莞市海天药品有限公司','东莞市东城街道梨川红川路12号厂房自编302','','44','广东省','东莞市','','','','' )


insert into SAP_ZSD_Z001 (PARTNER,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM)
values ( '100022','','44','广东省','东莞市','','','','' )

select * from SAP_ZSD_PR02  SAP_ZSD_Z001
truncate table SAP_ZSD_Z001

truncate table SAP_ZSD_PR02

select * from SAP_ZSD_PR02

select * from SAP_ZSD_PR03

if exists (select 1 from SAP_ZSD_Z005 where PARTNER='0001000029') update SAP_ZSD_Z005 set NAME_FIRST='未知负责人',BPEXT='000000',REGION='44',BEZEI='广东省',CITY1='广州市',XBLCK='' where PARTNER='0001000029' else insert into SAP_ZSD_Z005 (PARTNER,NAME_FIRST,BPEXT,REGION,BEZEI,CITY1,XBLCK) values ( '0001000029','未知负责人','000000','44','广东省','广州市','' )


if exists (select 1 from SAP_ZSD_Z001 where PARTNER='100019') update SAP_ZSD_Z001 set NAME_ORG1='广州瑞腾生物医药科技有限公司',STREET='惠州市桥东路北二巷7号1楼101室、102室、103室、105室、106室，二楼202室、203室，三楼303室，四楼4',TAXNUMXL='9841161159515295',REGION='44',BEZEI='广东省',CITY1='广州市',AUFSD='',LIFSD='',FAKSD='',ZCOM='' where PARTNER='100019' else insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM) values ( '100019','广州瑞腾生物医药科技有限公司','惠州市桥东路北二巷7号1楼101室、102室、103室、105室、106室，二楼202室、203室，三楼303室，四楼4','9841161159515295','44','广东省','广州市','','','','' )

if exists (select 1 from SAP_ZSD_PR02 where KNUMH='0000007392') 
update SAP_ZSD_PR02 set KOTABNR='603',KSCHL='PR02',KNUMH='0000007392',ZCOUNTRY='CN',ZREGIO='44',ZCITYNUM='',MATNR='10000020',KBETR='1.00',KONWA='CNY',KPEIN='1',KMEIN='盒',DATBI='Fri Dec 31 00:00:00 GMT+08:00 9999',DATAB='Sun Apr 07 00:00:00 GMT+08:00 2024',LOEVM_KO='' where KNUMH='0000007392' 
else 
insert into SAP_ZSD_PR02 (KOTABNR,KSCHL,KNUMH,ZCOUNTRY,ZREGIO,ZCITYNUM,MATNR,KBETR,KONWA,KPEIN,KMEIN,DATBI,DATAB,LOEVM_KO) 
values ( '603','PR02','0000007392','CN','44','','10000020','1.00','CNY','1','盒','Fri Dec 31 00:00:00 GMT+08:00 9999','Sun Apr 07 00:00:00 GMT+08:00 2024','' )

insert into SAP_ZSD_PR02 (KOTABNR,KSCHL,KNUMH,ZCOUNTRY,ZREGIO,ZCITYNUM,MATNR,KBETR,KONWA,KPEIN,KMEIN,DATBI,DATAB,LOEVM_KO) 
values ( '603','PR02','0000007392','CN','44','','10000020','1.00','CNY','1','盒','','','' )


if exists (select 1 from SAP_ZSD_BUS where ZID='0000001079') update SAP_ZSD_BUS set VTWEG='10',KDGRP='10',ZCOUNTRY='CN',LANDX50='中国',ZREGIO='44',BEZEI='广东省',ZCITYNUM='4401',CITYNAME='广州市',ZCNTYNUM='440103',CNTYNAME='荔湾区',MATNR='10000018',ARKTX='盐酸依匹斯汀颗粒.10mg/袋×6袋/盒×400盒/箱.广州一品红制药有限公司',ZGG='0.1g',ZSCQY='广州一品红制药有限公司',ZCPXSX='C线',PARTNER='20500480',BU_SORT1='黄丹红',BZIRK='100001',BZTXT='RX营销中心',VKBUR='1000',VKBUR_TXT='广东销售事业部',VKGRP='101',VKGRP_TXT='广州销售一部',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',DATE_FROM='2023-10-01 00:00:00',DATE_TO='2023-12-03 00:00:00',ZSFSX='',ZAEDAT='2025-04-26 21:17:01',ZAEDAT1='2024-11-14 00:00:00',TABLE_NAME='ZSDT012' where ZID='0000001079' else insert into SAP_ZSD_BUS (ZID,VTWEG,KDGRP,ZCOUNTRY,LANDX50,ZREGIO,BEZEI,ZCITYNUM,CITYNAME,ZCNTYNUM,CNTYNAME,MATNR,ARKTX,ZGG,ZSCQY,ZCPXSX,PARTNER,BU_SORT1,BZIRK,BZTXT,VKBUR,VKBUR_TXT,VKGRP,VKGRP_TXT,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,DATE_FROM,DATE_TO,ZSFSX,ZAEDAT,ZAEDAT1,TABLE_NAME) values ( '0000001079','10','10','CN','中国','44','广东省','4401','广州市','440103','荔湾区','10000018','盐酸依匹斯汀颗粒.10mg/袋×6袋/盒×400盒/箱.广州一品红制药有限公司','0.1g','广州一品红制药有限公司','C线','20500480','黄丹红','100001','RX营销中心','1000','广东销售事业部','101','广州销售一部','','','','','2023-10-01 00:00:00','2023-12-03 00:00:00','','2025-04-26 21:17:01','2024-11-14 00:00:00','ZSDT012' )

truncate table SAP_ZSD_BUS
select * from SAP_ZSD_BUS

if exists (select 1 from SAP_ZSD_MARA where MATNR='10000001') 
update SAP_ZSD_MARA set PMATN='',ZTYM='盐酸克林霉素棕榈酸酯分散片',ZGG='75mg×6片/板×3板/盒×720盒/箱',ZBCSX='',MAKTX='盐酸克林霉素棕榈酸酯分散片.75mg×6片/板×3板/盒×720盒/箱',MEINS='盒',MSEHT='盒',ZSSXKCYR='一品红生物医药有限公司',ZSCQY='广州一品红制药有限公司',ZDBZ='',EXTWG='10010',EWBEZ='化学药制剂，片剂',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000001' else insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) values ( '10000001','','盐酸克林霉素棕榈酸酯分散片','75mg×6片/板×3板/盒×720盒/箱','','盐酸克林霉素棕榈酸酯分散片.75mg×6片/板×3板/盒×720盒/箱','盒','盒','一品红生物医药有限公司','广州一品红制药有限公司','','10010','化学药制剂，片剂','','','','','' )
if exists (select 1 from SAP_ZSD_MARA where MATNR='10000016') 
update SAP_ZSD_MARA set PMATN='',ZTYM='鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草',ZGG='100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶',
ZBCSX='100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×1',
MAKTX='鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×1',MEINS='瓶',MSEHT='瓶',
ZSSXKCYR='一品红生物医药有限公司',ZSCQY='广州一品红制药有限公司',ZDBZ='',EXTWG='10010',EWBEZ='化学药制剂，片剂',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000016' else 
insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000016','','鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草','100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶','100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×1','鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×1','瓶','瓶','一品红生物医药有限公司','广州一品红制药有限公司','','10010','化学药制剂，片剂','','','','','' )


select len('鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草')
select len('100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×1')

truncate table SAP_ZSD_MARA
select * from SAP_ZSD_MARA

insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000016','','鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草','100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶','100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×1','鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×1','瓶','瓶','一品红生物医药有限公司','广州一品红制药有限公司','','10010','化学药制剂，片剂','','','','','' )

insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX) 
values 
( '10000016','',
'鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草',
'100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶',
'100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶×10瓶/条×60条/箱100片/瓶100片/瓶×1',
'鱼腥草素钠片.100片/瓶×10瓶/条×60条/箱鱼腥草素钠片.100片/瓶×1')

--,'瓶','瓶','一品红生物医药有限公司','广州一品红制药有限公司','','10010')

,'化学药制剂，片剂','','','','','' )


if exists (select 1 from SAP_ZSD_MARA where MATNR='10000076') update SAP_ZSD_MARA set PMATN='',ZTYM='',ZGG='',ZBCSX='',MAKTX='南板蓝根颗粒干浸膏粉',MEINS='千克',MSEHT='kg',ZSSXKCYR='',ZSCQY='',ZDBZ='',EXTWG='20013',EWBEZ='中间产品，原料药中间体',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000076' else 
insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000076','','','','','南板蓝根颗粒干浸膏粉','千克','kg','','','','20013','中间产品，原料药中间体','','','','','' )


if exists (select 1 from SAP_ZSD_015 where GBELN='' and LPOSNR='000000') /* 交货单+交货单行号为唯一值 交货单号 GBELN LIPS-VBELN 交货单行号 LPOSNR LIPS-POSNR */ 
update SAP_ZSD_015 set AUDAT='2023-11-07 00:00:00',WADAT_IST='2025-04-26 22:38:30',BEZEI='标准订单',VTWEG='',VTEXT='',KDGRP='19',ZVTWEG='',VKBUR='',ZBEZEI='',VKGRP='',ZVKGRP='',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',ZCPXSX='',ZSALESID='',ZSALESNAM='',ZSALESID_O='',ZSALESNAM_O='',ZCOUNTRY='',ZREGIO='',ZZREGION='',ZCITYNUM='',ZCITYNAME='',VKORG='8202',ZVKORG='',KUNNR='8205',NAME1='广东泽瑞药业有限公司',ASSIGNED_BP='',NAME_FIRST='',VBELN='198',MATNR='10000018',ARKTX='馥感啉口服液.10ml/支×6支/盒×100盒/箱',ZGG='10ml/支×6支/盒×100盒/箱',ZSCQY='一品红制药有限公司',CHARG='',VFDAT='2025-04-26 22:38:30',KWMENG='0.000',ZPR03='0.000',ZKHJE='0.00',ZKONV='0.000',KZWI5='0.00',ZREC='0.00',BSTKD='4100000202',ZTERMNAME='',ERNAM='',ZTERNAM='123456',USNAM='JT_ZHANGYQ',ZUSNAM='123456' where GBELN='' and LPOSNR='000000' 
else 
insert into SAP_ZSD_015 ( AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM ) values ( '2023-11-07 00:00:00','2025-04-26 22:38:30','标准订单','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','广东泽瑞药业有限公司','','','198','','','10000018','馥感啉口服液.10ml/支×6支/盒×100盒/箱','10ml/支×6支/盒×100盒/箱','一品红制药有限公司','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456','JT_ZHANGYQ','123456' )

insert into SAP_ZSD_015 ( AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM )
values 
( '2023-11-07 00:00:00','2025-04-26 22:38:30','标准订单','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','广东泽瑞药业有限公司','','','198','','','10000018','馥感啉口服液.10ml/支×6支/盒×100盒/箱','10ml/支×6支/盒×100盒/箱','一品红制药有限公司','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456','JT_ZHANGYQ','123456' )

insert into SAP_ZSD_015 (BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM)
values 
('标准订单','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','广东泽瑞药业有限公司','','','198','','','10000018','一品红制药有限公司','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456')

truncate table SAP_ZSD_015
select * from SAP_ZSD_015

select * from SAP_ZSD_MARA
select * into tb_medicine_250428 from tb_medicine

truncate table tb_medicine

insert into tb_medicine (
	material_code,material_code1,
	med_name,specifi,
	pack_desc,
	material_desc,
	unit_id,
	med_holder,
	pdt_place,
	qtyperpack1,
	material_medium,
	medium_desc,
	appv_docu,
	med_type_id
)
select material_code=MATNR,material_code1=PMATN,
	med_name=ZTYM,specifi=ZGG,
	pack_desc=ZBCSX,
	material_desc=MAKTX,
	unit_id=b.obj_id,
	med_holder=ZSSXKCYR,
	pdt_place=ZSCQY,
	qtyperpack=ZDBZ,
	material_medium=EXTWG,
	medium_desc=EWBEZ,
	appv_docu=TWEWT,
	catlog_id=c.mc_id
	from SAP_ZSD_MARA a
	left join (select obj_id,zdesc from tb_object where obj_type_id=0) b on a.MEINS=b.zdesc
	left join tb_medcatlog c on a.ZJXMS=c.mc_title
	where ZTYM<>''


alter table tb_medicine  add material_desc varchar(200)
alter table tb_medicine  add material_medium varchar(50)

alter table tb_medicine  add qtyperpack1 varchar(50)
ZJX
剂型描述	ZJXMS
select distinct ZJXMS from SAP_ZSD_MARA order by ZJXMS
select distinct ZJXMS from SAP_ZSD_MARA where ZJXMS not in (select mc_title from tb_medcatlog)

select * from tb_medcatlog

update tb_medcatlog set mc_cd=cast(mc_id as varchar(2)) where mc_cd=''


insert into tb_medcatlog (mc_parent,mc_title,mc_cd) 
select distinct mc_parent=-1,ZJXMS,mc_cd='' from SAP_ZSD_MARA where ZJXMS not in (select mc_title from tb_medcatlog) and ZJXMS<>''


update tb_medcatlog set mc_title='胶囊剂' where mc_id=2

select distinct MEINS,MSEHT from SAP_ZSD_MARA where MSEHT not in (select zdesc from tb_object where obj_type_id=0)

select * from tb_object where obj_type_id=0
insert into tb_object (comp_id,obj_type_id,zdesc) values (1,0,'kg')


物料编码	MATNR
定价参考物料编码	PMATN
通用名	ZTYM
规格	ZGG
包装说明	ZBCSX
物料描述	MAKTX
基本单位	MEINS
基本单位文本	MSEHT
上市许可持有人	ZSSXKCYR
生产企业	ZSCQY
装箱规格	ZDBZ
物料中类	EXTWG
中类描述	EWBEZ
批准文号	TWEWT
剂型	ZJX
剂型描述	ZJXMS
物料状态	MSTAE
删除标识	LVORM

truncate table tb_medicine

select * into tb_medicine_250427 from tb_medicine


 if exists (select 1 from SAP_ZSD_BUS where ZID='0000055878')
                        update SAP_ZSD_BUS
                            set VTWEG='00',KDGRP='19',ZCOUNTRY='CN',LANDX50='中国',ZREGIO='44',BEZEI='广东省',ZCITYNUM='',CITYNAME='',ZCNTYNUM='',CNTYNAME='',MATNR='1000023900',ARKTX='复方甲氧那明胶囊.12.5mg×60粒/盒.100盒/箱.第一三共.第一 三共',ZGG='盐酸甲氧那明12.5mg,那可丁7mg,氨茶碱25mg,马来酸氯苯那敏2mg×60粒/盒',ZSCQY='第一三共制药（上海）有限公司',ZCPXSX='总部营销',PARTNER='20100021',BU_SORT1='龙晓曲',BZIRK='000001',BZTXT='总部营销',VKBUR='0001',VKBUR_TXT='总部营销',VKGRP='001',VKGRP_TXT='总部营销',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',DATE_FROM='2024-01-01 00:00:00',DATE_TO='2025-03-31 00:00:00',ZSFSX='',ZAEDAT='2024-07-02 00:00:00',ZAEDAT1='2025-02-27 00:00:00',TABLE_NAME='ZSDT012'
                            where ZID='0000055878'
                    else
                        insert into SAP_ZSD_BUS (ZID,VTWEG,KDGRP,ZCOUNTRY,LANDX50,ZREGIO,BEZEI,ZCITYNUM,CITYNAME,ZCNTYNUM,CNTYNAME,MATNR,ARKTX,ZGG,ZSCQY,ZCPXSX,PARTNER,BU_SORT1,BZIRK,BZTXT,VKBUR,VKBUR_TXT,VKGRP,VKGRP_TXT,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,DATE_FROM,DATE_TO,ZSFSX,ZAEDAT,ZAEDAT1,TABLE_NAME)
                        values (
                            '0000055878','00','19','CN','中国','44','广东省','','','','','1000023900','复方甲氧那明胶囊.12.5mg×60粒/盒.100盒/箱.第一三共.第一三共','盐酸甲氧那明12.5mg,那可丁7mg,氨茶碱25mg,马来酸氯苯那敏2mg×60粒/盒','第一三共制药（上海）有限公司','总部营销','20100021','龙晓曲','000001','总部营销','0001','总部营销','001','总部营销','','','','','2024-01-01 00:00:00','2025-03-31 00:00:00','','2024-07-02 00:00:00','2025-02-27 00:00:00','ZSDT012'
                        )

select * from SAP_ZSD_015
select * from SAP_ZSD_BUS
select * from SAP_ZSD_MARA
select * from SAP_ZSD_PR02
select * from SAP_ZSD_PR03
select * from SAP_ZSD_Z001
select * from SAP_ZSD_Z005

truncate table SAP_ZSD_BUS
truncate table SAP_ZSD_015



select 1 from SAP_ZSD_015 where GBELN='80020791' and LPOSNR='900001'


if exists (select 1 from SAP_ZSD_015 where GBELN='80020791' and LPOSNR='900001')
                        update SAP_ZSD_015
                            set AUDAT='2025-03-12 00:00:00',WADAT_IST='2025-03-13 00:00:00',BEZEI='标准订单',VTWEG='10',VTEXT='分销',KDGRP='11',ZVTWEG='',VKBUR='',ZBEZEI='',VKGRP='',ZVKGRP='',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',ZCPXSX='',ZSALESID='',ZSALESNAM='',ZSALESID_O='20000565',ZSALESNAM_O='杨帆',ZCOUNTRY='CN',ZREGIO='35',ZZREGION='福建省',ZCITYNUM='3509',ZCITYNAME='宁德市',VKORG='8202',ZVKORG='',KUNNR='102657',NAME1='宁德鹭燕医药有限公司',ASSIGNED_BP='1001009',NAME_FIRST='谢芳',VBELN='17457',MATNR='1000016700',ARKTX='磷酸奥司他韦胶囊',ZGG='75mg×10粒',ZSCQY='广州一品红制药有限公司',CHARG='209825002',VFDAT='2027-06-30 00:00:00',KWMENG='21600.000',ZPR03='18.930',ZKHJE='408888.00',ZKONV='18.930',KZWI5='408888.00',ZREC='0.00',BSTKD='KH.22.20241206.017',ZTERMNAME='立即付款',ERNAM='20100218',ZTERNAM='林锦如',USNAM='20100218',ZUSNAM='林锦如'
                            where GBELN='80020791' and LPOSNR='900001'
                    else
                        insert into SAP_ZSD_015 (
                            AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM
                        )
                        values (
                            '2025-03-12 00:00:00','2025-03-13 00:00:00','标准订单','10','分销','11','','','','','','','','','','','','','20000565','杨帆','CN','35','福建省','3509','宁德市','8202','','102657','宁德鹭燕医药有限公司','1001009','谢芳','17457','80020791','','1000016700','磷酸奥司他韦胶囊','75mg×10粒','广州一品红制药有限公司','209825002','2027-06-30 00:00:00','21600.000','18.930','408888.00','18.930','408888.00','0.00','KH.22.20241206.017','立即付款','20100218',' 林锦如','20100218','林锦如'
                        )

接口字段	长度	描述
PARTNER	10	客户编号 m
NAME_ORG1	20	客户
STREET	60	注册地址
TAXNUMXL	60	社会信用代码
REGION	6	省份
BEZEI	20	省份名称
CITY1	40	城市
AUFSD	1	销售冻结
LIFSD	1	交货冻结
FAKSD	1	开票冻结
ZCOM	60	备注

select tax_code from tb_busimate
alter table tb_busimate add region varchar(6)

select * from tb_busimate

select * into tb_busimate1 from tb_busimate

select count(1) from SAP_ZSD_Z005
select * from SAP_ZSD_PR02

truncate table SAP_ZSD_PR02

insert into tb_busimate (mate_type_id,mate_code,mate_name,address,tax_code,district,region,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=b.rec_id,region=a.region,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

 select top 10 * from tb_treedata where district ='广东省 广州市'

select * from SAP_ZSD_Z001
select * from SAP_ZSD_Z005

insert into tb_busimate1 (mate_type_id,mate_code,mate_name,address,tax_code,district,region,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=b.rec_id,region=a.region,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

 PARTNER	10.00	业务负责人编号
NAME_FIRST	20.00	业务负责人姓名
BPEXT	20.00	身份证号码
REGION	6.00	省份
BEZEI	20.00	省份名称
CITY1	40.00	城市
XBLCK	1.00	集中冻结
select * from tb_busimate where mate_type_id=2

导入商业公司
insert into tb_busimate (mate_type_id,mate_code,mate_name,address,tax_code,district,region,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=b.rec_id,region=a.region,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

 select mate_code,mate_id=max(mate_id),count(1) from tb_busimate where mate_type_id=2 group by mate_code having count(1)>1

 delete from tb_busimate where mate_id in (5850,6217,6536,6607,7368)

update tb_busimate set qry_code=dbo.fn_getpy(mate_name) where isnull(qry_code,'')=''


select count(1) from SAP_ZSD_Z005
导入业务负责人
 insert into tb_busimate (mate_type_id,mate_code,mate_name,personalID,district,region)
select mate_type_id=4,mate_code=partner,mate_name=NAME_FIRST,personalID=BPEXT,district=b.rec_id,region=a.region
 from SAP_ZSD_Z005 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

select mate_code,count(1) from tb_busimate where mate_type_id=4 group by mate_code having count(1)>1

select mate_id,mate_name,mate_type_id,district from tb_busimate where mate_type_id=4 and mate_code='0001002102'
delete from tb_busimate where mate_id=4691
delete 
select a.*, mate_type_id=4,mate_code=partner,mate_name=NAME_FIRST,personalID=BPEXT,district=b.rec_id,region=a.region
 from SAP_ZSD_Z005 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)
 where a.partner='0001002102'

select * from tb_busimate where district=332

update tb_busimate set district=332 where district=1456

 select * into tb_treedata_250507 from tb_treedata

select *,rtrim(a.BEZEI)+' '+rtrim(a.city1) from SAP_ZSD_Z005 a where a.partner='0001002102'

select * from tb_treedata where parent=38 -- district='甘肃省 定西市'

select count(1) from tb_busimate where mate_type_id=4

delete from tb_treedata where rec_id=1456

delete from tb_busimate where mate_type_id=4

delete from tb_busimate where mate_type_id=2
select * from SAP_ZSD_Z001

truncate table SAP_ZSD_Z001

select * from tb_busimate where mate_type_id=2
select * from tb_busimate where mate_type_id=4

select top 10 * from tb_district
select top 10 * from tb_medprice
select * from SAP_ZSD_PR02
select * from SAP_ZSD_PR03
truncate table SAP_ZSD_PR03

alter table tb_medprice add KNUMH varchar(10)  currency varchar(5)
alter table tb_medprice add sale_team_id int

select a.rec_id, ZCOUNTRY,a.zregio,a.ZCITYNUM, type_id=1,district=b.rec_id,material_code1=a.MATNR,price=KBETR,currency=KONWA,price_unit=KMEIN,valid_from=DATBI,valid_to=DATAB
 from SAP_ZSD_PR02 a
 left join tb_district b on a.ZCOUNTRY=b.country and b.prov_code=a.zregio+'00'  -- and (b.city_name=''
 where a.zregio='46'
 order by  a.rec_id,ZCOUNTRY,a.zregio,a.ZCITYNUM

insert into tb_medprice (type_id,KNUMH,district_id,med_id,price,currency,price_unit,valid_from,valid_to)
select type_id=1,KNUMH,district=b.rec_id,m.med_id,price=KBETR,currency=KONWA,price_unit=KMEIN,valid_from=DATBI,valid_to=DATAB
 from SAP_ZSD_PR02 a
 left join tb_district b on a.ZCOUNTRY=b.country and b.city_code=a.zregio+'00'  -- and (b.city_name=''
 left join tb_medicine m on a.matnr=m.material_code

select * from tb_medprice where type_id=1
delete from tb_medprice where type_id=1
delete from tb_medprice where type_id=2


select * from SAP_ZSD_PR02
select * from SAP_ZSD_PR03

insert into tb_medprice (type_id,KNUMH,channel_id,channel_dtl_id,sale_team_id,cust_group_id,district_id,med_id,price,currency,price_unit,valid_from,valid_to)
select type_id=2,KNUMH,channel_id=c.obj_id,channel_dtl_id=d.obj_id,sale_team_id=f.obj_id,cust_group_id=e.obj_id,district=b.rec_id,m.med_id,price=KBETR,currency=KONWA,price_unit=KMEIN,valid_from=DATBI,valid_to=DATAB
 from SAP_ZSD_PR03 a
 left join tb_district b on b.city_code=a.zregio+'00'  -- and (b.city_name=''
 left join tb_medicine m on a.matnr=m.material_code
 left join (select * from tb_object where obj_type_id=11) c on a.VTWEG=c.obj_code
 left join (select * from tb_object where obj_type_id=12) d on a.KDGRP=d.obj_code
 left join (select * from tb_object where obj_type_id=13) e on a.KONDA=e.obj_code
 left join (select * from tb_object where obj_type_id=16) f on a.VKORG=f.obj_code
 
 select * from tb_object where obj_type_id=11 
 select * from tb_object where obj_type_id=12

 select * from SAP_ZSD_PR03

select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*, dist1=d.prov_name, dist2=d.city_name, creater=c.zname from tb_medprice a left join tb_medicine m on a.med_id =m.med_id left join tb_staff c on a.creat_by =c.sta_id left join tb_district d on a.district_id =d.rec_id where type_id=1

select * from tb_medprice where type_id=1 and currency<>''

delete from tb_medprice where type_id=1 and currency<>''

select * from tb_district where country='CN' and prov_code='46' and city_code=''

select * from SAP_ZSD_PR02
select * from tb_medprice 
接口字段	长度	描述
KOTABNR	3	表名
KSCHL	4	条件类型
KNUMH	10	条件记录编号
ZCOUNTRY	3	国家代码
ZREGIO	3	业务省份
ZCITYNUM	4	业务城市
MATNR	40	物料
KBETR	11	条件金额
KONWA	5	条件货币
KPEIN	5	定价单位
KMEIN	3	计量单位
DATBI	8	有效期自
DATAB	8	有效期至
LOEVM_KO	1	删除标识

KOTABNR	表名
KSCHL	条件类型
KNUMH	条件记录编号
VKORG	销售组织
VTWEG	渠道
KDGRP	子渠道
ZREGIO	业务省份
KONDA	客户价格组
MATNR	物料
KBETR	条件金额
KONWA	条件货币
KPEIN	定价单位
KMEIN	计量单位
DATBI	有效期自
DATAB	有效期至
LOEVM_KO	删除标识


select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*, dist1=d.prov_name, dist2=d.city_name, creater=c.zname 
from tb_medprice a 
left join tb_medicine m on a.med_id =m.med_id 
left join tb_staff c on a.creat_by =c.sta_id 
left join tb_district d on a.district_id =d.rec_id 
where type_id=1

select * from tb_medprice where type_id=1

select * from SAP_ZSD_BUS where KDGRP in ('10','19')

select top 100 a.*,channel=b.zdesc,channel_dtl=c.zdesc from SAP_ZSD_BUS a
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=11) b on a.VTWEG=b.obj_code
left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=12) c on a.KDGRP=c.obj_code
where 1=1 

select top 10  a.*,channel=b.zdesc,channel_dtl=c.zdesc from SAP_ZSD_BUS a left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=11) b on a.VTWEG=b.zdesc left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=12) c on a.KDGRP=c.zdesc
where 1=1 


2、KA取值：
子渠道编码为10和19的数据对接到商业采购入库单界面；
除10和19外的数据对接到分销采购入库单界面。
其中子渠道为12、13、16需同时对接到新零售商业采购入库

CREATE TABLE tb_district (
    rec_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	country varchar(10),
	prov_code varchar(10),
	prov_name varchar(50),
	city_code varchar(10),
	city_name varchar(50),
	county_code varchar(10),
	county_name varchar(50)
)
select *  from tb_district where prov_code='15'

select *,ltrim(county_name) from tb_district
update tb_district set county_name=ltrim(county_name) 

select top 10 * from SAP_ZSD_BUS
select top 10 * from SAP_ZSD_015
select top 10 * from vi_ZSD_015

select top 10 * from SAP_ZSD_015 where KDGRP in ('10','19')

update sap_zsd_015 set audat='2024-04-23 00:00:00' where rec_id=1

update sap_zsd_015 set audat='2024-04-23 00:00:00' where rec_id=1

        update SAP_ZSD_015 
            set creat_dt=cast( AUDAT as datetime)

select top 10 bod_id,bod_cd,busi_type from tb_bill


select * into SAP_ZSD_015_250430 from SAP_ZSD_015

2、KA取值：
 子渠道编码为10和19的数据对接到商业采购入库单界面；
 除10和19外的数据对接到分销采购入库单界面。
 其中子渠道为12、13、16需同时对接到新零售商业采购入库单界面

何工，昨天说的新零售商业采购入库单数据接口也有数据了，ZSDFG_IF_001_U026 SAP-新KA系统交货数据信息  这个接口，中子渠道为12、13、16需同时对接到新零售商业采购入库单界面

3、建议加入分销的出库单的自动更新到此页面，增加一个字段区分“商业”与"分销"

select a.*,busi_type=2 from vi_ZSD_015 a where KDGRP not in ('12','13','16')  and a.creat_dt>= '2025-05-05' and a.creat_dt< dateadd(day,1,'2025-05-05')

select top 10 * from tb_bill where bod_type_id=2 and cate_id=6


select *,broker=dbo.fn_staff_name(link_id),creater=dbo.fn_staff_name(creat_by) from tb_linkdata where type_id=1 and id=3

select * from tb_staff where sta_type_id=1
update tb_staff set sta_type_id=1 where sta_id=19277

邓纯清

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100)) 
insert into @tab (line_no,f1,f2) 
select 2,'江门市康睿医疗信息技术有限公司','邓纯清' 
select * from @tab
select top 5 info=line_no+'行推广服务商名称不存在' from @tab a where f1='' or not exists (select 1 from tb_busimate b where mate_type_id=10 and b.mate_name=a.f1)

union all select top 5 '第'+line_no+'行无业务员姓名或不存在' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 

select * from @tab a where not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname=a.f2) 

--select top 5 info=line_no+'行推广服务商名称不存在' from @tab where f1='' or not exists (select 1 from tb_busimate where mate_type_id=10 and mate_name=f1) 
--union all 
select * from @tab where not exists (select 1 from tb_staff b where sta_type_id=1 and zname=f2) 

select top 5 '第'+line_no+'行无业务员姓名或不存在' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 

select top 5 * from ( 
select top 5 info=line_no+'行推广服务商名称不存在' from @tab where f1='' or not exists (select 1 from tb_busimate where mate_type_id=10 and mate_name=f1) union all select top 5 '第'+line_no+'行无业务员姓名或不存在' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 
) a

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100)) 
insert into @tab (line_no,f1,f2) select 2,'江门市康睿医疗信息技术有限公司','邓纯清' 
insert into tb_linkdata (type_id,id,link_id,creat_by,creat_dt)  
select type_id=1,id=b.mate_id,link_id=c.sta_id,creat_by=19273,creat_dt=getdate() from @tab a 
inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) b on b.mate_name=a.f1 
inner join (select sta_id,zname from tb_staff where sta_type_id=1) c on c.zname=a.f2 
where not exists (select 1 from tb_linkdata l where type_id=1 and id=b.mate_id and link_id=c.sta_id) 
select @@ROWCOUNT

truncate table tb_linkdata

select *,agent=dbo.fn_mate_name(link_id),creater=dbo.fn_staff_name(creat_by) from tb_linkdata where type_id=2 and id=3

select med_id,med_name,qry_code from tb_medicine where dbo.fn_getpy(med_name) like '%YQ%'

select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY a.med_name,a.pdt_place,a.specifi,a.qtyperpack) as int),  a.med_id,med_code,material_code,material_code1,med_name,specifi,appv_docu,pdt_place,qtyperpack,qtyperbox,  med_unit=dbo.fn_obj_desc(a.unit_id),med_type=dbo.fn_med_type(a.med_id),qty=0.0000,price=0.000000,qry_code 
from tb_medicine a
where (a.med_code='yq' or a.material_code='yq' or a.material_code1='yq' or a.qry_code like'%yq%' or dbo.fn_getpy(a.med_name) like'%yq%' or a.med_name like'%yq%' or a.chm_name like'%yq%' or a.pdt_place like'%yq%')


select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY a.med_name,a.pdt_place,a.specifi,a.qtyperpack) as int),  a.med_id,med_code,material_code,material_code1,med_name,specifi,appv_docu,pdt_place,qtyperpack,qtyperbox,  med_unit=dbo.fn_obj_desc(a.unit_id),med_type=dbo.fn_med_type(a.med_id),qty=0.0000,price=0.000000,qry_code 
from tb_medicine a
where dbo.fn_getpy(a.med_name) like'%yq%'

select mate_id,mate_name from tb_busimate where mate_type_id=4

2676	向云成

select * into tb_sysframe_250430 from tb_sysframe 

truncate table tb_sysframe 

select * from tb_sysframe

select * from tb_linkdata

insert into tb_linkdata (type_id,delete_yn) values (1,1)

select *,d.mate_name,code=case type_id when 1 then b.zcode when 2 then c.mate_code end,name=case type_id when 1 then b.zname when 2 then c.mate_name end, dist1=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,1), dist2=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,2), delete_yn,status_id,confirm_dt,creater=dbo.fn_staff_name(creat_by) from tb_linkdata a left join (select sta_id,zname,zcode,district from tb_staff where sta_type_id=1) b on a.link_id=b.sta_id left join (select mate_id,mate_name,mate_code,district from tb_busimate where mate_type_id=4) c on a.link_id=c.mate_id inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) d on a.id=d.mate_id where type_id in (1,2)


insert into tb_sysframe (sf_parent,sf_title)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke)

insert into tb_sysframe (sf_parent,sf_title) values (-1,'系统设置')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'药品管理')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'业务管理')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'商业管理')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'商业结算')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'分销管理')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'分销结算')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'新零售管理')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'新零售结算')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'综合资料')

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'设置员工 ',1)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'设置用户权限 ',8)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'业务设置 ',12)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置药品',5)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置药品中标价',277)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置药品考核价',278)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置学术标准政策',279)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'设置分销标准政策',280)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置渠道',97)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置客户价格组',100)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置业务员',2)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置业务负责人',115)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置商业公司',7)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置客户(医院)',3)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置推广服务商',281)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置业务结构',53)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'设置商业级别',52)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'结账控制表',31)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'流向词语对照',85)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业采购入库单',10)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业采购综合查询',14)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业采购推广费统计',282)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业销售出库单',11)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业销售综合查询',15)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业库存查询',13)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业历史库存',86)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业盘点单-制单',55)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'商业盘点单-审核',176)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'品种流向查询',22)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-规则表',41)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-启用-业务申请',39)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-启用-业务审核',40)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-启用-财务复核',45)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-启用-财务审批',58)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-停用-业务申请',38)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-停用-业务审核',43)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-停用-财务复核',51)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用规则-停用-财务审批',59)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-规则表',67)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-启用-业务申请',72)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-启用-业务审核',73)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-启用-财务复核',74)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-启用-财务审批',75)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-停用-业务申请',81)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-停用-业务审核',82)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-停用-财务复核',83)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'医院托管费规则-停用-财务审批',84)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-应付费用记账-制单',117)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-应付费用记账-审核',133)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-汇总',95)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-付款审批-业务申请',96)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-付款审批-财务复核',98)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-付款审批-财务审批',99)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-出纳付款-查询',101)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-出纳付款-制单',102)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-出纳付款-审核',103)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-费用补差表',283)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-费用补差单-制单',284)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'业务员费用兑付-费用补差单-审核',285)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'分销采购入库单',128)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'分销采购综合查询',126)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'分销销售出库单',129)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'分销销售综合查询',127)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'设置销售促销规则',169)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'销售促销规则审批-财务申请',170)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'销售促销规则审批-财务复核',171)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'销售促销规则审批-财务审核',286)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'分销销售促销规则明细表',287)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出记账-制单',172)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出记账-审批',173)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出核销',174)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-付款审批-部门申请',175)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-付款审批-财务复核',177)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-付款审批-财务审核',178)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-出纳付款-查询',187)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-出纳付款-制单',179)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出审批付款-出纳付款-审核',180)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出收款单-制单',288)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'其他支出收款单-审批',289)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'分销返款汇总表',246)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'分销客户对账表',291)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'新零售商业采购入库',301)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'新零售商业采购入库综合查询',302)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'连锁终端销售出库单',303)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'连锁终端销售出库综合查询',304)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'零售销售出库单',305)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'零售销售综合查询',306)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'连锁终端盘点单-制单',307)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'连锁终端盘点单-审核',308)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'连锁终端库存查询',309)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'进销存对比分析表',310)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'设置购进费用政策',311)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零售购进应付记账-制单',312)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零售购进应付记账-审核',313)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用核销',314)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-付款审批-部门申请',315)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-付款审批-财务复核',316)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-付款审批-财务审核',317)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-出纳付款-查询',318)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-出纳付款-制单',319)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'购进费用审批付款-出纳付款-审核',320)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'设置动销费用政策',321)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零售动销应付记账-制单',322)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零售动销应付记账-审核',323)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用核销',324)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-付款审批-部门申请',325)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-付款审批-财务复核',326)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-付款审批-财务审核',327)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-出纳付款-查询',328)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-出纳付款-制单',329)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'动销费用审批付款-出纳付款-审核',330)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零售付款出纳查询',331)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零告费用明细表',332)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'新零告费用汇总表',333)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'费用汇总表',247)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'其他支出费用状态汇总报表',234)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'Rx销售明细汇总报表',123)

select top 10 * from tb_sysframe order by sf_id desc
update tb_sysframe set sf_invoke=247 where sf_id=122
update tb_sysframe set sf_invoke=234 where sf_id=123
update tb_sysframe set sf_invoke=123 where sf_id=124


A系统设置
B药品管理
C业务管理
D商业管理
E商业结算
E分销管理
G分销结算
H新零售管理
I新零售结算
I综合资料

S系练
A设置员工
B设置用户权限
C业务设置



insert into tb_district (country,prov_code,prov_name,city_code,city_name,county_code,county_name)
 select 'CN','11', '北京市','1100', '北京市','',' '
union all select 'CN','11', '北京市','1101', '北京市','110101',' 东城区'
union all select 'CN','11', '北京市','1101', '北京市','110102',' 西城区'
union all select 'CN','11', '北京市','1101', '北京市','110105',' 朝阳区'
union all select 'CN','11', '北京市','1101', '北京市','110106',' 丰台区'
union all select 'CN','11', '北京市','1101', '北京市','110107',' 石景山区'
union all select 'CN','11', '北京市','1101', '北京市','110108',' 海淀区'
union all select 'CN','11', '北京市','1101', '北京市','110109',' 门头沟区'
union all select 'CN','11', '北京市','1101', '北京市','110111',' 房山区'
union all select 'CN','11', '北京市','1101', '北京市','110112',' 通州区'
union all select 'CN','11', '北京市','1101', '北京市','110113',' 顺义区'
union all select 'CN','11', '北京市','1101', '北京市','110114',' 昌平区'
union all select 'CN','11', '北京市','1101', '北京市','110115',' 大兴区'
union all select 'CN','11', '北京市','1101', '北京市','110116',' 怀柔区'
union all select 'CN','11', '北京市','1101', '北京市','110117',' 平谷区'
union all select 'CN','11', '北京市','1101', '北京市','110118',' 密云区'
union all select 'CN','11', '北京市','1101', '北京市','110119',' 延庆区'
union all select 'CN','12', '天津市','1200', '天津市','',' '
union all select 'CN','12', '天津市','1201', '天津市','120101',' 和平区'
union all select 'CN','12', '天津市','1201', '天津市','120102',' 河东区'
union all select 'CN','12', '天津市','1201', '天津市','120103',' 河西区'
union all select 'CN','12', '天津市','1201', '天津市','120104',' 南开区'
union all select 'CN','12', '天津市','1201', '天津市','120105',' 河北区'
union all select 'CN','12', '天津市','1201', '天津市','120106',' 红桥区'
union all select 'CN','12', '天津市','1201', '天津市','120110',' 东丽区'
union all select 'CN','12', '天津市','1201', '天津市','120111',' 西青区'
union all select 'CN','12', '天津市','1201', '天津市','120112',' 津南区'
union all select 'CN','12', '天津市','1201', '天津市','120113',' 北辰区'
union all select 'CN','12', '天津市','1201', '天津市','120114',' 武清区'
union all select 'CN','12', '天津市','1201', '天津市','120115',' 宝坻区'
union all select 'CN','12', '天津市','1201', '天津市','120116',' 滨海新区'
union all select 'CN','12', '天津市','1201', '天津市','120117',' 宁河区'
union all select 'CN','12', '天津市','1201', '天津市','120118',' 静海区'
union all select 'CN','12', '天津市','1201', '天津市','120119',' 蓟州区'
union all select 'CN','13', '河北省','1300', '河北省','',' '
union all select 'CN','13', '河北省','1301', '石家庄市','',' '
union all select 'CN','13', '河北省','1301', '石家庄市','130102',' 长安区'
union all select 'CN','13', '河北省','1301', '石家庄市','130104',' 桥西区'
union all select 'CN','13', '河北省','1301', '石家庄市','130105',' 新华区'
union all select 'CN','13', '河北省','1301', '石家庄市','130107',' 井陉矿区'
union all select 'CN','13', '河北省','1301', '石家庄市','130108',' 裕华区'
union all select 'CN','13', '河北省','1301', '石家庄市','130109',' 藁城区'
union all select 'CN','13', '河北省','1301', '石家庄市','130110',' 鹿泉区'
union all select 'CN','13', '河北省','1301', '石家庄市','130111',' 栾城区'
union all select 'CN','13', '河北省','1301', '石家庄市','130121',' 井陉县'
union all select 'CN','13', '河北省','1301', '石家庄市','130123',' 正定县'
union all select 'CN','13', '河北省','1301', '石家庄市','130125',' 行唐县'
union all select 'CN','13', '河北省','1301', '石家庄市','130126',' 灵寿县'
union all select 'CN','13', '河北省','1301', '石家庄市','130127',' 高邑县'
union all select 'CN','13', '河北省','1301', '石家庄市','130128',' 深泽县'
union all select 'CN','13', '河北省','1301', '石家庄市','130129',' 赞皇县'
union all select 'CN','13', '河北省','1301', '石家庄市','130130',' 无极县'
union all select 'CN','13', '河北省','1301', '石家庄市','130131',' 平山县'
union all select 'CN','13', '河北省','1301', '石家庄市','130132',' 元氏县'
union all select 'CN','13', '河北省','1301', '石家庄市','130133',' 赵县'
union all select 'CN','13', '河北省','1301', '石家庄市','130181',' 辛集市'
union all select 'CN','13', '河北省','1301', '石家庄市','130183',' 晋州市'
union all select 'CN','13', '河北省','1301', '石家庄市','130184',' 新乐市'
union all select 'CN','13', '河北省','1302', '唐山市','',' '
union all select 'CN','13', '河北省','1302', '唐山市','130202',' 路南区'
union all select 'CN','13', '河北省','1302', '唐山市','130203',' 路北区'
union all select 'CN','13', '河北省','1302', '唐山市','130204',' 古冶区'
union all select 'CN','13', '河北省','1302', '唐山市','130205',' 开平区'
union all select 'CN','13', '河北省','1302', '唐山市','130207',' 丰南区'
union all select 'CN','13', '河北省','1302', '唐山市','130208',' 丰润区'
union all select 'CN','13', '河北省','1302', '唐山市','130209',' 曹妃甸区'
union all select 'CN','13', '河北省','1302', '唐山市','130224',' 滦南县'
union all select 'CN','13', '河北省','1302', '唐山市','130225',' 乐亭县'
union all select 'CN','13', '河北省','1302', '唐山市','130227',' 迁西县'
union all select 'CN','13', '河北省','1302', '唐山市','130229',' 玉田县'
union all select 'CN','13', '河北省','1302', '唐山市','130281',' 遵化市'
union all select 'CN','13', '河北省','1302', '唐山市','130283',' 迁安市'
union all select 'CN','13', '河北省','1302', '唐山市','130284',' 滦州市'
union all select 'CN','13', '河北省','1303', '秦皇岛市','',' '
union all select 'CN','13', '河北省','1303', '秦皇岛市','130302',' 海港区'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130303',' 山海关区'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130304',' 北戴河区'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130306',' 抚宁区'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130321',' 青龙满族自治县'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130322',' 昌黎县'
union all select 'CN','13', '河北省','1303', '秦皇岛市','130324',' 卢龙县'
union all select 'CN','13', '河北省','1304', '邯郸市','',' '
union all select 'CN','13', '河北省','1304', '邯郸市','130402',' 邯山区'
union all select 'CN','13', '河北省','1304', '邯郸市','130403',' 丛台区'
union all select 'CN','13', '河北省','1304', '邯郸市','130404',' 复兴区'
union all select 'CN','13', '河北省','1304', '邯郸市','130406',' 峰峰矿区'
union all select 'CN','13', '河北省','1304', '邯郸市','130407',' 肥乡区'
union all select 'CN','13', '河北省','1304', '邯郸市','130408',' 永年区'
union all select 'CN','13', '河北省','1304', '邯郸市','130423',' 临漳县'
union all select 'CN','13', '河北省','1304', '邯郸市','130424',' 成安县'
union all select 'CN','13', '河北省','1304', '邯郸市','130425',' 大名县'
union all select 'CN','13', '河北省','1304', '邯郸市','130426',' 涉县'
union all select 'CN','13', '河北省','1304', '邯郸市','130427',' 磁县'
union all select 'CN','13', '河北省','1304', '邯郸市','130430',' 邱县'
union all select 'CN','13', '河北省','1304', '邯郸市','130431',' 鸡泽县'
union all select 'CN','13', '河北省','1304', '邯郸市','130432',' 广平县'
union all select 'CN','13', '河北省','1304', '邯郸市','130433',' 馆陶县'
union all select 'CN','13', '河北省','1304', '邯郸市','130434',' 魏县'
union all select 'CN','13', '河北省','1304', '邯郸市','130435',' 曲周县'
union all select 'CN','13', '河北省','1304', '邯郸市','130481',' 武安市'
union all select 'CN','13', '河北省','1305', '邢台市','',' '
union all select 'CN','13', '河北省','1305', '邢台市','130502',' 桥东区'
union all select 'CN','13', '河北省','1305', '邢台市','130503',' 桥西区'
union all select 'CN','13', '河北省','1305', '邢台市','130521',' 邢台县'
union all select 'CN','13', '河北省','1305', '邢台市','130522',' 临城县'
union all select 'CN','13', '河北省','1305', '邢台市','130523',' 内丘县'
union all select 'CN','13', '河北省','1305', '邢台市','130524',' 柏乡县'
union all select 'CN','13', '河北省','1305', '邢台市','130525',' 隆尧县'
union all select 'CN','13', '河北省','1305', '邢台市','130526',' 任县'
union all select 'CN','13', '河北省','1305', '邢台市','130527',' 南和县'
union all select 'CN','13', '河北省','1305', '邢台市','130528',' 宁晋县'
union all select 'CN','13', '河北省','1305', '邢台市','130529',' 巨鹿县'
union all select 'CN','13', '河北省','1305', '邢台市','130530',' 新河县'
union all select 'CN','13', '河北省','1305', '邢台市','130531',' 广宗县'
union all select 'CN','13', '河北省','1305', '邢台市','130532',' 平乡县'
union all select 'CN','13', '河北省','1305', '邢台市','130533',' 威县'
union all select 'CN','13', '河北省','1305', '邢台市','130534',' 清河县'
union all select 'CN','13', '河北省','1305', '邢台市','130535',' 临西县'
union all select 'CN','13', '河北省','1305', '邢台市','130581',' 南宫市'
union all select 'CN','13', '河北省','1305', '邢台市','130582',' 沙河市'
union all select 'CN','13', '河北省','1306', '保定市','',' '
union all select 'CN','13', '河北省','1306', '保定市','130602',' 竞秀区'
union all select 'CN','13', '河北省','1306', '保定市','130606',' 莲池区'
union all select 'CN','13', '河北省','1306', '保定市','130607',' 满城区'
union all select 'CN','13', '河北省','1306', '保定市','130608',' 清苑区'
union all select 'CN','13', '河北省','1306', '保定市','130609',' 徐水区'
union all select 'CN','13', '河北省','1306', '保定市','130623',' 涞水县'
union all select 'CN','13', '河北省','1306', '保定市','130624',' 阜平县'
union all select 'CN','13', '河北省','1306', '保定市','130626',' 定兴县'
union all select 'CN','13', '河北省','1306', '保定市','130627',' 唐县'
union all select 'CN','13', '河北省','1306', '保定市','130628',' 高阳县'
union all select 'CN','13', '河北省','1306', '保定市','130629',' 容城县'
union all select 'CN','13', '河北省','1306', '保定市','130630',' 涞源县'
union all select 'CN','13', '河北省','1306', '保定市','130631',' 望都县'
union all select 'CN','13', '河北省','1306', '保定市','130632',' 安新县'
union all select 'CN','13', '河北省','1306', '保定市','130633',' 易县'
union all select 'CN','13', '河北省','1306', '保定市','130634',' 曲阳县'
union all select 'CN','13', '河北省','1306', '保定市','130635',' 蠡县'
union all select 'CN','13', '河北省','1306', '保定市','130636',' 顺平县'
union all select 'CN','13', '河北省','1306', '保定市','130637',' 博野县'
union all select 'CN','13', '河北省','1306', '保定市','130638',' 雄县'
union all select 'CN','13', '河北省','1306', '保定市','130681',' 涿州市'
union all select 'CN','13', '河北省','1306', '保定市','130682',' 定州市'
union all select 'CN','13', '河北省','1306', '保定市','130683',' 安国市'
union all select 'CN','13', '河北省','1306', '保定市','130684',' 高碑店市'
union all select 'CN','13', '河北省','1307', '张家口市','',' '
union all select 'CN','13', '河北省','1307', '张家口市','130702',' 桥东区'
union all select 'CN','13', '河北省','1307', '张家口市','130703',' 桥西区'
union all select 'CN','13', '河北省','1307', '张家口市','130705',' 宣化区'
union all select 'CN','13', '河北省','1307', '张家口市','130706',' 下花园区'
union all select 'CN','13', '河北省','1307', '张家口市','130708',' 万全区'
union all select 'CN','13', '河北省','1307', '张家口市','130709',' 崇礼区'
union all select 'CN','13', '河北省','1307', '张家口市','130722',' 张北县'
union all select 'CN','13', '河北省','1307', '张家口市','130723',' 康保县'
union all select 'CN','13', '河北省','1307', '张家口市','130724',' 沽源县'
union all select 'CN','13', '河北省','1307', '张家口市','130725',' 尚义县'
union all select 'CN','13', '河北省','1307', '张家口市','130726',' 蔚县'
union all select 'CN','13', '河北省','1307', '张家口市','130727',' 阳原县'
union all select 'CN','13', '河北省','1307', '张家口市','130728',' 怀安县'
union all select 'CN','13', '河北省','1307', '张家口市','130730',' 怀来县'
union all select 'CN','13', '河北省','1307', '张家口市','130731',' 涿鹿县'
union all select 'CN','13', '河北省','1307', '张家口市','130732',' 赤城县'
union all select 'CN','13', '河北省','1308', '承德市','',' '
union all select 'CN','13', '河北省','1308', '承德市','130802',' 双桥区'
union all select 'CN','13', '河北省','1308', '承德市','130803',' 双滦区'
union all select 'CN','13', '河北省','1308', '承德市','130804',' 鹰手营子矿区'
union all select 'CN','13', '河北省','1308', '承德市','130821',' 承德县'
union all select 'CN','13', '河北省','1308', '承德市','130822',' 兴隆县'
union all select 'CN','13', '河北省','1308', '承德市','130824',' 滦平县'
union all select 'CN','13', '河北省','1308', '承德市','130825',' 隆化县'
union all select 'CN','13', '河北省','1308', '承德市','130826',' 丰宁满族自治县'
union all select 'CN','13', '河北省','1308', '承德市','130827',' 宽城满族自治县'
union all select 'CN','13', '河北省','1308', '承德市','130828',' 围场满族蒙古族自治县'
union all select 'CN','13', '河北省','1308', '承德市','130881',' 平泉市'
union all select 'CN','13', '河北省','1309', '沧州市','',' '
union all select 'CN','13', '河北省','1309', '沧州市','130902',' 新华区'
union all select 'CN','13', '河北省','1309', '沧州市','130903',' 运河区'
union all select 'CN','13', '河北省','1309', '沧州市','130921',' 沧县'
union all select 'CN','13', '河北省','1309', '沧州市','130922',' 青县'
union all select 'CN','13', '河北省','1309', '沧州市','130923',' 东光县'
union all select 'CN','13', '河北省','1309', '沧州市','130924',' 海兴县'
union all select 'CN','13', '河北省','1309', '沧州市','130925',' 盐山县'
union all select 'CN','13', '河北省','1309', '沧州市','130926',' 肃宁县'
union all select 'CN','13', '河北省','1309', '沧州市','130927',' 南皮县'
union all select 'CN','13', '河北省','1309', '沧州市','130928',' 吴桥县'
union all select 'CN','13', '河北省','1309', '沧州市','130929',' 献县'
union all select 'CN','13', '河北省','1309', '沧州市','130930',' 孟村回族自治县'
union all select 'CN','13', '河北省','1309', '沧州市','130981',' 泊头市'
union all select 'CN','13', '河北省','1309', '沧州市','130982',' 任丘市'
union all select 'CN','13', '河北省','1309', '沧州市','130983',' 黄骅市'
union all select 'CN','13', '河北省','1309', '沧州市','130984',' 河间市'
union all select 'CN','13', '河北省','1310', '廊坊市','',' '
union all select 'CN','13', '河北省','1310', '廊坊市','131002',' 安次区'
union all select 'CN','13', '河北省','1310', '廊坊市','131003',' 广阳区'
union all select 'CN','13', '河北省','1310', '廊坊市','131022',' 固安县'
union all select 'CN','13', '河北省','1310', '廊坊市','131023',' 永清县'
union all select 'CN','13', '河北省','1310', '廊坊市','131024',' 香河县'
union all select 'CN','13', '河北省','1310', '廊坊市','131025',' 大城县'
union all select 'CN','13', '河北省','1310', '廊坊市','131026',' 文安县'
union all select 'CN','13', '河北省','1310', '廊坊市','131028',' 大厂回族自治县'
union all select 'CN','13', '河北省','1310', '廊坊市','131081',' 霸州市'
union all select 'CN','13', '河北省','1310', '廊坊市','131082',' 三河市'
union all select 'CN','13', '河北省','1311', '衡水市','',' '
union all select 'CN','13', '河北省','1311', '衡水市','131102',' 桃城区'
union all select 'CN','13', '河北省','1311', '衡水市','131103',' 冀州区'
union all select 'CN','13', '河北省','1311', '衡水市','131121',' 枣强县'
union all select 'CN','13', '河北省','1311', '衡水市','131122',' 武邑县'
union all select 'CN','13', '河北省','1311', '衡水市','131123',' 武强县'
union all select 'CN','13', '河北省','1311', '衡水市','131124',' 饶阳县'
union all select 'CN','13', '河北省','1311', '衡水市','131125',' 安平县'
union all select 'CN','13', '河北省','1311', '衡水市','131126',' 故城县'
union all select 'CN','13', '河北省','1311', '衡水市','131127',' 景县'
union all select 'CN','13', '河北省','1311', '衡水市','131128',' 阜城县'
union all select 'CN','13', '河北省','1311', '衡水市','131182',' 深州市'
union all select 'CN','14', '山西省','1400', '','',' '
union all select 'CN','14', '山西省','1401', '太原市','',' '
union all select 'CN','14', '山西省','1401', '太原市','140105',' 小店区'
union all select 'CN','14', '山西省','1401', '太原市','140106',' 迎泽区'
union all select 'CN','14', '山西省','1401', '太原市','140107',' 杏花岭区'
union all select 'CN','14', '山西省','1401', '太原市','140108',' 尖草坪区'
union all select 'CN','14', '山西省','1401', '太原市','140109',' 万柏林区'
union all select 'CN','14', '山西省','1401', '太原市','140110',' 晋源区'
union all select 'CN','14', '山西省','1401', '太原市','140121',' 清徐县'
union all select 'CN','14', '山西省','1401', '太原市','140122',' 阳曲县'
union all select 'CN','14', '山西省','1401', '太原市','140123',' 娄烦县'
union all select 'CN','14', '山西省','1401', '太原市','140181',' 古交市'
union all select 'CN','14', '山西省','1402', '大同市','',' '
union all select 'CN','14', '山西省','1402', '大同市','140212',' 新荣区'
union all select 'CN','14', '山西省','1402', '大同市','140213',' 平城区'
union all select 'CN','14', '山西省','1402', '大同市','140214',' 云冈区'
union all select 'CN','14', '山西省','1402', '大同市','140215',' 云州区'
union all select 'CN','14', '山西省','1402', '大同市','140221',' 阳高县'
union all select 'CN','14', '山西省','1402', '大同市','140222',' 天镇县'
union all select 'CN','14', '山西省','1402', '大同市','140223',' 广灵县'
union all select 'CN','14', '山西省','1402', '大同市','140224',' 灵丘县'
union all select 'CN','14', '山西省','1402', '大同市','140225',' 浑源县'
union all select 'CN','14', '山西省','1402', '大同市','140226',' 左云县'
union all select 'CN','14', '山西省','1403', '阳泉市','',' '
union all select 'CN','14', '山西省','1403', '阳泉市','140302',' 城区'
union all select 'CN','14', '山西省','1403', '阳泉市','140303',' 矿区'
union all select 'CN','14', '山西省','1403', '阳泉市','140311',' 郊区'
union all select 'CN','14', '山西省','1403', '阳泉市','140321',' 平定县'
union all select 'CN','14', '山西省','1403', '阳泉市','140322',' 盂县'
union all select 'CN','14', '山西省','1404', '长治市','',' '
union all select 'CN','14', '山西省','1404', '长治市','140403',' 潞州区'
union all select 'CN','14', '山西省','1404', '长治市','140404',' 上党区'
union all select 'CN','14', '山西省','1404', '长治市','140405',' 屯留区'
union all select 'CN','14', '山西省','1404', '长治市','140406',' 潞城区'
union all select 'CN','14', '山西省','1404', '长治市','140423',' 襄垣县'
union all select 'CN','14', '山西省','1404', '长治市','140425',' 平顺县'
union all select 'CN','14', '山西省','1404', '长治市','140426',' 黎城县'
union all select 'CN','14', '山西省','1404', '长治市','140427',' 壶关县'
union all select 'CN','14', '山西省','1404', '长治市','140428',' 长子县'
union all select 'CN','14', '山西省','1404', '长治市','140429',' 武乡县'
union all select 'CN','14', '山西省','1404', '长治市','140430',' 沁县'
union all select 'CN','14', '山西省','1404', '长治市','140431',' 沁源县'
union all select 'CN','14', '山西省','1405', '晋城市','',' '
union all select 'CN','14', '山西省','1405', '晋城市','140502',' 城区'
union all select 'CN','14', '山西省','1405', '晋城市','140521',' 沁水县'
union all select 'CN','14', '山西省','1405', '晋城市','140522',' 阳城县'
union all select 'CN','14', '山西省','1405', '晋城市','140524',' 陵川县'
union all select 'CN','14', '山西省','1405', '晋城市','140525',' 泽州县'
union all select 'CN','14', '山西省','1405', '晋城市','140581',' 高平市'
union all select 'CN','14', '山西省','1406', '朔州市','',' '
union all select 'CN','14', '山西省','1406', '朔州市','140602',' 朔城区'
union all select 'CN','14', '山西省','1406', '朔州市','140603',' 平鲁区'
union all select 'CN','14', '山西省','1406', '朔州市','140621',' 山阴县'
union all select 'CN','14', '山西省','1406', '朔州市','140622',' 应县'
union all select 'CN','14', '山西省','1406', '朔州市','140623',' 右玉县'
union all select 'CN','14', '山西省','1406', '朔州市','140681',' 怀仁市'
union all select 'CN','14', '山西省','1407', '晋中市','',' '
union all select 'CN','14', '山西省','1407', '晋中市','140702',' 榆次区'
union all select 'CN','14', '山西省','1407', '晋中市','140721',' 榆社县'
union all select 'CN','14', '山西省','1407', '晋中市','140722',' 左权县'
union all select 'CN','14', '山西省','1407', '晋中市','140723',' 和顺县'
union all select 'CN','14', '山西省','1407', '晋中市','140724',' 昔阳县'
union all select 'CN','14', '山西省','1407', '晋中市','140725',' 寿阳县'
union all select 'CN','14', '山西省','1407', '晋中市','140726',' 太谷县'
union all select 'CN','14', '山西省','1407', '晋中市','140727',' 祁县'
union all select 'CN','14', '山西省','1407', '晋中市','140728',' 平遥县'
union all select 'CN','14', '山西省','1407', '晋中市','140729',' 灵石县'
union all select 'CN','14', '山西省','1407', '晋中市','140781',' 介休市'
union all select 'CN','14', '山西省','1408', '运城市','',' '
union all select 'CN','14', '山西省','1408', '运城市','140802',' 盐湖区'
union all select 'CN','14', '山西省','1408', '运城市','140821',' 临猗县'
union all select 'CN','14', '山西省','1408', '运城市','140822',' 万荣县'
union all select 'CN','14', '山西省','1408', '运城市','140823',' 闻喜县'
union all select 'CN','14', '山西省','1408', '运城市','140824',' 稷山县'
union all select 'CN','14', '山西省','1408', '运城市','140825',' 新绛县'
union all select 'CN','14', '山西省','1408', '运城市','140826',' 绛县'
union all select 'CN','14', '山西省','1408', '运城市','140827',' 垣曲县'
union all select 'CN','14', '山西省','1408', '运城市','140828',' 夏县'
union all select 'CN','14', '山西省','1408', '运城市','140829',' 平陆县'
union all select 'CN','14', '山西省','1408', '运城市','140830',' 芮城县'
union all select 'CN','14', '山西省','1408', '运城市','140881',' 永济市'
union all select 'CN','14', '山西省','1408', '运城市','140882',' 河津市'
union all select 'CN','14', '山西省','1409', '忻州市','',' '
union all select 'CN','14', '山西省','1409', '忻州市','140902',' 忻府区'
union all select 'CN','14', '山西省','1409', '忻州市','140921',' 定襄县'
union all select 'CN','14', '山西省','1409', '忻州市','140922',' 五台县'
union all select 'CN','14', '山西省','1409', '忻州市','140923',' 代县'
union all select 'CN','14', '山西省','1409', '忻州市','140924',' 繁峙县'
union all select 'CN','14', '山西省','1409', '忻州市','140925',' 宁武县'
union all select 'CN','14', '山西省','1409', '忻州市','140926',' 静乐县'
union all select 'CN','14', '山西省','1409', '忻州市','140927',' 神池县'
union all select 'CN','14', '山西省','1409', '忻州市','140928',' 五寨县'
union all select 'CN','14', '山西省','1409', '忻州市','140929',' 岢岚县'
union all select 'CN','14', '山西省','1409', '忻州市','140930',' 河曲县'
union all select 'CN','14', '山西省','1409', '忻州市','140931',' 保德县'
union all select 'CN','14', '山西省','1409', '忻州市','140932',' 偏关县'
union all select 'CN','14', '山西省','1409', '忻州市','140981',' 原平市'
union all select 'CN','14', '山西省','1410', '临汾市','',' '
union all select 'CN','14', '山西省','1410', '临汾市','141002',' 尧都区'
union all select 'CN','14', '山西省','1410', '临汾市','141021',' 曲沃县'
union all select 'CN','14', '山西省','1410', '临汾市','141022',' 翼城县'
union all select 'CN','14', '山西省','1410', '临汾市','141023',' 襄汾县'
union all select 'CN','14', '山西省','1410', '临汾市','141024',' 洪洞县'
union all select 'CN','14', '山西省','1410', '临汾市','141025',' 古县'
union all select 'CN','14', '山西省','1410', '临汾市','141026',' 安泽县'
union all select 'CN','14', '山西省','1410', '临汾市','141027',' 浮山县'
union all select 'CN','14', '山西省','1410', '临汾市','141028',' 吉县'
union all select 'CN','14', '山西省','1410', '临汾市','141029',' 乡宁县'
union all select 'CN','14', '山西省','1410', '临汾市','141030',' 大宁县'
union all select 'CN','14', '山西省','1410', '临汾市','141031',' 隰县'
union all select 'CN','14', '山西省','1410', '临汾市','141032',' 永和县'
union all select 'CN','14', '山西省','1410', '临汾市','141033',' 蒲县'
union all select 'CN','14', '山西省','1410', '临汾市','141034',' 汾西县'
union all select 'CN','14', '山西省','1410', '临汾市','141081',' 侯马市'
union all select 'CN','14', '山西省','1410', '临汾市','141082',' 霍州市'
union all select 'CN','14', '山西省','1411', '吕梁市','',' '
union all select 'CN','14', '山西省','1411', '吕梁市','141102',' 离石区'
union all select 'CN','14', '山西省','1411', '吕梁市','141121',' 文水县'
union all select 'CN','14', '山西省','1411', '吕梁市','141122',' 交城县'
union all select 'CN','14', '山西省','1411', '吕梁市','141123',' 兴县'
union all select 'CN','14', '山西省','1411', '吕梁市','141124',' 临县'
union all select 'CN','14', '山西省','1411', '吕梁市','141125',' 柳林县'
union all select 'CN','14', '山西省','1411', '吕梁市','141126',' 石楼县'
union all select 'CN','14', '山西省','1411', '吕梁市','141127',' 岚县'
union all select 'CN','14', '山西省','1411', '吕梁市','141128',' 方山县'
union all select 'CN','14', '山西省','1411', '吕梁市','141129',' 中阳县'
union all select 'CN','14', '山西省','1411', '吕梁市','141130',' 交口县'
union all select 'CN','14', '山西省','1411', '吕梁市','141181',' 孝义市'
union all select 'CN','14', '山西省','1411', '吕梁市','141182',' 汾阳市'
union all select 'CN','15', '内蒙古自治区','1500', '','',' '
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','',' '
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150102',' 新城区'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150103',' 回民区'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150104',' 玉泉区'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150105',' 赛罕区'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150121',' 土默特左旗'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150122',' 托克托县'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150123',' 和林格尔县'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150124',' 清水河县'
union all select 'CN','15', '内蒙古自治区','1501', '呼和浩特市','150125',' 武川县'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','',' '
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150202',' 东河区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150203',' 昆都仑区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150204',' 青山区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150205',' 石拐区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150206',' 白云鄂博矿区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150207',' 九原区'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150221',' 土默特右旗'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150222',' 固阳县'
union all select 'CN','15', '内蒙古自治区','1502', '包头市','150223',' 达尔罕茂明安联合旗'
union all select 'CN','15', '内蒙古自治区','1503', '乌海市','',' '
union all select 'CN','15', '内蒙古自治区','1503', '乌海市','150302',' 海勃湾区'
union all select 'CN','15', '内蒙古自治区','1503', '乌海市','150303',' 海南区'
union all select 'CN','15', '内蒙古自治区','1503', '乌海市','150304',' 乌达区'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','',' '
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150402',' 红山区'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150403',' 元宝山区'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150404',' 松山区'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150421',' 阿鲁科尔沁旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150422',' 巴林左旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150423',' 巴林右旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150424',' 林西县'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150425',' 克什克腾旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150426',' 翁牛特旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150428',' 喀喇沁旗'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150429',' 宁城县'
union all select 'CN','15', '内蒙古自治区','1504', '赤峰市','150430',' 敖汉旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','',' '
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150502',' 科尔沁区'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150521',' 科尔沁左翼中旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150522',' 科尔沁左翼后旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150523',' 开鲁县'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150524',' 库伦旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150525',' 奈曼旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150526',' 扎鲁特旗'
union all select 'CN','15', '内蒙古自治区','1505', '通辽市','150581',' 霍林郭勒市'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','',' '
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150602',' 东胜区'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150603',' 康巴什区'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150621',' 达拉特旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150622',' 准格尔旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150623',' 鄂托克前旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150624',' 鄂托克旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150625',' 杭锦旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150626',' 乌审旗'
union all select 'CN','15', '内蒙古自治区','1506', '鄂尔多斯市','150627',' 伊金霍洛旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','',' '
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150702',' 海拉尔区'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150703',' 扎赉诺尔区'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150721',' 阿荣旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150722',' 莫力达瓦达斡尔族自治旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150723',' 鄂伦春自治旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150724',' 鄂温克族自治旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150725',' 陈巴尔虎旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150726',' 新巴尔虎左旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150727',' 新巴尔虎右旗'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150781',' 满洲里市'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150782',' 牙克石市'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150783',' 扎兰屯市'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150784',' 额尔古纳市'
union all select 'CN','15', '内蒙古自治区','1507', '呼伦贝尔市','150785',' 根河市'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','',' '
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150802',' 临河区'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150821',' 五原县'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150822',' 磴口县'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150823',' 乌拉特前旗'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150824',' 乌拉特中旗'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150825',' 乌拉特后旗'
union all select 'CN','15', '内蒙古自治区','1508', '巴彦淖尔市','150826',' 杭锦后旗'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','',' '
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150902',' 集宁区'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150921',' 卓资县'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150922',' 化德县'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150923',' 商都县'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150924',' 兴和县'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150925',' 凉城县'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150926',' 察哈尔右翼前旗'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150927',' 察哈尔右翼中旗'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150928',' 察哈尔右翼后旗'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150929',' 四子王旗'
union all select 'CN','15', '内蒙古自治区','1509', '乌兰察布市','150981',' 丰镇市'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','',' '
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152201',' 乌兰浩特市'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152202',' 阿尔山市'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152221',' 科尔沁右翼前旗'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152222',' 科尔沁右翼中旗'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152223',' 扎赉特旗'
union all select 'CN','15', '内蒙古自治区','1522', '兴安盟','152224',' 突泉县'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','',' '
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152501',' 二连浩特市'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152502',' 锡林浩特市'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152522',' 阿巴嘎旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152523',' 苏尼特左旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152524',' 苏尼特右旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152525',' 东乌珠穆沁旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152526',' 西乌珠穆沁旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152527',' 太仆寺旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152528',' 镶黄旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152529',' 正镶白旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152530',' 正蓝旗'
union all select 'CN','15', '内蒙古自治区','1525', '锡林郭勒盟','152531',' 多伦县'
union all select 'CN','15', '内蒙古自治区','1529', '阿拉善盟','',' '
union all select 'CN','15', '内蒙古自治区','1529', '阿拉善盟','152921',' 阿拉善左旗'
union all select 'CN','15', '内蒙古自治区','1529', '阿拉善盟','152922',' 阿拉善右旗'
union all select 'CN','15', '内蒙古自治区','1529', '阿拉善盟','152923',' 额济纳旗'
union all select 'CN','21', '辽宁省','2100', '','',' '
union all select 'CN','21', '辽宁省','2101', '沈阳市','',' '
union all select 'CN','21', '辽宁省','2101', '沈阳市','210102',' 和平区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210103',' 沈河区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210104',' 大东区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210105',' 皇姑区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210106',' 铁西区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210111',' 苏家屯区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210112',' 浑南区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210113',' 沈北新区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210114',' 于洪区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210115',' 辽中区'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210123',' 康平县'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210124',' 法库县'
union all select 'CN','21', '辽宁省','2101', '沈阳市','210181',' 新民市'
union all select 'CN','21', '辽宁省','2102', '大连市','',' '
union all select 'CN','21', '辽宁省','2102', '大连市','210202',' 中山区'
union all select 'CN','21', '辽宁省','2102', '大连市','210203',' 西岗区'
union all select 'CN','21', '辽宁省','2102', '大连市','210204',' 沙河口区'
union all select 'CN','21', '辽宁省','2102', '大连市','210211',' 甘井子区'
union all select 'CN','21', '辽宁省','2102', '大连市','210212',' 旅顺口区'
union all select 'CN','21', '辽宁省','2102', '大连市','210213',' 金州区'
union all select 'CN','21', '辽宁省','2102', '大连市','210214',' 普兰店区'
union all select 'CN','21', '辽宁省','2102', '大连市','210224',' 长海县'
union all select 'CN','21', '辽宁省','2102', '大连市','210281',' 瓦房店市'
union all select 'CN','21', '辽宁省','2102', '大连市','210283',' 庄河市'
union all select 'CN','21', '辽宁省','2103', '鞍山市','',' '
union all select 'CN','21', '辽宁省','2103', '鞍山市','210302',' 铁东区'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210303',' 铁西区'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210304',' 立山区'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210311',' 千山区'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210321',' 台安县'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210323',' 岫岩满族自治县'
union all select 'CN','21', '辽宁省','2103', '鞍山市','210381',' 海城市'
union all select 'CN','21', '辽宁省','2104', '抚顺市','',' '
union all select 'CN','21', '辽宁省','2104', '抚顺市','210402',' 新抚区'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210403',' 东洲区'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210404',' 望花区'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210411',' 顺城区'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210421',' 抚顺县'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210422',' 新宾满族自治县'
union all select 'CN','21', '辽宁省','2104', '抚顺市','210423',' 清原满族自治县'
union all select 'CN','21', '辽宁省','2105', '本溪市','',' '
union all select 'CN','21', '辽宁省','2105', '本溪市','210502',' 平山区'
union all select 'CN','21', '辽宁省','2105', '本溪市','210503',' 溪湖区'
union all select 'CN','21', '辽宁省','2105', '本溪市','210504',' 明山区'
union all select 'CN','21', '辽宁省','2105', '本溪市','210505',' 南芬区'
union all select 'CN','21', '辽宁省','2105', '本溪市','210521',' 本溪满族自治县'
union all select 'CN','21', '辽宁省','2105', '本溪市','210522',' 桓仁满族自治县'
union all select 'CN','21', '辽宁省','2106', '丹东市','',' '
union all select 'CN','21', '辽宁省','2106', '丹东市','210602',' 元宝区'
union all select 'CN','21', '辽宁省','2106', '丹东市','210603',' 振兴区'
union all select 'CN','21', '辽宁省','2106', '丹东市','210604',' 振安区'
union all select 'CN','21', '辽宁省','2106', '丹东市','210624',' 宽甸满族自治县'
union all select 'CN','21', '辽宁省','2106', '丹东市','210681',' 东港市'
union all select 'CN','21', '辽宁省','2106', '丹东市','210682',' 凤城市'
union all select 'CN','21', '辽宁省','2107', '锦州市','',' '
union all select 'CN','21', '辽宁省','2107', '锦州市','210702',' 古塔区'
union all select 'CN','21', '辽宁省','2107', '锦州市','210703',' 凌河区'
union all select 'CN','21', '辽宁省','2107', '锦州市','210711',' 太和区'
union all select 'CN','21', '辽宁省','2107', '锦州市','210726',' 黑山县'
union all select 'CN','21', '辽宁省','2107', '锦州市','210727',' 义县'
union all select 'CN','21', '辽宁省','2107', '锦州市','210781',' 凌海市'
union all select 'CN','21', '辽宁省','2107', '锦州市','210782',' 北镇市'
union all select 'CN','21', '辽宁省','2108', '营口市','',' '
union all select 'CN','21', '辽宁省','2108', '营口市','210802',' 站前区'
union all select 'CN','21', '辽宁省','2108', '营口市','210803',' 西市区'
union all select 'CN','21', '辽宁省','2108', '营口市','210804',' 鲅鱼圈区'
union all select 'CN','21', '辽宁省','2108', '营口市','210811',' 老边区'
union all select 'CN','21', '辽宁省','2108', '营口市','210881',' 盖州市'
union all select 'CN','21', '辽宁省','2108', '营口市','210882',' 大石桥市'
union all select 'CN','21', '辽宁省','2109', '阜新市','',' '
union all select 'CN','21', '辽宁省','2109', '阜新市','210902',' 海州区'
union all select 'CN','21', '辽宁省','2109', '阜新市','210903',' 新邱区'
union all select 'CN','21', '辽宁省','2109', '阜新市','210904',' 太平区'
union all select 'CN','21', '辽宁省','2109', '阜新市','210905',' 清河门区'
union all select 'CN','21', '辽宁省','2109', '阜新市','210911',' 细河区'
union all select 'CN','21', '辽宁省','2109', '阜新市','210921',' 阜新蒙古族自治县'
union all select 'CN','21', '辽宁省','2109', '阜新市','210922',' 彰武县'
union all select 'CN','21', '辽宁省','2110', '辽阳市','',' '
union all select 'CN','21', '辽宁省','2110', '辽阳市','211002',' 白塔区'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211003',' 文圣区'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211004',' 宏伟区'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211005',' 弓长岭区'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211011',' 太子河区'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211021',' 辽阳县'
union all select 'CN','21', '辽宁省','2110', '辽阳市','211081',' 灯塔市'
union all select 'CN','21', '辽宁省','2111', '盘锦市','',' '
union all select 'CN','21', '辽宁省','2111', '盘锦市','211102',' 双台子区'
union all select 'CN','21', '辽宁省','2111', '盘锦市','211103',' 兴隆台区'
union all select 'CN','21', '辽宁省','2111', '盘锦市','211104',' 大洼区'
union all select 'CN','21', '辽宁省','2111', '盘锦市','211122',' 盘山县'
union all select 'CN','21', '辽宁省','2112', '铁岭市','',' '
union all select 'CN','21', '辽宁省','2112', '铁岭市','211202',' 银州区'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211204',' 清河区'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211221',' 铁岭县'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211223',' 西丰县'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211224',' 昌图县'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211281',' 调兵山市'
union all select 'CN','21', '辽宁省','2112', '铁岭市','211282',' 开原市'
union all select 'CN','21', '辽宁省','2113', '朝阳市','',' '
union all select 'CN','21', '辽宁省','2113', '朝阳市','211302',' 双塔区'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211303',' 龙城区'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211321',' 朝阳县'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211322',' 建平县'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211324',' 喀喇沁左翼蒙古族自治县'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211381',' 北票市'
union all select 'CN','21', '辽宁省','2113', '朝阳市','211382',' 凌源市'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','',' '
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211402',' 连山区'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211403',' 龙港区'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211404',' 南票区'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211421',' 绥中县'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211422',' 建昌县'
union all select 'CN','21', '辽宁省','2114', '葫芦岛市','211481',' 兴城市'
union all select 'CN','22', '吉林省','2200', '','',' '
union all select 'CN','22', '吉林省','2201', '长春市','',' '
union all select 'CN','22', '吉林省','2201', '长春市','220102',' 南关区'
union all select 'CN','22', '吉林省','2201', '长春市','220103',' 宽城区'
union all select 'CN','22', '吉林省','2201', '长春市','220104',' 朝阳区'
union all select 'CN','22', '吉林省','2201', '长春市','220105',' 二道区'
union all select 'CN','22', '吉林省','2201', '长春市','220106',' 绿园区'
union all select 'CN','22', '吉林省','2201', '长春市','220112',' 双阳区'
union all select 'CN','22', '吉林省','2201', '长春市','220113',' 九台区'
union all select 'CN','22', '吉林省','2201', '长春市','220122',' 农安县'
union all select 'CN','22', '吉林省','2201', '长春市','220182',' 榆树市'
union all select 'CN','22', '吉林省','2201', '长春市','220183',' 德惠市'
union all select 'CN','22', '吉林省','2202', '吉林市','',' '
union all select 'CN','22', '吉林省','2202', '吉林市','220202',' 昌邑区'
union all select 'CN','22', '吉林省','2202', '吉林市','220203',' 龙潭区'
union all select 'CN','22', '吉林省','2202', '吉林市','220204',' 船营区'
union all select 'CN','22', '吉林省','2202', '吉林市','220211',' 丰满区'
union all select 'CN','22', '吉林省','2202', '吉林市','220221',' 永吉县'
union all select 'CN','22', '吉林省','2202', '吉林市','220281',' 蛟河市'
union all select 'CN','22', '吉林省','2202', '吉林市','220282',' 桦甸市'
union all select 'CN','22', '吉林省','2202', '吉林市','220283',' 舒兰市'
union all select 'CN','22', '吉林省','2202', '吉林市','220284',' 磐石市'
union all select 'CN','22', '吉林省','2203', '四平市','',' '
union all select 'CN','22', '吉林省','2203', '四平市','220302',' 铁西区'
union all select 'CN','22', '吉林省','2203', '四平市','220303',' 铁东区'
union all select 'CN','22', '吉林省','2203', '四平市','220322',' 梨树县'
union all select 'CN','22', '吉林省','2203', '四平市','220323',' 伊通满族自治县'
union all select 'CN','22', '吉林省','2203', '四平市','220381',' 公主岭市'
union all select 'CN','22', '吉林省','2203', '四平市','220382',' 双辽市'
union all select 'CN','22', '吉林省','2204', '辽源市','',' '
union all select 'CN','22', '吉林省','2204', '辽源市','220402',' 龙山区'
union all select 'CN','22', '吉林省','2204', '辽源市','220403',' 西安区'
union all select 'CN','22', '吉林省','2204', '辽源市','220421',' 东丰县'
union all select 'CN','22', '吉林省','2204', '辽源市','220422',' 东辽县'
union all select 'CN','22', '吉林省','2205', '通化市','',' '
union all select 'CN','22', '吉林省','2205', '通化市','220502',' 东昌区'
union all select 'CN','22', '吉林省','2205', '通化市','220503',' 二道江区'
union all select 'CN','22', '吉林省','2205', '通化市','220521',' 通化县'
union all select 'CN','22', '吉林省','2205', '通化市','220523',' 辉南县'
union all select 'CN','22', '吉林省','2205', '通化市','220524',' 柳河县'
union all select 'CN','22', '吉林省','2205', '通化市','220581',' 梅河口市'
union all select 'CN','22', '吉林省','2205', '通化市','220582',' 集安市'
union all select 'CN','22', '吉林省','2206', '白山市','',' '
union all select 'CN','22', '吉林省','2206', '白山市','220602',' 浑江区'
union all select 'CN','22', '吉林省','2206', '白山市','220605',' 江源区'
union all select 'CN','22', '吉林省','2206', '白山市','220621',' 抚松县'
union all select 'CN','22', '吉林省','2206', '白山市','220622',' 靖宇县'
union all select 'CN','22', '吉林省','2206', '白山市','220623',' 长白朝鲜族自治县'
union all select 'CN','22', '吉林省','2206', '白山市','220681',' 临江市'
union all select 'CN','22', '吉林省','2207', '松原市','',' '
union all select 'CN','22', '吉林省','2207', '松原市','220702',' 宁江区'
union all select 'CN','22', '吉林省','2207', '松原市','220721',' 前郭尔罗斯蒙古族自治县'
union all select 'CN','22', '吉林省','2207', '松原市','220722',' 长岭县'
union all select 'CN','22', '吉林省','2207', '松原市','220723',' 乾安县'
union all select 'CN','22', '吉林省','2207', '松原市','220781',' 扶余市'
union all select 'CN','22', '吉林省','2208', '白城市','',' '
union all select 'CN','22', '吉林省','2208', '白城市','220802',' 洮北区'
union all select 'CN','22', '吉林省','2208', '白城市','220821',' 镇赉县'
union all select 'CN','22', '吉林省','2208', '白城市','220822',' 通榆县'
union all select 'CN','22', '吉林省','2208', '白城市','220881',' 洮南市'
union all select 'CN','22', '吉林省','2208', '白城市','220882',' 大安市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','',' '
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222401',' 延吉市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222402',' 图们市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222403',' 敦化市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222404',' 珲春市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222405',' 龙井市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222406',' 和龙市'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222424',' 汪清县'
union all select 'CN','22', '吉林省','2224', '延边朝鲜族自治州','222426',' 安图县'
union all select 'CN','23', '黑龙江省','2300', '','',' '
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','',' '
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230102',' 道里区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230103',' 南岗区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230104',' 道外区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230108',' 平房区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230109',' 松北区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230110',' 香坊区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230111',' 呼兰区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230112',' 阿城区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230113',' 双城区'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230123',' 依兰县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230124',' 方正县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230125',' 宾县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230126',' 巴彦县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230127',' 木兰县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230128',' 通河县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230129',' 延寿县'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230183',' 尚志市'
union all select 'CN','23', '黑龙江省','2301', '哈尔滨市','230184',' 五常市'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','',' '
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230202',' 龙沙区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230203',' 建华区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230204',' 铁锋区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230205',' 昂昂溪区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230206',' 富拉尔基区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230207',' 碾子山区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230208',' 梅里斯达斡尔族区'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230221',' 龙江县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230223',' 依安县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230224',' 泰来县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230225',' 甘南县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230227',' 富裕县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230229',' 克山县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230230',' 克东县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230231',' 拜泉县'
union all select 'CN','23', '黑龙江省','2302', '齐齐哈尔市','230281',' 讷河市'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','',' '
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230302',' 鸡冠区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230303',' 恒山区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230304',' 滴道区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230305',' 梨树区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230306',' 城子河区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230307',' 麻山区'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230321',' 鸡东县'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230381',' 虎林市'
union all select 'CN','23', '黑龙江省','2303', '鸡西市','230382',' 密山市'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','',' '
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230402',' 向阳区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230403',' 工农区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230404',' 南山区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230405',' 兴安区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230406',' 东山区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230407',' 兴山区'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230421',' 萝北县'
union all select 'CN','23', '黑龙江省','2304', '鹤岗市','230422',' 绥滨县'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','',' '
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230502',' 尖山区'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230503',' 岭东区'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230505',' 四方台区'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230506',' 宝山区'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230521',' 集贤县'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230522',' 友谊县'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230523',' 宝清县'
union all select 'CN','23', '黑龙江省','2305', '双鸭山市','230524',' 饶河县'
union all select 'CN','23', '黑龙江省','2306', '大庆市','',' '
union all select 'CN','23', '黑龙江省','2306', '大庆市','230602',' 萨尔图区'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230603',' 龙凤区'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230604',' 让胡路区'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230605',' 红岗区'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230606',' 大同区'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230621',' 肇州县'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230622',' 肇源县'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230623',' 林甸县'
union all select 'CN','23', '黑龙江省','2306', '大庆市','230624',' 杜尔伯特蒙古族自治县'
union all select 'CN','23', '黑龙江省','2307', '伊春市','',' '
union all select 'CN','23', '黑龙江省','2307', '伊春市','230702',' 伊春区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230703',' 南岔区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230704',' 友好区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230705',' 西林区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230706',' 翠峦区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230707',' 新青区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230708',' 美溪区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230709',' 金山屯区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230710',' 五营区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230711',' 乌马河区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230712',' 汤旺河区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230713',' 带岭区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230714',' 乌伊岭区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230715',' 红星区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230716',' 上甘岭区'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230722',' 嘉荫县'
union all select 'CN','23', '黑龙江省','2307', '伊春市','230781',' 铁力市'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','',' '
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230803',' 向阳区'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230804',' 前进区'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230805',' 东风区'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230811',' 郊区'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230822',' 桦南县'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230826',' 桦川县'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230828',' 汤原县'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230881',' 同江市'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230882',' 富锦市'
union all select 'CN','23', '黑龙江省','2308', '佳木斯市','230883',' 抚远市'
union all select 'CN','23', '黑龙江省','2309', '七台河市','',' '
union all select 'CN','23', '黑龙江省','2309', '七台河市','230902',' 新兴区'
union all select 'CN','23', '黑龙江省','2309', '七台河市','230903',' 桃山区'
union all select 'CN','23', '黑龙江省','2309', '七台河市','230904',' 茄子河区'
union all select 'CN','23', '黑龙江省','2309', '七台河市','230921',' 勃利县'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','',' '
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231002',' 东安区'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231003',' 阳明区'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231004',' 爱民区'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231005',' 西安区'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231025',' 林口县'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231081',' 绥芬河市'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231083',' 海林市'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231084',' 宁安市'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231085',' 穆棱市'
union all select 'CN','23', '黑龙江省','2310', '牡丹江市','231086',' 东宁市'
union all select 'CN','23', '黑龙江省','2311', '黑河市','',' '
union all select 'CN','23', '黑龙江省','2311', '黑河市','231102',' 爱辉区'
union all select 'CN','23', '黑龙江省','2311', '黑河市','231121',' 嫩江县'
union all select 'CN','23', '黑龙江省','2311', '黑河市','231123',' 逊克县'
union all select 'CN','23', '黑龙江省','2311', '黑河市','231124',' 孙吴县'
union all select 'CN','23', '黑龙江省','2311', '黑河市','231181',' 北安市'
union all select 'CN','23', '黑龙江省','2311', '黑河市','231182',' 五大连池市'
union all select 'CN','23', '黑龙江省','2312', '绥化市','',' '
union all select 'CN','23', '黑龙江省','2312', '绥化市','231202',' 北林区'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231221',' 望奎县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231222',' 兰西县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231223',' 青冈县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231224',' 庆安县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231225',' 明水县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231226',' 绥棱县'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231281',' 安达市'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231282',' 肇东市'
union all select 'CN','23', '黑龙江省','2312', '绥化市','231283',' 海伦市'
union all select 'CN','23', '黑龙江省','2327', '大兴安岭地区','',' '
union all select 'CN','23', '黑龙江省','2327', '大兴安岭地区','232701',' 漠河市'
union all select 'CN','23', '黑龙江省','2327', '大兴安岭地区','232721',' 呼玛县'
union all select 'CN','23', '黑龙江省','2327', '大兴安岭地区','232722',' 塔河县'
union all select 'CN','31', '上海市','3100', '','',' '
union all select 'CN','31', '上海市','3101', '上海市','',' '
union all select 'CN','31', '上海市','3101', '上海市','',' '
union all select 'CN','31', '上海市','3101', '上海市','310101',' 黄浦区'
union all select 'CN','31', '上海市','3101', '上海市','310104',' 徐汇区'
union all select 'CN','31', '上海市','3101', '上海市','310105',' 长宁区'
union all select 'CN','31', '上海市','3101', '上海市','310106',' 静安区'
union all select 'CN','31', '上海市','3101', '上海市','310107',' 普陀区'
union all select 'CN','31', '上海市','3101', '上海市','310109',' 虹口区'
union all select 'CN','31', '上海市','3101', '上海市','310110',' 杨浦区'
union all select 'CN','31', '上海市','3101', '上海市','310112',' 闵行区'
union all select 'CN','31', '上海市','3101', '上海市','310113',' 宝山区'
union all select 'CN','31', '上海市','3101', '上海市','310114',' 嘉定区'
union all select 'CN','31', '上海市','3101', '上海市','310115',' 浦东新区'
union all select 'CN','31', '上海市','3101', '上海市','310116',' 金山区'
union all select 'CN','31', '上海市','3101', '上海市','310117',' 松江区'
union all select 'CN','31', '上海市','3101', '上海市','310118',' 青浦区'
union all select 'CN','31', '上海市','3101', '上海市','310120',' 奉贤区'
union all select 'CN','31', '上海市','3101', '上海市','310151',' 崇明区'
union all select 'CN','32', '江苏省','3200', '','',' '
union all select 'CN','32', '江苏省','3201', '南京市','',' '
union all select 'CN','32', '江苏省','3201', '南京市','320102',' 玄武区'
union all select 'CN','32', '江苏省','3201', '南京市','320104',' 秦淮区'
union all select 'CN','32', '江苏省','3201', '南京市','320105',' 建邺区'
union all select 'CN','32', '江苏省','3201', '南京市','320106',' 鼓楼区'
union all select 'CN','32', '江苏省','3201', '南京市','320111',' 浦口区'
union all select 'CN','32', '江苏省','3201', '南京市','320113',' 栖霞区'
union all select 'CN','32', '江苏省','3201', '南京市','320114',' 雨花台区'
union all select 'CN','32', '江苏省','3201', '南京市','320115',' 江宁区'
union all select 'CN','32', '江苏省','3201', '南京市','320116',' 六合区'
union all select 'CN','32', '江苏省','3201', '南京市','320117',' 溧水区'
union all select 'CN','32', '江苏省','3201', '南京市','320118',' 高淳区'
union all select 'CN','32', '江苏省','3202', '无锡市','',' '
union all select 'CN','32', '江苏省','3202', '无锡市','320205',' 锡山区'
union all select 'CN','32', '江苏省','3202', '无锡市','320206',' 惠山区'
union all select 'CN','32', '江苏省','3202', '无锡市','320211',' 滨湖区'
union all select 'CN','32', '江苏省','3202', '无锡市','320213',' 梁溪区'
union all select 'CN','32', '江苏省','3202', '无锡市','320214',' 新吴区'
union all select 'CN','32', '江苏省','3202', '无锡市','320281',' 江阴市'
union all select 'CN','32', '江苏省','3202', '无锡市','320282',' 宜兴市'
union all select 'CN','32', '江苏省','3203', '徐州市','',' '
union all select 'CN','32', '江苏省','3203', '徐州市','320302',' 鼓楼区'
union all select 'CN','32', '江苏省','3203', '徐州市','320303',' 云龙区'
union all select 'CN','32', '江苏省','3203', '徐州市','320305',' 贾汪区'
union all select 'CN','32', '江苏省','3203', '徐州市','320311',' 泉山区'
union all select 'CN','32', '江苏省','3203', '徐州市','320312',' 铜山区'
union all select 'CN','32', '江苏省','3203', '徐州市','320321',' 丰县'
union all select 'CN','32', '江苏省','3203', '徐州市','320322',' 沛县'
union all select 'CN','32', '江苏省','3203', '徐州市','320324',' 睢宁县'
union all select 'CN','32', '江苏省','3203', '徐州市','320381',' 新沂市'
union all select 'CN','32', '江苏省','3203', '徐州市','320382',' 邳州市'
union all select 'CN','32', '江苏省','3204', '常州市','',' '
union all select 'CN','32', '江苏省','3204', '常州市','320402',' 天宁区'
union all select 'CN','32', '江苏省','3204', '常州市','320404',' 钟楼区'
union all select 'CN','32', '江苏省','3204', '常州市','320411',' 新北区'
union all select 'CN','32', '江苏省','3204', '常州市','320412',' 武进区'
union all select 'CN','32', '江苏省','3204', '常州市','320413',' 金坛区'
union all select 'CN','32', '江苏省','3204', '常州市','320481',' 溧阳市'
union all select 'CN','32', '江苏省','3205', '苏州市','',' '
union all select 'CN','32', '江苏省','3205', '苏州市','320505',' 虎丘区'
union all select 'CN','32', '江苏省','3205', '苏州市','320506',' 吴中区'
union all select 'CN','32', '江苏省','3205', '苏州市','320507',' 相城区'
union all select 'CN','32', '江苏省','3205', '苏州市','320508',' 姑苏区'
union all select 'CN','32', '江苏省','3205', '苏州市','320509',' 吴江区'
union all select 'CN','32', '江苏省','3205', '苏州市','320581',' 常熟市'
union all select 'CN','32', '江苏省','3205', '苏州市','320582',' 张家港市'
union all select 'CN','32', '江苏省','3205', '苏州市','320583',' 昆山市'
union all select 'CN','32', '江苏省','3205', '苏州市','320585',' 太仓市'
union all select 'CN','32', '江苏省','3206', '南通市','',' '
union all select 'CN','32', '江苏省','3206', '南通市','320602',' 崇川区'
union all select 'CN','32', '江苏省','3206', '南通市','320611',' 港闸区'
union all select 'CN','32', '江苏省','3206', '南通市','320612',' 通州区'
union all select 'CN','32', '江苏省','3206', '南通市','320623',' 如东县'
union all select 'CN','32', '江苏省','3206', '南通市','320681',' 启东市'
union all select 'CN','32', '江苏省','3206', '南通市','320682',' 如皋市'
union all select 'CN','32', '江苏省','3206', '南通市','320684',' 海门市'
union all select 'CN','32', '江苏省','3206', '南通市','320685',' 海安市'
union all select 'CN','32', '江苏省','3207', '连云港市','',' '
union all select 'CN','32', '江苏省','3207', '连云港市','320703',' 连云区'
union all select 'CN','32', '江苏省','3207', '连云港市','320706',' 海州区'
union all select 'CN','32', '江苏省','3207', '连云港市','320707',' 赣榆区'
union all select 'CN','32', '江苏省','3207', '连云港市','320722',' 东海县'
union all select 'CN','32', '江苏省','3207', '连云港市','320723',' 灌云县'
union all select 'CN','32', '江苏省','3207', '连云港市','320724',' 灌南县'
union all select 'CN','32', '江苏省','3208', '淮安市','',' '
union all select 'CN','32', '江苏省','3208', '淮安市','320803',' 淮安区'
union all select 'CN','32', '江苏省','3208', '淮安市','320804',' 淮阴区'
union all select 'CN','32', '江苏省','3208', '淮安市','320812',' 清江浦区'
union all select 'CN','32', '江苏省','3208', '淮安市','320813',' 洪泽区'
union all select 'CN','32', '江苏省','3208', '淮安市','320826',' 涟水县'
union all select 'CN','32', '江苏省','3208', '淮安市','320830',' 盱眙县'
union all select 'CN','32', '江苏省','3208', '淮安市','320831',' 金湖县'
union all select 'CN','32', '江苏省','3209', '盐城市','',' '
union all select 'CN','32', '江苏省','3209', '盐城市','320902',' 亭湖区'
union all select 'CN','32', '江苏省','3209', '盐城市','320903',' 盐都区'
union all select 'CN','32', '江苏省','3209', '盐城市','320904',' 大丰区'
union all select 'CN','32', '江苏省','3209', '盐城市','320921',' 响水县'
union all select 'CN','32', '江苏省','3209', '盐城市','320922',' 滨海县'
union all select 'CN','32', '江苏省','3209', '盐城市','320923',' 阜宁县'
union all select 'CN','32', '江苏省','3209', '盐城市','320924',' 射阳县'
union all select 'CN','32', '江苏省','3209', '盐城市','320925',' 建湖县'
union all select 'CN','32', '江苏省','3209', '盐城市','320981',' 东台市'
union all select 'CN','32', '江苏省','3210', '扬州市','',' '
union all select 'CN','32', '江苏省','3210', '扬州市','321002',' 广陵区'
union all select 'CN','32', '江苏省','3210', '扬州市','321003',' 邗江区'
union all select 'CN','32', '江苏省','3210', '扬州市','321012',' 江都区'
union all select 'CN','32', '江苏省','3210', '扬州市','321023',' 宝应县'
union all select 'CN','32', '江苏省','3210', '扬州市','321081',' 仪征市'
union all select 'CN','32', '江苏省','3210', '扬州市','321084',' 高邮市'
union all select 'CN','32', '江苏省','3211', '镇江市','',' '
union all select 'CN','32', '江苏省','3211', '镇江市','321102',' 京口区'
union all select 'CN','32', '江苏省','3211', '镇江市','321111',' 润州区'
union all select 'CN','32', '江苏省','3211', '镇江市','321112',' 丹徒区'
union all select 'CN','32', '江苏省','3211', '镇江市','321181',' 丹阳市'
union all select 'CN','32', '江苏省','3211', '镇江市','321182',' 扬中市'
union all select 'CN','32', '江苏省','3211', '镇江市','321183',' 句容市'
union all select 'CN','32', '江苏省','3212', '泰州市','',' '
union all select 'CN','32', '江苏省','3212', '泰州市','321202',' 海陵区'
union all select 'CN','32', '江苏省','3212', '泰州市','321203',' 高港区'
union all select 'CN','32', '江苏省','3212', '泰州市','321204',' 姜堰区'
union all select 'CN','32', '江苏省','3212', '泰州市','321281',' 兴化市'
union all select 'CN','32', '江苏省','3212', '泰州市','321282',' 靖江市'
union all select 'CN','32', '江苏省','3212', '泰州市','321283',' 泰兴市'
union all select 'CN','32', '江苏省','3213', '宿迁市','',' '
union all select 'CN','32', '江苏省','3213', '宿迁市','321302',' 宿城区'
union all select 'CN','32', '江苏省','3213', '宿迁市','321311',' 宿豫区'
union all select 'CN','32', '江苏省','3213', '宿迁市','321322',' 沭阳县'
union all select 'CN','32', '江苏省','3213', '宿迁市','321323',' 泗阳县'
union all select 'CN','32', '江苏省','3213', '宿迁市','321324',' 泗洪县'
union all select 'CN','33', '浙江省','3300', '','',' '
union all select 'CN','33', '浙江省','3301', '杭州市','',' '
union all select 'CN','33', '浙江省','3301', '杭州市','330102',' 上城区'
union all select 'CN','33', '浙江省','3301', '杭州市','330103',' 下城区'
union all select 'CN','33', '浙江省','3301', '杭州市','330104',' 江干区'
union all select 'CN','33', '浙江省','3301', '杭州市','330105',' 拱墅区'
union all select 'CN','33', '浙江省','3301', '杭州市','330106',' 西湖区'
union all select 'CN','33', '浙江省','3301', '杭州市','330108',' 滨江区'
union all select 'CN','33', '浙江省','3301', '杭州市','330109',' 萧山区'
union all select 'CN','33', '浙江省','3301', '杭州市','330110',' 余杭区'
union all select 'CN','33', '浙江省','3301', '杭州市','330111',' 富阳区'
union all select 'CN','33', '浙江省','3301', '杭州市','330112',' 临安区'
union all select 'CN','33', '浙江省','3301', '杭州市','330122',' 桐庐县'
union all select 'CN','33', '浙江省','3301', '杭州市','330127',' 淳安县'
union all select 'CN','33', '浙江省','3301', '杭州市','330182',' 建德市'
union all select 'CN','33', '浙江省','3302', '宁波市','',' '
union all select 'CN','33', '浙江省','3302', '宁波市','330203',' 海曙区'
union all select 'CN','33', '浙江省','3302', '宁波市','330205',' 江北区'
union all select 'CN','33', '浙江省','3302', '宁波市','330206',' 北仑区'
union all select 'CN','33', '浙江省','3302', '宁波市','330211',' 镇海区'
union all select 'CN','33', '浙江省','3302', '宁波市','330212',' 鄞州区'
union all select 'CN','33', '浙江省','3302', '宁波市','330213',' 奉化区'
union all select 'CN','33', '浙江省','3302', '宁波市','330225',' 象山县'
union all select 'CN','33', '浙江省','3302', '宁波市','330226',' 宁海县'
union all select 'CN','33', '浙江省','3302', '宁波市','330281',' 余姚市'
union all select 'CN','33', '浙江省','3302', '宁波市','330282',' 慈溪市'
union all select 'CN','33', '浙江省','3303', '温州市','',' '
union all select 'CN','33', '浙江省','3303', '温州市','330302',' 鹿城区'
union all select 'CN','33', '浙江省','3303', '温州市','330303',' 龙湾区'
union all select 'CN','33', '浙江省','3303', '温州市','330304',' 瓯海区'
union all select 'CN','33', '浙江省','3303', '温州市','330305',' 洞头区'
union all select 'CN','33', '浙江省','3303', '温州市','330324',' 永嘉县'
union all select 'CN','33', '浙江省','3303', '温州市','330326',' 平阳县'
union all select 'CN','33', '浙江省','3303', '温州市','330327',' 苍南县'
union all select 'CN','33', '浙江省','3303', '温州市','330328',' 文成县'
union all select 'CN','33', '浙江省','3303', '温州市','330329',' 泰顺县'
union all select 'CN','33', '浙江省','3303', '温州市','330381',' 瑞安市'
union all select 'CN','33', '浙江省','3303', '温州市','330382',' 乐清市'
union all select 'CN','33', '浙江省','3304', '嘉兴市','',' '
union all select 'CN','33', '浙江省','3304', '嘉兴市','330402',' 南湖区'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330411',' 秀洲区'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330421',' 嘉善县'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330424',' 海盐县'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330481',' 海宁市'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330482',' 平湖市'
union all select 'CN','33', '浙江省','3304', '嘉兴市','330483',' 桐乡市'
union all select 'CN','33', '浙江省','3305', '湖州市','',' '
union all select 'CN','33', '浙江省','3305', '湖州市','330502',' 吴兴区'
union all select 'CN','33', '浙江省','3305', '湖州市','330503',' 南浔区'
union all select 'CN','33', '浙江省','3305', '湖州市','330521',' 德清县'
union all select 'CN','33', '浙江省','3305', '湖州市','330522',' 长兴县'
union all select 'CN','33', '浙江省','3305', '湖州市','330523',' 安吉县'
union all select 'CN','33', '浙江省','3306', '绍兴市','',' '
union all select 'CN','33', '浙江省','3306', '绍兴市','330602',' 越城区'
union all select 'CN','33', '浙江省','3306', '绍兴市','330603',' 柯桥区'
union all select 'CN','33', '浙江省','3306', '绍兴市','330604',' 上虞区'
union all select 'CN','33', '浙江省','3306', '绍兴市','330624',' 新昌县'
union all select 'CN','33', '浙江省','3306', '绍兴市','330681',' 诸暨市'
union all select 'CN','33', '浙江省','3306', '绍兴市','330683',' 嵊州市'
union all select 'CN','33', '浙江省','3307', '金华市','',' '
union all select 'CN','33', '浙江省','3307', '金华市','330702',' 婺城区'
union all select 'CN','33', '浙江省','3307', '金华市','330703',' 金东区'
union all select 'CN','33', '浙江省','3307', '金华市','330723',' 武义县'
union all select 'CN','33', '浙江省','3307', '金华市','330726',' 浦江县'
union all select 'CN','33', '浙江省','3307', '金华市','330727',' 磐安县'
union all select 'CN','33', '浙江省','3307', '金华市','330781',' 兰溪市'
union all select 'CN','33', '浙江省','3307', '金华市','330782',' 义乌市'
union all select 'CN','33', '浙江省','3307', '金华市','330783',' 东阳市'
union all select 'CN','33', '浙江省','3307', '金华市','330784',' 永康市'
union all select 'CN','33', '浙江省','3308', '衢州市','',' '
union all select 'CN','33', '浙江省','3308', '衢州市','330802',' 柯城区'
union all select 'CN','33', '浙江省','3308', '衢州市','330803',' 衢江区'
union all select 'CN','33', '浙江省','3308', '衢州市','330822',' 常山县'
union all select 'CN','33', '浙江省','3308', '衢州市','330824',' 开化县'
union all select 'CN','33', '浙江省','3308', '衢州市','330825',' 龙游县'
union all select 'CN','33', '浙江省','3308', '衢州市','330881',' 江山市'
union all select 'CN','33', '浙江省','3309', '舟山市','',' '
union all select 'CN','33', '浙江省','3309', '舟山市','330902',' 定海区'
union all select 'CN','33', '浙江省','3309', '舟山市','330903',' 普陀区'
union all select 'CN','33', '浙江省','3309', '舟山市','330921',' 岱山县'
union all select 'CN','33', '浙江省','3309', '舟山市','330922',' 嵊泗县'
union all select 'CN','33', '浙江省','3310', '台州市','',' '
union all select 'CN','33', '浙江省','3310', '台州市','331002',' 椒江区'
union all select 'CN','33', '浙江省','3310', '台州市','331003',' 黄岩区'
union all select 'CN','33', '浙江省','3310', '台州市','331004',' 路桥区'
union all select 'CN','33', '浙江省','3310', '台州市','331022',' 三门县'
union all select 'CN','33', '浙江省','3310', '台州市','331023',' 天台县'
union all select 'CN','33', '浙江省','3310', '台州市','331024',' 仙居县'
union all select 'CN','33', '浙江省','3310', '台州市','331081',' 温岭市'
union all select 'CN','33', '浙江省','3310', '台州市','331082',' 临海市'
union all select 'CN','33', '浙江省','3310', '台州市','331083',' 玉环市'
union all select 'CN','33', '浙江省','3311', '丽水市','',' '
union all select 'CN','33', '浙江省','3311', '丽水市','331102',' 莲都区'
union all select 'CN','33', '浙江省','3311', '丽水市','331121',' 青田县'
union all select 'CN','33', '浙江省','3311', '丽水市','331122',' 缙云县'
union all select 'CN','33', '浙江省','3311', '丽水市','331123',' 遂昌县'
union all select 'CN','33', '浙江省','3311', '丽水市','331124',' 松阳县'
union all select 'CN','33', '浙江省','3311', '丽水市','331125',' 云和县'
union all select 'CN','33', '浙江省','3311', '丽水市','331126',' 庆元县'
union all select 'CN','33', '浙江省','3311', '丽水市','331127',' 景宁畲族自治县'
union all select 'CN','33', '浙江省','3311', '丽水市','331181',' 龙泉市'
union all select 'CN','34', '安徽省','3400', '','',' '
union all select 'CN','34', '安徽省','3401', '合肥市','',' '
union all select 'CN','34', '安徽省','3401', '合肥市','340102',' 瑶海区'
union all select 'CN','34', '安徽省','3401', '合肥市','340103',' 庐阳区'
union all select 'CN','34', '安徽省','3401', '合肥市','340104',' 蜀山区'
union all select 'CN','34', '安徽省','3401', '合肥市','340111',' 包河区'
union all select 'CN','34', '安徽省','3401', '合肥市','340121',' 长丰县'
union all select 'CN','34', '安徽省','3401', '合肥市','340122',' 肥东县'
union all select 'CN','34', '安徽省','3401', '合肥市','340123',' 肥西县'
union all select 'CN','34', '安徽省','3401', '合肥市','340124',' 庐江县'
union all select 'CN','34', '安徽省','3401', '合肥市','340181',' 巢湖市'
union all select 'CN','34', '安徽省','3402', '芜湖市','',' '
union all select 'CN','34', '安徽省','3402', '芜湖市','340202',' 镜湖区'
union all select 'CN','34', '安徽省','3402', '芜湖市','340203',' 弋江区'
union all select 'CN','34', '安徽省','3402', '芜湖市','340207',' 鸠江区'
union all select 'CN','34', '安徽省','3402', '芜湖市','340208',' 三山区'
union all select 'CN','34', '安徽省','3402', '芜湖市','340221',' 芜湖县'
union all select 'CN','34', '安徽省','3402', '芜湖市','340222',' 繁昌县'
union all select 'CN','34', '安徽省','3402', '芜湖市','340223',' 南陵县'
union all select 'CN','34', '安徽省','3402', '芜湖市','340225',' 无为县'
union all select 'CN','34', '安徽省','3403', '蚌埠市','',' '
union all select 'CN','34', '安徽省','3403', '蚌埠市','340302',' 龙子湖区'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340303',' 蚌山区'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340304',' 禹会区'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340311',' 淮上区'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340321',' 怀远县'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340322',' 五河县'
union all select 'CN','34', '安徽省','3403', '蚌埠市','340323',' 固镇县'
union all select 'CN','34', '安徽省','3404', '淮南市','',' '
union all select 'CN','34', '安徽省','3404', '淮南市','340402',' 大通区'
union all select 'CN','34', '安徽省','3404', '淮南市','340403',' 田家庵区'
union all select 'CN','34', '安徽省','3404', '淮南市','340404',' 谢家集区'
union all select 'CN','34', '安徽省','3404', '淮南市','340405',' 八公山区'
union all select 'CN','34', '安徽省','3404', '淮南市','340406',' 潘集区'
union all select 'CN','34', '安徽省','3404', '淮南市','340421',' 凤台县'
union all select 'CN','34', '安徽省','3404', '淮南市','340422',' 寿县'
union all select 'CN','34', '安徽省','3405', '马鞍山市','',' '
union all select 'CN','34', '安徽省','3405', '马鞍山市','340503',' 花山区'
union all select 'CN','34', '安徽省','3405', '马鞍山市','340504',' 雨山区'
union all select 'CN','34', '安徽省','3405', '马鞍山市','340506',' 博望区'
union all select 'CN','34', '安徽省','3405', '马鞍山市','340521',' 当涂县'
union all select 'CN','34', '安徽省','3405', '马鞍山市','340522',' 含山县'
union all select 'CN','34', '安徽省','3405', '马鞍山市','340523',' 和县'
union all select 'CN','34', '安徽省','3406', '淮北市','',' '
union all select 'CN','34', '安徽省','3406', '淮北市','340602',' 杜集区'
union all select 'CN','34', '安徽省','3406', '淮北市','340603',' 相山区'
union all select 'CN','34', '安徽省','3406', '淮北市','340604',' 烈山区'
union all select 'CN','34', '安徽省','3406', '淮北市','340621',' 濉溪县'
union all select 'CN','34', '安徽省','3407', '铜陵市','',' '
union all select 'CN','34', '安徽省','3407', '铜陵市','340705',' 铜官区'
union all select 'CN','34', '安徽省','3407', '铜陵市','340706',' 义安区'
union all select 'CN','34', '安徽省','3407', '铜陵市','340711',' 郊区'
union all select 'CN','34', '安徽省','3407', '铜陵市','340722',' 枞阳县'
union all select 'CN','34', '安徽省','3408', '安庆市','',' '
union all select 'CN','34', '安徽省','3408', '安庆市','340802',' 迎江区'
union all select 'CN','34', '安徽省','3408', '安庆市','340803',' 大观区'
union all select 'CN','34', '安徽省','3408', '安庆市','340811',' 宜秀区'
union all select 'CN','34', '安徽省','3408', '安庆市','340822',' 怀宁县'
union all select 'CN','34', '安徽省','3408', '安庆市','340825',' 太湖县'
union all select 'CN','34', '安徽省','3408', '安庆市','340826',' 宿松县'
union all select 'CN','34', '安徽省','3408', '安庆市','340827',' 望江县'
union all select 'CN','34', '安徽省','3408', '安庆市','340828',' 岳西县'
union all select 'CN','34', '安徽省','3408', '安庆市','340881',' 桐城市'
union all select 'CN','34', '安徽省','3408', '安庆市','340882',' 潜山市'
union all select 'CN','34', '安徽省','3410', '黄山市','',' '
union all select 'CN','34', '安徽省','3410', '黄山市','341002',' 屯溪区'
union all select 'CN','34', '安徽省','3410', '黄山市','341003',' 黄山区'
union all select 'CN','34', '安徽省','3410', '黄山市','341004',' 徽州区'
union all select 'CN','34', '安徽省','3410', '黄山市','341021',' 歙县'
union all select 'CN','34', '安徽省','3410', '黄山市','341022',' 休宁县'
union all select 'CN','34', '安徽省','3410', '黄山市','341023',' 黟县'
union all select 'CN','34', '安徽省','3410', '黄山市','341024',' 祁门县'
union all select 'CN','34', '安徽省','3411', '滁州市','',' '
union all select 'CN','34', '安徽省','3411', '滁州市','341102',' 琅琊区'
union all select 'CN','34', '安徽省','3411', '滁州市','341103',' 南谯区'
union all select 'CN','34', '安徽省','3411', '滁州市','341122',' 来安县'
union all select 'CN','34', '安徽省','3411', '滁州市','341124',' 全椒县'
union all select 'CN','34', '安徽省','3411', '滁州市','341125',' 定远县'
union all select 'CN','34', '安徽省','3411', '滁州市','341126',' 凤阳县'
union all select 'CN','34', '安徽省','3411', '滁州市','341181',' 天长市'
union all select 'CN','34', '安徽省','3411', '滁州市','341182',' 明光市'
union all select 'CN','34', '安徽省','3412', '阜阳市','',' '
union all select 'CN','34', '安徽省','3412', '阜阳市','341202',' 颍州区'
union all select 'CN','34', '安徽省','3412', '阜阳市','341203',' 颍东区'
union all select 'CN','34', '安徽省','3412', '阜阳市','341204',' 颍泉区'
union all select 'CN','34', '安徽省','3412', '阜阳市','341221',' 临泉县'
union all select 'CN','34', '安徽省','3412', '阜阳市','341222',' 太和县'
union all select 'CN','34', '安徽省','3412', '阜阳市','341225',' 阜南县'
union all select 'CN','34', '安徽省','3412', '阜阳市','341226',' 颍上县'
union all select 'CN','34', '安徽省','3412', '阜阳市','341282',' 界首市'
union all select 'CN','34', '安徽省','3413', '宿州市','',' '
union all select 'CN','34', '安徽省','3413', '宿州市','341302',' 埇桥区'
union all select 'CN','34', '安徽省','3413', '宿州市','341321',' 砀山县'
union all select 'CN','34', '安徽省','3413', '宿州市','341322',' 萧县'
union all select 'CN','34', '安徽省','3413', '宿州市','341323',' 灵璧县'
union all select 'CN','34', '安徽省','3413', '宿州市','341324',' 泗县'
union all select 'CN','34', '安徽省','3415', '六安市','',' '
union all select 'CN','34', '安徽省','3415', '六安市','341502',' 金安区'
union all select 'CN','34', '安徽省','3415', '六安市','341503',' 裕安区'
union all select 'CN','34', '安徽省','3415', '六安市','341504',' 叶集区'
union all select 'CN','34', '安徽省','3415', '六安市','341522',' 霍邱县'
union all select 'CN','34', '安徽省','3415', '六安市','341523',' 舒城县'
union all select 'CN','34', '安徽省','3415', '六安市','341524',' 金寨县'
union all select 'CN','34', '安徽省','3415', '六安市','341525',' 霍山县'
union all select 'CN','34', '安徽省','3416', '亳州市','',' '
union all select 'CN','34', '安徽省','3416', '亳州市','341602',' 谯城区'
union all select 'CN','34', '安徽省','3416', '亳州市','341621',' 涡阳县'
union all select 'CN','34', '安徽省','3416', '亳州市','341622',' 蒙城县'
union all select 'CN','34', '安徽省','3416', '亳州市','341623',' 利辛县'
union all select 'CN','34', '安徽省','3417', '池州市','',' '
union all select 'CN','34', '安徽省','3417', '池州市','341702',' 贵池区'
union all select 'CN','34', '安徽省','3417', '池州市','341721',' 东至县'
union all select 'CN','34', '安徽省','3417', '池州市','341722',' 石台县'
union all select 'CN','34', '安徽省','3417', '池州市','341723',' 青阳县'
union all select 'CN','34', '安徽省','3418', '宣城市','',' '
union all select 'CN','34', '安徽省','3418', '宣城市','341802',' 宣州区'
union all select 'CN','34', '安徽省','3418', '宣城市','341821',' 郎溪县'
union all select 'CN','34', '安徽省','3418', '宣城市','341822',' 广德县'
union all select 'CN','34', '安徽省','3418', '宣城市','341823',' 泾县'
union all select 'CN','34', '安徽省','3418', '宣城市','341824',' 绩溪县'
union all select 'CN','34', '安徽省','3418', '宣城市','341825',' 旌德县'
union all select 'CN','34', '安徽省','3418', '宣城市','341881',' 宁国市'
union all select 'CN','35', '福建省','3500', '','',' '
union all select 'CN','35', '福建省','3501', '福州市','',' '
union all select 'CN','35', '福建省','3501', '福州市','350102',' 鼓楼区'
union all select 'CN','35', '福建省','3501', '福州市','350103',' 台江区'
union all select 'CN','35', '福建省','3501', '福州市','350104',' 仓山区'
union all select 'CN','35', '福建省','3501', '福州市','350105',' 马尾区'
union all select 'CN','35', '福建省','3501', '福州市','350111',' 晋安区'
union all select 'CN','35', '福建省','3501', '福州市','350112',' 长乐区'
union all select 'CN','35', '福建省','3501', '福州市','350121',' 闽侯县'
union all select 'CN','35', '福建省','3501', '福州市','350122',' 连江县'
union all select 'CN','35', '福建省','3501', '福州市','350123',' 罗源县'
union all select 'CN','35', '福建省','3501', '福州市','350124',' 闽清县'
union all select 'CN','35', '福建省','3501', '福州市','350125',' 永泰县'
union all select 'CN','35', '福建省','3501', '福州市','350128',' 平潭县'
union all select 'CN','35', '福建省','3501', '福州市','350181',' 福清市'
union all select 'CN','35', '福建省','3502', '厦门市','',' '
union all select 'CN','35', '福建省','3502', '厦门市','350203',' 思明区'
union all select 'CN','35', '福建省','3502', '厦门市','350205',' 海沧区'
union all select 'CN','35', '福建省','3502', '厦门市','350206',' 湖里区'
union all select 'CN','35', '福建省','3502', '厦门市','350211',' 集美区'
union all select 'CN','35', '福建省','3502', '厦门市','350212',' 同安区'
union all select 'CN','35', '福建省','3502', '厦门市','350213',' 翔安区'
union all select 'CN','35', '福建省','3503', '莆田市','',' '
union all select 'CN','35', '福建省','3503', '莆田市','350302',' 城厢区'
union all select 'CN','35', '福建省','3503', '莆田市','350303',' 涵江区'
union all select 'CN','35', '福建省','3503', '莆田市','350304',' 荔城区'
union all select 'CN','35', '福建省','3503', '莆田市','350305',' 秀屿区'
union all select 'CN','35', '福建省','3503', '莆田市','350322',' 仙游县'
union all select 'CN','35', '福建省','3504', '三明市','',' '
union all select 'CN','35', '福建省','3504', '三明市','350402',' 梅列区'
union all select 'CN','35', '福建省','3504', '三明市','350403',' 三元区'
union all select 'CN','35', '福建省','3504', '三明市','350421',' 明溪县'
union all select 'CN','35', '福建省','3504', '三明市','350423',' 清流县'
union all select 'CN','35', '福建省','3504', '三明市','350424',' 宁化县'
union all select 'CN','35', '福建省','3504', '三明市','350425',' 大田县'
union all select 'CN','35', '福建省','3504', '三明市','350426',' 尤溪县'
union all select 'CN','35', '福建省','3504', '三明市','350427',' 沙县'
union all select 'CN','35', '福建省','3504', '三明市','350428',' 将乐县'
union all select 'CN','35', '福建省','3504', '三明市','350429',' 泰宁县'
union all select 'CN','35', '福建省','3504', '三明市','350430',' 建宁县'
union all select 'CN','35', '福建省','3504', '三明市','350481',' 永安市'
union all select 'CN','35', '福建省','3505', '泉州市','',' '
union all select 'CN','35', '福建省','3505', '泉州市','350502',' 鲤城区'
union all select 'CN','35', '福建省','3505', '泉州市','350503',' 丰泽区'
union all select 'CN','35', '福建省','3505', '泉州市','350504',' 洛江区'
union all select 'CN','35', '福建省','3505', '泉州市','350505',' 泉港区'
union all select 'CN','35', '福建省','3505', '泉州市','350521',' 惠安县'
union all select 'CN','35', '福建省','3505', '泉州市','350524',' 安溪县'
union all select 'CN','35', '福建省','3505', '泉州市','350525',' 永春县'
union all select 'CN','35', '福建省','3505', '泉州市','350526',' 德化县'
union all select 'CN','35', '福建省','3505', '泉州市','350527',' 金门县'
union all select 'CN','35', '福建省','3505', '泉州市','350581',' 石狮市'
union all select 'CN','35', '福建省','3505', '泉州市','350582',' 晋江市'
union all select 'CN','35', '福建省','3505', '泉州市','350583',' 南安市'
union all select 'CN','35', '福建省','3506', '漳州市','',' '
union all select 'CN','35', '福建省','3506', '漳州市','350602',' 芗城区'
union all select 'CN','35', '福建省','3506', '漳州市','350603',' 龙文区'
union all select 'CN','35', '福建省','3506', '漳州市','350622',' 云霄县'
union all select 'CN','35', '福建省','3506', '漳州市','350623',' 漳浦县'
union all select 'CN','35', '福建省','3506', '漳州市','350624',' 诏安县'
union all select 'CN','35', '福建省','3506', '漳州市','350625',' 长泰县'
union all select 'CN','35', '福建省','3506', '漳州市','350626',' 东山县'
union all select 'CN','35', '福建省','3506', '漳州市','350627',' 南靖县'
union all select 'CN','35', '福建省','3506', '漳州市','350628',' 平和县'
union all select 'CN','35', '福建省','3506', '漳州市','350629',' 华安县'
union all select 'CN','35', '福建省','3506', '漳州市','350681',' 龙海市'
union all select 'CN','35', '福建省','3507', '南平市','',' '
union all select 'CN','35', '福建省','3507', '南平市','350702',' 延平区'
union all select 'CN','35', '福建省','3507', '南平市','350703',' 建阳区'
union all select 'CN','35', '福建省','3507', '南平市','350721',' 顺昌县'
union all select 'CN','35', '福建省','3507', '南平市','350722',' 浦城县'
union all select 'CN','35', '福建省','3507', '南平市','350723',' 光泽县'
union all select 'CN','35', '福建省','3507', '南平市','350724',' 松溪县'
union all select 'CN','35', '福建省','3507', '南平市','350725',' 政和县'
union all select 'CN','35', '福建省','3507', '南平市','350781',' 邵武市'
union all select 'CN','35', '福建省','3507', '南平市','350782',' 武夷山市'
union all select 'CN','35', '福建省','3507', '南平市','350783',' 建瓯市'
union all select 'CN','35', '福建省','3508', '龙岩市','',' '
union all select 'CN','35', '福建省','3508', '龙岩市','350802',' 新罗区'
union all select 'CN','35', '福建省','3508', '龙岩市','350803',' 永定区'
union all select 'CN','35', '福建省','3508', '龙岩市','350821',' 长汀县'
union all select 'CN','35', '福建省','3508', '龙岩市','350823',' 上杭县'
union all select 'CN','35', '福建省','3508', '龙岩市','350824',' 武平县'
union all select 'CN','35', '福建省','3508', '龙岩市','350825',' 连城县'
union all select 'CN','35', '福建省','3508', '龙岩市','350881',' 漳平市'
union all select 'CN','35', '福建省','3509', '宁德市','',' '
union all select 'CN','35', '福建省','3509', '宁德市','350902',' 蕉城区'
union all select 'CN','35', '福建省','3509', '宁德市','350921',' 霞浦县'
union all select 'CN','35', '福建省','3509', '宁德市','350922',' 古田县'
union all select 'CN','35', '福建省','3509', '宁德市','350923',' 屏南县'
union all select 'CN','35', '福建省','3509', '宁德市','350924',' 寿宁县'
union all select 'CN','35', '福建省','3509', '宁德市','350925',' 周宁县'
union all select 'CN','35', '福建省','3509', '宁德市','350926',' 柘荣县'
union all select 'CN','35', '福建省','3509', '宁德市','350981',' 福安市'
union all select 'CN','35', '福建省','3509', '宁德市','350982',' 福鼎市'
union all select 'CN','36', '江西省','3600', '','',' '
union all select 'CN','36', '江西省','3601', '南昌市','',' '
union all select 'CN','36', '江西省','3601', '南昌市','360102',' 东湖区'
union all select 'CN','36', '江西省','3601', '南昌市','360103',' 西湖区'
union all select 'CN','36', '江西省','3601', '南昌市','360104',' 青云谱区'
union all select 'CN','36', '江西省','3601', '南昌市','360105',' 湾里区'
union all select 'CN','36', '江西省','3601', '南昌市','360111',' 青山湖区'
union all select 'CN','36', '江西省','3601', '南昌市','360112',' 新建区'
union all select 'CN','36', '江西省','3601', '南昌市','360121',' 南昌县'
union all select 'CN','36', '江西省','3601', '南昌市','360123',' 安义县'
union all select 'CN','36', '江西省','3601', '南昌市','360124',' 进贤县'
union all select 'CN','36', '江西省','3602', '景德镇市','',' '
union all select 'CN','36', '江西省','3602', '景德镇市','360202',' 昌江区'
union all select 'CN','36', '江西省','3602', '景德镇市','360203',' 珠山区'
union all select 'CN','36', '江西省','3602', '景德镇市','360222',' 浮梁县'
union all select 'CN','36', '江西省','3602', '景德镇市','360281',' 乐平市'
union all select 'CN','36', '江西省','3603', '萍乡市','',' '
union all select 'CN','36', '江西省','3603', '萍乡市','360302',' 安源区'
union all select 'CN','36', '江西省','3603', '萍乡市','360313',' 湘东区'
union all select 'CN','36', '江西省','3603', '萍乡市','360321',' 莲花县'
union all select 'CN','36', '江西省','3603', '萍乡市','360322',' 上栗县'
union all select 'CN','36', '江西省','3603', '萍乡市','360323',' 芦溪县'
union all select 'CN','36', '江西省','3604', '九江市','',' '
union all select 'CN','36', '江西省','3604', '九江市','360402',' 濂溪区'
union all select 'CN','36', '江西省','3604', '九江市','360403',' 浔阳区'
union all select 'CN','36', '江西省','3604', '九江市','360404',' 柴桑区'
union all select 'CN','36', '江西省','3604', '九江市','360423',' 武宁县'
union all select 'CN','36', '江西省','3604', '九江市','360424',' 修水县'
union all select 'CN','36', '江西省','3604', '九江市','360425',' 永修县'
union all select 'CN','36', '江西省','3604', '九江市','360426',' 德安县'
union all select 'CN','36', '江西省','3604', '九江市','360428',' 都昌县'
union all select 'CN','36', '江西省','3604', '九江市','360429',' 湖口县'
union all select 'CN','36', '江西省','3604', '九江市','360430',' 彭泽县'
union all select 'CN','36', '江西省','3604', '九江市','360481',' 瑞昌市'
union all select 'CN','36', '江西省','3604', '九江市','360482',' 共青城市'
union all select 'CN','36', '江西省','3604', '九江市','360483',' 庐山市'
union all select 'CN','36', '江西省','3605', '新余市','',' '
union all select 'CN','36', '江西省','3605', '新余市','360502',' 渝水区'
union all select 'CN','36', '江西省','3605', '新余市','360521',' 分宜县'
union all select 'CN','36', '江西省','3606', '鹰潭市','',' '
union all select 'CN','36', '江西省','3606', '鹰潭市','360602',' 月湖区'
union all select 'CN','36', '江西省','3606', '鹰潭市','360603',' 余江区'
union all select 'CN','36', '江西省','3606', '鹰潭市','360681',' 贵溪市'
union all select 'CN','36', '江西省','3607', '赣州市','',' '
union all select 'CN','36', '江西省','3607', '赣州市','360702',' 章贡区'
union all select 'CN','36', '江西省','3607', '赣州市','360703',' 南康区'
union all select 'CN','36', '江西省','3607', '赣州市','360704',' 赣县区'
union all select 'CN','36', '江西省','3607', '赣州市','360722',' 信丰县'
union all select 'CN','36', '江西省','3607', '赣州市','360723',' 大余县'
union all select 'CN','36', '江西省','3607', '赣州市','360724',' 上犹县'
union all select 'CN','36', '江西省','3607', '赣州市','360725',' 崇义县'
union all select 'CN','36', '江西省','3607', '赣州市','360726',' 安远县'
union all select 'CN','36', '江西省','3607', '赣州市','360727',' 龙南县'
union all select 'CN','36', '江西省','3607', '赣州市','360728',' 定南县'
union all select 'CN','36', '江西省','3607', '赣州市','360729',' 全南县'
union all select 'CN','36', '江西省','3607', '赣州市','360730',' 宁都县'
union all select 'CN','36', '江西省','3607', '赣州市','360731',' 于都县'
union all select 'CN','36', '江西省','3607', '赣州市','360732',' 兴国县'
union all select 'CN','36', '江西省','3607', '赣州市','360733',' 会昌县'
union all select 'CN','36', '江西省','3607', '赣州市','360734',' 寻乌县'
union all select 'CN','36', '江西省','3607', '赣州市','360735',' 石城县'
union all select 'CN','36', '江西省','3607', '赣州市','360781',' 瑞金市'
union all select 'CN','36', '江西省','3608', '吉安市','',' '
union all select 'CN','36', '江西省','3608', '吉安市','360802',' 吉州区'
union all select 'CN','36', '江西省','3608', '吉安市','360803',' 青原区'
union all select 'CN','36', '江西省','3608', '吉安市','360821',' 吉安县'
union all select 'CN','36', '江西省','3608', '吉安市','360822',' 吉水县'
union all select 'CN','36', '江西省','3608', '吉安市','360823',' 峡江县'
union all select 'CN','36', '江西省','3608', '吉安市','360824',' 新干县'
union all select 'CN','36', '江西省','3608', '吉安市','360825',' 永丰县'
union all select 'CN','36', '江西省','3608', '吉安市','360826',' 泰和县'
union all select 'CN','36', '江西省','3608', '吉安市','360827',' 遂川县'
union all select 'CN','36', '江西省','3608', '吉安市','360828',' 万安县'
union all select 'CN','36', '江西省','3608', '吉安市','360829',' 安福县'
union all select 'CN','36', '江西省','3608', '吉安市','360830',' 永新县'
union all select 'CN','36', '江西省','3608', '吉安市','360881',' 井冈山市'
union all select 'CN','36', '江西省','3609', '宜春市','',' '
union all select 'CN','36', '江西省','3609', '宜春市','360902',' 袁州区'
union all select 'CN','36', '江西省','3609', '宜春市','360921',' 奉新县'
union all select 'CN','36', '江西省','3609', '宜春市','360922',' 万载县'
union all select 'CN','36', '江西省','3609', '宜春市','360923',' 上高县'
union all select 'CN','36', '江西省','3609', '宜春市','360924',' 宜丰县'
union all select 'CN','36', '江西省','3609', '宜春市','360925',' 靖安县'
union all select 'CN','36', '江西省','3609', '宜春市','360926',' 铜鼓县'
union all select 'CN','36', '江西省','3609', '宜春市','360981',' 丰城市'
union all select 'CN','36', '江西省','3609', '宜春市','360982',' 樟树市'
union all select 'CN','36', '江西省','3609', '宜春市','360983',' 高安市'
union all select 'CN','36', '江西省','3610', '抚州市','',' '
union all select 'CN','36', '江西省','3610', '抚州市','361002',' 临川区'
union all select 'CN','36', '江西省','3610', '抚州市','361003',' 东乡区'
union all select 'CN','36', '江西省','3610', '抚州市','361021',' 南城县'
union all select 'CN','36', '江西省','3610', '抚州市','361022',' 黎川县'
union all select 'CN','36', '江西省','3610', '抚州市','361023',' 南丰县'
union all select 'CN','36', '江西省','3610', '抚州市','361024',' 崇仁县'
union all select 'CN','36', '江西省','3610', '抚州市','361025',' 乐安县'
union all select 'CN','36', '江西省','3610', '抚州市','361026',' 宜黄县'
union all select 'CN','36', '江西省','3610', '抚州市','361027',' 金溪县'
union all select 'CN','36', '江西省','3610', '抚州市','361028',' 资溪县'
union all select 'CN','36', '江西省','3610', '抚州市','361030',' 广昌县'
union all select 'CN','36', '江西省','3611', '上饶市','',' '
union all select 'CN','36', '江西省','3611', '上饶市','361102',' 信州区'
union all select 'CN','36', '江西省','3611', '上饶市','361103',' 广丰区'
union all select 'CN','36', '江西省','3611', '上饶市','361121',' 上饶县'
union all select 'CN','36', '江西省','3611', '上饶市','361123',' 玉山县'
union all select 'CN','36', '江西省','3611', '上饶市','361124',' 铅山县'
union all select 'CN','36', '江西省','3611', '上饶市','361125',' 横峰县'
union all select 'CN','36', '江西省','3611', '上饶市','361126',' 弋阳县'
union all select 'CN','36', '江西省','3611', '上饶市','361127',' 余干县'
union all select 'CN','36', '江西省','3611', '上饶市','361128',' 鄱阳县'
union all select 'CN','36', '江西省','3611', '上饶市','361129',' 万年县'
union all select 'CN','36', '江西省','3611', '上饶市','361130',' 婺源县'
union all select 'CN','36', '江西省','3611', '上饶市','361181',' 德兴市'
union all select 'CN','37', '山东省','3700', '','',' '
union all select 'CN','37', '山东省','3701', '济南市','',' '
union all select 'CN','37', '山东省','3701', '济南市','370102',' 历下区'
union all select 'CN','37', '山东省','3701', '济南市','370103',' 市中区'
union all select 'CN','37', '山东省','3701', '济南市','370104',' 槐荫区'
union all select 'CN','37', '山东省','3701', '济南市','370105',' 天桥区'
union all select 'CN','37', '山东省','3701', '济南市','370112',' 历城区'
union all select 'CN','37', '山东省','3701', '济南市','370113',' 长清区'
union all select 'CN','37', '山东省','3701', '济南市','370114',' 章丘区'
union all select 'CN','37', '山东省','3701', '济南市','370115',' 济阳区'
union all select 'CN','37', '山东省','3701', '济南市','370124',' 平阴县'
union all select 'CN','37', '山东省','3701', '济南市','370126',' 商河县'
union all select 'CN','37', '山东省','3702', '青岛市','',' '
union all select 'CN','37', '山东省','3702', '青岛市','370202',' 市南区'
union all select 'CN','37', '山东省','3702', '青岛市','370203',' 市北区'
union all select 'CN','37', '山东省','3702', '青岛市','370211',' 黄岛区'
union all select 'CN','37', '山东省','3702', '青岛市','370212',' 崂山区'
union all select 'CN','37', '山东省','3702', '青岛市','370213',' 李沧区'
union all select 'CN','37', '山东省','3702', '青岛市','370214',' 城阳区'
union all select 'CN','37', '山东省','3702', '青岛市','370215',' 即墨区'
union all select 'CN','37', '山东省','3702', '青岛市','370281',' 胶州市'
union all select 'CN','37', '山东省','3702', '青岛市','370283',' 平度市'
union all select 'CN','37', '山东省','3702', '青岛市','370285',' 莱西市'
union all select 'CN','37', '山东省','3703', '淄博市','',' '
union all select 'CN','37', '山东省','3703', '淄博市','370302',' 淄川区'
union all select 'CN','37', '山东省','3703', '淄博市','370303',' 张店区'
union all select 'CN','37', '山东省','3703', '淄博市','370304',' 博山区'
union all select 'CN','37', '山东省','3703', '淄博市','370305',' 临淄区'
union all select 'CN','37', '山东省','3703', '淄博市','370306',' 周村区'
union all select 'CN','37', '山东省','3703', '淄博市','370321',' 桓台县'
union all select 'CN','37', '山东省','3703', '淄博市','370322',' 高青县'
union all select 'CN','37', '山东省','3703', '淄博市','370323',' 沂源县'
union all select 'CN','37', '山东省','3704', '枣庄市','',' '
union all select 'CN','37', '山东省','3704', '枣庄市','370402',' 市中区'
union all select 'CN','37', '山东省','3704', '枣庄市','370403',' 薛城区'
union all select 'CN','37', '山东省','3704', '枣庄市','370404',' 峄城区'
union all select 'CN','37', '山东省','3704', '枣庄市','370405',' 台儿庄区'
union all select 'CN','37', '山东省','3704', '枣庄市','370406',' 山亭区'
union all select 'CN','37', '山东省','3704', '枣庄市','370481',' 滕州市'
union all select 'CN','37', '山东省','3705', '东营市','',' '
union all select 'CN','37', '山东省','3705', '东营市','370502',' 东营区'
union all select 'CN','37', '山东省','3705', '东营市','370503',' 河口区'
union all select 'CN','37', '山东省','3705', '东营市','370505',' 垦利区'
union all select 'CN','37', '山东省','3705', '东营市','370522',' 利津县'
union all select 'CN','37', '山东省','3705', '东营市','370523',' 广饶县'
union all select 'CN','37', '山东省','3706', '烟台市','',' '
union all select 'CN','37', '山东省','3706', '烟台市','370602',' 芝罘区'
union all select 'CN','37', '山东省','3706', '烟台市','370611',' 福山区'
union all select 'CN','37', '山东省','3706', '烟台市','370612',' 牟平区'
union all select 'CN','37', '山东省','3706', '烟台市','370613',' 莱山区'
union all select 'CN','37', '山东省','3706', '烟台市','370634',' 长岛县'
union all select 'CN','37', '山东省','3706', '烟台市','370681',' 龙口市'
union all select 'CN','37', '山东省','3706', '烟台市','370682',' 莱阳市'
union all select 'CN','37', '山东省','3706', '烟台市','370683',' 莱州市'
union all select 'CN','37', '山东省','3706', '烟台市','370684',' 蓬莱市'
union all select 'CN','37', '山东省','3706', '烟台市','370685',' 招远市'
union all select 'CN','37', '山东省','3706', '烟台市','370686',' 栖霞市'
union all select 'CN','37', '山东省','3706', '烟台市','370687',' 海阳市'
union all select 'CN','37', '山东省','3707', '潍坊市','',' '
union all select 'CN','37', '山东省','3707', '潍坊市','370702',' 潍城区'
union all select 'CN','37', '山东省','3707', '潍坊市','370703',' 寒亭区'
union all select 'CN','37', '山东省','3707', '潍坊市','370704',' 坊子区'
union all select 'CN','37', '山东省','3707', '潍坊市','370705',' 奎文区'
union all select 'CN','37', '山东省','3707', '潍坊市','370724',' 临朐县'
union all select 'CN','37', '山东省','3707', '潍坊市','370725',' 昌乐县'
union all select 'CN','37', '山东省','3707', '潍坊市','370781',' 青州市'
union all select 'CN','37', '山东省','3707', '潍坊市','370782',' 诸城市'
union all select 'CN','37', '山东省','3707', '潍坊市','370783',' 寿光市'
union all select 'CN','37', '山东省','3707', '潍坊市','370784',' 安丘市'
union all select 'CN','37', '山东省','3707', '潍坊市','370785',' 高密市'
union all select 'CN','37', '山东省','3707', '潍坊市','370786',' 昌邑市'
union all select 'CN','37', '山东省','3708', '济宁市','',' '
union all select 'CN','37', '山东省','3708', '济宁市','370811',' 任城区'
union all select 'CN','37', '山东省','3708', '济宁市','370812',' 兖州区'
union all select 'CN','37', '山东省','3708', '济宁市','370826',' 微山县'
union all select 'CN','37', '山东省','3708', '济宁市','370827',' 鱼台县'
union all select 'CN','37', '山东省','3708', '济宁市','370828',' 金乡县'
union all select 'CN','37', '山东省','3708', '济宁市','370829',' 嘉祥县'
union all select 'CN','37', '山东省','3708', '济宁市','370830',' 汶上县'
union all select 'CN','37', '山东省','3708', '济宁市','370831',' 泗水县'
union all select 'CN','37', '山东省','3708', '济宁市','370832',' 梁山县'
union all select 'CN','37', '山东省','3708', '济宁市','370881',' 曲阜市'
union all select 'CN','37', '山东省','3708', '济宁市','370883',' 邹城市'
union all select 'CN','37', '山东省','3709', '泰安市','',' '
union all select 'CN','37', '山东省','3709', '泰安市','370902',' 泰山区'
union all select 'CN','37', '山东省','3709', '泰安市','370911',' 岱岳区'
union all select 'CN','37', '山东省','3709', '泰安市','370921',' 宁阳县'
union all select 'CN','37', '山东省','3709', '泰安市','370923',' 东平县'
union all select 'CN','37', '山东省','3709', '泰安市','370982',' 新泰市'
union all select 'CN','37', '山东省','3709', '泰安市','370983',' 肥城市'
union all select 'CN','37', '山东省','3710', '威海市','',' '
union all select 'CN','37', '山东省','3710', '威海市','371002',' 环翠区'
union all select 'CN','37', '山东省','3710', '威海市','371003',' 文登区'
union all select 'CN','37', '山东省','3710', '威海市','371082',' 荣成市'
union all select 'CN','37', '山东省','3710', '威海市','371083',' 乳山市'
union all select 'CN','37', '山东省','3711', '日照市','',' '
union all select 'CN','37', '山东省','3711', '日照市','371102',' 东港区'
union all select 'CN','37', '山东省','3711', '日照市','371103',' 岚山区'
union all select 'CN','37', '山东省','3711', '日照市','371121',' 五莲县'
union all select 'CN','37', '山东省','3711', '日照市','371122',' 莒县'
union all select 'CN','37', '山东省','3712', '莱芜市','',' '
union all select 'CN','37', '山东省','3712', '莱芜市','371202',' 莱城区'
union all select 'CN','37', '山东省','3712', '莱芜市','371203',' 钢城区'
union all select 'CN','37', '山东省','3713', '临沂市','',' '
union all select 'CN','37', '山东省','3713', '临沂市','371302',' 兰山区'
union all select 'CN','37', '山东省','3713', '临沂市','371311',' 罗庄区'
union all select 'CN','37', '山东省','3713', '临沂市','371312',' 河东区'
union all select 'CN','37', '山东省','3713', '临沂市','371321',' 沂南县'
union all select 'CN','37', '山东省','3713', '临沂市','371322',' 郯城县'
union all select 'CN','37', '山东省','3713', '临沂市','371323',' 沂水县'
union all select 'CN','37', '山东省','3713', '临沂市','371324',' 兰陵县'
union all select 'CN','37', '山东省','3713', '临沂市','371325',' 费县'
union all select 'CN','37', '山东省','3713', '临沂市','371326',' 平邑县'
union all select 'CN','37', '山东省','3713', '临沂市','371327',' 莒南县'
union all select 'CN','37', '山东省','3713', '临沂市','371328',' 蒙阴县'
union all select 'CN','37', '山东省','3713', '临沂市','371329',' 临沭县'
union all select 'CN','37', '山东省','3714', '德州市','',' '
union all select 'CN','37', '山东省','3714', '德州市','371402',' 德城区'
union all select 'CN','37', '山东省','3714', '德州市','371403',' 陵城区'
union all select 'CN','37', '山东省','3714', '德州市','371422',' 宁津县'
union all select 'CN','37', '山东省','3714', '德州市','371423',' 庆云县'
union all select 'CN','37', '山东省','3714', '德州市','371424',' 临邑县'
union all select 'CN','37', '山东省','3714', '德州市','371425',' 齐河县'
union all select 'CN','37', '山东省','3714', '德州市','371426',' 平原县'
union all select 'CN','37', '山东省','3714', '德州市','371427',' 夏津县'
union all select 'CN','37', '山东省','3714', '德州市','371428',' 武城县'
union all select 'CN','37', '山东省','3714', '德州市','371481',' 乐陵市'
union all select 'CN','37', '山东省','3714', '德州市','371482',' 禹城市'
union all select 'CN','37', '山东省','3715', '聊城市','',' '
union all select 'CN','37', '山东省','3715', '聊城市','371502',' 东昌府区'
union all select 'CN','37', '山东省','3715', '聊城市','371521',' 阳谷县'
union all select 'CN','37', '山东省','3715', '聊城市','371522',' 莘县'
union all select 'CN','37', '山东省','3715', '聊城市','371523',' 茌平县'
union all select 'CN','37', '山东省','3715', '聊城市','371524',' 东阿县'
union all select 'CN','37', '山东省','3715', '聊城市','371525',' 冠县'
union all select 'CN','37', '山东省','3715', '聊城市','371526',' 高唐县'
union all select 'CN','37', '山东省','3715', '聊城市','371581',' 临清市'
union all select 'CN','37', '山东省','3716', '滨州市','',' '
union all select 'CN','37', '山东省','3716', '滨州市','371602',' 滨城区'
union all select 'CN','37', '山东省','3716', '滨州市','371603',' 沾化区'
union all select 'CN','37', '山东省','3716', '滨州市','371621',' 惠民县'
union all select 'CN','37', '山东省','3716', '滨州市','371622',' 阳信县'
union all select 'CN','37', '山东省','3716', '滨州市','371623',' 无棣县'
union all select 'CN','37', '山东省','3716', '滨州市','371625',' 博兴县'
union all select 'CN','37', '山东省','3716', '滨州市','371681',' 邹平市'
union all select 'CN','37', '山东省','3717', '菏泽市','',' '
union all select 'CN','37', '山东省','3717', '菏泽市','371702',' 牡丹区'
union all select 'CN','37', '山东省','3717', '菏泽市','371703',' 定陶区'
union all select 'CN','37', '山东省','3717', '菏泽市','371721',' 曹县'
union all select 'CN','37', '山东省','3717', '菏泽市','371722',' 单县'
union all select 'CN','37', '山东省','3717', '菏泽市','371723',' 成武县'
union all select 'CN','37', '山东省','3717', '菏泽市','371724',' 巨野县'
union all select 'CN','37', '山东省','3717', '菏泽市','371725',' 郓城县'
union all select 'CN','37', '山东省','3717', '菏泽市','371726',' 鄄城县'
union all select 'CN','37', '山东省','3717', '菏泽市','371728',' 东明县'
union all select 'CN','41', '河南省','4100', '','',' '
union all select 'CN','41', '河南省','4101', '郑州市','',' '
union all select 'CN','41', '河南省','4101', '郑州市','410102',' 中原区'
union all select 'CN','41', '河南省','4101', '郑州市','410103',' 二七区'
union all select 'CN','41', '河南省','4101', '郑州市','410104',' 管城回族区'
union all select 'CN','41', '河南省','4101', '郑州市','410105',' 金水区'
union all select 'CN','41', '河南省','4101', '郑州市','410106',' 上街区'
union all select 'CN','41', '河南省','4101', '郑州市','410108',' 惠济区'
union all select 'CN','41', '河南省','4101', '郑州市','410122',' 中牟县'
union all select 'CN','41', '河南省','4101', '郑州市','410181',' 巩义市'
union all select 'CN','41', '河南省','4101', '郑州市','410182',' 荥阳市'
union all select 'CN','41', '河南省','4101', '郑州市','410183',' 新密市'
union all select 'CN','41', '河南省','4101', '郑州市','410184',' 新郑市'
union all select 'CN','41', '河南省','4101', '郑州市','410185',' 登封市'
union all select 'CN','41', '河南省','4102', '开封市','',' '
union all select 'CN','41', '河南省','4102', '开封市','410202',' 龙亭区'
union all select 'CN','41', '河南省','4102', '开封市','410203',' 顺河回族区'
union all select 'CN','41', '河南省','4102', '开封市','410204',' 鼓楼区'
union all select 'CN','41', '河南省','4102', '开封市','410205',' 禹王台区'
union all select 'CN','41', '河南省','4102', '开封市','410212',' 祥符区'
union all select 'CN','41', '河南省','4102', '开封市','410221',' 杞县'
union all select 'CN','41', '河南省','4102', '开封市','410222',' 通许县'
union all select 'CN','41', '河南省','4102', '开封市','410223',' 尉氏县'
union all select 'CN','41', '河南省','4102', '开封市','410225',' 兰考县'
union all select 'CN','41', '河南省','4103', '洛阳市','',' '
union all select 'CN','41', '河南省','4103', '洛阳市','410302',' 老城区'
union all select 'CN','41', '河南省','4103', '洛阳市','410303',' 西工区'
union all select 'CN','41', '河南省','4103', '洛阳市','410304',' 瀍河回族区'
union all select 'CN','41', '河南省','4103', '洛阳市','410305',' 涧西区'
union all select 'CN','41', '河南省','4103', '洛阳市','410306',' 吉利区'
union all select 'CN','41', '河南省','4103', '洛阳市','410311',' 洛龙区'
union all select 'CN','41', '河南省','4103', '洛阳市','410322',' 孟津县'
union all select 'CN','41', '河南省','4103', '洛阳市','410323',' 新安县'
union all select 'CN','41', '河南省','4103', '洛阳市','410324',' 栾川县'
union all select 'CN','41', '河南省','4103', '洛阳市','410325',' 嵩县'
union all select 'CN','41', '河南省','4103', '洛阳市','410326',' 汝阳县'
union all select 'CN','41', '河南省','4103', '洛阳市','410327',' 宜阳县'
union all select 'CN','41', '河南省','4103', '洛阳市','410328',' 洛宁县'
union all select 'CN','41', '河南省','4103', '洛阳市','410329',' 伊川县'
union all select 'CN','41', '河南省','4103', '洛阳市','410381',' 偃师市'
union all select 'CN','41', '河南省','4104', '平顶山市','',' '
union all select 'CN','41', '河南省','4104', '平顶山市','410402',' 新华区'
union all select 'CN','41', '河南省','4104', '平顶山市','410403',' 卫东区'
union all select 'CN','41', '河南省','4104', '平顶山市','410404',' 石龙区'
union all select 'CN','41', '河南省','4104', '平顶山市','410411',' 湛河区'
union all select 'CN','41', '河南省','4104', '平顶山市','410421',' 宝丰县'
union all select 'CN','41', '河南省','4104', '平顶山市','410422',' 叶县'
union all select 'CN','41', '河南省','4104', '平顶山市','410423',' 鲁山县'
union all select 'CN','41', '河南省','4104', '平顶山市','410425',' 郏县'
union all select 'CN','41', '河南省','4104', '平顶山市','410481',' 舞钢市'
union all select 'CN','41', '河南省','4104', '平顶山市','410482',' 汝州市'
union all select 'CN','41', '河南省','4105', '安阳市','',' '
union all select 'CN','41', '河南省','4105', '安阳市','410502',' 文峰区'
union all select 'CN','41', '河南省','4105', '安阳市','410503',' 北关区'
union all select 'CN','41', '河南省','4105', '安阳市','410505',' 殷都区'
union all select 'CN','41', '河南省','4105', '安阳市','410506',' 龙安区'
union all select 'CN','41', '河南省','4105', '安阳市','410522',' 安阳县'
union all select 'CN','41', '河南省','4105', '安阳市','410523',' 汤阴县'
union all select 'CN','41', '河南省','4105', '安阳市','410526',' 滑县'
union all select 'CN','41', '河南省','4105', '安阳市','410527',' 内黄县'
union all select 'CN','41', '河南省','4105', '安阳市','410581',' 林州市'
union all select 'CN','41', '河南省','4106', '鹤壁市','',' '
union all select 'CN','41', '河南省','4106', '鹤壁市','410602',' 鹤山区'
union all select 'CN','41', '河南省','4106', '鹤壁市','410603',' 山城区'
union all select 'CN','41', '河南省','4106', '鹤壁市','410611',' 淇滨区'
union all select 'CN','41', '河南省','4106', '鹤壁市','410621',' 浚县'
union all select 'CN','41', '河南省','4106', '鹤壁市','410622',' 淇县'
union all select 'CN','41', '河南省','4107', '新乡市','',' '
union all select 'CN','41', '河南省','4107', '新乡市','410702',' 红旗区'
union all select 'CN','41', '河南省','4107', '新乡市','410703',' 卫滨区'
union all select 'CN','41', '河南省','4107', '新乡市','410704',' 凤泉区'
union all select 'CN','41', '河南省','4107', '新乡市','410711',' 牧野区'
union all select 'CN','41', '河南省','4107', '新乡市','410721',' 新乡县'
union all select 'CN','41', '河南省','4107', '新乡市','410724',' 获嘉县'
union all select 'CN','41', '河南省','4107', '新乡市','410725',' 原阳县'
union all select 'CN','41', '河南省','4107', '新乡市','410726',' 延津县'
union all select 'CN','41', '河南省','4107', '新乡市','410727',' 封丘县'
union all select 'CN','41', '河南省','4107', '新乡市','410728',' 长垣县'
union all select 'CN','41', '河南省','4107', '新乡市','410781',' 卫辉市'
union all select 'CN','41', '河南省','4107', '新乡市','410782',' 辉县市'
union all select 'CN','41', '河南省','4108', '焦作市','',' '
union all select 'CN','41', '河南省','4108', '焦作市','410802',' 解放区'
union all select 'CN','41', '河南省','4108', '焦作市','410803',' 中站区'
union all select 'CN','41', '河南省','4108', '焦作市','410804',' 马村区'
union all select 'CN','41', '河南省','4108', '焦作市','410811',' 山阳区'
union all select 'CN','41', '河南省','4108', '焦作市','410821',' 修武县'
union all select 'CN','41', '河南省','4108', '焦作市','410822',' 博爱县'
union all select 'CN','41', '河南省','4108', '焦作市','410823',' 武陟县'
union all select 'CN','41', '河南省','4108', '焦作市','410825',' 温县'
union all select 'CN','41', '河南省','4108', '焦作市','410882',' 沁阳市'
union all select 'CN','41', '河南省','4108', '焦作市','410883',' 孟州市'
union all select 'CN','41', '河南省','4109', '濮阳市','',' '
union all select 'CN','41', '河南省','4109', '濮阳市','410902',' 华龙区'
union all select 'CN','41', '河南省','4109', '濮阳市','410922',' 清丰县'
union all select 'CN','41', '河南省','4109', '濮阳市','410923',' 南乐县'
union all select 'CN','41', '河南省','4109', '濮阳市','410926',' 范县'
union all select 'CN','41', '河南省','4109', '濮阳市','410927',' 台前县'
union all select 'CN','41', '河南省','4109', '濮阳市','410928',' 濮阳县'
union all select 'CN','41', '河南省','4110', '许昌市','',' '
union all select 'CN','41', '河南省','4110', '许昌市','411002',' 魏都区'
union all select 'CN','41', '河南省','4110', '许昌市','411003',' 建安区'
union all select 'CN','41', '河南省','4110', '许昌市','411024',' 鄢陵县'
union all select 'CN','41', '河南省','4110', '许昌市','411025',' 襄城县'
union all select 'CN','41', '河南省','4110', '许昌市','411081',' 禹州市'
union all select 'CN','41', '河南省','4110', '许昌市','411082',' 长葛市'
union all select 'CN','41', '河南省','4111', '漯河市','',' '
union all select 'CN','41', '河南省','4111', '漯河市','411102',' 源汇区'
union all select 'CN','41', '河南省','4111', '漯河市','411103',' 郾城区'
union all select 'CN','41', '河南省','4111', '漯河市','411104',' 召陵区'
union all select 'CN','41', '河南省','4111', '漯河市','411121',' 舞阳县'
union all select 'CN','41', '河南省','4111', '漯河市','411122',' 临颍县'
union all select 'CN','41', '河南省','4112', '三门峡市','',' '
union all select 'CN','41', '河南省','4112', '三门峡市','411202',' 湖滨区'
union all select 'CN','41', '河南省','4112', '三门峡市','411203',' 陕州区'
union all select 'CN','41', '河南省','4112', '三门峡市','411221',' 渑池县'
union all select 'CN','41', '河南省','4112', '三门峡市','411224',' 卢氏县'
union all select 'CN','41', '河南省','4112', '三门峡市','411281',' 义马市'
union all select 'CN','41', '河南省','4112', '三门峡市','411282',' 灵宝市'
union all select 'CN','41', '河南省','4113', '南阳市','',' '
union all select 'CN','41', '河南省','4113', '南阳市','411302',' 宛城区'
union all select 'CN','41', '河南省','4113', '南阳市','411303',' 卧龙区'
union all select 'CN','41', '河南省','4113', '南阳市','411321',' 南召县'
union all select 'CN','41', '河南省','4113', '南阳市','411322',' 方城县'
union all select 'CN','41', '河南省','4113', '南阳市','411323',' 西峡县'
union all select 'CN','41', '河南省','4113', '南阳市','411324',' 镇平县'
union all select 'CN','41', '河南省','4113', '南阳市','411325',' 内乡县'
union all select 'CN','41', '河南省','4113', '南阳市','411326',' 淅川县'
union all select 'CN','41', '河南省','4113', '南阳市','411327',' 社旗县'
union all select 'CN','41', '河南省','4113', '南阳市','411328',' 唐河县'
union all select 'CN','41', '河南省','4113', '南阳市','411329',' 新野县'
union all select 'CN','41', '河南省','4113', '南阳市','411330',' 桐柏县'
union all select 'CN','41', '河南省','4113', '南阳市','411381',' 邓州市'
union all select 'CN','41', '河南省','4114', '商丘市','',' '
union all select 'CN','41', '河南省','4114', '商丘市','411402',' 梁园区'
union all select 'CN','41', '河南省','4114', '商丘市','411403',' 睢阳区'
union all select 'CN','41', '河南省','4114', '商丘市','411421',' 民权县'
union all select 'CN','41', '河南省','4114', '商丘市','411422',' 睢县'
union all select 'CN','41', '河南省','4114', '商丘市','411423',' 宁陵县'
union all select 'CN','41', '河南省','4114', '商丘市','411424',' 柘城县'
union all select 'CN','41', '河南省','4114', '商丘市','411425',' 虞城县'
union all select 'CN','41', '河南省','4114', '商丘市','411426',' 夏邑县'
union all select 'CN','41', '河南省','4114', '商丘市','411481',' 永城市'
union all select 'CN','41', '河南省','4115', '信阳市','',' '
union all select 'CN','41', '河南省','4115', '信阳市','411502',' 浉河区'
union all select 'CN','41', '河南省','4115', '信阳市','411503',' 平桥区'
union all select 'CN','41', '河南省','4115', '信阳市','411521',' 罗山县'
union all select 'CN','41', '河南省','4115', '信阳市','411522',' 光山县'
union all select 'CN','41', '河南省','4115', '信阳市','411523',' 新县'
union all select 'CN','41', '河南省','4115', '信阳市','411524',' 商城县'
union all select 'CN','41', '河南省','4115', '信阳市','411525',' 固始县'
union all select 'CN','41', '河南省','4115', '信阳市','411526',' 潢川县'
union all select 'CN','41', '河南省','4115', '信阳市','411527',' 淮滨县'
union all select 'CN','41', '河南省','4115', '信阳市','411528',' 息县'
union all select 'CN','41', '河南省','4116', '周口市','',' '
union all select 'CN','41', '河南省','4116', '周口市','411602',' 川汇区'
union all select 'CN','41', '河南省','4116', '周口市','411621',' 扶沟县'
union all select 'CN','41', '河南省','4116', '周口市','411622',' 西华县'
union all select 'CN','41', '河南省','4116', '周口市','411623',' 商水县'
union all select 'CN','41', '河南省','4116', '周口市','411624',' 沈丘县'
union all select 'CN','41', '河南省','4116', '周口市','411625',' 郸城县'
union all select 'CN','41', '河南省','4116', '周口市','411626',' 淮阳县'
union all select 'CN','41', '河南省','4116', '周口市','411627',' 太康县'
union all select 'CN','41', '河南省','4116', '周口市','411628',' 鹿邑县'
union all select 'CN','41', '河南省','4116', '周口市','411681',' 项城市'
union all select 'CN','41', '河南省','4117', '驻马店市','',' '
union all select 'CN','41', '河南省','4117', '驻马店市','411702',' 驿城区'
union all select 'CN','41', '河南省','4117', '驻马店市','411721',' 西平县'
union all select 'CN','41', '河南省','4117', '驻马店市','411722',' 上蔡县'
union all select 'CN','41', '河南省','4117', '驻马店市','411723',' 平舆县'
union all select 'CN','41', '河南省','4117', '驻马店市','411724',' 正阳县'
union all select 'CN','41', '河南省','4117', '驻马店市','411725',' 确山县'
union all select 'CN','41', '河南省','4117', '驻马店市','411726',' 泌阳县'
union all select 'CN','41', '河南省','4117', '驻马店市','411727',' 汝南县'
union all select 'CN','41', '河南省','4117', '驻马店市','411728',' 遂平县'
union all select 'CN','41', '河南省','4117', '驻马店市','411729',' 新蔡县'
union all select 'CN','41', '河南省','4190', '驻马店市','419001',' 济源市'
union all select 'CN','42', '湖北省','4200', '','',' '
union all select 'CN','42', '湖北省','4201', '武汉市','',' '
union all select 'CN','42', '湖北省','4201', '武汉市','420102',' 江岸区'
union all select 'CN','42', '湖北省','4201', '武汉市','420103',' 江汉区'
union all select 'CN','42', '湖北省','4201', '武汉市','420104',' 硚口区'
union all select 'CN','42', '湖北省','4201', '武汉市','420105',' 汉阳区'
union all select 'CN','42', '湖北省','4201', '武汉市','420106',' 武昌区'
union all select 'CN','42', '湖北省','4201', '武汉市','420107',' 青山区'
union all select 'CN','42', '湖北省','4201', '武汉市','420111',' 洪山区'
union all select 'CN','42', '湖北省','4201', '武汉市','420112',' 东西湖区'
union all select 'CN','42', '湖北省','4201', '武汉市','420113',' 汉南区'
union all select 'CN','42', '湖北省','4201', '武汉市','420114',' 蔡甸区'
union all select 'CN','42', '湖北省','4201', '武汉市','420115',' 江夏区'
union all select 'CN','42', '湖北省','4201', '武汉市','420116',' 黄陂区'
union all select 'CN','42', '湖北省','4201', '武汉市','420117',' 新洲区'
union all select 'CN','42', '湖北省','4202', '黄石市','',' '
union all select 'CN','42', '湖北省','4202', '黄石市','420202',' 黄石港区'
union all select 'CN','42', '湖北省','4202', '黄石市','420203',' 西塞山区'
union all select 'CN','42', '湖北省','4202', '黄石市','420204',' 下陆区'
union all select 'CN','42', '湖北省','4202', '黄石市','420205',' 铁山区'
union all select 'CN','42', '湖北省','4202', '黄石市','420222',' 阳新县'
union all select 'CN','42', '湖北省','4202', '黄石市','420281',' 大冶市'
union all select 'CN','42', '湖北省','4203', '十堰市','',' '
union all select 'CN','42', '湖北省','4203', '十堰市','420302',' 茅箭区'
union all select 'CN','42', '湖北省','4203', '十堰市','420303',' 张湾区'
union all select 'CN','42', '湖北省','4203', '十堰市','420304',' 郧阳区'
union all select 'CN','42', '湖北省','4203', '十堰市','420322',' 郧西县'
union all select 'CN','42', '湖北省','4203', '十堰市','420323',' 竹山县'
union all select 'CN','42', '湖北省','4203', '十堰市','420324',' 竹溪县'
union all select 'CN','42', '湖北省','4203', '十堰市','420325',' 房县'
union all select 'CN','42', '湖北省','4203', '十堰市','420381',' 丹江口市'
union all select 'CN','42', '湖北省','4205', '宜昌市','',' '
union all select 'CN','42', '湖北省','4205', '宜昌市','420502',' 西陵区'
union all select 'CN','42', '湖北省','4205', '宜昌市','420503',' 伍家岗区'
union all select 'CN','42', '湖北省','4205', '宜昌市','420504',' 点军区'
union all select 'CN','42', '湖北省','4205', '宜昌市','420505',' 猇亭区'
union all select 'CN','42', '湖北省','4205', '宜昌市','420506',' 夷陵区'
union all select 'CN','42', '湖北省','4205', '宜昌市','420525',' 远安县'
union all select 'CN','42', '湖北省','4205', '宜昌市','420526',' 兴山县'
union all select 'CN','42', '湖北省','4205', '宜昌市','420527',' 秭归县'
union all select 'CN','42', '湖北省','4205', '宜昌市','420528',' 长阳土家族自治县'
union all select 'CN','42', '湖北省','4205', '宜昌市','420529',' 五峰土家族自治县'
union all select 'CN','42', '湖北省','4205', '宜昌市','420581',' 宜都市'
union all select 'CN','42', '湖北省','4205', '宜昌市','420582',' 当阳市'
union all select 'CN','42', '湖北省','4205', '宜昌市','420583',' 枝江市'
union all select 'CN','42', '湖北省','4206', '襄阳市','',' '
union all select 'CN','42', '湖北省','4206', '襄阳市','420602',' 襄城区'
union all select 'CN','42', '湖北省','4206', '襄阳市','420606',' 樊城区'
union all select 'CN','42', '湖北省','4206', '襄阳市','420607',' 襄州区'
union all select 'CN','42', '湖北省','4206', '襄阳市','420624',' 南漳县'
union all select 'CN','42', '湖北省','4206', '襄阳市','420625',' 谷城县'
union all select 'CN','42', '湖北省','4206', '襄阳市','420626',' 保康县'
union all select 'CN','42', '湖北省','4206', '襄阳市','420682',' 老河口市'
union all select 'CN','42', '湖北省','4206', '襄阳市','420683',' 枣阳市'
union all select 'CN','42', '湖北省','4206', '襄阳市','420684',' 宜城市'
union all select 'CN','42', '湖北省','4207', '鄂州市','',' '
union all select 'CN','42', '湖北省','4207', '鄂州市','420702',' 梁子湖区'
union all select 'CN','42', '湖北省','4207', '鄂州市','420703',' 华容区'
union all select 'CN','42', '湖北省','4207', '鄂州市','420704',' 鄂城区'
union all select 'CN','42', '湖北省','4208', '荆门市','',' '
union all select 'CN','42', '湖北省','4208', '荆门市','420802',' 东宝区'
union all select 'CN','42', '湖北省','4208', '荆门市','420804',' 掇刀区'
union all select 'CN','42', '湖北省','4208', '荆门市','420822',' 沙洋县'
union all select 'CN','42', '湖北省','4208', '荆门市','420881',' 钟祥市'
union all select 'CN','42', '湖北省','4208', '荆门市','420882',' 京山市'
union all select 'CN','42', '湖北省','4209', '孝感市','',' '
union all select 'CN','42', '湖北省','4209', '孝感市','420902',' 孝南区'
union all select 'CN','42', '湖北省','4209', '孝感市','420921',' 孝昌县'
union all select 'CN','42', '湖北省','4209', '孝感市','420922',' 大悟县'
union all select 'CN','42', '湖北省','4209', '孝感市','420923',' 云梦县'
union all select 'CN','42', '湖北省','4209', '孝感市','420981',' 应城市'
union all select 'CN','42', '湖北省','4209', '孝感市','420982',' 安陆市'
union all select 'CN','42', '湖北省','4209', '孝感市','420984',' 汉川市'
union all select 'CN','42', '湖北省','4210', '荆州市','',' '
union all select 'CN','42', '湖北省','4210', '荆州市','421002',' 沙市区'
union all select 'CN','42', '湖北省','4210', '荆州市','421003',' 荆州区'
union all select 'CN','42', '湖北省','4210', '荆州市','421022',' 公安县'
union all select 'CN','42', '湖北省','4210', '荆州市','421023',' 监利县'
union all select 'CN','42', '湖北省','4210', '荆州市','421024',' 江陵县'
union all select 'CN','42', '湖北省','4210', '荆州市','421081',' 石首市'
union all select 'CN','42', '湖北省','4210', '荆州市','421083',' 洪湖市'
union all select 'CN','42', '湖北省','4210', '荆州市','421087',' 松滋市'
union all select 'CN','42', '湖北省','4211', '黄冈市','',' '
union all select 'CN','42', '湖北省','4211', '黄冈市','421102',' 黄州区'
union all select 'CN','42', '湖北省','4211', '黄冈市','421121',' 团风县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421122',' 红安县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421123',' 罗田县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421124',' 英山县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421125',' 浠水县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421126',' 蕲春县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421127',' 黄梅县'
union all select 'CN','42', '湖北省','4211', '黄冈市','421181',' 麻城市'
union all select 'CN','42', '湖北省','4211', '黄冈市','421182',' 武穴市'
union all select 'CN','42', '湖北省','4212', '咸宁市','',' '
union all select 'CN','42', '湖北省','4212', '咸宁市','421202',' 咸安区'
union all select 'CN','42', '湖北省','4212', '咸宁市','421221',' 嘉鱼县'
union all select 'CN','42', '湖北省','4212', '咸宁市','421222',' 通城县'
union all select 'CN','42', '湖北省','4212', '咸宁市','421223',' 崇阳县'
union all select 'CN','42', '湖北省','4212', '咸宁市','421224',' 通山县'
union all select 'CN','42', '湖北省','4212', '咸宁市','421281',' 赤壁市'
union all select 'CN','42', '湖北省','4213', '随州市','',' '
union all select 'CN','42', '湖北省','4213', '随州市','421303',' 曾都区'
union all select 'CN','42', '湖北省','4213', '随州市','421321',' 随县'
union all select 'CN','42', '湖北省','4213', '随州市','421381',' 广水市'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','',' '
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422801',' 恩施市'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422802',' 利川市'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422822',' 建始县'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422823',' 巴东县'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422825',' 宣恩县'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422826',' 咸丰县'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422827',' 来凤县'
union all select 'CN','42', '湖北省','4228', '恩施土家族苗族自治州','422828',' 鹤峰县'
union all select 'CN','42', '湖北省','4290', '省直辖县级行政区划','',' '
union all select 'CN','42', '湖北省','4290', '省直辖县级行政区划','429004',' 仙桃市'
union all select 'CN','42', '湖北省','4290', '省直辖县级行政区划','429005',' 潜江市'
union all select 'CN','42', '湖北省','4290', '省直辖县级行政区划','429006',' 天门市'
union all select 'CN','42', '湖北省','4290', '省直辖县级行政区划','429021',' 神农架林区'
union all select 'CN','43', '湖南省','4300', '','',' '
union all select 'CN','43', '湖南省','4301', '长沙市','',' '
union all select 'CN','43', '湖南省','4301', '长沙市','430102',' 芙蓉区'
union all select 'CN','43', '湖南省','4301', '长沙市','430103',' 天心区'
union all select 'CN','43', '湖南省','4301', '长沙市','430104',' 岳麓区'
union all select 'CN','43', '湖南省','4301', '长沙市','430105',' 开福区'
union all select 'CN','43', '湖南省','4301', '长沙市','430111',' 雨花区'
union all select 'CN','43', '湖南省','4301', '长沙市','430112',' 望城区'
union all select 'CN','43', '湖南省','4301', '长沙市','430121',' 长沙县'
union all select 'CN','43', '湖南省','4301', '长沙市','430181',' 浏阳市'
union all select 'CN','43', '湖南省','4301', '长沙市','430182',' 宁乡市'
union all select 'CN','43', '湖南省','4302', '株洲市','',' '
union all select 'CN','43', '湖南省','4302', '株洲市','430202',' 荷塘区'
union all select 'CN','43', '湖南省','4302', '株洲市','430203',' 芦淞区'
union all select 'CN','43', '湖南省','4302', '株洲市','430204',' 石峰区'
union all select 'CN','43', '湖南省','4302', '株洲市','430211',' 天元区'
union all select 'CN','43', '湖南省','4302', '株洲市','430212',' 渌口区'
union all select 'CN','43', '湖南省','4302', '株洲市','430223',' 攸县'
union all select 'CN','43', '湖南省','4302', '株洲市','430224',' 茶陵县'
union all select 'CN','43', '湖南省','4302', '株洲市','430225',' 炎陵县'
union all select 'CN','43', '湖南省','4302', '株洲市','430281',' 醴陵市'
union all select 'CN','43', '湖南省','4303', '湘潭市','',' '
union all select 'CN','43', '湖南省','4303', '湘潭市','430302',' 雨湖区'
union all select 'CN','43', '湖南省','4303', '湘潭市','430304',' 岳塘区'
union all select 'CN','43', '湖南省','4303', '湘潭市','430321',' 湘潭县'
union all select 'CN','43', '湖南省','4303', '湘潭市','430381',' 湘乡市'
union all select 'CN','43', '湖南省','4303', '湘潭市','430382',' 韶山市'
union all select 'CN','43', '湖南省','4304', '衡阳市','',' '
union all select 'CN','43', '湖南省','4304', '衡阳市','430405',' 珠晖区'
union all select 'CN','43', '湖南省','4304', '衡阳市','430406',' 雁峰区'
union all select 'CN','43', '湖南省','4304', '衡阳市','430407',' 石鼓区'
union all select 'CN','43', '湖南省','4304', '衡阳市','430408',' 蒸湘区'
union all select 'CN','43', '湖南省','4304', '衡阳市','430412',' 南岳区'
union all select 'CN','43', '湖南省','4304', '衡阳市','430421',' 衡阳县'
union all select 'CN','43', '湖南省','4304', '衡阳市','430422',' 衡南县'
union all select 'CN','43', '湖南省','4304', '衡阳市','430423',' 衡山县'
union all select 'CN','43', '湖南省','4304', '衡阳市','430424',' 衡东县'
union all select 'CN','43', '湖南省','4304', '衡阳市','430426',' 祁东县'
union all select 'CN','43', '湖南省','4304', '衡阳市','430481',' 耒阳市'
union all select 'CN','43', '湖南省','4304', '衡阳市','430482',' 常宁市'
union all select 'CN','43', '湖南省','4305', '邵阳市','',' '
union all select 'CN','43', '湖南省','4305', '邵阳市','430502',' 双清区'
union all select 'CN','43', '湖南省','4305', '邵阳市','430503',' 大祥区'
union all select 'CN','43', '湖南省','4305', '邵阳市','430511',' 北塔区'
union all select 'CN','43', '湖南省','4305', '邵阳市','430521',' 邵东县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430522',' 新邵县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430523',' 邵阳县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430524',' 隆回县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430525',' 洞口县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430527',' 绥宁县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430528',' 新宁县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430529',' 城步苗族自治县'
union all select 'CN','43', '湖南省','4305', '邵阳市','430581',' 武冈市'
union all select 'CN','43', '湖南省','4306', '岳阳市','',' '
union all select 'CN','43', '湖南省','4306', '岳阳市','430602',' 岳阳楼区'
union all select 'CN','43', '湖南省','4306', '岳阳市','430603',' 云溪区'
union all select 'CN','43', '湖南省','4306', '岳阳市','430611',' 君山区'
union all select 'CN','43', '湖南省','4306', '岳阳市','430621',' 岳阳县'
union all select 'CN','43', '湖南省','4306', '岳阳市','430623',' 华容县'
union all select 'CN','43', '湖南省','4306', '岳阳市','430624',' 湘阴县'
union all select 'CN','43', '湖南省','4306', '岳阳市','430626',' 平江县'
union all select 'CN','43', '湖南省','4306', '岳阳市','430681',' 汨罗市'
union all select 'CN','43', '湖南省','4306', '岳阳市','430682',' 临湘市'
union all select 'CN','43', '湖南省','4307', '常德市','',' '
union all select 'CN','43', '湖南省','4307', '常德市','430702',' 武陵区'
union all select 'CN','43', '湖南省','4307', '常德市','430703',' 鼎城区'
union all select 'CN','43', '湖南省','4307', '常德市','430721',' 安乡县'
union all select 'CN','43', '湖南省','4307', '常德市','430722',' 汉寿县'
union all select 'CN','43', '湖南省','4307', '常德市','430723',' 澧县'
union all select 'CN','43', '湖南省','4307', '常德市','430724',' 临澧县'
union all select 'CN','43', '湖南省','4307', '常德市','430725',' 桃源县'
union all select 'CN','43', '湖南省','4307', '常德市','430726',' 石门县'
union all select 'CN','43', '湖南省','4307', '常德市','430781',' 津市市'
union all select 'CN','43', '湖南省','4308', '张家界市','',' '
union all select 'CN','43', '湖南省','4308', '张家界市','430802',' 永定区'
union all select 'CN','43', '湖南省','4308', '张家界市','430811',' 武陵源区'
union all select 'CN','43', '湖南省','4308', '张家界市','430821',' 慈利县'
union all select 'CN','43', '湖南省','4308', '张家界市','430822',' 桑植县'
union all select 'CN','43', '湖南省','4309', '益阳市','',' '
union all select 'CN','43', '湖南省','4309', '益阳市','430902',' 资阳区'
union all select 'CN','43', '湖南省','4309', '益阳市','430903',' 赫山区'
union all select 'CN','43', '湖南省','4309', '益阳市','430921',' 南县'
union all select 'CN','43', '湖南省','4309', '益阳市','430922',' 桃江县'
union all select 'CN','43', '湖南省','4309', '益阳市','430923',' 安化县'
union all select 'CN','43', '湖南省','4309', '益阳市','430981',' 沅江市'
union all select 'CN','43', '湖南省','4310', '郴州市','',' '
union all select 'CN','43', '湖南省','4310', '郴州市','431002',' 北湖区'
union all select 'CN','43', '湖南省','4310', '郴州市','431003',' 苏仙区'
union all select 'CN','43', '湖南省','4310', '郴州市','431021',' 桂阳县'
union all select 'CN','43', '湖南省','4310', '郴州市','431022',' 宜章县'
union all select 'CN','43', '湖南省','4310', '郴州市','431023',' 永兴县'
union all select 'CN','43', '湖南省','4310', '郴州市','431024',' 嘉禾县'
union all select 'CN','43', '湖南省','4310', '郴州市','431025',' 临武县'
union all select 'CN','43', '湖南省','4310', '郴州市','431026',' 汝城县'
union all select 'CN','43', '湖南省','4310', '郴州市','431027',' 桂东县'
union all select 'CN','43', '湖南省','4310', '郴州市','431028',' 安仁县'
union all select 'CN','43', '湖南省','4310', '郴州市','431081',' 资兴市'
union all select 'CN','43', '湖南省','4311', '永州市','',' '
union all select 'CN','43', '湖南省','4311', '永州市','431102',' 零陵区'
union all select 'CN','43', '湖南省','4311', '永州市','431103',' 冷水滩区'
union all select 'CN','43', '湖南省','4311', '永州市','431121',' 祁阳县'
union all select 'CN','43', '湖南省','4311', '永州市','431122',' 东安县'
union all select 'CN','43', '湖南省','4311', '永州市','431123',' 双牌县'
union all select 'CN','43', '湖南省','4311', '永州市','431124',' 道县'
union all select 'CN','43', '湖南省','4311', '永州市','431125',' 江永县'
union all select 'CN','43', '湖南省','4311', '永州市','431126',' 宁远县'
union all select 'CN','43', '湖南省','4311', '永州市','431127',' 蓝山县'
union all select 'CN','43', '湖南省','4311', '永州市','431128',' 新田县'
union all select 'CN','43', '湖南省','4311', '永州市','431129',' 江华瑶族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','',' '
union all select 'CN','43', '湖南省','4312', '怀化市','431202',' 鹤城区'
union all select 'CN','43', '湖南省','4312', '怀化市','431221',' 中方县'
union all select 'CN','43', '湖南省','4312', '怀化市','431222',' 沅陵县'
union all select 'CN','43', '湖南省','4312', '怀化市','431223',' 辰溪县'
union all select 'CN','43', '湖南省','4312', '怀化市','431224',' 溆浦县'
union all select 'CN','43', '湖南省','4312', '怀化市','431225',' 会同县'
union all select 'CN','43', '湖南省','4312', '怀化市','431226',' 麻阳苗族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','431227',' 新晃侗族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','431228',' 芷江侗族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','431229',' 靖州苗族侗族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','431230',' 通道侗族自治县'
union all select 'CN','43', '湖南省','4312', '怀化市','431281',' 洪江市'
union all select 'CN','43', '湖南省','4313', '娄底市','',' '
union all select 'CN','43', '湖南省','4313', '娄底市','431302',' 娄星区'
union all select 'CN','43', '湖南省','4313', '娄底市','431321',' 双峰县'
union all select 'CN','43', '湖南省','4313', '娄底市','431322',' 新化县'
union all select 'CN','43', '湖南省','4313', '娄底市','431381',' 冷水江市'
union all select 'CN','43', '湖南省','4313', '娄底市','431382',' 涟源市'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','',' '
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433101',' 吉首市'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433122',' 泸溪县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433123',' 凤凰县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433124',' 花垣县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433125',' 保靖县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433126',' 古丈县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433127',' 永顺县'
union all select 'CN','43', '湖南省','4331', '湘西土家族苗族自治州','433130',' 龙山县'
union all select 'CN','44', '广东省','4400', '','',' '
union all select 'CN','44', '广东省','4401', '广州市','',' '
union all select 'CN','44', '广东省','4401', '广州市','440103',' 荔湾区'
union all select 'CN','44', '广东省','4401', '广州市','440104',' 越秀区'
union all select 'CN','44', '广东省','4401', '广州市','440105',' 海珠区'
union all select 'CN','44', '广东省','4401', '广州市','440106',' 天河区'
union all select 'CN','44', '广东省','4401', '广州市','440111',' 白云区'
union all select 'CN','44', '广东省','4401', '广州市','440112',' 黄埔区'
union all select 'CN','44', '广东省','4401', '广州市','440113',' 番禺区'
union all select 'CN','44', '广东省','4401', '广州市','440114',' 花都区'
union all select 'CN','44', '广东省','4401', '广州市','440115',' 南沙区'
union all select 'CN','44', '广东省','4401', '广州市','440117',' 从化区'
union all select 'CN','44', '广东省','4401', '广州市','440118',' 增城区'
union all select 'CN','44', '广东省','4402', '韶关市','',' '
union all select 'CN','44', '广东省','4402', '韶关市','440203',' 武江区'
union all select 'CN','44', '广东省','4402', '韶关市','440204',' 浈江区'
union all select 'CN','44', '广东省','4402', '韶关市','440205',' 曲江区'
union all select 'CN','44', '广东省','4402', '韶关市','440222',' 始兴县'
union all select 'CN','44', '广东省','4402', '韶关市','440224',' 仁化县'
union all select 'CN','44', '广东省','4402', '韶关市','440229',' 翁源县'
union all select 'CN','44', '广东省','4402', '韶关市','440232',' 乳源瑶族自治县'
union all select 'CN','44', '广东省','4402', '韶关市','440233',' 新丰县'
union all select 'CN','44', '广东省','4402', '韶关市','440281',' 乐昌市'
union all select 'CN','44', '广东省','4402', '韶关市','440282',' 南雄市'
union all select 'CN','44', '广东省','4403', '深圳市','',' '
union all select 'CN','44', '广东省','4403', '深圳市','440303',' 罗湖区'
union all select 'CN','44', '广东省','4403', '深圳市','440304',' 福田区'
union all select 'CN','44', '广东省','4403', '深圳市','440305',' 南山区'
union all select 'CN','44', '广东省','4403', '深圳市','440306',' 宝安区'
union all select 'CN','44', '广东省','4403', '深圳市','440307',' 龙岗区'
union all select 'CN','44', '广东省','4403', '深圳市','440308',' 盐田区'
union all select 'CN','44', '广东省','4403', '深圳市','440309',' 龙华区'
union all select 'CN','44', '广东省','4403', '深圳市','440310',' 坪山区'
union all select 'CN','44', '广东省','4403', '深圳市','440311',' 光明区'
union all select 'CN','44', '广东省','4404', '珠海市','',' '
union all select 'CN','44', '广东省','4404', '珠海市','440402',' 香洲区'
union all select 'CN','44', '广东省','4404', '珠海市','440403',' 斗门区'
union all select 'CN','44', '广东省','4404', '珠海市','440404',' 金湾区'
union all select 'CN','44', '广东省','4405', '汕头市','',' '
union all select 'CN','44', '广东省','4405', '汕头市','440507',' 龙湖区'
union all select 'CN','44', '广东省','4405', '汕头市','440511',' 金平区'
union all select 'CN','44', '广东省','4405', '汕头市','440512',' 濠江区'
union all select 'CN','44', '广东省','4405', '汕头市','440513',' 潮阳区'
union all select 'CN','44', '广东省','4405', '汕头市','440514',' 潮南区'
union all select 'CN','44', '广东省','4405', '汕头市','440515',' 澄海区'
union all select 'CN','44', '广东省','4405', '汕头市','440523',' 南澳县'
union all select 'CN','44', '广东省','4406', '佛山市','',' '
union all select 'CN','44', '广东省','4406', '佛山市','440604',' 禅城区'
union all select 'CN','44', '广东省','4406', '佛山市','440605',' 南海区'
union all select 'CN','44', '广东省','4406', '佛山市','440606',' 顺德区'
union all select 'CN','44', '广东省','4406', '佛山市','440607',' 三水区'
union all select 'CN','44', '广东省','4406', '佛山市','440608',' 高明区'
union all select 'CN','44', '广东省','4407', '江门市','',' '
union all select 'CN','44', '广东省','4407', '江门市','440703',' 蓬江区'
union all select 'CN','44', '广东省','4407', '江门市','440704',' 江海区'
union all select 'CN','44', '广东省','4407', '江门市','440705',' 新会区'
union all select 'CN','44', '广东省','4407', '江门市','440781',' 台山市'
union all select 'CN','44', '广东省','4407', '江门市','440783',' 开平市'
union all select 'CN','44', '广东省','4407', '江门市','440784',' 鹤山市'
union all select 'CN','44', '广东省','4407', '江门市','440785',' 恩平市'
union all select 'CN','44', '广东省','4408', '湛江市','',' '
union all select 'CN','44', '广东省','4408', '湛江市','440802',' 赤坎区'
union all select 'CN','44', '广东省','4408', '湛江市','440803',' 霞山区'
union all select 'CN','44', '广东省','4408', '湛江市','440804',' 坡头区'
union all select 'CN','44', '广东省','4408', '湛江市','440811',' 麻章区'
union all select 'CN','44', '广东省','4408', '湛江市','440823',' 遂溪县'
union all select 'CN','44', '广东省','4408', '湛江市','440825',' 徐闻县'
union all select 'CN','44', '广东省','4408', '湛江市','440881',' 廉江市'
union all select 'CN','44', '广东省','4408', '湛江市','440882',' 雷州市'
union all select 'CN','44', '广东省','4408', '湛江市','440883',' 吴川市'
union all select 'CN','44', '广东省','4409', '茂名市','',' '
union all select 'CN','44', '广东省','4409', '茂名市','440902',' 茂南区'
union all select 'CN','44', '广东省','4409', '茂名市','440904',' 电白区'
union all select 'CN','44', '广东省','4409', '茂名市','440981',' 高州市'
union all select 'CN','44', '广东省','4409', '茂名市','440982',' 化州市'
union all select 'CN','44', '广东省','4409', '茂名市','440983',' 信宜市'
union all select 'CN','44', '广东省','4412', '肇庆市','',' '
union all select 'CN','44', '广东省','4412', '肇庆市','441202',' 端州区'
union all select 'CN','44', '广东省','4412', '肇庆市','441203',' 鼎湖区'
union all select 'CN','44', '广东省','4412', '肇庆市','441204',' 高要区'
union all select 'CN','44', '广东省','4412', '肇庆市','441223',' 广宁县'
union all select 'CN','44', '广东省','4412', '肇庆市','441224',' 怀集县'
union all select 'CN','44', '广东省','4412', '肇庆市','441225',' 封开县'
union all select 'CN','44', '广东省','4412', '肇庆市','441226',' 德庆县'
union all select 'CN','44', '广东省','4412', '肇庆市','441284',' 四会市'
union all select 'CN','44', '广东省','4413', '惠州市','',' '
union all select 'CN','44', '广东省','4413', '惠州市','441302',' 惠城区'
union all select 'CN','44', '广东省','4413', '惠州市','441303',' 惠阳区'
union all select 'CN','44', '广东省','4413', '惠州市','441322',' 博罗县'
union all select 'CN','44', '广东省','4413', '惠州市','441323',' 惠东县'
union all select 'CN','44', '广东省','4413', '惠州市','441324',' 龙门县'
union all select 'CN','44', '广东省','4414', '梅州市','',' '
union all select 'CN','44', '广东省','4414', '梅州市','441402',' 梅江区'
union all select 'CN','44', '广东省','4414', '梅州市','441403',' 梅县区'
union all select 'CN','44', '广东省','4414', '梅州市','441422',' 大埔县'
union all select 'CN','44', '广东省','4414', '梅州市','441423',' 丰顺县'
union all select 'CN','44', '广东省','4414', '梅州市','441424',' 五华县'
union all select 'CN','44', '广东省','4414', '梅州市','441426',' 平远县'
union all select 'CN','44', '广东省','4414', '梅州市','441427',' 蕉岭县'
union all select 'CN','44', '广东省','4414', '梅州市','441481',' 兴宁市'
union all select 'CN','44', '广东省','4415', '汕尾市','',' '
union all select 'CN','44', '广东省','4415', '汕尾市','441502',' 城区'
union all select 'CN','44', '广东省','4415', '汕尾市','441521',' 海丰县'
union all select 'CN','44', '广东省','4415', '汕尾市','441523',' 陆河县'
union all select 'CN','44', '广东省','4415', '汕尾市','441581',' 陆丰市'
union all select 'CN','44', '广东省','4416', '河源市','',' '
union all select 'CN','44', '广东省','4416', '河源市','441602',' 源城区'
union all select 'CN','44', '广东省','4416', '河源市','441621',' 紫金县'
union all select 'CN','44', '广东省','4416', '河源市','441622',' 龙川县'
union all select 'CN','44', '广东省','4416', '河源市','441623',' 连平县'
union all select 'CN','44', '广东省','4416', '河源市','441624',' 和平县'
union all select 'CN','44', '广东省','4416', '河源市','441625',' 东源县'
union all select 'CN','44', '广东省','4417', '阳江市','',' '
union all select 'CN','44', '广东省','4417', '阳江市','441702',' 江城区'
union all select 'CN','44', '广东省','4417', '阳江市','441704',' 阳东区'
union all select 'CN','44', '广东省','4417', '阳江市','441721',' 阳西县'
union all select 'CN','44', '广东省','4417', '阳江市','441781',' 阳春市'
union all select 'CN','44', '广东省','4418', '清远市','',' '
union all select 'CN','44', '广东省','4418', '清远市','441802',' 清城区'
union all select 'CN','44', '广东省','4418', '清远市','441803',' 清新区'
union all select 'CN','44', '广东省','4418', '清远市','441821',' 佛冈县'
union all select 'CN','44', '广东省','4418', '清远市','441823',' 阳山县'
union all select 'CN','44', '广东省','4418', '清远市','441825',' 连山壮族瑶族自治县'
union all select 'CN','44', '广东省','4418', '清远市','441826',' 连南瑶族自治县'
union all select 'CN','44', '广东省','4418', '清远市','441881',' 英德市'
union all select 'CN','44', '广东省','4418', '清远市','441882',' 连州市'
union all select 'CN','44', '广东省','4419', '东莞市','',' '
union all select 'CN','44', '广东省','4420', '中山市','',' '
union all select 'CN','44', '广东省','4451', '潮州市','',' '
union all select 'CN','44', '广东省','4451', '潮州市','445102',' 湘桥区'
union all select 'CN','44', '广东省','4451', '潮州市','445103',' 潮安区'
union all select 'CN','44', '广东省','4451', '潮州市','445122',' 饶平县'
union all select 'CN','44', '广东省','4452', '揭阳市','',' '
union all select 'CN','44', '广东省','4452', '揭阳市','445202',' 榕城区'
union all select 'CN','44', '广东省','4452', '揭阳市','445203',' 揭东区'
union all select 'CN','44', '广东省','4452', '揭阳市','445222',' 揭西县'
union all select 'CN','44', '广东省','4452', '揭阳市','445224',' 惠来县'
union all select 'CN','44', '广东省','4452', '揭阳市','445281',' 普宁市'
union all select 'CN','44', '广东省','4453', '云浮市','',' '
union all select 'CN','44', '广东省','4453', '云浮市','445302',' 云城区'
union all select 'CN','44', '广东省','4453', '云浮市','445303',' 云安区'
union all select 'CN','44', '广东省','4453', '云浮市','445321',' 新兴县'
union all select 'CN','44', '广东省','4453', '云浮市','445322',' 郁南县'
union all select 'CN','44', '广东省','4453', '云浮市','445381',' 罗定市'
union all select 'CN','45', '广西壮族自治区','4500', '','',' '
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','',' '
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450102',' 兴宁区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450103',' 青秀区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450105',' 江南区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450107',' 西乡塘区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450108',' 良庆区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450109',' 邕宁区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450110',' 武鸣区'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450123',' 隆安县'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450124',' 马山县'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450125',' 上林县'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450126',' 宾阳县'
union all select 'CN','45', '广西壮族自治区','4501', '南宁市','450127',' 横县'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','',' '
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450202',' 城中区'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450203',' 鱼峰区'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450204',' 柳南区'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450205',' 柳北区'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450206',' 柳江区'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450222',' 柳城县'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450223',' 鹿寨县'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450224',' 融安县'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450225',' 融水苗族自治县'
union all select 'CN','45', '广西壮族自治区','4502', '柳州市','450226',' 三江侗族自治县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','',' '
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450302',' 秀峰区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450303',' 叠彩区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450304',' 象山区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450305',' 七星区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450311',' 雁山区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450312',' 临桂区'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450321',' 阳朔县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450323',' 灵川县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450324',' 全州县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450325',' 兴安县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450326',' 永福县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450327',' 灌阳县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450328',' 龙胜各族自治县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450329',' 资源县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450330',' 平乐县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450332',' 恭城瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4503', '桂林市','450381',' 荔浦市'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','',' '
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450403',' 万秀区'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450405',' 长洲区'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450406',' 龙圩区'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450421',' 苍梧县'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450422',' 藤县'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450423',' 蒙山县'
union all select 'CN','45', '广西壮族自治区','4504', '梧州市','450481',' 岑溪市'
union all select 'CN','45', '广西壮族自治区','4505', '北海市','',' '
union all select 'CN','45', '广西壮族自治区','4505', '北海市','450502',' 海城区'
union all select 'CN','45', '广西壮族自治区','4505', '北海市','450503',' 银海区'
union all select 'CN','45', '广西壮族自治区','4505', '北海市','450512',' 铁山港区'
union all select 'CN','45', '广西壮族自治区','4505', '北海市','450521',' 合浦县'
union all select 'CN','45', '广西壮族自治区','4506', '防城港市','',' '
union all select 'CN','45', '广西壮族自治区','4506', '防城港市','450602',' 港口区'
union all select 'CN','45', '广西壮族自治区','4506', '防城港市','450603',' 防城区'
union all select 'CN','45', '广西壮族自治区','4506', '防城港市','450621',' 上思县'
union all select 'CN','45', '广西壮族自治区','4506', '防城港市','450681',' 东兴市'
union all select 'CN','45', '广西壮族自治区','4507', '钦州市','',' '
union all select 'CN','45', '广西壮族自治区','4507', '钦州市','450702',' 钦南区'
union all select 'CN','45', '广西壮族自治区','4507', '钦州市','450703',' 钦北区'
union all select 'CN','45', '广西壮族自治区','4507', '钦州市','450721',' 灵山县'
union all select 'CN','45', '广西壮族自治区','4507', '钦州市','450722',' 浦北县'
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','',' '
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','450802',' 港北区'
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','450803',' 港南区'
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','450804',' 覃塘区'
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','450821',' 平南县'
union all select 'CN','45', '广西壮族自治区','4508', '贵港市','450881',' 桂平市'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','',' '
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450902',' 玉州区'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450903',' 福绵区'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450921',' 容县'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450922',' 陆川县'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450923',' 博白县'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450924',' 兴业县'
union all select 'CN','45', '广西壮族自治区','4509', '玉林市','450981',' 北流市'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','',' '
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451002',' 右江区'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451021',' 田阳县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451022',' 田东县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451023',' 平果县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451024',' 德保县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451026',' 那坡县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451027',' 凌云县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451028',' 乐业县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451029',' 田林县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451030',' 西林县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451031',' 隆林各族自治县'
union all select 'CN','45', '广西壮族自治区','4510', '百色市','451081',' 靖西市'
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','',' '
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','451102',' 八步区'
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','451103',' 平桂区'
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','451121',' 昭平县'
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','451122',' 钟山县'
union all select 'CN','45', '广西壮族自治区','4511', '贺州市','451123',' 富川瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','',' '
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451202',' 金城江区'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451203',' 宜州区'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451221',' 南丹县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451222',' 天峨县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451223',' 凤山县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451224',' 东兰县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451225',' 罗城仫佬族自治县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451226',' 环江毛南族自治县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451227',' 巴马瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451228',' 都安瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4512', '河池市','451229',' 大化瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','',' '
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451302',' 兴宾区'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451321',' 忻城县'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451322',' 象州县'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451323',' 武宣县'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451324',' 金秀瑶族自治县'
union all select 'CN','45', '广西壮族自治区','4513', '来宾市','451381',' 合山市'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','',' '
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451402',' 江州区'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451421',' 扶绥县'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451422',' 宁明县'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451423',' 龙州县'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451424',' 大新县'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451425',' 天等县'
union all select 'CN','45', '广西壮族自治区','4514', '崇左市','451481',' 凭祥市'
union all select 'CN','46', '海南省','4600', '','',' '
union all select 'CN','46', '海南省','4601', '海口市','',' '
union all select 'CN','46', '海南省','4601', '海口市','460105',' 秀英区'
union all select 'CN','46', '海南省','4601', '海口市','460106',' 龙华区'
union all select 'CN','46', '海南省','4601', '海口市','460107',' 琼山区'
union all select 'CN','46', '海南省','4601', '海口市','460108',' 美兰区'
union all select 'CN','46', '海南省','4602', '三亚市','',' '
union all select 'CN','46', '海南省','4602', '三亚市','460202',' 海棠区'
union all select 'CN','46', '海南省','4602', '三亚市','460203',' 吉阳区'
union all select 'CN','46', '海南省','4602', '三亚市','460204',' 天涯区'
union all select 'CN','46', '海南省','4602', '三亚市','460205',' 崖州区'
union all select 'CN','46', '海南省','4603', '三沙市','',' '
union all select 'CN','46', '海南省','4604', '儋州市','',' '
union all select 'CN','46', '海南省','4690', '','469001',' 五指山市'
union all select 'CN','46', '海南省','4690', '','469002',' 琼海市'
union all select 'CN','46', '海南省','4690', '','469005',' 文昌市'
union all select 'CN','46', '海南省','4690', '','469006',' 万宁市'
union all select 'CN','46', '海南省','4690', '','469007',' 东方市'
union all select 'CN','46', '海南省','4690', '','469021',' 定安县'
union all select 'CN','46', '海南省','4690', '','469022',' 屯昌县'
union all select 'CN','46', '海南省','4690', '','469023',' 澄迈县'
union all select 'CN','46', '海南省','4690', '','469024',' 临高县'
union all select 'CN','46', '海南省','4690', '','469025',' 白沙黎族自治县'
union all select 'CN','46', '海南省','4690', '','469026',' 昌江黎族自治县'
union all select 'CN','46', '海南省','4690', '','469027',' 乐东黎族自治县'
union all select 'CN','46', '海南省','4690', '','469028',' 陵水黎族自治县'
union all select 'CN','46', '海南省','4690', '','469029',' 保亭黎族苗族自治县'
union all select 'CN','46', '海南省','4690', '','469030',' 琼中黎族苗族自治县'
union all select 'CN','50', '重庆市','5000', '重庆市','',' '
union all select 'CN','50', '重庆市','5001', '重庆市','500101',' 万州区'
union all select 'CN','50', '重庆市','5001', '重庆市','500102',' 涪陵区'
union all select 'CN','50', '重庆市','5001', '重庆市','500103',' 渝中区'
union all select 'CN','50', '重庆市','5001', '重庆市','500104',' 大渡口区'
union all select 'CN','50', '重庆市','5001', '重庆市','500105',' 江北区'
union all select 'CN','50', '重庆市','5001', '重庆市','500106',' 沙坪坝区'
union all select 'CN','50', '重庆市','5001', '重庆市','500107',' 九龙坡区'
union all select 'CN','50', '重庆市','5001', '重庆市','500108',' 南岸区'
union all select 'CN','50', '重庆市','5001', '重庆市','500109',' 北碚区'
union all select 'CN','50', '重庆市','5001', '重庆市','500110',' 綦江区'
union all select 'CN','50', '重庆市','5001', '重庆市','500111',' 大足区'
union all select 'CN','50', '重庆市','5001', '重庆市','500112',' 渝北区'
union all select 'CN','50', '重庆市','5001', '重庆市','500113',' 巴南区'
union all select 'CN','50', '重庆市','5001', '重庆市','500114',' 黔江区'
union all select 'CN','50', '重庆市','5001', '重庆市','500115',' 长寿区'
union all select 'CN','50', '重庆市','5001', '重庆市','500116',' 江津区'
union all select 'CN','50', '重庆市','5001', '重庆市','500117',' 合川区'
union all select 'CN','50', '重庆市','5001', '重庆市','500118',' 永川区'
union all select 'CN','50', '重庆市','5001', '重庆市','500119',' 南川区'
union all select 'CN','50', '重庆市','5001', '重庆市','500120',' 璧山区'
union all select 'CN','50', '重庆市','5001', '重庆市','500151',' 铜梁区'
union all select 'CN','50', '重庆市','5001', '重庆市','500152',' 潼南区'
union all select 'CN','50', '重庆市','5001', '重庆市','500153',' 荣昌区'
union all select 'CN','50', '重庆市','5001', '重庆市','500154',' 开州区'
union all select 'CN','50', '重庆市','5001', '重庆市','500155',' 梁平区'
union all select 'CN','50', '重庆市','5001', '重庆市','500156',' 武隆区'
union all select 'CN','50', '重庆市','5002', '重庆市','500229',' 城口县'
union all select 'CN','50', '重庆市','5002', '重庆市','500230',' 丰都县'
union all select 'CN','50', '重庆市','5002', '重庆市','500231',' 垫江县'
union all select 'CN','50', '重庆市','5002', '重庆市','500233',' 忠县'
union all select 'CN','50', '重庆市','5002', '重庆市','500235',' 云阳县'
union all select 'CN','50', '重庆市','5002', '重庆市','500236',' 奉节县'
union all select 'CN','50', '重庆市','5002', '重庆市','500237',' 巫山县'
union all select 'CN','50', '重庆市','5002', '重庆市','500238',' 巫溪县'
union all select 'CN','50', '重庆市','5002', '重庆市','500240',' 石柱土家族自治县'
union all select 'CN','50', '重庆市','5002', '重庆市','500241',' 秀山土家族苗族自治县'
union all select 'CN','50', '重庆市','5002', '重庆市','500242',' 酉阳土家族苗族自治县'
union all select 'CN','50', '重庆市','5002', '重庆市','500243',' 彭水苗族土家族自治县'
union all select 'CN','51', '四川省','5100', '','',' '
union all select 'CN','51', '四川省','5101', '成都市','',' '
union all select 'CN','51', '四川省','5101', '成都市','510104',' 锦江区'
union all select 'CN','51', '四川省','5101', '成都市','510105',' 青羊区'
union all select 'CN','51', '四川省','5101', '成都市','510106',' 金牛区'
union all select 'CN','51', '四川省','5101', '成都市','510107',' 武侯区'
union all select 'CN','51', '四川省','5101', '成都市','510108',' 成华区'
union all select 'CN','51', '四川省','5101', '成都市','510112',' 龙泉驿区'
union all select 'CN','51', '四川省','5101', '成都市','510113',' 青白江区'
union all select 'CN','51', '四川省','5101', '成都市','510114',' 新都区'
union all select 'CN','51', '四川省','5101', '成都市','510115',' 温江区'
union all select 'CN','51', '四川省','5101', '成都市','510116',' 双流区'
union all select 'CN','51', '四川省','5101', '成都市','510117',' 郫都区'
union all select 'CN','51', '四川省','5101', '成都市','510121',' 金堂县'
union all select 'CN','51', '四川省','5101', '成都市','510129',' 大邑县'
union all select 'CN','51', '四川省','5101', '成都市','510131',' 蒲江县'
union all select 'CN','51', '四川省','5101', '成都市','510132',' 新津县'
union all select 'CN','51', '四川省','5101', '成都市','510181',' 都江堰市'
union all select 'CN','51', '四川省','5101', '成都市','510182',' 彭州市'
union all select 'CN','51', '四川省','5101', '成都市','510183',' 邛崃市'
union all select 'CN','51', '四川省','5101', '成都市','510184',' 崇州市'
union all select 'CN','51', '四川省','5101', '成都市','510185',' 简阳市'
union all select 'CN','51', '四川省','5103', '自贡市','',' '
union all select 'CN','51', '四川省','5103', '自贡市','510302',' 自流井区'
union all select 'CN','51', '四川省','5103', '自贡市','510303',' 贡井区'
union all select 'CN','51', '四川省','5103', '自贡市','510304',' 大安区'
union all select 'CN','51', '四川省','5103', '自贡市','510311',' 沿滩区'
union all select 'CN','51', '四川省','5103', '自贡市','510321',' 荣县'
union all select 'CN','51', '四川省','5103', '自贡市','510322',' 富顺县'
union all select 'CN','51', '四川省','5104', '攀枝花市','',' '
union all select 'CN','51', '四川省','5104', '攀枝花市','510402',' 东区'
union all select 'CN','51', '四川省','5104', '攀枝花市','510403',' 西区'
union all select 'CN','51', '四川省','5104', '攀枝花市','510411',' 仁和区'
union all select 'CN','51', '四川省','5104', '攀枝花市','510421',' 米易县'
union all select 'CN','51', '四川省','5104', '攀枝花市','510422',' 盐边县'
union all select 'CN','51', '四川省','5105', '泸州市','',' '
union all select 'CN','51', '四川省','5105', '泸州市','510502',' 江阳区'
union all select 'CN','51', '四川省','5105', '泸州市','510503',' 纳溪区'
union all select 'CN','51', '四川省','5105', '泸州市','510504',' 龙马潭区'
union all select 'CN','51', '四川省','5105', '泸州市','510521',' 泸县'
union all select 'CN','51', '四川省','5105', '泸州市','510522',' 合江县'
union all select 'CN','51', '四川省','5105', '泸州市','510524',' 叙永县'
union all select 'CN','51', '四川省','5105', '泸州市','510525',' 古蔺县'
union all select 'CN','51', '四川省','5106', '德阳市','',' '
union all select 'CN','51', '四川省','5106', '德阳市','510603',' 旌阳区'
union all select 'CN','51', '四川省','5106', '德阳市','510604',' 罗江区'
union all select 'CN','51', '四川省','5106', '德阳市','510623',' 中江县'
union all select 'CN','51', '四川省','5106', '德阳市','510681',' 广汉市'
union all select 'CN','51', '四川省','5106', '德阳市','510682',' 什邡市'
union all select 'CN','51', '四川省','5106', '德阳市','510683',' 绵竹市'
union all select 'CN','51', '四川省','5107', '绵阳市','',' '
union all select 'CN','51', '四川省','5107', '绵阳市','510703',' 涪城区'
union all select 'CN','51', '四川省','5107', '绵阳市','510704',' 游仙区'
union all select 'CN','51', '四川省','5107', '绵阳市','510705',' 安州区'
union all select 'CN','51', '四川省','5107', '绵阳市','510722',' 三台县'
union all select 'CN','51', '四川省','5107', '绵阳市','510723',' 盐亭县'
union all select 'CN','51', '四川省','5107', '绵阳市','510725',' 梓潼县'
union all select 'CN','51', '四川省','5107', '绵阳市','510726',' 北川羌族自治县'
union all select 'CN','51', '四川省','5107', '绵阳市','510727',' 平武县'
union all select 'CN','51', '四川省','5107', '绵阳市','510781',' 江油市'
union all select 'CN','51', '四川省','5108', '广元市','',' '
union all select 'CN','51', '四川省','5108', '广元市','510802',' 利州区'
union all select 'CN','51', '四川省','5108', '广元市','510811',' 昭化区'
union all select 'CN','51', '四川省','5108', '广元市','510812',' 朝天区'
union all select 'CN','51', '四川省','5108', '广元市','510821',' 旺苍县'
union all select 'CN','51', '四川省','5108', '广元市','510822',' 青川县'
union all select 'CN','51', '四川省','5108', '广元市','510823',' 剑阁县'
union all select 'CN','51', '四川省','5108', '广元市','510824',' 苍溪县'
union all select 'CN','51', '四川省','5109', '遂宁市','',' '
union all select 'CN','51', '四川省','5109', '遂宁市','510903',' 船山区'
union all select 'CN','51', '四川省','5109', '遂宁市','510904',' 安居区'
union all select 'CN','51', '四川省','5109', '遂宁市','510921',' 蓬溪县'
union all select 'CN','51', '四川省','5109', '遂宁市','510922',' 射洪县'
union all select 'CN','51', '四川省','5109', '遂宁市','510923',' 大英县'
union all select 'CN','51', '四川省','5110', '内江市','',' '
union all select 'CN','51', '四川省','5110', '内江市','511002',' 市中区'
union all select 'CN','51', '四川省','5110', '内江市','511011',' 东兴区'
union all select 'CN','51', '四川省','5110', '内江市','511024',' 威远县'
union all select 'CN','51', '四川省','5110', '内江市','511025',' 资中县'
union all select 'CN','51', '四川省','5110', '内江市','511083',' 隆昌市'
union all select 'CN','51', '四川省','5111', '乐山市','',' '
union all select 'CN','51', '四川省','5111', '乐山市','511102',' 市中区'
union all select 'CN','51', '四川省','5111', '乐山市','511111',' 沙湾区'
union all select 'CN','51', '四川省','5111', '乐山市','511112',' 五通桥区'
union all select 'CN','51', '四川省','5111', '乐山市','511113',' 金口河区'
union all select 'CN','51', '四川省','5111', '乐山市','511123',' 犍为县'
union all select 'CN','51', '四川省','5111', '乐山市','511124',' 井研县'
union all select 'CN','51', '四川省','5111', '乐山市','511126',' 夹江县'
union all select 'CN','51', '四川省','5111', '乐山市','511129',' 沐川县'
union all select 'CN','51', '四川省','5111', '乐山市','511132',' 峨边彝族自治县'
union all select 'CN','51', '四川省','5111', '乐山市','511133',' 马边彝族自治县'
union all select 'CN','51', '四川省','5111', '乐山市','511181',' 峨眉山市'
union all select 'CN','51', '四川省','5113', '南充市','',' '
union all select 'CN','51', '四川省','5113', '南充市','511302',' 顺庆区'
union all select 'CN','51', '四川省','5113', '南充市','511303',' 高坪区'
union all select 'CN','51', '四川省','5113', '南充市','511304',' 嘉陵区'
union all select 'CN','51', '四川省','5113', '南充市','511321',' 南部县'
union all select 'CN','51', '四川省','5113', '南充市','511322',' 营山县'
union all select 'CN','51', '四川省','5113', '南充市','511323',' 蓬安县'
union all select 'CN','51', '四川省','5113', '南充市','511324',' 仪陇县'
union all select 'CN','51', '四川省','5113', '南充市','511325',' 西充县'
union all select 'CN','51', '四川省','5113', '南充市','511381',' 阆中市'
union all select 'CN','51', '四川省','5114', '眉山市','',' '
union all select 'CN','51', '四川省','5114', '眉山市','511402',' 东坡区'
union all select 'CN','51', '四川省','5114', '眉山市','511403',' 彭山区'
union all select 'CN','51', '四川省','5114', '眉山市','511421',' 仁寿县'
union all select 'CN','51', '四川省','5114', '眉山市','511423',' 洪雅县'
union all select 'CN','51', '四川省','5114', '眉山市','511424',' 丹棱县'
union all select 'CN','51', '四川省','5114', '眉山市','511425',' 青神县'
union all select 'CN','51', '四川省','5115', '宜宾市','',' '
union all select 'CN','51', '四川省','5115', '宜宾市','511502',' 翠屏区'
union all select 'CN','51', '四川省','5115', '宜宾市','511503',' 南溪区'
union all select 'CN','51', '四川省','5115', '宜宾市','511504',' 叙州区'
union all select 'CN','51', '四川省','5115', '宜宾市','511523',' 江安县'
union all select 'CN','51', '四川省','5115', '宜宾市','511524',' 长宁县'
union all select 'CN','51', '四川省','5115', '宜宾市','511525',' 高县'
union all select 'CN','51', '四川省','5115', '宜宾市','511526',' 珙县'
union all select 'CN','51', '四川省','5115', '宜宾市','511527',' 筠连县'
union all select 'CN','51', '四川省','5115', '宜宾市','511528',' 兴文县'
union all select 'CN','51', '四川省','5115', '宜宾市','511529',' 屏山县'
union all select 'CN','51', '四川省','5116', '广安市','',' '
union all select 'CN','51', '四川省','5116', '广安市','511602',' 广安区'
union all select 'CN','51', '四川省','5116', '广安市','511603',' 前锋区'
union all select 'CN','51', '四川省','5116', '广安市','511621',' 岳池县'
union all select 'CN','51', '四川省','5116', '广安市','511622',' 武胜县'
union all select 'CN','51', '四川省','5116', '广安市','511623',' 邻水县'
union all select 'CN','51', '四川省','5116', '广安市','511681',' 华蓥市'
union all select 'CN','51', '四川省','5117', '达州市','',' '
union all select 'CN','51', '四川省','5117', '达州市','511702',' 通川区'
union all select 'CN','51', '四川省','5117', '达州市','511703',' 达川区'
union all select 'CN','51', '四川省','5117', '达州市','511722',' 宣汉县'
union all select 'CN','51', '四川省','5117', '达州市','511723',' 开江县'
union all select 'CN','51', '四川省','5117', '达州市','511724',' 大竹县'
union all select 'CN','51', '四川省','5117', '达州市','511725',' 渠县'
union all select 'CN','51', '四川省','5117', '达州市','511781',' 万源市'
union all select 'CN','51', '四川省','5118', '雅安市','',' '
union all select 'CN','51', '四川省','5118', '雅安市','511802',' 雨城区'
union all select 'CN','51', '四川省','5118', '雅安市','511803',' 名山区'
union all select 'CN','51', '四川省','5118', '雅安市','511822',' 荥经县'
union all select 'CN','51', '四川省','5118', '雅安市','511823',' 汉源县'
union all select 'CN','51', '四川省','5118', '雅安市','511824',' 石棉县'
union all select 'CN','51', '四川省','5118', '雅安市','511825',' 天全县'
union all select 'CN','51', '四川省','5118', '雅安市','511826',' 芦山县'
union all select 'CN','51', '四川省','5118', '雅安市','511827',' 宝兴县'
union all select 'CN','51', '四川省','5119', '巴中市','',' '
union all select 'CN','51', '四川省','5119', '巴中市','511902',' 巴州区'
union all select 'CN','51', '四川省','5119', '巴中市','511903',' 恩阳区'
union all select 'CN','51', '四川省','5119', '巴中市','511921',' 通江县'
union all select 'CN','51', '四川省','5119', '巴中市','511922',' 南江县'
union all select 'CN','51', '四川省','5119', '巴中市','511923',' 平昌县'
union all select 'CN','51', '四川省','5120', '资阳市','',' '
union all select 'CN','51', '四川省','5120', '资阳市','512002',' 雁江区'
union all select 'CN','51', '四川省','5120', '资阳市','512021',' 安岳县'
union all select 'CN','51', '四川省','5120', '资阳市','512022',' 乐至县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','',' '
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513201',' 马尔康市'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513221',' 汶川县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513222',' 理县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513223',' 茂县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513224',' 松潘县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513225',' 九寨沟县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513226',' 金川县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513227',' 小金县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513228',' 黑水县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513230',' 壤塘县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513231',' 阿坝县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513232',' 若尔盖县'
union all select 'CN','51', '四川省','5132', '阿坝藏族羌族自治州','513233',' 红原县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','',' '
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513301',' 康定市'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513322',' 泸定县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513323',' 丹巴县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513324',' 九龙县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513325',' 雅江县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513326',' 道孚县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513327',' 炉霍县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513328',' 甘孜县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513329',' 新龙县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513330',' 德格县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513331',' 白玉县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513332',' 石渠县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513333',' 色达县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513334',' 理塘县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513335',' 巴塘县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513336',' 乡城县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513337',' 稻城县'
union all select 'CN','51', '四川省','5133', '甘孜藏族自治州','513338',' 得荣县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','',' '
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513401',' 西昌市'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513422',' 木里藏族自治县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513423',' 盐源县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513424',' 德昌县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513425',' 会理县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513426',' 会东县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513427',' 宁南县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513428',' 普格县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513429',' 布拖县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513430',' 金阳县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513431',' 昭觉县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513432',' 喜德县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513433',' 冕宁县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513434',' 越西县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513435',' 甘洛县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513436',' 美姑县'
union all select 'CN','51', '四川省','5134', '凉山彝族自治州','513437',' 雷波县'
union all select 'CN','52', '贵州省','5200', '','',' '
union all select 'CN','52', '贵州省','5201', '贵阳市','',' '
union all select 'CN','52', '贵州省','5201', '贵阳市','520102',' 南明区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520103',' 云岩区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520111',' 花溪区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520112',' 乌当区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520113',' 白云区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520115',' 观山湖区'
union all select 'CN','52', '贵州省','5201', '贵阳市','520121',' 开阳县'
union all select 'CN','52', '贵州省','5201', '贵阳市','520122',' 息烽县'
union all select 'CN','52', '贵州省','5201', '贵阳市','520123',' 修文县'
union all select 'CN','52', '贵州省','5201', '贵阳市','520181',' 清镇市'
union all select 'CN','52', '贵州省','5202', '六盘水市','',' '
union all select 'CN','52', '贵州省','5202', '六盘水市','520201',' 钟山区'
union all select 'CN','52', '贵州省','5202', '六盘水市','520203',' 六枝特区'
union all select 'CN','52', '贵州省','5202', '六盘水市','520221',' 水城县'
union all select 'CN','52', '贵州省','5202', '六盘水市','520281',' 盘州市'
union all select 'CN','52', '贵州省','5203', '遵义市','',' '
union all select 'CN','52', '贵州省','5203', '遵义市','520302',' 红花岗区'
union all select 'CN','52', '贵州省','5203', '遵义市','520303',' 汇川区'
union all select 'CN','52', '贵州省','5203', '遵义市','520304',' 播州区'
union all select 'CN','52', '贵州省','5203', '遵义市','520322',' 桐梓县'
union all select 'CN','52', '贵州省','5203', '遵义市','520323',' 绥阳县'
union all select 'CN','52', '贵州省','5203', '遵义市','520324',' 正安县'
union all select 'CN','52', '贵州省','5203', '遵义市','520325',' 道真仡佬族苗族自治县'
union all select 'CN','52', '贵州省','5203', '遵义市','520326',' 务川仡佬族苗族自治县'
union all select 'CN','52', '贵州省','5203', '遵义市','520327',' 凤冈县'
union all select 'CN','52', '贵州省','5203', '遵义市','520328',' 湄潭县'
union all select 'CN','52', '贵州省','5203', '遵义市','520329',' 余庆县'
union all select 'CN','52', '贵州省','5203', '遵义市','520330',' 习水县'
union all select 'CN','52', '贵州省','5203', '遵义市','520381',' 赤水市'
union all select 'CN','52', '贵州省','5203', '遵义市','520382',' 仁怀市'
union all select 'CN','52', '贵州省','5204', '安顺市','',' '
union all select 'CN','52', '贵州省','5204', '安顺市','520402',' 西秀区'
union all select 'CN','52', '贵州省','5204', '安顺市','520403',' 平坝区'
union all select 'CN','52', '贵州省','5204', '安顺市','520422',' 普定县'
union all select 'CN','52', '贵州省','5204', '安顺市','520423',' 镇宁布依族苗族自治县'
union all select 'CN','52', '贵州省','5204', '安顺市','520424',' 关岭布依族苗族自治县'
union all select 'CN','52', '贵州省','5204', '安顺市','520425',' 紫云苗族布依族自治县'
union all select 'CN','52', '贵州省','5205', '毕节市','',' '
union all select 'CN','52', '贵州省','5205', '毕节市','520502',' 七星关区'
union all select 'CN','52', '贵州省','5205', '毕节市','520521',' 大方县'
union all select 'CN','52', '贵州省','5205', '毕节市','520522',' 黔西县'
union all select 'CN','52', '贵州省','5205', '毕节市','520523',' 金沙县'
union all select 'CN','52', '贵州省','5205', '毕节市','520524',' 织金县'
union all select 'CN','52', '贵州省','5205', '毕节市','520525',' 纳雍县'
union all select 'CN','52', '贵州省','5205', '毕节市','520526',' 威宁彝族回族苗族自治县'
union all select 'CN','52', '贵州省','5205', '毕节市','520527',' 赫章县'
union all select 'CN','52', '贵州省','5206', '铜仁市','',' '
union all select 'CN','52', '贵州省','5206', '铜仁市','520602',' 碧江区'
union all select 'CN','52', '贵州省','5206', '铜仁市','520603',' 万山区'
union all select 'CN','52', '贵州省','5206', '铜仁市','520621',' 江口县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520622',' 玉屏侗族自治县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520623',' 石阡县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520624',' 思南县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520625',' 印江土家族苗族自治县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520626',' 德江县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520627',' 沿河土家族自治县'
union all select 'CN','52', '贵州省','5206', '铜仁市','520628',' 松桃苗族自治县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','',' '
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522301',' 兴义市'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522302',' 兴仁市'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522323',' 普安县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522324',' 晴隆县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522325',' 贞丰县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522326',' 望谟县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522327',' 册亨县'
union all select 'CN','52', '贵州省','5223', '黔西南布依族苗族自治州','522328',' 安龙县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','',' '
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522601',' 凯里市'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522622',' 黄平县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522623',' 施秉县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522624',' 三穗县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522625',' 镇远县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522626',' 岑巩县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522627',' 天柱县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522628',' 锦屏县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522629',' 剑河县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522630',' 台江县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522631',' 黎平县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522632',' 榕江县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522633',' 从江县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522634',' 雷山县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522635',' 麻江县'
union all select 'CN','52', '贵州省','5226', '黔东南苗族侗族自治州','522636',' 丹寨县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','',' '
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522701',' 都匀市'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522702',' 福泉市'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522722',' 荔波县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522723',' 贵定县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522725',' 瓮安县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522726',' 独山县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522727',' 平塘县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522728',' 罗甸县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522729',' 长顺县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522730',' 龙里县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522731',' 惠水县'
union all select 'CN','52', '贵州省','5227', '黔南布依族苗族自治州','522732',' 三都水族自治县'
union all select 'CN','53', '云南省','5300', '','',' '
union all select 'CN','53', '云南省','5301', '昆明市','',' '
union all select 'CN','53', '云南省','5301', '昆明市','530102',' 五华区'
union all select 'CN','53', '云南省','5301', '昆明市','530103',' 盘龙区'
union all select 'CN','53', '云南省','5301', '昆明市','530111',' 官渡区'
union all select 'CN','53', '云南省','5301', '昆明市','530112',' 西山区'
union all select 'CN','53', '云南省','5301', '昆明市','530113',' 东川区'
union all select 'CN','53', '云南省','5301', '昆明市','530114',' 呈贡区'
union all select 'CN','53', '云南省','5301', '昆明市','530115',' 晋宁区'
union all select 'CN','53', '云南省','5301', '昆明市','530124',' 富民县'
union all select 'CN','53', '云南省','5301', '昆明市','530125',' 宜良县'
union all select 'CN','53', '云南省','5301', '昆明市','530126',' 石林彝族自治县'
union all select 'CN','53', '云南省','5301', '昆明市','530127',' 嵩明县'
union all select 'CN','53', '云南省','5301', '昆明市','530128',' 禄劝彝族苗族自治县'
union all select 'CN','53', '云南省','5301', '昆明市','530129',' 寻甸回族彝族自治县'
union all select 'CN','53', '云南省','5301', '昆明市','530181',' 安宁市'
union all select 'CN','53', '云南省','5303', '曲靖市','',' '
union all select 'CN','53', '云南省','5303', '曲靖市','530302',' 麒麟区'
union all select 'CN','53', '云南省','5303', '曲靖市','530303',' 沾益区'
union all select 'CN','53', '云南省','5303', '曲靖市','530304',' 马龙区'
union all select 'CN','53', '云南省','5303', '曲靖市','530322',' 陆良县'
union all select 'CN','53', '云南省','5303', '曲靖市','530323',' 师宗县'
union all select 'CN','53', '云南省','5303', '曲靖市','530324',' 罗平县'
union all select 'CN','53', '云南省','5303', '曲靖市','530325',' 富源县'
union all select 'CN','53', '云南省','5303', '曲靖市','530326',' 会泽县'
union all select 'CN','53', '云南省','5303', '曲靖市','530381',' 宣威市'
union all select 'CN','53', '云南省','5304', '玉溪市','',' '
union all select 'CN','53', '云南省','5304', '玉溪市','530402',' 红塔区'
union all select 'CN','53', '云南省','5304', '玉溪市','530403',' 江川区'
union all select 'CN','53', '云南省','5304', '玉溪市','530422',' 澄江县'
union all select 'CN','53', '云南省','5304', '玉溪市','530423',' 通海县'
union all select 'CN','53', '云南省','5304', '玉溪市','530424',' 华宁县'
union all select 'CN','53', '云南省','5304', '玉溪市','530425',' 易门县'
union all select 'CN','53', '云南省','5304', '玉溪市','530426',' 峨山彝族自治县'
union all select 'CN','53', '云南省','5304', '玉溪市','530427',' 新平彝族傣族自治县'
union all select 'CN','53', '云南省','5304', '玉溪市','530428',' 元江哈尼族彝族傣族自治县'
union all select 'CN','53', '云南省','5305', '保山市','',' '
union all select 'CN','53', '云南省','5305', '保山市','530502',' 隆阳区'
union all select 'CN','53', '云南省','5305', '保山市','530521',' 施甸县'
union all select 'CN','53', '云南省','5305', '保山市','530523',' 龙陵县'
union all select 'CN','53', '云南省','5305', '保山市','530524',' 昌宁县'
union all select 'CN','53', '云南省','5305', '保山市','530581',' 腾冲市'
union all select 'CN','53', '云南省','5306', '昭通市','',' '
union all select 'CN','53', '云南省','5306', '昭通市','530602',' 昭阳区'
union all select 'CN','53', '云南省','5306', '昭通市','530621',' 鲁甸县'
union all select 'CN','53', '云南省','5306', '昭通市','530622',' 巧家县'
union all select 'CN','53', '云南省','5306', '昭通市','530623',' 盐津县'
union all select 'CN','53', '云南省','5306', '昭通市','530624',' 大关县'
union all select 'CN','53', '云南省','5306', '昭通市','530625',' 永善县'
union all select 'CN','53', '云南省','5306', '昭通市','530626',' 绥江县'
union all select 'CN','53', '云南省','5306', '昭通市','530627',' 镇雄县'
union all select 'CN','53', '云南省','5306', '昭通市','530628',' 彝良县'
union all select 'CN','53', '云南省','5306', '昭通市','530629',' 威信县'
union all select 'CN','53', '云南省','5306', '昭通市','530681',' 水富市'
union all select 'CN','53', '云南省','5307', '丽江市','',' '
union all select 'CN','53', '云南省','5307', '丽江市','530702',' 古城区'
union all select 'CN','53', '云南省','5307', '丽江市','530721',' 玉龙纳西族自治县'
union all select 'CN','53', '云南省','5307', '丽江市','530722',' 永胜县'
union all select 'CN','53', '云南省','5307', '丽江市','530723',' 华坪县'
union all select 'CN','53', '云南省','5307', '丽江市','530724',' 宁蒗彝族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','',' '
union all select 'CN','53', '云南省','5308', '普洱市','530802',' 思茅区'
union all select 'CN','53', '云南省','5308', '普洱市','530821',' 宁洱哈尼族彝族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530822',' 墨江哈尼族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530823',' 景东彝族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530824',' 景谷傣族彝族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530825',' 镇沅彝族哈尼族拉祜族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530826',' 江城哈尼族彝族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530827',' 孟连傣族拉祜族佤族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530828',' 澜沧拉祜族自治县'
union all select 'CN','53', '云南省','5308', '普洱市','530829',' 西盟佤族自治县'
union all select 'CN','53', '云南省','5309', '临沧市','',' '
union all select 'CN','53', '云南省','5309', '临沧市','530902',' 临翔区'
union all select 'CN','53', '云南省','5309', '临沧市','530921',' 凤庆县'
union all select 'CN','53', '云南省','5309', '临沧市','530922',' 云县'
union all select 'CN','53', '云南省','5309', '临沧市','530923',' 永德县'
union all select 'CN','53', '云南省','5309', '临沧市','530924',' 镇康县'
union all select 'CN','53', '云南省','5309', '临沧市','530925',' 双江拉祜族佤族布朗族傣族自治县'
union all select 'CN','53', '云南省','5309', '临沧市','530926',' 耿马傣族佤族自治县'
union all select 'CN','53', '云南省','5309', '临沧市','530927',' 沧源佤族自治县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','',' '
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532301',' 楚雄市'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532322',' 双柏县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532323',' 牟定县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532324',' 南华县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532325',' 姚安县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532326',' 大姚县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532327',' 永仁县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532328',' 元谋县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532329',' 武定县'
union all select 'CN','53', '云南省','5323', '楚雄彝族自治州','532331',' 禄丰县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','',' '
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532501',' 个旧市'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532502',' 开远市'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532503',' 蒙自市'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532504',' 弥勒市'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532523',' 屏边苗族自治县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532524',' 建水县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532525',' 石屏县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532527',' 泸西县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532528',' 元阳县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532529',' 红河县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532530',' 金平苗族瑶族傣族自治县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532531',' 绿春县'
union all select 'CN','53', '云南省','5325', '红河哈尼族彝族自治州','532532',' 河口瑶族自治县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','',' '
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532601',' 文山市'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532622',' 砚山县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532623',' 西畴县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532624',' 麻栗坡县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532625',' 马关县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532626',' 丘北县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532627',' 广南县'
union all select 'CN','53', '云南省','5326', '文山壮族苗族自治州','532628',' 富宁县'
union all select 'CN','53', '云南省','5328', '西双版纳傣族自治州','',' '
union all select 'CN','53', '云南省','5328', '西双版纳傣族自治州','532801',' 景洪市'
union all select 'CN','53', '云南省','5328', '西双版纳傣族自治州','532822',' 勐海县'
union all select 'CN','53', '云南省','5328', '西双版纳傣族自治州','532823',' 勐腊县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','',' '
union all select 'CN','53', '云南省','5329', '大理白族自治州','532901',' 大理市'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532922',' 漾濞彝族自治县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532923',' 祥云县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532924',' 宾川县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532925',' 弥渡县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532926',' 南涧彝族自治县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532927',' 巍山彝族回族自治县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532928',' 永平县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532929',' 云龙县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532930',' 洱源县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532931',' 剑川县'
union all select 'CN','53', '云南省','5329', '大理白族自治州','532932',' 鹤庆县'
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','',' '
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','533102',' 瑞丽市'
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','533103',' 芒市'
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','533122',' 梁河县'
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','533123',' 盈江县'
union all select 'CN','53', '云南省','5331', '德宏傣族景颇族自治州','533124',' 陇川县'
union all select 'CN','53', '云南省','5333', '怒江傈僳族自治州','',' '
union all select 'CN','53', '云南省','5333', '怒江傈僳族自治州','533301',' 泸水市'
union all select 'CN','53', '云南省','5333', '怒江傈僳族自治州','533323',' 福贡县'
union all select 'CN','53', '云南省','5333', '怒江傈僳族自治州','533324',' 贡山独龙族怒族自治县'
union all select 'CN','53', '云南省','5333', '怒江傈僳族自治州','533325',' 兰坪白族普米族自治县'
union all select 'CN','53', '云南省','5334', '迪庆藏族自治州','',' '
union all select 'CN','53', '云南省','5334', '迪庆藏族自治州','533401',' 香格里拉市'
union all select 'CN','53', '云南省','5334', '迪庆藏族自治州','533422',' 德钦县'
union all select 'CN','53', '云南省','5334', '迪庆藏族自治州','533423',' 维西傈僳族自治县'
union all select 'CN','54', '西藏自治区','5400', '','',' '
union all select 'CN','54', '西藏自治区','5401', '拉萨市','',' '
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540102',' 城关区'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540103',' 堆龙德庆区'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540104',' 达孜区'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540121',' 林周县'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540122',' 当雄县'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540123',' 尼木县'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540124',' 曲水县'
union all select 'CN','54', '西藏自治区','5401', '拉萨市','540127',' 墨竹工卡县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','',' '
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540202',' 桑珠孜区'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540221',' 南木林县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540222',' 江孜县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540223',' 定日县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540224',' 萨迦县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540225',' 拉孜县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540226',' 昂仁县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540227',' 谢通门县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540228',' 白朗县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540229',' 仁布县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540230',' 康马县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540231',' 定结县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540232',' 仲巴县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540233',' 亚东县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540234',' 吉隆县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540235',' 聂拉木县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540236',' 萨嘎县'
union all select 'CN','54', '西藏自治区','5402', '日喀则市','540237',' 岗巴县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','',' '
union all select 'CN','54', '西藏自治区','5403', '昌都市','540302',' 卡若区'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540321',' 江达县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540322',' 贡觉县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540323',' 类乌齐县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540324',' 丁青县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540325',' 察雅县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540326',' 八宿县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540327',' 左贡县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540328',' 芒康县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540329',' 洛隆县'
union all select 'CN','54', '西藏自治区','5403', '昌都市','540330',' 边坝县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','',' '
union all select 'CN','54', '西藏自治区','5404', '林芝市','540402',' 巴宜区'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540421',' 工布江达县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540422',' 米林县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540423',' 墨脱县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540424',' 波密县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540425',' 察隅县'
union all select 'CN','54', '西藏自治区','5404', '林芝市','540426',' 朗县'
union all select 'CN','54', '西藏自治区','5405', '山南市','',' '
union all select 'CN','54', '西藏自治区','5405', '山南市','540502',' 乃东区'
union all select 'CN','54', '西藏自治区','5405', '山南市','540521',' 扎囊县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540522',' 贡嘎县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540523',' 桑日县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540524',' 琼结县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540525',' 曲松县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540526',' 措美县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540527',' 洛扎县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540528',' 加查县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540529',' 隆子县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540530',' 错那县'
union all select 'CN','54', '西藏自治区','5405', '山南市','540531',' 浪卡子县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','',' '
union all select 'CN','54', '西藏自治区','5406', '那曲市','540602',' 色尼区'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540621',' 嘉黎县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540622',' 比如县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540623',' 聂荣县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540624',' 安多县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540625',' 申扎县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540626',' 索县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540627',' 班戈县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540628',' 巴青县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540629',' 尼玛县'
union all select 'CN','54', '西藏自治区','5406', '那曲市','540630',' 双湖县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','',' '
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542521',' 普兰县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542522',' 札达县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542523',' 噶尔县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542524',' 日土县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542525',' 革吉县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542526',' 改则县'
union all select 'CN','54', '西藏自治区','5425', '阿里地区','542527',' 措勤县'
union all select 'CN','61', '陕西省','6100', '','',' '
union all select 'CN','61', '陕西省','6101', '西安市','',' '
union all select 'CN','61', '陕西省','6101', '西安市','610102',' 新城区'
union all select 'CN','61', '陕西省','6101', '西安市','610103',' 碑林区'
union all select 'CN','61', '陕西省','6101', '西安市','610104',' 莲湖区'
union all select 'CN','61', '陕西省','6101', '西安市','610111',' 灞桥区'
union all select 'CN','61', '陕西省','6101', '西安市','610112',' 未央区'
union all select 'CN','61', '陕西省','6101', '西安市','610113',' 雁塔区'
union all select 'CN','61', '陕西省','6101', '西安市','610114',' 阎良区'
union all select 'CN','61', '陕西省','6101', '西安市','610115',' 临潼区'
union all select 'CN','61', '陕西省','6101', '西安市','610116',' 长安区'
union all select 'CN','61', '陕西省','6101', '西安市','610117',' 高陵区'
union all select 'CN','61', '陕西省','6101', '西安市','610118',' 鄠邑区'
union all select 'CN','61', '陕西省','6101', '西安市','610122',' 蓝田县'
union all select 'CN','61', '陕西省','6101', '西安市','610124',' 周至县'
union all select 'CN','61', '陕西省','6102', '铜川市','',' '
union all select 'CN','61', '陕西省','6102', '铜川市','610202',' 王益区'
union all select 'CN','61', '陕西省','6102', '铜川市','610203',' 印台区'
union all select 'CN','61', '陕西省','6102', '铜川市','610204',' 耀州区'
union all select 'CN','61', '陕西省','6102', '铜川市','610222',' 宜君县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','',' '
union all select 'CN','61', '陕西省','6103', '宝鸡市','610302',' 渭滨区'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610303',' 金台区'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610304',' 陈仓区'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610322',' 凤翔县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610323',' 岐山县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610324',' 扶风县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610326',' 眉县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610327',' 陇县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610328',' 千阳县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610329',' 麟游县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610330',' 凤县'
union all select 'CN','61', '陕西省','6103', '宝鸡市','610331',' 太白县'
union all select 'CN','61', '陕西省','6104', '咸阳市','',' '
union all select 'CN','61', '陕西省','6104', '咸阳市','610402',' 秦都区'
union all select 'CN','61', '陕西省','6104', '咸阳市','610403',' 杨陵区'
union all select 'CN','61', '陕西省','6104', '咸阳市','610404',' 渭城区'
union all select 'CN','61', '陕西省','6104', '咸阳市','610422',' 三原县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610423',' 泾阳县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610424',' 乾县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610425',' 礼泉县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610426',' 永寿县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610428',' 长武县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610429',' 旬邑县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610430',' 淳化县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610431',' 武功县'
union all select 'CN','61', '陕西省','6104', '咸阳市','610481',' 兴平市'
union all select 'CN','61', '陕西省','6104', '咸阳市','610482',' 彬州市'
union all select 'CN','61', '陕西省','6105', '渭南市','',' '
union all select 'CN','61', '陕西省','6105', '渭南市','610502',' 临渭区'
union all select 'CN','61', '陕西省','6105', '渭南市','610503',' 华州区'
union all select 'CN','61', '陕西省','6105', '渭南市','610522',' 潼关县'
union all select 'CN','61', '陕西省','6105', '渭南市','610523',' 大荔县'
union all select 'CN','61', '陕西省','6105', '渭南市','610524',' 合阳县'
union all select 'CN','61', '陕西省','6105', '渭南市','610525',' 澄城县'
union all select 'CN','61', '陕西省','6105', '渭南市','610526',' 蒲城县'
union all select 'CN','61', '陕西省','6105', '渭南市','610527',' 白水县'
union all select 'CN','61', '陕西省','6105', '渭南市','610528',' 富平县'
union all select 'CN','61', '陕西省','6105', '渭南市','610581',' 韩城市'
union all select 'CN','61', '陕西省','6105', '渭南市','610582',' 华阴市'
union all select 'CN','61', '陕西省','6106', '延安市','',' '
union all select 'CN','61', '陕西省','6106', '延安市','610602',' 宝塔区'
union all select 'CN','61', '陕西省','6106', '延安市','610603',' 安塞区'
union all select 'CN','61', '陕西省','6106', '延安市','610621',' 延长县'
union all select 'CN','61', '陕西省','6106', '延安市','610622',' 延川县'
union all select 'CN','61', '陕西省','6106', '延安市','610623',' 子长县'
union all select 'CN','61', '陕西省','6106', '延安市','610625',' 志丹县'
union all select 'CN','61', '陕西省','6106', '延安市','610626',' 吴起县'
union all select 'CN','61', '陕西省','6106', '延安市','610627',' 甘泉县'
union all select 'CN','61', '陕西省','6106', '延安市','610628',' 富县'
union all select 'CN','61', '陕西省','6106', '延安市','610629',' 洛川县'
union all select 'CN','61', '陕西省','6106', '延安市','610630',' 宜川县'
union all select 'CN','61', '陕西省','6106', '延安市','610631',' 黄龙县'
union all select 'CN','61', '陕西省','6106', '延安市','610632',' 黄陵县'
union all select 'CN','61', '陕西省','6107', '汉中市','',' '
union all select 'CN','61', '陕西省','6107', '汉中市','610702',' 汉台区'
union all select 'CN','61', '陕西省','6107', '汉中市','610703',' 南郑区'
union all select 'CN','61', '陕西省','6107', '汉中市','610722',' 城固县'
union all select 'CN','61', '陕西省','6107', '汉中市','610723',' 洋县'
union all select 'CN','61', '陕西省','6107', '汉中市','610724',' 西乡县'
union all select 'CN','61', '陕西省','6107', '汉中市','610725',' 勉县'
union all select 'CN','61', '陕西省','6107', '汉中市','610726',' 宁强县'
union all select 'CN','61', '陕西省','6107', '汉中市','610727',' 略阳县'
union all select 'CN','61', '陕西省','6107', '汉中市','610728',' 镇巴县'
union all select 'CN','61', '陕西省','6107', '汉中市','610729',' 留坝县'
union all select 'CN','61', '陕西省','6107', '汉中市','610730',' 佛坪县'
union all select 'CN','61', '陕西省','6108', '榆林市','',' '
union all select 'CN','61', '陕西省','6108', '榆林市','610802',' 榆阳区'
union all select 'CN','61', '陕西省','6108', '榆林市','610803',' 横山区'
union all select 'CN','61', '陕西省','6108', '榆林市','610822',' 府谷县'
union all select 'CN','61', '陕西省','6108', '榆林市','610824',' 靖边县'
union all select 'CN','61', '陕西省','6108', '榆林市','610825',' 定边县'
union all select 'CN','61', '陕西省','6108', '榆林市','610826',' 绥德县'
union all select 'CN','61', '陕西省','6108', '榆林市','610827',' 米脂县'
union all select 'CN','61', '陕西省','6108', '榆林市','610828',' 佳县'
union all select 'CN','61', '陕西省','6108', '榆林市','610829',' 吴堡县'
union all select 'CN','61', '陕西省','6108', '榆林市','610830',' 清涧县'
union all select 'CN','61', '陕西省','6108', '榆林市','610831',' 子洲县'
union all select 'CN','61', '陕西省','6108', '榆林市','610881',' 神木市'
union all select 'CN','61', '陕西省','6109', '安康市','',' '
union all select 'CN','61', '陕西省','6109', '安康市','610902',' 汉滨区'
union all select 'CN','61', '陕西省','6109', '安康市','610921',' 汉阴县'
union all select 'CN','61', '陕西省','6109', '安康市','610922',' 石泉县'
union all select 'CN','61', '陕西省','6109', '安康市','610923',' 宁陕县'
union all select 'CN','61', '陕西省','6109', '安康市','610924',' 紫阳县'
union all select 'CN','61', '陕西省','6109', '安康市','610925',' 岚皋县'
union all select 'CN','61', '陕西省','6109', '安康市','610926',' 平利县'
union all select 'CN','61', '陕西省','6109', '安康市','610927',' 镇坪县'
union all select 'CN','61', '陕西省','6109', '安康市','610928',' 旬阳县'
union all select 'CN','61', '陕西省','6109', '安康市','610929',' 白河县'
union all select 'CN','61', '陕西省','6110', '商洛市','',' '
union all select 'CN','61', '陕西省','6110', '商洛市','611002',' 商州区'
union all select 'CN','61', '陕西省','6110', '商洛市','611021',' 洛南县'
union all select 'CN','61', '陕西省','6110', '商洛市','611022',' 丹凤县'
union all select 'CN','61', '陕西省','6110', '商洛市','611023',' 商南县'
union all select 'CN','61', '陕西省','6110', '商洛市','611024',' 山阳县'
union all select 'CN','61', '陕西省','6110', '商洛市','611025',' 镇安县'
union all select 'CN','61', '陕西省','6110', '商洛市','611026',' 柞水县'
union all select 'CN','62', '甘肃省','6200', '','',' '
union all select 'CN','62', '甘肃省','6201', '兰州市','',' '
union all select 'CN','62', '甘肃省','6201', '兰州市','620102',' 城关区'
union all select 'CN','62', '甘肃省','6201', '兰州市','620103',' 七里河区'
union all select 'CN','62', '甘肃省','6201', '兰州市','620104',' 西固区'
union all select 'CN','62', '甘肃省','6201', '兰州市','620105',' 安宁区'
union all select 'CN','62', '甘肃省','6201', '兰州市','620111',' 红古区'
union all select 'CN','62', '甘肃省','6201', '兰州市','620121',' 永登县'
union all select 'CN','62', '甘肃省','6201', '兰州市','620122',' 皋兰县'
union all select 'CN','62', '甘肃省','6201', '兰州市','620123',' 榆中县'
union all select 'CN','62', '甘肃省','6202', '嘉峪关市','',' '
union all select 'CN','62', '甘肃省','6203', '金昌市','',' '
union all select 'CN','62', '甘肃省','6203', '金昌市','620302',' 金川区'
union all select 'CN','62', '甘肃省','6203', '金昌市','620321',' 永昌县'
union all select 'CN','62', '甘肃省','6204', '白银市','',' '
union all select 'CN','62', '甘肃省','6204', '白银市','620402',' 白银区'
union all select 'CN','62', '甘肃省','6204', '白银市','620403',' 平川区'
union all select 'CN','62', '甘肃省','6204', '白银市','620421',' 靖远县'
union all select 'CN','62', '甘肃省','6204', '白银市','620422',' 会宁县'
union all select 'CN','62', '甘肃省','6204', '白银市','620423',' 景泰县'
union all select 'CN','62', '甘肃省','6205', '天水市','',' '
union all select 'CN','62', '甘肃省','6205', '天水市','620502',' 秦州区'
union all select 'CN','62', '甘肃省','6205', '天水市','620503',' 麦积区'
union all select 'CN','62', '甘肃省','6205', '天水市','620521',' 清水县'
union all select 'CN','62', '甘肃省','6205', '天水市','620522',' 秦安县'
union all select 'CN','62', '甘肃省','6205', '天水市','620523',' 甘谷县'
union all select 'CN','62', '甘肃省','6205', '天水市','620524',' 武山县'
union all select 'CN','62', '甘肃省','6205', '天水市','620525',' 张家川回族自治县'
union all select 'CN','62', '甘肃省','6206', '武威市','',' '
union all select 'CN','62', '甘肃省','6206', '武威市','620602',' 凉州区'
union all select 'CN','62', '甘肃省','6206', '武威市','620621',' 民勤县'
union all select 'CN','62', '甘肃省','6206', '武威市','620622',' 古浪县'
union all select 'CN','62', '甘肃省','6206', '武威市','620623',' 天祝藏族自治县'
union all select 'CN','62', '甘肃省','6207', '张掖市','',' '
union all select 'CN','62', '甘肃省','6207', '张掖市','620702',' 甘州区'
union all select 'CN','62', '甘肃省','6207', '张掖市','620721',' 肃南裕固族自治县'
union all select 'CN','62', '甘肃省','6207', '张掖市','620722',' 民乐县'
union all select 'CN','62', '甘肃省','6207', '张掖市','620723',' 临泽县'
union all select 'CN','62', '甘肃省','6207', '张掖市','620724',' 高台县'
union all select 'CN','62', '甘肃省','6207', '张掖市','620725',' 山丹县'
union all select 'CN','62', '甘肃省','6208', '平凉市','',' '
union all select 'CN','62', '甘肃省','6208', '平凉市','620802',' 崆峒区'
union all select 'CN','62', '甘肃省','6208', '平凉市','620821',' 泾川县'
union all select 'CN','62', '甘肃省','6208', '平凉市','620822',' 灵台县'
union all select 'CN','62', '甘肃省','6208', '平凉市','620823',' 崇信县'
union all select 'CN','62', '甘肃省','6208', '平凉市','620825',' 庄浪县'
union all select 'CN','62', '甘肃省','6208', '平凉市','620826',' 静宁县'
union all select 'CN','62', '甘肃省','6208', '平凉市','620881',' 华亭市'
union all select 'CN','62', '甘肃省','6209', '酒泉市','',' '
union all select 'CN','62', '甘肃省','6209', '酒泉市','620902',' 肃州区'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620921',' 金塔县'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620922',' 瓜州县'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620923',' 肃北蒙古族自治县'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620924',' 阿克塞哈萨克族自治县'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620981',' 玉门市'
union all select 'CN','62', '甘肃省','6209', '酒泉市','620982',' 敦煌市'
union all select 'CN','62', '甘肃省','6210', '庆阳市','',' '
union all select 'CN','62', '甘肃省','6210', '庆阳市','621002',' 西峰区'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621021',' 庆城县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621022',' 环县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621023',' 华池县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621024',' 合水县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621025',' 正宁县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621026',' 宁县'
union all select 'CN','62', '甘肃省','6210', '庆阳市','621027',' 镇原县'
union all select 'CN','62', '甘肃省','6211', '定西市','',' '
union all select 'CN','62', '甘肃省','6211', '定西市','621102',' 安定区'
union all select 'CN','62', '甘肃省','6211', '定西市','621121',' 通渭县'
union all select 'CN','62', '甘肃省','6211', '定西市','621122',' 陇西县'
union all select 'CN','62', '甘肃省','6211', '定西市','621123',' 渭源县'
union all select 'CN','62', '甘肃省','6211', '定西市','621124',' 临洮县'
union all select 'CN','62', '甘肃省','6211', '定西市','621125',' 漳县'
union all select 'CN','62', '甘肃省','6211', '定西市','621126',' 岷县'
union all select 'CN','62', '甘肃省','6212', '陇南市','',' '
union all select 'CN','62', '甘肃省','6212', '陇南市','621202',' 武都区'
union all select 'CN','62', '甘肃省','6212', '陇南市','621221',' 成县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621222',' 文县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621223',' 宕昌县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621224',' 康县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621225',' 西和县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621226',' 礼县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621227',' 徽县'
union all select 'CN','62', '甘肃省','6212', '陇南市','621228',' 两当县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','',' '
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622901',' 临夏市'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622921',' 临夏县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622922',' 康乐县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622923',' 永靖县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622924',' 广河县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622925',' 和政县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622926',' 东乡族自治县'
union all select 'CN','62', '甘肃省','6229', '临夏回族自治州','622927',' 积石山保安族东乡族撒拉族自治县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','',' '
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623001',' 合作市'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623021',' 临潭县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623022',' 卓尼县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623023',' 舟曲县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623024',' 迭部县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623025',' 玛曲县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623026',' 碌曲县'
union all select 'CN','62', '甘肃省','6230', '甘南藏族自治州','623027',' 夏河县'
union all select 'CN','63', '青海省','6300', '','',' '
union all select 'CN','63', '青海省','6301', '西宁市','',' '
union all select 'CN','63', '青海省','6301', '西宁市','630102',' 城东区'
union all select 'CN','63', '青海省','6301', '西宁市','630103',' 城中区'
union all select 'CN','63', '青海省','6301', '西宁市','630104',' 城西区'
union all select 'CN','63', '青海省','6301', '西宁市','630105',' 城北区'
union all select 'CN','63', '青海省','6301', '西宁市','630121',' 大通回族土族自治县'
union all select 'CN','63', '青海省','6301', '西宁市','630122',' 湟中县'
union all select 'CN','63', '青海省','6301', '西宁市','630123',' 湟源县'
union all select 'CN','63', '青海省','6302', '海东市','',' '
union all select 'CN','63', '青海省','6302', '海东市','630202',' 乐都区'
union all select 'CN','63', '青海省','6302', '海东市','630203',' 平安区'
union all select 'CN','63', '青海省','6302', '海东市','630222',' 民和回族土族自治县'
union all select 'CN','63', '青海省','6302', '海东市','630223',' 互助土族自治县'
union all select 'CN','63', '青海省','6302', '海东市','630224',' 化隆回族自治县'
union all select 'CN','63', '青海省','6302', '海东市','630225',' 循化撒拉族自治县'
union all select 'CN','63', '青海省','6322', '海北藏族自治州','',' '
union all select 'CN','63', '青海省','6322', '海北藏族自治州','632221',' 门源回族自治县'
union all select 'CN','63', '青海省','6322', '海北藏族自治州','632222',' 祁连县'
union all select 'CN','63', '青海省','6322', '海北藏族自治州','632223',' 海晏县'
union all select 'CN','63', '青海省','6322', '海北藏族自治州','632224',' 刚察县'
union all select 'CN','63', '青海省','6323', '黄南藏族自治州','',' '
union all select 'CN','63', '青海省','6323', '黄南藏族自治州','632321',' 同仁县'
union all select 'CN','63', '青海省','6323', '黄南藏族自治州','632322',' 尖扎县'
union all select 'CN','63', '青海省','6323', '黄南藏族自治州','632323',' 泽库县'
union all select 'CN','63', '青海省','6323', '黄南藏族自治州','632324',' 河南蒙古族自治县'
union all select 'CN','63', '青海省','6325', '海南藏族自治州','',' '
union all select 'CN','63', '青海省','6325', '海南藏族自治州','632521',' 共和县'
union all select 'CN','63', '青海省','6325', '海南藏族自治州','632522',' 同德县'
union all select 'CN','63', '青海省','6325', '海南藏族自治州','632523',' 贵德县'
union all select 'CN','63', '青海省','6325', '海南藏族自治州','632524',' 兴海县'
union all select 'CN','63', '青海省','6325', '海南藏族自治州','632525',' 贵南县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','',' '
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632621',' 玛沁县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632622',' 班玛县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632623',' 甘德县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632624',' 达日县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632625',' 久治县'
union all select 'CN','63', '青海省','6326', '果洛藏族自治州','632626',' 玛多县'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','',' '
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632701',' 玉树市'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632722',' 杂多县'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632723',' 称多县'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632724',' 治多县'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632725',' 囊谦县'
union all select 'CN','63', '青海省','6327', '玉树藏族自治州','632726',' 曲麻莱县'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','',' '
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632801',' 格尔木市'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632802',' 德令哈市'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632803',' 茫崖市'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632821',' 乌兰县'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632822',' 都兰县'
union all select 'CN','63', '青海省','6328', '海西蒙古族藏族自治州','632823',' 天峻县'
union all select 'CN','64', '宁夏回族自治区','6400', '','',' '
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','',' '
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640104',' 兴庆区'
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640105',' 西夏区'
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640106',' 金凤区'
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640121',' 永宁县'
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640122',' 贺兰县'
union all select 'CN','64', '宁夏回族自治区','6401', '银川市','640181',' 灵武市'
union all select 'CN','64', '宁夏回族自治区','6402', '石嘴山市','',' '
union all select 'CN','64', '宁夏回族自治区','6402', '石嘴山市','640202',' 大武口区'
union all select 'CN','64', '宁夏回族自治区','6402', '石嘴山市','640205',' 惠农区'
union all select 'CN','64', '宁夏回族自治区','6402', '石嘴山市','640221',' 平罗县'
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','',' '
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','640302',' 利通区'
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','640303',' 红寺堡区'
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','640323',' 盐池县'
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','640324',' 同心县'
union all select 'CN','64', '宁夏回族自治区','6403', '吴忠市','640381',' 青铜峡市'
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','',' '
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','640402',' 原州区'
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','640422',' 西吉县'
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','640423',' 隆德县'
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','640424',' 泾源县'
union all select 'CN','64', '宁夏回族自治区','6404', '固原市','640425',' 彭阳县'
union all select 'CN','64', '宁夏回族自治区','6405', '中卫市','',' '
union all select 'CN','64', '宁夏回族自治区','6405', '中卫市','640502',' 沙坡头区'
union all select 'CN','64', '宁夏回族自治区','6405', '中卫市','640521',' 中宁县'
union all select 'CN','64', '宁夏回族自治区','6405', '中卫市','640522',' 海原县'
union all select 'CN','65', '新疆维吾尔自治区','6500', '','',' '
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','',' '
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650102',' 天山区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650103',' 沙依巴克区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650104',' 新市区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650105',' 水磨沟区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650106',' 头屯河区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650107',' 达坂城区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650109',' 米东区'
union all select 'CN','65', '新疆维吾尔自治区','6501', '乌鲁木齐市','650121',' 乌鲁木齐县'
union all select 'CN','65', '新疆维吾尔自治区','6502', '克拉玛依市','',' '
union all select 'CN','65', '新疆维吾尔自治区','6502', '克拉玛依市','650202',' 独山子区'
union all select 'CN','65', '新疆维吾尔自治区','6502', '克拉玛依市','650203',' 克拉玛依区'
union all select 'CN','65', '新疆维吾尔自治区','6502', '克拉玛依市','650204',' 白碱滩区'
union all select 'CN','65', '新疆维吾尔自治区','6502', '克拉玛依市','650205',' 乌尔禾区'
union all select 'CN','65', '新疆维吾尔自治区','6504', '吐鲁番市','',' '
union all select 'CN','65', '新疆维吾尔自治区','6504', '吐鲁番市','650402',' 高昌区'
union all select 'CN','65', '新疆维吾尔自治区','6504', '吐鲁番市','650421',' 鄯善县'
union all select 'CN','65', '新疆维吾尔自治区','6504', '吐鲁番市','650422',' 托克逊县'
union all select 'CN','65', '新疆维吾尔自治区','6505', '哈密市','',' '
union all select 'CN','65', '新疆维吾尔自治区','6505', '哈密市','650502',' 伊州区'
union all select 'CN','65', '新疆维吾尔自治区','6505', '哈密市','650521',' 巴里坤哈萨克自治县'
union all select 'CN','65', '新疆维吾尔自治区','6505', '哈密市','650522',' 伊吾县'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','',' '
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652301',' 昌吉市'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652302',' 阜康市'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652323',' 呼图壁县'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652324',' 玛纳斯县'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652325',' 奇台县'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652327',' 吉木萨尔县'
union all select 'CN','65', '新疆维吾尔自治区','6523', '昌吉回族自治州','652328',' 木垒哈萨克自治县'
union all select 'CN','65', '新疆维吾尔自治区','6527', '博尔塔拉蒙古自治州','',' '
union all select 'CN','65', '新疆维吾尔自治区','6527', '博尔塔拉蒙古自治州','652701',' 博乐市'
union all select 'CN','65', '新疆维吾尔自治区','6527', '博尔塔拉蒙古自治州','652702',' 阿拉山口市'
union all select 'CN','65', '新疆维吾尔自治区','6527', '博尔塔拉蒙古自治州','652722',' 精河县'
union all select 'CN','65', '新疆维吾尔自治区','6527', '博尔塔拉蒙古自治州','652723',' 温泉县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','',' '
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652801',' 库尔勒市'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652822',' 轮台县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652823',' 尉犁县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652824',' 若羌县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652825',' 且末县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652826',' 焉耆回族自治县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652827',' 和静县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652828',' 和硕县'
union all select 'CN','65', '新疆维吾尔自治区','6528', '巴音郭楞蒙古自治州','652829',' 博湖县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','',' '
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652901',' 阿克苏市'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652922',' 温宿县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652923',' 库车县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652924',' 沙雅县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652925',' 新和县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652926',' 拜城县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652927',' 乌什县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652928',' 阿瓦提县'
union all select 'CN','65', '新疆维吾尔自治区','6529', '阿克苏地区','652929',' 柯坪县'
union all select 'CN','65', '新疆维吾尔自治区','6530', '克孜勒苏柯尔克孜自治州','',' '
union all select 'CN','65', '新疆维吾尔自治区','6530', '克孜勒苏柯尔克孜自治州','653001',' 阿图什市'
union all select 'CN','65', '新疆维吾尔自治区','6530', '克孜勒苏柯尔克孜自治州','653022',' 阿克陶县'
union all select 'CN','65', '新疆维吾尔自治区','6530', '克孜勒苏柯尔克孜自治州','653023',' 阿合奇县'
union all select 'CN','65', '新疆维吾尔自治区','6530', '克孜勒苏柯尔克孜自治州','653024',' 乌恰县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','',' '
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653101',' 喀什市'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653121',' 疏附县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653122',' 疏勒县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653123',' 英吉沙县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653124',' 泽普县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653125',' 莎车县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653126',' 叶城县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653127',' 麦盖提县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653128',' 岳普湖县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653129',' 伽师县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653130',' 巴楚县'
union all select 'CN','65', '新疆维吾尔自治区','6531', '喀什地区','653131',' 塔什库尔干塔吉克自治县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','',' '
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653201',' 和田市'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653221',' 和田县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653222',' 墨玉县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653223',' 皮山县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653224',' 洛浦县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653225',' 策勒县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653226',' 于田县'
union all select 'CN','65', '新疆维吾尔自治区','6532', '和田地区','653227',' 民丰县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','',' '
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654002',' 伊宁市'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654003',' 奎屯市'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654004',' 霍尔果斯市'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654021',' 伊宁县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654022',' 察布查尔锡伯自治县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654023',' 霍城县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654024',' 巩留县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654025',' 新源县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654026',' 昭苏县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654027',' 特克斯县'
union all select 'CN','65', '新疆维吾尔自治区','6540', '伊犁哈萨克自治州','654028',' 尼勒克县'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','',' '
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654201',' 塔城市'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654202',' 乌苏市'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654221',' 额敏县'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654223',' 沙湾县'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654224',' 托里县'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654225',' 裕民县'
union all select 'CN','65', '新疆维吾尔自治区','6542', '塔城地区','654226',' 和布克赛尔蒙古自治县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','',' '
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654301',' 阿勒泰市'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654321',' 布尔津县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654322',' 富蕴县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654323',' 福海县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654324',' 哈巴河县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654325',' 青河县'
union all select 'CN','65', '新疆维吾尔自治区','6543', '阿勒泰地区','654326',' 吉木乃县'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659001',' 石河子市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659002',' 阿拉尔市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659003',' 图木舒克市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659004',' 五家渠市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659005',' 北屯市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659006',' 铁门关市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659007',' 双河市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659008',' 可克达拉市'
union all select 'CN','65', '新疆维吾尔自治区','6590', '阿勒泰地区','659009',' 昆玉市'
union all select 'CN','71', '台湾省','7100', '','',' '
union all select 'CN','81', '香港特别行政区','8100', '','',' '
union all select 'CN','82', '澳门特别行政区','8200', '','',' '

select top 10 mate_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt from tb_busimate


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5) select 2,'韶关市泽森信息咨询有限公司','小规模纳税人','准入','正常','2024-12-04 14:00:00'
union all  
select 3,'菠萝维价（东莞）医药科技有限公司','小规模纳税人','准入','正常','2024-12-04 14:00:01' 
declare @cnt1 int,@cnt2 int 
update a set tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 2 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,  confirm_dt=f5,modify_by=19273,modify_dt=getdate() 
from tb_busimate a,@tab b where a.mate_type_id=10 and a.mate_name=b.f1 
select @cnt1=@@ROWCOUNT 
insert into tb_busimate (comp_id,mate_type_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt,creat_by,creat_dt)  
select comp_id=1,mate_type_id=10,mate_name=f1,  tax_type_id=case f2 when '小规模纳税人' then 1 when '一般纳税人' then 2 end,  status_id=case f3 when '准入' then 2 when '终止' then 2 end,  status_id1=case f4 when '正常' then 1 when '暂停' then 2 when '终止' then 3 end,  confirm_dt=f5,creat_by=19273,creat_dt=getdate() 
from @tab a
where not exists (select 1 from tb_busimate b where mate_type_id=10 and a.f1=b.mate_name) 
select @cnt2=@@ROWCOUNT  
select @cnt1,@cnt2
