unit Unit51;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, Menus;

type
  Tsetreport06 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Label7: TLabel;
    Shape6: TShape;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1drawamot: TdxDBGridMaskColumn;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1profit: TdxDBGridColumn;
    dxDBGrid1district: TdxDBGridColumn;
    Shape1: TShape;
    Label2: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrydrawamot: TBCDField;
    qrydistrict: TStringField;
    qryprofit: TBCDField;
    qryord: TLargeintField;
    qryrate: TBCDField;
    dxDBGrid1ord: TdxDBGridColumn;
    qryteam_id: TAutoIncField;
    qryteam_name: TStringField;
    dxDBGrid1team_name: TdxDBGridColumn;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1district: TStringField;
    ADOQuery1saleamot: TBCDField;
    ADOQuery1drawamot: TBCDField;
    ADOQuery1profit: TBCDField;
    ADOQuery1sta_id: TAutoIncField;
    ADOQuery1dept_id: TIntegerField;
    ADOQuery1team_id: TIntegerField;
    ADOQuery1zname: TStringField;
    ADOQuery1zcode: TStringField;
    ADOQuery1sex: TBooleanField;
    ADOQuery1personalID: TStringField;
    ADOQuery1birthdate: TDateTimeField;
    ADOQuery1hiredate: TDateTimeField;
    ADOQuery1firedate: TDateTimeField;
    ADOQuery1origin: TStringField;
    ADOQuery1degree: TStringField;
    ADOQuery1title: TStringField;
    ADOQuery1zpost: TStringField;
    ADOQuery1phone: TStringField;
    ADOQuery1fax: TStringField;
    ADOQuery1residence: TStringField;
    ADOQuery1notes: TMemoField;
    ADOQuery1password: TStringField;
    ADOQuery1zright: TMemoField;
    ADOQuery1operative: TBooleanField;
    ADOQuery1stop_yn: TBooleanField;
    ADOQuery1stop_by: TIntegerField;
    ADOQuery1stop_for: TStringField;
    ADOQuery1stop_dt: TDateTimeField;
    ADOQuery1use_priority: TIntegerField;
    ADOQuery1receipt: TBooleanField;
    ADOQuery1broker_1: TBooleanField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1storage: TBooleanField;
    ADOQuery1account: TBooleanField;
    ADOQuery1supervisor: TBooleanField;
    ADOQuery1purchase: TBooleanField;
    ADOQuery1biller: TBooleanField;
    ADOQuery1printable: TBooleanField;
    ADOQuery1exportable: TBooleanField;
    ADOQuery1sta_type_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1qry_code: TStringField;
    ADOQuery1pick_ord: TIntegerField;
    ADOQuery1opr_scale: TWordField;
    ADOQuery1med_scale: TWordField;
    ADOQuery1depo_bank: TIntegerField;
    ADOQuery1bank_name: TStringField;
    ADOQuery1depo_acco: TStringField;
    ADOQuery1district_1: TIntegerField;
    ADOQuery1receiver: TStringField;
    ADOQuery1Email: TStringField;
    ADOQuery1mobile_no: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1rate: TBCDField;
    ADOQuery1team_id_1: TIntegerField;
    ADOQuery1team_name: TStringField;
    qrysaleamot: TBCDField;
    dxDBGrid1saleamot: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport06: Tsetreport06;

implementation

uses datamodu, Unit28, Unit31, Unit41;

{$R *.DFM}

procedure Tsetreport06.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
with dm.edistrict do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport06.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport06.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport06.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport06.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport06.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport06.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
    commandtext:='sp_brokerexgbal1 '+inttostr(compid)+',';
    if trim(dxbuttonedit4.text)='' then commandtext:=commandtext+'0'
                                   else commandtext:=commandtext+inttostr(dxbuttonedit4.tag);
    if trim(dxLookupEdit1.text)='' then commandtext:=commandtext+',0'
                                   else commandtext:=commandtext+','+dm.edistrict.fieldbyname('dist_id').asstring;
    commandtext:=commandtext+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
//edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport06.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=pickbroker.query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=pickbroker.query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;
end;

procedure Tsetreport06.FormActivate(Sender: TObject);
begin
with dm.edistrict do
    if active=false then open;
end;

procedure Tsetreport06.N3Click(Sender: TObject);
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

procedure Tsetreport06.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport06.N2Click(Sender: TObject);
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

procedure Tsetreport06.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
