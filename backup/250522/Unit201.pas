unit Unit201;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, StdCtrls,
  ExtCtrls, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, wwclearpanel, DateUtils, Buttons, dxdbtrel,
  ImgList;

type
  Tqryclassimp = class(TForm)
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
    Label5: TLabel;
    Label13: TLabel;
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
    qryCdatatype: TStringField;
    dxDBGrid1Cdatatype: TdxDBGridColumn;
    qryZKDGRP: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassimp: Tqryclassimp;

implementation

uses datamodu, Unit7, Unit16a;

{$R *.DFM}

procedure Tqryclassimp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryclassimp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassimp.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassimp.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclassimp.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclassimp.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassimp.SpeedButton5Click(Sender: TObject);
var si: integer;
//    ss: string[12];
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
    commandtext:='select a.* from SAP_ZSD_015 a';
    commandtext:=commandtext+' where KDGRP in (''10'',''19'')';
//    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.ZVKORG='''+dxbuttonedit2.text+'''';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.GBELN='''+Trim(dxEdit1.text)+'''';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and a.MATNR='''+Trim(dxEdit2.text)+'''';
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.MATNR=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
    if RadioGroup1.itemindex=2 then commandtext:=commandtext+' and 1=2';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';
//edit1.text:=commandtext;
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

procedure Tqryclassimp.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryclassimp.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassimp.N3Click(Sender: TObject);
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

procedure Tqryclassimp.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassimp.N2Click(Sender: TObject);
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

procedure Tqryclassimp.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassimp.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
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

procedure Tqryclassimp.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('qty').asfloat=0
        then fieldbyname('cprice').asfloat:=0
        else fieldbyname('cprice').asfloat:=fieldbyname('amot').asfloat/fieldbyname('qty').asfloat;
    fieldbyname('cdatatype').asstring:='SAP';
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

procedure Tqryclassimp.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryclassimp.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

end.
