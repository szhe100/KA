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


 if exists (select 1 from SAP_ZSD_BUS where ZID='0000055878')
                        update SAP_ZSD_BUS
                            set VTWEG='00',KDGRP='19',ZCOUNTRY='CN',LANDX50='�й�',ZREGIO='44',BEZEI='�㶫ʡ',ZCITYNUM='',CITYNAME='',ZCNTYNUM='',CNTYNAME='',MATNR='1000023900',ARKTX='����������������.12.5mg��60��/��.100��/��.��һ����.��һ ����',ZGG='�����������12.5mg,�ǿɶ�7mg,�����25mg,�������ȱ�����2mg��60��/��',ZSCQY='��һ������ҩ���Ϻ������޹�˾',ZCPXSX='�ܲ�Ӫ��',PARTNER='20100021',BU_SORT1='������',BZIRK='000001',BZTXT='�ܲ�Ӫ��',VKBUR='0001',VKBUR_TXT='�ܲ�Ӫ��',VKGRP='001',VKGRP_TXT='�ܲ�Ӫ��',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',DATE_FROM='2024-01-01 00:00:00',DATE_TO='2025-03-31 00:00:00',ZSFSX='',ZAEDAT='2024-07-02 00:00:00',ZAEDAT1='2025-02-27 00:00:00',TABLE_NAME='ZSDT012'
                            where ZID='0000055878'
                    else
                        insert into SAP_ZSD_BUS (ZID,VTWEG,KDGRP,ZCOUNTRY,LANDX50,ZREGIO,BEZEI,ZCITYNUM,CITYNAME,ZCNTYNUM,CNTYNAME,MATNR,ARKTX,ZGG,ZSCQY,ZCPXSX,PARTNER,BU_SORT1,BZIRK,BZTXT,VKBUR,VKBUR_TXT,VKGRP,VKGRP_TXT,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,DATE_FROM,DATE_TO,ZSFSX,ZAEDAT,ZAEDAT1,TABLE_NAME)
                        values (
                            '0000055878','00','19','CN','�й�','44','�㶫ʡ','','','','','1000023900','����������������.12.5mg��60��/��.100��/��.��һ����.��һ����','�����������12.5mg,�ǿɶ�7mg,�����25mg,�������ȱ�����2mg��60��/��','��һ������ҩ���Ϻ������޹�˾','�ܲ�Ӫ��','20100021','������','000001','�ܲ�Ӫ��','0001','�ܲ�Ӫ��','001','�ܲ�Ӫ��','','','','','2024-01-01 00:00:00','2025-03-31 00:00:00','','2024-07-02 00:00:00','2025-02-27 00:00:00','ZSDT012'
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
                            set AUDAT='2025-03-12 00:00:00',WADAT_IST='2025-03-13 00:00:00',BEZEI='��׼����',VTWEG='10',VTEXT='����',KDGRP='11',ZVTWEG='',VKBUR='',ZBEZEI='',VKGRP='',ZVKGRP='',ZPLOT='',ZPLOT_T='',ZAREA='',ZAREA_T='',ZCPXSX='',ZSALESID='',ZSALESNAM='',ZSALESID_O='20000565',ZSALESNAM_O='�',ZCOUNTRY='CN',ZREGIO='35',ZZREGION='����ʡ',ZCITYNUM='3509',ZCITYNAME='������',VKORG='8202',ZVKORG='',KUNNR='102657',NAME1='��������ҽҩ���޹�˾',ASSIGNED_BP='1001009',NAME_FIRST='л��',VBELN='17457',MATNR='1000016700',ARKTX='�����˾��Τ����',ZGG='75mg��10��',ZSCQY='����һƷ����ҩ���޹�˾',CHARG='209825002',VFDAT='2027-06-30 00:00:00',KWMENG='21600.000',ZPR03='18.930',ZKHJE='408888.00',ZKONV='18.930',KZWI5='408888.00',ZREC='0.00',BSTKD='KH.22.20241206.017',ZTERMNAME='��������',ERNAM='20100218',ZTERNAM='�ֽ���',USNAM='20100218',ZUSNAM='�ֽ���'
                            where GBELN='80020791' and LPOSNR='900001'
                    else
                        insert into SAP_ZSD_015 (
                            AUDAT,WADAT_IST,BEZEI,VTWEG,VTEXT,KDGRP,ZVTWEG,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,ZCOUNTRY,ZREGIO,ZZREGION,ZCITYNUM,ZCITYNAME,VKORG,ZVKORG,KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,BOLNR,MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,ZPR03,ZKHJE,ZKONV,KZWI5,ZREC,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM
                        )
                        values (
                            '2025-03-12 00:00:00','2025-03-13 00:00:00','��׼����','10','����','11','','','','','','','','','','','','','20000565','�','CN','35','����ʡ','3509','������','8202','','102657','��������ҽҩ���޹�˾','1001009','л��','17457','80020791','','1000016700','�����˾��Τ����','75mg��10��','����һƷ����ҩ���޹�˾','209825002','2027-06-30 00:00:00','21600.000','18.930','408888.00','18.930','408888.00','0.00','KH.22.20241206.017','��������','20100218',' �ֽ���','20100218','�ֽ���'
                        )

�ӿ��ֶ�	����	����
PARTNER	10	�ͻ���� m
NAME_ORG1	20	�ͻ�
STREET	60	ע���ַ
TAXNUMXL	60	������ô���
REGION	6	ʡ��
BEZEI	20	ʡ������
CITY1	40	����
AUFSD	1	���۶���
LIFSD	1	��������
FAKSD	1	��Ʊ����
ZCOM	60	��ע

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

 select top 10 * from tb_treedata where district ='�㶫ʡ ������'

select * from SAP_ZSD_Z001
select * from SAP_ZSD_Z005

insert into tb_busimate1 (mate_type_id,mate_code,mate_name,address,tax_code,district,region,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=b.rec_id,region=a.region,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

 PARTNER	10.00	ҵ�����˱��
NAME_FIRST	20.00	ҵ����������
BPEXT	20.00	���֤����
REGION	6.00	ʡ��
BEZEI	20.00	ʡ������
CITY1	40.00	����
XBLCK	1.00	���ж���
select * from tb_busimate where mate_type_id=2

������ҵ��˾
insert into tb_busimate (mate_type_id,mate_code,mate_name,address,tax_code,district,region,remark)
select mate_type_id=2,mate_code=partner,mate_name=NAME_ORG1,address=street,tax_code=TAXNUMXL,district=b.rec_id,region=a.region,remark=a.ZCOM
 from SAP_ZSD_Z001 a
 left join tb_treedata b on b.district=rtrim(a.BEZEI)+' '+rtrim(a.city1)

 select mate_code,mate_id=max(mate_id),count(1) from tb_busimate where mate_type_id=2 group by mate_code having count(1)>1

 delete from tb_busimate where mate_id in (5850,6217,6536,6607,7368)

update tb_busimate set qry_code=dbo.fn_getpy(mate_name) where isnull(qry_code,'')=''


select count(1) from SAP_ZSD_Z005
����ҵ������
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

select * from tb_treedata where parent=38 -- district='����ʡ ������'

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
�ӿ��ֶ�	����	����
KOTABNR	3	����
KSCHL	4	��������
KNUMH	10	������¼���
ZCOUNTRY	3	���Ҵ���
ZREGIO	3	ҵ��ʡ��
ZCITYNUM	4	ҵ�����
MATNR	40	����
KBETR	11	�������
KONWA	5	��������
KPEIN	5	���۵�λ
KMEIN	3	������λ
DATBI	8	��Ч����
DATAB	8	��Ч����
LOEVM_KO	1	ɾ����ʶ

KOTABNR	����
KSCHL	��������
KNUMH	������¼���
VKORG	������֯
VTWEG	����
KDGRP	������
ZREGIO	ҵ��ʡ��
KONDA	�ͻ��۸���
MATNR	����
KBETR	�������
KONWA	��������
KPEIN	���۵�λ
KMEIN	������λ
DATBI	��Ч����
DATAB	��Ч����
LOEVM_KO	ɾ����ʶ


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


2��KAȡֵ��
����������Ϊ10��19�����ݶԽӵ���ҵ�ɹ���ⵥ���棻
��10��19������ݶԽӵ������ɹ���ⵥ���档
����������Ϊ12��13��16��ͬʱ�Խӵ���������ҵ�ɹ����

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

2��KAȡֵ��
 ����������Ϊ10��19�����ݶԽӵ���ҵ�ɹ���ⵥ���棻
 ��10��19������ݶԽӵ������ɹ���ⵥ���档
 ����������Ϊ12��13��16��ͬʱ�Խӵ���������ҵ�ɹ���ⵥ����

�ι�������˵����������ҵ�ɹ���ⵥ���ݽӿ�Ҳ�������ˣ�ZSDFG_IF_001_U026 SAP-��KAϵͳ����������Ϣ  ����ӿڣ���������Ϊ12��13��16��ͬʱ�Խӵ���������ҵ�ɹ���ⵥ����

3�������������ĳ��ⵥ���Զ����µ���ҳ�棬����һ���ֶ����֡���ҵ����"����"

select a.*,busi_type=2 from vi_ZSD_015 a where KDGRP not in ('12','13','16')  and a.creat_dt>= '2025-05-05' and a.creat_dt< dateadd(day,1,'2025-05-05')

select top 10 * from tb_bill where bod_type_id=2 and cate_id=6


select *,broker=dbo.fn_staff_name(link_id),creater=dbo.fn_staff_name(creat_by) from tb_linkdata where type_id=1 and id=3

select * from tb_staff where sta_type_id=1
update tb_staff set sta_type_id=1 where sta_id=19277

�˴���

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100)) 
insert into @tab (line_no,f1,f2) 
select 2,'�����п��ҽ����Ϣ�������޹�˾','�˴���' 
select * from @tab
select top 5 info=line_no+'���ƹ���������Ʋ�����' from @tab a where f1='' or not exists (select 1 from tb_busimate b where mate_type_id=10 and b.mate_name=a.f1)

union all select top 5 '��'+line_no+'����ҵ��Ա�����򲻴���' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 

select * from @tab a where not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname=a.f2) 

--select top 5 info=line_no+'���ƹ���������Ʋ�����' from @tab where f1='' or not exists (select 1 from tb_busimate where mate_type_id=10 and mate_name=f1) 
--union all 
select * from @tab where not exists (select 1 from tb_staff b where sta_type_id=1 and zname=f2) 

select top 5 '��'+line_no+'����ҵ��Ա�����򲻴���' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 

select top 5 * from ( 
select top 5 info=line_no+'���ƹ���������Ʋ�����' from @tab where f1='' or not exists (select 1 from tb_busimate where mate_type_id=10 and mate_name=f1) union all select top 5 '��'+line_no+'����ҵ��Ա�����򲻴���' from @tab where f2='' or not exists (select 1 from tb_staff where sta_type_id=1 and zname=f2) 
) a

declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100)) 
insert into @tab (line_no,f1,f2) select 2,'�����п��ҽ����Ϣ�������޹�˾','�˴���' 
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

2676	���Ƴ�

select * into tb_sysframe_250430 from tb_sysframe 

truncate table tb_sysframe 

select * from tb_sysframe

select * from tb_linkdata

insert into tb_linkdata (type_id,delete_yn) values (1,1)

select *,d.mate_name,code=case type_id when 1 then b.zcode when 2 then c.mate_code end,name=case type_id when 1 then b.zname when 2 then c.mate_name end, dist1=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,1), dist2=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,2), delete_yn,status_id,confirm_dt,creater=dbo.fn_staff_name(creat_by) from tb_linkdata a left join (select sta_id,zname,zcode,district from tb_staff where sta_type_id=1) b on a.link_id=b.sta_id left join (select mate_id,mate_name,mate_code,district from tb_busimate where mate_type_id=4) c on a.link_id=c.mate_id inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) d on a.id=d.mate_id where type_id in (1,2)


insert into tb_sysframe (sf_parent,sf_title)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke)

insert into tb_sysframe (sf_parent,sf_title) values (-1,'ϵͳ����')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'ҩƷ����')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'ҵ�����')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'��ҵ����')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'��ҵ����')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'��������')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'��������')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'�����۹���')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'�����۽���')
insert into tb_sysframe (sf_parent,sf_title) values (-1,'�ۺ�����')

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'����Ա�� ',1)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'�����û�Ȩ�� ',8)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (1,'ҵ������ ',12)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'����ҩƷ',5)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'����ҩƷ�б��',277)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'����ҩƷ���˼�',278)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'����ѧ����׼����',279)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (2,'���÷�����׼����',280)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'��������',97)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'���ÿͻ��۸���',100)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'����ҵ��Ա',2)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'����ҵ������',115)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'������ҵ��˾',7)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'���ÿͻ�(ҽԺ)',3)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'�����ƹ������',281)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'����ҵ��ṹ',53)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'������ҵ����',52)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'���˿��Ʊ�',31)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (3,'����������',85)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�ɹ���ⵥ',10)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�ɹ��ۺϲ�ѯ',14)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�ɹ��ƹ��ͳ��',282)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ���۳��ⵥ',11)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�����ۺϲ�ѯ',15)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ����ѯ',13)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ��ʷ���',86)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�̵㵥-�Ƶ�',55)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'��ҵ�̵㵥-���',176)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (4,'Ʒ�������ѯ',22)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-�����',41)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-����-ҵ������',39)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-����-ҵ�����',40)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-����-���񸴺�',45)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-����-��������',58)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-ͣ��-ҵ������',38)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-ͣ��-ҵ�����',43)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-ͣ��-���񸴺�',51)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���ù���-ͣ��-��������',59)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-�����',67)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-����-ҵ������',72)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-����-ҵ�����',73)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-����-���񸴺�',74)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-����-��������',75)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-ͣ��-ҵ������',81)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-ͣ��-ҵ�����',82)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-ͣ��-���񸴺�',83)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҽԺ�йܷѹ���-ͣ��-��������',84)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-Ӧ�����ü���-�Ƶ�',117)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-Ӧ�����ü���-���',133)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-����',95)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-��������-ҵ������',96)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-��������-���񸴺�',98)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-��������-��������',99)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ɸ���-��ѯ',101)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ɸ���-�Ƶ�',102)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ɸ���-���',103)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ò����',283)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ò��-�Ƶ�',284)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (5,'ҵ��Ա���öҸ�-���ò��-���',285)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'�����ɹ���ⵥ',128)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'�����ɹ��ۺϲ�ѯ',126)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'�������۳��ⵥ',129)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (6,'���������ۺϲ�ѯ',127)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'�������۴�������',169)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'���۴�����������-��������',170)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'���۴�����������-���񸴺�',171)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'���۴�����������-�������',286)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'�������۴���������ϸ��',287)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧������-�Ƶ�',172)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧������-����',173)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧������',174)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-��������-��������',175)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-��������-���񸴺�',177)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-��������-�������',178)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-���ɸ���-��ѯ',187)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-���ɸ���-�Ƶ�',179)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧����������-���ɸ���-���',180)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧���տ-�Ƶ�',288)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����֧���տ-����',289)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'����������ܱ�',246)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (7,'�����ͻ����˱�',291)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'��������ҵ�ɹ����',301)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'��������ҵ�ɹ�����ۺϲ�ѯ',302)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�����ն����۳��ⵥ',303)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�����ն����۳����ۺϲ�ѯ',304)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�������۳��ⵥ',305)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'���������ۺϲ�ѯ',306)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�����ն��̵㵥-�Ƶ�',307)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�����ն��̵㵥-���',308)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'�����ն˿���ѯ',309)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (8,'������Աȷ�����',310)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'���ù�����������',311)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�����۹���Ӧ������-�Ƶ�',312)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�����۹���Ӧ������-���',313)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�������ú���',314)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-��������',315)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-���񸴺�',316)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-�������',317)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-��ѯ',318)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-�Ƶ�',319)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-���',320)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'���ö�����������',321)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�����۶���Ӧ������-�Ƶ�',322)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�����۶���Ӧ������-���',323)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�������ú���',324)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-��������',325)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-���񸴺�',326)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-��������-�������',327)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-��ѯ',328)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-�Ƶ�',329)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������������-���ɸ���-���',330)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�����۸�����ɲ�ѯ',331)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'����������ϸ��',332)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (9,'�������û��ܱ�',333)

insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'���û��ܱ�',247)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'����֧������״̬���ܱ���',234)
insert into tb_sysframe (sf_parent,sf_title,sf_invoke) values (10,'Rx������ϸ���ܱ���',123)

select top 10 * from tb_sysframe order by sf_id desc
update tb_sysframe set sf_invoke=247 where sf_id=122
update tb_sysframe set sf_invoke=234 where sf_id=123
update tb_sysframe set sf_invoke=123 where sf_id=124


Aϵͳ����
BҩƷ����
Cҵ�����
D��ҵ����
E��ҵ����
E��������
G��������
H�����۹���
I�����۽���
I�ۺ�����

Sϵ��
A����Ա��
B�����û�Ȩ��
Cҵ������



insert into tb_district (country,prov_code,prov_name,city_code,city_name,county_code,county_name)
 select 'CN','11', '������','1100', '������','',' '
union all select 'CN','11', '������','1101', '������','110101',' ������'
union all select 'CN','11', '������','1101', '������','110102',' ������'
union all select 'CN','11', '������','1101', '������','110105',' ������'
union all select 'CN','11', '������','1101', '������','110106',' ��̨��'
union all select 'CN','11', '������','1101', '������','110107',' ʯ��ɽ��'
union all select 'CN','11', '������','1101', '������','110108',' ������'
union all select 'CN','11', '������','1101', '������','110109',' ��ͷ����'
union all select 'CN','11', '������','1101', '������','110111',' ��ɽ��'
union all select 'CN','11', '������','1101', '������','110112',' ͨ����'
union all select 'CN','11', '������','1101', '������','110113',' ˳����'
union all select 'CN','11', '������','1101', '������','110114',' ��ƽ��'
union all select 'CN','11', '������','1101', '������','110115',' ������'
union all select 'CN','11', '������','1101', '������','110116',' ������'
union all select 'CN','11', '������','1101', '������','110117',' ƽ����'
union all select 'CN','11', '������','1101', '������','110118',' ������'
union all select 'CN','11', '������','1101', '������','110119',' ������'
union all select 'CN','12', '�����','1200', '�����','',' '
union all select 'CN','12', '�����','1201', '�����','120101',' ��ƽ��'
union all select 'CN','12', '�����','1201', '�����','120102',' �Ӷ���'
union all select 'CN','12', '�����','1201', '�����','120103',' ������'
union all select 'CN','12', '�����','1201', '�����','120104',' �Ͽ���'
union all select 'CN','12', '�����','1201', '�����','120105',' �ӱ���'
union all select 'CN','12', '�����','1201', '�����','120106',' ������'
union all select 'CN','12', '�����','1201', '�����','120110',' ������'
union all select 'CN','12', '�����','1201', '�����','120111',' ������'
union all select 'CN','12', '�����','1201', '�����','120112',' ������'
union all select 'CN','12', '�����','1201', '�����','120113',' ������'
union all select 'CN','12', '�����','1201', '�����','120114',' ������'
union all select 'CN','12', '�����','1201', '�����','120115',' ������'
union all select 'CN','12', '�����','1201', '�����','120116',' ��������'
union all select 'CN','12', '�����','1201', '�����','120117',' ������'
union all select 'CN','12', '�����','1201', '�����','120118',' ������'
union all select 'CN','12', '�����','1201', '�����','120119',' ������'
union all select 'CN','13', '�ӱ�ʡ','1300', '�ӱ�ʡ','',' '
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','',' '
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130102',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130104',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130105',' �»���'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130107',' �������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130108',' ԣ����'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130109',' ޻����'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130110',' ¹Ȫ��'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130111',' �����'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130121',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130123',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130125',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130126',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130127',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130128',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130129',' �޻���'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130130',' �޼���'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130131',' ƽɽ��'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130132',' Ԫ����'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130133',' ����'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130181',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130183',' ������'
union all select 'CN','13', '�ӱ�ʡ','1301', 'ʯ��ׯ��','130184',' ������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','',' '
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130202',' ·����'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130203',' ·����'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130204',' ��ұ��'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130205',' ��ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130207',' ������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130208',' ������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130209',' ��������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130224',' ������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130225',' ��ͤ��'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130227',' Ǩ����'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130229',' ������'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130281',' ����'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130283',' Ǩ����'
union all select 'CN','13', '�ӱ�ʡ','1302', '��ɽ��','130284',' ������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','',' '
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130302',' ������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130303',' ɽ������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130304',' ��������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130306',' ������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130321',' ��������������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130322',' ������'
union all select 'CN','13', '�ӱ�ʡ','1303', '�ػʵ���','130324',' ¬����'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','',' '
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130402',' ��ɽ��'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130403',' ��̨��'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130404',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130406',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130407',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130408',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130423',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130424',' �ɰ���'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130425',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130426',' ����'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130427',' ����'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130430',' ����'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130431',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130432',' ��ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130433',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130434',' κ��'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130435',' ������'
union all select 'CN','13', '�ӱ�ʡ','1304', '������','130481',' �䰲��'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','',' '
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130502',' �Ŷ���'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130503',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130521',' ��̨��'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130522',' �ٳ���'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130523',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130524',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130525',' ¡Ң��'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130526',' ����'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130527',' �Ϻ���'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130528',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130529',' ��¹��'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130530',' �º���'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130531',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130532',' ƽ����'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130533',' ����'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130534',' �����'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130535',' ������'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130581',' �Ϲ���'
union all select 'CN','13', '�ӱ�ʡ','1305', '��̨��','130582',' ɳ����'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','',' '
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130602',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130606',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130607',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130608',' ��Է��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130609',' ��ˮ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130623',' �ˮ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130624',' ��ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130626',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130627',' ����'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130628',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130629',' �ݳ���'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130630',' �Դ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130631',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130632',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130633',' ����'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130634',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130635',' ���'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130636',' ˳ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130637',' ��Ұ��'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130638',' ����'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130681',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130682',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130683',' ������'
union all select 'CN','13', '�ӱ�ʡ','1306', '������','130684',' �߱�����'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','',' '
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130702',' �Ŷ���'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130703',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130705',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130706',' �»�԰��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130708',' ��ȫ��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130709',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130722',' �ű���'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130723',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130724',' ��Դ��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130725',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130726',' ε��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130727',' ��ԭ��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130728',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130730',' ������'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130731',' ��¹��'
union all select 'CN','13', '�ӱ�ʡ','1307', '�żҿ���','130732',' �����'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','',' '
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130802',' ˫����'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130803',' ˫����'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130804',' ӥ��Ӫ�ӿ���'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130821',' �е���'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130822',' ��¡��'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130824',' ��ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130825',' ¡����'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130826',' ��������������'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130827',' �������������'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130828',' Χ�������ɹ���������'
union all select 'CN','13', '�ӱ�ʡ','1308', '�е���','130881',' ƽȪ��'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','',' '
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130902',' �»���'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130903',' �˺���'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130921',' ����'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130922',' ����'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130923',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130924',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130925',' ��ɽ��'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130926',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130927',' ��Ƥ��'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130928',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130929',' ����'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130930',' �ϴ����������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130981',' ��ͷ��'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130982',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130983',' ������'
union all select 'CN','13', '�ӱ�ʡ','1309', '������','130984',' �Ӽ���'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','',' '
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131002',' ������'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131003',' ������'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131022',' �̰���'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131023',' ������'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131024',' �����'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131025',' �����'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131026',' �İ���'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131028',' �󳧻���������'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131081',' ������'
union all select 'CN','13', '�ӱ�ʡ','1310', '�ȷ���','131082',' ������'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','',' '
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131102',' �ҳ���'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131103',' ������'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131121',' ��ǿ��'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131122',' ������'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131123',' ��ǿ��'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131124',' ������'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131125',' ��ƽ��'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131126',' �ʳ���'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131127',' ����'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131128',' ������'
union all select 'CN','13', '�ӱ�ʡ','1311', '��ˮ��','131182',' ������'
union all select 'CN','14', 'ɽ��ʡ','1400', '','',' '
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','',' '
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140105',' С����'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140106',' ӭ����'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140107',' �ӻ�����'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140108',' ���ƺ��'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140109',' �������'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140110',' ��Դ��'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140121',' ������'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140122',' ������'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140123',' ¦����'
union all select 'CN','14', 'ɽ��ʡ','1401', '̫ԭ��','140181',' �Ž���'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','',' '
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140212',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140213',' ƽ����'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140214',' �Ƹ���'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140215',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140221',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140222',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140223',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140224',' ������'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140225',' ��Դ��'
union all select 'CN','14', 'ɽ��ʡ','1402', '��ͬ��','140226',' ������'
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','',' '
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','140302',' ����'
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','140303',' ����'
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','140311',' ����'
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','140321',' ƽ����'
union all select 'CN','14', 'ɽ��ʡ','1403', '��Ȫ��','140322',' ����'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','',' '
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140403',' º����'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140404',' �ϵ���'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140405',' ������'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140406',' º����'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140423',' ��ԫ��'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140425',' ƽ˳��'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140426',' �����'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140427',' ������'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140428',' ������'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140429',' ������'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140430',' ����'
union all select 'CN','14', 'ɽ��ʡ','1404', '������','140431',' ��Դ��'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','',' '
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140502',' ����'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140521',' ��ˮ��'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140522',' ������'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140524',' �괨��'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140525',' ������'
union all select 'CN','14', 'ɽ��ʡ','1405', '������','140581',' ��ƽ��'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','',' '
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140602',' ˷����'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140603',' ƽ³��'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140621',' ɽ����'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140622',' Ӧ��'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140623',' ������'
union all select 'CN','14', 'ɽ��ʡ','1406', '˷����','140681',' ������'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','',' '
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140702',' �ܴ���'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140721',' ������'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140722',' ��Ȩ��'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140723',' ��˳��'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140724',' ������'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140725',' ������'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140726',' ̫����'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140727',' ����'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140728',' ƽң��'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140729',' ��ʯ��'
union all select 'CN','14', 'ɽ��ʡ','1407', '������','140781',' ������'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','',' '
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140802',' �κ���'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140821',' �����'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140822',' ������'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140823',' ��ϲ��'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140824',' �ɽ��'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140825',' �����'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140826',' ���'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140827',' ԫ����'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140828',' ����'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140829',' ƽ½��'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140830',' �ǳ���'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140881',' ������'
union all select 'CN','14', 'ɽ��ʡ','1408', '�˳���','140882',' �ӽ���'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','',' '
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140902',' �ø���'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140921',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140922',' ��̨��'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140923',' ����'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140924',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140925',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140926',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140927',' �����'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140928',' ��կ��'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140929',' ����'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140930',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140931',' ������'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140932',' ƫ����'
union all select 'CN','14', 'ɽ��ʡ','1409', '������','140981',' ԭƽ��'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','',' '
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141002',' Ң����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141021',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141022',' �����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141023',' �����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141024',' �鶴��'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141025',' ����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141026',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141027',' ��ɽ��'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141028',' ����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141029',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141030',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141031',' ����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141032',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141033',' ����'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141034',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141081',' ������'
union all select 'CN','14', 'ɽ��ʡ','1410', '�ٷ���','141082',' ������'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','',' '
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141102',' ��ʯ��'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141121',' ��ˮ��'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141122',' ������'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141123',' ����'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141124',' ����'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141125',' ������'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141126',' ʯ¥��'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141127',' ���'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141128',' ��ɽ��'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141129',' ������'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141130',' ������'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141181',' Т����'
union all select 'CN','14', 'ɽ��ʡ','1411', '������','141182',' ������'
union all select 'CN','15', '���ɹ�������','1500', '','',' '
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','',' '
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150102',' �³���'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150103',' ������'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150104',' ��Ȫ��'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150105',' ������'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150121',' ��Ĭ������'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150122',' �п�����'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150123',' ���ָ����'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150124',' ��ˮ����'
union all select 'CN','15', '���ɹ�������','1501', '���ͺ�����','150125',' �䴨��'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','',' '
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150202',' ������'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150203',' ��������'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150204',' ��ɽ��'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150205',' ʯ����'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150206',' ���ƶ�������'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150207',' ��ԭ��'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150221',' ��Ĭ������'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150222',' ������'
union all select 'CN','15', '���ɹ�������','1502', '��ͷ��','150223',' �����ï����������'
union all select 'CN','15', '���ɹ�������','1503', '�ں���','',' '
union all select 'CN','15', '���ɹ�������','1503', '�ں���','150302',' ��������'
union all select 'CN','15', '���ɹ�������','1503', '�ں���','150303',' ������'
union all select 'CN','15', '���ɹ�������','1503', '�ں���','150304',' �ڴ���'
union all select 'CN','15', '���ɹ�������','1504', '�����','',' '
union all select 'CN','15', '���ɹ�������','1504', '�����','150402',' ��ɽ��'
union all select 'CN','15', '���ɹ�������','1504', '�����','150403',' Ԫ��ɽ��'
union all select 'CN','15', '���ɹ�������','1504', '�����','150404',' ��ɽ��'
union all select 'CN','15', '���ɹ�������','1504', '�����','150421',' ��³�ƶ�����'
union all select 'CN','15', '���ɹ�������','1504', '�����','150422',' ��������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150423',' ��������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150424',' ������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150425',' ��ʲ������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150426',' ��ţ����'
union all select 'CN','15', '���ɹ�������','1504', '�����','150428',' ��������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150429',' ������'
union all select 'CN','15', '���ɹ�������','1504', '�����','150430',' ������'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','',' '
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150502',' �ƶ�����'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150521',' �ƶ�����������'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150522',' �ƶ����������'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150523',' ��³��'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150524',' ������'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150525',' ������'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150526',' ��³����'
union all select 'CN','15', '���ɹ�������','1505', 'ͨ����','150581',' ���ֹ�����'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','',' '
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150602',' ��ʤ��'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150603',' ����ʲ��'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150621',' ��������'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150622',' ׼�����'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150623',' ���п�ǰ��'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150624',' ���п���'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150625',' ������'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150626',' ������'
union all select 'CN','15', '���ɹ�������','1506', '������˹��','150627',' ���������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','',' '
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150702',' ��������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150703',' ����ŵ����'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150721',' ������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150722',' Ī�����ߴ��Ӷ���������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150723',' ���״�������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150724',' ���¿���������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150725',' �°Ͷ�����'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150726',' �°Ͷ�������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150727',' �°Ͷ�������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150781',' ��������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150782',' ����ʯ��'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150783',' ��������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150784',' ���������'
union all select 'CN','15', '���ɹ�������','1507', '���ױ�����','150785',' ������'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','',' '
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150802',' �ٺ���'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150821',' ��ԭ��'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150822',' �����'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150823',' ������ǰ��'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150824',' ����������'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150825',' �����غ���'
union all select 'CN','15', '���ɹ�������','1508', '�����׶���','150826',' ��������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','',' '
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150902',' ������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150921',' ׿����'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150922',' ������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150923',' �̶���'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150924',' �˺���'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150925',' ������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150926',' ���������ǰ��'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150927',' �������������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150928',' ������������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150929',' ��������'
union all select 'CN','15', '���ɹ�������','1509', '�����첼��','150981',' ������'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','',' '
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152201',' ����������'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152202',' ����ɽ��'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152221',' �ƶ�������ǰ��'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152222',' �ƶ�����������'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152223',' ��������'
union all select 'CN','15', '���ɹ�������','1522', '�˰���','152224',' ͻȪ��'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','',' '
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152501',' ����������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152502',' ���ֺ�����'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152522',' ���͸���'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152523',' ����������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152524',' ����������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152525',' ������������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152526',' ������������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152527',' ̫������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152528',' �����'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152529',' �������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152530',' ������'
union all select 'CN','15', '���ɹ�������','1525', '���ֹ�����','152531',' ������'
union all select 'CN','15', '���ɹ�������','1529', '��������','',' '
union all select 'CN','15', '���ɹ�������','1529', '��������','152921',' ����������'
union all select 'CN','15', '���ɹ�������','1529', '��������','152922',' ����������'
union all select 'CN','15', '���ɹ�������','1529', '��������','152923',' �������'
union all select 'CN','21', '����ʡ','2100', '','',' '
union all select 'CN','21', '����ʡ','2101', '������','',' '
union all select 'CN','21', '����ʡ','2101', '������','210102',' ��ƽ��'
union all select 'CN','21', '����ʡ','2101', '������','210103',' �����'
union all select 'CN','21', '����ʡ','2101', '������','210104',' ����'
union all select 'CN','21', '����ʡ','2101', '������','210105',' �ʹ���'
union all select 'CN','21', '����ʡ','2101', '������','210106',' ������'
union all select 'CN','21', '����ʡ','2101', '������','210111',' �ռ�����'
union all select 'CN','21', '����ʡ','2101', '������','210112',' ������'
union all select 'CN','21', '����ʡ','2101', '������','210113',' ������'
union all select 'CN','21', '����ʡ','2101', '������','210114',' �ں���'
union all select 'CN','21', '����ʡ','2101', '������','210115',' ������'
union all select 'CN','21', '����ʡ','2101', '������','210123',' ��ƽ��'
union all select 'CN','21', '����ʡ','2101', '������','210124',' ������'
union all select 'CN','21', '����ʡ','2101', '������','210181',' ������'
union all select 'CN','21', '����ʡ','2102', '������','',' '
union all select 'CN','21', '����ʡ','2102', '������','210202',' ��ɽ��'
union all select 'CN','21', '����ʡ','2102', '������','210203',' ������'
union all select 'CN','21', '����ʡ','2102', '������','210204',' ɳ�ӿ���'
union all select 'CN','21', '����ʡ','2102', '������','210211',' �ʾ�����'
union all select 'CN','21', '����ʡ','2102', '������','210212',' ��˳����'
union all select 'CN','21', '����ʡ','2102', '������','210213',' ������'
union all select 'CN','21', '����ʡ','2102', '������','210214',' ��������'
union all select 'CN','21', '����ʡ','2102', '������','210224',' ������'
union all select 'CN','21', '����ʡ','2102', '������','210281',' �߷�����'
union all select 'CN','21', '����ʡ','2102', '������','210283',' ׯ����'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','',' '
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210302',' ������'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210303',' ������'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210304',' ��ɽ��'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210311',' ǧɽ��'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210321',' ̨����'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210323',' �������������'
union all select 'CN','21', '����ʡ','2103', '��ɽ��','210381',' ������'
union all select 'CN','21', '����ʡ','2104', '��˳��','',' '
union all select 'CN','21', '����ʡ','2104', '��˳��','210402',' �¸���'
union all select 'CN','21', '����ʡ','2104', '��˳��','210403',' ������'
union all select 'CN','21', '����ʡ','2104', '��˳��','210404',' ������'
union all select 'CN','21', '����ʡ','2104', '��˳��','210411',' ˳����'
union all select 'CN','21', '����ʡ','2104', '��˳��','210421',' ��˳��'
union all select 'CN','21', '����ʡ','2104', '��˳��','210422',' �±�����������'
union all select 'CN','21', '����ʡ','2104', '��˳��','210423',' ��ԭ����������'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','',' '
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210502',' ƽɽ��'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210503',' Ϫ����'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210504',' ��ɽ��'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210505',' �Ϸ���'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210521',' ��Ϫ����������'
union all select 'CN','21', '����ʡ','2105', '��Ϫ��','210522',' ��������������'
union all select 'CN','21', '����ʡ','2106', '������','',' '
union all select 'CN','21', '����ʡ','2106', '������','210602',' Ԫ����'
union all select 'CN','21', '����ʡ','2106', '������','210603',' ������'
union all select 'CN','21', '����ʡ','2106', '������','210604',' ����'
union all select 'CN','21', '����ʡ','2106', '������','210624',' �������������'
union all select 'CN','21', '����ʡ','2106', '������','210681',' ������'
union all select 'CN','21', '����ʡ','2106', '������','210682',' �����'
union all select 'CN','21', '����ʡ','2107', '������','',' '
union all select 'CN','21', '����ʡ','2107', '������','210702',' ������'
union all select 'CN','21', '����ʡ','2107', '������','210703',' �����'
union all select 'CN','21', '����ʡ','2107', '������','210711',' ̫����'
union all select 'CN','21', '����ʡ','2107', '������','210726',' ��ɽ��'
union all select 'CN','21', '����ʡ','2107', '������','210727',' ����'
union all select 'CN','21', '����ʡ','2107', '������','210781',' �躣��'
union all select 'CN','21', '����ʡ','2107', '������','210782',' ������'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','',' '
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210802',' վǰ��'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210803',' ������'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210804',' ����Ȧ��'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210811',' �ϱ���'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210881',' ������'
union all select 'CN','21', '����ʡ','2108', 'Ӫ����','210882',' ��ʯ����'
union all select 'CN','21', '����ʡ','2109', '������','',' '
union all select 'CN','21', '����ʡ','2109', '������','210902',' ������'
union all select 'CN','21', '����ʡ','2109', '������','210903',' ������'
union all select 'CN','21', '����ʡ','2109', '������','210904',' ̫ƽ��'
union all select 'CN','21', '����ʡ','2109', '������','210905',' �������'
union all select 'CN','21', '����ʡ','2109', '������','210911',' ϸ����'
union all select 'CN','21', '����ʡ','2109', '������','210921',' �����ɹ���������'
union all select 'CN','21', '����ʡ','2109', '������','210922',' ������'
union all select 'CN','21', '����ʡ','2110', '������','',' '
union all select 'CN','21', '����ʡ','2110', '������','211002',' ������'
union all select 'CN','21', '����ʡ','2110', '������','211003',' ��ʥ��'
union all select 'CN','21', '����ʡ','2110', '������','211004',' ��ΰ��'
union all select 'CN','21', '����ʡ','2110', '������','211005',' ��������'
union all select 'CN','21', '����ʡ','2110', '������','211011',' ̫�Ӻ���'
union all select 'CN','21', '����ʡ','2110', '������','211021',' ������'
union all select 'CN','21', '����ʡ','2110', '������','211081',' ������'
union all select 'CN','21', '����ʡ','2111', '�̽���','',' '
union all select 'CN','21', '����ʡ','2111', '�̽���','211102',' ˫̨����'
union all select 'CN','21', '����ʡ','2111', '�̽���','211103',' ��¡̨��'
union all select 'CN','21', '����ʡ','2111', '�̽���','211104',' ������'
union all select 'CN','21', '����ʡ','2111', '�̽���','211122',' ��ɽ��'
union all select 'CN','21', '����ʡ','2112', '������','',' '
union all select 'CN','21', '����ʡ','2112', '������','211202',' ������'
union all select 'CN','21', '����ʡ','2112', '������','211204',' �����'
union all select 'CN','21', '����ʡ','2112', '������','211221',' ������'
union all select 'CN','21', '����ʡ','2112', '������','211223',' ������'
union all select 'CN','21', '����ʡ','2112', '������','211224',' ��ͼ��'
union all select 'CN','21', '����ʡ','2112', '������','211281',' ����ɽ��'
union all select 'CN','21', '����ʡ','2112', '������','211282',' ��ԭ��'
union all select 'CN','21', '����ʡ','2113', '������','',' '
union all select 'CN','21', '����ʡ','2113', '������','211302',' ˫����'
union all select 'CN','21', '����ʡ','2113', '������','211303',' ������'
union all select 'CN','21', '����ʡ','2113', '������','211321',' ������'
union all select 'CN','21', '����ʡ','2113', '������','211322',' ��ƽ��'
union all select 'CN','21', '����ʡ','2113', '������','211324',' �����������ɹ���������'
union all select 'CN','21', '����ʡ','2113', '������','211381',' ��Ʊ��'
union all select 'CN','21', '����ʡ','2113', '������','211382',' ��Դ��'
union all select 'CN','21', '����ʡ','2114', '��«����','',' '
union all select 'CN','21', '����ʡ','2114', '��«����','211402',' ��ɽ��'
union all select 'CN','21', '����ʡ','2114', '��«����','211403',' ������'
union all select 'CN','21', '����ʡ','2114', '��«����','211404',' ��Ʊ��'
union all select 'CN','21', '����ʡ','2114', '��«����','211421',' ������'
union all select 'CN','21', '����ʡ','2114', '��«����','211422',' ������'
union all select 'CN','21', '����ʡ','2114', '��«����','211481',' �˳���'
union all select 'CN','22', '����ʡ','2200', '','',' '
union all select 'CN','22', '����ʡ','2201', '������','',' '
union all select 'CN','22', '����ʡ','2201', '������','220102',' �Ϲ���'
union all select 'CN','22', '����ʡ','2201', '������','220103',' �����'
union all select 'CN','22', '����ʡ','2201', '������','220104',' ������'
union all select 'CN','22', '����ʡ','2201', '������','220105',' ������'
union all select 'CN','22', '����ʡ','2201', '������','220106',' ��԰��'
union all select 'CN','22', '����ʡ','2201', '������','220112',' ˫����'
union all select 'CN','22', '����ʡ','2201', '������','220113',' ��̨��'
union all select 'CN','22', '����ʡ','2201', '������','220122',' ũ����'
union all select 'CN','22', '����ʡ','2201', '������','220182',' ������'
union all select 'CN','22', '����ʡ','2201', '������','220183',' �»���'
union all select 'CN','22', '����ʡ','2202', '������','',' '
union all select 'CN','22', '����ʡ','2202', '������','220202',' ������'
union all select 'CN','22', '����ʡ','2202', '������','220203',' ��̶��'
union all select 'CN','22', '����ʡ','2202', '������','220204',' ��Ӫ��'
union all select 'CN','22', '����ʡ','2202', '������','220211',' ������'
union all select 'CN','22', '����ʡ','2202', '������','220221',' ������'
union all select 'CN','22', '����ʡ','2202', '������','220281',' �Ժ���'
union all select 'CN','22', '����ʡ','2202', '������','220282',' �����'
union all select 'CN','22', '����ʡ','2202', '������','220283',' ������'
union all select 'CN','22', '����ʡ','2202', '������','220284',' ��ʯ��'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','',' '
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220302',' ������'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220303',' ������'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220322',' ������'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220323',' ��ͨ����������'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220381',' ��������'
union all select 'CN','22', '����ʡ','2203', '��ƽ��','220382',' ˫����'
union all select 'CN','22', '����ʡ','2204', '��Դ��','',' '
union all select 'CN','22', '����ʡ','2204', '��Դ��','220402',' ��ɽ��'
union all select 'CN','22', '����ʡ','2204', '��Դ��','220403',' ������'
union all select 'CN','22', '����ʡ','2204', '��Դ��','220421',' ������'
union all select 'CN','22', '����ʡ','2204', '��Դ��','220422',' ������'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','',' '
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220502',' ������'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220503',' ��������'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220521',' ͨ����'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220523',' ������'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220524',' ������'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220581',' ÷�ӿ���'
union all select 'CN','22', '����ʡ','2205', 'ͨ����','220582',' ������'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','',' '
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220602',' �뽭��'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220605',' ��Դ��'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220621',' ������'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220622',' ������'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220623',' ���׳�����������'
union all select 'CN','22', '����ʡ','2206', '��ɽ��','220681',' �ٽ���'
union all select 'CN','22', '����ʡ','2207', '��ԭ��','',' '
union all select 'CN','22', '����ʡ','2207', '��ԭ��','220702',' ������'
union all select 'CN','22', '����ʡ','2207', '��ԭ��','220721',' ǰ������˹�ɹ���������'
union all select 'CN','22', '����ʡ','2207', '��ԭ��','220722',' ������'
union all select 'CN','22', '����ʡ','2207', '��ԭ��','220723',' Ǭ����'
union all select 'CN','22', '����ʡ','2207', '��ԭ��','220781',' ������'
union all select 'CN','22', '����ʡ','2208', '�׳���','',' '
union all select 'CN','22', '����ʡ','2208', '�׳���','220802',' 䬱���'
union all select 'CN','22', '����ʡ','2208', '�׳���','220821',' ������'
union all select 'CN','22', '����ʡ','2208', '�׳���','220822',' ͨ����'
union all select 'CN','22', '����ʡ','2208', '�׳���','220881',' �����'
union all select 'CN','22', '����ʡ','2208', '�׳���','220882',' ����'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','',' '
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222401',' �Ӽ���'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222402',' ͼ����'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222403',' �ػ���'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222404',' ������'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222405',' ������'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222406',' ������'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222424',' ������'
union all select 'CN','22', '����ʡ','2224', '�ӱ߳�����������','222426',' ��ͼ��'
union all select 'CN','23', '������ʡ','2300', '','',' '
union all select 'CN','23', '������ʡ','2301', '��������','',' '
union all select 'CN','23', '������ʡ','2301', '��������','230102',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230103',' �ϸ���'
union all select 'CN','23', '������ʡ','2301', '��������','230104',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230108',' ƽ����'
union all select 'CN','23', '������ʡ','2301', '��������','230109',' �ɱ���'
union all select 'CN','23', '������ʡ','2301', '��������','230110',' �㷻��'
union all select 'CN','23', '������ʡ','2301', '��������','230111',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230112',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230113',' ˫����'
union all select 'CN','23', '������ʡ','2301', '��������','230123',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230124',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230125',' ����'
union all select 'CN','23', '������ʡ','2301', '��������','230126',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230127',' ľ����'
union all select 'CN','23', '������ʡ','2301', '��������','230128',' ͨ����'
union all select 'CN','23', '������ʡ','2301', '��������','230129',' ������'
union all select 'CN','23', '������ʡ','2301', '��������','230183',' ��־��'
union all select 'CN','23', '������ʡ','2301', '��������','230184',' �峣��'
union all select 'CN','23', '������ʡ','2302', '���������','',' '
union all select 'CN','23', '������ʡ','2302', '���������','230202',' ��ɳ��'
union all select 'CN','23', '������ʡ','2302', '���������','230203',' ������'
union all select 'CN','23', '������ʡ','2302', '���������','230204',' ������'
union all select 'CN','23', '������ʡ','2302', '���������','230205',' ����Ϫ��'
union all select 'CN','23', '������ʡ','2302', '���������','230206',' ����������'
union all select 'CN','23', '������ʡ','2302', '���������','230207',' ����ɽ��'
union all select 'CN','23', '������ʡ','2302', '���������','230208',' ÷��˹���Ӷ�����'
union all select 'CN','23', '������ʡ','2302', '���������','230221',' ������'
union all select 'CN','23', '������ʡ','2302', '���������','230223',' ������'
union all select 'CN','23', '������ʡ','2302', '���������','230224',' ̩����'
union all select 'CN','23', '������ʡ','2302', '���������','230225',' ������'
union all select 'CN','23', '������ʡ','2302', '���������','230227',' ��ԣ��'
union all select 'CN','23', '������ʡ','2302', '���������','230229',' ��ɽ��'
union all select 'CN','23', '������ʡ','2302', '���������','230230',' �˶���'
union all select 'CN','23', '������ʡ','2302', '���������','230231',' ��Ȫ��'
union all select 'CN','23', '������ʡ','2302', '���������','230281',' ګ����'
union all select 'CN','23', '������ʡ','2303', '������','',' '
union all select 'CN','23', '������ʡ','2303', '������','230302',' ������'
union all select 'CN','23', '������ʡ','2303', '������','230303',' ��ɽ��'
union all select 'CN','23', '������ʡ','2303', '������','230304',' �ε���'
union all select 'CN','23', '������ʡ','2303', '������','230305',' ������'
union all select 'CN','23', '������ʡ','2303', '������','230306',' ���Ӻ���'
union all select 'CN','23', '������ʡ','2303', '������','230307',' ��ɽ��'
union all select 'CN','23', '������ʡ','2303', '������','230321',' ������'
union all select 'CN','23', '������ʡ','2303', '������','230381',' ������'
union all select 'CN','23', '������ʡ','2303', '������','230382',' ��ɽ��'
union all select 'CN','23', '������ʡ','2304', '�׸���','',' '
union all select 'CN','23', '������ʡ','2304', '�׸���','230402',' ������'
union all select 'CN','23', '������ʡ','2304', '�׸���','230403',' ��ũ��'
union all select 'CN','23', '������ʡ','2304', '�׸���','230404',' ��ɽ��'
union all select 'CN','23', '������ʡ','2304', '�׸���','230405',' �˰���'
union all select 'CN','23', '������ʡ','2304', '�׸���','230406',' ��ɽ��'
union all select 'CN','23', '������ʡ','2304', '�׸���','230407',' ��ɽ��'
union all select 'CN','23', '������ʡ','2304', '�׸���','230421',' �ܱ���'
union all select 'CN','23', '������ʡ','2304', '�׸���','230422',' �����'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','',' '
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230502',' ��ɽ��'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230503',' �붫��'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230505',' �ķ�̨��'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230506',' ��ɽ��'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230521',' ������'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230522',' ������'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230523',' ������'
union all select 'CN','23', '������ʡ','2305', '˫Ѽɽ��','230524',' �ĺ���'
union all select 'CN','23', '������ʡ','2306', '������','',' '
union all select 'CN','23', '������ʡ','2306', '������','230602',' ����ͼ��'
union all select 'CN','23', '������ʡ','2306', '������','230603',' ������'
union all select 'CN','23', '������ʡ','2306', '������','230604',' �ú�·��'
union all select 'CN','23', '������ʡ','2306', '������','230605',' �����'
union all select 'CN','23', '������ʡ','2306', '������','230606',' ��ͬ��'
union all select 'CN','23', '������ʡ','2306', '������','230621',' ������'
union all select 'CN','23', '������ʡ','2306', '������','230622',' ��Դ��'
union all select 'CN','23', '������ʡ','2306', '������','230623',' �ֵ���'
union all select 'CN','23', '������ʡ','2306', '������','230624',' �Ŷ������ɹ���������'
union all select 'CN','23', '������ʡ','2307', '������','',' '
union all select 'CN','23', '������ʡ','2307', '������','230702',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230703',' �ϲ���'
union all select 'CN','23', '������ʡ','2307', '������','230704',' �Ѻ���'
union all select 'CN','23', '������ʡ','2307', '������','230705',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230706',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230707',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230708',' ��Ϫ��'
union all select 'CN','23', '������ʡ','2307', '������','230709',' ��ɽ����'
union all select 'CN','23', '������ʡ','2307', '������','230710',' ��Ӫ��'
union all select 'CN','23', '������ʡ','2307', '������','230711',' �������'
union all select 'CN','23', '������ʡ','2307', '������','230712',' ��������'
union all select 'CN','23', '������ʡ','2307', '������','230713',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230714',' ��������'
union all select 'CN','23', '������ʡ','2307', '������','230715',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230716',' �ϸ�����'
union all select 'CN','23', '������ʡ','2307', '������','230722',' ������'
union all select 'CN','23', '������ʡ','2307', '������','230781',' ������'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','',' '
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230803',' ������'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230804',' ǰ����'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230805',' ������'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230811',' ����'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230822',' ������'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230826',' �봨��'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230828',' ��ԭ��'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230881',' ͬ����'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230882',' ������'
union all select 'CN','23', '������ʡ','2308', '��ľ˹��','230883',' ��Զ��'
union all select 'CN','23', '������ʡ','2309', '��̨����','',' '
union all select 'CN','23', '������ʡ','2309', '��̨����','230902',' ������'
union all select 'CN','23', '������ʡ','2309', '��̨����','230903',' ��ɽ��'
union all select 'CN','23', '������ʡ','2309', '��̨����','230904',' ���Ӻ���'
union all select 'CN','23', '������ʡ','2309', '��̨����','230921',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','',' '
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231002',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231003',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231004',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231005',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231025',' �ֿ���'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231081',' ��Һ���'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231083',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231084',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231085',' ������'
union all select 'CN','23', '������ʡ','2310', 'ĵ������','231086',' ������'
union all select 'CN','23', '������ʡ','2311', '�ں���','',' '
union all select 'CN','23', '������ʡ','2311', '�ں���','231102',' ������'
union all select 'CN','23', '������ʡ','2311', '�ں���','231121',' �۽���'
union all select 'CN','23', '������ʡ','2311', '�ں���','231123',' ѷ����'
union all select 'CN','23', '������ʡ','2311', '�ں���','231124',' ������'
union all select 'CN','23', '������ʡ','2311', '�ں���','231181',' ������'
union all select 'CN','23', '������ʡ','2311', '�ں���','231182',' ���������'
union all select 'CN','23', '������ʡ','2312', '�绯��','',' '
union all select 'CN','23', '������ʡ','2312', '�绯��','231202',' ������'
union all select 'CN','23', '������ʡ','2312', '�绯��','231221',' ������'
union all select 'CN','23', '������ʡ','2312', '�绯��','231222',' ������'
union all select 'CN','23', '������ʡ','2312', '�绯��','231223',' �����'
union all select 'CN','23', '������ʡ','2312', '�绯��','231224',' �찲��'
union all select 'CN','23', '������ʡ','2312', '�绯��','231225',' ��ˮ��'
union all select 'CN','23', '������ʡ','2312', '�绯��','231226',' ������'
union all select 'CN','23', '������ʡ','2312', '�绯��','231281',' ������'
union all select 'CN','23', '������ʡ','2312', '�绯��','231282',' �ض���'
union all select 'CN','23', '������ʡ','2312', '�绯��','231283',' ������'
union all select 'CN','23', '������ʡ','2327', '���˰������','',' '
union all select 'CN','23', '������ʡ','2327', '���˰������','232701',' Į����'
union all select 'CN','23', '������ʡ','2327', '���˰������','232721',' ������'
union all select 'CN','23', '������ʡ','2327', '���˰������','232722',' ������'
union all select 'CN','31', '�Ϻ���','3100', '','',' '
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','',' '
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','',' '
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310101',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310104',' �����'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310105',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310106',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310107',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310109',' �����'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310110',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310112',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310113',' ��ɽ��'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310114',' �ζ���'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310115',' �ֶ�����'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310116',' ��ɽ��'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310117',' �ɽ���'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310118',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310120',' ������'
union all select 'CN','31', '�Ϻ���','3101', '�Ϻ���','310151',' ������'
union all select 'CN','32', '����ʡ','3200', '','',' '
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','',' '
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320102',' ������'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320104',' �ػ���'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320105',' ������'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320106',' ��¥��'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320111',' �ֿ���'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320113',' ��ϼ��'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320114',' �껨̨��'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320115',' ������'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320116',' ������'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320117',' ��ˮ��'
union all select 'CN','32', '����ʡ','3201', '�Ͼ���','320118',' �ߴ���'
union all select 'CN','32', '����ʡ','3202', '������','',' '
union all select 'CN','32', '����ʡ','3202', '������','320205',' ��ɽ��'
union all select 'CN','32', '����ʡ','3202', '������','320206',' ��ɽ��'
union all select 'CN','32', '����ʡ','3202', '������','320211',' ������'
union all select 'CN','32', '����ʡ','3202', '������','320213',' ��Ϫ��'
union all select 'CN','32', '����ʡ','3202', '������','320214',' ������'
union all select 'CN','32', '����ʡ','3202', '������','320281',' ������'
union all select 'CN','32', '����ʡ','3202', '������','320282',' ������'
union all select 'CN','32', '����ʡ','3203', '������','',' '
union all select 'CN','32', '����ʡ','3203', '������','320302',' ��¥��'
union all select 'CN','32', '����ʡ','3203', '������','320303',' ������'
union all select 'CN','32', '����ʡ','3203', '������','320305',' ������'
union all select 'CN','32', '����ʡ','3203', '������','320311',' Ȫɽ��'
union all select 'CN','32', '����ʡ','3203', '������','320312',' ͭɽ��'
union all select 'CN','32', '����ʡ','3203', '������','320321',' ����'
union all select 'CN','32', '����ʡ','3203', '������','320322',' ����'
union all select 'CN','32', '����ʡ','3203', '������','320324',' �����'
union all select 'CN','32', '����ʡ','3203', '������','320381',' ������'
union all select 'CN','32', '����ʡ','3203', '������','320382',' ������'
union all select 'CN','32', '����ʡ','3204', '������','',' '
union all select 'CN','32', '����ʡ','3204', '������','320402',' ������'
union all select 'CN','32', '����ʡ','3204', '������','320404',' ��¥��'
union all select 'CN','32', '����ʡ','3204', '������','320411',' �±���'
union all select 'CN','32', '����ʡ','3204', '������','320412',' �����'
union all select 'CN','32', '����ʡ','3204', '������','320413',' ��̳��'
union all select 'CN','32', '����ʡ','3204', '������','320481',' ������'
union all select 'CN','32', '����ʡ','3205', '������','',' '
union all select 'CN','32', '����ʡ','3205', '������','320505',' ������'
union all select 'CN','32', '����ʡ','3205', '������','320506',' ������'
union all select 'CN','32', '����ʡ','3205', '������','320507',' �����'
union all select 'CN','32', '����ʡ','3205', '������','320508',' ������'
union all select 'CN','32', '����ʡ','3205', '������','320509',' �⽭��'
union all select 'CN','32', '����ʡ','3205', '������','320581',' ������'
union all select 'CN','32', '����ʡ','3205', '������','320582',' �żҸ���'
union all select 'CN','32', '����ʡ','3205', '������','320583',' ��ɽ��'
union all select 'CN','32', '����ʡ','3205', '������','320585',' ̫����'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','',' '
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320602',' �紨��'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320611',' ��բ��'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320612',' ͨ����'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320623',' �綫��'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320681',' ������'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320682',' �����'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320684',' ������'
union all select 'CN','32', '����ʡ','3206', '��ͨ��','320685',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','',' '
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320703',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320706',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320707',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320722',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320723',' ������'
union all select 'CN','32', '����ʡ','3207', '���Ƹ���','320724',' ������'
union all select 'CN','32', '����ʡ','3208', '������','',' '
union all select 'CN','32', '����ʡ','3208', '������','320803',' ������'
union all select 'CN','32', '����ʡ','3208', '������','320804',' ������'
union all select 'CN','32', '����ʡ','3208', '������','320812',' �彭����'
union all select 'CN','32', '����ʡ','3208', '������','320813',' ������'
union all select 'CN','32', '����ʡ','3208', '������','320826',' ��ˮ��'
union all select 'CN','32', '����ʡ','3208', '������','320830',' ������'
union all select 'CN','32', '����ʡ','3208', '������','320831',' �����'
union all select 'CN','32', '����ʡ','3209', '�γ���','',' '
union all select 'CN','32', '����ʡ','3209', '�γ���','320902',' ͤ����'
union all select 'CN','32', '����ʡ','3209', '�γ���','320903',' �ζ���'
union all select 'CN','32', '����ʡ','3209', '�γ���','320904',' �����'
union all select 'CN','32', '����ʡ','3209', '�γ���','320921',' ��ˮ��'
union all select 'CN','32', '����ʡ','3209', '�γ���','320922',' ������'
union all select 'CN','32', '����ʡ','3209', '�γ���','320923',' ������'
union all select 'CN','32', '����ʡ','3209', '�γ���','320924',' ������'
union all select 'CN','32', '����ʡ','3209', '�γ���','320925',' ������'
union all select 'CN','32', '����ʡ','3209', '�γ���','320981',' ��̨��'
union all select 'CN','32', '����ʡ','3210', '������','',' '
union all select 'CN','32', '����ʡ','3210', '������','321002',' ������'
union all select 'CN','32', '����ʡ','3210', '������','321003',' ������'
union all select 'CN','32', '����ʡ','3210', '������','321012',' ������'
union all select 'CN','32', '����ʡ','3210', '������','321023',' ��Ӧ��'
union all select 'CN','32', '����ʡ','3210', '������','321081',' ������'
union all select 'CN','32', '����ʡ','3210', '������','321084',' ������'
union all select 'CN','32', '����ʡ','3211', '����','',' '
union all select 'CN','32', '����ʡ','3211', '����','321102',' ������'
union all select 'CN','32', '����ʡ','3211', '����','321111',' ������'
union all select 'CN','32', '����ʡ','3211', '����','321112',' ��ͽ��'
union all select 'CN','32', '����ʡ','3211', '����','321181',' ������'
union all select 'CN','32', '����ʡ','3211', '����','321182',' ������'
union all select 'CN','32', '����ʡ','3211', '����','321183',' ������'
union all select 'CN','32', '����ʡ','3212', '̩����','',' '
union all select 'CN','32', '����ʡ','3212', '̩����','321202',' ������'
union all select 'CN','32', '����ʡ','3212', '̩����','321203',' �߸���'
union all select 'CN','32', '����ʡ','3212', '̩����','321204',' ������'
union all select 'CN','32', '����ʡ','3212', '̩����','321281',' �˻���'
union all select 'CN','32', '����ʡ','3212', '̩����','321282',' ������'
union all select 'CN','32', '����ʡ','3212', '̩����','321283',' ̩����'
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','',' '
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','321302',' �޳���'
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','321311',' ��ԥ��'
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','321322',' ������'
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','321323',' ������'
union all select 'CN','32', '����ʡ','3213', '��Ǩ��','321324',' ������'
union all select 'CN','33', '�㽭ʡ','3300', '','',' '
union all select 'CN','33', '�㽭ʡ','3301', '������','',' '
union all select 'CN','33', '�㽭ʡ','3301', '������','330102',' �ϳ���'
union all select 'CN','33', '�㽭ʡ','3301', '������','330103',' �³���'
union all select 'CN','33', '�㽭ʡ','3301', '������','330104',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330105',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330106',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330108',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330109',' ��ɽ��'
union all select 'CN','33', '�㽭ʡ','3301', '������','330110',' �ຼ��'
union all select 'CN','33', '�㽭ʡ','3301', '������','330111',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330112',' �ٰ���'
union all select 'CN','33', '�㽭ʡ','3301', '������','330122',' ͩ®��'
union all select 'CN','33', '�㽭ʡ','3301', '������','330127',' ������'
union all select 'CN','33', '�㽭ʡ','3301', '������','330182',' ������'
union all select 'CN','33', '�㽭ʡ','3302', '������','',' '
union all select 'CN','33', '�㽭ʡ','3302', '������','330203',' ������'
union all select 'CN','33', '�㽭ʡ','3302', '������','330205',' ������'
union all select 'CN','33', '�㽭ʡ','3302', '������','330206',' ������'
union all select 'CN','33', '�㽭ʡ','3302', '������','330211',' ����'
union all select 'CN','33', '�㽭ʡ','3302', '������','330212',' ۴����'
union all select 'CN','33', '�㽭ʡ','3302', '������','330213',' ���'
union all select 'CN','33', '�㽭ʡ','3302', '������','330225',' ��ɽ��'
union all select 'CN','33', '�㽭ʡ','3302', '������','330226',' ������'
union all select 'CN','33', '�㽭ʡ','3302', '������','330281',' ��Ҧ��'
union all select 'CN','33', '�㽭ʡ','3302', '������','330282',' ��Ϫ��'
union all select 'CN','33', '�㽭ʡ','3303', '������','',' '
union all select 'CN','33', '�㽭ʡ','3303', '������','330302',' ¹����'
union all select 'CN','33', '�㽭ʡ','3303', '������','330303',' ������'
union all select 'CN','33', '�㽭ʡ','3303', '������','330304',' 걺���'
union all select 'CN','33', '�㽭ʡ','3303', '������','330305',' ��ͷ��'
union all select 'CN','33', '�㽭ʡ','3303', '������','330324',' ������'
union all select 'CN','33', '�㽭ʡ','3303', '������','330326',' ƽ����'
union all select 'CN','33', '�㽭ʡ','3303', '������','330327',' ������'
union all select 'CN','33', '�㽭ʡ','3303', '������','330328',' �ĳ���'
union all select 'CN','33', '�㽭ʡ','3303', '������','330329',' ̩˳��'
union all select 'CN','33', '�㽭ʡ','3303', '������','330381',' ����'
union all select 'CN','33', '�㽭ʡ','3303', '������','330382',' ������'
union all select 'CN','33', '�㽭ʡ','3304', '������','',' '
union all select 'CN','33', '�㽭ʡ','3304', '������','330402',' �Ϻ���'
union all select 'CN','33', '�㽭ʡ','3304', '������','330411',' ������'
union all select 'CN','33', '�㽭ʡ','3304', '������','330421',' ������'
union all select 'CN','33', '�㽭ʡ','3304', '������','330424',' ������'
union all select 'CN','33', '�㽭ʡ','3304', '������','330481',' ������'
union all select 'CN','33', '�㽭ʡ','3304', '������','330482',' ƽ����'
union all select 'CN','33', '�㽭ʡ','3304', '������','330483',' ͩ����'
union all select 'CN','33', '�㽭ʡ','3305', '������','',' '
union all select 'CN','33', '�㽭ʡ','3305', '������','330502',' ������'
union all select 'CN','33', '�㽭ʡ','3305', '������','330503',' �����'
union all select 'CN','33', '�㽭ʡ','3305', '������','330521',' ������'
union all select 'CN','33', '�㽭ʡ','3305', '������','330522',' ������'
union all select 'CN','33', '�㽭ʡ','3305', '������','330523',' ������'
union all select 'CN','33', '�㽭ʡ','3306', '������','',' '
union all select 'CN','33', '�㽭ʡ','3306', '������','330602',' Խ����'
union all select 'CN','33', '�㽭ʡ','3306', '������','330603',' ������'
union all select 'CN','33', '�㽭ʡ','3306', '������','330604',' ������'
union all select 'CN','33', '�㽭ʡ','3306', '������','330624',' �²���'
union all select 'CN','33', '�㽭ʡ','3306', '������','330681',' ������'
union all select 'CN','33', '�㽭ʡ','3306', '������','330683',' ������'
union all select 'CN','33', '�㽭ʡ','3307', '����','',' '
union all select 'CN','33', '�㽭ʡ','3307', '����','330702',' �ĳ���'
union all select 'CN','33', '�㽭ʡ','3307', '����','330703',' ����'
union all select 'CN','33', '�㽭ʡ','3307', '����','330723',' ������'
union all select 'CN','33', '�㽭ʡ','3307', '����','330726',' �ֽ���'
union all select 'CN','33', '�㽭ʡ','3307', '����','330727',' �Ͱ���'
union all select 'CN','33', '�㽭ʡ','3307', '����','330781',' ��Ϫ��'
union all select 'CN','33', '�㽭ʡ','3307', '����','330782',' ������'
union all select 'CN','33', '�㽭ʡ','3307', '����','330783',' ������'
union all select 'CN','33', '�㽭ʡ','3307', '����','330784',' ������'
union all select 'CN','33', '�㽭ʡ','3308', '������','',' '
union all select 'CN','33', '�㽭ʡ','3308', '������','330802',' �³���'
union all select 'CN','33', '�㽭ʡ','3308', '������','330803',' �齭��'
union all select 'CN','33', '�㽭ʡ','3308', '������','330822',' ��ɽ��'
union all select 'CN','33', '�㽭ʡ','3308', '������','330824',' ������'
union all select 'CN','33', '�㽭ʡ','3308', '������','330825',' ������'
union all select 'CN','33', '�㽭ʡ','3308', '������','330881',' ��ɽ��'
union all select 'CN','33', '�㽭ʡ','3309', '��ɽ��','',' '
union all select 'CN','33', '�㽭ʡ','3309', '��ɽ��','330902',' ������'
union all select 'CN','33', '�㽭ʡ','3309', '��ɽ��','330903',' ������'
union all select 'CN','33', '�㽭ʡ','3309', '��ɽ��','330921',' �ɽ��'
union all select 'CN','33', '�㽭ʡ','3309', '��ɽ��','330922',' ������'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','',' '
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331002',' ������'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331003',' ������'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331004',' ·����'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331022',' ������'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331023',' ��̨��'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331024',' �ɾ���'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331081',' ������'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331082',' �ٺ���'
union all select 'CN','33', '�㽭ʡ','3310', '̨����','331083',' ����'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','',' '
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331102',' ������'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331121',' ������'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331122',' ������'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331123',' �����'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331124',' ������'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331125',' �ƺ���'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331126',' ��Ԫ��'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331127',' �������������'
union all select 'CN','33', '�㽭ʡ','3311', '��ˮ��','331181',' ��Ȫ��'
union all select 'CN','34', '����ʡ','3400', '','',' '
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','',' '
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340102',' ������'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340103',' ®����'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340104',' ��ɽ��'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340111',' ������'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340121',' ������'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340122',' �ʶ���'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340123',' ������'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340124',' ®����'
union all select 'CN','34', '����ʡ','3401', '�Ϸ���','340181',' ������'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','',' '
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340202',' ������'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340203',' ߮����'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340207',' 𯽭��'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340208',' ��ɽ��'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340221',' �ߺ���'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340222',' ������'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340223',' ������'
union all select 'CN','34', '����ʡ','3402', '�ߺ���','340225',' ��Ϊ��'
union all select 'CN','34', '����ʡ','3403', '������','',' '
union all select 'CN','34', '����ʡ','3403', '������','340302',' ���Ӻ���'
union all select 'CN','34', '����ʡ','3403', '������','340303',' ��ɽ��'
union all select 'CN','34', '����ʡ','3403', '������','340304',' �����'
union all select 'CN','34', '����ʡ','3403', '������','340311',' ������'
union all select 'CN','34', '����ʡ','3403', '������','340321',' ��Զ��'
union all select 'CN','34', '����ʡ','3403', '������','340322',' �����'
union all select 'CN','34', '����ʡ','3403', '������','340323',' ������'
union all select 'CN','34', '����ʡ','3404', '������','',' '
union all select 'CN','34', '����ʡ','3404', '������','340402',' ��ͨ��'
union all select 'CN','34', '����ʡ','3404', '������','340403',' �������'
union all select 'CN','34', '����ʡ','3404', '������','340404',' л�Ҽ���'
union all select 'CN','34', '����ʡ','3404', '������','340405',' �˹�ɽ��'
union all select 'CN','34', '����ʡ','3404', '������','340406',' �˼���'
union all select 'CN','34', '����ʡ','3404', '������','340421',' ��̨��'
union all select 'CN','34', '����ʡ','3404', '������','340422',' ����'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','',' '
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340503',' ��ɽ��'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340504',' ��ɽ��'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340506',' ������'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340521',' ��Ϳ��'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340522',' ��ɽ��'
union all select 'CN','34', '����ʡ','3405', '��ɽ��','340523',' ����'
union all select 'CN','34', '����ʡ','3406', '������','',' '
union all select 'CN','34', '����ʡ','3406', '������','340602',' �ż���'
union all select 'CN','34', '����ʡ','3406', '������','340603',' ��ɽ��'
union all select 'CN','34', '����ʡ','3406', '������','340604',' ��ɽ��'
union all select 'CN','34', '����ʡ','3406', '������','340621',' �Ϫ��'
union all select 'CN','34', '����ʡ','3407', 'ͭ����','',' '
union all select 'CN','34', '����ʡ','3407', 'ͭ����','340705',' ͭ����'
union all select 'CN','34', '����ʡ','3407', 'ͭ����','340706',' �尲��'
union all select 'CN','34', '����ʡ','3407', 'ͭ����','340711',' ����'
union all select 'CN','34', '����ʡ','3407', 'ͭ����','340722',' ������'
union all select 'CN','34', '����ʡ','3408', '������','',' '
union all select 'CN','34', '����ʡ','3408', '������','340802',' ӭ����'
union all select 'CN','34', '����ʡ','3408', '������','340803',' �����'
union all select 'CN','34', '����ʡ','3408', '������','340811',' ������'
union all select 'CN','34', '����ʡ','3408', '������','340822',' ������'
union all select 'CN','34', '����ʡ','3408', '������','340825',' ̫����'
union all select 'CN','34', '����ʡ','3408', '������','340826',' ������'
union all select 'CN','34', '����ʡ','3408', '������','340827',' ������'
union all select 'CN','34', '����ʡ','3408', '������','340828',' ������'
union all select 'CN','34', '����ʡ','3408', '������','340881',' ͩ����'
union all select 'CN','34', '����ʡ','3408', '������','340882',' Ǳɽ��'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','',' '
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341002',' ��Ϫ��'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341003',' ��ɽ��'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341004',' ������'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341021',' ���'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341022',' ������'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341023',' ����'
union all select 'CN','34', '����ʡ','3410', '��ɽ��','341024',' ������'
union all select 'CN','34', '����ʡ','3411', '������','',' '
union all select 'CN','34', '����ʡ','3411', '������','341102',' ������'
union all select 'CN','34', '����ʡ','3411', '������','341103',' ������'
union all select 'CN','34', '����ʡ','3411', '������','341122',' ������'
union all select 'CN','34', '����ʡ','3411', '������','341124',' ȫ����'
union all select 'CN','34', '����ʡ','3411', '������','341125',' ��Զ��'
union all select 'CN','34', '����ʡ','3411', '������','341126',' ������'
union all select 'CN','34', '����ʡ','3411', '������','341181',' �쳤��'
union all select 'CN','34', '����ʡ','3411', '������','341182',' ������'
union all select 'CN','34', '����ʡ','3412', '������','',' '
union all select 'CN','34', '����ʡ','3412', '������','341202',' �����'
union all select 'CN','34', '����ʡ','3412', '������','341203',' 򣶫��'
union all select 'CN','34', '����ʡ','3412', '������','341204',' �Ȫ��'
union all select 'CN','34', '����ʡ','3412', '������','341221',' ��Ȫ��'
union all select 'CN','34', '����ʡ','3412', '������','341222',' ̫����'
union all select 'CN','34', '����ʡ','3412', '������','341225',' ������'
union all select 'CN','34', '����ʡ','3412', '������','341226',' �����'
union all select 'CN','34', '����ʡ','3412', '������','341282',' ������'
union all select 'CN','34', '����ʡ','3413', '������','',' '
union all select 'CN','34', '����ʡ','3413', '������','341302',' ������'
union all select 'CN','34', '����ʡ','3413', '������','341321',' �ɽ��'
union all select 'CN','34', '����ʡ','3413', '������','341322',' ����'
union all select 'CN','34', '����ʡ','3413', '������','341323',' �����'
union all select 'CN','34', '����ʡ','3413', '������','341324',' ����'
union all select 'CN','34', '����ʡ','3415', '������','',' '
union all select 'CN','34', '����ʡ','3415', '������','341502',' ����'
union all select 'CN','34', '����ʡ','3415', '������','341503',' ԣ����'
union all select 'CN','34', '����ʡ','3415', '������','341504',' Ҷ����'
union all select 'CN','34', '����ʡ','3415', '������','341522',' ������'
union all select 'CN','34', '����ʡ','3415', '������','341523',' �����'
union all select 'CN','34', '����ʡ','3415', '������','341524',' ��կ��'
union all select 'CN','34', '����ʡ','3415', '������','341525',' ��ɽ��'
union all select 'CN','34', '����ʡ','3416', '������','',' '
union all select 'CN','34', '����ʡ','3416', '������','341602',' �۳���'
union all select 'CN','34', '����ʡ','3416', '������','341621',' ������'
union all select 'CN','34', '����ʡ','3416', '������','341622',' �ɳ���'
union all select 'CN','34', '����ʡ','3416', '������','341623',' ������'
union all select 'CN','34', '����ʡ','3417', '������','',' '
union all select 'CN','34', '����ʡ','3417', '������','341702',' �����'
union all select 'CN','34', '����ʡ','3417', '������','341721',' ������'
union all select 'CN','34', '����ʡ','3417', '������','341722',' ʯ̨��'
union all select 'CN','34', '����ʡ','3417', '������','341723',' ������'
union all select 'CN','34', '����ʡ','3418', '������','',' '
union all select 'CN','34', '����ʡ','3418', '������','341802',' ������'
union all select 'CN','34', '����ʡ','3418', '������','341821',' ��Ϫ��'
union all select 'CN','34', '����ʡ','3418', '������','341822',' �����'
union all select 'CN','34', '����ʡ','3418', '������','341823',' ����'
union all select 'CN','34', '����ʡ','3418', '������','341824',' ��Ϫ��'
union all select 'CN','34', '����ʡ','3418', '������','341825',' 캵���'
union all select 'CN','34', '����ʡ','3418', '������','341881',' ������'
union all select 'CN','35', '����ʡ','3500', '','',' '
union all select 'CN','35', '����ʡ','3501', '������','',' '
union all select 'CN','35', '����ʡ','3501', '������','350102',' ��¥��'
union all select 'CN','35', '����ʡ','3501', '������','350103',' ̨����'
union all select 'CN','35', '����ʡ','3501', '������','350104',' ��ɽ��'
union all select 'CN','35', '����ʡ','3501', '������','350105',' ��β��'
union all select 'CN','35', '����ʡ','3501', '������','350111',' ������'
union all select 'CN','35', '����ʡ','3501', '������','350112',' ������'
union all select 'CN','35', '����ʡ','3501', '������','350121',' ������'
union all select 'CN','35', '����ʡ','3501', '������','350122',' ������'
union all select 'CN','35', '����ʡ','3501', '������','350123',' ��Դ��'
union all select 'CN','35', '����ʡ','3501', '������','350124',' ������'
union all select 'CN','35', '����ʡ','3501', '������','350125',' ��̩��'
union all select 'CN','35', '����ʡ','3501', '������','350128',' ƽ̶��'
union all select 'CN','35', '����ʡ','3501', '������','350181',' ������'
union all select 'CN','35', '����ʡ','3502', '������','',' '
union all select 'CN','35', '����ʡ','3502', '������','350203',' ˼����'
union all select 'CN','35', '����ʡ','3502', '������','350205',' ������'
union all select 'CN','35', '����ʡ','3502', '������','350206',' ������'
union all select 'CN','35', '����ʡ','3502', '������','350211',' ������'
union all select 'CN','35', '����ʡ','3502', '������','350212',' ͬ����'
union all select 'CN','35', '����ʡ','3502', '������','350213',' �谲��'
union all select 'CN','35', '����ʡ','3503', '������','',' '
union all select 'CN','35', '����ʡ','3503', '������','350302',' ������'
union all select 'CN','35', '����ʡ','3503', '������','350303',' ������'
union all select 'CN','35', '����ʡ','3503', '������','350304',' �����'
union all select 'CN','35', '����ʡ','3503', '������','350305',' ������'
union all select 'CN','35', '����ʡ','3503', '������','350322',' ������'
union all select 'CN','35', '����ʡ','3504', '������','',' '
union all select 'CN','35', '����ʡ','3504', '������','350402',' ÷����'
union all select 'CN','35', '����ʡ','3504', '������','350403',' ��Ԫ��'
union all select 'CN','35', '����ʡ','3504', '������','350421',' ��Ϫ��'
union all select 'CN','35', '����ʡ','3504', '������','350423',' ������'
union all select 'CN','35', '����ʡ','3504', '������','350424',' ������'
union all select 'CN','35', '����ʡ','3504', '������','350425',' ������'
union all select 'CN','35', '����ʡ','3504', '������','350426',' ��Ϫ��'
union all select 'CN','35', '����ʡ','3504', '������','350427',' ɳ��'
union all select 'CN','35', '����ʡ','3504', '������','350428',' ������'
union all select 'CN','35', '����ʡ','3504', '������','350429',' ̩����'
union all select 'CN','35', '����ʡ','3504', '������','350430',' ������'
union all select 'CN','35', '����ʡ','3504', '������','350481',' ������'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','',' '
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350502',' �����'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350503',' ������'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350504',' �彭��'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350505',' Ȫ����'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350521',' �ݰ���'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350524',' ��Ϫ��'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350525',' ������'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350526',' �»���'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350527',' ������'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350581',' ʯʨ��'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350582',' ������'
union all select 'CN','35', '����ʡ','3505', 'Ȫ����','350583',' �ϰ���'
union all select 'CN','35', '����ʡ','3506', '������','',' '
union all select 'CN','35', '����ʡ','3506', '������','350602',' ܼ����'
union all select 'CN','35', '����ʡ','3506', '������','350603',' ������'
union all select 'CN','35', '����ʡ','3506', '������','350622',' ������'
union all select 'CN','35', '����ʡ','3506', '������','350623',' ������'
union all select 'CN','35', '����ʡ','3506', '������','350624',' گ����'
union all select 'CN','35', '����ʡ','3506', '������','350625',' ��̩��'
union all select 'CN','35', '����ʡ','3506', '������','350626',' ��ɽ��'
union all select 'CN','35', '����ʡ','3506', '������','350627',' �Ͼ���'
union all select 'CN','35', '����ʡ','3506', '������','350628',' ƽ����'
union all select 'CN','35', '����ʡ','3506', '������','350629',' ������'
union all select 'CN','35', '����ʡ','3506', '������','350681',' ������'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','',' '
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350702',' ��ƽ��'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350703',' ������'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350721',' ˳����'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350722',' �ֳ���'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350723',' ������'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350724',' ��Ϫ��'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350725',' ������'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350781',' ������'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350782',' ����ɽ��'
union all select 'CN','35', '����ʡ','3507', '��ƽ��','350783',' �����'
union all select 'CN','35', '����ʡ','3508', '������','',' '
union all select 'CN','35', '����ʡ','3508', '������','350802',' ������'
union all select 'CN','35', '����ʡ','3508', '������','350803',' ������'
union all select 'CN','35', '����ʡ','3508', '������','350821',' ��͡��'
union all select 'CN','35', '����ʡ','3508', '������','350823',' �Ϻ���'
union all select 'CN','35', '����ʡ','3508', '������','350824',' ��ƽ��'
union all select 'CN','35', '����ʡ','3508', '������','350825',' ������'
union all select 'CN','35', '����ʡ','3508', '������','350881',' ��ƽ��'
union all select 'CN','35', '����ʡ','3509', '������','',' '
union all select 'CN','35', '����ʡ','3509', '������','350902',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350921',' ϼ����'
union all select 'CN','35', '����ʡ','3509', '������','350922',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350923',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350924',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350925',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350926',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350981',' ������'
union all select 'CN','35', '����ʡ','3509', '������','350982',' ������'
union all select 'CN','36', '����ʡ','3600', '','',' '
union all select 'CN','36', '����ʡ','3601', '�ϲ���','',' '
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360102',' ������'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360103',' ������'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360104',' ��������'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360105',' ������'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360111',' ��ɽ����'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360112',' �½���'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360121',' �ϲ���'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360123',' ������'
union all select 'CN','36', '����ʡ','3601', '�ϲ���','360124',' ������'
union all select 'CN','36', '����ʡ','3602', '��������','',' '
union all select 'CN','36', '����ʡ','3602', '��������','360202',' ������'
union all select 'CN','36', '����ʡ','3602', '��������','360203',' ��ɽ��'
union all select 'CN','36', '����ʡ','3602', '��������','360222',' ������'
union all select 'CN','36', '����ʡ','3602', '��������','360281',' ��ƽ��'
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','',' '
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','360302',' ��Դ��'
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','360313',' �涫��'
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','360321',' ������'
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','360322',' ������'
union all select 'CN','36', '����ʡ','3603', 'Ƽ����','360323',' «Ϫ��'
union all select 'CN','36', '����ʡ','3604', '�Ž���','',' '
union all select 'CN','36', '����ʡ','3604', '�Ž���','360402',' �Ϫ��'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360403',' �����'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360404',' ��ɣ��'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360423',' ������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360424',' ��ˮ��'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360425',' ������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360426',' �°���'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360428',' ������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360429',' ������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360430',' ������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360481',' �����'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360482',' �������'
union all select 'CN','36', '����ʡ','3604', '�Ž���','360483',' ®ɽ��'
union all select 'CN','36', '����ʡ','3605', '������','',' '
union all select 'CN','36', '����ʡ','3605', '������','360502',' ��ˮ��'
union all select 'CN','36', '����ʡ','3605', '������','360521',' ������'
union all select 'CN','36', '����ʡ','3606', 'ӥ̶��','',' '
union all select 'CN','36', '����ʡ','3606', 'ӥ̶��','360602',' �º���'
union all select 'CN','36', '����ʡ','3606', 'ӥ̶��','360603',' �཭��'
union all select 'CN','36', '����ʡ','3606', 'ӥ̶��','360681',' ��Ϫ��'
union all select 'CN','36', '����ʡ','3607', '������','',' '
union all select 'CN','36', '����ʡ','3607', '������','360702',' �¹���'
union all select 'CN','36', '����ʡ','3607', '������','360703',' �Ͽ���'
union all select 'CN','36', '����ʡ','3607', '������','360704',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360722',' �ŷ���'
union all select 'CN','36', '����ʡ','3607', '������','360723',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360724',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360725',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360726',' ��Զ��'
union all select 'CN','36', '����ʡ','3607', '������','360727',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360728',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360729',' ȫ����'
union all select 'CN','36', '����ʡ','3607', '������','360730',' ������'
union all select 'CN','36', '����ʡ','3607', '������','360731',' �ڶ���'
union all select 'CN','36', '����ʡ','3607', '������','360732',' �˹���'
union all select 'CN','36', '����ʡ','3607', '������','360733',' �����'
union all select 'CN','36', '����ʡ','3607', '������','360734',' Ѱ����'
union all select 'CN','36', '����ʡ','3607', '������','360735',' ʯ����'
union all select 'CN','36', '����ʡ','3607', '������','360781',' �����'
union all select 'CN','36', '����ʡ','3608', '������','',' '
union all select 'CN','36', '����ʡ','3608', '������','360802',' ������'
union all select 'CN','36', '����ʡ','3608', '������','360803',' ��ԭ��'
union all select 'CN','36', '����ʡ','3608', '������','360821',' ������'
union all select 'CN','36', '����ʡ','3608', '������','360822',' ��ˮ��'
union all select 'CN','36', '����ʡ','3608', '������','360823',' Ͽ����'
union all select 'CN','36', '����ʡ','3608', '������','360824',' �¸���'
union all select 'CN','36', '����ʡ','3608', '������','360825',' ������'
union all select 'CN','36', '����ʡ','3608', '������','360826',' ̩����'
union all select 'CN','36', '����ʡ','3608', '������','360827',' �촨��'
union all select 'CN','36', '����ʡ','3608', '������','360828',' ����'
union all select 'CN','36', '����ʡ','3608', '������','360829',' ������'
union all select 'CN','36', '����ʡ','3608', '������','360830',' ������'
union all select 'CN','36', '����ʡ','3608', '������','360881',' ����ɽ��'
union all select 'CN','36', '����ʡ','3609', '�˴���','',' '
union all select 'CN','36', '����ʡ','3609', '�˴���','360902',' Ԭ����'
union all select 'CN','36', '����ʡ','3609', '�˴���','360921',' ������'
union all select 'CN','36', '����ʡ','3609', '�˴���','360922',' ������'
union all select 'CN','36', '����ʡ','3609', '�˴���','360923',' �ϸ���'
union all select 'CN','36', '����ʡ','3609', '�˴���','360924',' �˷���'
union all select 'CN','36', '����ʡ','3609', '�˴���','360925',' ������'
union all select 'CN','36', '����ʡ','3609', '�˴���','360926',' ͭ����'
union all select 'CN','36', '����ʡ','3609', '�˴���','360981',' �����'
union all select 'CN','36', '����ʡ','3609', '�˴���','360982',' ������'
union all select 'CN','36', '����ʡ','3609', '�˴���','360983',' �߰���'
union all select 'CN','36', '����ʡ','3610', '������','',' '
union all select 'CN','36', '����ʡ','3610', '������','361002',' �ٴ���'
union all select 'CN','36', '����ʡ','3610', '������','361003',' ������'
union all select 'CN','36', '����ʡ','3610', '������','361021',' �ϳ���'
union all select 'CN','36', '����ʡ','3610', '������','361022',' �质��'
union all select 'CN','36', '����ʡ','3610', '������','361023',' �Ϸ���'
union all select 'CN','36', '����ʡ','3610', '������','361024',' ������'
union all select 'CN','36', '����ʡ','3610', '������','361025',' �ְ���'
union all select 'CN','36', '����ʡ','3610', '������','361026',' �˻���'
union all select 'CN','36', '����ʡ','3610', '������','361027',' ��Ϫ��'
union all select 'CN','36', '����ʡ','3610', '������','361028',' ��Ϫ��'
union all select 'CN','36', '����ʡ','3610', '������','361030',' �����'
union all select 'CN','36', '����ʡ','3611', '������','',' '
union all select 'CN','36', '����ʡ','3611', '������','361102',' ������'
union all select 'CN','36', '����ʡ','3611', '������','361103',' �����'
union all select 'CN','36', '����ʡ','3611', '������','361121',' ������'
union all select 'CN','36', '����ʡ','3611', '������','361123',' ��ɽ��'
union all select 'CN','36', '����ʡ','3611', '������','361124',' Ǧɽ��'
union all select 'CN','36', '����ʡ','3611', '������','361125',' �����'
union all select 'CN','36', '����ʡ','3611', '������','361126',' ߮����'
union all select 'CN','36', '����ʡ','3611', '������','361127',' �����'
union all select 'CN','36', '����ʡ','3611', '������','361128',' ۶����'
union all select 'CN','36', '����ʡ','3611', '������','361129',' ������'
union all select 'CN','36', '����ʡ','3611', '������','361130',' ��Դ��'
union all select 'CN','36', '����ʡ','3611', '������','361181',' ������'
union all select 'CN','37', 'ɽ��ʡ','3700', '','',' '
union all select 'CN','37', 'ɽ��ʡ','3701', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370102',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370103',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370104',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370105',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370112',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370113',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370114',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370115',' ������'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370124',' ƽ����'
union all select 'CN','37', 'ɽ��ʡ','3701', '������','370126',' �̺���'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','',' '
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370202',' ������'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370203',' �б���'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370211',' �Ƶ���'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370212',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370213',' �����'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370214',' ������'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370215',' ��ī��'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370281',' ������'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370283',' ƽ����'
union all select 'CN','37', 'ɽ��ʡ','3702', '�ൺ��','370285',' ������'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','',' '
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370302',' �ʹ���'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370303',' �ŵ���'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370304',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370305',' ������'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370306',' �ܴ���'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370321',' ��̨��'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370322',' ������'
union all select 'CN','37', 'ɽ��ʡ','3703', '�Ͳ���','370323',' ��Դ��'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','',' '
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370402',' ������'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370403',' Ѧ����'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370404',' ỳ���'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370405',' ̨��ׯ��'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370406',' ɽͤ��'
union all select 'CN','37', 'ɽ��ʡ','3704', '��ׯ��','370481',' ������'
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','',' '
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','370502',' ��Ӫ��'
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','370503',' �ӿ���'
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','370505',' ������'
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','370522',' ������'
union all select 'CN','37', 'ɽ��ʡ','3705', '��Ӫ��','370523',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','',' '
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370602',' ֥���'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370611',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370612',' Ĳƽ��'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370613',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370634',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370681',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370682',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370683',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370684',' ������'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370685',' ��Զ��'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370686',' ��ϼ��'
union all select 'CN','37', 'ɽ��ʡ','3706', '��̨��','370687',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','',' '
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370702',' Ϋ����'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370703',' ��ͤ��'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370704',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370705',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370724',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370725',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370781',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370782',' �����'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370783',' �ٹ���'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370784',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370785',' ������'
union all select 'CN','37', 'ɽ��ʡ','3707', 'Ϋ����','370786',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370811',' �γ���'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370812',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370826',' ΢ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370827',' ��̨��'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370828',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370829',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370830',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370831',' ��ˮ��'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370832',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370881',' ������'
union all select 'CN','37', 'ɽ��ʡ','3708', '������','370883',' �޳���'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','',' '
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370902',' ̩ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370911',' �����'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370921',' ������'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370923',' ��ƽ��'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370982',' ��̩��'
union all select 'CN','37', 'ɽ��ʡ','3709', '̩����','370983',' �ʳ���'
union all select 'CN','37', 'ɽ��ʡ','3710', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3710', '������','371002',' ������'
union all select 'CN','37', 'ɽ��ʡ','3710', '������','371003',' �ĵ���'
union all select 'CN','37', 'ɽ��ʡ','3710', '������','371082',' �ٳ���'
union all select 'CN','37', 'ɽ��ʡ','3710', '������','371083',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3711', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3711', '������','371102',' ������'
union all select 'CN','37', 'ɽ��ʡ','3711', '������','371103',' �ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3711', '������','371121',' ������'
union all select 'CN','37', 'ɽ��ʡ','3711', '������','371122',' ����'
union all select 'CN','37', 'ɽ��ʡ','3712', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3712', '������','371202',' ������'
union all select 'CN','37', 'ɽ��ʡ','3712', '������','371203',' �ֳ���'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371302',' ��ɽ��'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371311',' ��ׯ��'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371312',' �Ӷ���'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371321',' ������'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371322',' ۰����'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371323',' ��ˮ��'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371324',' ������'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371325',' ����'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371326',' ƽ����'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371327',' ������'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371328',' ������'
union all select 'CN','37', 'ɽ��ʡ','3713', '������','371329',' ������'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371402',' �³���'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371403',' �����'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371422',' ������'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371423',' ������'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371424',' ������'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371425',' �����'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371426',' ƽԭ��'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371427',' �Ľ���'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371428',' �����'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371481',' ������'
union all select 'CN','37', 'ɽ��ʡ','3714', '������','371482',' �����'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','',' '
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371502',' ��������'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371521',' ������'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371522',' ݷ��'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371523',' ��ƽ��'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371524',' ������'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371525',' ����'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371526',' ������'
union all select 'CN','37', 'ɽ��ʡ','3715', '�ĳ���','371581',' ������'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371602',' ������'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371603',' մ����'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371621',' ������'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371622',' ������'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371623',' �����'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371625',' ������'
union all select 'CN','37', 'ɽ��ʡ','3716', '������','371681',' ��ƽ��'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','',' '
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371702',' ĵ����'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371703',' ������'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371721',' ����'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371722',' ����'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371723',' ������'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371724',' ��Ұ��'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371725',' ۩����'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371726',' ۲����'
union all select 'CN','37', 'ɽ��ʡ','3717', '������','371728',' ������'
union all select 'CN','41', '����ʡ','4100', '','',' '
union all select 'CN','41', '����ʡ','4101', '֣����','',' '
union all select 'CN','41', '����ʡ','4101', '֣����','410102',' ��ԭ��'
union all select 'CN','41', '����ʡ','4101', '֣����','410103',' ������'
union all select 'CN','41', '����ʡ','4101', '֣����','410104',' �ܳǻ�����'
union all select 'CN','41', '����ʡ','4101', '֣����','410105',' ��ˮ��'
union all select 'CN','41', '����ʡ','4101', '֣����','410106',' �Ͻ���'
union all select 'CN','41', '����ʡ','4101', '֣����','410108',' �ݼ���'
union all select 'CN','41', '����ʡ','4101', '֣����','410122',' ��Ĳ��'
union all select 'CN','41', '����ʡ','4101', '֣����','410181',' ������'
union all select 'CN','41', '����ʡ','4101', '֣����','410182',' ������'
union all select 'CN','41', '����ʡ','4101', '֣����','410183',' ������'
union all select 'CN','41', '����ʡ','4101', '֣����','410184',' ��֣��'
union all select 'CN','41', '����ʡ','4101', '֣����','410185',' �Ƿ���'
union all select 'CN','41', '����ʡ','4102', '������','',' '
union all select 'CN','41', '����ʡ','4102', '������','410202',' ��ͤ��'
union all select 'CN','41', '����ʡ','4102', '������','410203',' ˳�ӻ�����'
union all select 'CN','41', '����ʡ','4102', '������','410204',' ��¥��'
union all select 'CN','41', '����ʡ','4102', '������','410205',' ����̨��'
union all select 'CN','41', '����ʡ','4102', '������','410212',' �����'
union all select 'CN','41', '����ʡ','4102', '������','410221',' ���'
union all select 'CN','41', '����ʡ','4102', '������','410222',' ͨ����'
union all select 'CN','41', '����ʡ','4102', '������','410223',' ξ����'
union all select 'CN','41', '����ʡ','4102', '������','410225',' ������'
union all select 'CN','41', '����ʡ','4103', '������','',' '
union all select 'CN','41', '����ʡ','4103', '������','410302',' �ϳ���'
union all select 'CN','41', '����ʡ','4103', '������','410303',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410304',' �e�ӻ�����'
union all select 'CN','41', '����ʡ','4103', '������','410305',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410306',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410311',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410322',' �Ͻ���'
union all select 'CN','41', '����ʡ','4103', '������','410323',' �°���'
union all select 'CN','41', '����ʡ','4103', '������','410324',' �ﴨ��'
union all select 'CN','41', '����ʡ','4103', '������','410325',' ����'
union all select 'CN','41', '����ʡ','4103', '������','410326',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410327',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410328',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410329',' ������'
union all select 'CN','41', '����ʡ','4103', '������','410381',' ��ʦ��'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','',' '
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410402',' �»���'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410403',' ������'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410404',' ʯ����'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410411',' տ����'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410421',' ������'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410422',' Ҷ��'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410423',' ³ɽ��'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410425',' ۣ��'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410481',' �����'
union all select 'CN','41', '����ʡ','4104', 'ƽ��ɽ��','410482',' ������'
union all select 'CN','41', '����ʡ','4105', '������','',' '
union all select 'CN','41', '����ʡ','4105', '������','410502',' �ķ���'
union all select 'CN','41', '����ʡ','4105', '������','410503',' ������'
union all select 'CN','41', '����ʡ','4105', '������','410505',' ����'
union all select 'CN','41', '����ʡ','4105', '������','410506',' ������'
union all select 'CN','41', '����ʡ','4105', '������','410522',' ������'
union all select 'CN','41', '����ʡ','4105', '������','410523',' ������'
union all select 'CN','41', '����ʡ','4105', '������','410526',' ����'
union all select 'CN','41', '����ʡ','4105', '������','410527',' �ڻ���'
union all select 'CN','41', '����ʡ','4105', '������','410581',' ������'
union all select 'CN','41', '����ʡ','4106', '�ױ���','',' '
union all select 'CN','41', '����ʡ','4106', '�ױ���','410602',' ��ɽ��'
union all select 'CN','41', '����ʡ','4106', '�ױ���','410603',' ɽ����'
union all select 'CN','41', '����ʡ','4106', '�ױ���','410611',' 俱���'
union all select 'CN','41', '����ʡ','4106', '�ױ���','410621',' ����'
union all select 'CN','41', '����ʡ','4106', '�ױ���','410622',' ���'
union all select 'CN','41', '����ʡ','4107', '������','',' '
union all select 'CN','41', '����ʡ','4107', '������','410702',' ������'
union all select 'CN','41', '����ʡ','4107', '������','410703',' ������'
union all select 'CN','41', '����ʡ','4107', '������','410704',' ��Ȫ��'
union all select 'CN','41', '����ʡ','4107', '������','410711',' ��Ұ��'
union all select 'CN','41', '����ʡ','4107', '������','410721',' ������'
union all select 'CN','41', '����ʡ','4107', '������','410724',' �����'
union all select 'CN','41', '����ʡ','4107', '������','410725',' ԭ����'
union all select 'CN','41', '����ʡ','4107', '������','410726',' �ӽ���'
union all select 'CN','41', '����ʡ','4107', '������','410727',' ������'
union all select 'CN','41', '����ʡ','4107', '������','410728',' ��ԫ��'
union all select 'CN','41', '����ʡ','4107', '������','410781',' ������'
union all select 'CN','41', '����ʡ','4107', '������','410782',' ������'
union all select 'CN','41', '����ʡ','4108', '������','',' '
union all select 'CN','41', '����ʡ','4108', '������','410802',' �����'
union all select 'CN','41', '����ʡ','4108', '������','410803',' ��վ��'
union all select 'CN','41', '����ʡ','4108', '������','410804',' �����'
union all select 'CN','41', '����ʡ','4108', '������','410811',' ɽ����'
union all select 'CN','41', '����ʡ','4108', '������','410821',' ������'
union all select 'CN','41', '����ʡ','4108', '������','410822',' ������'
union all select 'CN','41', '����ʡ','4108', '������','410823',' ������'
union all select 'CN','41', '����ʡ','4108', '������','410825',' ����'
union all select 'CN','41', '����ʡ','4108', '������','410882',' ������'
union all select 'CN','41', '����ʡ','4108', '������','410883',' ������'
union all select 'CN','41', '����ʡ','4109', '�����','',' '
union all select 'CN','41', '����ʡ','4109', '�����','410902',' ������'
union all select 'CN','41', '����ʡ','4109', '�����','410922',' �����'
union all select 'CN','41', '����ʡ','4109', '�����','410923',' ������'
union all select 'CN','41', '����ʡ','4109', '�����','410926',' ����'
union all select 'CN','41', '����ʡ','4109', '�����','410927',' ̨ǰ��'
union all select 'CN','41', '����ʡ','4109', '�����','410928',' �����'
union all select 'CN','41', '����ʡ','4110', '�����','',' '
union all select 'CN','41', '����ʡ','4110', '�����','411002',' κ����'
union all select 'CN','41', '����ʡ','4110', '�����','411003',' ������'
union all select 'CN','41', '����ʡ','4110', '�����','411024',' ۳����'
union all select 'CN','41', '����ʡ','4110', '�����','411025',' �����'
union all select 'CN','41', '����ʡ','4110', '�����','411081',' ������'
union all select 'CN','41', '����ʡ','4110', '�����','411082',' ������'
union all select 'CN','41', '����ʡ','4111', '�����','',' '
union all select 'CN','41', '����ʡ','4111', '�����','411102',' Դ����'
union all select 'CN','41', '����ʡ','4111', '�����','411103',' ۱����'
union all select 'CN','41', '����ʡ','4111', '�����','411104',' ������'
union all select 'CN','41', '����ʡ','4111', '�����','411121',' ������'
union all select 'CN','41', '����ʡ','4111', '�����','411122',' �����'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','',' '
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411202',' ������'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411203',' ������'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411221',' �ų���'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411224',' ¬����'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411281',' ������'
union all select 'CN','41', '����ʡ','4112', '����Ͽ��','411282',' �鱦��'
union all select 'CN','41', '����ʡ','4113', '������','',' '
union all select 'CN','41', '����ʡ','4113', '������','411302',' �����'
union all select 'CN','41', '����ʡ','4113', '������','411303',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411321',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411322',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411323',' ��Ͽ��'
union all select 'CN','41', '����ʡ','4113', '������','411324',' ��ƽ��'
union all select 'CN','41', '����ʡ','4113', '������','411325',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411326',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411327',' ������'
union all select 'CN','41', '����ʡ','4113', '������','411328',' �ƺ���'
union all select 'CN','41', '����ʡ','4113', '������','411329',' ��Ұ��'
union all select 'CN','41', '����ʡ','4113', '������','411330',' ͩ����'
union all select 'CN','41', '����ʡ','4113', '������','411381',' ������'
union all select 'CN','41', '����ʡ','4114', '������','',' '
union all select 'CN','41', '����ʡ','4114', '������','411402',' ��԰��'
union all select 'CN','41', '����ʡ','4114', '������','411403',' �����'
union all select 'CN','41', '����ʡ','4114', '������','411421',' ��Ȩ��'
union all select 'CN','41', '����ʡ','4114', '������','411422',' ���'
union all select 'CN','41', '����ʡ','4114', '������','411423',' ������'
union all select 'CN','41', '����ʡ','4114', '������','411424',' �ϳ���'
union all select 'CN','41', '����ʡ','4114', '������','411425',' �ݳ���'
union all select 'CN','41', '����ʡ','4114', '������','411426',' ������'
union all select 'CN','41', '����ʡ','4114', '������','411481',' ������'
union all select 'CN','41', '����ʡ','4115', '������','',' '
union all select 'CN','41', '����ʡ','4115', '������','411502',' ������'
union all select 'CN','41', '����ʡ','4115', '������','411503',' ƽ����'
union all select 'CN','41', '����ʡ','4115', '������','411521',' ��ɽ��'
union all select 'CN','41', '����ʡ','4115', '������','411522',' ��ɽ��'
union all select 'CN','41', '����ʡ','4115', '������','411523',' ����'
union all select 'CN','41', '����ʡ','4115', '������','411524',' �̳���'
union all select 'CN','41', '����ʡ','4115', '������','411525',' ��ʼ��'
union all select 'CN','41', '����ʡ','4115', '������','411526',' �괨��'
union all select 'CN','41', '����ʡ','4115', '������','411527',' ������'
union all select 'CN','41', '����ʡ','4115', '������','411528',' Ϣ��'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','',' '
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411602',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411621',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411622',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411623',' ��ˮ��'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411624',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411625',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411626',' ������'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411627',' ̫����'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411628',' ¹����'
union all select 'CN','41', '����ʡ','4116', '�ܿ���','411681',' �����'
union all select 'CN','41', '����ʡ','4117', 'פ�����','',' '
union all select 'CN','41', '����ʡ','4117', 'פ�����','411702',' �����'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411721',' ��ƽ��'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411722',' �ϲ���'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411723',' ƽ����'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411724',' ������'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411725',' ȷɽ��'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411726',' ������'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411727',' ������'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411728',' ��ƽ��'
union all select 'CN','41', '����ʡ','4117', 'פ�����','411729',' �²���'
union all select 'CN','41', '����ʡ','4190', 'פ�����','419001',' ��Դ��'
union all select 'CN','42', '����ʡ','4200', '','',' '
union all select 'CN','42', '����ʡ','4201', '�人��','',' '
union all select 'CN','42', '����ʡ','4201', '�人��','420102',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420103',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420104',' �~����'
union all select 'CN','42', '����ʡ','4201', '�人��','420105',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420106',' �����'
union all select 'CN','42', '����ʡ','4201', '�人��','420107',' ��ɽ��'
union all select 'CN','42', '����ʡ','4201', '�人��','420111',' ��ɽ��'
union all select 'CN','42', '����ʡ','4201', '�人��','420112',' ��������'
union all select 'CN','42', '����ʡ','4201', '�人��','420113',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420114',' �̵���'
union all select 'CN','42', '����ʡ','4201', '�人��','420115',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420116',' ������'
union all select 'CN','42', '����ʡ','4201', '�人��','420117',' ������'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','',' '
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420202',' ��ʯ����'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420203',' ����ɽ��'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420204',' ��½��'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420205',' ��ɽ��'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420222',' ������'
union all select 'CN','42', '����ʡ','4202', '��ʯ��','420281',' ��ұ��'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','',' '
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420302',' é����'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420303',' ������'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420304',' ������'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420322',' ������'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420323',' ��ɽ��'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420324',' ��Ϫ��'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420325',' ����'
union all select 'CN','42', '����ʡ','4203', 'ʮ����','420381',' ��������'
union all select 'CN','42', '����ʡ','4205', '�˲���','',' '
union all select 'CN','42', '����ʡ','4205', '�˲���','420502',' ������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420503',' ��Ҹ���'
union all select 'CN','42', '����ʡ','4205', '�˲���','420504',' �����'
union all select 'CN','42', '����ʡ','4205', '�˲���','420505',' �Vͤ��'
union all select 'CN','42', '����ʡ','4205', '�˲���','420506',' ������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420525',' Զ����'
union all select 'CN','42', '����ʡ','4205', '�˲���','420526',' ��ɽ��'
union all select 'CN','42', '����ʡ','4205', '�˲���','420527',' ������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420528',' ����������������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420529',' ���������������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420581',' �˶���'
union all select 'CN','42', '����ʡ','4205', '�˲���','420582',' ������'
union all select 'CN','42', '����ʡ','4205', '�˲���','420583',' ֦����'
union all select 'CN','42', '����ʡ','4206', '������','',' '
union all select 'CN','42', '����ʡ','4206', '������','420602',' �����'
union all select 'CN','42', '����ʡ','4206', '������','420606',' ������'
union all select 'CN','42', '����ʡ','4206', '������','420607',' ������'
union all select 'CN','42', '����ʡ','4206', '������','420624',' ������'
union all select 'CN','42', '����ʡ','4206', '������','420625',' �ȳ���'
union all select 'CN','42', '����ʡ','4206', '������','420626',' ������'
union all select 'CN','42', '����ʡ','4206', '������','420682',' �Ϻӿ���'
union all select 'CN','42', '����ʡ','4206', '������','420683',' ������'
union all select 'CN','42', '����ʡ','4206', '������','420684',' �˳���'
union all select 'CN','42', '����ʡ','4207', '������','',' '
union all select 'CN','42', '����ʡ','4207', '������','420702',' ���Ӻ���'
union all select 'CN','42', '����ʡ','4207', '������','420703',' ������'
union all select 'CN','42', '����ʡ','4207', '������','420704',' ������'
union all select 'CN','42', '����ʡ','4208', '������','',' '
union all select 'CN','42', '����ʡ','4208', '������','420802',' ������'
union all select 'CN','42', '����ʡ','4208', '������','420804',' �޵���'
union all select 'CN','42', '����ʡ','4208', '������','420822',' ɳ����'
union all select 'CN','42', '����ʡ','4208', '������','420881',' ������'
union all select 'CN','42', '����ʡ','4208', '������','420882',' ��ɽ��'
union all select 'CN','42', '����ʡ','4209', 'Т����','',' '
union all select 'CN','42', '����ʡ','4209', 'Т����','420902',' Т����'
union all select 'CN','42', '����ʡ','4209', 'Т����','420921',' Т����'
union all select 'CN','42', '����ʡ','4209', 'Т����','420922',' ������'
union all select 'CN','42', '����ʡ','4209', 'Т����','420923',' ������'
union all select 'CN','42', '����ʡ','4209', 'Т����','420981',' Ӧ����'
union all select 'CN','42', '����ʡ','4209', 'Т����','420982',' ��½��'
union all select 'CN','42', '����ʡ','4209', 'Т����','420984',' ������'
union all select 'CN','42', '����ʡ','4210', '������','',' '
union all select 'CN','42', '����ʡ','4210', '������','421002',' ɳ����'
union all select 'CN','42', '����ʡ','4210', '������','421003',' ������'
union all select 'CN','42', '����ʡ','4210', '������','421022',' ������'
union all select 'CN','42', '����ʡ','4210', '������','421023',' ������'
union all select 'CN','42', '����ʡ','4210', '������','421024',' ������'
union all select 'CN','42', '����ʡ','4210', '������','421081',' ʯ����'
union all select 'CN','42', '����ʡ','4210', '������','421083',' �����'
union all select 'CN','42', '����ʡ','4210', '������','421087',' ������'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','',' '
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421102',' ������'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421121',' �ŷ���'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421122',' �찲��'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421123',' ������'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421124',' Ӣɽ��'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421125',' �ˮ��'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421126',' ޭ����'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421127',' ��÷��'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421181',' �����'
union all select 'CN','42', '����ʡ','4211', '�Ƹ���','421182',' ��Ѩ��'
union all select 'CN','42', '����ʡ','4212', '������','',' '
union all select 'CN','42', '����ʡ','4212', '������','421202',' �̰���'
union all select 'CN','42', '����ʡ','4212', '������','421221',' ������'
union all select 'CN','42', '����ʡ','4212', '������','421222',' ͨ����'
union all select 'CN','42', '����ʡ','4212', '������','421223',' ������'
union all select 'CN','42', '����ʡ','4212', '������','421224',' ͨɽ��'
union all select 'CN','42', '����ʡ','4212', '������','421281',' �����'
union all select 'CN','42', '����ʡ','4213', '������','',' '
union all select 'CN','42', '����ʡ','4213', '������','421303',' ������'
union all select 'CN','42', '����ʡ','4213', '������','421321',' ����'
union all select 'CN','42', '����ʡ','4213', '������','421381',' ��ˮ��'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','',' '
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422801',' ��ʩ��'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422802',' ������'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422822',' ��ʼ��'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422823',' �Ͷ���'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422825',' ������'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422826',' �̷���'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422827',' ������'
union all select 'CN','42', '����ʡ','4228', '��ʩ����������������','422828',' �׷���'
union all select 'CN','42', '����ʡ','4290', 'ʡֱϽ�ؼ���������','',' '
union all select 'CN','42', '����ʡ','4290', 'ʡֱϽ�ؼ���������','429004',' ������'
union all select 'CN','42', '����ʡ','4290', 'ʡֱϽ�ؼ���������','429005',' Ǳ����'
union all select 'CN','42', '����ʡ','4290', 'ʡֱϽ�ؼ���������','429006',' ������'
union all select 'CN','42', '����ʡ','4290', 'ʡֱϽ�ؼ���������','429021',' ��ũ������'
union all select 'CN','43', '����ʡ','4300', '','',' '
union all select 'CN','43', '����ʡ','4301', '��ɳ��','',' '
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430102',' ܽ����'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430103',' ������'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430104',' ��´��'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430105',' ������'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430111',' �껨��'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430112',' ������'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430121',' ��ɳ��'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430181',' �����'
union all select 'CN','43', '����ʡ','4301', '��ɳ��','430182',' ������'
union all select 'CN','43', '����ʡ','4302', '������','',' '
union all select 'CN','43', '����ʡ','4302', '������','430202',' ������'
union all select 'CN','43', '����ʡ','4302', '������','430203',' «����'
union all select 'CN','43', '����ʡ','4302', '������','430204',' ʯ����'
union all select 'CN','43', '����ʡ','4302', '������','430211',' ��Ԫ��'
union all select 'CN','43', '����ʡ','4302', '������','430212',' �˿���'
union all select 'CN','43', '����ʡ','4302', '������','430223',' ����'
union all select 'CN','43', '����ʡ','4302', '������','430224',' ������'
union all select 'CN','43', '����ʡ','4302', '������','430225',' ������'
union all select 'CN','43', '����ʡ','4302', '������','430281',' ������'
union all select 'CN','43', '����ʡ','4303', '��̶��','',' '
union all select 'CN','43', '����ʡ','4303', '��̶��','430302',' �����'
union all select 'CN','43', '����ʡ','4303', '��̶��','430304',' ������'
union all select 'CN','43', '����ʡ','4303', '��̶��','430321',' ��̶��'
union all select 'CN','43', '����ʡ','4303', '��̶��','430381',' ������'
union all select 'CN','43', '����ʡ','4303', '��̶��','430382',' ��ɽ��'
union all select 'CN','43', '����ʡ','4304', '������','',' '
union all select 'CN','43', '����ʡ','4304', '������','430405',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430406',' �����'
union all select 'CN','43', '����ʡ','4304', '������','430407',' ʯ����'
union all select 'CN','43', '����ʡ','4304', '������','430408',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430412',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430421',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430422',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430423',' ��ɽ��'
union all select 'CN','43', '����ʡ','4304', '������','430424',' �ⶫ��'
union all select 'CN','43', '����ʡ','4304', '������','430426',' ���'
union all select 'CN','43', '����ʡ','4304', '������','430481',' ������'
union all select 'CN','43', '����ʡ','4304', '������','430482',' ������'
union all select 'CN','43', '����ʡ','4305', '������','',' '
union all select 'CN','43', '����ʡ','4305', '������','430502',' ˫����'
union all select 'CN','43', '����ʡ','4305', '������','430503',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430511',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430521',' �۶���'
union all select 'CN','43', '����ʡ','4305', '������','430522',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430523',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430524',' ¡����'
union all select 'CN','43', '����ʡ','4305', '������','430525',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430527',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430528',' ������'
union all select 'CN','43', '����ʡ','4305', '������','430529',' �ǲ�����������'
union all select 'CN','43', '����ʡ','4305', '������','430581',' �����'
union all select 'CN','43', '����ʡ','4306', '������','',' '
union all select 'CN','43', '����ʡ','4306', '������','430602',' ����¥��'
union all select 'CN','43', '����ʡ','4306', '������','430603',' ��Ϫ��'
union all select 'CN','43', '����ʡ','4306', '������','430611',' ��ɽ��'
union all select 'CN','43', '����ʡ','4306', '������','430621',' ������'
union all select 'CN','43', '����ʡ','4306', '������','430623',' ������'
union all select 'CN','43', '����ʡ','4306', '������','430624',' ������'
union all select 'CN','43', '����ʡ','4306', '������','430626',' ƽ����'
union all select 'CN','43', '����ʡ','4306', '������','430681',' ������'
union all select 'CN','43', '����ʡ','4306', '������','430682',' ������'
union all select 'CN','43', '����ʡ','4307', '������','',' '
union all select 'CN','43', '����ʡ','4307', '������','430702',' ������'
union all select 'CN','43', '����ʡ','4307', '������','430703',' ������'
union all select 'CN','43', '����ʡ','4307', '������','430721',' ������'
union all select 'CN','43', '����ʡ','4307', '������','430722',' ������'
union all select 'CN','43', '����ʡ','4307', '������','430723',' ���'
union all select 'CN','43', '����ʡ','4307', '������','430724',' �����'
union all select 'CN','43', '����ʡ','4307', '������','430725',' ��Դ��'
union all select 'CN','43', '����ʡ','4307', '������','430726',' ʯ����'
union all select 'CN','43', '����ʡ','4307', '������','430781',' ������'
union all select 'CN','43', '����ʡ','4308', '�żҽ���','',' '
union all select 'CN','43', '����ʡ','4308', '�żҽ���','430802',' ������'
union all select 'CN','43', '����ʡ','4308', '�żҽ���','430811',' ����Դ��'
union all select 'CN','43', '����ʡ','4308', '�żҽ���','430821',' ������'
union all select 'CN','43', '����ʡ','4308', '�żҽ���','430822',' ɣֲ��'
union all select 'CN','43', '����ʡ','4309', '������','',' '
union all select 'CN','43', '����ʡ','4309', '������','430902',' ������'
union all select 'CN','43', '����ʡ','4309', '������','430903',' ��ɽ��'
union all select 'CN','43', '����ʡ','4309', '������','430921',' ����'
union all select 'CN','43', '����ʡ','4309', '������','430922',' �ҽ���'
union all select 'CN','43', '����ʡ','4309', '������','430923',' ������'
union all select 'CN','43', '����ʡ','4309', '������','430981',' �佭��'
union all select 'CN','43', '����ʡ','4310', '������','',' '
union all select 'CN','43', '����ʡ','4310', '������','431002',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431003',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431021',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431022',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431023',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431024',' �κ���'
union all select 'CN','43', '����ʡ','4310', '������','431025',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431026',' �����'
union all select 'CN','43', '����ʡ','4310', '������','431027',' ����'
union all select 'CN','43', '����ʡ','4310', '������','431028',' ������'
union all select 'CN','43', '����ʡ','4310', '������','431081',' ������'
union all select 'CN','43', '����ʡ','4311', '������','',' '
union all select 'CN','43', '����ʡ','4311', '������','431102',' ������'
union all select 'CN','43', '����ʡ','4311', '������','431103',' ��ˮ̲��'
union all select 'CN','43', '����ʡ','4311', '������','431121',' ������'
union all select 'CN','43', '����ʡ','4311', '������','431122',' ������'
union all select 'CN','43', '����ʡ','4311', '������','431123',' ˫����'
union all select 'CN','43', '����ʡ','4311', '������','431124',' ����'
union all select 'CN','43', '����ʡ','4311', '������','431125',' ������'
union all select 'CN','43', '����ʡ','4311', '������','431126',' ��Զ��'
union all select 'CN','43', '����ʡ','4311', '������','431127',' ��ɽ��'
union all select 'CN','43', '����ʡ','4311', '������','431128',' ������'
union all select 'CN','43', '����ʡ','4311', '������','431129',' ��������������'
union all select 'CN','43', '����ʡ','4312', '������','',' '
union all select 'CN','43', '����ʡ','4312', '������','431202',' �׳���'
union all select 'CN','43', '����ʡ','4312', '������','431221',' �з���'
union all select 'CN','43', '����ʡ','4312', '������','431222',' ������'
union all select 'CN','43', '����ʡ','4312', '������','431223',' ��Ϫ��'
union all select 'CN','43', '����ʡ','4312', '������','431224',' ������'
union all select 'CN','43', '����ʡ','4312', '������','431225',' ��ͬ��'
union all select 'CN','43', '����ʡ','4312', '������','431226',' ��������������'
union all select 'CN','43', '����ʡ','4312', '������','431227',' �»ζ���������'
union all select 'CN','43', '����ʡ','4312', '������','431228',' �ƽ�����������'
union all select 'CN','43', '����ʡ','4312', '������','431229',' �������嶱��������'
union all select 'CN','43', '����ʡ','4312', '������','431230',' ͨ������������'
union all select 'CN','43', '����ʡ','4312', '������','431281',' �齭��'
union all select 'CN','43', '����ʡ','4313', '¦����','',' '
union all select 'CN','43', '����ʡ','4313', '¦����','431302',' ¦����'
union all select 'CN','43', '����ʡ','4313', '¦����','431321',' ˫����'
union all select 'CN','43', '����ʡ','4313', '¦����','431322',' �»���'
union all select 'CN','43', '����ʡ','4313', '¦����','431381',' ��ˮ����'
union all select 'CN','43', '����ʡ','4313', '¦����','431382',' ��Դ��'
union all select 'CN','43', '����ʡ','4331', '��������������������','',' '
union all select 'CN','43', '����ʡ','4331', '��������������������','433101',' ������'
union all select 'CN','43', '����ʡ','4331', '��������������������','433122',' ��Ϫ��'
union all select 'CN','43', '����ʡ','4331', '��������������������','433123',' �����'
union all select 'CN','43', '����ʡ','4331', '��������������������','433124',' ��ԫ��'
union all select 'CN','43', '����ʡ','4331', '��������������������','433125',' ������'
union all select 'CN','43', '����ʡ','4331', '��������������������','433126',' ������'
union all select 'CN','43', '����ʡ','4331', '��������������������','433127',' ��˳��'
union all select 'CN','43', '����ʡ','4331', '��������������������','433130',' ��ɽ��'
union all select 'CN','44', '�㶫ʡ','4400', '','',' '
union all select 'CN','44', '�㶫ʡ','4401', '������','',' '
union all select 'CN','44', '�㶫ʡ','4401', '������','440103',' ������'
union all select 'CN','44', '�㶫ʡ','4401', '������','440104',' Խ����'
union all select 'CN','44', '�㶫ʡ','4401', '������','440105',' ������'
union all select 'CN','44', '�㶫ʡ','4401', '������','440106',' �����'
union all select 'CN','44', '�㶫ʡ','4401', '������','440111',' ������'
union all select 'CN','44', '�㶫ʡ','4401', '������','440112',' ������'
union all select 'CN','44', '�㶫ʡ','4401', '������','440113',' ��خ��'
union all select 'CN','44', '�㶫ʡ','4401', '������','440114',' ������'
union all select 'CN','44', '�㶫ʡ','4401', '������','440115',' ��ɳ��'
union all select 'CN','44', '�㶫ʡ','4401', '������','440117',' �ӻ���'
union all select 'CN','44', '�㶫ʡ','4401', '������','440118',' ������'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','',' '
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440203',' �佭��'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440204',' 䥽���'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440205',' ������'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440222',' ʼ����'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440224',' �ʻ���'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440229',' ��Դ��'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440232',' ��Դ����������'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440233',' �·���'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440281',' �ֲ���'
union all select 'CN','44', '�㶫ʡ','4402', '�ع���','440282',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','',' '
union all select 'CN','44', '�㶫ʡ','4403', '������','440303',' �޺���'
union all select 'CN','44', '�㶫ʡ','4403', '������','440304',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','440305',' ��ɽ��'
union all select 'CN','44', '�㶫ʡ','4403', '������','440306',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','440307',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','440308',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','440309',' ������'
union all select 'CN','44', '�㶫ʡ','4403', '������','440310',' ƺɽ��'
union all select 'CN','44', '�㶫ʡ','4403', '������','440311',' ������'
union all select 'CN','44', '�㶫ʡ','4404', '�麣��','',' '
union all select 'CN','44', '�㶫ʡ','4404', '�麣��','440402',' ������'
union all select 'CN','44', '�㶫ʡ','4404', '�麣��','440403',' ������'
union all select 'CN','44', '�㶫ʡ','4404', '�麣��','440404',' ������'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','',' '
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440507',' ������'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440511',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440512',' 婽���'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440513',' ������'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440514',' ������'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440515',' �κ���'
union all select 'CN','44', '�㶫ʡ','4405', '��ͷ��','440523',' �ϰ���'
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','',' '
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','440604',' ������'
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','440605',' �Ϻ���'
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','440606',' ˳����'
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','440607',' ��ˮ��'
union all select 'CN','44', '�㶫ʡ','4406', '��ɽ��','440608',' ������'
union all select 'CN','44', '�㶫ʡ','4407', '������','',' '
union all select 'CN','44', '�㶫ʡ','4407', '������','440703',' ���'
union all select 'CN','44', '�㶫ʡ','4407', '������','440704',' ������'
union all select 'CN','44', '�㶫ʡ','4407', '������','440705',' �»���'
union all select 'CN','44', '�㶫ʡ','4407', '������','440781',' ̨ɽ��'
union all select 'CN','44', '�㶫ʡ','4407', '������','440783',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4407', '������','440784',' ��ɽ��'
union all select 'CN','44', '�㶫ʡ','4407', '������','440785',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','',' '
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440802',' �࿲��'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440803',' ϼɽ��'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440804',' ��ͷ��'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440811',' ������'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440823',' ��Ϫ��'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440825',' ������'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440881',' ������'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440882',' ������'
union all select 'CN','44', '�㶫ʡ','4408', 'տ����','440883',' �⴨��'
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','',' '
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','440902',' ï����'
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','440904',' �����'
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','440981',' ������'
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','440982',' ������'
union all select 'CN','44', '�㶫ʡ','4409', 'ï����','440983',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','',' '
union all select 'CN','44', '�㶫ʡ','4412', '������','441202',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','441203',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','441204',' ��Ҫ��'
union all select 'CN','44', '�㶫ʡ','4412', '������','441223',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','441224',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','441225',' �⿪��'
union all select 'CN','44', '�㶫ʡ','4412', '������','441226',' ������'
union all select 'CN','44', '�㶫ʡ','4412', '������','441284',' �Ļ���'
union all select 'CN','44', '�㶫ʡ','4413', '������','',' '
union all select 'CN','44', '�㶫ʡ','4413', '������','441302',' �ݳ���'
union all select 'CN','44', '�㶫ʡ','4413', '������','441303',' ������'
union all select 'CN','44', '�㶫ʡ','4413', '������','441322',' ������'
union all select 'CN','44', '�㶫ʡ','4413', '������','441323',' �ݶ���'
union all select 'CN','44', '�㶫ʡ','4413', '������','441324',' ������'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','',' '
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441402',' ÷����'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441403',' ÷����'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441422',' ������'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441423',' ��˳��'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441424',' �廪��'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441426',' ƽԶ��'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441427',' ������'
union all select 'CN','44', '�㶫ʡ','4414', '÷����','441481',' ������'
union all select 'CN','44', '�㶫ʡ','4415', '��β��','',' '
union all select 'CN','44', '�㶫ʡ','4415', '��β��','441502',' ����'
union all select 'CN','44', '�㶫ʡ','4415', '��β��','441521',' ������'
union all select 'CN','44', '�㶫ʡ','4415', '��β��','441523',' ½����'
union all select 'CN','44', '�㶫ʡ','4415', '��β��','441581',' ½����'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','',' '
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441602',' Դ����'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441621',' �Ͻ���'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441622',' ������'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441623',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441624',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4416', '��Դ��','441625',' ��Դ��'
union all select 'CN','44', '�㶫ʡ','4417', '������','',' '
union all select 'CN','44', '�㶫ʡ','4417', '������','441702',' ������'
union all select 'CN','44', '�㶫ʡ','4417', '������','441704',' ������'
union all select 'CN','44', '�㶫ʡ','4417', '������','441721',' ������'
union all select 'CN','44', '�㶫ʡ','4417', '������','441781',' ������'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','',' '
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441802',' �����'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441803',' ������'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441821',' �����'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441823',' ��ɽ��'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441825',' ��ɽ׳������������'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441826',' ��������������'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441881',' Ӣ����'
union all select 'CN','44', '�㶫ʡ','4418', '��Զ��','441882',' ������'
union all select 'CN','44', '�㶫ʡ','4419', '��ݸ��','',' '
union all select 'CN','44', '�㶫ʡ','4420', '��ɽ��','',' '
union all select 'CN','44', '�㶫ʡ','4451', '������','',' '
union all select 'CN','44', '�㶫ʡ','4451', '������','445102',' ������'
union all select 'CN','44', '�㶫ʡ','4451', '������','445103',' ������'
union all select 'CN','44', '�㶫ʡ','4451', '������','445122',' ��ƽ��'
union all select 'CN','44', '�㶫ʡ','4452', '������','',' '
union all select 'CN','44', '�㶫ʡ','4452', '������','445202',' �ų���'
union all select 'CN','44', '�㶫ʡ','4452', '������','445203',' �Ҷ���'
union all select 'CN','44', '�㶫ʡ','4452', '������','445222',' ������'
union all select 'CN','44', '�㶫ʡ','4452', '������','445224',' ������'
union all select 'CN','44', '�㶫ʡ','4452', '������','445281',' ������'
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','',' '
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','445302',' �Ƴ���'
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','445303',' �ư���'
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','445321',' ������'
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','445322',' ������'
union all select 'CN','44', '�㶫ʡ','4453', '�Ƹ���','445381',' �޶���'
union all select 'CN','45', '����׳��������','4500', '','',' '
union all select 'CN','45', '����׳��������','4501', '������','',' '
union all select 'CN','45', '����׳��������','4501', '������','450102',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450103',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450105',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450107',' ��������'
union all select 'CN','45', '����׳��������','4501', '������','450108',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450109',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450110',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450123',' ¡����'
union all select 'CN','45', '����׳��������','4501', '������','450124',' ��ɽ��'
union all select 'CN','45', '����׳��������','4501', '������','450125',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450126',' ������'
union all select 'CN','45', '����׳��������','4501', '������','450127',' ����'
union all select 'CN','45', '����׳��������','4502', '������','',' '
union all select 'CN','45', '����׳��������','4502', '������','450202',' ������'
union all select 'CN','45', '����׳��������','4502', '������','450203',' �����'
union all select 'CN','45', '����׳��������','4502', '������','450204',' ������'
union all select 'CN','45', '����׳��������','4502', '������','450205',' ������'
union all select 'CN','45', '����׳��������','4502', '������','450206',' ������'
union all select 'CN','45', '����׳��������','4502', '������','450222',' ������'
union all select 'CN','45', '����׳��������','4502', '������','450223',' ¹կ��'
union all select 'CN','45', '����׳��������','4502', '������','450224',' �ڰ���'
union all select 'CN','45', '����׳��������','4502', '������','450225',' ��ˮ����������'
union all select 'CN','45', '����׳��������','4502', '������','450226',' ��������������'
union all select 'CN','45', '����׳��������','4503', '������','',' '
union all select 'CN','45', '����׳��������','4503', '������','450302',' �����'
union all select 'CN','45', '����׳��������','4503', '������','450303',' ������'
union all select 'CN','45', '����׳��������','4503', '������','450304',' ��ɽ��'
union all select 'CN','45', '����׳��������','4503', '������','450305',' ������'
union all select 'CN','45', '����׳��������','4503', '������','450311',' ��ɽ��'
union all select 'CN','45', '����׳��������','4503', '������','450312',' �ٹ���'
union all select 'CN','45', '����׳��������','4503', '������','450321',' ��˷��'
union all select 'CN','45', '����׳��������','4503', '������','450323',' �鴨��'
union all select 'CN','45', '����׳��������','4503', '������','450324',' ȫ����'
union all select 'CN','45', '����׳��������','4503', '������','450325',' �˰���'
union all select 'CN','45', '����׳��������','4503', '������','450326',' ������'
union all select 'CN','45', '����׳��������','4503', '������','450327',' ������'
union all select 'CN','45', '����׳��������','4503', '������','450328',' ��ʤ����������'
union all select 'CN','45', '����׳��������','4503', '������','450329',' ��Դ��'
union all select 'CN','45', '����׳��������','4503', '������','450330',' ƽ����'
union all select 'CN','45', '����׳��������','4503', '������','450332',' ��������������'
union all select 'CN','45', '����׳��������','4503', '������','450381',' ������'
union all select 'CN','45', '����׳��������','4504', '������','',' '
union all select 'CN','45', '����׳��������','4504', '������','450403',' ������'
union all select 'CN','45', '����׳��������','4504', '������','450405',' ������'
union all select 'CN','45', '����׳��������','4504', '������','450406',' ������'
union all select 'CN','45', '����׳��������','4504', '������','450421',' ������'
union all select 'CN','45', '����׳��������','4504', '������','450422',' ����'
union all select 'CN','45', '����׳��������','4504', '������','450423',' ��ɽ��'
union all select 'CN','45', '����׳��������','4504', '������','450481',' �Ϫ��'
union all select 'CN','45', '����׳��������','4505', '������','',' '
union all select 'CN','45', '����׳��������','4505', '������','450502',' ������'
union all select 'CN','45', '����׳��������','4505', '������','450503',' ������'
union all select 'CN','45', '����׳��������','4505', '������','450512',' ��ɽ����'
union all select 'CN','45', '����׳��������','4505', '������','450521',' ������'
union all select 'CN','45', '����׳��������','4506', '���Ǹ���','',' '
union all select 'CN','45', '����׳��������','4506', '���Ǹ���','450602',' �ۿ���'
union all select 'CN','45', '����׳��������','4506', '���Ǹ���','450603',' ������'
union all select 'CN','45', '����׳��������','4506', '���Ǹ���','450621',' ��˼��'
union all select 'CN','45', '����׳��������','4506', '���Ǹ���','450681',' ������'
union all select 'CN','45', '����׳��������','4507', '������','',' '
union all select 'CN','45', '����׳��������','4507', '������','450702',' ������'
union all select 'CN','45', '����׳��������','4507', '������','450703',' �ձ���'
union all select 'CN','45', '����׳��������','4507', '������','450721',' ��ɽ��'
union all select 'CN','45', '����׳��������','4507', '������','450722',' �ֱ���'
union all select 'CN','45', '����׳��������','4508', '�����','',' '
union all select 'CN','45', '����׳��������','4508', '�����','450802',' �۱���'
union all select 'CN','45', '����׳��������','4508', '�����','450803',' ������'
union all select 'CN','45', '����׳��������','4508', '�����','450804',' ������'
union all select 'CN','45', '����׳��������','4508', '�����','450821',' ƽ����'
union all select 'CN','45', '����׳��������','4508', '�����','450881',' ��ƽ��'
union all select 'CN','45', '����׳��������','4509', '������','',' '
union all select 'CN','45', '����׳��������','4509', '������','450902',' ������'
union all select 'CN','45', '����׳��������','4509', '������','450903',' ������'
union all select 'CN','45', '����׳��������','4509', '������','450921',' ����'
union all select 'CN','45', '����׳��������','4509', '������','450922',' ½����'
union all select 'CN','45', '����׳��������','4509', '������','450923',' ������'
union all select 'CN','45', '����׳��������','4509', '������','450924',' ��ҵ��'
union all select 'CN','45', '����׳��������','4509', '������','450981',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','',' '
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451002',' �ҽ���'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451021',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451022',' �ﶫ��'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451023',' ƽ����'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451024',' �±���'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451026',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451027',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451028',' ��ҵ��'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451029',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451030',' ������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451031',' ¡�ָ���������'
union all select 'CN','45', '����׳��������','4510', '��ɫ��','451081',' ������'
union all select 'CN','45', '����׳��������','4511', '������','',' '
union all select 'CN','45', '����׳��������','4511', '������','451102',' �˲���'
union all select 'CN','45', '����׳��������','4511', '������','451103',' ƽ����'
union all select 'CN','45', '����׳��������','4511', '������','451121',' ��ƽ��'
union all select 'CN','45', '����׳��������','4511', '������','451122',' ��ɽ��'
union all select 'CN','45', '����׳��������','4511', '������','451123',' ��������������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','',' '
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451202',' ��ǽ���'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451203',' ������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451221',' �ϵ���'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451222',' �����'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451223',' ��ɽ��'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451224',' ������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451225',' �޳�������������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451226',' ����ë����������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451227',' ��������������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451228',' ��������������'
union all select 'CN','45', '����׳��������','4512', '�ӳ���','451229',' ������������'
union all select 'CN','45', '����׳��������','4513', '������','',' '
union all select 'CN','45', '����׳��������','4513', '������','451302',' �˱���'
union all select 'CN','45', '����׳��������','4513', '������','451321',' �ó���'
union all select 'CN','45', '����׳��������','4513', '������','451322',' ������'
union all select 'CN','45', '����׳��������','4513', '������','451323',' ������'
union all select 'CN','45', '����׳��������','4513', '������','451324',' ��������������'
union all select 'CN','45', '����׳��������','4513', '������','451381',' ��ɽ��'
union all select 'CN','45', '����׳��������','4514', '������','',' '
union all select 'CN','45', '����׳��������','4514', '������','451402',' ������'
union all select 'CN','45', '����׳��������','4514', '������','451421',' ������'
union all select 'CN','45', '����׳��������','4514', '������','451422',' ������'
union all select 'CN','45', '����׳��������','4514', '������','451423',' ������'
union all select 'CN','45', '����׳��������','4514', '������','451424',' ������'
union all select 'CN','45', '����׳��������','4514', '������','451425',' �����'
union all select 'CN','45', '����׳��������','4514', '������','451481',' ƾ����'
union all select 'CN','46', '����ʡ','4600', '','',' '
union all select 'CN','46', '����ʡ','4601', '������','',' '
union all select 'CN','46', '����ʡ','4601', '������','460105',' ��Ӣ��'
union all select 'CN','46', '����ʡ','4601', '������','460106',' ������'
union all select 'CN','46', '����ʡ','4601', '������','460107',' ��ɽ��'
union all select 'CN','46', '����ʡ','4601', '������','460108',' ������'
union all select 'CN','46', '����ʡ','4602', '������','',' '
union all select 'CN','46', '����ʡ','4602', '������','460202',' ������'
union all select 'CN','46', '����ʡ','4602', '������','460203',' ������'
union all select 'CN','46', '����ʡ','4602', '������','460204',' ������'
union all select 'CN','46', '����ʡ','4602', '������','460205',' ������'
union all select 'CN','46', '����ʡ','4603', '��ɳ��','',' '
union all select 'CN','46', '����ʡ','4604', '������','',' '
union all select 'CN','46', '����ʡ','4690', '','469001',' ��ָɽ��'
union all select 'CN','46', '����ʡ','4690', '','469002',' ����'
union all select 'CN','46', '����ʡ','4690', '','469005',' �Ĳ���'
union all select 'CN','46', '����ʡ','4690', '','469006',' ������'
union all select 'CN','46', '����ʡ','4690', '','469007',' ������'
union all select 'CN','46', '����ʡ','4690', '','469021',' ������'
union all select 'CN','46', '����ʡ','4690', '','469022',' �Ͳ���'
union all select 'CN','46', '����ʡ','4690', '','469023',' ������'
union all select 'CN','46', '����ʡ','4690', '','469024',' �ٸ���'
union all select 'CN','46', '����ʡ','4690', '','469025',' ��ɳ����������'
union all select 'CN','46', '����ʡ','4690', '','469026',' ��������������'
union all select 'CN','46', '����ʡ','4690', '','469027',' �ֶ�����������'
union all select 'CN','46', '����ʡ','4690', '','469028',' ��ˮ����������'
union all select 'CN','46', '����ʡ','4690', '','469029',' ��ͤ��������������'
union all select 'CN','46', '����ʡ','4690', '','469030',' ������������������'
union all select 'CN','50', '������','5000', '������','',' '
union all select 'CN','50', '������','5001', '������','500101',' ������'
union all select 'CN','50', '������','5001', '������','500102',' ������'
union all select 'CN','50', '������','5001', '������','500103',' ������'
union all select 'CN','50', '������','5001', '������','500104',' ��ɿ���'
union all select 'CN','50', '������','5001', '������','500105',' ������'
union all select 'CN','50', '������','5001', '������','500106',' ɳƺ����'
union all select 'CN','50', '������','5001', '������','500107',' ��������'
union all select 'CN','50', '������','5001', '������','500108',' �ϰ���'
union all select 'CN','50', '������','5001', '������','500109',' ������'
union all select 'CN','50', '������','5001', '������','500110',' �뽭��'
union all select 'CN','50', '������','5001', '������','500111',' ������'
union all select 'CN','50', '������','5001', '������','500112',' �山��'
union all select 'CN','50', '������','5001', '������','500113',' ������'
union all select 'CN','50', '������','5001', '������','500114',' ǭ����'
union all select 'CN','50', '������','5001', '������','500115',' ������'
union all select 'CN','50', '������','5001', '������','500116',' ������'
union all select 'CN','50', '������','5001', '������','500117',' �ϴ���'
union all select 'CN','50', '������','5001', '������','500118',' ������'
union all select 'CN','50', '������','5001', '������','500119',' �ϴ���'
union all select 'CN','50', '������','5001', '������','500120',' �ɽ��'
union all select 'CN','50', '������','5001', '������','500151',' ͭ����'
union all select 'CN','50', '������','5001', '������','500152',' ������'
union all select 'CN','50', '������','5001', '������','500153',' �ٲ���'
union all select 'CN','50', '������','5001', '������','500154',' ������'
union all select 'CN','50', '������','5001', '������','500155',' ��ƽ��'
union all select 'CN','50', '������','5001', '������','500156',' ��¡��'
union all select 'CN','50', '������','5002', '������','500229',' �ǿ���'
union all select 'CN','50', '������','5002', '������','500230',' �ᶼ��'
union all select 'CN','50', '������','5002', '������','500231',' �潭��'
union all select 'CN','50', '������','5002', '������','500233',' ����'
union all select 'CN','50', '������','5002', '������','500235',' ������'
union all select 'CN','50', '������','5002', '������','500236',' �����'
union all select 'CN','50', '������','5002', '������','500237',' ��ɽ��'
union all select 'CN','50', '������','5002', '������','500238',' ��Ϫ��'
union all select 'CN','50', '������','5002', '������','500240',' ʯ��������������'
union all select 'CN','50', '������','5002', '������','500241',' ��ɽ����������������'
union all select 'CN','50', '������','5002', '������','500242',' ��������������������'
union all select 'CN','50', '������','5002', '������','500243',' ��ˮ����������������'
union all select 'CN','51', '�Ĵ�ʡ','5100', '','',' '
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510104',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510105',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510106',' ��ţ��'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510107',' �����'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510108',' �ɻ���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510112',' ��Ȫ����'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510113',' ��׽���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510114',' �¶���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510115',' �½���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510116',' ˫����'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510117',' ۯ����'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510121',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510129',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510131',' �ѽ���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510132',' �½���'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510181',' ��������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510182',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510183',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510184',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5101', '�ɶ���','510185',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510302',' ��������'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510303',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510304',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510311',' ��̲��'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510321',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5103', '�Թ���','510322',' ��˳��'
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','',' '
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','510402',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','510403',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','510411',' �ʺ���'
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','510421',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5104', '��֦����','510422',' �α���'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510502',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510503',' ��Ϫ��'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510504',' ����̶��'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510521',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510522',' �Ͻ���'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510524',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5105', '������','510525',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510603',' �����'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510604',' �޽���'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510623',' �н���'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510681',' �㺺��'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510682',' ʲ����'
union all select 'CN','51', '�Ĵ�ʡ','5106', '������','510683',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510703',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510704',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510705',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510722',' ��̨��'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510723',' ��ͤ��'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510725',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510726',' ����Ǽ��������'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510727',' ƽ����'
union all select 'CN','51', '�Ĵ�ʡ','5107', '������','510781',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','',' '
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510802',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510811',' �ѻ���'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510812',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510821',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510822',' �ന��'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510823',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5108', '��Ԫ��','510824',' ��Ϫ��'
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','510903',' ��ɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','510904',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','510921',' ��Ϫ��'
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','510922',' �����'
union all select 'CN','51', '�Ĵ�ʡ','5109', '������','510923',' ��Ӣ��'
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','511002',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','511011',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','511024',' ��Զ��'
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','511025',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5110', '�ڽ���','511083',' ¡����'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','',' '
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511102',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511111',' ɳ����'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511112',' ��ͨ����'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511113',' ��ں���'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511123',' ��Ϊ��'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511124',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511126',' �н���'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511129',' �崨��'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511132',' �������������'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511133',' �������������'
union all select 'CN','51', '�Ĵ�ʡ','5111', '��ɽ��','511181',' ��üɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511302',' ˳����'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511303',' ��ƺ��'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511304',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511321',' �ϲ���'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511322',' Ӫɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511323',' ���'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511324',' ��¤��'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511325',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5113', '�ϳ���','511381',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','',' '
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511402',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511403',' ��ɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511421',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511423',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511424',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5114', 'üɽ��','511425',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511502',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511503',' ��Ϫ��'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511504',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511523',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511524',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511525',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511526',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511527',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511528',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5115', '�˱���','511529',' ��ɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','',' '
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511602',' �㰲��'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511603',' ǰ����'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511621',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511622',' ��ʤ��'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511623',' ��ˮ��'
union all select 'CN','51', '�Ĵ�ʡ','5116', '�㰲��','511681',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511702',' ͨ����'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511703',' �ﴨ��'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511722',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511723',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511724',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511725',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5117', '������','511781',' ��Դ��'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','',' '
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511802',' �����'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511803',' ��ɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511822',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511823',' ��Դ��'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511824',' ʯ����'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511825',' ��ȫ��'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511826',' «ɽ��'
union all select 'CN','51', '�Ĵ�ʡ','5118', '�Ű���','511827',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','511902',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','511903',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','511921',' ͨ����'
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','511922',' �Ͻ���'
union all select 'CN','51', '�Ĵ�ʡ','5119', '������','511923',' ƽ����'
union all select 'CN','51', '�Ĵ�ʡ','5120', '������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5120', '������','512002',' �㽭��'
union all select 'CN','51', '�Ĵ�ʡ','5120', '������','512021',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5120', '������','512022',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513201',' �������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513221',' �봨��'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513222',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513223',' ï��'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513224',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513225',' ��կ����'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513226',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513227',' С����'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513228',' ��ˮ��'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513230',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513231',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513232',' ��������'
union all select 'CN','51', '�Ĵ�ʡ','5132', '���Ӳ���Ǽ��������','513233',' ��ԭ��'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513301',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513322',' ����'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513323',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513324',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513325',' �Ž���'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513326',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513327',' ¯����'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513328',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513329',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513330',' �¸���'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513331',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513332',' ʯ����'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513333',' ɫ����'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513334',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513335',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513336',' �����'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513337',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5133', '���β���������','513338',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','',' '
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513401',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513422',' ľ�����������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513423',' ��Դ��'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513424',' �²���'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513425',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513426',' �ᶫ��'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513427',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513428',' �ո���'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513429',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513430',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513431',' �Ѿ���'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513432',' ϲ����'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513433',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513434',' Խ����'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513435',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513436',' ������'
union all select 'CN','51', '�Ĵ�ʡ','5134', '��ɽ����������','513437',' �ײ���'
union all select 'CN','52', '����ʡ','5200', '','',' '
union all select 'CN','52', '����ʡ','5201', '������','',' '
union all select 'CN','52', '����ʡ','5201', '������','520102',' ������'
union all select 'CN','52', '����ʡ','5201', '������','520103',' ������'
union all select 'CN','52', '����ʡ','5201', '������','520111',' ��Ϫ��'
union all select 'CN','52', '����ʡ','5201', '������','520112',' �ڵ���'
union all select 'CN','52', '����ʡ','5201', '������','520113',' ������'
union all select 'CN','52', '����ʡ','5201', '������','520115',' ��ɽ����'
union all select 'CN','52', '����ʡ','5201', '������','520121',' ������'
union all select 'CN','52', '����ʡ','5201', '������','520122',' Ϣ����'
union all select 'CN','52', '����ʡ','5201', '������','520123',' ������'
union all select 'CN','52', '����ʡ','5201', '������','520181',' ������'
union all select 'CN','52', '����ʡ','5202', '����ˮ��','',' '
union all select 'CN','52', '����ʡ','5202', '����ˮ��','520201',' ��ɽ��'
union all select 'CN','52', '����ʡ','5202', '����ˮ��','520203',' ��֦����'
union all select 'CN','52', '����ʡ','5202', '����ˮ��','520221',' ˮ����'
union all select 'CN','52', '����ʡ','5202', '����ˮ��','520281',' ������'
union all select 'CN','52', '����ʡ','5203', '������','',' '
union all select 'CN','52', '����ʡ','5203', '������','520302',' �컨����'
union all select 'CN','52', '����ʡ','5203', '������','520303',' �㴨��'
union all select 'CN','52', '����ʡ','5203', '������','520304',' ������'
union all select 'CN','52', '����ʡ','5203', '������','520322',' ͩ����'
union all select 'CN','52', '����ʡ','5203', '������','520323',' ������'
union all select 'CN','52', '����ʡ','5203', '������','520324',' ������'
union all select 'CN','52', '����ʡ','5203', '������','520325',' ��������������������'
union all select 'CN','52', '����ʡ','5203', '������','520326',' ������������������'
union all select 'CN','52', '����ʡ','5203', '������','520327',' �����'
union all select 'CN','52', '����ʡ','5203', '������','520328',' ��̶��'
union all select 'CN','52', '����ʡ','5203', '������','520329',' ������'
union all select 'CN','52', '����ʡ','5203', '������','520330',' ϰˮ��'
union all select 'CN','52', '����ʡ','5203', '������','520381',' ��ˮ��'
union all select 'CN','52', '����ʡ','5203', '������','520382',' �ʻ���'
union all select 'CN','52', '����ʡ','5204', '��˳��','',' '
union all select 'CN','52', '����ʡ','5204', '��˳��','520402',' ������'
union all select 'CN','52', '����ʡ','5204', '��˳��','520403',' ƽ����'
union all select 'CN','52', '����ʡ','5204', '��˳��','520422',' �ն���'
union all select 'CN','52', '����ʡ','5204', '��˳��','520423',' ��������������������'
union all select 'CN','52', '����ʡ','5204', '��˳��','520424',' ���벼��������������'
union all select 'CN','52', '����ʡ','5204', '��˳��','520425',' �������岼����������'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','',' '
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520502',' ���ǹ���'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520521',' ����'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520522',' ǭ����'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520523',' ��ɳ��'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520524',' ֯����'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520525',' ��Ӻ��'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520526',' ���������������������'
union all select 'CN','52', '����ʡ','5205', '�Ͻ���','520527',' ������'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','',' '
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520602',' �̽���'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520603',' ��ɽ��'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520621',' ������'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520622',' ��������������'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520623',' ʯ����'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520624',' ˼����'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520625',' ӡ������������������'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520626',' �½���'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520627',' �غ�������������'
union all select 'CN','52', '����ʡ','5206', 'ͭ����','520628',' ��������������'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','',' '
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522301',' ������'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522302',' ������'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522323',' �հ���'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522324',' ��¡��'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522325',' �����'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522326',' ������'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522327',' �����'
union all select 'CN','52', '����ʡ','5223', 'ǭ���ϲ���������������','522328',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','',' '
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522601',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522622',' ��ƽ��'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522623',' ʩ����'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522624',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522625',' ��Զ��'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522626',' ᯹���'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522627',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522628',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522629',' ������'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522630',' ̨����'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522631',' ��ƽ��'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522632',' �Ž���'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522633',' �ӽ���'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522634',' ��ɽ��'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522635',' �齭��'
union all select 'CN','52', '����ʡ','5226', 'ǭ�������嶱��������','522636',' ��կ��'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','',' '
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522701',' ������'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522702',' ��Ȫ��'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522722',' ����'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522723',' ����'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522725',' �Ͱ���'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522726',' ��ɽ��'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522727',' ƽ����'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522728',' �޵���'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522729',' ��˳��'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522730',' ������'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522731',' ��ˮ��'
union all select 'CN','52', '����ʡ','5227', 'ǭ�ϲ���������������','522732',' ����ˮ��������'
union all select 'CN','53', '����ʡ','5300', '','',' '
union all select 'CN','53', '����ʡ','5301', '������','',' '
union all select 'CN','53', '����ʡ','5301', '������','530102',' �廪��'
union all select 'CN','53', '����ʡ','5301', '������','530103',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530111',' �ٶ���'
union all select 'CN','53', '����ʡ','5301', '������','530112',' ��ɽ��'
union all select 'CN','53', '����ʡ','5301', '������','530113',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530114',' �ʹ���'
union all select 'CN','53', '����ʡ','5301', '������','530115',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530124',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530125',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530126',' ʯ������������'
union all select 'CN','53', '����ʡ','5301', '������','530127',' ������'
union all select 'CN','53', '����ʡ','5301', '������','530128',' »Ȱ��������������'
union all select 'CN','53', '����ʡ','5301', '������','530129',' Ѱ���������������'
union all select 'CN','53', '����ʡ','5301', '������','530181',' ������'
union all select 'CN','53', '����ʡ','5303', '������','',' '
union all select 'CN','53', '����ʡ','5303', '������','530302',' ������'
union all select 'CN','53', '����ʡ','5303', '������','530303',' մ����'
union all select 'CN','53', '����ʡ','5303', '������','530304',' ������'
union all select 'CN','53', '����ʡ','5303', '������','530322',' ½����'
union all select 'CN','53', '����ʡ','5303', '������','530323',' ʦ����'
union all select 'CN','53', '����ʡ','5303', '������','530324',' ��ƽ��'
union all select 'CN','53', '����ʡ','5303', '������','530325',' ��Դ��'
union all select 'CN','53', '����ʡ','5303', '������','530326',' ������'
union all select 'CN','53', '����ʡ','5303', '������','530381',' ������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','',' '
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530402',' ������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530403',' ������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530422',' �ν���'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530423',' ͨ����'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530424',' ������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530425',' ������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530426',' ��ɽ����������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530427',' ��ƽ�������������'
union all select 'CN','53', '����ʡ','5304', '��Ϫ��','530428',' Ԫ���������������������'
union all select 'CN','53', '����ʡ','5305', '��ɽ��','',' '
union all select 'CN','53', '����ʡ','5305', '��ɽ��','530502',' ¡����'
union all select 'CN','53', '����ʡ','5305', '��ɽ��','530521',' ʩ����'
union all select 'CN','53', '����ʡ','5305', '��ɽ��','530523',' ������'
union all select 'CN','53', '����ʡ','5305', '��ɽ��','530524',' ������'
union all select 'CN','53', '����ʡ','5305', '��ɽ��','530581',' �ڳ���'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','',' '
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530602',' ������'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530621',' ³����'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530622',' �ɼ���'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530623',' �ν���'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530624',' �����'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530625',' ������'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530626',' �罭��'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530627',' ������'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530628',' ������'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530629',' ������'
union all select 'CN','53', '����ʡ','5306', '��ͨ��','530681',' ˮ����'
union all select 'CN','53', '����ʡ','5307', '������','',' '
union all select 'CN','53', '����ʡ','5307', '������','530702',' �ų���'
union all select 'CN','53', '����ʡ','5307', '������','530721',' ����������������'
union all select 'CN','53', '����ʡ','5307', '������','530722',' ��ʤ��'
union all select 'CN','53', '����ʡ','5307', '������','530723',' ��ƺ��'
union all select 'CN','53', '����ʡ','5307', '������','530724',' ��������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','',' '
union all select 'CN','53', '����ʡ','5308', '�ն���','530802',' ˼é��'
union all select 'CN','53', '����ʡ','5308', '�ն���','530821',' ��������������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530822',' ī��������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530823',' ��������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530824',' ���ȴ�������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530825',' �������������������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530826',' ���ǹ���������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530827',' ������������������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530828',' ����������������'
union all select 'CN','53', '����ʡ','5308', '�ն���','530829',' ��������������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','',' '
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530902',' ������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530921',' ������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530922',' ����'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530923',' ������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530924',' ����'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530925',' ˫�����������岼�������������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530926',' �����������������'
union all select 'CN','53', '����ʡ','5309', '�ٲ���','530927',' ��Դ����������'
union all select 'CN','53', '����ʡ','5323', '��������������','',' '
union all select 'CN','53', '����ʡ','5323', '��������������','532301',' ������'
union all select 'CN','53', '����ʡ','5323', '��������������','532322',' ˫����'
union all select 'CN','53', '����ʡ','5323', '��������������','532323',' Ĳ����'
union all select 'CN','53', '����ʡ','5323', '��������������','532324',' �ϻ���'
union all select 'CN','53', '����ʡ','5323', '��������������','532325',' Ҧ����'
union all select 'CN','53', '����ʡ','5323', '��������������','532326',' ��Ҧ��'
union all select 'CN','53', '����ʡ','5323', '��������������','532327',' ������'
union all select 'CN','53', '����ʡ','5323', '��������������','532328',' Ԫı��'
union all select 'CN','53', '����ʡ','5323', '��������������','532329',' �䶨��'
union all select 'CN','53', '����ʡ','5323', '��������������','532331',' »����'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','',' '
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532501',' ������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532502',' ��Զ��'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532503',' ������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532504',' ������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532523',' ��������������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532524',' ��ˮ��'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532525',' ʯ����'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532527',' ������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532528',' Ԫ����'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532529',' �����'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532530',' ��ƽ�����������������'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532531',' �̴���'
union all select 'CN','53', '����ʡ','5325', '��ӹ���������������','532532',' �ӿ�����������'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','',' '
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532601',' ��ɽ��'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532622',' ��ɽ��'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532623',' ������'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532624',' ��������'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532625',' �����'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532626',' ����'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532627',' ������'
union all select 'CN','53', '����ʡ','5326', '��ɽ׳������������','532628',' ������'
union all select 'CN','53', '����ʡ','5328', '��˫���ɴ���������','',' '
union all select 'CN','53', '����ʡ','5328', '��˫���ɴ���������','532801',' ������'
union all select 'CN','53', '����ʡ','5328', '��˫���ɴ���������','532822',' �º���'
union all select 'CN','53', '����ʡ','5328', '��˫���ɴ���������','532823',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','',' '
union all select 'CN','53', '����ʡ','5329', '�������������','532901',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','532922',' �������������'
union all select 'CN','53', '����ʡ','5329', '�������������','532923',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','532924',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','532925',' �ֶ���'
union all select 'CN','53', '����ʡ','5329', '�������������','532926',' �Ͻ�����������'
union all select 'CN','53', '����ʡ','5329', '�������������','532927',' Ρɽ�������������'
union all select 'CN','53', '����ʡ','5329', '�������������','532928',' ��ƽ��'
union all select 'CN','53', '����ʡ','5329', '�������������','532929',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','532930',' ��Դ��'
union all select 'CN','53', '����ʡ','5329', '�������������','532931',' ������'
union all select 'CN','53', '����ʡ','5329', '�������������','532932',' ������'
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','',' '
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','533102',' ������'
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','533103',' â��'
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','533122',' ������'
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','533123',' ӯ����'
union all select 'CN','53', '����ʡ','5331', '�º���徰����������','533124',' ¤����'
union all select 'CN','53', '����ʡ','5333', 'ŭ��������������','',' '
union all select 'CN','53', '����ʡ','5333', 'ŭ��������������','533301',' ��ˮ��'
union all select 'CN','53', '����ʡ','5333', 'ŭ��������������','533323',' ������'
union all select 'CN','53', '����ʡ','5333', 'ŭ��������������','533324',' ��ɽ������ŭ��������'
union all select 'CN','53', '����ʡ','5333', 'ŭ��������������','533325',' ��ƺ����������������'
union all select 'CN','53', '����ʡ','5334', '�������������','',' '
union all select 'CN','53', '����ʡ','5334', '�������������','533401',' ���������'
union all select 'CN','53', '����ʡ','5334', '�������������','533422',' ������'
union all select 'CN','53', '����ʡ','5334', '�������������','533423',' ά��������������'
union all select 'CN','54', '����������','5400', '','',' '
union all select 'CN','54', '����������','5401', '������','',' '
union all select 'CN','54', '����������','5401', '������','540102',' �ǹ���'
union all select 'CN','54', '����������','5401', '������','540103',' ����������'
union all select 'CN','54', '����������','5401', '������','540104',' ������'
union all select 'CN','54', '����������','5401', '������','540121',' ������'
union all select 'CN','54', '����������','5401', '������','540122',' ������'
union all select 'CN','54', '����������','5401', '������','540123',' ��ľ��'
union all select 'CN','54', '����������','5401', '������','540124',' ��ˮ��'
union all select 'CN','54', '����������','5401', '������','540127',' ī�񹤿���'
union all select 'CN','54', '����������','5402', '�տ�����','',' '
union all select 'CN','54', '����������','5402', '�տ�����','540202',' ɣ������'
union all select 'CN','54', '����������','5402', '�տ�����','540221',' ��ľ����'
union all select 'CN','54', '����������','5402', '�տ�����','540222',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540223',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540224',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540225',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540226',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540227',' лͨ����'
union all select 'CN','54', '����������','5402', '�տ�����','540228',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540229',' �ʲ���'
union all select 'CN','54', '����������','5402', '�տ�����','540230',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540231',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540232',' �ٰ���'
union all select 'CN','54', '����������','5402', '�տ�����','540233',' �Ƕ���'
union all select 'CN','54', '����������','5402', '�տ�����','540234',' ��¡��'
union all select 'CN','54', '����������','5402', '�տ�����','540235',' ����ľ��'
union all select 'CN','54', '����������','5402', '�տ�����','540236',' ������'
union all select 'CN','54', '����������','5402', '�տ�����','540237',' �ڰ���'
union all select 'CN','54', '����������','5403', '������','',' '
union all select 'CN','54', '����������','5403', '������','540302',' ������'
union all select 'CN','54', '����������','5403', '������','540321',' ������'
union all select 'CN','54', '����������','5403', '������','540322',' ������'
union all select 'CN','54', '����������','5403', '������','540323',' ��������'
union all select 'CN','54', '����������','5403', '������','540324',' ������'
union all select 'CN','54', '����������','5403', '������','540325',' ������'
union all select 'CN','54', '����������','5403', '������','540326',' ������'
union all select 'CN','54', '����������','5403', '������','540327',' ����'
union all select 'CN','54', '����������','5403', '������','540328',' â����'
union all select 'CN','54', '����������','5403', '������','540329',' ��¡��'
union all select 'CN','54', '����������','5403', '������','540330',' �߰���'
union all select 'CN','54', '����������','5404', '��֥��','',' '
union all select 'CN','54', '����������','5404', '��֥��','540402',' ������'
union all select 'CN','54', '����������','5404', '��֥��','540421',' ����������'
union all select 'CN','54', '����������','5404', '��֥��','540422',' ������'
union all select 'CN','54', '����������','5404', '��֥��','540423',' ī����'
union all select 'CN','54', '����������','5404', '��֥��','540424',' ������'
union all select 'CN','54', '����������','5404', '��֥��','540425',' ������'
union all select 'CN','54', '����������','5404', '��֥��','540426',' ����'
union all select 'CN','54', '����������','5405', 'ɽ����','',' '
union all select 'CN','54', '����������','5405', 'ɽ����','540502',' �˶���'
union all select 'CN','54', '����������','5405', 'ɽ����','540521',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540522',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540523',' ɣ����'
union all select 'CN','54', '����������','5405', 'ɽ����','540524',' �����'
union all select 'CN','54', '����������','5405', 'ɽ����','540525',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540526',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540527',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540528',' �Ӳ���'
union all select 'CN','54', '����������','5405', 'ɽ����','540529',' ¡����'
union all select 'CN','54', '����������','5405', 'ɽ����','540530',' ������'
union all select 'CN','54', '����������','5405', 'ɽ����','540531',' �˿�����'
union all select 'CN','54', '����������','5406', '������','',' '
union all select 'CN','54', '����������','5406', '������','540602',' ɫ����'
union all select 'CN','54', '����������','5406', '������','540621',' ������'
union all select 'CN','54', '����������','5406', '������','540622',' ������'
union all select 'CN','54', '����������','5406', '������','540623',' ������'
union all select 'CN','54', '����������','5406', '������','540624',' ������'
union all select 'CN','54', '����������','5406', '������','540625',' ������'
union all select 'CN','54', '����������','5406', '������','540626',' ����'
union all select 'CN','54', '����������','5406', '������','540627',' �����'
union all select 'CN','54', '����������','5406', '������','540628',' ������'
union all select 'CN','54', '����������','5406', '������','540629',' ������'
union all select 'CN','54', '����������','5406', '������','540630',' ˫����'
union all select 'CN','54', '����������','5425', '�������','',' '
union all select 'CN','54', '����������','5425', '�������','542521',' ������'
union all select 'CN','54', '����������','5425', '�������','542522',' ������'
union all select 'CN','54', '����������','5425', '�������','542523',' ������'
union all select 'CN','54', '����������','5425', '�������','542524',' ������'
union all select 'CN','54', '����������','5425', '�������','542525',' �Ｊ��'
union all select 'CN','54', '����������','5425', '�������','542526',' ������'
union all select 'CN','54', '����������','5425', '�������','542527',' ������'
union all select 'CN','61', '����ʡ','6100', '','',' '
union all select 'CN','61', '����ʡ','6101', '������','',' '
union all select 'CN','61', '����ʡ','6101', '������','610102',' �³���'
union all select 'CN','61', '����ʡ','6101', '������','610103',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610104',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610111',' �����'
union all select 'CN','61', '����ʡ','6101', '������','610112',' δ����'
union all select 'CN','61', '����ʡ','6101', '������','610113',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610114',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610115',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610116',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610117',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610118',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610122',' ������'
union all select 'CN','61', '����ʡ','6101', '������','610124',' ������'
union all select 'CN','61', '����ʡ','6102', 'ͭ����','',' '
union all select 'CN','61', '����ʡ','6102', 'ͭ����','610202',' ������'
union all select 'CN','61', '����ʡ','6102', 'ͭ����','610203',' ӡ̨��'
union all select 'CN','61', '����ʡ','6102', 'ͭ����','610204',' ҫ����'
union all select 'CN','61', '����ʡ','6102', 'ͭ����','610222',' �˾���'
union all select 'CN','61', '����ʡ','6103', '������','',' '
union all select 'CN','61', '����ʡ','6103', '������','610302',' μ����'
union all select 'CN','61', '����ʡ','6103', '������','610303',' ��̨��'
union all select 'CN','61', '����ʡ','6103', '������','610304',' �²���'
union all select 'CN','61', '����ʡ','6103', '������','610322',' ������'
union all select 'CN','61', '����ʡ','6103', '������','610323',' �ɽ��'
union all select 'CN','61', '����ʡ','6103', '������','610324',' ������'
union all select 'CN','61', '����ʡ','6103', '������','610326',' ü��'
union all select 'CN','61', '����ʡ','6103', '������','610327',' ¤��'
union all select 'CN','61', '����ʡ','6103', '������','610328',' ǧ����'
union all select 'CN','61', '����ʡ','6103', '������','610329',' ������'
union all select 'CN','61', '����ʡ','6103', '������','610330',' ����'
union all select 'CN','61', '����ʡ','6103', '������','610331',' ̫����'
union all select 'CN','61', '����ʡ','6104', '������','',' '
union all select 'CN','61', '����ʡ','6104', '������','610402',' �ض���'
union all select 'CN','61', '����ʡ','6104', '������','610403',' ������'
union all select 'CN','61', '����ʡ','6104', '������','610404',' μ����'
union all select 'CN','61', '����ʡ','6104', '������','610422',' ��ԭ��'
union all select 'CN','61', '����ʡ','6104', '������','610423',' ������'
union all select 'CN','61', '����ʡ','6104', '������','610424',' Ǭ��'
union all select 'CN','61', '����ʡ','6104', '������','610425',' ��Ȫ��'
union all select 'CN','61', '����ʡ','6104', '������','610426',' ������'
union all select 'CN','61', '����ʡ','6104', '������','610428',' ������'
union all select 'CN','61', '����ʡ','6104', '������','610429',' Ѯ����'
union all select 'CN','61', '����ʡ','6104', '������','610430',' ������'
union all select 'CN','61', '����ʡ','6104', '������','610431',' �书��'
union all select 'CN','61', '����ʡ','6104', '������','610481',' ��ƽ��'
union all select 'CN','61', '����ʡ','6104', '������','610482',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','',' '
union all select 'CN','61', '����ʡ','6105', 'μ����','610502',' ��μ��'
union all select 'CN','61', '����ʡ','6105', 'μ����','610503',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','610522',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','610523',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','610524',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','610525',' �γ���'
union all select 'CN','61', '����ʡ','6105', 'μ����','610526',' �ѳ���'
union all select 'CN','61', '����ʡ','6105', 'μ����','610527',' ��ˮ��'
union all select 'CN','61', '����ʡ','6105', 'μ����','610528',' ��ƽ��'
union all select 'CN','61', '����ʡ','6105', 'μ����','610581',' ������'
union all select 'CN','61', '����ʡ','6105', 'μ����','610582',' ������'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','',' '
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610602',' ������'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610603',' ������'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610621',' �ӳ���'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610622',' �Ӵ���'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610623',' �ӳ���'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610625',' ־����'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610626',' ������'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610627',' ��Ȫ��'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610628',' ����'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610629',' �崨��'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610630',' �˴���'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610631',' ������'
union all select 'CN','61', '����ʡ','6106', '�Ӱ���','610632',' ������'
union all select 'CN','61', '����ʡ','6107', '������','',' '
union all select 'CN','61', '����ʡ','6107', '������','610702',' ��̨��'
union all select 'CN','61', '����ʡ','6107', '������','610703',' ��֣��'
union all select 'CN','61', '����ʡ','6107', '������','610722',' �ǹ���'
union all select 'CN','61', '����ʡ','6107', '������','610723',' ����'
union all select 'CN','61', '����ʡ','6107', '������','610724',' ������'
union all select 'CN','61', '����ʡ','6107', '������','610725',' ����'
union all select 'CN','61', '����ʡ','6107', '������','610726',' ��ǿ��'
union all select 'CN','61', '����ʡ','6107', '������','610727',' ������'
union all select 'CN','61', '����ʡ','6107', '������','610728',' �����'
union all select 'CN','61', '����ʡ','6107', '������','610729',' ������'
union all select 'CN','61', '����ʡ','6107', '������','610730',' ��ƺ��'
union all select 'CN','61', '����ʡ','6108', '������','',' '
union all select 'CN','61', '����ʡ','6108', '������','610802',' ������'
union all select 'CN','61', '����ʡ','6108', '������','610803',' ��ɽ��'
union all select 'CN','61', '����ʡ','6108', '������','610822',' ������'
union all select 'CN','61', '����ʡ','6108', '������','610824',' ������'
union all select 'CN','61', '����ʡ','6108', '������','610825',' ������'
union all select 'CN','61', '����ʡ','6108', '������','610826',' �����'
union all select 'CN','61', '����ʡ','6108', '������','610827',' ��֬��'
union all select 'CN','61', '����ʡ','6108', '������','610828',' ����'
union all select 'CN','61', '����ʡ','6108', '������','610829',' �Ɽ��'
union all select 'CN','61', '����ʡ','6108', '������','610830',' �彧��'
union all select 'CN','61', '����ʡ','6108', '������','610831',' ������'
union all select 'CN','61', '����ʡ','6108', '������','610881',' ��ľ��'
union all select 'CN','61', '����ʡ','6109', '������','',' '
union all select 'CN','61', '����ʡ','6109', '������','610902',' ������'
union all select 'CN','61', '����ʡ','6109', '������','610921',' ������'
union all select 'CN','61', '����ʡ','6109', '������','610922',' ʯȪ��'
union all select 'CN','61', '����ʡ','6109', '������','610923',' ������'
union all select 'CN','61', '����ʡ','6109', '������','610924',' ������'
union all select 'CN','61', '����ʡ','6109', '������','610925',' ᰸���'
union all select 'CN','61', '����ʡ','6109', '������','610926',' ƽ����'
union all select 'CN','61', '����ʡ','6109', '������','610927',' ��ƺ��'
union all select 'CN','61', '����ʡ','6109', '������','610928',' Ѯ����'
union all select 'CN','61', '����ʡ','6109', '������','610929',' �׺���'
union all select 'CN','61', '����ʡ','6110', '������','',' '
union all select 'CN','61', '����ʡ','6110', '������','611002',' ������'
union all select 'CN','61', '����ʡ','6110', '������','611021',' ������'
union all select 'CN','61', '����ʡ','6110', '������','611022',' ������'
union all select 'CN','61', '����ʡ','6110', '������','611023',' ������'
union all select 'CN','61', '����ʡ','6110', '������','611024',' ɽ����'
union all select 'CN','61', '����ʡ','6110', '������','611025',' ����'
union all select 'CN','61', '����ʡ','6110', '������','611026',' ��ˮ��'
union all select 'CN','62', '����ʡ','6200', '','',' '
union all select 'CN','62', '����ʡ','6201', '������','',' '
union all select 'CN','62', '����ʡ','6201', '������','620102',' �ǹ���'
union all select 'CN','62', '����ʡ','6201', '������','620103',' �������'
union all select 'CN','62', '����ʡ','6201', '������','620104',' ������'
union all select 'CN','62', '����ʡ','6201', '������','620105',' ������'
union all select 'CN','62', '����ʡ','6201', '������','620111',' �����'
union all select 'CN','62', '����ʡ','6201', '������','620121',' ������'
union all select 'CN','62', '����ʡ','6201', '������','620122',' ������'
union all select 'CN','62', '����ʡ','6201', '������','620123',' ������'
union all select 'CN','62', '����ʡ','6202', '��������','',' '
union all select 'CN','62', '����ʡ','6203', '�����','',' '
union all select 'CN','62', '����ʡ','6203', '�����','620302',' ����'
union all select 'CN','62', '����ʡ','6203', '�����','620321',' ������'
union all select 'CN','62', '����ʡ','6204', '������','',' '
union all select 'CN','62', '����ʡ','6204', '������','620402',' ������'
union all select 'CN','62', '����ʡ','6204', '������','620403',' ƽ����'
union all select 'CN','62', '����ʡ','6204', '������','620421',' ��Զ��'
union all select 'CN','62', '����ʡ','6204', '������','620422',' ������'
union all select 'CN','62', '����ʡ','6204', '������','620423',' ��̩��'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','',' '
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620502',' ������'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620503',' �����'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620521',' ��ˮ��'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620522',' �ذ���'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620523',' �ʹ���'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620524',' ��ɽ��'
union all select 'CN','62', '����ʡ','6205', '��ˮ��','620525',' �żҴ�����������'
union all select 'CN','62', '����ʡ','6206', '������','',' '
union all select 'CN','62', '����ʡ','6206', '������','620602',' ������'
union all select 'CN','62', '����ʡ','6206', '������','620621',' ������'
union all select 'CN','62', '����ʡ','6206', '������','620622',' ������'
union all select 'CN','62', '����ʡ','6206', '������','620623',' ��ף����������'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','',' '
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620702',' ������'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620721',' ����ԣ����������'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620722',' ������'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620723',' ������'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620724',' ��̨��'
union all select 'CN','62', '����ʡ','6207', '��Ҵ��','620725',' ɽ����'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','',' '
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620802',' �����'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620821',' ������'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620822',' ��̨��'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620823',' ������'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620825',' ׯ����'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620826',' ������'
union all select 'CN','62', '����ʡ','6208', 'ƽ����','620881',' ��ͤ��'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','',' '
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620902',' ������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620921',' ������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620922',' ������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620923',' �౱�ɹ���������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620924',' ��������������������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620981',' ������'
union all select 'CN','62', '����ʡ','6209', '��Ȫ��','620982',' �ػ���'
union all select 'CN','62', '����ʡ','6210', '������','',' '
union all select 'CN','62', '����ʡ','6210', '������','621002',' ������'
union all select 'CN','62', '����ʡ','6210', '������','621021',' �����'
union all select 'CN','62', '����ʡ','6210', '������','621022',' ����'
union all select 'CN','62', '����ʡ','6210', '������','621023',' ������'
union all select 'CN','62', '����ʡ','6210', '������','621024',' ��ˮ��'
union all select 'CN','62', '����ʡ','6210', '������','621025',' ������'
union all select 'CN','62', '����ʡ','6210', '������','621026',' ����'
union all select 'CN','62', '����ʡ','6210', '������','621027',' ��ԭ��'
union all select 'CN','62', '����ʡ','6211', '������','',' '
union all select 'CN','62', '����ʡ','6211', '������','621102',' ������'
union all select 'CN','62', '����ʡ','6211', '������','621121',' ͨμ��'
union all select 'CN','62', '����ʡ','6211', '������','621122',' ¤����'
union all select 'CN','62', '����ʡ','6211', '������','621123',' μԴ��'
union all select 'CN','62', '����ʡ','6211', '������','621124',' �����'
union all select 'CN','62', '����ʡ','6211', '������','621125',' ����'
union all select 'CN','62', '����ʡ','6211', '������','621126',' ���'
union all select 'CN','62', '����ʡ','6212', '¤����','',' '
union all select 'CN','62', '����ʡ','6212', '¤����','621202',' �䶼��'
union all select 'CN','62', '����ʡ','6212', '¤����','621221',' ����'
union all select 'CN','62', '����ʡ','6212', '¤����','621222',' ����'
union all select 'CN','62', '����ʡ','6212', '¤����','621223',' 崲���'
union all select 'CN','62', '����ʡ','6212', '¤����','621224',' ����'
union all select 'CN','62', '����ʡ','6212', '¤����','621225',' ������'
union all select 'CN','62', '����ʡ','6212', '¤����','621226',' ����'
union all select 'CN','62', '����ʡ','6212', '¤����','621227',' ����'
union all select 'CN','62', '����ʡ','6212', '¤����','621228',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','',' '
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622901',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622921',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622922',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622923',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622924',' �����'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622925',' ������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622926',' ������������'
union all select 'CN','62', '����ʡ','6229', '���Ļ���������','622927',' ��ʯɽ�����嶫����������������'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','',' '
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623001',' ������'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623021',' ��̶��'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623022',' ׿����'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623023',' ������'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623024',' ������'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623025',' ������'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623026',' µ����'
union all select 'CN','62', '����ʡ','6230', '���ϲ���������','623027',' �ĺ���'
union all select 'CN','63', '�ຣʡ','6300', '','',' '
union all select 'CN','63', '�ຣʡ','6301', '������','',' '
union all select 'CN','63', '�ຣʡ','6301', '������','630102',' �Ƕ���'
union all select 'CN','63', '�ຣʡ','6301', '������','630103',' ������'
union all select 'CN','63', '�ຣʡ','6301', '������','630104',' ������'
union all select 'CN','63', '�ຣʡ','6301', '������','630105',' �Ǳ���'
union all select 'CN','63', '�ຣʡ','6301', '������','630121',' ��ͨ��������������'
union all select 'CN','63', '�ຣʡ','6301', '������','630122',' ������'
union all select 'CN','63', '�ຣʡ','6301', '������','630123',' ��Դ��'
union all select 'CN','63', '�ຣʡ','6302', '������','',' '
union all select 'CN','63', '�ຣʡ','6302', '������','630202',' �ֶ���'
union all select 'CN','63', '�ຣʡ','6302', '������','630203',' ƽ����'
union all select 'CN','63', '�ຣʡ','6302', '������','630222',' ��ͻ�������������'
union all select 'CN','63', '�ຣʡ','6302', '������','630223',' ��������������'
union all select 'CN','63', '�ຣʡ','6302', '������','630224',' ��¡����������'
union all select 'CN','63', '�ຣʡ','6302', '������','630225',' ѭ��������������'
union all select 'CN','63', '�ຣʡ','6322', '��������������','',' '
union all select 'CN','63', '�ຣʡ','6322', '��������������','632221',' ��Դ����������'
union all select 'CN','63', '�ຣʡ','6322', '��������������','632222',' ������'
union all select 'CN','63', '�ຣʡ','6322', '��������������','632223',' ������'
union all select 'CN','63', '�ຣʡ','6322', '��������������','632224',' �ղ���'
union all select 'CN','63', '�ຣʡ','6323', '���ϲ���������','',' '
union all select 'CN','63', '�ຣʡ','6323', '���ϲ���������','632321',' ͬ����'
union all select 'CN','63', '�ຣʡ','6323', '���ϲ���������','632322',' ������'
union all select 'CN','63', '�ຣʡ','6323', '���ϲ���������','632323',' �����'
union all select 'CN','63', '�ຣʡ','6323', '���ϲ���������','632324',' �����ɹ���������'
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','',' '
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','632521',' ������'
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','632522',' ͬ����'
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','632523',' �����'
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','632524',' �˺���'
union all select 'CN','63', '�ຣʡ','6325', '���ϲ���������','632525',' ������'
union all select 'CN','63', '�ຣʡ','6326', '�������������','',' '
union all select 'CN','63', '�ຣʡ','6326', '�������������','632621',' ������'
union all select 'CN','63', '�ຣʡ','6326', '�������������','632622',' ������'
union all select 'CN','63', '�ຣʡ','6326', '�������������','632623',' �ʵ���'
union all select 'CN','63', '�ຣʡ','6326', '�������������','632624',' ������'
union all select 'CN','63', '�ຣʡ','6326', '�������������','632625',' ������'
union all select 'CN','63', '�ຣʡ','6326', '�������������','632626',' �����'
union all select 'CN','63', '�ຣʡ','6327', '��������������','',' '
union all select 'CN','63', '�ຣʡ','6327', '��������������','632701',' ������'
union all select 'CN','63', '�ຣʡ','6327', '��������������','632722',' �Ӷ���'
union all select 'CN','63', '�ຣʡ','6327', '��������������','632723',' �ƶ���'
union all select 'CN','63', '�ຣʡ','6327', '��������������','632724',' �ζ���'
union all select 'CN','63', '�ຣʡ','6327', '��������������','632725',' ��ǫ��'
union all select 'CN','63', '�ຣʡ','6327', '��������������','632726',' ��������'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','',' '
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632801',' ���ľ��'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632802',' �������'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632803',' ã����'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632821',' ������'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632822',' ������'
union all select 'CN','63', '�ຣʡ','6328', '�����ɹ������������','632823',' �����'
union all select 'CN','64', '���Ļ���������','6400', '','',' '
union all select 'CN','64', '���Ļ���������','6401', '������','',' '
union all select 'CN','64', '���Ļ���������','6401', '������','640104',' ������'
union all select 'CN','64', '���Ļ���������','6401', '������','640105',' ������'
union all select 'CN','64', '���Ļ���������','6401', '������','640106',' �����'
union all select 'CN','64', '���Ļ���������','6401', '������','640121',' ������'
union all select 'CN','64', '���Ļ���������','6401', '������','640122',' ������'
union all select 'CN','64', '���Ļ���������','6401', '������','640181',' ������'
union all select 'CN','64', '���Ļ���������','6402', 'ʯ��ɽ��','',' '
union all select 'CN','64', '���Ļ���������','6402', 'ʯ��ɽ��','640202',' �������'
union all select 'CN','64', '���Ļ���������','6402', 'ʯ��ɽ��','640205',' ��ũ��'
union all select 'CN','64', '���Ļ���������','6402', 'ʯ��ɽ��','640221',' ƽ����'
union all select 'CN','64', '���Ļ���������','6403', '������','',' '
union all select 'CN','64', '���Ļ���������','6403', '������','640302',' ��ͨ��'
union all select 'CN','64', '���Ļ���������','6403', '������','640303',' ���±���'
union all select 'CN','64', '���Ļ���������','6403', '������','640323',' �γ���'
union all select 'CN','64', '���Ļ���������','6403', '������','640324',' ͬ����'
union all select 'CN','64', '���Ļ���������','6403', '������','640381',' ��ͭϿ��'
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','',' '
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','640402',' ԭ����'
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','640422',' ������'
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','640423',' ¡����'
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','640424',' ��Դ��'
union all select 'CN','64', '���Ļ���������','6404', '��ԭ��','640425',' ������'
union all select 'CN','64', '���Ļ���������','6405', '������','',' '
union all select 'CN','64', '���Ļ���������','6405', '������','640502',' ɳ��ͷ��'
union all select 'CN','64', '���Ļ���������','6405', '������','640521',' ������'
union all select 'CN','64', '���Ļ���������','6405', '������','640522',' ��ԭ��'
union all select 'CN','65', '�½�ά���������','6500', '','',' '
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','',' '
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650102',' ��ɽ��'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650103',' ɳ���Ϳ���'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650104',' ������'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650105',' ˮĥ����'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650106',' ͷ�ͺ���'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650107',' �������'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650109',' �׶���'
union all select 'CN','65', '�½�ά���������','6501', '��³ľ����','650121',' ��³ľ����'
union all select 'CN','65', '�½�ά���������','6502', '����������','',' '
union all select 'CN','65', '�½�ά���������','6502', '����������','650202',' ��ɽ����'
union all select 'CN','65', '�½�ά���������','6502', '����������','650203',' ����������'
union all select 'CN','65', '�½�ά���������','6502', '����������','650204',' �׼�̲��'
union all select 'CN','65', '�½�ά���������','6502', '����������','650205',' �ڶ�����'
union all select 'CN','65', '�½�ά���������','6504', '��³����','',' '
union all select 'CN','65', '�½�ά���������','6504', '��³����','650402',' �߲���'
union all select 'CN','65', '�½�ά���������','6504', '��³����','650421',' ۷����'
union all select 'CN','65', '�½�ά���������','6504', '��³����','650422',' �п�ѷ��'
union all select 'CN','65', '�½�ά���������','6505', '������','',' '
union all select 'CN','65', '�½�ά���������','6505', '������','650502',' ������'
union all select 'CN','65', '�½�ά���������','6505', '������','650521',' ������������������'
union all select 'CN','65', '�½�ά���������','6505', '������','650522',' ������'
union all select 'CN','65', '�½�ά���������','6523', '��������������','',' '
union all select 'CN','65', '�½�ά���������','6523', '��������������','652301',' ������'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652302',' ������'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652323',' ��ͼ����'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652324',' ����˹��'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652325',' ��̨��'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652327',' ��ľ������'
union all select 'CN','65', '�½�ά���������','6523', '��������������','652328',' ľ�ݹ�����������'
union all select 'CN','65', '�½�ά���������','6527', '���������ɹ�������','',' '
union all select 'CN','65', '�½�ά���������','6527', '���������ɹ�������','652701',' ������'
union all select 'CN','65', '�½�ά���������','6527', '���������ɹ�������','652702',' ����ɽ����'
union all select 'CN','65', '�½�ά���������','6527', '���������ɹ�������','652722',' ������'
union all select 'CN','65', '�½�ά���������','6527', '���������ɹ�������','652723',' ��Ȫ��'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','',' '
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652801',' �������'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652822',' ��̨��'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652823',' ξ����'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652824',' ��Ǽ��'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652825',' ��ĩ��'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652826',' ���Ȼ���������'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652827',' �;���'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652828',' ��˶��'
union all select 'CN','65', '�½�ά���������','6528', '���������ɹ�������','652829',' ������'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','',' '
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652901',' ��������'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652922',' ������'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652923',' �⳵��'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652924',' ɳ����'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652925',' �º���'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652926',' �ݳ���'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652927',' ��ʲ��'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652928',' ��������'
union all select 'CN','65', '�½�ά���������','6529', '�����յ���','652929',' ��ƺ��'
union all select 'CN','65', '�½�ά���������','6530', '�������տ¶�����������','',' '
union all select 'CN','65', '�½�ά���������','6530', '�������տ¶�����������','653001',' ��ͼʲ��'
union all select 'CN','65', '�½�ά���������','6530', '�������տ¶�����������','653022',' ��������'
union all select 'CN','65', '�½�ά���������','6530', '�������տ¶�����������','653023',' ��������'
union all select 'CN','65', '�½�ά���������','6530', '�������տ¶�����������','653024',' ��ǡ��'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','',' '
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653101',' ��ʲ��'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653121',' �踽��'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653122',' ������'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653123',' Ӣ��ɳ��'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653124',' ������'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653125',' ɯ����'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653126',' Ҷ����'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653127',' �������'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653128',' ���պ���'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653129',' ٤ʦ��'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653130',' �ͳ���'
union all select 'CN','65', '�½�ά���������','6531', '��ʲ����','653131',' ��ʲ�����������������'
union all select 'CN','65', '�½�ά���������','6532', '�������','',' '
union all select 'CN','65', '�½�ά���������','6532', '�������','653201',' ������'
union all select 'CN','65', '�½�ά���������','6532', '�������','653221',' ������'
union all select 'CN','65', '�½�ά���������','6532', '�������','653222',' ī����'
union all select 'CN','65', '�½�ά���������','6532', '�������','653223',' Ƥɽ��'
union all select 'CN','65', '�½�ά���������','6532', '�������','653224',' ������'
union all select 'CN','65', '�½�ά���������','6532', '�������','653225',' ������'
union all select 'CN','65', '�½�ά���������','6532', '�������','653226',' ������'
union all select 'CN','65', '�½�ά���������','6532', '�������','653227',' �����'
union all select 'CN','65', '�½�ά���������','6540', '���������������','',' '
union all select 'CN','65', '�½�ά���������','6540', '���������������','654002',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654003',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654004',' ������˹��'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654021',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654022',' �첼�������������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654023',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654024',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654025',' ��Դ��'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654026',' ������'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654027',' �ؿ�˹��'
union all select 'CN','65', '�½�ά���������','6540', '���������������','654028',' ���տ���'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','',' '
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654201',' ������'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654202',' ������'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654221',' ������'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654223',' ɳ����'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654224',' ������'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654225',' ԣ����'
union all select 'CN','65', '�½�ά���������','6542', '���ǵ���','654226',' �Ͳ��������ɹ�������'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','',' '
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654301',' ����̩��'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654321',' ��������'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654322',' ������'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654323',' ������'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654324',' ���ͺ���'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654325',' �����'
union all select 'CN','65', '�½�ά���������','6543', '����̩����','654326',' ��ľ����'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659001',' ʯ������'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659002',' ��������'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659003',' ͼľ�����'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659004',' �������'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659005',' ������'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659006',' ���Ź���'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659007',' ˫����'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659008',' �ɿ˴�����'
union all select 'CN','65', '�½�ά���������','6590', '����̩����','659009',' ������'
union all select 'CN','71', '̨��ʡ','7100', '','',' '
union all select 'CN','81', '����ر�������','8100', '','',' '
union all select 'CN','82', '�����ر�������','8200', '','',' '

select top 10 mate_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt from tb_busimate


declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int ) 
insert into @tab (line_no,f1,f2,f3,f4,f5) select 2,'�ع�����ɭ��Ϣ��ѯ���޹�˾','С��ģ��˰��','׼��','����','2024-12-04 14:00:00'
union all  
select 3,'����ά�ۣ���ݸ��ҽҩ�Ƽ����޹�˾','С��ģ��˰��','׼��','����','2024-12-04 14:00:01' 
declare @cnt1 int,@cnt2 int 
update a set tax_type_id=case f2 when 'С��ģ��˰��' then 1 when 'һ����˰��' then 2 end,  status_id=case f3 when '׼��' then 2 when '��ֹ' then 2 end,  status_id1=case f4 when '����' then 1 when '��ͣ' then 2 when '��ֹ' then 3 end,  confirm_dt=f5,modify_by=19273,modify_dt=getdate() 
from tb_busimate a,@tab b where a.mate_type_id=10 and a.mate_name=b.f1 
select @cnt1=@@ROWCOUNT 
insert into tb_busimate (comp_id,mate_type_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt,creat_by,creat_dt)  
select comp_id=1,mate_type_id=10,mate_name=f1,  tax_type_id=case f2 when 'С��ģ��˰��' then 1 when 'һ����˰��' then 2 end,  status_id=case f3 when '׼��' then 2 when '��ֹ' then 2 end,  status_id1=case f4 when '����' then 1 when '��ͣ' then 2 when '��ֹ' then 3 end,  confirm_dt=f5,creat_by=19273,creat_dt=getdate() 
from @tab a
where not exists (select 1 from tb_busimate b where mate_type_id=10 and a.f1=b.mate_name) 
select @cnt2=@@ROWCOUNT  
select @cnt1,@cnt2
