unit Unit201e;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, StdCtrls,
  ExtCtrls, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, wwclearpanel, DateUtils, Buttons, dxdbtrel,
  ImgList;

type
  Tqryclassimp5 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Shape3: TShape;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    ADOQuery1broker1: TStringField;
    Shape5: TShape;
    Label22: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList1: TImageList;
    Shape6: TShape;
    Label7: TLabel;
    dxEdit2: TdxEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1BEZEI: TdxDBGridColumn;
    dxDBGrid1VTWEG: TdxDBGridColumn;
    dxDBGrid1VTEXT: TdxDBGridColumn;
    dxDBGrid1KDGRP: TdxDBGridColumn;
    dxDBGrid1ZKDGRP: TdxDBGridColumn;
    dxDBGrid1VKBUR: TdxDBGridColumn;
    dxDBGrid1ZBEZEI: TdxDBGridColumn;
    dxDBGrid1VKGRP: TdxDBGridColumn;
    dxDBGrid1ZVKGRP: TdxDBGridColumn;
    dxDBGrid1ZPLOT: TdxDBGridColumn;
    dxDBGrid1ZPLOT_T: TdxDBGridColumn;
    dxDBGrid1ZAREA: TdxDBGridColumn;
    dxDBGrid1ZAREA_T: TdxDBGridColumn;
    dxDBGrid1ZCPXSX: TdxDBGridColumn;
    dxDBGrid1ZSALESID: TdxDBGridColumn;
    dxDBGrid1ZSALESNAM: TdxDBGridColumn;
    dxDBGrid1ZSALESID_O: TdxDBGridColumn;
    dxDBGrid1ZSALESNAM_O: TdxDBGridColumn;
    dxDBGrid1ZCOUNTRY: TdxDBGridColumn;
    dxDBGrid1ZREGIO: TdxDBGridColumn;
    dxDBGrid1ZZREGION: TdxDBGridColumn;
    dxDBGrid1ZCITYNUM: TdxDBGridColumn;
    dxDBGrid1ZCITYNAME: TdxDBGridColumn;
    dxDBGrid1VKORG: TdxDBGridColumn;
    dxDBGrid1ZVKORG: TdxDBGridColumn;
    dxDBGrid1KUNNR: TdxDBGridColumn;
    dxDBGrid1NAME1: TdxDBGridColumn;
    dxDBGrid1ASSIGNED_BP: TdxDBGridColumn;
    dxDBGrid1NAME_FIRST: TdxDBGridColumn;
    dxDBGrid1VBELN: TdxDBGridColumn;
    dxDBGrid1GBELN: TdxDBGridColumn;
    dxDBGrid1LPOSNR: TdxDBGridColumn;
    dxDBGrid1BOLNR: TdxDBGridColumn;
    dxDBGrid1MATNR: TdxDBGridColumn;
    dxDBGrid1ARKTX: TdxDBGridColumn;
    dxDBGrid1ZGG: TdxDBGridColumn;
    dxDBGrid1ZSCQY: TdxDBGridColumn;
    dxDBGrid1CHARG: TdxDBGridColumn;
    dxDBGrid1VFDAT: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1ZPR03: TdxDBGridColumn;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1Cprice: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1BSTKD: TdxDBGridColumn;
    dxDBGrid1ZTERMNAME: TdxDBGridColumn;
    dxDBGrid1ERNAM: TdxDBGridColumn;
    dxDBGrid1ZTERNAM: TdxDBGridColumn;
    dxDBGrid1USNAM: TdxDBGridColumn;
    dxDBGrid1ZUSNAM: TdxDBGridColumn;
    qryrec_id: TAutoIncField;
    qryAUDAT: TStringField;
    qrycreat_dt: TDateTimeField;
    qryWADAT_IST: TStringField;
    qryBEZEI: TStringField;
    qryVTWEG: TStringField;
    qryVTEXT: TStringField;
    qryKDGRP: TStringField;
    qryVKBUR: TStringField;
    qryZBEZEI: TStringField;
    qryVKGRP: TStringField;
    qryZVKGRP: TStringField;
    qryZPLOT: TStringField;
    qryZPLOT_T: TStringField;
    qryZAREA: TStringField;
    qryZAREA_T: TStringField;
    qryZCPXSX: TStringField;
    qryZSALESID: TStringField;
    qryZSALESNAM: TStringField;
    qryZSALESID_O: TStringField;
    qryZSALESNAM_O: TStringField;
    qryZCOUNTRY: TStringField;
    qryZREGIO: TStringField;
    qryZZREGION: TStringField;
    qryZCITYNUM: TStringField;
    qryZCITYNAME: TStringField;
    qryVKORG: TStringField;
    qryZVKORG: TStringField;
    qryKUNNR: TStringField;
    qryNAME1: TStringField;
    qryASSIGNED_BP: TStringField;
    qryNAME_FIRST: TStringField;
    qryVBELN: TStringField;
    qryGBELN: TStringField;
    qryLPOSNR: TStringField;
    qryBOLNR: TStringField;
    qryMATNR: TStringField;
    qryARKTX: TStringField;
    qryZGG: TStringField;
    qryZSCQY: TStringField;
    qryCHARG: TStringField;
    qryVFDAT: TStringField;
    qryKWMENG: TStringField;
    qryZPR03: TStringField;
    qryZKHJE: TStringField;
    qryZKONV: TStringField;
    qryKZWI5: TStringField;
    qryZREC: TStringField;
    qryBSTKD: TStringField;
    qryZTERMNAME: TStringField;
    qryERNAM: TStringField;
    qryZTERNAM: TStringField;
    qryUSNAM: TStringField;
    qryZUSNAM: TStringField;
    qrycarry_dt: TDateTimeField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qryamot1: TBCDField;
    qryamot2: TBCDField;
    qryCprice: TBCDField;
    dxDBGrid1datatype: TdxDBGridColumn;
    qryZKDGRP: TStringField;
    qryCrate1: TBCDField;
    qryrprice: TBCDField;
    qryrprice1: TBCDField;
    qryCamot: TBCDField;
    dxDBGrid1rprice1: TdxDBGridColumn;
    dxDBGrid1Crate: TdxDBGridColumn;
    dxDBGrid1rprice: TdxDBGridColumn;
    dxDBGrid1Camot: TdxDBGridColumn;
    Label5: TLabel;
    Label8: TLabel;
    qrydatatype: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassimp5: Tqryclassimp5;

implementation

uses datamodu, Unit7, Unit16a;

{$R *.DFM}

procedure Tqryclassimp5.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
//dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryclassimp5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassimp5.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassimp5.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclassimp5.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tqryclassimp5.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassimp5.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('查询日期范围不可超过180天');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
    y2:=yearof(dxDateEdit2.Date);
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        commandtext:=commandtext+' union all select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        open;
        if recordcount<2 then raise Exception.Create('查询年度未授权');
    end;
end;
}
with qry do
begin
    if active then
    begin
        si:=fieldbyname('rec_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:=' select a.rec_id,datatype=''SAP'',a.AUDAT,a.creat_dt,a.WADAT_IST,a.carry_dt,a.BEZEI,a.VTWEG,VTEXT,KDGRP,ZKDGRP,VKBUR,ZBEZEI,VKGRP,ZVKGRP,ZPLOT,ZPLOT_T,ZAREA,ZAREA_T,ZCPXSX,ZSALESID,ZSALESNAM,ZSALESID_O,ZSALESNAM_O,';
    commandtext:=commandtext+' a.ZCOUNTRY,a.ZREGIO,a.ZZREGION,a.ZCITYNUM,a.ZCITYNAME,a.VKORG,ZVKORG, KUNNR,NAME1,ASSIGNED_BP,NAME_FIRST,VBELN,GBELN,LPOSNR,BOLNR,';
    commandtext:=commandtext+' a.MATNR,ARKTX,ZGG,ZSCQY,CHARG,VFDAT,KWMENG,qty=cast(a.qty as decimal(15,2)),a.ZPR03,a.ZKHJE,ZKONV,a.KZWI5,';
    commandtext:=commandtext+' a.ZREC,amot2,a.amot,a.amot1,';
    commandtext:=commandtext+' rprice1=c.price1,rprice=c.price,BSTKD,ZTERMNAME,ERNAM,ZTERNAM,USNAM,ZUSNAM';
    commandtext:=commandtext+' from SAP_ZSD_015 a';
    commandtext:=commandtext+' left join tb_medprice c on c.rec_id=dbo.fn_getmedpricerecid(a.MATNR,a.VTWEG,a.KDGRP,a.ZREGIO,a.ZCITYNUM,a.carry_dt)';  //
    commandtext:=commandtext+' where KDGRP in (''10'',''19'')';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' and 1=2';
//    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+' and (a.VBELN='''+Trim(dxEdit1.text)+''' or a.GBELN='''+Trim(dxEdit1.text)+''' or a.BOLNR='''+Trim(dxEdit1.text)+''')';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and a.MATNR='''+Trim(dxEdit2.text)+'''';
//    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.ZVKORG='''+dxbuttonedit1.text+'''';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.NAME1='''+dxbuttonedit1.text+'''';
//    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (a.VBELN='''+Trim(dxEdit1.text)+''' or a.GBELN='''+Trim(dxEdit1.text)+''' or a.BOLNR='''+Trim(dxEdit1.text)+''')';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and a.MATNR='''+Trim(dxEdit2.text)+'''';
//    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.MATNR=(select top 1 material_code from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m,tb_medicine n where m.med_id='+inttostr(dxbuttonedit2.tag)+' and a.MATNR=n.material_code and (m.material_code1=n.material_code1))';
    if RadioGroup1.itemindex=2 then commandtext:=commandtext+' and 1=2';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (a.ZREGIO='+dm.district.fieldbyname('code').asstring+' or a.ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';

    commandtext:=commandtext+' union all';
    
    commandtext:=commandtext+' select rec_id=b.dtl_id,datatype=''两票'',AUDAT= convert(char(10),a.creat_dt,20),a.creat_dt,WADAT_IST=convert(char(10),a.carry_dt,20),a.carry_dt,BEZEI=''标准订单'',VTWEG=g.obj_code,VTEXT=g.zdesc,KDGRP=h.obj_code,ZKDGRP=h.zdesc,';
    commandtext:=commandtext+' VKBUR=null,ZBEZEI=null,VKGRP=null,ZVKGRP=null,ZPLOT=null,ZPLOT_T=null,ZAREA=null,ZAREA_T=null,ZCPXSX=null,ZSALESID=f.zcode,ZSALESNAM=f.zname,ZSALESID_O=null,ZSALESNAM_O=null,';
    commandtext:=commandtext+' ZCOUNTRY=null,ZREGIO=i.prov_code,ZZREGION=i.prov_name,ZCITYNUM=i.city_code,ZCITYNAME=i.city_name,';
    commandtext:=commandtext+' VKORG=c.mate_code,ZVKORG=c.mate_name,KUNNR=d.mate_code,NAME1=d.mate_name,ASSIGNED_BP=e.mate_code,NAME_FIRST=e.mate_name,VBELN=null,GBELN=a.bod_cd,LPOSNR=null,BOLNR=null,';
    commandtext:=commandtext+' MATNR=m.material_code,ARKTX=m.med_name,ZGG=m.specifi,ZSCQY=m.pdt_place,CHARG=b.bat_cd,VFDAT=convert(char(10),b.valid_dt,20),';
    commandtext:=commandtext+' KWMENG=cast(b.qty as varchar(15)),qty=cast(b.qty as decimal(15,2)),ZPR03=cast(b.price1 as varchar(15)),ZKHJE=cast(b.qty*b.price1 as varchar(20)),ZKONV=cast(b.price as varchar(15)),KZWI5=cast(b.qty*b.price as varchar(20)),';
    commandtext:=commandtext+' ZREC=''0.00'',amot2=cast(b.price1*b.qty as decimal(15,2)),amot=cast(b.amot as decimal(15,2)),amot1=cast(b.amot1 as decimal(15,2)),rprice1=j.price1,rprice=j.price,';
    commandtext:=commandtext+' STKD=null,ZTERMNAME=null,ERNAM=cast(a.creat_by as varchar(15)),ZTERNAM=dbo.fn_staff_name(a.creat_by),USNAM=cast(a.check_by as varchar(15)),ZUSNAM=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busimate c on a.src_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.dst_id=d.mate_id';
    commandtext:=commandtext+' left join tb_busimate e on a.agent_id=e.mate_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+' left join (select obj_code,zdesc from tb_object where obj_type_id=11) g on a.channel_id=g.obj_code';
    commandtext:=commandtext+' left join (select obj_code,zdesc from tb_object where obj_type_id=12) h on a.channel_dtl_id=h.obj_code';
    commandtext:=commandtext+' left join vi_district1 i on d.district=i.code';
    commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_medprice j on j.rec_id=dbo.fn_getmedpricerecid(m.material_code,g.obj_code,h.obj_code,i.prov_code,i.city_code,a.carry_dt)'; 
    commandtext:=commandtext+' where a.bod_type_id=1 and a.cate_id=1';
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' and 1=2';
//    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+' and (a.bod_cd='''+Trim(dxEdit1.text)+''')';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit2.text)+'''';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
//    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m,tb_medicine n where m.med_id='+inttostr(dxbuttonedit2.tag)+' and b.med_id=n.med_id and (m.material_code1=n.material_code1))';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and d.district like '''+dm.district.fieldbyname('code').asstring+'%''';
{
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and a.MATNR='''+Trim(dxEdit2.text)+'''';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.ZVKORG='''+dxbuttonedit2.text+'''';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and a.MATNR='''+Trim(dxEdit2.text)+'''';
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.MATNR=(select top 1 material_code from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
    if RadioGroup1.itemindex=2 then commandtext:=commandtext+' and 1=2';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';
}
    commandtext:=commandtext+'  order by a.carry_dt';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if si>0 then locate('rec_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclassimp5.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure Tqryclassimp5.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassimp5.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('查询关键字', '请输入', NewString);
if ClickedOK then
    with dxdbgrid1 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure Tqryclassimp5.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassimp5.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
setprogress(0);
end;

procedure Tqryclassimp5.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassimp5.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1BEZEI) then
begin
    if (ANode.Strings[dxDBGrid1BEZEI.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
end;
{
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
//        AColor := clred;
        AFont.Color := clred;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1Ccate_id) then
begin
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '两票采购') then
    begin
        AColor := $00FEFE94;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tqryclassimp5.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('qty').asfloat=0
        then fieldbyname('cprice').asfloat:=0
        else fieldbyname('cprice').asfloat:=fieldbyname('amot').asfloat/fieldbyname('qty').asfloat;
    if fieldbyname('rprice1').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=fieldbyname('rprice').asfloat/fieldbyname('rprice1').asfloat*100;
    fieldbyname('Camot').asfloat:=fieldbyname('rprice').asfloat*fieldbyname('qty').asfloat;
//    fieldbyname('cdatatype').asstring:='SAP';
end;
{
with qry do
begin
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='采购';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    if fieldbyname('bod_type_id').asinteger=1 then
    begin
        case fieldbyname('cate_id').asinteger of
            1: fieldbyname('ccate_id').asstring:='商业';
            2: fieldbyname('ccate_id').asstring:='分销';
            5: fieldbyname('ccate_id').asstring:='两票商业';
        end;
    end;
    if fieldbyname('bod_type_id').asinteger=42 then
    begin
        case fieldbyname('cate_id').asinteger of
            1: fieldbyname('ccate_id').asstring:='两票商业';
            2: fieldbyname('ccate_id').asstring:='两票分销';
        end;
    end;
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
end;
}
end;

procedure Tqryclassimp5.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryclassimp5.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryclassimp5.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tqryclassimp5.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

end.
