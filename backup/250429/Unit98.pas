unit Unit98;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, dxDBGrid,
  dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, Buttons;

type
  Tqryreport09 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit1: TdxButtonEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1carry_dt_1: TDateTimeField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1amot: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1due: TBCDField;
    Label13: TLabel;
    Shape1: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label2: TLabel;
    Shape2: TShape;
    Edit1: TEdit;
    Shape3: TShape;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1amt1: TdxDBGridMaskColumn;
    dxDBGrid1amt2: TdxDBGridColumn;
    dxDBGrid1bal: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    qrydistrict_id: TIntegerField;
    qrycdistrict: TStringField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrycate_id: TWordField;
    qrylevel_id1: TIntegerField;
    qrylevel_id2: TIntegerField;
    qrylevel_id3: TAutoIncField;
    qrybod_type_id: TIntegerField;
    qrybusi_type: TIntegerField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrycheck_by: TIntegerField;
    qrycheck_dt: TDateTimeField;
    qryrelative_id: TIntegerField;
    qryCbod_status: TStringField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrysettle_type: TIntegerField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrybod_desc: TStringField;
    qryCcate: TStringField;
    qrycarry_dt: TDateTimeField;
    qryorder_id: TIntegerField;
    qryCbusitype: TStringField;
    qryamt1: TBCDField;
    qryamt2: TBCDField;
    qrybal: TBCDField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
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
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport09: Tqryreport09;

implementation

uses datamodu, Unit16a, Unit16c;

{$R *.DFM}

procedure Tqryreport09.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport09.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport09.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport09.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport09.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport09.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport09.SpeedButton5Click(Sender: TObject);
begin
//if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择业务员');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
    commandtext:='sp_qrymateexg2 ';
    if dxButtonEdit1.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    if dxButtonEdit2.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport09.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport09.N3Click(Sender: TObject);
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

procedure Tqryreport09.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport09.N2Click(Sender: TObject);
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

procedure Tqryreport09.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport09.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cbusitype) then
begin
    if ANode.Strings[dxDBGrid1Cbusitype.Index] = '期初数' then
    begin
        AColor := clblack;
        AFont.Color := clWhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '收款') then
    begin
        AFont.Color := clgreen;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
//        AColor := $00FDFCC1;
        AFont.Color := clred;
    end;
end;
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqryreport09.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag:=0;
    end;
end;

procedure Tqryreport09.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('bod_type_id').asinteger= 0 then fieldbyname('cbusitype').asstring:='期初数'
	else if fieldbyname('bod_type_id').asinteger=42 then
    begin
        case fieldbyname('busi_type').asinteger of
            1: fieldbyname('cbusitype').asstring:='销售';
            2: fieldbyname('cbusitype').asstring:='退货';
	        3: fieldbyname('cbusitype').asstring:='调价';
        end;
    end
    else if fieldbyname('bod_type_id').asinteger=45 then fieldbyname('cbusitype').asstring:='收款';
    
	if fieldbyname('bod_type_id').asinteger=42 then
    begin
    	case fieldbyname('cate_id').asinteger of
        	1: fieldbyname('ccate').asstring:='商业';
        	2: fieldbyname('ccate').asstring:='分销';
        end;
    end
end;
end;

end.
