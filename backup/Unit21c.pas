unit Unit21c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, dxdbtrel,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, StdCtrls, Menus, ComCtrls, dxDBTLCl,
  dxGrClms;

type
  Tqryreport29 = class(TForm)
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    ImageList: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label13: TLabel;
    Edit1: TEdit;
    ADOQuery1rate1: TBCDField;
    qry: TClientDataSet;
    DSqry: TDataSource;
    Shape6: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Label10: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qryqty: TBCDField;
    qrymed_id: TIntegerField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    dxDBGrid1bal1: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    qrybal1: TBCDField;
    qrybal2: TBCDField;
    qrybal3: TBCDField;
    qrybal4: TBCDField;
    qryqty2: TBCDField;
    qryqty4: TBCDField;
    qryqty6: TBCDField;
    dxDBGrid1bal2: TdxDBGridColumn;
    dxDBGrid1amt1: TdxDBGridColumn;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1amt2: TdxDBGridColumn;
    qryamt1: TBCDField;
    qryamt2: TBCDField;
    qryamt3: TBCDField;
    qryamt4: TBCDField;
    qryamt5: TBCDField;
    qryamt6: TBCDField;
    dxDBGrid1amt3: TdxDBGridColumn;
    dxDBGrid1bal3: TdxDBGridColumn;
    dxDBGrid1bal4: TdxDBGridColumn;
    dxDBGrid1qty4: TdxDBGridColumn;
    dxDBGrid1amt4: TdxDBGridColumn;
    dxDBGrid1qty5: TdxDBGridColumn;
    dxDBGrid1amt5: TdxDBGridColumn;
    dxDBGrid1amt6: TdxDBGridColumn;
    qrycbal1a: TBCDField;
    qrycbal2a: TBCDField;
    qrycbal3a: TBCDField;
    qrycbal4a: TBCDField;
    qryCdiff: TBCDField;
    dxDBGrid1cbal1a: TdxDBGridColumn;
    dxDBGrid1cbal2a: TdxDBGridColumn;
    dxDBGrid1cbal3a: TdxDBGridColumn;
    dxDBGrid1cbal4a: TdxDBGridColumn;
    dxDBGrid1Cdiff: TdxDBGridColumn;
    qryamt7: TBCDField;
    dxDBGrid1amt7: TdxDBGridColumn;
    qryamt8: TBCDField;
    qryamt9: TBCDField;
    dxDBGrid1amt8: TdxDBGridColumn;
    dxDBGrid1amt9: TdxDBGridColumn;
    qryrec_id: TAutoIncField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid2CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport29: Tqryreport29;
  m1,m2: real;

implementation

uses datamodu, Unit7; //, Unit16a, Unit16c, Unit7, Unit22, Unit28;

{$R *.DFM}

procedure Tqryreport29.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport29.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport29.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport29.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport29.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqryreport29.SpeedButton5Click(Sender: TObject);
//var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
    commandtext:='sp_qryreport29 '+inttostr(compid)+',';
    if Trim(dxButtonEdit1.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
	commandtext:=commandtext+inttostr(RadioGroup1.itemindex)+',';
//	if dxLookupTreeView1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
	commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport29.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tqryreport29.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqryreport29.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport29.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
//fieldbyname('Cprofit').asfloat/fieldbyname('Camot').asfloat
if AColumn.Name='dxDBGrid1Camot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
end;

procedure Tqryreport29.N3Click(Sender: TObject);
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

procedure Tqryreport29.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport29.N2Click(Sender: TObject);
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

procedure Tqryreport29.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport29.dxDBGrid2CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if AColumn.Name='dxDBGrid2Camot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
}
end;

procedure Tqryreport29.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    fieldbyname('Cdiff').asfloat:=fieldbyname('qty2').asfloat-fieldbyname('qty5').asfloat; //已收款数量 - 厂家返入数量

//销售收款 期末应收数量：期初应收数量+发货数量-回款数量
    fieldbyname('Cbal1a').asfloat:=fieldbyname('bal1').asfloat+fieldbyname('qty1').asfloat-fieldbyname('qty2').asfloat;
//销售收款 期末应收金额：期初应收金额+发货金额+调价金额-回款金额
    fieldbyname('Cbal2a').asfloat:=fieldbyname('bal2').asfloat+fieldbyname('amt1').asfloat-fieldbyname('amt2').asfloat+fieldbyname('amt3').asfloat;
//厂家返入 期末应收数量：期初应收数量+发货数量-返入数量
    fieldbyname('Cbal3a').asfloat:=fieldbyname('bal1').asfloat+fieldbyname('qty1').asfloat-fieldbyname('qty5').asfloat;
//厂家返入 期末应收金额：期初应收金额+应收供应商返入金额+调价金额-返入金额
    fieldbyname('Cbal4a').asfloat:=fieldbyname('bal2').asfloat+fieldbyname('amt4').asfloat-fieldbyname('amt5').asfloat+fieldbyname('amt6').asfloat;
end;
end;

procedure Tqryreport29.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1Cdiff) then
begin
    if (ANode.Values[dxDBGrid1Cdiff.Index] <> 0) then
    begin
        AColor := $00FDE0FE;
    end;
end;
end;

procedure Tqryreport29.DSqryDataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

end.
