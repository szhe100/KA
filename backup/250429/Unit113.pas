unit Unit113;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  ImgList, dxdbtrel, Menus;

type
  Tqryreport15 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
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
    dxDBGrid1qty1: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1qty2: TdxDBGridMaskColumn;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrycreat_dt: TDateTimeField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrybat_cd: TStringField;
    qrycreater: TStringField;
    qrydtl_id: TAutoIncField;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    qrybod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    Shape3: TShape;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    qrycarry_dt: TDateTimeField;
    SpeedButton1: TSpeedButton;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    ImageList1: TImageList;
    ADOQuery1district1: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qrybod_desc: TStringField;
    Shape2: TShape;
    Label2: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qryagent_id: TIntegerField;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxPickEdit1: TdxPickEdit;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qryqty1: TBCDField;
    qryqty2: TBCDField;
    qryqty3: TBCDField;
    dxDBGrid1qty3: TdxDBGridColumn;
    dxDBGrid1Cdiffqty: TdxDBGridColumn;
    qryCdiffqty: TBCDField;
    Edit1: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure rec02AfterPost(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport15: Tqryreport15;

implementation

uses datamodu, Unit7, Unit16a, Unit16c, Unit9; //, Unit16, Unit7, Unit26, Unit16a, Unit16c, Unit9;

{$R *.DFM}

procedure Tqryreport15.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport15.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport15.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport15.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport15.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport15.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport15.SpeedButton5Click(Sender: TObject);
var si,mi: integer;
    ss: string[12];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.bod_id,b.dtl_id,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,a.bod_cd,a.bod_desc,';
    commandtext:=commandtext+' a.src_id,mate_name1=dbo.fn_mate_name(a.src_id),a.dst_id,mate_name2=dbo.fn_mate_name(a.dst_id),';
    commandtext:=commandtext+' a.agent_id,agent=dbo.fn_mate_name(a.agent_id),m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),';
    commandtext:=commandtext+' b.bat_cd,b.price,b.qty,b.qty1,b.qty2,qty3=c.qty,b.amot,creater=dbo.fn_staff_name(a.creat_by)';
    commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' left join (select a.bod_id,a.relative_id,b.rela_id1,b.qty from tb_bill a,tb_bill_dtl b where a.bod_type_id=42 and a.bod_status_id=1 and a.bod_id=b.bod_id and a.bod_id=b.bod_id and b.qty<0) c';
    commandtext:=commandtext+' 	on a.bod_id=c.relative_id and b.dtl_id=c.rela_id1';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1 and b.qty2>0 and b.qty<>b.qty2';
    if Trim(dxEdit1.text)<>'' then
    begin
        ss:=trim(dxEdit1.text);
        if pos('-',ss)>0 then mi:=length(ss)-3 else mi:=length(ss);
        for si:=1 to 8-mi do ss:='0'+ss;
        commandtext:=commandtext+' and a.bod_cd='''+ss+'''';
        dxEdit1.text:=ss;
    end
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit3.tag);
        if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
    end;
edit1.text:=commandtext;
//    commandtext:=commandtext+'  order by dbo.fn_getdistrictbymate_id(a.dst_id),dbo.fn_mate_name(a.src_id),dbo.fn_mate_name(a.dst_id),a.creat_dt,b.dtl_id';
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport15.rec02AfterPost(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
end;

procedure Tqryreport15.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport15.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit1.selectall;
    dxEdit1.setfocus;
end;
end;

procedure Tqryreport15.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryreport15.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;

procedure Tqryreport15.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tqryreport15.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryreport15.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport15.N3Click(Sender: TObject);
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

procedure Tqryreport15.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport15.N2Click(Sender: TObject);
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

procedure Tqryreport15.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport15.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport15.qryCalcFields(DataSet: TDataSet);
begin
with qry do
	fieldbyname('cdiffqty').asfloat:=fieldbyname('qty').asfloat-fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat;
end;

end.
