unit Unit50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;  //, tcEdit, TreeComboBox

type
  Tqryreport04 = class(TForm)
    DSdrawlog: TDataSource;
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
    Label3: TLabel;
    Shape4: TShape;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    ImageList1: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape1: TShape;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    qrydistrict: TStringField;
    qryord: TLargeintField;
    qryprofit: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qryrate: TBCDField;
    ADOQuery1district: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1profit: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rate: TBCDField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1mate_name: TStringField;
    qrymate_id: TIntegerField;
    qrymate_name: TStringField;
    Label1: TLabel;
    Label6: TLabel;
    qrybusi_type_id: TWordField;
    qryCbusi_type: TStringField;
    qrykind_id: TWordField;
    qryCkind: TStringField;
    RadioGroup1: TRadioGroup;
    dxEdit2: TdxEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ord: TdxDBGridMaskColumn;
    dxDBGrid1district: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1Ckind: TdxDBGridColumn;
    dxDBGrid1Cbusi_type: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    qry1: TClientDataSet;
    BCDField4: TBCDField;
    DSqry1: TDataSource;
    dxDBGrid2: TdxDBGrid;
    qry1med_code: TStringField;
    qry1med_name: TStringField;
    qry1specifi: TStringField;
    qry1pdt_place: TStringField;
    qry1med_unit: TStringField;
    qry1qty: TBCDField;
    qry1amot: TBCDField;
    qry1med_id: TIntegerField;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridMaskColumn;
    dxDBGrid2specifi: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2med_unit: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2ord: TdxDBGridColumn;
    qry1ord: TLargeintField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport04: Tqryreport04;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tqryreport04.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport04.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport04.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport04.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport04.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport04.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if (RadioGroup1.ItemIndex=1) and (dxEdit2.text='') then raise Exception.Create('请输入取名数');
with qry do
begin
    if active=true then close;
    commandtext:='exec dbo.sp_qrymatesale '+inttostr(compid)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if RadioGroup1.ItemIndex=0 then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+dxEdit2.text+',';
    commandtext:=commandtext+inttostr(RadioGroup2.ItemIndex)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport04.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
  if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tqryreport04.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport04.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tqryreport04.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqryreport04.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type_id').asinteger of
        1:  fieldbyname('cbusi_type').asstring:='一级';
        2:  fieldbyname('cbusi_type').asstring:='二级';
        3:  fieldbyname('cbusi_type').asstring:='三级';
        4:  fieldbyname('cbusi_type').asstring:='特三甲';
        5:  fieldbyname('cbusi_type').asstring:='社区';
        6:  fieldbyname('cbusi_type').asstring:='基层';
        7:  fieldbyname('cbusi_type').asstring:='诊所';
        8:  fieldbyname('cbusi_type').asstring:='药店';
    end;
    case fieldbyname('kind_id').asinteger of
        1:  fieldbyname('ckind').asstring:='公立';
        2:  fieldbyname('ckind').asstring:='民营';
        3:  fieldbyname('ckind').asstring:='厂矿职工';
    end;
//    fieldbyname('cremark1').asstring:=fieldbyname('remark1').asstring;
end;
end;

procedure Tqryreport04.dxEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then key:=char(0);// 限制输入字符范围
end;

procedure Tqryreport04.dxDBGrid1DblClick(Sender: TObject);
begin
with qry do
    if (active=False) or (recordcount=0) then exit;
PageControl1.ActivePage:=TabSheet2;
with qry1 do
begin
    if active=true then close;
//sp_qrymatesale2 1,1354,1,'2014-6-1','2014-6-30'    
    commandtext:='exec dbo.sp_qrymatesale2 '+inttostr(compid)+',';
    commandtext:=commandtext+qry.fieldbyname('mate_id').asstring+',';
    commandtext:=commandtext+inttostr(RadioGroup2.ItemIndex)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
TabSheet2.Caption:=qry.fieldbyname('mate_name').asstring+' 销售明细';
end;

procedure Tqryreport04.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet2 then dxDBGrid1DblClick(nil);
end;

procedure Tqryreport04.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
