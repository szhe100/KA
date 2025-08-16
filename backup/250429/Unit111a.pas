unit Unit111a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport24 = class(TForm)
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
    dxCheckEdit1: TdxCheckEdit;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2rec_amot: TdxDBGridColumn;
    dxDBGrid2Cbal: TdxDBGridColumn;
    qry1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    DSqry1: TDataSource;
    qry2: TClientDataSet;
    DSqry2: TDataSource;
    dxButtonEdit3: TdxButtonEdit;
    Label4: TLabel;
    Shape2: TShape;
    Label8: TLabel;
    Shape7: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3med_name: TdxDBGridColumn;
    qry1cdistrict: TStringField;
    dxDBGrid2cdistrict: TdxDBGridColumn;
    qry1pay_amot: TBCDField;
    qry1bal0: TBCDField;
    dxDBGrid2bal0: TdxDBGridColumn;
    dxDBGrid2pay_amot: TdxDBGridColumn;
    qry2bal0: TBCDField;
    qry2amot: TBCDField;
    qry2rec_amot: TBCDField;
    qry2pay_amot: TBCDField;
    qry2Cbal: TBCDField;
    qry2med_code: TStringField;
    qry2med_name: TStringField;
    qry2specifi: TStringField;
    qry2pdt_place: TStringField;
    qry2med_unit: TStringField;
    dxDBGrid3med_code: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    qry2med_id: TIntegerField;
    Shape3: TShape;
    Label3: TLabel;
    Label5: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    RadioGroup3: TRadioGroup;
    qry2type_id1: TWordField;
    qry2Ctypeid1: TStringField;
    dxDBGrid3Ctypeid1: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
    procedure DSqry2DataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qry2CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport24: Tqryreport24;

implementation

uses datamodu, Main, Unit16a, Unit16c, Unit7;

{$R *.DFM}

procedure Tqryreport24.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry1 do
    if active=true then close;
with qry2 do
    if active=true then close;
with dm.district do
    if active=true then close;
end;

procedure Tqryreport24.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport24.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport24.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(ҵ�����˻���)1.xls', dxDBGrid2.SaveToXLS, self.tag)
else if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(Ʒ�ֻ���)1.xls', dxDBGrid3.SaveToXLS, self.tag)
end;

procedure Tqryreport24.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
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
        commandtext:='sp_qryreport24h '+inttostr(compid)+',';  //ҵ�����˻���
        if dxLookupTreeView1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
        if dxButtonEdit2.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
//        commandtext:=commandtext+'1,'; // ����������������˶�ʱ������ᣬһ�ɰ������з�������
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
    with qry2 do
    begin
        if active then
        begin
            mi:=fieldbyname('med_id').asinteger;
            close;
        end
        else mi:=0;
//        commandtext:='sp_qryreport24a '+inttostr(compid)+',';
        commandtext:='sp_qryreport24i '+inttostr(compid)+',';
//        if dxLookupTreeView1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
        if dxButtonEdit3.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit3.tag)+',';
        if dxCheckEdit1.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
        commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
    edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('med_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
end;

procedure Tqryreport24.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryreport24.qryCalcFields(DataSet: TDataSet);
begin
{
with (dataset as TClientdataset) do
begin
	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;
end;
}
end;

procedure Tqryreport24.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid3Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid3Ctypeid1.Index] = '����') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid3Ctypeid1.Index] = '����') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '��ҵ') then
    begin
        AColor := $00CAFDFD;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '��ҵ') then
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

procedure Tqryreport24.dxDBGrid1DblClick(Sender: TObject);
begin
{
//fcateid:= qry.fieldbyname('cate_id').asinteger;
fmateid:= qry.fieldbyname('mate_id').asinteger;
fmatename:= qry.fieldbyname('mate_name').asstring;
fagentid:= qry.fieldbyname('agent_id').asinteger;
fagent:= qry.fieldbyname('agent').asstring;
//showmessage(fagent);
(Sender as TComponent).Tag:=222; //������ҵ��˾�������������ܱ� -> ��Ʊ����֧������ 
MainForm.View(Sender);
}
end;

procedure Tqryreport24.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport24.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('amot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
end;
end;

procedure Tqryreport24.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
end;

procedure Tqryreport24.PageControl1Change(Sender: TObject);
begin
speedbutton2.enabled:=(PageControl1.ActivePage=TabSheet1) and (qry1.active=true) and (qry1.recordcount>0)
                   or (PageControl1.ActivePage=TabSheet2) and (qry2.active=true) and (qry2.recordcount>0);
dxButtonEdit2.Visible:=PageControl1.ActivePage=TabSheet1;
Label2.Visible:=PageControl1.ActivePage=TabSheet1;
Shape1.Visible:=PageControl1.ActivePage=TabSheet1;
dxButtonEdit3.Visible:=PageControl1.ActivePage=TabSheet2;
//Label4.Visible:=PageControl1.ActivePage=TabSheet2;
//Shape2.Visible:=PageControl1.ActivePage=TabSheet2;
dxLookupTreeView1.Visible:=PageControl1.ActivePage=TabSheet1;
//Label8.Visible:=PageControl1.ActivePage=TabSheet1;
//Shape7.Visible:=PageControl1.ActivePage=TabSheet1;
if PageControl1.ActivePage=TabSheet1
	then label4.Caption:='��    ��' else label4.Caption:='Ʒ    ��';
end;

procedure Tqryreport24.DSqry1DataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry1.active=true) and (qry1.recordcount>0);
end;

procedure Tqryreport24.DSqry2DataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry2.active=true) and (qry2.recordcount>0);
end;

procedure Tqryreport24.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit3.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tqryreport24.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport24.qry2CalcFields(DataSet: TDataSet);
begin
with qry2 do
begin
	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('amot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='����';
        2:  fieldbyname('ctypeid1').asstring:='����';
    end;
end;
end;

end.
