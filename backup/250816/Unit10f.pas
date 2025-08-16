unit Unit10f;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, wwclearbuttongroup, wwradiogroup,
  dxEditor, dxDBEdtr, Animate, GIFCtrl, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, Comobj;

type
  Tsetmedimport7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DSbill: TDataSource;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    dxDateEdit1: TdxDateEdit;
    DBText15: TDBText;
    DBText16: TDBText;
    dxCheckEdit1: TdxCheckEdit;
    DBText14: TDBText;
    Label13: TLabel;
    dxDateEdit4: TdxDateEdit;
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
    N1: TMenuItem;
    N2: TMenuItem;
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
    N3: TMenuItem;
    Label27: TLabel;
    pickmedinfoprice2: TBCDField;
    pickmedinfoprice3: TBCDField;
    Label20: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Edit2: TEdit;
    dxEdit1: TdxEdit;
    N4: TMenuItem;
    N5: TMenuItem;
    Label17: TLabel;
    Label18: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1AUDAT: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1WADAT_IST: TStringField;
    ADOQuery1BEZEI: TStringField;
    ADOQuery1VTWEG: TStringField;
    ADOQuery1VTEXT: TStringField;
    ADOQuery1KDGRP: TStringField;
    ADOQuery1ZVTWEG: TStringField;
    ADOQuery1VKBUR: TStringField;
    ADOQuery1ZBEZEI: TStringField;
    ADOQuery1VKGRP: TStringField;
    ADOQuery1ZVKGRP: TStringField;
    ADOQuery1ZPLOT: TStringField;
    ADOQuery1ZPLOT_T: TStringField;
    ADOQuery1ZAREA: TStringField;
    ADOQuery1ZAREA_T: TStringField;
    ADOQuery1ZCPXSX: TStringField;
    ADOQuery1ZSALESID: TStringField;
    ADOQuery1ZSALESNAM: TStringField;
    ADOQuery1ZSALESID_O: TStringField;
    ADOQuery1ZSALESNAM_O: TStringField;
    ADOQuery1ZCOUNTRY: TStringField;
    ADOQuery1ZREGIO: TStringField;
    ADOQuery1ZZREGION: TStringField;
    ADOQuery1ZCITYNUM: TStringField;
    ADOQuery1ZCITYNAME: TStringField;
    ADOQuery1VKORG: TStringField;
    ADOQuery1ZVKORG: TStringField;
    ADOQuery1KUNNR: TStringField;
    ADOQuery1NAME1: TStringField;
    ADOQuery1ASSIGNED_BP: TStringField;
    ADOQuery1NAME_FIRST: TStringField;
    ADOQuery1VBELN: TStringField;
    ADOQuery1GBELN: TStringField;
    ADOQuery1LPOSNR: TStringField;
    ADOQuery1BOLNR: TStringField;
    ADOQuery1MATNR: TStringField;
    ADOQuery1ARKTX: TStringField;
    ADOQuery1ZGG: TStringField;
    ADOQuery1ZSCQY: TStringField;
    ADOQuery1CHARG: TStringField;
    ADOQuery1VFDAT: TStringField;
    ADOQuery1KWMENG: TStringField;
    ADOQuery1ZPR03: TStringField;
    ADOQuery1ZKHJE: TStringField;
    ADOQuery1ZKONV: TStringField;
    ADOQuery1KZWI5: TStringField;
    ADOQuery1ZREC: TStringField;
    ADOQuery1BSTKD: TStringField;
    ADOQuery1ZTERMNAME: TStringField;
    ADOQuery1ERNAM: TStringField;
    ADOQuery1ZTERNAM: TStringField;
    ADOQuery1USNAM: TStringField;
    ADOQuery1ZUSNAM: TStringField;
    cdsbillrec_id: TAutoIncField;
    cdsbillAUDAT: TStringField;
    cdsbillcreat_dt: TDateTimeField;
    cdsbillWADAT_IST: TStringField;
    cdsbillBEZEI: TStringField;
    cdsbillVTWEG: TStringField;
    cdsbillVTEXT: TStringField;
    cdsbillKDGRP: TStringField;
    cdsbillZKDGRP: TStringField;
    cdsbillVKBUR: TStringField;
    cdsbillZBEZEI: TStringField;
    cdsbillVKGRP: TStringField;
    cdsbillZVKGRP: TStringField;
    cdsbillZPLOT: TStringField;
    cdsbillZPLOT_T: TStringField;
    cdsbillZAREA: TStringField;
    cdsbillZAREA_T: TStringField;
    cdsbillZCPXSX: TStringField;
    cdsbillZSALESID: TStringField;
    cdsbillZSALESNAM: TStringField;
    cdsbillZSALESID_O: TStringField;
    cdsbillZSALESNAM_O: TStringField;
    cdsbillZCOUNTRY: TStringField;
    cdsbillZREGIO: TStringField;
    cdsbillZZREGION: TStringField;
    cdsbillZCITYNUM: TStringField;
    cdsbillZCITYNAME: TStringField;
    cdsbillVKORG: TStringField;
    cdsbillZVKORG: TStringField;
    cdsbillKUNNR: TStringField;
    cdsbillNAME1: TStringField;
    cdsbillASSIGNED_BP: TStringField;
    cdsbillNAME_FIRST: TStringField;
    cdsbillVBELN: TStringField;
    cdsbillGBELN: TStringField;
    cdsbillLPOSNR: TStringField;
    cdsbillBOLNR: TStringField;
    cdsbillMATNR: TStringField;
    cdsbillARKTX: TStringField;
    cdsbillZGG: TStringField;
    cdsbillZSCQY: TStringField;
    cdsbillCHARG: TStringField;
    cdsbillVFDAT: TStringField;
    cdsbillKWMENG: TStringField;
    cdsbillZPR03: TStringField;
    cdsbillZKHJE: TStringField;
    cdsbillZKONV: TStringField;
    cdsbillKZWI5: TStringField;
    cdsbillZREC: TStringField;
    cdsbillBSTKD: TStringField;
    cdsbillZTERMNAME: TStringField;
    cdsbillERNAM: TStringField;
    cdsbillZTERNAM: TStringField;
    cdsbillUSNAM: TStringField;
    cdsbillZUSNAM: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    cdsbill_dtl: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField10: TStringField;
    DateTimeField4: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    DSbill_dtl: TDataSource;
    Label6: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    Label7: TLabel;
    cdsbillCbusitype: TStringField;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    cdsbillbusi_type: TIntegerField;
    DBText7: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillchecker: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1WADAT_IST: TdxDBGridColumn;
    dxDBGrid1BEZEI: TdxDBGridColumn;
    dxDBGrid1VTWEG: TdxDBGridColumn;
    dxDBGrid1VTEXT: TdxDBGridColumn;
    dxDBGrid1KDGRP: TdxDBGridColumn;
    dxDBGrid1ZKDGRP: TdxDBGridColumn;
    dxDBGrid1VKBUR: TdxDBGridColumn;
    dxDBGrid1ZBEZEI: TdxDBGridColumn;
    dxDBGrid1VKGRP: TdxDBGridColumn;
    dxDBGrid1ZVKGRP: TdxDBGridColumn;
    dxDBGrid1ZPLOT: TdxDBGridColumn;
    dxDBGrid1ZPLOT_T: TdxDBGridColumn;
    dxDBGrid1ZAREA: TdxDBGridColumn;
    dxDBGrid1ZAREA_T: TdxDBGridColumn;
    dxDBGrid1ZCPXSX: TdxDBGridColumn;
    dxDBGrid1ZSALESID: TdxDBGridColumn;
    dxDBGrid1ZSALESNAM: TdxDBGridColumn;
    dxDBGrid1ZSALESID_O: TdxDBGridColumn;
    dxDBGrid1ZSALESNAM_O: TdxDBGridColumn;
    dxDBGrid1ZCOUNTRY: TdxDBGridColumn;
    dxDBGrid1ZREGIO: TdxDBGridColumn;
    dxDBGrid1ZZREGION: TdxDBGridColumn;
    dxDBGrid1ZCITYNUM: TdxDBGridColumn;
    dxDBGrid1ZCITYNAME: TdxDBGridColumn;
    dxDBGrid1VKORG: TdxDBGridColumn;
    dxDBGrid1ZVKORG: TdxDBGridColumn;
    dxDBGrid1KUNNR: TdxDBGridColumn;
    dxDBGrid1NAME1: TdxDBGridColumn;
    dxDBGrid1ASSIGNED_BP: TdxDBGridColumn;
    dxDBGrid1NAME_FIRST: TdxDBGridColumn;
    dxDBGrid1VBELN: TdxDBGridColumn;
    dxDBGrid1GBELN: TdxDBGridColumn;
    dxDBGrid1LPOSNR: TdxDBGridColumn;
    dxDBGrid1BOLNR: TdxDBGridColumn;
    dxDBGrid1BSTKD: TdxDBGridColumn;
    dxDBGrid1ZTERMNAME: TdxDBGridColumn;
    dxDBGrid1ERNAM: TdxDBGridColumn;
    dxDBGrid1ZTERNAM: TdxDBGridColumn;
    dxDBGrid1USNAM: TdxDBGridColumn;
    dxDBGrid1ZUSNAM: TdxDBGridColumn;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlamot1: TBCDField;
    cdsbill_dtlamot2: TBCDField;
    cdsbill_dtlCprice: TBCDField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2MATNR: TdxDBGridColumn;
    dxDBGrid2ARKTX: TdxDBGridColumn;
    dxDBGrid2ZGG: TdxDBGridColumn;
    dxDBGrid2ZSCQY: TdxDBGridColumn;
    dxDBGrid2CHARG: TdxDBGridColumn;
    dxDBGrid2VFDAT: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2ZPR03: TdxDBGridColumn;
    dxDBGrid2amot2: TdxDBGridColumn;
    dxDBGrid2Cprice: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2amot1: TdxDBGridColumn;
    DBText6: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
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
    procedure N1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxDBButtonEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedimport7: Tsetmedimport7;

implementation

uses datamodu, Unit7a, Unit9, Unit17, Unit28b, Unit16c, Unit16a;

{$R *.DFM}

procedure Tsetmedimport7.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton4.enabled:=false;    // print disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetmedimport7.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetmedimport7.FormActivate(Sender: TObject);
begin
//with dm.imp_type do
//    if active=false then open;
with dm.data_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=18';
        open;
    end;
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetmedimport7.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//IF (cdsbill.state in [dsinsert,dsedit]) or (cdsbill_dtl.state in [dsinsert,dsedit]) then
IF (cdsbill.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'����δ�������ݣ������˳�?','��ע��',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with cdsbill     do if active then close;
with cdsbill_dtl do if active then close;
with pickmedinfo do if active then close;
with dm.picmedinfoc do if active then close;
with dm.data_type do if active then close;
//with dm.imp_type do if active then close;
end;

procedure Tsetmedimport7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedimport7.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedimport7.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetmedimport7.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ����ҵ��˾');

//  UpdateApply speedbutton
setprogress(1);
with cdsbill do
begin
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;

    mid:=fieldbyname('bod_id').asinteger;

    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
end;
{
with cdsbill_dtl do
begin
    if state = dsinsert then cancel;
    try
        if state in [dsinsert,dsedit] then post;
    except
        cancelUpdates;
    end;              
end;
}
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport7.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'ȷ��ȡ�������ı༭','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
pickmedinfo.tag:=-1; // ��ʱ��ִ��sp_getmedinfo_bat
if cdsbill.recordcount<>0 then
begin
{
    with cdsbill_dtl do
    begin
        if active then cancelUpdates;
        tag:=0; //����ˢ��
        close;
    end;
}
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
pickmedinfo.tag:=0; // ��ʱ����ִ��sp_getmedinfo_bat
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport7.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
{
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //��ˢ��
end;
}
with cdsbill do
begin
    bi:=fieldbyname('rec_id').asinteger;
    close;
    commandtext:='select a.*,busi_type=2,check_by=null,checker=a.ZUSNAM,check_dt=cast(null as datetime) from vi_ZSD_015 a';
//    commandtext:=commandtext+' where VTWEG in (''12'',''13'',''16'')';
    commandtext:=commandtext+' where KDGRP in (''12'',''13'',''14'',''15'',''16'',''17'')';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
//    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.GBELN='''+Trim(dxEdit1.text)+'''';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')'
        else commandtext:=commandtext+' and a.GBELN='''+Trim(dxEdit1.text)+'''';
edit1.text:=commandtext;
{
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.data_type_id='+dm.data_type.fieldbyname('obj_id').asstring;
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+Trim(dxEdit1.text)+'''';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
}
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('rec_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedimport7.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedimport7.SpeedButton6Click(Sender: TObject);
//var mid :integer;
begin
{
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,cate_id,busi_type,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',1,0,1,1,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),102) as datetime))';
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
//dxDBButtonEdit2.Text:='';
//dxDBButtonEdit2.setfocus;
setprogress(0);
}
end;

procedure Tsetmedimport7.SpeedButton7Click(Sender: TObject);
begin
if cdsbill.recordcount=0
    then raise Exception.Create('��ָ����ɾ���ĵ���');
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ�����ɾ����'+#13#10+'ȷ��ɾ����Ӧ�ȷ����');
if MessageBox(0,'ȷ��ɾ������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete;
{
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //����ˢ��
end;
}
DSbillDataChange(nil,nil);  //ˢ��cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetmedimport7.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
//        edit1.text:=fieldbyname('mate_name').asstring;
//        edit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        wwRadioGroup1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBDateEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBLookupEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit4.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
{
        SpeedButton1.enabled:=(state=dsbrowse);// and (active) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and fcheckimp; //�ɹ����
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton3.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid)
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // ��˵���ɷ���
        speedbutton4.enabled:=(active) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
//        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);  //��� ͼ����ʾ
}
        if state=dsbrowse then setunupdatestatus;
    end;

    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('GBELN').asstring='') then exit; // �鿴���б�ʱ��������ʾ��ϸ����
    with cdsbill_dtl do
        if tag<>cdsbill.fieldbyname('rec_id').asinteger then
            if cdsbill.RecordCount=0 then
            begin
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select a.* from SAP_ZSD_015 a';
                commandtext:=commandtext+' where a.GBELN='+cdsbill.fieldbyname('GBELN').asstring;
edit2.text:=commandtext;                
                try
                    setprogress(1);
                    open;
                finally
                    setprogress(0);
                end;
                tag:=cdsbill.fieldbyname('rec_id').asinteger;
            end;
end;
end;

procedure Tsetmedimport7.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport7.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport7.SpeedButton2Click(Sender: TObject);
begin
{
with cdsbill do
begin
    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('��ѡ�񹩻���λ');
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ����ҵ��˾');
    if fieldbyname('cate_id').asinteger=0 then raise Exception.Create('��ѡ��ҵ�����');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('�����뷢������');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('����������λ���������������ѽ��ˣ��������');
end;
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ��������');
with dm.pubqry do
begin
    if active then close;
    if cdsbill.fieldbyname('busi_type').asinteger=1 then // �ɹ����
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty<0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('�������Ϊ�ɹ���⣬��������Ϊ����');
    end;
    if cdsbill.fieldbyname('busi_type').asinteger=2 then // �ɹ��˻�
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty>0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('�������Ϊ�ɹ��˻�������ӦΪ����');
    end;
end;
if MessageBox(0,'ȷ���������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton2.enabled:=false; // ��������������
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock1 1,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'������δ���');
    end;
    close;
end;
//cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) ��refreshʱ������pickmedinfo.tag�Ƿ���ͬ��ִ��refresh
setunupdatestatus;
setprogress(0);
}
end;

procedure Tsetmedimport7.SpeedButton4Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
repimportbill:=Trepimportbill.create(Application);
with repimportbill.cdsbill do
begin
    if active then close;
    commandtext:='select top 1 a.*,supplier='''',agent=b.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';//dbo.fn_home_name(src_id)
    commandtext:=commandtext+' busimate= b.mate_name,b.address,b.phone,bod_settle=b.settle_type';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.dst_id =b.mate_id';
    commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount=0 then
    begin
        screen.cursor:=crdefault;
        raise Exception.Create('�޿ɴ�ӡ���������');
    end;
end;
screen.cursor:=crdefault;
with repimportbill do
begin
    qrlabel8.caption:='[��ӡʱ��:'+copy(datetimetostr(now),3,14)+']';
//    qrlabel8.caption:='[��'+inttostr(cdsbill.fieldbyname('prncount').asinteger+1)+'�δ�ӡ('+copy(datetimetostr(now),3,14)+')]';
    quickrep1.Prepare;
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' ҳ';
    quickrep1.Preview;
//    free;
end;

end;

procedure Tsetmedimport7.SpeedButton3Click(Sender: TObject);
begin
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('����������λ���������������ѽ��ˣ����ɷ����');
end;
if MessageBox(0,'ȷ������˱���','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton3.enabled:=false; // �������������� ��֤�����������쳣Ҳ���� �ٰ�
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock1 -1,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'������δ�����');
    end;
    close;
end;
//cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
//DSbill_dtlDataChange(nil,nil);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) ��refreshʱ������pickmedinfo.tag�Ƿ���ͬ��ִ��refresh
setunupdatestatus;
setprogress(0);
}
end;

procedure Tsetmedimport7.cdsbillBeforeEdit(DataSet: TDataSet);
begin
{
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ��������');
end;
}
end;

procedure Tsetmedimport7.cdsbillCalcFields(DataSet: TDataSet);
begin
{
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='�Ƶ�';
        1:  fieldbyname('cbod_status').asstring:='���';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='��ҵ';
        2: fieldbyname('ccate').asstring:='����';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='��׼����';
        2: fieldbyname('cbusitype').asstring:='�˻�';
//        1: fieldbyname('cbusitype').asstring:='�ɹ�';
//        2: fieldbyname('cbusitype').asstring:='�˻�';
    end;
end;
}
with cdsbill do
begin
//    fieldbyname('ctype').asstring:='����';
    case fieldbyname('busi_type').asinteger of
        1:  fieldbyname('cbusitype').asstring:='��ҵ';
        2:  fieldbyname('cbusitype').asstring:='����';
    end;
end;
end;

procedure Tsetmedimport7.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedimport7.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�������˵��ݣ��������');
end;

procedure Tsetmedimport7.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill:'+e.message);
end;

procedure Tsetmedimport7.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetmedimport7.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
{
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
}
end;

procedure Tsetmedimport7.cdsbill_dtlpriceChange(Sender: TField);
begin
{
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
}
end;

procedure Tsetmedimport7.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedimport7.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1BEZEI) then
begin
    if (ANode.Strings[dxDBGrid1BEZEI.Index] = '�˻�') then
    begin
        AFont.Color := clred;
    end;
end;
{
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='�Ƶ�') then Acolor := $00A3FEFC;    // ��ɫ
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '���') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '�˻�') then
    begin
//        AColor := clred;
        AFont.Color := clred;
    end;
end;
}
end;

procedure Tsetmedimport7.N1Click(Sender: TObject);
//var mi,j,k,l,i : integer;
//    s,t : string;
begin
{
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0))
     or ((sender=N2) and (cdsbill.fieldbyname('bod_status_id').asinteger=1)) then
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
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=0))
         or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1)) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч(����˵��ݲ�������)');

//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id in ('+t+') and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('��ѡ���ݹ�����λ���������������ѽ��ˣ�������˻����');

    if sender= N1 then
    begin
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˵��ݣ��������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(dst_id,0)=0 or isnull(cate_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            first;
            s:='���е���δѡ����ҵ��˾��ҵ����𡢷������ڣ��������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��';
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        commandtext:='select distinct top 5 a.bod_cd from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id';
        commandtext:=commandtext+'  and (a.busi_type=1 and b.qty<0 or a.busi_type=2 and b.qty>0)';
    //edit3.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='���е�����������Ʒ���������������������������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��';
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if sender= N2 then //����
    begin
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (creat_by<>'+inttostr(curuserid);
        commandtext:=commandtext+' or check_dt<'''+datetimetostr(dt0)+''' or check_dt>=dateadd(day,1,'''+datetimetostr(dt0)+''') )';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˻�ǵ��յ��ݣ����ɷ����'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if sender= N1 then
        if MessageBox(0,'ȷ����ѡ�������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    if sender= N2 then
        if MessageBox(0,'ȷ���������ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    if active then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    open;
    if recordcount=0 then abort;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active then close;
                    if sender= N1 then commandtext:='sp_updatestock1 1,' +dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock1 -1,'+dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                next;
            end;
            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('��ѡ�����ѳɹ����'),'��ע��',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'�������ʧ��','��ע��',MB_OK+MB_ICONERROR);
            if sender= N2 then MessageBox(0,'���ݷ����ʧ��','��ע��',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
        setprogress(0);
    end;
end;
}
end;

procedure Tsetmedimport7.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
{
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
}
end;

procedure Tsetmedimport7.N3Click(Sender: TObject);
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
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч(ֻ��ɾ���Ƶ�״̬����)');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
//    commandtext:=commandtext+' and creat_dt>='''+datetimetostr(curuserid)+''' and creat_dt<dateadd(day,1,'''+datetimetostr(dt0)+''')';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('��ѡ�������зǱ��˵��ݣ�����ɾ��'),'��ע��',MB_OK+MB_IconError); //��ǵ���
        abort;
    end;
end;
if MessageBox(0,'ȷ��ɾ����ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //ˢ��
end;

procedure Tsetmedimport7.dxDBButtonEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickbroker1.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickbroker1.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedimport7.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedimport7.dxEdit1Click(Sender: TObject);
begin
dxEdit1.SelectAll;
dxEdit1.SetFocus;
end;

procedure Tsetmedimport7.dxDBButtonEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then
begin
    picksupplier.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    picksupplier.Edit1.OnKeyPress(Sender,Key);
//    pickbusimate2.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
//    pickbusimate2.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedimport7.N5Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'�б�1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmedimport7.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    m1:=0; m2:=0; j:=2;
//�ӵ�2�п�ʼ���룬��ʽ: 1��������,2����,3������,4�������,5���,6������λ,7��ҵ��˾/�ͻ���ҽԺ��,8ҵ��Ա,9ʡ��,10����,11���۲ο����ϱ���,12Ʒ��,13���,14������ҵ,15��λ,16���˼�,17���ۼ�,`8����,19����,10��Ч��,21�Ƶ�Ա
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100))'; //,f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text)+''','''+Trim(sheet.cells[j,6].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//�ӵ�2�п�ʼ���룬��ʽ: 1��������,2����,3������,4�������,5���,6������λ,7��ҵ��˾/�ͻ���ҽԺ��,8ҵ��Ա,9ʡ��,10����,11���۲ο����ϱ���,12Ʒ��,13���,14������ҵ,15��λ,16���˼�,17���ۼ�,`8����,19����,10��Ч��,21�Ƶ�Ա
    sql1:=sql;  //���������޴���ʱ����sql1 ��������
    sql:=sql+'select top 5 * from ( select top 5 info=line_no+''�����ƹ����������'' from @tab where f1=''''';
    sql:=sql+' union all select top 5 ''��''+line_no+''������˰���ͻ���Ч(С��ģ��˰�ˡ�һ����˰��)'' from @tab where f2='''' or (f2<>''С��ģ��˰��'' and f2<>''һ����˰��'')';
    sql:=sql+' union all select top 5 ''��''+line_no+''����׼��״̬����Ч(׼�롢��ֹ)'' from @tab where f3='''' or (f3<>''׼��'' and f3<>''��ֹ'')';
    sql:=sql+' union all select top 5 ''��''+line_no+''����ʹ��״̬����Ч(��������ͣ����ֹ)'' from @tab where f4='''' or (f4<>''����'' and f4<>''��ͣ'' and f4<>''��ֹ'')';
    sql:=sql+' union all select top 5 ''��''+line_no+''����ȷ��ʱ���������Ч'' from @tab where f5='''' or try_cast(f5 as datetime) is null';
    sql:=sql+' union all select top 5 ''��''+line_no+''���ޱ���'' from @tab where f6=''''';
    sql:=sql+' ) a';
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        setprogress(0);
        if recordcount>0 then
        begin
            s:='�������ݴ����������⣬��������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
//�ӵ�2�п�ʼ���룬��ʽ: 1��������,2����,3������,4�������,5���,6������λ,7��ҵ��˾/�ͻ���ҽԺ��,8ҵ��Ա,9ʡ��,10����,11���۲ο����ϱ���,12Ʒ��,13���,14������ҵ,15��λ,16���˼�,17���ۼ�,`8����,19����,10��Ч��,21�Ƶ�Ա
        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';

        sql:=sql+' update a set tax_type_id=case f2 when ''С��ģ��˰��'' then 1 when ''һ����˰��'' then 2 end,';
        sql:=sql+'  status_id=case f3 when ''׼��'' then 2 when ''��ֹ'' then 2 end,';
        sql:=sql+'  status_id1=case f4 when ''����'' then 1 when ''��ͣ'' then 2 when ''��ֹ'' then 3 end,';
        sql:=sql+'  confirm_dt=f5,mate_code=f6,modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from tb_busimate a,@tab b';
        sql:=sql+' where a.mate_type_id=10 and a.mate_name=b.f1';
        sql:=sql+' select @cnt1=@@ROWCOUNT';
//�ӵ�2�п�ʼ���룬��ʽ: 1�ƹ����������, 2��˰����, 3׼��״̬, 4ʹ��״̬, 5ȷ��ʱ��
        sql:=sql+' insert into tb_busimate (comp_id,mate_type_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt,mate_code,creat_by,creat_dt)';
        sql:=sql+'  select comp_id='+inttostr(compid)+',mate_type_id=10,mate_name=f1,';
        sql:=sql+'  tax_type_id=case f2 when ''С��ģ��˰��'' then 1 when ''һ����˰��'' then 2 end,';
        sql:=sql+'  status_id=case f3 when ''׼��'' then 2 when ''��ֹ'' then 2 end,';
        sql:=sql+'  status_id1=case f4 when ''����'' then 1 when ''��ͣ'' then 2 when ''��ֹ'' then 3 end,';
        sql:=sql+'  confirm_dt=f5,mate_code=f6,creat_by='+inttostr(curuserid)+',creat_dt=getdate()'; //mate_type_id=10 �ƹ������
        sql:=sql+' from @tab a';
        sql:=sql+' where not exists (select 1 from tb_busimate b where mate_type_id=10 and a.f1=b.mate_name)';
        sql:=sql+' select @cnt2=@@ROWCOUNT  select @cnt1,@cnt2';
edit1.text:=sql;        
        try
            setprogress(1);
            commandtext:=sql;
            open;
            //showmessage(inttostr(recordcount));
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
    SpeedButton5Click(nil);
//    if mi>0 then locate('rec_id',mi,[]);
    if (m1>0) or (m2>0) then
    begin
        MessageBox(0,pchar('�ѳɹ�����'+inttostr(m2)+'��'),'��ע��',MB_OK+MB_ICONInformation);
        cdsbill.Last;
    end;
end;

procedure Tsetmedimport7.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if fieldbyname('qty').asfloat=0
        then fieldbyname('cprice').asfloat:=0
        else fieldbyname('cprice').asfloat:=fieldbyname('amot').asfloat/fieldbyname('qty').asfloat;
end;
end;

end.
