unit Unit130;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, dxdbtrel,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, StdCtrls, Menus, ComCtrls, dxDBTLCl,
  dxGrClms, wwclearbuttongroup, wwradiogroup;

type
  Tqryreport30 = class(TForm)
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
    Edit1: TEdit;
    ADOQuery1rate1: TBCDField;
    RadioGroup1: TRadioGroup;
    qry: TClientDataSet;
    DSqry: TDataSource;
    Shape4: TShape;
    Label3: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxDBGrid1: TdxDBGrid;
    RadioGroup2: TRadioGroup;
    wwRadioGroup1: TwwRadioGroup;
    qrybank_id: TAutoIncField;
    qrybank_name: TStringField;
    qrybank_acnt: TStringField;
    qryc01: TBCDField;
    qryc02: TBCDField;
    qryc03: TBCDField;
    qryc04: TBCDField;
    qryc05: TBCDField;
    qryc06: TBCDField;
    qryc07: TBCDField;
    qryc08: TBCDField;
    qryc09: TBCDField;
    qryc10: TBCDField;
    qryc11: TBCDField;
    qryc12: TBCDField;
    qrycc: TBCDField;
    dxDBGrid1cc: TdxDBGridColumn;
    dxDBGrid1c01: TdxDBGridColumn;
    dxDBGrid1c02: TdxDBGridColumn;
    dxDBGrid1c03: TdxDBGridColumn;
    dxDBGrid1c04: TdxDBGridColumn;
    dxDBGrid1c05: TdxDBGridColumn;
    dxDBGrid1c06: TdxDBGridColumn;
    dxDBGrid1c07: TdxDBGridColumn;
    dxDBGrid1c08: TdxDBGridColumn;
    dxDBGrid1c09: TdxDBGridColumn;
    dxDBGrid1c10: TdxDBGridColumn;
    dxDBGrid1c11: TdxDBGridColumn;
    dxDBGrid1c12: TdxDBGridColumn;
    dxDBGrid1bank_name: TdxDBGridColumn;
    dxDBGrid1bank_acnt: TdxDBGridColumn;
    dxSpinEdit1: TdxSpinEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
  qryreport30: Tqryreport30;
  m1,m2: real;

implementation

uses datamodu, Unit16k; //, Unit16a, Unit16c, Unit7, Unit22, Unit28;

{$R *.DFM}

procedure Tqryreport30.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport30.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport30.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport30.FormCreate(Sender: TObject);
begin
//dxdateedit1.date:=dt_30;
//dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport30.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqryreport30.SpeedButton5Click(Sender: TObject);
begin
//if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
    commandtext:='select b.bank_name,b.bank_acnt,a.* from (select bank_id,';
    commandtext:=commandtext+'c01=sum(case when datepart(mm,carry_dt)=1 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c02=sum(case when datepart(mm,carry_dt)=2 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c03=sum(case when datepart(mm,carry_dt)=3 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c04=sum(case when datepart(mm,carry_dt)=4 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c05=sum(case when datepart(mm,carry_dt)=5 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c06=sum(case when datepart(mm,carry_dt)=6 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c07=sum(case when datepart(mm,carry_dt)=7 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c08=sum(case when datepart(mm,carry_dt)=8 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c09=sum(case when datepart(mm,carry_dt)=9 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c10=sum(case when datepart(mm,carry_dt)=10 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c11=sum(case when datepart(mm,carry_dt)=11 then cast(bod_amot as decimal(15,2)) else 0 end),';
    commandtext:=commandtext+'c12=sum(case when datepart(mm,carry_dt)=12 then cast(bod_amot as decimal(15,2)) else 0 end)';
    commandtext:=commandtext+' from tB_bill where bod_type_id in '; //(18,30)
    case RadioGroup2.ItemIndex of
        0:  commandtext:=commandtext+'(18,30)';
        1:  commandtext:=commandtext+'(18)';
        2:  commandtext:=commandtext+'(30)';
    end;
    commandtext:=commandtext+' and bod_status_id=1 and comp_id=1';
{
    if wwRadioGroup1.ItemIndex=0 then commandtext:=commandtext+' and carry_dt>=''2021-1-1'' and carry_dt<''2022-1-1''';
    if wwRadioGroup1.ItemIndex=1 then commandtext:=commandtext+' and carry_dt>=''2022-1-1'' and carry_dt<''2023-1-1''';
}
    commandtext:=commandtext+' and carry_dt>='''+inttostr(dxSpinEdit1.IntValue)+'-1-1'' and carry_dt<'''+inttostr(dxSpinEdit1.IntValue+1)+'-1-1''';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and bank_id='+inttostr(dxbuttonedit1.tag);
    commandtext:=commandtext+' group by bank_id) a';
    commandtext:=commandtext+' left join tb_bank b on a.bank_id=b.bank_id';
    commandtext:=commandtext+' order by b.bank_name,b.bank_acnt';
//    commandtext:=commandtext+'0,';
//	if dxLookupTreeView1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
//	commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport30.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbank do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('bank_name').asstring+' '+query1.fieldbyname('bank_acnt').asstring;
        dxbuttonedit1.tag :=query1.fieldbyname('bank_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
{
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
}
end;

procedure Tqryreport30.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
//fieldbyname('Cprofit').asfloat/fieldbyname('Camot').asfloat
{
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
}
end;

procedure Tqryreport30.N3Click(Sender: TObject);
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

procedure Tqryreport30.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport30.N2Click(Sender: TObject);
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

procedure Tqryreport30.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport30.dxDBGrid2CustomDrawFooter(Sender: TObject;
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

procedure Tqryreport30.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cc').asfloat:=fieldbyname('c01').asfloat+fieldbyname('c02').asfloat
                              +fieldbyname('c03').asfloat+fieldbyname('c04').asfloat
                              +fieldbyname('c05').asfloat+fieldbyname('c06').asfloat
                              +fieldbyname('c07').asfloat+fieldbyname('c08').asfloat
                              +fieldbyname('c09').asfloat+fieldbyname('c10').asfloat
                              +fieldbyname('c11').asfloat+fieldbyname('c12').asfloat;
end;
end;

procedure Tqryreport30.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tqryreport30.DSqryDataChange(Sender: TObject; Field: TField);
begin
SpeedButton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

end.
