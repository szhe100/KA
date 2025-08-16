unit Unit46;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;  //, tcEdit, TreeComboBox

type
  Tqryreport03 = class(TForm)
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
    pickdist: TClientDataSet;
    ImageList: TImageList;
    Label3: TLabel;
    Shape4: TShape;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1ord: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape1: TShape;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1district: TdxDBGridColumn;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1district: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1profit: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rate: TBCDField;
    qrysta_id: TIntegerField;
    qrydistrict: TStringField;
    qrybroker: TStringField;
    qryord: TLargeintField;
    qryprofit: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qryrate: TBCDField;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    qryteam_id: TAutoIncField;
    qryteam_name: TStringField;
    Edit1: TEdit;
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
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport03: Tqryreport03;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tqryreport03.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
end;

procedure Tqryreport03.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport03.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport03.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport03.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport03.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('»’∆⁄…Ë÷√¥ÌŒÛ');
with qry do
begin
    if active=true then close;
    commandtext:='exec dbo.sp_qrybrokersale '+inttostr(compid)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
//edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport03.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
  if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tqryreport03.FormCreate(Sender: TObject);
begin
dxDateEdit1.Date:=date;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport03.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryreport03.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryreport03.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
