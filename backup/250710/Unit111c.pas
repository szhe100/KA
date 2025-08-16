unit Unit111c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport31 = class(TForm)
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    ImageList1: TImageList;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1district: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1profit: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rate: TBCDField;
    Edit1: TEdit;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qry: TClientDataSet;
    DSqry: TDataSource;
    qryamot: TBCDField;
    qryrec_amot: TBCDField;
    qrypay_amot: TBCDField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrymed_id: TIntegerField;
    Shape3: TShape;
    Label3: TLabel;
    Label5: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1material_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1amot1a: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1rec_amot: TdxDBGridColumn;
    dxDBGrid1pay_amot: TdxDBGridColumn;
    dxDBGrid1bal: TdxDBGridColumn;
    qryamot1a: TBCDField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1Cbodtype: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qrydtl_id: TAutoIncField;
    qrybod_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrybod_desc: TStringField;
    qrybod_type_id: TIntegerField;
    qrymate_name: TStringField;
    qryagent_id: TIntegerField;
    qryCbodtype: TStringField;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    qryqty: TBCDField;
    qrybal: TBCDField;
    dxCheckEdit1: TdxCheckEdit;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    qrymaterial_code: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport31: Tqryreport31;
  bal: real;

implementation

uses datamodu, Main, Unit16a, Unit16c, Unit7;

{$R *.DFM}

procedure Tqryreport31.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//with qry1 do
//    if active=true then close;
with qry do
    if active=true then close;
{
with dm.district do
    if active=true then close;
}
end;

procedure Tqryreport31.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport31.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport31.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport31.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
{
if PageControl1.ActivePage=TabSheet1 then
begin
    with qry1 do
    begin
        if active then
        begin
            mi:=fieldbyname('agent_id').asinteger;
            close;
        end
        else mi:=0;
//        commandtext:='sp_qryreport24 '+inttostr(compid)+',';
        commandtext:='sp_qryreport24h '+inttostr(compid)+',';  //业务负责人汇总
        if dxLookupTreeView1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
        if dxButtonEdit2.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
//        commandtext:=commandtext+'1,'; // 避免有人与其他表核对时引起误会，一律包含所有发生数据
        if dxCheckEdit1.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
        commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
            if mi>0 then locate('agent_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else if PageControl1.ActivePage=TabSheet2 then
begin
}
with qry do
begin
    if active then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='sp_qryreport24b '+inttostr(compid)+',';
    if dxButtonEdit2.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    if dxCheckEdit1.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
    commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        disablecontrols;
        open;
        last;
        bal:=fieldbyname('bal').asfloat;
        if mi>0 then locate('med_id',mi,[]) else first;
        enablecontrols;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport31.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cbodtype) then
begin
    if ANode.Strings[dxDBGrid1Cbodtype.Index] = '期 初 数' then
    begin
        AColor := clPurple;
        AFont.Color := clWhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '分销采购') then
    begin
        AColor := $00F2DBED; //$00E8C1DE; //clYellow;
        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '分销记账') then
    begin
        AColor :=  $00D2FFFF; //$0084FFFF; 
    end;
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '出纳付款') then
    begin
        AColor := $004EFC56;//$00CAFDFD; //$00FDE0FE;
    end;
end;
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
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00CAFDFD;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1amot) then
begin
    if (ANode.Values[dxDBGrid1amot.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot.Index] =ANode.Values[dxDBGrid1amot.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
end;

procedure Tqryreport31.dxDBGrid1DblClick(Sender: TObject);
begin
{
//fcateid:= qry.fieldbyname('cate_id').asinteger;
fmateid:= qry.fieldbyname('mate_id').asinteger;
fmatename:= qry.fieldbyname('mate_name').asstring;
fagentid:= qry.fieldbyname('agent_id').asinteger;
fagent:= qry.fieldbyname('agent').asstring;
//showmessage(fagent);
(Sender as TComponent).Tag:=222; //分销商业公司促销返款余额汇总表 -> 两票其他支出核销 
MainForm.View(Sender);
}
end;

procedure Tqryreport31.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag:=0;
    end;
end;

procedure Tqryreport31.qry1CalcFields(DataSet: TDataSet);
begin
{
with qry1 do
begin
	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('amot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
end;
}
end;

procedure Tqryreport31.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
end;

procedure Tqryreport31.DSqry1DataChange(Sender: TObject; Field: TField);
begin
//speedbutton2.enabled:=(qry1.active=true) and (qry1.recordcount>0);
end;

procedure Tqryreport31.DSqryDataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryreport31.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
//	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('amot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
    case fieldbyname('bod_type_id').asinteger of
         0: fieldbyname('cbodtype').asstring:='期 初 数';
         1: fieldbyname('cbodtype').asstring:='分销采购';
        36: fieldbyname('cbodtype').asstring:='分销记账';
        30: fieldbyname('cbodtype').asstring:='出纳付款';
    end;
end;
end;

procedure Tqryreport31.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1bal' then
begin
    atext:=formatfloat('###,###,##0.00',bal);
//    if bal=0 then atext:='' else atext:=formatfloat('###,###,##0.00;; ',bal);
end;
end;

end.
