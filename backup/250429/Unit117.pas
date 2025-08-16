unit Unit117;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, wwclearbuttongroup, wwradiogroup,
  dxEditor, dxDBEdtr, Animate, GIFCtrl, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, Comobj;

type
  Tsetmedexport8 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    dxDBGrid2specifi: TdxDBGridColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    cdsbill: TClientDataSet;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbillbod_status_id: TIntegerField;
    cdsbillbod_type_id: TIntegerField;
    cdsbillbusi_type: TIntegerField;
    cdsbillbod_amot: TBCDField;
    cdsbillcreat_by: TIntegerField;
    cdsbillcreat_dt: TDateTimeField;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillrelative_id: TIntegerField;
    cdsbillCbod_status: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillsettle_type: TIntegerField;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtldiscount: TBCDField;
    cdsbill_dtlcost: TBCDField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbillprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    cdsbillbod_desc: TStringField;
    DBText15: TDBText;
    cdsbillreceipt_by: TIntegerField;
    DBText16: TDBText;
    dxDBGrid1bod_id: TdxDBGridColumn;
    cdsbillbroker_id: TIntegerField;
    DBText14: TDBText;
    cdsbilldst_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    cdsbillcarry_dt: TDateTimeField;
    dxDBDateEdit1: TdxDBDateEdit;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    cdsbillagent: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid2rela_value: TdxDBGridColumn;
    pickmedinfo: TClientDataSet;
    pickmedinfoqtyperbox: TBCDField;
    pickmedinfoqtyperpack: TBCDField;
    pickmedinfosite_code: TStringField;
    pickmedinfoprice: TBCDField;
    pickmedinfoqty: TBCDField;
    pickmedinfocontractprice: TBCDField;
    pickmedinfowholeprice: TBCDField;
    pickmedinfoquotaprice: TBCDField;
    pickmedinfobidprice: TBCDField;
    pickmedinfoagentprice: TBCDField;
    pickmedinfomemberprice: TBCDField;
    pickmedinfolow_limit_price: TBCDField;
    pickmedinfozstop_yn: TBooleanField;
    pickmedinfoprice1: TBCDField;
    DSpickmedinfo: TDataSource;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    pubqry: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BCDField1: TBCDField;
    IntegerField7: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField8: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField9: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField10: TIntegerField;
    StringField7: TStringField;
    IntegerField11: TIntegerField;
    StringField8: TStringField;
    IntegerField12: TIntegerField;
    StringField9: TStringField;
    IntegerField13: TIntegerField;
    DateTimeField3: TDateTimeField;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    N3: TMenuItem;
    Label27: TLabel;
    pickmedinfoprice2: TBCDField;
    pickmedinfoprice3: TBCDField;
    cdsbilllevel_id1: TIntegerField;
    cdsbilllevel_id2: TIntegerField;
    cdsbilllevel_id3: TAutoIncField;
    cdsbillagent_id: TAutoIncField;
    cdsbillbroker: TStringField;
    Label20: TLabel;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    cdsbill_dtlvalid_dt: TDateTimeField;
    cdsbill_dtllead_id: TAutoIncField;
    cdsbill_dtlleader: TStringField;
    cdsbill_dtlsta_id: TAutoIncField;
    cdsbill_dtlbroker: TStringField;
    cdsbillcate_id: TWordField;
    cdsbill_dtlbod_cd1: TStringField;
    cdsbillCcate: TStringField;
    cdsbillcdistrict: TStringField;
    cdsbilldistrict_id: TIntegerField;
    Label17: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1mate_name2: TStringField;
    cdsbillmate_name1: TStringField;
    cdsbillmate_name2: TStringField;
    Edit1: TEdit;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlprice2: TBCDField;
    dxDBGrid2discount: TdxDBGridColumn;
    TabSheet3: TTabSheet;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
    Label82: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    qryimage: TClientDataSet;
    qryimagerec_id: TAutoIncField;
    qryimagetype_id: TIntegerField;
    qryimageid: TIntegerField;
    qryimagezimage1: TBlobField;
    qryimagegraphclass1: TStringField;
    qryimagezimage2: TBlobField;
    qryimagegraphclass2: TStringField;
    qryimagezimage3: TBlobField;
    qryimagegraphclass3: TStringField;
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    DSqryimage: TDataSource;
    Edit3: TEdit;
    GIFimage1: TRxGIFAnimator;
    GIFimage2: TRxGIFAnimator;
    cdsbillorder_id: TIntegerField;
    dxDBGrid2price: TdxDBGridColumn;
    cdsbill_dtlqty1: TBCDField;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    dxDBGrid2bod_cd1: TdxDBGridColumn;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    dxDBGrid1Ccate: TdxDBGridColumn;
    Label6: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    cdsbillCbusitype: TStringField;
    cdsbillbod_cd1: TStringField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    SpeedButton6: TSpeedButton;
    qry: TClientDataSet;
    DSqry: TDataSource;
    qrydtl: TClientDataSet;
    DSqrydtl: TDataSource;
    dxEdit2: TdxEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label33: TLabel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3med_code: TdxDBGridMaskColumn;
    dxDBGrid3med_name: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3med_unit: TdxDBGridColumn;
    dxDBGrid3bat_cd: TdxDBGridColumn;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4creat_dt: TdxDBGridColumn;
    dxDBGrid4carry_dt: TdxDBGridColumn;
    dxDBGrid4Ccate: TdxDBGridColumn;
    dxDBGrid4agent: TdxDBGridColumn;
    dxDBGrid4mate_name1: TdxDBGridColumn;
    dxDBGrid4mate_name2: TdxDBGridColumn;
    dxDBGrid4bod_cd: TdxDBGridColumn;
    dxDBGrid4bod_desc: TdxDBGridColumn;
    dxDBGrid4bod_amot: TdxDBGridColumn;
    dxDBGrid4creater: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    qrydistrict_id: TIntegerField;
    qrycdistrict: TStringField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrycate_id: TWordField;
    qrybod_status_id: TIntegerField;
    qrybod_type_id: TIntegerField;
    qrybusi_type: TIntegerField;
    qrybod_amot: TBCDField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrycheck_by: TIntegerField;
    qrycheck_dt: TDateTimeField;
    qryrelative_id: TIntegerField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrysettle_type: TIntegerField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qryprncount: TIntegerField;
    qrybod_desc: TStringField;
    qryreceipt_by: TIntegerField;
    qryCcate: TStringField;
    qrycarry_dt: TDateTimeField;
    qryorder_id: TIntegerField;
    qryCbusitype: TStringField;
    qrydtldtl_id: TIntegerField;
    qrydtlbod_id: TIntegerField;
    qrydtllead_id: TAutoIncField;
    qrydtlleader: TStringField;
    qrydtlsta_id: TAutoIncField;
    qrydtlbroker: TStringField;
    qrydtlmed_id: TIntegerField;
    qrydtlmed_code: TStringField;
    qrydtlmed_name: TStringField;
    qrydtlspecifi: TStringField;
    qrydtlpdt_place: TStringField;
    qrydtlmed_unit: TStringField;
    qrydtlprice: TBCDField;
    qrydtlprice1: TBCDField;
    qrydtlprice2: TBCDField;
    qrydtlqty: TBCDField;
    qrydtlqty1: TBCDField;
    qrydtldiscount: TBCDField;
    qrydtlcost: TBCDField;
    qrydtlbat_cd: TStringField;
    qrydtlvalid_dt: TDateTimeField;
    qrydtlbod_cd1: TStringField;
    qrydtlamot: TBCDField;
    cdsbill_dtlrela_value: TBCDField;
    dxDBGrid2amot: TdxDBGridColumn;
    Label12: TLabel;
    dxDateEdit2: TdxDateEdit;
    Label14: TLabel;
    dxDateEdit3: TdxDateEdit;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    dxDBGrid3price: TdxDBGridColumn;
    dxDBGrid3qty: TdxDBGridColumn;
    dxDBGrid3amot: TdxDBGridColumn;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label21: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    dxDBEdit1: TdxDBEdit;
    Button1: TButton;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label8: TLabel;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    Button2: TButton;
    Label15: TLabel;
    DBText2: TDBText;
    Label18: TLabel;
    Label22: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label24: TLabel;
    DBText8: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBText13: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    SpeedButton4: TSpeedButton;
    Label32: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
    procedure cdsbill_dtlBeforePost(DataSet: TDataSet);
    procedure cdsbillBeforePost(DataSet: TDataSet);
    procedure cdsbillReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsbill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsbill_dtlAfterInsert(DataSet: TDataSet);
    procedure cdsbill_dtlpriceChange(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit2AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit3AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit4AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit5AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1Change(Sender: TObject);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryimageAfterPost(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure PageControl2Change(Sender: TObject);
    procedure DSqrydtlDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid4CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SpeedButton10Click(Sender: TObject);
    procedure cdsbill_dtldiscountChange(Sender: TField);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1Enter(Sender: TObject);
    procedure dxDBButtonEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedexport8: Tsetmedexport8;

implementation

uses datamodu, Unit7, Unit28b, Unit16c, Unit9, Unit16a;

{$R *.DFM}

procedure Tsetmedexport8.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetmedexport8.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetmedexport8.FormActivate(Sender: TObject);
begin
//with dm.imp_type do
//    if active=false then open;
if (cdsbill.Active=True) and (fbodid>0) then cdsbill.Active:=False;
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetmedexport8.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IF (cdsbill.state in [dsinsert,dsedit]) or (cdsbill_dtl.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with cdsbill     do if active=true then close;
with cdsbill_dtl do if active=true then close;
with pickmedinfo do if active=true then close;
with dm.picmedinfoc do if active=true then close;
with qryimage do if active=true then close;
end;

procedure Tsetmedexport8.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedexport8.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedexport8.dxDBGrid2Enter(Sender: TObject);
begin
//if cdsbill.fieldbyname('src_id').asinteger=0
// then raise Exception.Create('请先选择供应供应单位');
{
if cdsbill.fieldbyname('dst_id').asinteger=0
    then raise Exception.Create('请先选择商业公司');
with cdsbill_dtl do
    if (active=true) and (recordcount=0) then begin cdsbill.edit; append; end;
}
end;

procedure Tsetmedexport8.FormKeyPress(Sender: TObject; var Key: Char);
//var fapp: boolean;
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol is Tdxdbgrid then
    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end;

procedure Tsetmedexport8.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');

//  UpdateApply speedbutton
setprogress(1);
with cdsbill_dtl do
begin
    if state = dsinsert then cancel;
    try
        if state in [dsinsert,dsedit] then post;
    except
        cancelUpdates;
    end;
end;
with cdsbill do
begin
    mid:=fieldbyname('bod_id').asinteger;
    if not (state in [dsinsert,dsedit]) then edit;
    if fieldbyname('bod_cd').asstring='' then
    begin
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;
{
    if cdsbill_dtl.recordcount>0 then
    begin
        if cdsbill_dtl.fieldbyname('qty').asfloat>0 then fieldbyname('busi_type').asinteger:=1;
        if cdsbill_dtl.fieldbyname('qty').asfloat<0 then fieldbyname('busi_type').asinteger:=2;
    end;
}
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
end;
if qryimage.state=dsedit then qryimage.post;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport8.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
pickmedinfo.tag:=-1; // 此时不执行sp_getmedinfo_bat
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active=true then cancelUpdates;
        tag:=0; //可以刷新
        close;
    end;
    with cdsbill do
    begin
        if (fieldbyname('bod_cd').asstring='') and (fieldbyname('bod_amot').asfloat=0) then
        begin
            delete;
            myapplyupdate(cdsbill,'tb_bill','bod_id');
        end
        else cancelUpdates;
    end;
end;
if qryimage.state=dsedit then qryimage.cancelUpdates;
pickmedinfo.tag:=0; // 此时可以执行sp_getmedinfo_bat
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport8.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //可刷新
end;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;

    commandtext:='select a.*,bod_cd1='''',mate_name1=k.mate_name,mate_name2=c.mate_name,agent=f.mate_name,broker=g.zname,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(f.district)'; //h.bod_cd
//    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(a.district_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate k on a.src_id =k.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id =f.mate_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id =g.sta_id';
//    commandtext:=commandtext+' left join (select bod_cd,order_id from tb_bill where bod_type_id=1) h on a.bod_id =h.order_id';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type=3 and a.comp_id='+inttostr(compid);
    // cate_id 1:商业 2:分销 3:终端战略 4:终端普通;    busi_type: 1销售,2退货,3调价
    if fbodid>0 then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
        commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+Trim(dxEdit1.text)+'''';
//        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+Trim(dxEdit1.text)+'''';
        if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    end;
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport8.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit2.date:=date;
dxDateEdit3.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedexport8.SpeedButton7Click(Sender: TObject);
begin
if cdsbill.recordcount=0
    then raise Exception.Create('请指定需删除的单据');
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可删除。'+#13#10+'确需删除，应先反审核');
if MessageBox(0,'确定删除本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetmedexport8.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxDBEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        wwRadioGroup1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBLookupEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit4.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active=true) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and (fieldbyname('creat_by').asinteger=curuserid); // or (fieldbyname('check_by').asinteger=curuserid));
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);  //审核 图章显示
        gifimage2.visible:=(fieldbyname('bod_status_id').asinteger=2);  //审核 图章显示
        if state=dsbrowse then setunupdatestatus;
    end;
    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('bod_id').asinteger=0) then exit; // 查看”列表“时，不需显示明细数据
    with cdsbill_dtl do
        if tag<>cdsbill.fieldbyname('bod_id').asinteger then
            if cdsbill.RecordCount=0 then
            begin
                if active=true then close;
                tag:=0;
            end
            else
            begin
                if active=true then close;
                commandtext:='select a.*,broker=d.zname,leader=e.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.qtyperpack,med_unit=c.zdesc';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
                commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id =d.sta_id';
                commandtext:=commandtext+' left join tb_staff e on a.lead_id =e.sta_id';
                commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
//                commandtext:=commandtext+' order by a.dtl_id';
                try
                    setprogress(1);
                    open;
                finally
                    setprogress(0);
                end;
                tag:=cdsbill.fieldbyname('bod_id').asinteger;
            end;
end;
end;

procedure Tsetmedexport8.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var fapp: boolean;
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
    if shift=[ssctrl] then
    begin
        dxDBGrid2DblClick(self);  // ctrl+enter : 再次进入最近 pickmed_bat
        exit;
    end;

    with Tdxdbgrid(activecontrol) do
    begin
       if focusedcolumn=0 then
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('请选择品种');

       end;
       if focusedcolumn=10 then  // 输入完最后的字段的cursor控制
       begin
            fapp:=false;
            with cdsbill_dtl do
            begin
                if state in [dsinsert,dsedit] then post;
                disablecontrols;
                next;
                if eof then fapp:=true;
                prior;
                enablecontrols;
                if fapp then begin  cdsbill.edit; append; focusedcolumn := 0; key:=0; end
            end;
       end;
    end;
end;
end;

procedure Tsetmedexport8.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport8.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport8.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿更改');
end;
end;

procedure Tsetmedexport8.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='部门申请';
        1: fieldbyname('cbod_status').asstring:='完成';
        2: fieldbyname('cbod_status').asstring:='部门审核';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
end;
end;

procedure Tsetmedexport8.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedexport8.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或已审核单据，请勿更改');
end;

procedure Tsetmedexport8.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('qty').asfloat=0)
        then raise Exception.Create('采购数量不可为零');
//    if fieldbyname('bod_cd1').asstring=''
//        then raise Exception.Create('请输入对照单号');
//    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
//        then raise Exception.Create('货品单价或数量不可为零');
end;
end;

procedure Tsetmedexport8.cdsbillBeforePost(DataSet: TDataSet);
begin
with cdsbill do
begin
//    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('请选择供货单位');
//    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;
end;

procedure Tsetmedexport8.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill:'+e.message);
end;

procedure Tsetmedexport8.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetmedexport8.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetmedexport8.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetmedexport8.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
if PageControl1.ActivePage=TabSheet3 then
begin
    with cdsbill do
        if (active=false) or (recordcount=0) or (cdsbill.fieldbyname('order_id').asinteger=0) then
        begin
            if qryimage.Active=True then qryimage.close;
            exit;
        end;
    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='if not exists (select 1 from tb_image where type_id=1 and id='+cdsbill.fieldbyname('bod_id').asstring+')';  //type_id=1:单据附带图片
        commandtext:=commandtext+' insert into tb_image (type_id,id) values (1,'+cdsbill.fieldbyname('bod_id').asstring+')';
        execute;
    end;
    if (qryimage.tag<>cdsbill.fieldbyname('bod_id').asinteger) then
    begin
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select top 1 * from tb_image where type_id=1 and id='+cdsbill.fieldbyname('bod_id').asstring;
edit3.text:=commandtext;
            try
                setprogress(1);
                try
                	open;
                except
                	setprogress(0);
                    raise Exception.Create('读取图片失败，可依次清除无效图片后重新存入图片');
                end;
            finally
                setprogress(0);
            end;
            if recordcount>0 then tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
    end;
{    //注意：原为按原单 存取图，现改为按本类单据存取图
    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='if not exists (select 1 from tb_image where type_id=1 and id='+cdsbill.fieldbyname('order_id').asstring+')';  //type_id=1:单据附带图片
        commandtext:=commandtext+' insert into tb_image (type_id,id) values (1,'+cdsbill.fieldbyname('order_id').asstring+')';
        execute;
    end;
    if (qryimage.tag<>cdsbill.fieldbyname('bod_id').asinteger) then
    begin
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select top 1 * from tb_image where type_id=1 and id='+cdsbill.fieldbyname('order_id').asstring;
edit3.text:=commandtext;
            try
                setprogress(1);
                open;
            finally
                setprogress(0);
            end;
            if recordcount>0 then tag:=cdsbill.fieldbyname('order_id').asinteger;
        end;
    end;
}
end;
end;

procedure Tsetmedexport8.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
//        AColor := $00FDFCC1;
        AFont.Color := clred;
    end;
end;
}
end;

procedure Tsetmedexport8.dxDBGrid2DblClick(Sender: TObject);
begin
if pickmedicine.showmodal= mrOK then
begin
    if pickmedicine.query1.Active=true then
    begin
        if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
        cdsbill_dtl.fieldbyname('med_id').asinteger:=pickmedicine.query1.FieldByName('med_id').asinteger;
        cdsbill_dtl.fieldbyname('med_code').asstring:=pickmedicine.query1.FieldByName('med_code').asstring;
        cdsbill_dtl.fieldbyname('med_name').asstring:=pickmedicine.query1.FieldByName('med_name').asstring;
        cdsbill_dtl.fieldbyname('specifi').asstring:=pickmedicine.query1.FieldByName('specifi').asstring;
        cdsbill_dtl.fieldbyname('pdt_place').asstring:=pickmedicine.query1.FieldByName('pdt_place').asstring;
        cdsbill_dtl.fieldbyname('med_unit').asstring:=pickmedicine.query1.FieldByName('med_unit').asstring;
    end;
end;
end;

procedure Tsetmedexport8.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,mi,mid, id2,id3,id4,id5,typeid: integer;
    price1,price2: real;
    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    screen.cursor:=crhourglass;
    j:=2; mi:=0;  //第2行开始 每行一单
//格式:1发生日期, 2供货单位id2, 3购货单位id3, 4单据摘要, 5采购类别id5, 6药品编码id6, 7销售单价, 8数量, 9批号, 10有效期, 11省份id11, 12城市
//格式:1发生日期, 2供货单位id2, 3商业公司id3, 4代理人,5药品编码id5,6.采购数量（根据数量正负判断类别为采购还是退货）,7.单据摘要
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id2:=0;id3:=0;id4:=0;id5:=0;typeid:=0; price1:=0; price2:=0; //s6:='';s11:='';
        if strtoint(cleardeli(sheet.cells[j,6].text))<0 then typeid:=2 else typeid:=1; // 1 采购， 2 退货
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        with dm.pubqry do
        begin

            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id,district from tb_busimate where mate_type_id=3 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger;  //供应商
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;  //商业公司
            end;
            if sheet.cells[j,4].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('mate_id').asinteger;  //代理人
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('med_id').asinteger;
            end;
            if (id3>0) or (id4>0) or (id5>0) then
            begin
                if active=True then close;
                commandtext:='select top 1 price1,price2 from tb_busiframe5 where valid=1 and valid_dt<='+datetimetostr(dt);
                commandtext:=commandtext+' and mate_id='+inttostr(id3)+' and agent_id='+inttostr(id4)+' and med_id='+inttostr(id5);
                commandtext:=commandtext+' order by valid_dt desc';
                if recordcount>0 then
                begin
                    price1:=fieldbyname('price1').asfloat;
                    price2:=fieldbyname('price2').asfloat;
                end;
            end;
            if (id2=0) or (id3=0) or (id4=0) or (id5=0) or (Trim(cleardeli(sheet.cells[j,6].text))='') or (price1=0) or (price2=0) then
            begin
                sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
                if id2=0 then sbodcd:=sbodcd+',未取得供货单位';
                if id3=0 then sbodcd:=sbodcd+',未取得商业公司';
                if id4=0 then sbodcd:=sbodcd+',未取得代理人';
                if id5=0 then sbodcd:=sbodcd+',未取得药品';
                if price1=0 then sbodcd:=sbodcd+',未取得销售单价';
                if price2=0 then sbodcd:=sbodcd+',未取得结算单价';
                if Trim(cleardeli(sheet.cells[j,6].text))='' then sbodcd:=sbodcd+',无数量';
                mi:=mi+1;
            end;
        end;
        j:=j+1;
    end;
    setprogress(0);
    if sbodcd<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'-----------------------------------'+sbodcd),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';
//格式:1发生日期, 2供货单位id2, 3购货单位id3, 4单据摘要, 5采购类别id5, 6药品编码id6, 7销售单价, 8数量, 9批号, 10有效期, 11省份id11, 12城市
//格式:1发生日期, 2供货单位id2, 3商业公司id3, 4代理人,5药品编码id5,6.采购数量（根据数量正负判断类别为采购还是退货）,7.单据摘要
    j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id2:=0;id3:=0;id4:=0;id5:=0;typeid:=0; price1:=0; price2:=0; //s6:='';s11:='';
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        if strtoint(cleardeli(sheet.cells[j,6].text))<0 then typeid:=2 else typeid:=1; // 1 采购， 2 退货
        with dm.pubqry do
        begin
            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id,district from tb_busimate where mate_type_id=3 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger;  //供应商
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;  //商业公司
            end;
            if sheet.cells[j,4].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('mate_id').asinteger;  //代理人
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('med_id').asinteger;
            end;
            if active=True then close;
            commandtext:='select top 1 price1,price2 from tb_busiframe5 where valid=1 and valid_dt<='+datetimetostr(dt);
            commandtext:=commandtext+' and mate_id='+inttostr(id3)+' and agent_id='+inttostr(id4)+' and med_id='+inttostr(id5);
            commandtext:=commandtext+' order by valid_dt desc';
            if recordcount>0 then
            begin
                price1:=fieldbyname('price1').asfloat;
                price2:=fieldbyname('price2').asfloat;
            end;

            sb:=formatfloat('00000000',getbillid(compid,1));
            sbodcd:=sbodcd+#13#10+sb;
//格式:1发生日期, 2供货单位id2, 3商业公司id3, 4代理人,5药品编码id5,6.采购数量（根据数量正负判断类别为采购还是退货）,7.单据摘要
            if active=true then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,busi_type,creat_by,creat_dt,src_id,dst_id,agent_id,bod_desc,carry_dt)';  // ,district_id cate_id 1:商业 2:分销 3:终端
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',39,0,'+inttostr(typeid)+','+inttostr(curuserid)+',getdate(),';
            commandtext:=commandtext+ inttostr(id2)+','+ inttostr(id3)+','+ inttostr(id4)+','''+Trim(sheet.cells[j,7].text)+''','''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' select @@identity';
edit1.text:=commandtext;
            open;
            mid:=fields[0].asinteger;
            if active=true then close;
            commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price2,qty)';
            commandtext:=commandtext+' values ('+inttostr(mid)+','+inttostr(id5)+','+floattostr(price1)+','+floattostr(price2);
            if cleardeli(sheet.cells[j,6].text)='' then commandtext:=commandtext+'0)' else commandtext:=commandtext+cleardeli(sheet.cells[j,6].text)+')';
//edit2.text:=commandtext;
            execute;
        end;
        inc(j);
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar(sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedexport8.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetmedexport8.N3Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(只可删除制单状态单据)');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
//    commandtext:=commandtext+' and creat_dt>='''+datetimetostr(curuserid)+''' and creat_dt<dateadd(day,1,'''+datetimetostr(dt0)+''')';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中有非本人单据，不可删除'),'请注意',MB_OK+MB_IconError); //或非当日
        abort;
    end;
end;
if MessageBox(0,'确定删除所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //刷新
end;

procedure Tsetmedexport8.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxEdit1.SelectAll;
    dxEdit1.SetFocus;
end;
end;

procedure Tsetmedexport8.dxEdit1Click(Sender: TObject);
begin
dxEdit1.SelectAll;
dxEdit1.SetFocus;
end;

procedure Tsetmedexport8.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('src_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('src_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name1').asstring:= '';
    end;
end;
end;

procedure Tsetmedexport8.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name2').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name2').asstring:= '';
    end;
end;
end;

procedure Tsetmedexport8.SpeedButton2Click(Sender: TObject);
var s: string;
begin
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
with cdsbill do
begin
    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('请选择供货单位');
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
    if fieldbyname('agent_id').asinteger=0 then raise Exception.Create('请选择代理人');
    if fieldbyname('carry_dt').asfloat<=0 then raise Exception.Create('请输入发生日期');
end;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本单商业公司所在区域发生日期年月已结账，不可送审核');
    
    if active=True then close;
    commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and (isnull(b.price1,0)=0 or isnull(b.price2,0)=0) and b.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='下列品种无销售单价或结算单价，本单不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('bat_cd').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    if active=True then close;
	commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place,c.bat_cd from (';
    commandtext:=commandtext+' select b.rela_id1,qty=sum(b.qty) from tb_bill a,tb_bill_dtl b';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type=3 and a.relative_id='+cdsbill.fieldbyname('relative_id').asstring+' and a.bod_id=b.bod_id group by b.rela_id1';
    commandtext:=commandtext+' ) b,tb_bill_dtl c,tb_medicine m where b.rela_id1=c.dtl_id and c.med_id=m.med_id and b.qty>c.qty';
//edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='下列品种调价数超过了原销售数，本单不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('bat_cd').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
{
    commandtext:='select top 3 b.med_id,b.rela_id1,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd,qty1=sum(isnull(qty1,0)),qty=sum(qty)';   //b.bat_cd,
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and b.med_id=m.med_id';
    commandtext:=commandtext+' group by b.med_id,b.rela_id1,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd';
    commandtext:=commandtext+' having sum(isnull(qty1,0))<sum(qty)';
edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='下列品种调价数超过了原订单数，本单不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('bat_cd').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
}
{
    if active=True then close;
    commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place,h.qty1,h.qty from (select b.med_id,qty1=avg(b.qty1),qty=sum(qty) from tb_bill a,tb_bill_dtl b';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.order_id='+cdsbill.fieldbyname('order_id').asstring+' and a.bod_id=b.bod_id';
    commandtext:=commandtext+' group by b.med_id having sum(qty)>avg(b.qty1)) h,tb_medicine m';
    commandtext:=commandtext+' where h.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='下列品种合计销售数量将超过采购数量，本单不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring
            +' 采购数:'+formatfloat('###,##0',fieldbyname('qty1').asfloat)+' 合计销售数:'+formatfloat('###,##0',fieldbyname('qty').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
}
end;
if MessageBox(0,'确定本单送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport8.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedexport8.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedexport8.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedexport8.dxDBGraphicEdit4AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass4').asstring:=''
    else qryimage.fieldbyname('graphclass4').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedexport8.dxDBGraphicEdit5AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass5').asstring:=''
    else qryimage.fieldbyname('graphclass5').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedexport8.dxDBGraphicEdit1Change(Sender: TObject);
begin
setupdatestatus;
//cdsbill.edit;
end;

procedure Tsetmedexport8.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetmedexport8.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetmedexport8.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetmedexport8.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetmedexport8.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetmedexport8.dxDBGraphicEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) AND (Key=Ord('V')) then (Sender as TdxDBGraphicEdit).PasteFromClipboard;
if (ssCtrl in Shift) AND (Key=Ord('D')) then showpic((Sender as TdxDBGraphicEdit),qryimage); // difined in datamodu
if (ssCtrl in Shift) AND (Key=Ord('C')) then (Sender as TdxDBGraphicEdit).CopyToClipboard;
if (ssCtrl in Shift) AND (Key=Ord('S')) then (Sender as TdxDBGraphicEdit).DataSource.DataSet.AfterPost(nil);
if (ssCtrl in Shift) AND (Key=Ord('X')) then
begin
    (Sender as TdxDBGraphicEdit).CopyToClipboard;
    (Sender as TdxDBGraphicEdit).ClearPicture;
end;
end;

procedure Tsetmedexport8.qryimageAfterPost(DataSet: TDataSet);
begin
qryimage.ApplyUpdates(-1);
end;

procedure Tsetmedexport8.MenuItem1Click(Sender: TObject);
var mi: integer;
begin
cdsbillBeforeEdit(nil);
with cdsbill_dtl do if (active=False) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price1,price2,rela_id1,bod_cd1)'; //复制后总数据 sum(qty) 不得超过原订单数量 qty1
    commandtext:=commandtext+' select top 1 bod_id,med_id,price,price1,price2,rela_id1,bod_cd1 from tb_bill_dtl where dtl_id='+cdsbill_dtl.fieldbyname('dtl_id').asstring;
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
cdsbill_dtl.tag:=0;
DSbillDataChange(nil,nil);
cdsbill_dtl.locate('dtl_id',mi,[]);
end;

procedure Tsetmedexport8.N2Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t,mcd: string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=1) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=1) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(未完成审核单据不可生成)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and dbo.fn_orderisfinished(bod_id)=1';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中不得有已完成销售单据'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_id in ('+t+') and c.bod_type_id=1 and a.bod_id=c.order_id'; // and c.bod_status_id in (0,2)
    open;
    if recordcount>0 then
    begin
        s:='下列单据已生成了商业采购入库单，不可再次生成'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'两票销售出库单:'+fieldbyname('bod_cd').asstring+' 商业采购入库单:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定所选单据生成商业采购入库单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry1 do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill a where a.bod_id in ('+t+')';
    open;
    if recordcount=0 then
    begin
        MessageBox(0, '无可生成的单据','请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    first;
    while not eof do
    begin
        mcd:=formatfloat('00000000',getbillid(compid,1));
        if dm.pubqry.active=True then dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,cate_id,busi_type,src_id,dst_id,agent_id,broker_id,district_id,order_id,bod_desc,creat_by,creat_dt,carry_dt)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',1,0,1,1,src_id,dst_id,agent_id,broker_id,district_id,bod_id,''由''+bod_cd+''号两票销售出库单生成'','+inttostr(curuserid)+',getdate(),carry_dt';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill where bod_id='+fieldbyname('bod_id').asstring;
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select @@identity';
//edit1.text:=dm.pubqry.commandtext;
        dm.pubqry.open;
        mi:=dm.pubqry.fields[0].asinteger;
        dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill_dtl (bod_id,lead_id,sta_id,med_id,price,qty,amot,rela_id,rela_id1)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select '+inttostr(mi)+',lead_id,sta_id,med_id,price1,qty,round(price1*qty,2),rela_id,dtl_id';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill_dtl where bod_id='+fieldbyname('bod_id').asstring;
//edit2.text:=dm.pubqry.commandtext;
        dm.pubqry.execute;
        next;
    end;
end;
setprogress(0);
MessageBox(0,pchar('已成功生成商业采购入库单'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedexport8.N4Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t,mcd: string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=1) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=1) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(未完成审核单据不可生成)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_id in ('+t+')';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and isnull(b.qty2,0)=0';
//    commandtext:=commandtext+' and dbo.fn_orderisfinished(bod_id)=1';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中不得有无销售数单据'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_id in ('+t+') and c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.relative_id';
    open;
    if recordcount>0 then
    begin
        s:='下列单据已生成了未完成审核的两票销售退货单，不可再次生成'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'两票销售出库单:'+fieldbyname('bod_cd').asstring+' 两票销售退货单:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定所选单据生成两票销售退货单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry1 do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill a where a.bod_id in ('+t+')';
    commandtext:=commandtext+' and not exists (select 1 from tb_bill c where c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.relative_id)';
    open;
    if recordcount=0 then
    begin
        MessageBox(0, '无可生成的单据','请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    first;
    while not eof do
    begin
        mcd:=formatfloat('00000000',getbillid(compid,42));
        if dm.pubqry.active=True then dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,cate_id,busi_type,src_id,dst_id,agent_id,broker_id,district_id,order_id,relative_id,bod_desc,creat_by,creat_dt)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',42,0,cate_id,2,src_id,dst_id,agent_id,broker_id,district_id,order_id,bod_id,''由''+bod_cd+''号两票销售出库单生成'','+inttostr(curuserid)+',getdate()';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill where bod_id='+fieldbyname('bod_id').asstring;
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select @@identity';
//edit1.text:=dm.pubqry.commandtext;
        dm.pubqry.open;
        mi:=dm.pubqry.fields[0].asinteger;
        dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price1,price2,qty,qty1,rela_id1)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select '+inttostr(mi)+',med_id,price,price1,price2,-qty,-qty1,dtl_id';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill_dtl where bod_id='+fieldbyname('bod_id').asstring;
//edit1.text:=dm.pubqry.commandtext;
//edit2.text:=dm.pubqry.commandtext;
        dm.pubqry.execute;
        next;
    end;
end;
setprogress(0);
MessageBox(0,pchar('已成功生成两票销售退货单'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedexport8.N6Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'列表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmedexport8.SpeedButton6Click(Sender: TObject);
var mid : integer;
begin
//if srv_date>=settleday+1 then  // 当前日期srv_date超过结帐日期settleday 提示
//  raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
// insert speedbutton
screen.cursor:=crhourglass;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,busi_type,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',42,0,3,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with cdsbill do
begin
    append;
    post;
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
setupdatestatus;
{
edit1.Text:='';
edit1.setfocus;
edit2.Text:='';
}
screen.cursor:=crdefault;
end;

procedure Tsetmedexport8.SpeedButton3Click(Sender: TObject);
begin
with qry do
begin
	if active=True then close;
    commandtext:='select a.*,bod_cd1=h.bod_cd,mate_name1=k.mate_name,mate_name2=c.mate_name,agent=f.mate_name,broker=g.zname,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(f.district)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate k on a.src_id =k.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id =f.mate_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id =g.sta_id';
    commandtext:=commandtext+' left join (select bod_cd,order_id from tb_bill where bod_type_id=1) h on a.bod_id =h.order_id';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type in (1,2) and a.bod_status_id=1 and a.comp_id='+inttostr(compid);
    // cate_id 1:商业 2:分销 3:终端战略 4:终端普通;    busi_type: 1销售,2退货,3调价
    if dxEdit2.text<>'' then commandtext:=commandtext+'  and a.bod_cd='''+dxEdit2.text+''''
    	else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit2.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit3.date)+''')';
edit1.text:=commandtext;        
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport8.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
end;
end;

procedure Tsetmedexport8.PageControl2Change(Sender: TObject);
begin
if PageControl2.ActivePage=TabSheet5 then
begin
	if (qry.Active=False) or (qry.recordcount=0) then exit;
	TabSheet5.Caption:=qry.fieldbyname('bod_cd').asstring+'单明细';
	with qrydtl do
    begin
        if active=true then close;
        commandtext:='select a.*,broker=d.zname,leader=e.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.qtyperpack,med_unit=c.zdesc';
        commandtext:=commandtext+' from tb_bill_dtl a';
        commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
        commandtext:=commandtext+' left join tb_staff d on a.sta_id =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.lead_id =e.sta_id';
        commandtext:=commandtext+' where a.bod_id='+qry.fieldbyname('bod_id').asstring;
//edit2.text:=commandtext;        
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end
else SpeedButton10.Enabled:=False;
end;

procedure Tsetmedexport8.DSqrydtlDataChange(Sender: TObject;
  Field: TField);
begin
SpeedButton10.Enabled:=(PageControl2.ActivePage=TabSheet5) and (qrydtl.active=True) and (qrydtl.recordcount>0);
end;

procedure Tsetmedexport8.dxDBGrid4CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid4Ccate) then
begin
    if (ANode.Strings[dxDBGrid4Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid4Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tsetmedexport8.SpeedButton10Click(Sender: TObject);
var mi: integer;
begin
if (qrydtl.Active=False) or (qrydtl.recordcount=0) or (qrydtl.fieldbyname('bod_id').asinteger=0) then exit;
with cdsbill do
begin
    if (active=false) or (recordcount=0) then raise Exception.Create('请新增调价单');
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人单据，不可加入');
    if fieldbyname('bod_status_id').asinteger<>0 then raise Exception.Create('本单已非制单状态，不可加入');
    if (fieldbyname('relative_id').asinteger<>0) and (qry.fieldbyname('bod_id').asinteger<>fieldbyname('relative_id').asinteger)
        and (cdsbill_dtl.recordcount>0)
        then raise Exception.Create('同一调价单仅可加入同一两票销售单的商品');
end;
with dm.pubqry do
begin
	if active=True then close;
    commandtext:='select top 1 a.bod_id,a.bod_cd,a.bod_status_id from tb_bill a,tb_bill_dtl b where bod_type_id=42 and a.busi_type=3 and a.bod_id=b.bod_id and b.rela_id1='+qrydtl.fieldbyname('dtl_id').asstring;
//edit2.text:=commandtext;    
    open;
    if recordcount>0 then
    begin
    	if fieldbyname('bod_id').asinteger=cdsbill.fieldbyname('bod_id').asinteger then raise Exception.Create('本单已有此记录，不可再次加入')
        	else raise Exception.Create('此记录已在'+fieldbyname('bod_cd').asstring+'单调价，不可再次调价')
    end;
end;
if MessageBox(0,'确定将所选记录加入本调价单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
	if active=True then close;
    commandtext:='update a set src_id=c.src_id,dst_id=c.dst_id,agent_id=c.agent_id,cate_id=c.cate_id,bod_desc=''由'+qry.fieldbyname('bod_cd').asstring+'号两票销售单生成'',relative_id=c.bod_id,order_id=c.order_id'; //carry_dt=c.carry_dt,
//    commandtext:='update a set src_id=c.src_id,dst_id=c.dst_id,agent_id=c.agent_id,cate_id=c.cate_id,carry_dt=c.carry_dt,bod_desc=''由'+qry.fieldbyname('bod_cd').asstring+'号两票销售单生成'',relative_id=c.bod_id,order_id=c.order_id';
    commandtext:=commandtext+' from tb_bill a,tb_bill c where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.bod_id='+qrydtl.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,med_id,bat_cd,rela_value,price1,price2,price3,qty,qty1,qty2,cost,valid_dt,rela_id1,bod_cd1,bod_cd2)';
    commandtext:=commandtext+' select top 1 '+cdsbill.fieldbyname('bod_id').asstring+',med_id,bat_cd,price,price1,price2,price3,qty,qty1,qty2,cost,valid_dt,dtl_id,bod_cd1,bod_cd2';
    commandtext:=commandtext+'	from tb_bill_dtl where dtl_id='+qrydtl.fieldbyname('dtl_id').asstring;
    commandtext:=commandtext+' select @@identity';
//edit2.text:=commandtext;        
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
	    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
	    cdsbill_dtl.tag:=0; //可刷新
        DSbillDataChange(nil,nil); //refresh cdsbill_dtl
        if mi>0 then cdsbill_dtl.Locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport8.cdsbill_dtldiscountChange(Sender: TField);
begin
with cdsbill_dtl do
begin
    fieldbyname('price').asfloat:=fieldbyname('discount').asfloat-fieldbyname('rela_value').asfloat;
    fieldbyname('amot').asfloat:=round((fieldbyname('discount').asfloat-fieldbyname('rela_value').asfloat)*fieldbyname('qty').asfloat*100+0.01)/100;
end;
end;

procedure Tsetmedexport8.dxEdit2Click(Sender: TObject);
begin
dxEdit2.SelectAll;
dxEdit2.SetFocus;
end;

procedure Tsetmedexport8.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton10Click(nil);
    dxEdit2.SelectAll;
    dxEdit2.SetFocus;
end;
end;

procedure Tsetmedexport8.Button1Click(Sender: TObject);
begin
SpeedButton2Click(nil);
end;

procedure Tsetmedexport8.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('agent_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('agent').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('agent_id').asinteger:= 0;
        cdsbill.fieldbyname('agent').asstring:= '';
    end;
end;
end;

procedure Tsetmedexport8.dxDBButtonEdit1Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetmedexport8.dxDBButtonEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetmedexport8.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickagent.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickagent.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedexport8.Button2Click(Sender: TObject);
begin
SpeedButton2Click(nil);
end;

procedure Tsetmedexport8.SpeedButton4Click(Sender: TObject);
begin
with cdsbill do if (active=false) or (recordcount=0) then exit;
if cdsbill.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人单据，不可清除图片');
if MessageBox(0,'确定清除图片1','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage1=null where type_id=1 and id='+cdsbill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

end.
