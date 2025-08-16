unit Unit10a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, wwclearbuttongroup, wwradiogroup,
  dxEditor, dxDBEdtr, Animate, GIFCtrl, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, Comobj;

type
  Tsetmedimport1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
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
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    Shape1: TShape;
    DBText11: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbillbod_status_id: TIntegerField;
    cdsbillbod_type_id: TIntegerField;
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
    dxCheckEdit1: TdxCheckEdit;
    DBText14: TDBText;
    cdsbilldst_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    Label13: TLabel;
    cdsbillcarry_dt: TDateTimeField;
    dxDBDateEdit1: TdxDBDateEdit;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    cdsbillagent: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
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
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    N3: TMenuItem;
    Label27: TLabel;
    Label6: TLabel;
    pickmedinfoprice2: TBCDField;
    pickmedinfoprice3: TBCDField;
    cdsbilllevel_id1: TIntegerField;
    cdsbilllevel_id2: TIntegerField;
    cdsbilllevel_id3: TAutoIncField;
    cdsbilllevel1: TStringField;
    cdsbilllevel2: TStringField;
    cdsbilllevel3: TStringField;
    cdsbillagent_id: TAutoIncField;
    cdsbillmate_name: TStringField;
    cdsbillbroker: TStringField;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label20: TLabel;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    cdsbill_dtlvalid_dt: TDateTimeField;
    dxDBGrid2valid_dt: TdxDBGridMaskColumn;
    Label12: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label14: TLabel;
    dxDBGrid2leader: TdxDBGridColumn;
    cdsbill_dtllead_id: TAutoIncField;
    cdsbill_dtlleader: TStringField;
    cdsbill_dtlsta_id: TAutoIncField;
    cdsbill_dtlbroker: TStringField;
    cdsbillcate_id: TWordField;
    Edit2: TEdit;
    dxEdit1: TdxEdit;
    cdsbill_dtlbod_cd1: TStringField;
    dxDBGrid2bod_cd1: TdxDBGridColumn;
    Label15: TLabel;
    cdsbillCcate: TStringField;
    ADOQuery1dtl_id: TAutoIncField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1level_id1: TIntegerField;
    ADOQuery1level_id2: TIntegerField;
    ADOQuery1level_id3: TIntegerField;
    ADOQuery1lead_id: TIntegerField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1price1: TBCDField;
    ADOQuery1price2: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1discount: TBCDField;
    ADOQuery1cost: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1rela_value: TBCDField;
    ADOQuery1dtlrate: TBCDField;
    ADOQuery1sumqty: TBCDField;
    ADOQuery1rela_id: TIntegerField;
    ADOQuery1rela_id1: TIntegerField;
    ADOQuery1rule_id: TIntegerField;
    ADOQuery1rate: TBCDField;
    ADOQuery1ckd_amot1: TBCDField;
    ADOQuery1ckd_amot2: TBCDField;
    ADOQuery1zdesc: TStringField;
    ADOQuery1bod_cd1: TStringField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlprice2: TBCDField;
    Label16: TLabel;
    cdsbillcdistrict: TStringField;
    cdsbilldistrict_id: TIntegerField;
    DBText1: TDBText;
    cdsbill_dtlbod_cd2: TStringField;
    dxDBGrid2bod_cd2: TdxDBGridColumn;
    dxDBGrid2price1: TdxDBGridColumn;
    dxDBGrid2amot2: TdxDBGridColumn;
    cdsbill_dtlcamot1: TFloatField;
    dxDBGrid1cbusitype: TdxDBGridColumn;
    cdsbillbusi_type: TIntegerField;
    cdsbillcbusitype: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    cdsbillqty: TBCDField;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label17: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    cdsbillmate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    Label21: TLabel;
    dxDBEdit2: TdxDBEdit;
    cdsbillbod_desc1: TStringField;
    dxDBGrid1bod_desc1: TdxDBGridColumn;
    Label22: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cdsbill_dtlbod_cd3: TStringField;
    dxDBGrid2bod_cd3: TdxDBGridColumn;
    dxDBGrid2amot1: TdxDBGridColumn;
    cdsbill_dtlamot1: TBCDField;
    Label18: TLabel;
    cdsbill_dtlamot2: TBCDField;
    cdsbillamot1: TBCDField;
    dxDBGrid1amot1: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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
    procedure N1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3Enter(Sender: TObject);
    procedure dxDBButtonEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBButtonEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedimport1: Tsetmedimport1;

implementation

uses datamodu, Unit7, Unit16a, Unit17, Unit28b, Unit16c;

{$R *.DFM}

procedure Tsetmedimport1.setupdatestatus;    // 编辑状态
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

procedure Tsetmedimport1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetmedimport1.FormActivate(Sender: TObject);
begin
//with dm.imp_type do
//    if active=false then open;
if (cdsbill.active) and (fbodid>0) then cdsbill.Active:=False;
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetmedimport1.FormCloseQuery(Sender: TObject;
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
with cdsbill     do if active then close;
with cdsbill_dtl do if active then close;
with pickmedinfo do if active then close;
with dm.picmedinfoc do if active then close;
//with dm.imp_type do if active then close;
end;

procedure Tsetmedimport1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedimport1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedimport1.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择分销公司');
    fmateid:=cdsbill.fieldbyname('dst_id').asinteger;
    with dxdbgrid2 do
    begin
        focusedcolumn := focusedcolumn+1;
        focusedcolumn := focusedcolumn-1;
    end;
    sk:=cdsbill_dtl.fieldbyname('Med_code').asstring;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickmedicine.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY a.med_name,a.pdt_place,a.specifi,a.qtyperpack) as int),';
        commandtext:=commandtext+'  a.med_id,med_code,med_name,specifi,appv_docu,pdt_place,qtyperpack,qtyperbox,';
        commandtext:=commandtext+'  med_unit=dbo.fn_obj_desc(a.unit_id),med_type=dbo.fn_med_type(a.med_id),qty=0.0000,price=0.000000,qry_code';
        commandtext:=commandtext+' from tb_medicine a where 1=1';
//        commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
//        commandtext:=commandtext+' and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
//        if pickmedicine.tag=0 then commandtext:=commandtext+' and b.qty<>0';
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and (a.med_name like''%'+sk+'%'' or a.chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and a.qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by a.med_name,a.pdt_place,a.specifi,a.qtyperpack';
edit2.text:=commandtext;
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
        if recordcount=1 then
        begin
            with cdsbill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('med_id').asinteger:=pickmedicine.query1.FieldByName('med_id').asinteger;
                fieldbyname('med_code').asstring:=pickmedicine.query1.FieldByName('med_code').asstring;
                fieldbyname('med_name').asstring:=pickmedicine.query1.FieldByName('med_name').asstring;
                fieldbyname('specifi').asstring:=pickmedicine.query1.FieldByName('specifi').asstring;
                fieldbyname('pdt_place').asstring:=pickmedicine.query1.FieldByName('pdt_place').asstring;
                fieldbyname('med_unit').asstring:=pickmedicine.query1.FieldByName('med_unit').asstring;
            end;
        end
        else
        begin
            pickmedicine.edit1.text:= cdsbill_dtl.fieldbyname('med_code').asstring;
//            pickmedicine.label1.caption:= formatfloat('[#,###]',pickmedicine.query1.recordcount);
            if pickmedicine.showmodal= mrOK then
            begin
                if pickmedicine.query1.active then
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
{
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='sp_getleadbroker '+inttostr(compid)+','+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+','''+cdsbill.fieldbyname('carry_dt').asstring+'''';
edit2.text:=commandtext;            
            open;
            if (recordcount=0) or (Fields[0].asinteger=0) then raise Exception.Create('该分销公司与品种尚未设置业务规则');
            cdsbill_dtl.fieldbyname('sta_id').asinteger:=fieldbyname('broker_id').asinteger;
            cdsbill_dtl.fieldbyname('broker').asstring:=fieldbyname('broker').asstring;
            cdsbill_dtl.fieldbyname('lead_id').asinteger:=fieldbyname('lead_id').asinteger;
            cdsbill_dtl.fieldbyname('leader').asstring:=fieldbyname('leader').asstring;
        end;
}
    end;
end;
end;

procedure Tsetmedimport1.dxDBGrid2Enter(Sender: TObject);
begin
//if cdsbill.fieldbyname('src_id').asinteger=0
// then raise Exception.Create('请先选择供应供应单位');
if cdsbill.fieldbyname('dst_id').asinteger=0
    then raise Exception.Create('请先选择分销公司');
with cdsbill_dtl do
    if (active) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetmedimport1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetmedimport1.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择分销公司');

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
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',mid)
end;
with cdsbill_dtl do
begin
    if state = dsinsert then cancel;
    try
        if state in [dsinsert,dsedit] then post;
    except
        cancelUpdates;
    end;              
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport1.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
pickmedinfo.tag:=-1; // 此时不执行sp_getmedinfo_bat
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active then cancelUpdates;
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
pickmedinfo.tag:=0; // 此时可以执行sp_getmedinfo_bat
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //可刷新
end;
with cdsbill do
begin
    if active then
    begin
        bi:=fieldbyname('bod_id').asinteger;
        close;
    end
    else bi:=0;
    commandtext:='select bod_amot=k.amot2,a.*,k.qty,k.amot1,c.mate_name,mate_name1=l.mate_name,agent=f.mate_name,broker=g.zname,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(a.district_id),level1=h.zdesc,level2=i.zdesc,level3=j.zdesc';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate l on a.src_id =l.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id =f.mate_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id =g.sta_id';
    commandtext:=commandtext+' left join tb_object h on a.level_id1 =h.obj_id';
    commandtext:=commandtext+' left join tb_object i on a.level_id2 =i.obj_id';
    commandtext:=commandtext+' left join tb_object j on a.level_id3 =j.obj_id';
    commandtext:=commandtext+' left join (select bod_id,qty=sum(qty),amot1=sum(amot1),amot2=sum(amot2) from tb_bill_dtl group by bod_id) k on a.bod_id =k.bod_id';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.cate_id=2';     // a.comp_id='+inttostr(compid)+' and
    if fbodid>0 then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
        commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+Trim(dxEdit1.text)+'''';
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

procedure Tsetmedimport1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedimport1.SpeedButton6Click(Sender: TObject);
var mid :integer;
begin
//if srv_date>=settleday+1 then  // 当前日期srv_date超过结帐日期settleday 提示
//  raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,cate_id,busi_type,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',1,0,2,1,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with cdsbill do
begin
    append;
    post;
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',mid);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
setupdatestatus;
dxDBButtonEdit4.Text:='';
dxDBButtonEdit4.setfocus;
setprogress(0);
end;

procedure Tsetmedimport1.SpeedButton7Click(Sender: TObject);
begin
if cdsbill.recordcount=0
    then raise Exception.Create('请指定需删除的单据');
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可删除。'+#13#10+'确需删除，应先反审核');
if MessageBox(0,'确定删除本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete;
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetmedimport1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxDBEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBEdit2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        wwRadioGroup1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit4.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and fcheckimp; //采购审核
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton3.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            //and (fieldbyname('check_by').asinteger=curuserid)
            //and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
            and ( (fieldbyname('check_by').asinteger=curuserid) and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)) or (curuserid=5)); // 审核当天可反审
        speedbutton4.enabled:=(active) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);  //审核 图章显示
        if state=dsbrowse then setunupdatestatus;
    end;
    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('bod_id').asinteger=0) then exit; // 查看”列表“时，不需显示明细数据
    with cdsbill_dtl do
        if tag<>cdsbill.fieldbyname('bod_id').asinteger then
            if cdsbill.RecordCount=0 then
            begin
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select a.*,broker=d.zname,leader=e.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.qtyperpack,med_unit=c.zdesc';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
                commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id =d.sta_id';
                commandtext:=commandtext+' left join tb_staff e on a.lead_id =e.sta_id';
                commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
                commandtext:=commandtext+' order by a.dtl_id';
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

procedure Tsetmedimport1.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
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
       if focusedcolumn= 0 then
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('请选择品种');

       end;
       if focusedcolumn= 14 then  // 输入完最后的字段的cursor控制
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
                if fapp then begin  cdsbill.edit; append; focusedcolumn := 0; key:=0; end // else next;
            end;
       end;
    end;
end;
end;

procedure Tsetmedimport1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport1.SpeedButton2Click(Sender: TObject);
//var s: string;
begin
with cdsbill do
begin
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择分销公司');
    if fieldbyname('cate_id').asinteger=0 then raise Exception.Create('请选择业务类别');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('请输入发生日期');
end;

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('本单购货单位所在区域与年月已结账，不可审核');
//送审时，当销售单价不等于结算单价时，检查是否已设置分销销售促销规则
{
    if active then close;
    commandtext:='select top 3 b.med_id,m.med_code,m.med_name,specifi,m.pdt_place from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and b.price<>isnull(b.price1,0) and b.med_id=m.med_id';
    commandtext:=commandtext+' 	and not exists (select 1 from tb_sysrule r where r.comp_id='+inttostr(compid)+' and r.type_id=5';
    commandtext:=commandtext+' 	and r.agent_id='+cdsbill.fieldbyname('agent_id').asstring+' and r.med_id=b.med_id)';
edit2.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列品种销售单价与结算单价不符,且未设置分销销售规则,不可审核'+ #13#10;
        s:=s+'------------------------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
end;

if (cdsbill_dtl.active) and (cdsbill_dtl.RecordCount=0) then raise Exception.Create('无明细数据，不可审核');
with dm.pubqry do
begin
    if active then close;
    if cdsbill.fieldbyname('busi_type').asinteger=1 then // 采购入库
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty<0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('本单类别为采购入库，数量不可为负数');
    end;
    if cdsbill.fieldbyname('busi_type').asinteger=2 then // 采购退货
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty>0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('本单类别为采购退货，数量应为负数');
    end;
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton2.enabled:=false; // 避免连续按两次
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock1 1,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单尚未审核');
    end;
    close;
end;
cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) 在refresh时，依据pickmedinfo.tag是否相同而执行refresh
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport1.SpeedButton4Click(Sender: TObject);
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
        raise Exception.Create('无可打印输出的数据');
    end;
end;
screen.cursor:=crdefault;
with repimportbill do
begin
    qrlabel8.caption:='[打印时间:'+copy(datetimetostr(now),3,14)+']';
//    qrlabel8.caption:='[第'+inttostr(cdsbill.fieldbyname('prncount').asinteger+1)+'次打印('+copy(datetimetostr(now),3,14)+')]';
    quickrep1.Prepare;
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.Preview;
//    free;
end;
end;

procedure Tsetmedimport1.SpeedButton3Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 a.bod_cd from tb_bill a,tb_bill_dtl b ';
    commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=1  and b.med_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本单已生成'+fieldbyname('bod_cd').asstring+'号其他支出核销单，不可反审核');

    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('本单购货单位所在区域与年月已结账，不可反审核');
end;
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton3.enabled:=false; // 避免连续按两次 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock1 -1,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单尚未反审核');
    end;
    close;
end;
cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) 在refresh时，依据pickmedinfo.tag是否相同而执行refresh
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿更改');
end;
end;

procedure Tsetmedimport1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='制单';
        1:  fieldbyname('cbod_status').asstring:='审核';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='采购';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
end;
end;

procedure Tsetmedimport1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedimport1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或已审核单据，请勿更改');
end;

procedure Tsetmedimport1.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('qty').asfloat=0)
        then raise Exception.Create('采购数量不可为零');
    if fieldbyname('bod_cd1').asstring=''
        then raise Exception.Create('请输入对照单号');
//    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
//        then raise Exception.Create('货品单价或数量不可为零');
end;
end;

procedure Tsetmedimport1.cdsbillBeforePost(DataSet: TDataSet);
begin
with cdsbill do
begin
//    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('请选择供货单位');
//    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择分销公司');
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;
end;

procedure Tsetmedimport1.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill:'+e.message);
end;

procedure Tsetmedimport1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetmedimport1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetmedimport1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetmedimport1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedimport1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
//        AColor := clred;
        AFont.Color := clred;
    end;
end;
if (AColumn = dxDBGrid1amot1) then
begin
    if (ANode.Values[dxDBGrid1amot1.Index] = ANode.Values[dxDBGrid1bod_amot.Index]) then
    begin
        AColor := clLime;
    end;
end;
end;

procedure Tsetmedimport1.dxDBGrid2DblClick(Sender: TObject);
begin
{
if pickmedicine.showmodal= mrOK then
begin
    if pickmedicine.query1.active then
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
}
end;

procedure Tsetmedimport1.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb,s6: string;
    J,mi,mid,id1,id2,id3,id4,id5,id6,id7,id8,id15: integer;
    dt: TDatetime;
    issettled: Boolean;
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
//格式:1发生日期dt, 2对照单号,3订单类型id3, 4客户(分销公司)id4, 5代理人ID id5, 6省份id6, 7城市, 8产品编码id8, 9结算单价, 10销售数量, 11批号, 12有效期, 13物流单号, 14销售单价, 15供货单位, 16暂挂信息, 17交货单号, 18已收款金额, 19销售金额
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0; id7:=0; id8:=0; id15:=0; s6:=''; issettled:=False;
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        with dm.pubqry do
        begin
            if (sheet.cells[j,3].text='采购退货') or (sheet.cells[j,3].text='退货') then id3:=2 else id3:=1;
            if sheet.cells[j,4].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('mate_id').asinteger;  //分销公司
            end;
            if sheet.cells[j,15].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,15].text)+'''';
                open;
                if recordcount>0 then id15:=fieldbyname('mate_id').asinteger;  //供货单位
            end;
//            if (sheet.cells[j,5].text<>'') and isdigitstr(sheet.cells[j,5].text) then id5:= strtoint(sheet.cells[j,5].text);
            if sheet.cells[j,5].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_code ='''+Trim(sheet.cells[j,5].text)+''' and isnull(stop_yn,0)=0';
                open;
                if recordcount>0 then id5:=fieldbyname('mate_id').asinteger;  //代理人id
            end;

            if sheet.cells[j,7].text='' then s6:= Trim(sheet.cells[j,6].text) else s6:=Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text);
            if active then close;
            commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s6+'''';
            open;
            if recordcount>0 then id6:=fieldbyname('rec_id').asinteger;  //所在地区

            if active then close;
            commandtext:='select top 1 1 from tb_settlelist a';
            commandtext:=commandtext+' where a.settled=1 and year=year('''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' and month=month('''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' and dbo.fn_treeischild('+inttostr(id6)+',a.district_id)=1';
            open;
            if recordcount>0 then issettled:=True;
            
            if sheet.cells[j,8].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,8].text)+'''';
                open;
                if recordcount>0 then id8:=fieldbyname('med_id').asinteger;
            end;
            if active then close;
            commandtext:='select top 1 sta_id from tb_busiframe2 where mate_id='+inttostr(id4)+' and agent_id='+inttostr(id5)+' and med_id='+inttostr(id8);
            commandtext:=commandtext+'  and valid_dt<='''+datetimetostr(dt)+''' order by valid_dt';
            open;
            if recordcount>0 then id1:=fieldbyname('sta_id').asinteger else id1:=0; // 区域经理

//格式:1发生日期dt, 2对照单号,3订单类型id3, 4客户(分销公司)id4, 5代理人ID id5, 6省份id6, 7城市, 8产品编码id8, 9结算单价, 10销售数量, 11批号, 12有效期, 13物流单号, 14销售单价, 15供货单位, 16暂挂信息, 17交货单号, 18已收款金额, 19销售金额
            if (id4=0) or (id5=0) or (id6=0) or (id8=0) or (sheet.cells[j,10].text='') or issettled then
//            if (id1=0) or  (id4=0) or (id5=0) or (id6=0) or (id8=0) or (sheet.cells[j,10].text='') or issettled then
            begin
                sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
                if id4=0 then sbodcd:=sbodcd+',未取得分销公司';
                if id5=0 then sbodcd:=sbodcd+',未取得代理人或已停用';
                if id6=0 then sbodcd:=sbodcd+',未取得省份与城市';
                if id8=0 then sbodcd:=sbodcd+',未取得药品';
                //if id1=0 then sbodcd:=sbodcd+',未取得区域经理';
                if id15=0 then sbodcd:=sbodcd+',未取得供货单位';
                if sheet.cells[j,10].text='' then sbodcd:=sbodcd+',无数量';
                if issettled then sbodcd:=sbodcd+',发生日期所在月份已结账';
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
//格式:1发生日期dt, 2对照单号,3订单类型id3, 4客户(分销公司)id4, 5代理人ID id5, 6省份id6, 7城市, 8产品编码id8, 9结算单价, 10销售数量, 11批号, 12有效期, 13物流单号, 14销售单价, 15供货单位, 16暂挂信息, 17交货单号, 18已收款金额, 19销售金额
    j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0; id7:=0; id8:=0; id15:=0; s6:='';
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then dt:=dt0 else
            try
                dt:=strtodatetime(Trim(sheet.cells[j,1].text));
            except
                dt:=dt0;
            end;
            if (sheet.cells[j,3].text='采购退货') or (sheet.cells[j,3].text='退货') then id3:=2 else id3:=1;
            if sheet.cells[j,4].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('mate_id').asinteger;  //分销公司
            end;
            if sheet.cells[j,15].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,15].text)+'''';
                open;
                if recordcount>0 then id15:=fieldbyname('mate_id').asinteger;  //供货单位
            end;
            
//            if (sheet.cells[j,5].text<>'') and isdigitstr(sheet.cells[j,5].text) then id5:= strtoint(sheet.cells[j,5].text);
            if sheet.cells[j,5].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_code ='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('mate_id').asinteger;  //代理人id
            end;

            if sheet.cells[j,7].text='' then s6:= Trim(sheet.cells[j,6].text) else s6:=Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text);
            if active then close;
            commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s6+'''';
            open;
            if recordcount>0 then id6:=fieldbyname('rec_id').asinteger;  //所在地区
            if sheet.cells[j,8].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,8].text)+'''';
                open;
                if recordcount>0 then id8:=fieldbyname('med_id').asinteger;
            end;
            if active then close;
            commandtext:='select top 1 sta_id from tb_busiframe2 where mate_id='+inttostr(id4)+' and agent_id='+inttostr(id5)+' and med_id='+inttostr(id8);
            commandtext:=commandtext+'  and valid_dt<='''+datetimetostr(dt)+''' order by valid_dt';
            open;
            if recordcount>0 then id1:=fieldbyname('sta_id').asinteger else id1:=0; // raise Exception.Create('该客户该品种尚未设置业务员，请先设置业务员经营品种及提成规则');

            sb:=formatfloat('00000000',getbillid(compid,1));
            sbodcd:=sbodcd+#13#10+sb;
//格式:1发生日期dt, 2对照单号,3订单类型id3, 4客户(分销公司)id4, 5代理人ID id5, 6省份id6, 7城市, 8产品编码id8, 9考核单价, 10销售数量, 11批号, 12有效期, 13物流单号, 14销售单价, 15供货单位, 16暂挂信息, 17交货单号, 18已收款金额, 19销售金额
            if active then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,busi_type,creat_by,creat_dt,src_id,dst_id,broker_id,bod_desc,carry_dt,agent_id,cate_id,district_id,bod_desc1)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',1,0,'+inttostr(id3)+','+inttostr(curuserid)+',getdate(),';
            commandtext:=commandtext+ inttostr(id15)+','+ inttostr(id4)+',null,null,'''+datetimetostr(dt)+''','+inttostr(id5)+',2,'+inttostr(id6)+','''+sheet.cells[j,16].text+''')';
            commandtext:=commandtext+' select @@identity';
            open;
            mid:=fields[0].asinteger;
            if active then close;
            commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,qty,amot,bat_cd,valid_dt,lead_id,bod_cd1,bod_cd2,bod_cd3,price1,amot1,amot2)';
            commandtext:=commandtext+' values ('+inttostr(mid)+','+inttostr(id8)+',';
            if sheet.cells[j,9].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,9].text)+',';
            if sheet.cells[j,10].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,10].text)+',';
            if (sheet.cells[j,9].text='') or (sheet.cells[j,10].text='')
                then commandtext:=commandtext+'0,'
                else commandtext:=commandtext+'cast('+cleardeli(sheet.cells[j,9].text)+'*'+cleardeli(sheet.cells[j,10].text)+' as decimal(15,2)),';
            commandtext:=commandtext+''''+sheet.cells[j,11].text+''',';
            if sheet.cells[j,12].text='' then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+ Trim(sheet.cells[j,12].text)+''',';
            commandtext:=commandtext+inttostr(id1)+',';   //lead_id
            commandtext:=commandtext+''''+Trim(sheet.cells[j,2].text)+''',';   //bod_cd1 对照单号
            commandtext:=commandtext+''''+Trim(sheet.cells[j,13].text)+''',';   //bod_cd2 物流单号
            commandtext:=commandtext+''''+Trim(sheet.cells[j,17].text)+''',';   //bod_cd2 交货单号
            if sheet.cells[j,14].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,14].text)+','; // price1 销售单价
            if sheet.cells[j,18].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,18].text)+','; // amot1 已收款金额
            if sheet.cells[j,19].text='' then commandtext:=commandtext+'0)' else commandtext:=commandtext+cleardeli(sheet.cells[j,19].text)+')'; // amot2 销售金额
            execute;
        end;
        inc(j);
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar(sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedimport1.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
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
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(已审核单据不可再审)');

//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id in ('+t+') and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('所选单据购货单位所在区域与年月已结账，不可审核或反审核');
    if sender= N1 then
    begin
        if not fcheckimp then //无审核他人单据权限
        begin
            if active then close;
            commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
            commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
            open;
            if recordcount>0 then
            begin
                MessageBox(0,pchar('所选单据中有非本人单据，不可审核'),'请注意',MB_OK+MB_IconError);
                abort;
            end;
        end;
        if active then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(dst_id,0)=0 or isnull(cate_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            first;
            s:='下列单据未选择分销公司或业务类别、发生日期，不可审核'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'单';
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
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
            s:='下列单据入库类别与品种数量正负不符，本单不可审核'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'单';
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if sender= N2 then //反审
    begin
    	if curuserid<>5 then //左志华
        begin
            if active then close;
            commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    //        if not fcheckimp then commandtext:=commandtext+' and check_by<>'+inttostr(curuserid);
            commandtext:=commandtext+' and (check_by<>'+inttostr(curuserid)+' or check_dt<'''+datetimetostr(dt0)+''' or check_dt>=dateadd(day,1,'''+datetimetostr(dt0)+'''))';
    edit2.text:=commandtext;
            open;
            if recordcount>0 then
            begin
                MessageBox(0,pchar('所选单据中有非本人审核或非当日审核单据，不可反审核'),'请注意',MB_OK+MB_IconError);
                abort;
            end;
    	end;
    end;
    if sender= N1 then
        if MessageBox(0,'确定所选单据审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    if sender= N2 then
        if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
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
            if sender= N1 then MessageBox(0,pchar('所选单据已成功审核'),'请注意',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('所选单据已成功反审核'),'请注意',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'单据审核失败','请注意',MB_OK+MB_ICONERROR);
            if sender= N2 then MessageBox(0,'单据反审核失败','请注意',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
        setprogress(0);
    end;
end;
end;

procedure Tsetmedimport1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetmedimport1.N3Click(Sender: TObject);
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
    if active then close;
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
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //刷新
end;

procedure Tsetmedimport1.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker1 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= 0;
        cdsbill.fieldbyname('broker').asstring:= '';
    end;
end;
end;

procedure Tsetmedimport1.dxDBButtonEdit3Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetmedimport1.dxDBButtonEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetmedimport1.dxDBButtonEdit3KeyPress(Sender: TObject;
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

procedure Tsetmedimport1.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        if query1.fieldbyname('stop_yn').asboolean then raise Exception.Create('该代理人已停用');
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

procedure Tsetmedimport1.dxDBButtonEdit1KeyPress(Sender: TObject;
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

procedure Tsetmedimport1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedimport1.dxEdit1Click(Sender: TObject);
begin
dxEdit1.SelectAll;
dxEdit1.SetFocus;
end;

procedure Tsetmedimport1.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
end;

procedure Tsetmedimport1.dxDBButtonEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickbusimate2.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickbusimate2.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedimport1.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name').asstring:= '';
    end;
end;
end;

procedure Tsetmedimport1.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
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

end.
