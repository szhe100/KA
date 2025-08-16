unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport01 = class(TForm)
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
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape4: TShape;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    ADOQuery1dist: TStringField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1qtyperbox: TBCDField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1fyear: TIntegerField;
    ADOQuery1fmonth: TIntegerField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    qrydist: TStringField;
    qrymate_name: TStringField;
    qrymed_id: TIntegerField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qryqtyperpack: TBCDField;
    qryqtyperbox: TBCDField;
    qrymed_unit: TStringField;
    qryfyear: TIntegerField;
    qryfmonth: TIntegerField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    dxDBGrid1dist: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1syearmonth: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    ADOQuery1syearmonth: TStringField;
    qrysyearmonth: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList1: TImageList;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxCheckEdit1: TdxCheckEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport01: Tqryreport01;

implementation

uses datamodu;

{$R *.DFM}

procedure Tqryreport01.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport01.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport01.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport01.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport01.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('»’∆⁄…Ë÷√¥ÌŒÛ');
with qry do
begin
    if active=true then close;
    commandtext:='exec dbo.sp_report001 '+inttostr(compid)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring;
    if dxCheckEdit1.Checked then commandtext:=commandtext+',1' else commandtext:=commandtext+',0';
    commandtext:=commandtext+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport01.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqryreport01.FormCreate(Sender: TObject);
begin
dxDateEdit1.Date:=date;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport01.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
