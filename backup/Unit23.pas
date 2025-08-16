unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, Menus;

type
  Tsetreport16 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    qrycreat_dt: TDateTimeField;
    qrysupplier: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1supplier: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    qrydtl_id: TAutoIncField;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    qrybat_cd: TStringField;
    ADOQuery1: TADOQuery;
    dxDBGrid1cbusi_type: TdxDBGridColumn;
    qrybod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    ADOQuery1dtl_id: TAutoIncField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1agent: TStringField;
    ADOQuery1supplier: TStringField;
    ADOQuery1cbusi_type: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1checker: TStringField;
    qrycbusi_type: TStringField;
    SpeedButton1: TSpeedButton;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1district: TStringField;
    qrydistrict: TStringField;
    qrycarry_dt: TDateTimeField;
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
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
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
  setreport16: Tsetreport16;

implementation

uses datamodu, Unit7, Unit25, Unit16a;

{$R *.DFM}

procedure Tsetreport16.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport16.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport16.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport16.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport16.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport16.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport16.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
    commandtext:='select dtl_id,a.bod_cd,a.src_id,a.dst_id,a.carry_dt,a.bod_desc,b.med_id,e.med_code,e.med_name,e.specifi,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
    commandtext:=commandtext+' supplier='''',cbusi_type=dbo.fn_obj_desc(a.busi_type),'; //dbo.fn_home_name(a.src_id)
    commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,102) as datetime),';
    commandtext:=commandtext+' district=dbo.fn_getdistrictbymate_id(a.dst_id),agent=dbo.fn_mate_name(a.dst_id),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(e.unit_id),e.pdt_place,b.bat_cd,b.price,b.qty,b.amot';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine e';
    commandtext:=commandtext+' where a.bod_id=b.bod_id and a.bod_type_id=1 and a.bod_status_id=1 and b.med_id=e.med_id';
//    commandtext:=commandtext+'  and dbo.fn_inmate(a.dst_id,'+inttostr(curuserid)+')=1 and dbo.fn_inmed(b.med_id,'+inttostr(curuserid)+')=1';
    commandtext:=commandtext+'  and cast(convert(char(10),a.creat_dt,102) as datetime) between '''+datetostr(dxdateedit1.date)+''' and '''+datetostr(dxdateedit2.date)+'''';
    if dxbuttonedit1.tag<>0 then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    commandtext:=commandtext+'  order by dbo.fn_getdistrictbymate_id(a.dst_id),dbo.fn_mate_name(a.dst_id),a.creat_dt,b.dtl_id';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport16.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
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

procedure Tsetreport16.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetreport16.SpeedButton1Click(Sender: TObject);
begin
{
screen.cursor:=crhourglass;
report03:=Treport03.create(Application);
with report03 do
begin
    qry.CommandText:=self.qry.CommandText;
    qry.open;
    screen.cursor:=crdefault;
    quickrep1.Prepare;
    QRLabel6.Caption:='统计范围:'+datetostr(dxdateedit1.date)+'至'+datetostr(dxdateedit2.date);
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
}
end;

procedure Tsetreport16.N3Click(Sender: TObject);
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

procedure Tsetreport16.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport16.N2Click(Sender: TObject);
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

procedure Tsetreport16.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
