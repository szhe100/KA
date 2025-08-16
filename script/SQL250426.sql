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

�����:ZSD_PR02
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


if exists (select 1 from SAP_ZSD_Z001 where PARTNER='100022') update SAP_ZSD_Z001 set NAME_ORG1='��ݸ�к���ҩƷ���޹�˾',STREET='��ݸ�ж��ǽֵ��洨�촨·12�ų����Ա�302',TAXNUMXL='',REGION='44',BEZEI='�㶫ʡ',CITY1='��ݸ��',AUFSD='',LIFSD='',FAKSD='',ZCOM='' where PARTNER='100022' else 
insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM) values ( '100022','��ݸ�к���ҩƷ���޹�˾','��ݸ�ж��ǽֵ��洨�촨·12�ų����Ա�302','','44','�㶫ʡ','��ݸ��','','','','' )

insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM)
values ( '100022','��ݸ�к���ҩƷ���޹�˾','��ݸ�ж��ǽֵ��洨�촨·12�ų����Ա�302','','44','�㶫ʡ','��ݸ��','','','','' )


insert into SAP_ZSD_Z001 (PARTNER,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM)
values ( '100022','','44','�㶫ʡ','��ݸ��','','','','' )

select * from SAP_ZSD_PR02  SAP_ZSD_Z001
truncate table SAP_ZSD_Z001

truncate table SAP_ZSD_PR02

select * from SAP_ZSD_PR02

select * from SAP_ZSD_PR03

if exists (select 1 from SAP_ZSD_Z005 where PARTNER='0001000029') update SAP_ZSD_Z005 set NAME_FIRST='δ֪������',BPEXT='000000',REGION='44',BEZEI='�㶫ʡ',CITY1='������',XBLCK='' where PARTNER='0001000029' else insert into SAP_ZSD_Z005 (PARTNER,NAME_FIRST,BPEXT,REGION,BEZEI,CITY1,XBLCK) values ( '0001000029','δ֪������','000000','44','�㶫ʡ','������','' )


if exists (select 1 from SAP_ZSD_Z001 where PARTNER='100019') update SAP_ZSD_Z001 set NAME_ORG1='������������ҽҩ�Ƽ����޹�˾',STREET='�������Ŷ�·������7��1¥101�ҡ�102�ҡ�103�ҡ�105�ҡ�106�ң���¥202�ҡ�203�ң���¥303�ң���¥4',TAXNUMXL='9841161159515295',REGION='44',BEZEI='�㶫ʡ',CITY1='������',AUFSD='',LIFSD='',FAKSD='',ZCOM='' where PARTNER='100019' else insert into SAP_ZSD_Z001 (PARTNER,NAME_ORG1,STREET,TAXNUMXL,REGION,BEZEI,CITY1,AUFSD,LIFSD,FAKSD,ZCOM) values ( '100019','������������ҽҩ�Ƽ����޹�˾','�������Ŷ�·������7��1¥101�ҡ�102�ҡ�103�ҡ�105�ҡ�106�ң���¥202�ҡ�203�ң���¥303�ң���¥4','9841161159515295','44','�㶫ʡ','������','','','','' )

if exists (select 1 from SAP_ZSD_PR02 where KNUMH='0000007392') 
update SAP_ZSD_PR02 set KOTABNR='603',KSCHL='PR02',KNUMH='0000007392',ZCOUNTRY='CN',ZREGIO='44',ZCITYNUM='',MATNR='10000020',KBETR='1.00',KONWA='CNY',KPEIN='1',KMEIN='��',DATBI='Fri Dec 31 00:00:00 GMT+08:00 9999',DATAB='Sun Apr 07 00:00:00 GMT+08:00 2024',LOEVM_KO='' where KNUMH='0000007392' 
else 
insert into SAP_ZSD_PR02 (KOTABNR,KSCHL,KNUMH,ZCOUNTRY,ZREGIO,ZCITYNUM,MATNR,KBETR,KONWA,KPEIN,KMEIN,DATBI,DATAB,LOEVM_KO) 
values ( '603','PR02','0000007392','CN','44','','10000020','1.00','CNY','1','��','Fri Dec 31 00:00:00 GMT+08:00 9999','Sun Apr 07 00:00:00 GMT+08:00 2024','' )

insert into SAP_ZSD_PR02 (KOTABNR,KSCHL,KNUMH,ZCOUNTRY,ZREGIO,ZCITYNUM,MATNR,KBETR,KONWA,KPEIN,KMEIN,DATBI,DATAB,LOEVM_KO) 
values ( '603','PR02','0000007392','CN','44','','10000020','1.00','CNY','1','��','','','' )


if exists (select 1 from SAP_ZSD_BUS where ZID='0000001079') update SAP_ZSD_BUS set VTWEG='10',KDGRP='10',ZCOUNTRY='CN',LANDX50='�й�',ZREGIO='44',BEZEI='�㶫ʡ',ZCITYNUM='4401',CITYNAME='������',ZCNTYNUM='440103',CNTYNAME='������',MATNR='10000018',ARKTX='������ƥ˹͡����.10mg/����6��/�С�400��/��.����һƷ����ҩ���޹�˾',ZGG='0.1g',ZSCQY='����һƷ����ҩ���޹�˾',ZCPXSX='C��',PARTNER='20500480',BU_SORT1='�Ƶ���',BZIRK='100001',BZTXT='RXӪ������',VKBUR='1000',VKBUR_TXT='�㶫������ҵ��',VKGRP='101',VKGRP_TXT='��������һ��',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',DATE_FROM='2023-10-01 00:00:00',DATE_TO='2023-12-03 00:00:00',ZSFSX='',ZAEDAT='2025-04-26 21:17:01',ZAEDAT1='2024-11-14 00:00:00',TABLE_NAME='ZSDT012' where ZID='0000001079' else insert into SAP_ZSD_BUS (ZID,VTWEG,KDGRP,ZCOUNTRY,LANDX50,ZREGIO,BEZEI,ZCITYNUM,CITYNAME,ZCNTYNUM,CNTYNAME,MATNR,ARKTX,ZGG,ZSCQY,ZCPXSX,PARTNER,BU_SORT1,BZIRK,BZTXT,VKBUR,VKBUR_TXT,VKGRP,VKGRP_TXT,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,DATE_FROM,DATE_TO,ZSFSX,ZAEDAT,ZAEDAT1,TABLE_NAME) values ( '0000001079','10','10','CN','�й�','44','�㶫ʡ','4401','������','440103','������','10000018','������ƥ˹͡����.10mg/����6��/�С�400��/��.����һƷ����ҩ���޹�˾','0.1g','����һƷ����ҩ���޹�˾','C��','20500480','�Ƶ���','100001','RXӪ������','1000','�㶫������ҵ��','101','��������һ��','','','','','2023-10-01 00:00:00','2023-12-03 00:00:00','','2025-04-26 21:17:01','2024-11-14 00:00:00','ZSDT012' )

truncate table SAP_ZSD_BUS
select * from SAP_ZSD_BUS

if exists (select 1 from SAP_ZSD_MARA where MATNR='10000001') 
update SAP_ZSD_MARA set PMATN='',ZTYM='�������ù�����������ɢƬ',ZGG='75mg��6Ƭ/���3��/�С�720��/��',ZBCSX='',MAKTX='�������ù�����������ɢƬ.75mg��6Ƭ/���3��/�С�720��/��',MEINS='��',MSEHT='��',ZSSXKCYR='һƷ������ҽҩ���޹�˾',ZSCQY='����һƷ����ҩ���޹�˾',ZDBZ='',EXTWG='10010',EWBEZ='��ѧҩ�Ƽ���Ƭ��',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000001' else insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) values ( '10000001','','�������ù�����������ɢƬ','75mg��6Ƭ/���3��/�С�720��/��','','�������ù�����������ɢƬ.75mg��6Ƭ/���3��/�С�720��/��','��','��','һƷ������ҽҩ���޹�˾','����һƷ����ҩ���޹�˾','','10010','��ѧҩ�Ƽ���Ƭ��','','','','','' )
if exists (select 1 from SAP_ZSD_MARA where MATNR='10000016') 
update SAP_ZSD_MARA set PMATN='',ZTYM='���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�',ZGG='100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ',
ZBCSX='100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��1',
MAKTX='���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��1',MEINS='ƿ',MSEHT='ƿ',
ZSSXKCYR='һƷ������ҽҩ���޹�˾',ZSCQY='����һƷ����ҩ���޹�˾',ZDBZ='',EXTWG='10010',EWBEZ='��ѧҩ�Ƽ���Ƭ��',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000016' else 
insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000016','','���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�','100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ','100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��1','���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��1','ƿ','ƿ','һƷ������ҽҩ���޹�˾','����һƷ����ҩ���޹�˾','','10010','��ѧҩ�Ƽ���Ƭ��','','','','','' )


select len('���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�')
select len('100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��1')

truncate table SAP_ZSD_MARA
select * from SAP_ZSD_MARA

insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000016','','���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�','100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ','100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��1','���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��1','ƿ','ƿ','һƷ������ҽҩ���޹�˾','����һƷ����ҩ���޹�˾','','10010','��ѧҩ�Ƽ���Ƭ��','','','','','' )

insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX) 
values 
( '10000016','',
'���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�',
'100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ',
'100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ��10ƿ/����60��/��100Ƭ/ƿ100Ƭ/ƿ��1',
'���Ȳ�����Ƭ.100Ƭ/ƿ��10ƿ/����60��/�����Ȳ�����Ƭ.100Ƭ/ƿ��1')

--,'ƿ','ƿ','һƷ������ҽҩ���޹�˾','����һƷ����ҩ���޹�˾','','10010')

,'��ѧҩ�Ƽ���Ƭ��','','','','','' )


if exists (select 1 from SAP_ZSD_MARA where MATNR='10000076') update SAP_ZSD_MARA set PMATN='',ZTYM='',ZGG='',ZBCSX='',MAKTX='�ϰ����������ɽ����',MEINS='ǧ��',MSEHT='kg',ZSSXKCYR='',ZSCQY='',ZDBZ='',EXTWG='20013',EWBEZ='�м��Ʒ��ԭ��ҩ�м���',TWEWT='',ZJX='',ZJXMS='',MSTAE='',LVORM='' where MATNR='10000076' else 
insert into SAP_ZSD_MARA (MATNR,PMATN,ZTYM,ZGG,ZBCSX,MAKTX,MEINS,MSEHT,ZSSXKCYR,ZSCQY,ZDBZ,EXTWG,EWBEZ,TWEWT,ZJX,ZJXMS,MSTAE,LVORM) 
values 
( '10000076','','','','','�ϰ����������ɽ����','ǧ��','kg','','','','20013','�м��Ʒ��ԭ��ҩ�м���','','','','','' )


if exists (select 1 from SAP_ZSD_015 where GBELN='' and LPOSNR='000000') /* ������+�������к�ΪΨһֵ �������� GBELN LIPS-VBELN �������к� LPOSNR LIPS-POSNR */ 
update SAP_ZSD_015 set AUDAT='2023-11-07 00:00:00',WADAT_IST='2025-04-26 22:38:30',BEZEI='��׼����',VTWEG='',VTEXT='',KDGRP='19',ZVTWEG='',VKBUR='',ZBEZEI='',VKGRP='',ZVKGRP='',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',ZCPXSX='',ZSALESID='',ZSALESNAM='',ZSALESID_O='',ZSALESNAM_O='',ZCOUNTRY='',ZREGIO='',ZZREGION='',ZCITYNUM='',ZCITYNAME='',VKORG='8202',ZVKORG='',KUNNR='8205',NAME1='�㶫����ҩҵ���޹�˾',ASSIGNED_BP='',NAME_FIRST='',VBELN='198',MATNR='10000018',ARKTX='�����ڷ�Һ.10ml/֧��6֧/�С�100��/��',ZGG='10ml/֧��6֧/�С�100��/��',ZSCQY='һƷ����ҩ���޹�˾',CHARG='',VFDAT='2025-04-26 22:38:30',KWMENG='0.000',ZPR03='0.000',ZKHJE='0.00',ZKONV='0.000',KZWI5='0.00',ZREC='0.00',BSTKD='4100000202',ZTERMNAME='',ERNAM='',ZTERNAM='123456',USNAM='JT_ZHANGYQ',ZUSNAM='123456' where GBELN='' and LPOSNR='000000' 
else 
insert into SAP_ZSD_015 ( AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM ) values ( '2023-11-07 00:00:00','2025-04-26 22:38:30','��׼����','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','�㶫����ҩҵ���޹�˾','','','198','','','10000018','�����ڷ�Һ.10ml/֧��6֧/�С�100��/��','10ml/֧��6֧/�С�100��/��','һƷ����ҩ���޹�˾','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456','JT_ZHANGYQ','123456' )

insert into SAP_ZSD_015 ( AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM )
values 
( '2023-11-07 00:00:00','2025-04-26 22:38:30','��׼����','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','�㶫����ҩҵ���޹�˾','','','198','','','10000018','�����ڷ�Һ.10ml/֧��6֧/�С�100��/��','10ml/֧��6֧/�С�100��/��','һƷ����ҩ���޹�˾','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456','JT_ZHANGYQ','123456' )

insert into SAP_ZSD_015 (BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM)
values 
('��׼����','','','19','','','','','','','','','','','','','','','','','','','','8202','','8205','�㶫����ҩҵ���޹�˾','','','198','','','10000018','һƷ����ҩ���޹�˾','','2025-04-26 22:38:30','0.000','0.000','0.00','0.000','0.00','0.00','4100000202','','','123456')

truncate table SAP_ZSD_015
select * from SAP_ZSD_015

select * from SAP_ZSD_MARA

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
��������	ZJXMS
select distinct ZJXMS from SAP_ZSD_MARA order by ZJXMS
select distinct ZJXMS from SAP_ZSD_MARA where ZJXMS not in (select mc_title from tb_medcatlog)

select * from tb_medcatlog

update tb_medcatlog set mc_cd=cast(mc_id as varchar(2)) where mc_cd=''


insert into tb_medcatlog (mc_parent,mc_title,mc_cd) 
select distinct mc_parent=-1,ZJXMS,mc_cd='' from SAP_ZSD_MARA where ZJXMS not in (select mc_title from tb_medcatlog) and ZJXMS<>''


update tb_medcatlog set mc_title='���Ҽ�' where mc_id=2


select distinct MEINS,MSEHT from SAP_ZSD_MARA where MSEHT not in (select zdesc from tb_object where obj_type_id=0)

select * from tb_object where obj_type_id=0
insert into tb_object (comp_id,obj_type_id,zdesc) values (1,0,'kg')


���ϱ���	MATNR
���۲ο����ϱ���	PMATN
ͨ����	ZTYM
���	ZGG
��װ˵��	ZBCSX
��������	MAKTX
������λ	MEINS
������λ�ı�	MSEHT
������ɳ�����	ZSSXKCYR
������ҵ	ZSCQY
װ����	ZDBZ
��������	EXTWG
��������	EWBEZ
��׼�ĺ�	TWEWT
����	ZJX
��������	ZJXMS
����״̬	MSTAE
ɾ����ʶ	LVORM

truncate table tb_medicine

select * into tb_medicine_250427 from tb_medicine