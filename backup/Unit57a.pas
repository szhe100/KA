unit Unit57a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, dxCntner, dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl, dxTL,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxEdLib, dxEditor, ExtCtrls,
  StdCtrls, Buttons, DBClient;

type
  Tqrybankacc = class(TForm)
    Panel1: TPanel;
    Shape6: TShape;
    Shape8: TShape;
    Label6: TLabel;
    Label9: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    SpeedButton5: TSpeedButton;
    Label4: TLabel;
    Shape3: TShape;
    DSqry: TDataSource;
    SpeedButton1: TSpeedButton;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt: TdxDBGridDateColumn;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2bod_type: TdxDBGridMaskColumn;
    dxDBGrid2busi_type: TdxDBGridMaskColumn;
    dxDBGrid2bod_desc: TdxDBGridMaskColumn;
    dxDBGrid2bod_amot1: TdxDBGridMaskColumn;
    dxDBGrid2bod_amot2: TdxDBGridMaskColumn;
    dxDBGrid2bod_amot3: TdxDBGridColumn;
    dxDBGrid2bod_amot4: TdxDBGridColumn;
    dxDBGrid2balance: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2comptitle: TdxDBGridColumn;
    dxDBGrid2expensesup: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    dxDBGrid2checker: TdxDBGridMaskColumn;
    qrybankacc: TClientDataSet;
    qrybankaccbod_id: TIntegerField;
    qrybankacccheck_dt: TDateTimeField;
    qrybankaccbod_cd: TStringField;
    qrybankaccbod_type: TStringField;
    qrybankaccbod_amot1: TBCDField;
    qrybankaccbod_amot2: TBCDField;
    qrybankaccbod_amot3: TBCDField;
    qrybankaccbod_amot4: TBCDField;
    qrybankaccbod_desc: TStringField;
    qrybankaccbusi_type: TStringField;
    qrybankaccmate_name: TStringField;
    qrybankaccagent: TStringField;
    qrybankaccexpensesup: TStringField;
    qrybankacccomptitle: TStringField;
    qrybankacccreater: TStringField;
    qrybankaccchecker: TStringField;
    qrybankaccbalance: TBCDField;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    DShomebank: TDataSource;
    homebankbalance: TBCDField;
    Edit1: TEdit;
    qrybankacccarry_dt: TDateTimeField;
    dxDBGrid1bank_name: TdxDBGridColumn;
    dxDBGrid1bank_acnt: TdxDBGridColumn;
    dxDBGrid1balance: TdxDBGridColumn;
    Edit2: TEdit;
    Label8: TLabel;
    homebankstop_yn: TBooleanField;
    dxCheckEdit1: TdxCheckEdit;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    dxEdit1: TdxEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DShomebankDataChange(Sender: TObject; Field: TField);
    procedure dxCheckEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrybankacc: Tqrybankacc;

implementation

uses datamodu, Unit146, Main;

{$R *.DFM}

procedure Tqrybankacc.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tqrybankacc.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqrybankacc.FormActivate(Sender: TObject);
begin
{
with homebank do
begin
    if active=true then close;
    commandtext:='select b.balance,stop_yn=isnull(a.stop_yn,0),a.* from tb_bank a left join tb_bankbal b on a.bank_id=b.bank_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.managered=1 ';
    if not dxCheckEdit1.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    commandtext:=commandtext+' order by a.bank_name';
Edit2.text:=commandtext;
    open;
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select sum(balance) from tb_bank ';
    commandtext:=commandtext+' where comp_id='+inttostr(compid);
    commandtext:=commandtext+' and bank_name not like ''%其他%'' and bank_name not like ''%损益%''';
    commandtext:=commandtext+' and bank_name not like ''%期初数%'' and bank_name not like ''%换货%''';
    commandtext:=commandtext+' and bank_name not like ''%营业外收入%''';
    open;
    label7.caption:=formatfloat('###,###,##0.00',fields[0].asfloat);
    close;
end;
}
end;

procedure Tqrybankacc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qrybankacc do
    if active=true then close;
with homebank do
    if active=true then close;
fbodid:=0;
end;

procedure Tqrybankacc.SpeedButton5Click(Sender: TObject);
begin
with homebank do
begin
    if active=true then close;
    commandtext:='select b.balance,stop_yn=isnull(a.stop_yn,0),a.* from tb_bank a left join tb_bankbal b on a.bank_id=b.bank_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.managered=1 ';
    if dxEdit1.text<>'' then commandtext:=commandtext+' and a.bank_name like ''%'+dxEdit1.text+'%''';
//    if dxButtonEdit1.text<>'' then commandtext:=commandtext+' and a.bank_name like ''%'+dxButtonEdit1.text+'%''';
    if not dxCheckEdit1.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    commandtext:=commandtext+' order by a.bank_name';
Edit2.text:=commandtext;
    open;
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select sum(balance) from tb_bank ';
    commandtext:=commandtext+' where comp_id='+inttostr(compid);
    if not dxCheckEdit1.Checked then commandtext:=commandtext+' and isnull(stop_yn,0)=0';
    commandtext:=commandtext+' and bank_name not like ''%其他%'' and bank_name not like ''%损益%''';
    commandtext:=commandtext+' and bank_name not like ''%期初数%'' and bank_name not like ''%换货%''';
    commandtext:=commandtext+' and bank_name not like ''%营业外收入%''';
    open;
    label7.caption:=formatfloat('###,###,##0.00',fields[0].asfloat);
    close;
end;

{
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
label2.caption:=homebank.fieldbyname('bank_name').asstring;
label3.caption:=homebank.fieldbyname('bank_acnt').asstring;
with qrybankacc do
begin
    if active=true then close;
    commandtext:='sp_qrybankexg '+homebank.fieldbyname('bank_id').asstring+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
}
end;

procedure Tqrybankacc.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qrybankacc do
begin
    speedbutton1.Enabled:=(active=true) and (recordcount>0);
    speedbutton2.Enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqrybankacc.SpeedButton1Click(Sender: TObject);
begin
//if not hasprintright(2,curuserid,self.tag)
//    then raise Exception.Create('抱歉，你无权打印本报表');
setprogress(1);
//qrybankacc.Disablecontrols;
report33:=Treport33.create(Application);
with report33 do
begin
    quickrep1.prepare;
    qrlabel6.caption:=label2.caption;
    qrlabel23.caption:=label3.caption;
    qrlabel16.caption:='统计范围:'+datetostr(dxDateEdit1.date)+'--'+datetostr(dxDateEdit2.date);
    setprogress(0);
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
//qrybankacc.Enablecontrols;
end;

procedure Tqrybankacc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrybankacc.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with homebank do
begin
{
    if active=true then close;
    commandtext:='select a.* from tb_bank a where a.comp_id='+inttostr(compid);
    if dxButtonEdit1.text<>'' then commandtext:=commandtext+' and a.bank_name like ''%'+dxButtonEdit1.text+'%''';
    commandtext:=commandtext+' order by a.bank_name';
    open;
}
    if active=true then close;
    commandtext:='select b.balance,stop_yn=isnull(a.stop_yn,0),a.* from tb_bank a left join tb_bankbal b on a.bank_id=b.bank_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.managered=1 ';
    if dxButtonEdit1.text<>'' then commandtext:=commandtext+' and a.bank_name like ''%'+dxButtonEdit1.text+'%''';
    if not dxCheckEdit1.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0'; 
    commandtext:=commandtext+' order by a.bank_name';
    open;
end;
end;

procedure Tqrybankacc.dxDBGrid1DblClick(Sender: TObject);
begin
//SpeedButton5Click(self);
end;

procedure Tqrybankacc.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDBGrid).datasource;
end;

procedure Tqrybankacc.SpeedButton2Click(Sender: TObject);
begin
if wwDBNavigator1.DataSource=DShomebank
    then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', '银行帐户余额查询1.xls', dxDBGrid1.SaveToXLS, self.tag)
    else dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', '银行帐户('+homebank.fieldbyname('bank_name').asstring+')交易明细查询1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tqrybankacc.dxDBGrid2DblClick(Sender: TObject);
begin
fbodid:= qrybankacc.fieldbyname('bod_id').asinteger;
if fbodid=0 then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_id,bod_type_id from tb_bill where bod_id='+inttostr(fbodid);
    open;
    fbodtypeid:=fieldbyname('bod_type_id').asinteger;
//    fbusitype:=fieldbyname('busi_type').asinteger;
//    showmessage(inttostr(fbusitype));
end;
if (fbodtypeid=21) then (Sender as TComponent).Tag:=32;
if (fbodtypeid=22) then (Sender as TComponent).Tag:=33;
if (fbodtypeid=23) then (Sender as TComponent).Tag:=34;
if (fbodtypeid=24) then (Sender as TComponent).Tag:=35;
if (fbodtypeid=25) then (Sender as TComponent).Tag:=118;
if (fbodtypeid=37) then (Sender as TComponent).Tag:=142;
if (fbodtypeid=38) then (Sender as TComponent).Tag:=143;
MainForm.View(Sender);
end;

procedure Tqrybankacc.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid2bod_cd) then
begin
    if ANode.Strings[dxDBGrid2bod_cd.Index] = '期初数' then
    begin
//        AColor := clMedGray;
        AColor := clblack;
        AFont.Color := clWhite;
    end;
end;
end;

procedure Tqrybankacc.DShomebankDataChange(Sender: TObject; Field: TField);
begin
//SpeedButton5Click(self);
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
label2.caption:=homebank.fieldbyname('bank_name').asstring;
label3.caption:=homebank.fieldbyname('bank_acnt').asstring;
with qrybankacc do
begin
    if active=true then close;
    commandtext:='sp_qrybankexg '+homebank.fieldbyname('bank_id').asstring+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrybankacc.dxCheckEdit1Change(Sender: TObject);
begin
{
with homebank do
begin
    if active=true then close;
    commandtext:='select b.balance,stop_yn=isnull(a.stop_yn,0),a.* from tb_bank a left join tb_bankbal b on a.bank_id=b.bank_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.managered=1 ';
    if not dxCheckEdit1.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    commandtext:=commandtext+' order by a.bank_name';
Edit2.text:=commandtext;    
    open;
end;
}
end;

end.
