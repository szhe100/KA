unit Unit74;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ADODB, ImgList, Menus, DB, DBClient, StdCtrls, dxEdLib, Comobj,
  ExtCtrls, dxdbtrel, dxEditor, wwSpeedButton, wwDBNavigator, wwclearpanel,
  dxDBEdtr, dxDBELib;

type
  Tsetreport13 = class(TForm)
    SpeedButton4: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    qry: TClientDataSet;
    DSqry: TDataSource;
    SpeedButton3: TSpeedButton;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrymed_type: TStringField;
    qryqtyperpack: TBCDField;
    qrycreater: TStringField;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Shape2: TShape;
    Label3: TLabel;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    ADOQuery1: TADOQuery;
    type1: TClientDataSet;
    DataSource1: TDataSource;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource2: TDataSource;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    DSlevel1: TDataSource;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    dxButtonEdit3: TdxButtonEdit;
    dxLookupEdit2: TdxLookupEdit;
    dxLookupEdit1: TdxLookupEdit;
    Label2: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label6: TLabel;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrydist3: TStringField;
    qryrec_id: TAutoIncField;
    qrycomp_id: TWordField;
    qrylevel_id1: TIntegerField;
    qrylevel_id2: TIntegerField;
    qrylevel_id3: TIntegerField;
    qrydistrict_id: TIntegerField;
    qryproduct_line: TStringField;
    qrymed_id: TIntegerField;
    qrymate_id: TIntegerField;
    qryf1: TBooleanField;
    qryf2: TBooleanField;
    qrydt1: TDateTimeField;
    qrydt2: TDateTimeField;
    qrytype_id1: TWordField;
    qrytype_id2: TWordField;
    qryprice: TBCDField;
    qryqty1: TIntegerField;
    qryqty2: TIntegerField;
    qryqty3: TIntegerField;
    qryqty4: TIntegerField;
    qryqty5: TIntegerField;
    qryqty6: TIntegerField;
    qryqty7: TIntegerField;
    qryqty8: TIntegerField;
    qryqty9: TIntegerField;
    qryqty10: TIntegerField;
    qryqty11: TIntegerField;
    qryqty12: TIntegerField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrymodify_by: TIntegerField;
    qrymodify_dt: TDateTimeField;
    qrymate_name: TStringField;
    qryLtype1: TStringField;
    qryLtype2: TStringField;
    qryCqty: TIntegerField;
    qrycamt1: TFloatField;
    qrycamt2: TFloatField;
    qrycamt3: TFloatField;
    qrycamt4: TFloatField;
    qrycamt5: TFloatField;
    qrycamt6: TFloatField;
    qrycamt7: TFloatField;
    qrycamt8: TFloatField;
    qrycamt9: TFloatField;
    qrycamt10: TFloatField;
    qrycamt11: TFloatField;
    qrycamt12: TFloatField;
    qrycamot: TFloatField;
    Panel1: TPanel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2qty1: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    dxDBGrid2creat_dt: TdxDBGridDateColumn;
    Splitter1: TSplitter;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1product_line: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1Cqty: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1qty3: TdxDBGridColumn;
    dxDBGrid1qty4: TdxDBGridColumn;
    dxDBGrid1qty5: TdxDBGridColumn;
    dxDBGrid1qty6: TdxDBGridColumn;
    dxDBGrid1qty7: TdxDBGridColumn;
    dxDBGrid1qty8: TdxDBGridColumn;
    dxDBGrid1qty9: TdxDBGridColumn;
    dxDBGrid1qty10: TdxDBGridColumn;
    dxDBGrid1qty11: TdxDBGridColumn;
    dxDBGrid1qty12: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1camot: TdxDBGridColumn;
    dxDBGrid1camt1: TdxDBGridColumn;
    dxDBGrid1camt2: TdxDBGridColumn;
    dxDBGrid1camt3: TdxDBGridColumn;
    dxDBGrid1camt4: TdxDBGridColumn;
    dxDBGrid1camt5: TdxDBGridColumn;
    dxDBGrid1camt6: TdxDBGridColumn;
    dxDBGrid1camt7: TdxDBGridColumn;
    dxDBGrid1camt8: TdxDBGridColumn;
    dxDBGrid1camt9: TdxDBGridColumn;
    dxDBGrid1camt10: TdxDBGridColumn;
    dxDBGrid1camt11: TdxDBGridColumn;
    dxDBGrid1camt12: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    qrydtl: TClientDataSet;
    DSqrydtl: TDataSource;
    qrydtldtl_id: TAutoIncField;
    qrydtlrec_id: TIntegerField;
    qrydtlmate_id1: TIntegerField;
    qrydtlmate_name1: TStringField;
    qrydtlmate_name: TStringField;
    qrydtlf1: TBooleanField;
    qrydtlf2: TBooleanField;
    qrydtldt1: TDateTimeField;
    qrydtldt2: TDateTimeField;
    qrydtlqty1: TIntegerField;
    qrydtlqty2: TIntegerField;
    qrydtlqty3: TIntegerField;
    qrydtlqty4: TIntegerField;
    qrydtlqty5: TIntegerField;
    qrydtlqty6: TIntegerField;
    qrydtlqty7: TIntegerField;
    qrydtlqty8: TIntegerField;
    qrydtlqty9: TIntegerField;
    qrydtlqty10: TIntegerField;
    qrydtlqty11: TIntegerField;
    qrydtlqty12: TIntegerField;
    qrydtlCqty: TIntegerField;
    qrydtlcreat_by: TIntegerField;
    qrydtlcreat_dt: TDateTimeField;
    qrydtlmodify_by: TIntegerField;
    qrydtlmodify_dt: TDateTimeField;
    qrydtlcreater: TStringField;
    qrydtlcamt1: TFloatField;
    qrydtlcamt2: TFloatField;
    qrydtlcamt3: TFloatField;
    qrydtlcamt4: TFloatField;
    qrydtlcamt5: TFloatField;
    qrydtlcamt6: TFloatField;
    qrydtlcamt7: TFloatField;
    qrydtlcamt8: TFloatField;
    qrydtlcamt9: TFloatField;
    qrydtlcamt10: TFloatField;
    qrydtlcamt11: TFloatField;
    qrydtlcamt12: TFloatField;
    qrydtlcamot: TFloatField;
    qrydtltype_id1: TWordField;
    qrydtltype_id2: TWordField;
    qrydtlLtype1: TStringField;
    qrydtlLtype2: TStringField;
    dxDBGrid2Ltype2: TdxDBGridLookupColumn;
    dxDBGrid2f2: TdxDBGridCheckColumn;
    dxDBGrid2f1: TdxDBGridCheckColumn;
    dxDBGrid2dt1: TdxDBGridColumn;
    dxDBGrid2Cqty: TdxDBGridColumn;
    dxDBGrid2qty2: TdxDBGridColumn;
    dxDBGrid2qty3: TdxDBGridColumn;
    dxDBGrid2qty4: TdxDBGridColumn;
    dxDBGrid2qty5: TdxDBGridColumn;
    dxDBGrid2qty6: TdxDBGridColumn;
    dxDBGrid2qty7: TdxDBGridColumn;
    dxDBGrid2qty8: TdxDBGridColumn;
    dxDBGrid2qty9: TdxDBGridColumn;
    dxDBGrid2qty10: TdxDBGridColumn;
    dxDBGrid2qty11: TdxDBGridColumn;
    dxDBGrid2qty12: TdxDBGridColumn;
    dxDBGrid2camot: TdxDBGridColumn;
    dxDBGrid2camt1: TdxDBGridColumn;
    dxDBGrid2camt2: TdxDBGridColumn;
    dxDBGrid2camt3: TdxDBGridColumn;
    dxDBGrid2camt4: TdxDBGridColumn;
    dxDBGrid2camt5: TdxDBGridColumn;
    dxDBGrid2camt6: TdxDBGridColumn;
    dxDBGrid2camt7: TdxDBGridColumn;
    dxDBGrid2camt8: TdxDBGridColumn;
    dxDBGrid2camt9: TdxDBGridColumn;
    dxDBGrid2camt10: TdxDBGridColumn;
    dxDBGrid2camt11: TdxDBGridColumn;
    dxDBGrid2camt12: TdxDBGridColumn;
    dxDBGrid2dt2: TdxDBGridDateColumn;
    dxDBGrid2Ltype1: TdxDBGridLookupColumn;
    DSbroker: TDataSource;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    dxLookupEdit4: TdxLookupEdit;
    dxButtonEdit4: TdxButtonEdit;
    qryleader: TStringField;
    qrylead_id: TIntegerField;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    Label8: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    dxDBGrid2dtl_id: TdxDBGridColumn;
    N11: TMenuItem;
    Excel1: TMenuItem;
    Label13: TLabel;
    qrydtlqty0: TIntegerField;
    dxDBGrid2qty0: TdxDBGridColumn;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3level1: TdxDBGridColumn;
    dxDBGrid3level2: TdxDBGridColumn;
    dxDBGrid3level3: TdxDBGridColumn;
    dxDBGrid3dist2: TdxDBGridColumn;
    dxDBGrid3leader: TdxDBGridColumn;
    dxDBGrid3product_line: TdxDBGridColumn;
    dxDBGrid3med_unit: TdxDBGridMaskColumn;
    dxDBGrid3Cqty: TdxDBGridColumn;
    dxDBGrid3qty1: TdxDBGridColumn;
    dxDBGrid3qty2: TdxDBGridColumn;
    dxDBGrid3qty3: TdxDBGridColumn;
    dxDBGrid3qty4: TdxDBGridColumn;
    dxDBGridColumn12: TdxDBGridColumn;
    dxDBGridColumn13: TdxDBGridColumn;
    dxDBGridColumn14: TdxDBGridColumn;
    dxDBGridColumn15: TdxDBGridColumn;
    dxDBGridColumn16: TdxDBGridColumn;
    dxDBGrid3qty10: TdxDBGridColumn;
    dxDBGrid3qty11: TdxDBGridColumn;
    dxDBGrid3qty12: TdxDBGridColumn;
    dxDBGrid3price: TdxDBGridColumn;
    dxDBGrid3camot: TdxDBGridColumn;
    dxDBGrid3camt1: TdxDBGridColumn;
    dxDBGridColumn23: TdxDBGridColumn;
    dxDBGridColumn24: TdxDBGridColumn;
    dxDBGridColumn25: TdxDBGridColumn;
    dxDBGrid3camt5: TdxDBGridColumn;
    dxDBGrid3camt6: TdxDBGridColumn;
    dxDBGridColumn28: TdxDBGridColumn;
    dxDBGridColumn29: TdxDBGridColumn;
    dxDBGridColumn30: TdxDBGridColumn;
    dxDBGrid3camt10: TdxDBGridColumn;
    dxDBGrid3camt11: TdxDBGridColumn;
    dxDBGrid3camt12: TdxDBGridColumn;
    dxDBGrid3creater: TdxDBGridMaskColumn;
    dxDBGrid3creat_dt: TdxDBGridDateColumn;
    SpeedButton2: TSpeedButton;
    qry1: TClientDataSet;
    AutoIncField2: TAutoIncField;
    WordField1: TWordField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    IntegerField5: TIntegerField;
    StringField3: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField4: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    WordField2: TWordField;
    WordField3: TWordField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField1: TBCDField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField22: TIntegerField;
    DateTimeField4: TDateTimeField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    BCDField2: TBCDField;
    StringField19: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    DSqry1: TDataSource;
    qry1qty0: TIntegerField;
    dxDBGrid3qty0: TdxDBGridColumn;
    qry1dtl_id: TAutoIncField;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3med_name: TdxDBGridColumn;
    dxDBGrid3med_code: TdxDBGridColumn;
    dxDBGrid3mate_name: TdxDBGridColumn;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1level_id1: TIntegerField;
    ADOQuery1level_id2: TIntegerField;
    ADOQuery1level_id3: TIntegerField;
    ADOQuery1lead_id: TIntegerField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1product_line: TStringField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1f1: TBooleanField;
    ADOQuery1f2: TBooleanField;
    ADOQuery1dt1: TDateTimeField;
    ADOQuery1dt2: TDateTimeField;
    ADOQuery1type_id1: TWordField;
    ADOQuery1type_id2: TWordField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty1: TIntegerField;
    ADOQuery1qty2: TIntegerField;
    ADOQuery1qty3: TIntegerField;
    ADOQuery1qty4: TIntegerField;
    ADOQuery1qty5: TIntegerField;
    ADOQuery1qty6: TIntegerField;
    ADOQuery1qty7: TIntegerField;
    ADOQuery1qty8: TIntegerField;
    ADOQuery1qty9: TIntegerField;
    ADOQuery1qty10: TIntegerField;
    ADOQuery1qty11: TIntegerField;
    ADOQuery1qty12: TIntegerField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    dxDBGrid1fyear: TdxDBGridColumn;
    ADOQuery1fyear: TSmallintField;
    qryfyear: TSmallintField;
    Label7: TLabel;
    Shape7: TShape;
    dxSpinEdit1: TdxSpinEdit;
    Label12: TLabel;
    qry1fyear: TSmallintField;
    dxDBGrid3fyear: TdxDBGridColumn;
    qrydtlproduct_line: TStringField;
    dxDBGrid2product_line: TdxDBGridColumn;
    Edit1: TEdit;
    Label14: TLabel;
    dxDBGrid1dist1: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure medataReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlCalcFields(DataSet: TDataSet);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure N9Click(
      Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport13: Tsetreport13;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a, Unit28d, Unit28c;

{$R *.DFM}

procedure Tsetreport13.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport13.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
with qrydtl do
begin
    if tag=qry.fieldbyname('rec_id').asinteger then exit;
    if active=True then close;
    if (qry.active=False) or (qry.recordcount=0) then exit;
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_medindexdtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
//edit1.text:=commandtext;
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetreport13.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxLookupEdit1.text)='' then raise Exception.Create('请选择事业部');
if Trim(dxLookupEdit2.text)='' then raise Exception.Create('请选择大区');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择小区');
if Trim(dxButtonEdit4.text)='' then raise Exception.Create('请选择区域经理');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择地区');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
//if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择医院');
//if dxDateEdit1.Text='' then raise Exception.Create('请输入生效日期');

with dm.pubqry do
begin
    if MessageBox(0,pchar('确定加入本销售指标记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_medindex (comp_id,fyear,level_id1,level_id2,level_id3,district_id,lead_id,mate_id,med_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','+dxSpinEdit1.text+','+level1.fieldbyname('obj_id').asstring+',';
    commandtext:=commandtext+level2.fieldbyname('obj_id').asstring+','+inttostr(dxButtonEdit3.tag)+',';
    commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+','+inttostr(dxButtonEdit2.tag)+','+inttostr(dxButtonEdit1.tag)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    qry.locate('rec_id',mi,[]);
end;
end;

procedure Tsetreport13.qryBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_medindexdtl where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本记录有下级记录，不可删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport13.qryAfterPost(DataSet: TDataSet);
begin
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_medindex','rec_id','');
end;

procedure Tsetreport13.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with qrydtl do
begin
    if active=True then close;
    tag:=0;
end;
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,'; //level1=b.zdesc,level2=c.zdesc,level3=d.zdesc,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(k.sta_id),e.mate_name,';  //customer=dbo.fn_mate_name(a.dst_id),
    commandtext:=commandtext+'  m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  mate_name=dbo.fn_mate_name(a.mate_id),';
//    commandtext:=commandtext+'	leader=dbo.fn_staff_name (a.lead_id),';
    commandtext:=commandtext+'  creater=dbo.fn_staff_name(a.creat_by),';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
    commandtext:=commandtext+' from tb_medindex a';
//    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
//    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
//    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
   // commandtext:=commandtext+' left join tb_busiframe k on a.med_id=k.med_id and dbo.fn_ischildnode(a.district_id,k.district_id)=1'; //b.lead_id=k.sta_id and
	commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(a.district_id,a.med_id,a.mate_id,cast(str(fyear)+''-1-1'' as datetime))'; // -- '2018-1-1') --getdate())
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.level_id2='+level2.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.level_id3='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
//        if Trim(dxDateEdit1.text)<>'' then commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.text+'''';
    end;
    commandtext:=commandtext+' and a.fyear='+dxSpinEdit1.text;
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
    if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=a.district_id and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport13.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport13.medataReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetreport13.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetreport13.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
with level1 do if active=True then close;
with level2 do if active=True then close;
with type1 do if active=True then close;
with type2 do if active=True then close;
with qry do if active=True then close;
with qrydtl do if active=True then close;
end;

procedure Tsetreport13.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
with dm.pubqry do
begin
    if active=True then close;
//    commandtext:='select datepart(year,getdate())';
    commandtext:='select year(getdate())';
    open;
    dxSpinEdit1.Value:=fields[0].asinteger;
end;
end;

procedure Tsetreport13.N3Click(Sender: TObject);
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

procedure Tsetreport13.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport13.N2Click(Sender: TObject);
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

procedure Tsetreport13.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport13.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
{
with broker do
begin
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and isnull(stop_yn,0)=0 order by zname';
        open;
    end;
end;
}
with level1 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''非基非医保'' union select obj_id=2,zdesc=''基药'' union select obj_id=3,zdesc=''非基医保''';
        open;       //非基非医保/基药/非基医保
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''已开发'' union select obj_id=2,zdesc=''预计开发''';
        open;  //已开发/预计开发
    end;
end;
end;

procedure Tsetreport13.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
//speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxLookupTreeView1.text<>'');
end;

procedure Tsetreport13.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport13.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    fieldbyname('camt1').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('camt2').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
    fieldbyname('camt3').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty3').asfloat;
    fieldbyname('camt4').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty4').asfloat;
    fieldbyname('camt5').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty5').asfloat;
    fieldbyname('camt6').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty6').asfloat;
    fieldbyname('camt7').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty7').asfloat;
    fieldbyname('camt8').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty8').asfloat;
    fieldbyname('camt9').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty9').asfloat;
    fieldbyname('camt10').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty10').asfloat;
    fieldbyname('camt11').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty11').asfloat;
    fieldbyname('camt12').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty12').asfloat;
    fieldbyname('camot').asfloat:=fieldbyname('price').asfloat*fieldbyname('cqty').asfloat;
end;
end;

procedure Tsetreport13.qryBeforePost(DataSet: TDataSet);
begin
{
with qry do
begin
    if fieldbyname('rate').asfloat>fieldbyname('price').asfloat then raise Exception.Create('费用政策不可大于中标价');
end;
}
end;

procedure Tsetreport13.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    serror:='';
    j:=2;  //第2行开始 每行一单
//导入格式: 地区,药品编码,中标,费用政策
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;

    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;

            if active=true then close;
            commandtext:='if not exists (select 1 from tb_medata where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2)+')';
            commandtext:=commandtext+' insert into tb_medata (type_id,comp_id,id1,med_id,price,rate,creat_by,creat_dt)';
            commandtext:=commandtext+' values (1,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+',';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text)+',';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+' else update tb_medata set price=';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text);
            commandtext:=commandtext+' ,rate=';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text);
            commandtext:=commandtext+' where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2);
//edit2.text:=commandtext;            
            execute;
        end;
        j:=j+1;
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport13.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,ss: string;
    J,mi,mid,id1,id2,id3,id4,id6,id7,id12,id13,id27: integer;
    dt1,dt2: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    serror:='';
    j:=2; mi:=0; //第2行开始 每行一单
//1事业部(改为空)id1,2大区(改为空)id2,3小区(改为空)id3,4城市id4,5产品线,6药品编码id6,7医院名称id7,8目标医院(是/否),9托管(是/否),
//10开发时间,11新标预计执行时间,12开标类型id12,13开发状态id13,14招商价,
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
    while (sheet.cells[j,4].text<>'') and (mi<10) do    //前3列为空，检查 sheet.cells[j,4].text
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id6:=0;id7:=0;id27:=0;
        with dm.pubqry do
        begin
{  取消 导入，改为关联
            if sheet.cells[j,1].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,3].text+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger;
            end;
}
            if sheet.cells[j,4].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,4].text+'''';
//edit3.text:=commandtext;                
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,6].text+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger;
            end;
{
            if sheet.cells[j,7].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,7].text)+'''';  //
                open;
                if recordcount>0 then id7:=fieldbyname('mate_id').asinteger;
            end;
}
{  取消 导入 区域经理，改为关联
            if sheet.cells[j,27].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname ='''+Trim(sheet.cells[j,27].text)+'''';  //区域经理
                open;
                if recordcount>0 then id27:=fieldbyname('sta_id').asinteger;
            end;
}
            if sheet.cells[j,27].text<>'' then id27:=strtoint(sheet.cells[j,27].text);
//1事业部(改为空)id1,2大区(改为空)id2,3小区(改为空)id3,4城市id4,5产品线,6药品编码id6,7医院名称id7,8目标医院(是/否),9托管(是/否),
//10开发时间,11新标预计执行时间,12开标类型id12,13开发状态id13,14招商价,
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
            if (id4=0) or (id6=0) or (id27=0) then
//            if (id1=0) or (id2=0) or (id3=0) or (id4=0) or (id6=0) or (id27=0) then
            begin
                serror:=serror+#13#10+'第'+inttostr(j)+'行:';
//                if id1=0 then serror:=serror+',未取得事业部';
//                if id2=0 then serror:=serror+',未取得大区';
//                if id3=0 then serror:=serror+',未取得小区';
                if id4=0 then serror:=serror+',未取得区域';
                if id6=0 then serror:=serror+',未取得药品';
                if id27=0 then serror:=serror+',未取得年份';
//                if id7=0 then serror:=serror+',未取得医院';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
//1事业部(改为空)id1,2大区(改为空)id2,3小区(改为空)id3,4城市id4,5产品线,6药品编码id6,7医院名称id7,8目标医院(是/否),9托管(是/否),
//10开发时间,11新标预计执行时间,12开标类型id12,13开发状态id13,14招商价,
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,4].text<>'') do    //前3列为空，检查 sheet.cells[j,4].text
//    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id6:=0;id7:=0;id27:=0;
        with dm.pubqry do
        begin
{  取消 导入，改为关联
            if sheet.cells[j,1].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,3].text+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger;
            end;
}
            if sheet.cells[j,4].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,4].text+'''';
//edit3.Text:=commandtext;
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,6].text+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger;
            end;
{
            if sheet.cells[j,7].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,7].text)+'''';
                open;
                if recordcount>0 then id7:=fieldbyname('mate_id').asinteger;
            end;
}
            if sheet.cells[j,10].text='' then dt1:=0 else
            try
                dt1:=strtodatetime(Trim(sheet.cells[j,10].text));
            except
                dt1:=0;
            end;
            if sheet.cells[j,11].text='' then dt2:=0 else
            try
                dt2:=strtodatetime(Trim(sheet.cells[j,11].text));
            except
                dt2:=0;
            end;
{  取消 导入 区域经理，改为关联
            if sheet.cells[j,27].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname ='''+Trim(sheet.cells[j,27].text)+'''';  //区域经理
                open;
                if recordcount>0 then id27:=fieldbyname('sta_id').asinteger;
            end;
}
            if sheet.cells[j,27].text<>'' then id27:=strtoint(sheet.cells[j,27].text);
//1事业部(改为空)id1,2大区(改为空)id2,3小区(改为空)id3,4城市id4,5产品线,6药品编码id6,7医院名称id7,8目标医院(是/否),9托管(是/否),
//10开发时间,11新标预计执行时间,12开标类型id12,13开发状态id13,14招商价,
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
            ss:=Trim(sheet.cells[j,12].text);
            if ss='非基非医保' then id12:=1
            else if ss='基药' then id12:=2
            else if ss='非基医保' then id12:=3
            else id12:=0;

            ss:=Trim(sheet.cells[j,13].text);
            if ss='已开发' then id13:=1
            else if ss='预计开发' then id13:=2;

            if active=true then close;
            commandtext:='select top 1 rec_id from tb_medindex where comp_id= '+inttostr(compid);
            commandtext:=commandtext+' and fyear='+inttostr(id27)+' and district_id='+inttostr(id4)+' and med_id='+inttostr(id6);
//            commandtext:=commandtext+' and fyear='+inttostr(id27)+' and district_id='+inttostr(id4)+' and lead_id='+inttostr(id27)+' and med_id='+inttostr(id6);
//edit2.text:=commandtext;
            open;
            if recordcount=0 then
            begin
                if active=true then close;
                commandtext:=' insert into tb_medindex (fyear,comp_id,level_id1,level_id2,level_id3,district_id,lead_id,product_line,med_id,mate_id,f1,f2,';
                commandtext:=commandtext+' dt1,dt2,type_id1,type_id2,price,';
                commandtext:=commandtext+' creat_by,creat_dt)';  //qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12,
                commandtext:=commandtext+' values ('+inttostr(id27)+','+inttostr(compid)+',0,0,0,'+inttostr(id4)+',0,'''+Trim(sheet.cells[j,5].text)+''','+inttostr(id6)+','+inttostr(id7)+',';
//                commandtext:=commandtext+' values ('+inttostr(id27)+','+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+','+inttostr(id27)+','''+Trim(sheet.cells[j,5].text)+''','+inttostr(id6)+','+inttostr(id7)+',';
                if Trim(sheet.cells[j,8].text)='是' then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
                if Trim(sheet.cells[j,9].text)='是' then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
                if dt1=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt1)+''',';
                if dt2=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt2)+''',';
                commandtext:=commandtext+inttostr(id12)+','+inttostr(id13)+',';
                if sheet.cells[j,14].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,14].text)+','; //14招商价
{
    //15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月
                if sheet.cells[j,15].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,15].text)+','; //1月
                if sheet.cells[j,16].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,16].text)+','; //2月
                if sheet.cells[j,17].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,17].text)+','; //3月
                if sheet.cells[j,18].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,18].text)+','; //4月
                if sheet.cells[j,19].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,19].text)+','; //5月
                if sheet.cells[j,20].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,20].text)+','; //6月
                if sheet.cells[j,21].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,21].text)+','; //7月
                if sheet.cells[j,22].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,22].text)+','; //8月
                if sheet.cells[j,23].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,23].text)+','; //9月
                if sheet.cells[j,24].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,24].text)+','; //10月
                if sheet.cells[j,25].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,25].text)+','; //11月
                if sheet.cells[j,26].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,26].text)+','; //12月
}                
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
//edit3.text:=commandtext;
                open;
                mi:=fields[0].asinteger;
            end
            else mi:=fields[0].asinteger;
//1事业部(改为空)id1,2大区(改为空)id2,3小区(改为空)id3,4城市id4,5产品线,6药品编码id6,7医院名称id7,8目标医院(是/否),9托管(是/否),
//10开发时间,11新标预计执行时间,12开标类型id12,13开发状态id13,14招商价,
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
            if active=true then close;
            commandtext:='if not exists (select 1 from tb_medindexdtl where rec_id='+inttostr(mi)+' and mate_name='''+Trim(sheet.cells[j,7].text)+''' and product_line='''+Trim(sheet.cells[j,5].text)+''')';
            commandtext:=commandtext+' insert into tb_medindexdtl (rec_id,product_line,mate_name,f1,f2,type_id1,type_id2,dt1,dt2,qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12,creat_dt,creat_by)';
            commandtext:=commandtext+' values ('+inttostr(mi)+','''+Trim(sheet.cells[j,5].text)+''','''+Trim(sheet.cells[j,7].text)+''',';
            if Trim(sheet.cells[j,8].text)='是' then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
            if Trim(sheet.cells[j,9].text)='是' then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
            commandtext:=commandtext+inttostr(id12)+','+inttostr(id13)+',';
            if dt1=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt1)+''',';
            if dt2=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt2)+''',';
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
            if sheet.cells[j,15].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,15].text)+','; //1月
            if sheet.cells[j,16].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,16].text)+','; //2月
            if sheet.cells[j,17].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,17].text)+','; //3月
            if sheet.cells[j,18].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,18].text)+','; //4月
            if sheet.cells[j,19].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,19].text)+','; //5月
            if sheet.cells[j,20].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,20].text)+','; //6月
            if sheet.cells[j,21].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,21].text)+','; //7月
            if sheet.cells[j,22].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,22].text)+','; //8月
            if sheet.cells[j,23].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,23].text)+','; //9月
            if sheet.cells[j,24].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,24].text)+','; //10月
            if sheet.cells[j,25].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,25].text)+','; //11月
            if sheet.cells[j,26].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,26].text)+','; //12月
//showmessage(sheet.cells[j,26].text+'--'+cleardeli(sheet.cells[j,26].text));
            commandtext:=commandtext+'getdate(),'+inttostr(curuserid)+')';
            commandtext:=commandtext+' else update tb_medindexdtl set f1=';       //product_line='''+Trim(sheet.cells[j,5].text)+''',
            if Trim(sheet.cells[j,8].text)='是' then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
            if Trim(sheet.cells[j,9].text)='是' then commandtext:=commandtext+'f2=1,' else commandtext:=commandtext+'f2=0,';
            commandtext:=commandtext+'type_id1='+inttostr(id12)+',type_id2='+inttostr(id13)+',';
            if dt1=0 then commandtext:=commandtext+'dt1=null,' else commandtext:=commandtext+'dt1='''+datetimetostr(dt1)+''',';
            if dt2=0 then commandtext:=commandtext+'dt2=null ' else commandtext:=commandtext+'dt2='''+datetimetostr(dt2)+''' ';
//15任务量1月,16 2月,17 3月,18 4月,19 5月,20 6月,21 7月,22 8月,23 9月,24 10月,25 11月,26 12月,27年份
            if sheet.cells[j,15].text<>'' then commandtext:=commandtext+',qty1='+cleardeli(sheet.cells[j,15].text); //1月
            if sheet.cells[j,16].text<>'' then commandtext:=commandtext+',qty2='+cleardeli(sheet.cells[j,16].text); //2月
            if sheet.cells[j,17].text<>'' then commandtext:=commandtext+',qty3='+cleardeli(sheet.cells[j,17].text); //3月
            if sheet.cells[j,18].text<>'' then commandtext:=commandtext+',qty4='+cleardeli(sheet.cells[j,18].text); //4月
            if sheet.cells[j,19].text<>'' then commandtext:=commandtext+',qty5='+cleardeli(sheet.cells[j,19].text); //5月
            if sheet.cells[j,20].text<>'' then commandtext:=commandtext+',qty6='+cleardeli(sheet.cells[j,20].text); //6月
            if sheet.cells[j,21].text<>'' then commandtext:=commandtext+',qty7='+cleardeli(sheet.cells[j,21].text); //7月
            if sheet.cells[j,22].text<>'' then commandtext:=commandtext+',qty8='+cleardeli(sheet.cells[j,22].text); //8月
            if sheet.cells[j,23].text<>'' then commandtext:=commandtext+',qty9='+cleardeli(sheet.cells[j,23].text); //9月
            if sheet.cells[j,24].text<>'' then commandtext:=commandtext+',qty10='+cleardeli(sheet.cells[j,24].text); //10月
            if sheet.cells[j,25].text<>'' then commandtext:=commandtext+',qty11='+cleardeli(sheet.cells[j,25].text); //11月
            if sheet.cells[j,26].text<>'' then commandtext:=commandtext+',qty12='+cleardeli(sheet.cells[j,26].text); //12月
            commandtext:=commandtext+' ,modify_dt=getdate(),modify_by='+inttostr(curuserid);
            commandtext:=commandtext+' where rec_id='+inttostr(mi)+' and mate_name='''+Trim(sheet.cells[j,7].text)+''' and product_line='''+Trim(sheet.cells[j,5].text)+'''';
//edit4.text:=commandtext;
            execute;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then qry.Locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport13.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;
end;

procedure Tsetreport13.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tsetreport13.qrydtlCalcFields(DataSet: TDataSet);
begin
with qrydtl do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    fieldbyname('camt1').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('camt2').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
    fieldbyname('camt3').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty3').asfloat;
    fieldbyname('camt4').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty4').asfloat;
    fieldbyname('camt5').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty5').asfloat;
    fieldbyname('camt6').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty6').asfloat;
    fieldbyname('camt7').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty7').asfloat;
    fieldbyname('camt8').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty8').asfloat;
    fieldbyname('camt9').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty9').asfloat;
    fieldbyname('camt10').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty10').asfloat;
    fieldbyname('camt11').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty11').asfloat;
    fieldbyname('camt12').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty12').asfloat;
    fieldbyname('camot').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('cqty').asfloat;
end;
end;

procedure Tsetreport13.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_medindexdtl','dtl_id','');
refreshmyrecord(qry,dm.Refreshcds,0,'rec_id',qry.fieldbyname('rec_id').asinteger);
end;

procedure Tsetreport13.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tsetreport13.qrydtlBeforePost(DataSet: TDataSet);
begin
with qrydtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('rec_id').asinteger:= qry.fieldbyname('rec_id').asinteger;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport13.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport13.wwDBNavigator1PostClick(Sender: TObject);
begin
if (qry.State in [dsinsert,dsedit]) then qry.post;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
abort;
end;

procedure Tsetreport13.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tsetreport13.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qry.State in [dsinsert,dsedit]) then qry.cancelUpdates;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
abort;
end;

procedure Tsetreport13.dxDBGrid2Enter(Sender: TObject);
begin
with qry do
    if (active=False) or (recordcount=0) then exit;
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tsetreport13.MenuItem1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
    ClickedOK := InputQuery('查询关键字', '请输入', NewString);
    if ClickedOK then
        with dxdbgrid2 do
        begin
            StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
            EndSearch;
        end;
end;

procedure Tsetreport13.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport13.MenuItem4Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid2 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
setprogress(0);
end;

procedure Tsetreport13.MenuItem6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
end;

procedure Tsetreport13.N9Click(
  Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport13.N10Click(Sender: TObject);
var i,k,mi: integer;
    s: string;
begin
if (qrydtl.active=false) or (qrydtl.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='';
mi:=0;
if dxDBGrid2.SelectedCount<2
    then s:=qrydtl.fieldbyname('dtl_id').asstring 
else
begin
    k := dxDBGrid2.ColumnByFieldName('dtl_id').Index;
    for i:= 0 to dxDBGrid2.SelectedCount - 1 do
    begin
        s:= s+','+ dxDBGrid2.SelectedNodes[i].Strings[k];
        mi:=mi+1;
    end;
    delete(s,1,1);  //删除 t 首字符 ','
    if mi=0 then raise Exception.Create('无可处理记录');
end;
if MessageBox(0,Pchar('确定删除所选记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='delete from tb_medindexdtl where dtl_id in ('+s+')';
    execute;
end;
qrydtl.close;
qrydtl.tag:=0;
DSqryDataChange(nil,nil);
end;

procedure Tsetreport13.Excel1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tsetreport13.SpeedButton2Click(Sender: TObject);
begin
{
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_medindexdtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
}
with qry1 do
begin
    if active=true then close;
    commandtext:='select f.dtl_id,f.qty0,f.qty1,f.qty2,f.qty3,f.qty4,f.qty5,f.qty6,f.qty7,f.qty8,f.qty9,f.qty10,f.qty11,f.qty12,';
    commandtext:=commandtext+'  a.*,e.mate_name,'; //level1=b.zdesc,level2=c.zdesc,level3=d.zdesc, =dbo.fn_mate_name(f.mate_id),'; //e.mate_name,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(k.sta_id),';

    commandtext:=commandtext+'  m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  mate_name=dbo.fn_mate_name(a.mate_id),';
    commandtext:=commandtext+'	leader=dbo.fn_staff_name (a.lead_id),';
    commandtext:=commandtext+'  creater=dbo.fn_staff_name(f.creat_by),';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
    commandtext:=commandtext+' from tb_medindex a';
//    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
//    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
//    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_medindexdtl f on f.rec_id=a.rec_id';
    commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
    
//    commandtext:=commandtext+' left join tb_busimate e on f.mate_id=e.mate_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
	commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(a.district_id,a.med_id,a.mate_id,cast(str(fyear)+''-1-1'' as datetime))'; // -- '2018-1-1') --getdate())
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.level_id2='+level2.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.level_id3='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    end;
    commandtext:=commandtext+' and a.fyear='+dxSpinEdit1.text;
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
    if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=a.district_id and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid3.SaveToXLS, self.tag)
end;

procedure Tsetreport13.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    fieldbyname('camt1').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('camt2').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
    fieldbyname('camt3').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty3').asfloat;
    fieldbyname('camt4').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty4').asfloat;
    fieldbyname('camt5').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty5').asfloat;
    fieldbyname('camt6').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty6').asfloat;
    fieldbyname('camt7').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty7').asfloat;
    fieldbyname('camt8').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty8').asfloat;
    fieldbyname('camt9').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty9').asfloat;
    fieldbyname('camt10').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty10').asfloat;
    fieldbyname('camt11').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty11').asfloat;
    fieldbyname('camt12').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty12').asfloat;
    fieldbyname('camot').asfloat:=fieldbyname('price').asfloat*fieldbyname('cqty').asfloat;
end;
end;

procedure Tsetreport13.N12Click(Sender: TObject);
begin
with qry do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetreport13.N13Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if (active=False) or (recordcount=0) then exit;
end;
if frecid=0 then raise Exception.Create('请先复制记录');
if MessageBox(0,'确定粘贴记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_medindex (comp_id,fyear,level_id1,level_id2,level_id3,lead_id,district_id,product_line,med_id,mate_id,f1,f2,dt1,dt2,type_id1,type_id2,price,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 comp_id,fyear,level_id1,level_id2,level_id3,lead_id,district_id,product_line,med_id,mate_id,f1,f2,dt1,dt2,type_id1,type_id2,price,valid_dt,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_medindex where rec_id='+inttostr(frecid);
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    if active=True then close;
    commandtext:='insert into tb_medindexdtl (rec_id,mate_id1,mate_name,type_id1,type_id2,f1,f2,dt1,dt2,qty0,qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12,creat_by,creat_dt';
    commandtext:=commandtext+' select '+inttostr(mi)+',mate_id1,mate_name,type_id1,type_id2,f1,f2,dt1,dt2,qty0,qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_medindexdtl where rec_id='+inttostr(frecid);
    execute;
    try
        setprogress(1);
        open;
        SpeedButton3Click(nil);
        if mi>0 then qry.locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport13.N15Click(Sender: TObject);
begin
with qrydtl do if (active=False) or (recordcount=0) then exit;
if MessageBox(0,'确定清除本行数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_medindexdtl set qty0=0,qty1=0,qty2=0,qty3=0,qty4=0,qty5=0,qty6=0,qty7=0,qty8=0,qty9=0,qty10=0,qty11=0,qty12=0';
    commandtext:=commandtext+' where dtl_id='+qrydtl.fieldbyname('dtl_id').asstring;
    execute;
end;
refreshmyrecord(qrydtl,dm.Refreshcds,0,'dtl_id',qrydtl.fieldbyname('dtl_id').asinteger);
end;

procedure Tsetreport13.N16Click(Sender: TObject);
begin
with qrydtl do if (active=False) or (recordcount=0) then exit;
with dxDBGrid2 do
begin
    if (VisibleColumns[focusedcolumn].fieldname<>'qty0')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty1')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty2')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty3')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty4')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty5')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty6')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty7')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty8')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty9')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty10')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty11')
        and (VisibleColumns[focusedcolumn].fieldname<>'qty12')
        then raise Exception.Create('本列不可清除');
end;
if MessageBox(0,'确定清除本列数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_medindexdtl set '+dxDBGrid2.VisibleColumns[dxDBGrid2.focusedcolumn].fieldname+'=0';
    commandtext:=commandtext+' where rec_id='+qrydtl.fieldbyname('rec_id').asstring;
//edit1.text:=commandtext;
//exit;    
    execute;
end;
refreshmyrecord(qrydtl,dm.Refreshcds,0,'dtl_id',qrydtl.fieldbyname('dtl_id').asinteger);
end;

end.
