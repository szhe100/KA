unit Unit110;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport11 = class(TForm)
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
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    qryteam_id: TAutoIncField;
    qryteam_name: TStringField;
    Edit1: TEdit;
    dxDBGrid1Cnot_amot: TdxDBGridColumn;
    qryCnot_amot: TBCDField;
    dxCheckEdit1: TdxCheckEdit;
    Label1: TLabel;
    qryckd_amot1: TBCDField;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    Shape1: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport11: Tqryreport11;

implementation

uses datamodu, Main, Unit16a, Unit16c;

{$R *.DFM}

procedure Tqryreport11.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport11.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport11.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport11.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport11.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport11.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active=true then
    begin
    	mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.cate_id,mate_id=a.dst_id,a.agent_id,';
    commandtext:=commandtext+' j.mate_name,agent=p.mate_name,amot=sum(case a.busi_type when 3 then -1 else 1 end*cast(round(b.price1*b.qty,2) as decimal(15,2))),ckd_amot=sum(case a.busi_type when 3 then -1 else 1 end*isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
    if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' group by  a.cate_id,a.dst_id,a.agent_id,j.mate_name,p.mate_name';
    if not dxCheckEdit1.checked then commandtext:=commandtext+' having sum(cast(round(b.price1*b.qty,2) as decimal(15,2)))<>0 and sum(cast(round(b.price1*b.qty,2) as decimal(15,2)))<>sum(isnull(b.ckd_amot1,0))';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport11.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport11.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tqryreport11.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;
end;
end;

procedure Tqryreport11.dxDBGrid1CustomDrawCell(Sender: TObject;
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
end;

procedure Tqryreport11.dxDBGrid1DblClick(Sender: TObject);
begin
fcateid:= qry.fieldbyname('cate_id').asinteger;
fmateid:= qry.fieldbyname('mate_id').asinteger;
fmatename:= qry.fieldbyname('mate_name').asstring;
fagentid:= qry.fieldbyname('agent_id').asinteger;
fagent:= qry.fieldbyname('agent').asstring;
//showmessage(fagent);
(Sender as TComponent).Tag:=206; //销售收款开票物流核销
MainForm.View(Sender);
end;

procedure Tqryreport11.dxButtonEdit2ButtonClick(Sender: TObject;
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

end.
