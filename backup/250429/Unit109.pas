unit Unit109;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;  //, tcEdit, TreeComboBox

type
  Tqryreport10 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
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
    pickdist: TClientDataSet;
    ImageList: TImageList;
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
    qryteam_id: TAutoIncField;
    qryteam_name: TStringField;
    Edit1: TEdit;
    dxCheckEdit1: TdxCheckEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1dueamot: TdxDBGridColumn;
    dxDBGrid1adj_amot: TdxDBGridColumn;
    dxDBGrid1Cbal: TdxDBGridColumn;
    qrybal0: TBCDField;
    qryamot: TBCDField;
    qryrec_amot: TBCDField;
    qrypay_amot: TBCDField;
    qryCbal: TBCDField;
    dxDBGrid1bal0: TdxDBGridColumn;
    dxDBGrid1rec_amot: TdxDBGridColumn;
    qry1: TClientDataSet;
    BCDField1: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    DSqry1: TDataSource;
    Shape3: TShape;
    Label3: TLabel;
    Label5: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2bal0: TdxDBGridColumn;
    dxDBGrid2dueamot: TdxDBGridColumn;
    dxDBGrid2adj_amot: TdxDBGridColumn;
    dxDBGrid2rec_amot: TdxDBGridColumn;
    dxDBGrid2Cbal: TdxDBGridColumn;
    qry1med_id: TIntegerField;
    qry1med_code: TStringField;
    qry1med_name: TStringField;
    qry1specifi: TStringField;
    qry1pdt_place: TStringField;
    qry1med_unit: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    qry1dueamot: TBCDField;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    Shape2: TShape;
    Label4: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
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
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport10: Tqryreport10;

implementation

uses datamodu, Unit9, Main, Unit7;

{$R *.DFM}

procedure Tqryreport10.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport10.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport10.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport10.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport10.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(供货单位汇总)1.xls', dxDBGrid1.SaveToXLS, self.tag)
	else if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总)1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tqryreport10.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if PageControl1.ActivePage=TabSheet1 then
begin
    with qry do
    begin
        if active=true then
        begin
            mi:=fieldbyname('mate_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='sp_qryreport10 '+inttostr(compid)+',';
        if dxButtonEdit1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
        commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
    {
        commandtext:='select mate_id=a.src_id,h.mate_name,amot=sum(case a.busi_type when 3 then -1 else 1 end*cast(round(q.amot*b.qty,2) as decimal(15,2))),ckd_amot=sum(case a.busi_type when 3 then -1 else 1 end*isnull(b.ckd_amot3,0))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
        commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1 and q.amot<>0';
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxButtonEdit1.tag);
        commandtext:=commandtext+' group by a.src_id,h.mate_name';
        if not dxCheckEdit1.checked then commandtext:=commandtext+' having sum(cast(round(q.amot*b.qty,2) as decimal(15,2)))<>sum(isnull(b.ckd_amot3,0))';
    }
    edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('mate_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else if PageControl1.ActivePage=TabSheet2 then
begin
    with qry1 do
    begin
        if active=true then
        begin
            mi:=fieldbyname('med_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='sp_qryreport10a '+inttostr(compid)+',';
        if dxButtonEdit3.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit3.tag)+',';
        commandtext:=commandtext+''''+datetostr(dxDateEdit1.date)+''','''+ datetostr(dxDateEdit2.date)+'''';
    {
        commandtext:='select mate_id=a.src_id,h.mate_name,amot=sum(case a.busi_type when 3 then -1 else 1 end*cast(round(q.amot*b.qty,2) as decimal(15,2))),ckd_amot=sum(case a.busi_type when 3 then -1 else 1 end*isnull(b.ckd_amot3,0))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
        commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1 and q.amot<>0';
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxButtonEdit1.tag);
        commandtext:=commandtext+' group by a.src_id,h.mate_name';
        if not dxCheckEdit1.checked then commandtext:=commandtext+' having sum(cast(round(q.amot*b.qty,2) as decimal(15,2)))<>sum(isnull(b.ckd_amot3,0))';
    }
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

procedure Tqryreport10.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
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

procedure Tqryreport10.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tqryreport10.qryCalcFields(DataSet: TDataSet);
begin
with (dataset as TClientdataset) do
begin
//	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;
	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('dueamot').asfloat+fieldbyname('adj_amot').asfloat-fieldbyname('rec_amot').asfloat;
end;
end;

procedure Tqryreport10.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
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

procedure Tqryreport10.dxDBGrid1DblClick(Sender: TObject);
begin
fmateid1:= qry.fieldbyname('mate_id').asinteger;
//fmatename1:= qry.fieldbyname('mate_name1').asstring;
//fmateid:= qry.fieldbyname('mate_id').asinteger;
fmatename1:= qry.fieldbyname('mate_name').asstring;
(Sender as TComponent).Tag:=219; //供应商返入核销(生成返入收款单)
MainForm.View(Sender);
end;

procedure Tqryreport10.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
end;

procedure Tqryreport10.PageControl1Change(Sender: TObject);
begin
speedbutton2.enabled:=(PageControl1.ActivePage=TabSheet1) and (qry.active=true) and (qry.recordcount>0)
                   or (PageControl1.ActivePage=TabSheet2) and (qry1.active=true) and (qry1.recordcount>0)
end;

procedure Tqryreport10.DSqry1DataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry1.active=true) and (qry1.recordcount>0);
end;

procedure Tqryreport10.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit3.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

end.
