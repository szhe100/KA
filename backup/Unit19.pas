unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxdbtrel, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, Menus;

type
  Tsetreport01 = class(TForm)
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
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryqty: TBCDField;
    qryagent: TStringField;
    qrybroker: TStringField;
    qrycustomer: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrydrawamot: TBCDField;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1customer: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1drawrate: TdxDBGridMaskColumn;
    dxDBGrid1drawamot: TdxDBGridMaskColumn;
    SpeedButton1: TSpeedButton;
    qrydistrict: TStringField;
    dxDBGrid1district: TdxDBGridColumn;
    dxButtonEdit4: TdxButtonEdit;
    qrysta_id: TAutoIncField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrybod_id: TAutoIncField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrybusi_type: TStringField;
    qrybod_desc: TStringField;
    qrydtl_id: TAutoIncField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrycreater: TStringField;
    qryprice: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    qrycreat_dt: TDateTimeField;
    qrycheck_dt: TDateTimeField;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList: TImageList;
    RadioGroup1: TRadioGroup;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qryleader: TStringField;
    dxDBGrid1leader: TdxDBGridColumn;
    ADOQuery1rate0: TBCDField;
    qryrate0: TBCDField;
    dxDBGrid1rate0: TdxDBGridColumn;
    qryCrate: TFloatField;
    dxDBGrid1Crate: TdxDBGridColumn;
    qrydrawrate: TBCDField;
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
    procedure rec02AfterPost(DataSet: TDataSet);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCalcFields(DataSet: TDataSet);
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
  setreport01: Tsetreport01;

implementation

uses datamodu, Unit16, Unit7, Unit27, Unit28, Unit16a;

{$R *.DFM}

procedure Tsetreport01.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport01.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport01.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport01.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport01.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport01.SpeedButton5Click(Sender: TObject);
var mi: integer;
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
    commandtext:='select a.bod_id,a.bod_cd,a.bod_desc,a.creat_dt,a.check_dt,a.carry_dt,busi_type=dbo.fn_obj_desc(a.busi_type),creater=dbo.fn_staff_name(a.creat_by),';
    commandtext:=commandtext+'   district=dbo.fn_getdistrictbymate_id(a.dst_id),agent=dbo.fn_mate_name(a.src_id),broker=f.zname,customer=e.mate_name,'; //dbo.fn_mate_name(a.dst_id)
    commandtext:=commandtext+'   leader=dbo.fn_staff_name(dbo.fn_getleadid (b.sta_id,a.dst_id,b.med_id)),';
    commandtext:=commandtext+'   a.src_id,a.dst_id,b.sta_id,b.med_id,c.med_code,c.med_name,c.specifi,c.pdt_place,med_unit=dbo.fn_obj_desc(c.unit_id),c.qtyperpack,b.qty,b.price,';
    commandtext:=commandtext+'   b.dtl_id,drawrate=b.dtlrate,drawamot=dbo.fn_getratebydtl(b.dtl_id)*b.qty,g.rate0';
    commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_medicine c,tb_busimate e,tb_staff f,tb_brokermed g';
    commandtext:=commandtext+'  where a.comp_id='+inttostr(compid)+' and a.bod_id=b.bod_id and a.bod_type_id=2 and a.bod_status_id=1 and b.med_id=c.med_id and a.dst_id=e.mate_id and b.sta_id=f.sta_id';
    commandtext:=commandtext+'      and g.rec_id=dbo.fn_ruleid (b.sta_id,a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    if trim(dxLookupTreeView1.text)<>'' then
    begin
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            else commandtext:=commandtext+' and dbo.fn_treeischild(f.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    end;
    commandtext:=commandtext+' order by dbo.fn_getdistrictbymate_id(a.dst_id),dbo.fn_mate_name(a.src_id),dbo.fn_staff_name(b.sta_id),dbo.fn_mate_name(a.dst_id),c.med_name,c.specifi,c.pdt_place,a.carry_dt';
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport01.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
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

procedure Tsetreport01.rec02AfterPost(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
end;

procedure Tsetreport01.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport01.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetreport01.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetreport01.SpeedButton1Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
report01:=Treport01.create(Application);
with report01 do
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
end;

procedure Tsetreport01.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
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

end;

procedure Tsetreport01.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport01.qryCalcFields(DataSet: TDataSet);
begin
with qry do
    if fieldbyname('crate').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('drawrate').asfloat/fieldbyname('crate').asfloat;
end;

procedure Tsetreport01.N3Click(Sender: TObject);
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

procedure Tsetreport01.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport01.N2Click(Sender: TObject);
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

procedure Tsetreport01.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
