unit Unit118;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport21 = class(TForm)
    DSdrawlog: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
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
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1district: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1profit: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rate: TBCDField;
    qryamot: TBCDField;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    qryteam_id: TAutoIncField;
    qryteam_name: TStringField;
    Edit1: TEdit;
    dxDBGrid1amot2: TdxDBGridColumn;
    Label1: TLabel;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    Shape1: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrycredit_day: TIntegerField;
    qryamot1: TBCDField;
    qryamot2: TBCDField;
    qryamot3: TBCDField;
    qryamot4: TBCDField;
    qryamot5: TBCDField;
    qryamot6: TBCDField;
    dxDBGrid1amot3: TdxDBGridColumn;
    dxDBGrid1amot4: TdxDBGridColumn;
    dxDBGrid1amot5: TdxDBGridColumn;
    dxDBGrid1amot6: TdxDBGridColumn;
    qryCrate1: TBCDField;
    dxDBGrid1Crate1: TdxDBGridColumn;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    qrymate_name1: TStringField;
    qrysrc_id: TIntegerField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
  qryreport21: Tqryreport21;
  a0,a1,a2,a3,a4,a5,a6: real;

implementation

uses datamodu, Unit16a, Unit16c, Main;

{$R *.DFM}

procedure Tqryreport21.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport21.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport21.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport21.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport21.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport21.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active=true then
    begin
    	mi:=fieldbyname('dst_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:=' sp_qryreport21 ';
    if Trim(dxButtonEdit3.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit3.tag)+',';
    if Trim(dxButtonEdit1.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    if Trim(dxButtonEdit1.text)='' then commandtext:=commandtext+'0' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag);
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dst_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport21.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqryreport21.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tqryreport21.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    if fieldbyname('amot').asfloat=0 then
    begin
    	fieldbyname('crate1').asfloat:=0;
    	fieldbyname('crate2').asfloat:=0;
     	fieldbyname('crate3').asfloat:=0;
    	fieldbyname('crate4').asfloat:=0;
    	fieldbyname('crate5').asfloat:=0;
    	fieldbyname('crate6').asfloat:=0;
    end
    else
    begin
    	fieldbyname('crate1').asfloat:=100*fieldbyname('amot1').asfloat/fieldbyname('amot').asfloat;
    	fieldbyname('crate2').asfloat:=100*fieldbyname('amot2').asfloat/fieldbyname('amot').asfloat;
    	fieldbyname('crate3').asfloat:=100*fieldbyname('amot3').asfloat/fieldbyname('amot').asfloat;
    	fieldbyname('crate4').asfloat:=100*fieldbyname('amot4').asfloat/fieldbyname('amot').asfloat;
    	fieldbyname('crate5').asfloat:=100*fieldbyname('amot5').asfloat/fieldbyname('amot').asfloat;
    	fieldbyname('crate6').asfloat:=100*fieldbyname('amot6').asfloat/fieldbyname('amot').asfloat;
    end;
//	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;
end;
end;

procedure Tqryreport21.dxDBGrid1CustomDrawCell(Sender: TObject;
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
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
    end;
end;
{
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00CAFDFD;
//        AFont.Color := clwhite;
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

procedure Tqryreport21.dxDBGrid1DblClick(Sender: TObject);
begin
fmateid1:= qry.fieldbyname('src_id').asinteger;
fmatename1:= qry.fieldbyname('mate_name1').asstring;
fmateid:= qry.fieldbyname('dst_id').asinteger;
fmatename:= qry.fieldbyname('mate_name').asstring;
(Sender as TComponent).Tag:=219; //供应商返入核销(生成返入收款单)
MainForm.View(Sender);
{
fcateid:= qry.fieldbyname('cate_id').asinteger;
fmateid:= qry.fieldbyname('mate_id').asinteger;
fmatename:= qry.fieldbyname('mate_name').asstring;
fagentid:= qry.fieldbyname('agent_id').asinteger;
fagent:= qry.fieldbyname('agent').asstring;
//showmessage(fagent);
(Sender as TComponent).Tag:=206; //销售收款开票物流核销
MainForm.View(Sender);
}
end;

procedure Tqryreport21.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport21.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1amot' then
begin
    if Trim(AText)='' then a0:=0 else a0:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot1' then
begin
    if Trim(AText)='' then a1:=0 else a1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot2' then
begin
    if Trim(AText)='' then a2:=0 else a2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot3' then
begin
    if Trim(AText)='' then a3:=0 else a3:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot4' then
begin
    if Trim(AText)='' then a4:=0 else a4:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot5' then
begin
    if Trim(AText)='' then a5:=0 else a5:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1amot6' then
begin
    if Trim(AText)='' then a6:=0 else a6:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Crate1' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a1/a0*100);
end;
if AColumn.Name='dxDBGrid1Crate2' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a2/a0*100);
end;
if AColumn.Name='dxDBGrid1Crate3' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a3/a0*100);
end;
if AColumn.Name='dxDBGrid1Crate4' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a4/a0*100);
end;
if AColumn.Name='dxDBGrid1Crate5' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a5/a0*100);
end;
if AColumn.Name='dxDBGrid1Crate6' then
begin
    if a0=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',a6/a0*100);
end;
end;

end.
