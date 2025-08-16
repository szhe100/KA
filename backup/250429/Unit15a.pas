unit Unit15a;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, dxEditor, dxDBEdtr, Animate,
  GIFCtrl, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, Comobj;

type
  Tsetmedexport1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carry_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1customer: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2bat_cd: TdxDBGridMaskColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2amot: TdxDBGridMaskColumn;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    DBText7: TDBText;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Panel3: TPanel;
    Label19: TLabel;
    Label21: TLabel;
    DBText8: TDBText;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    cdsbillcustomer: TStringField;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtldiscount: TBCDField;
    cdsbill_dtlcost: TBCDField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlsite_code: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlqtyperpack: TBCDField;
    dxDateEdit1: TdxDateEdit;
    DBText14: TDBText;
    DBText15: TDBText;
    pickmedinfo: TClientDataSet;
    pickmedinfoqtyperpack: TBCDField;
    pickmedinfosite_code: TStringField;
    pickmedinfoprice: TBCDField;
    pickmedinfoqty: TBCDField;
    pickmedinfocontractprice: TBCDField;
    pickmedinfowholeprice: TBCDField;
    pickmedinfoquotaprice: TBCDField;
    pickmedinfoprice1: TBCDField;
    pickmedinfoprice2: TFloatField;
    pickmedinfoprice3: TFloatField;
    DSpickmedinfo: TDataSource;
    DBText18: TDBText;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    pickmedinfoqtyperbox: TBCDField;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    pickmedinfoagentprice: TBCDField;
    pickmedinfomemberprice: TBCDField;
    pickmedinfozstop_yn: TBooleanField;
    dxDBGrid1agent: TdxDBGridColumn;
    pickmedinfolow_limit_price: TBCDField;
    pickmedinfobidprice: TBCDField;
    ADOQuery1: TADOQuery;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Shape2: TShape;
    Edit2: TEdit;
    Label25: TLabel;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbilldst_id: TIntegerField;
    cdsbillagent: TStringField;
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
    cdsbillbroker_id: TIntegerField;
    cdsbillLbusi_type: TStringField;
    cdsbillprncount: TIntegerField;
    cdsbillbod_desc: TStringField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillcarry_dt: TDateTimeField;
    dxDateEdit4: TdxDateEdit;
    cdsbillbroker: TStringField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlsta_id: TAutoIncField;
    dxDBGrid2broker: TdxDBGridColumn;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    N3: TMenuItem;
    dxDBGrid1Lbusi_type: TdxDBGridColumn;
    ADOQuery1lead_id: TAutoIncField;
    ADOQuery1leader: TStringField;
    cdsbill_dtllead_id: TAutoIncField;
    cdsbill_dtlleader: TStringField;
    dxDBGrid2leader: TdxDBGridColumn;
    Label27: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
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
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedexport1: Tsetmedexport1;
  ptype: string[20];
  pcent: real;

implementation

uses datamodu, Unit16, Unit14a, Unit18;

{$R *.DFM}

procedure Tsetmedexport1.setupdatestatus;    // 编辑状态
begin
speedbutton6.enabled:=false;   // insert disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton4.enabled:=false;    // print disable
GIFimage1.visible:=false;
end;

procedure Tsetmedexport1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetmedexport1.FormActivate(Sender: TObject);
begin
{
with dm.broker do
begin
    if active=false then
    begin
        commandtext:='select *,cdistrict=dbo.fn_getdistrict(district),creater=dbo.fn_staff_name(creat_by),modifier=dbo.fn_staff_name(modify_by)';
        commandtext:=commandtext+' from tb_staff where sta_type_id=1 order by zname';
        open;
    end;
end;
with dm.exp_type do
    if active=false then open;
}    
SpeedButton5Click(nil);
end;

procedure Tsetmedexport1.FormCloseQuery(Sender: TObject;
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
with dm.picmedinfo  do if active=true then close;
with dm.picmedinfoc do if active=true then close;
with dm.broker   do if active=true then close;
with dm.exp_type do if active=true then close;
with cdsbill     do if active=true then close;
with cdsbill_dtl do if active=true then close;
end;

procedure Tsetmedexport1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedexport1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedexport1.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请先选择医院');
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
    with pickmed_bat1.query1 do
    begin
        if active=true then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY b.med_name,b.pdt_place,b.specifi,b.qtyperpack,a.bat_cd) as int),';
        commandtext:=commandtext+' agent=dbo.fn_mate_name(a.mate_id),a.med_id,a.bat_cd,a.qty,a.price,b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,';
        commandtext:=commandtext+' b.qtyperpack,b.qtyperbox,b.qry_code,med_unit=dbo.fn_obj_desc(b.unit_id),a.valid_dt,b.otc_rx,b.gmp'; //,b.discount
        commandtext:=commandtext+' from tb_medstock_bat a,tb_medicine b ';
        commandtext:=commandtext+' where a.med_id=b.med_id and a.mate_id='+inttostr(fmateid);  // and (a.qty<>0)
//        commandtext:=commandtext+'  and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and (b.med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and b.qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by b.med_name,b.pdt_place,b.specifi,b.qtyperpack,a.bat_cd';
//        pickmed_bat1.query1.tag:=cdsbill.fieldbyname('src_id').asinteger;
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
        if recordcount=1 then
        begin
            with cdsbill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('med_id').asinteger:=pickmed_bat1.query1.FieldByName('med_id').asinteger;
                fieldbyname('med_code').asstring:=pickmed_bat1.query1.FieldByName('med_code').asstring;
                fieldbyname('med_name').asstring:=pickmed_bat1.query1.FieldByName('med_name').asstring;
                fieldbyname('specifi').asstring:=pickmed_bat1.query1.FieldByName('specifi').asstring;
                fieldbyname('pdt_place').asstring:=pickmed_bat1.query1.FieldByName('pdt_place').asstring;
                fieldbyname('med_unit').asstring:=pickmed_bat1.query1.FieldByName('med_unit').asstring;
                fieldbyname('bat_cd').asstring:=pickmed_bat1.query1.FieldByName('bat_cd').asstring;
                fieldbyname('cost').asfloat:=pickmed_bat1.query1.fieldbyname('price').asfloat;
//                fieldbyname('discount').asfloat:=pickmed_bat1.query1.fieldbyname('discount').asfloat;
                fieldbyname('price').asfloat:=pickmed_bat1.query1.fieldbyname('price').asfloat;
            end;
        end
        else
        begin
            pickmed_bat1.edit1.text:= cdsbill_dtl.fieldbyname('med_code').asstring;
            pickmed_bat1.label1.caption:= formatfloat('[#,###]',pickmed_bat1.query1.recordcount);
            if pickmed_bat1.showmodal= mrOK then
            begin
                if pickmed_bat1.query1.Active=true then
                begin
                    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
                    cdsbill_dtl.fieldbyname('med_id').asinteger:=pickmed_bat1.query1.FieldByName('med_id').asinteger;
                    cdsbill_dtl.fieldbyname('med_code').asstring:=pickmed_bat1.query1.FieldByName('med_code').asstring;
                    cdsbill_dtl.fieldbyname('med_name').asstring:=pickmed_bat1.query1.FieldByName('med_name').asstring;
                    cdsbill_dtl.fieldbyname('specifi').asstring:=pickmed_bat1.query1.FieldByName('specifi').asstring;
                    cdsbill_dtl.fieldbyname('pdt_place').asstring:=pickmed_bat1.query1.FieldByName('pdt_place').asstring;
                    cdsbill_dtl.fieldbyname('med_unit').asstring:=pickmed_bat1.query1.FieldByName('med_unit').asstring;
                    cdsbill_dtl.fieldbyname('bat_cd').asstring:=pickmed_bat1.query1.FieldByName('bat_cd').asstring;
                    cdsbill_dtl.fieldbyname('cost').asfloat:=pickmed_bat1.query1.fieldbyname('price').asfloat;
//                    cdsbill_dtl.fieldbyname('discount').asfloat:=pickmed_bat1.query1.fieldbyname('discount').asfloat;
                    cdsbill_dtl.fieldbyname('price').asfloat:=pickmed_bat1.query1.fieldbyname('price').asfloat;
                end;
            end else exit;
        end;

        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='sp_getleadbroker '+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+','''+cdsbill.fieldbyname('carry_dt').asstring+'''';
            open;
            if (recordcount=0) or (Fields[0].asinteger=0) then raise Exception.Create('该医院该品种尚未设置医药代表，请先设置医药代表经营品种及提成规则');
            cdsbill_dtl.fieldbyname('sta_id').asinteger:=fieldbyname('sta_id').asinteger;
            cdsbill_dtl.fieldbyname('broker').asstring:=fieldbyname('broker').asstring;
            cdsbill_dtl.fieldbyname('lead_id').asinteger:=fieldbyname('lead_id').asinteger;
            cdsbill_dtl.fieldbyname('leader').asstring:=fieldbyname('leader').asstring;
        end;

        with pickmedinfo do
        begin
            if active=true then close;
            commandtext:='sp_getmedinfo_bat1 '+cdsbill_dtl.fieldbyname('med_id').asstring
               +','''+cdsbill_dtl.fieldbyname('bat_cd').asstring+''','+cdsbill.fieldbyname('dst_id').asstring;
            open;
            if FieldByName('zstop_yn').asboolean=true then raise Exception.Create('本品种或批次已停用，不可制单')
               else dxdbgrid2.focusedcolumn := 7;
        end;
    end;
end;
end;

procedure Tsetmedexport1.DSbill_dtlDataChange(Sender: TObject;
  Field: TField);
begin
{
if pagecontrol1.activepage=tabsheet1 then exit;
if (cdsbill_dtl.fieldbyname('med_id').asstring='') or (cdsbill.fieldbyname('dst_id').asstring='') then exit;

with pickmedinfo do
begin
    if tag=cdsbill_dtl.fieldbyname('med_id').asinteger then exit; // 同一品种无需再取药品资料
    if active=true then close;
    commandtext:='sp_getmedinfo_bat1 '+cdsbill_dtl.fieldbyname('med_id').asstring
       +','''+cdsbill_dtl.fieldbyname('bat_cd').asstring+''','+cdsbill.fieldbyname('dst_id').asstring;
    try
        setprogress(1);
        open;
        tag:=cdsbill_dtl.fieldbyname('med_id').asinteger;
    finally
        setprogress(0);
    end;
end;
}
end;

procedure Tsetmedexport1.dxDBGrid2Enter(Sender: TObject);
begin
if cdsbill.fieldbyname('dst_id').asinteger=0
    then raise Exception.Create('请先选择医院');
with cdsbill_dtl do
    if (active=true) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetmedexport1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetmedexport1.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin

if (edit2.text='') or (cdsbill.fieldbyname('dst_id').asinteger=0)
    then raise Exception.Create('请选择医院');

//  UpdateApply speedbutton
setprogress(1);
with cdsbill do
begin
    mid:=fieldbyname('bod_id').asinteger;
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;
    if not (state in [dsinsert,dsedit]) then edit;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
      //ApplyUpdates(-1);
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

procedure Tsetmedexport1.SpeedButton9Click(Sender: TObject);
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
pickmedinfo.tag:=0; // 此时可以执行sp_getmedinfo_bat
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport1.SpeedButton5Click(Sender: TObject);
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
    commandtext:='select a.*,agent=b.mate_name,customer=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname';
    commandtext:=commandtext+' from tb_bill a,tb_busimate b,tb_busimate c,tb_staff d,tb_staff e,tb_staff f';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=7 and a.src_id*=b.mate_id and a.dst_id*=c.mate_id and a.creat_by*=d.sta_id and a.check_by*=e.sta_id and a.broker_id*=f.sta_id';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //'医院处方单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedexport1.SpeedButton6Click(Sender: TObject);
var mid : integer;
begin
//if srv_date>=settleday+1 then  // 当前日期srv_date超过结帐日期settleday 提示
//  raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
// insert speedbutton
screen.cursor:=crhourglass;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',7,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
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
edit2.Text:='';
edit2.setfocus;
screen.cursor:=crdefault;
end;

procedure Tsetmedexport1.SpeedButton7Click(Sender: TObject);
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

procedure Tsetmedexport1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        edit2.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        edit2.text:=fieldbyname('customer').asstring;
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active=true) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid))
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        SpeedButton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        speedbutton4.enabled:=(active=true) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);

        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //审核 图章显示
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
                commandtext:='select a.*,broker=d.zname,leader=e.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.site_code,b.qtyperpack,b.qtyperbox,med_unit=c.zdesc ';
                commandtext:=commandtext+' from tb_bill_dtl a,tb_medicine b,tb_object c,tb_staff d,tb_staff e';
                commandtext:=commandtext+' where a.med_id=b.med_id and a.sta_id*=d.sta_id and a.lead_id*=e.sta_id and b.unit_id*=c.obj_id and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
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

procedure Tsetmedexport1.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
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

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('请选择药品');
       end;
       if focusedcolumn= 7 then  // 输入单价
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;
            if cdsbill_dtl.fieldbyname('price').asfloat<pickmedinfo.fieldbyname('price').asfloat
                then showmessage('单价低于成本价，请核查');
            if (pickmedinfo.fieldbyname('low_limit_price').asfloat<>0)
              and (cdsbill_dtl.fieldbyname('price').asfloat<pickmedinfo.fieldbyname('low_limit_price').asfloat)
                then raise Exception.Create('单价低于最低限价，不可制单');
       end;
       if focusedcolumn= 7 then  // 输入完最后的字段的cursor控制
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
                if fapp then begin  cdsbill.edit; append; key:=0;  focusedcolumn := 0  end // else next;
            end;
       end;
    end;
end;
end;

procedure Tsetmedexport1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport1.SpeedButton2Click(Sender: TObject);
var s: string;
begin
if cdsbill.fieldbyname('dst_id').asstring='' then raise Exception.Create('请选择医院');
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可审核');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 10 m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd,b.qty,qty1=k.qty';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m,tb_medstock_bat k';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id and k.mate_id='+cdsbill.fieldbyname('dst_id').asstring;
    commandtext:=commandtext+'  and k.med_id=b.med_id and k.bat_cd = b.bat_cd and b.qty>isnull(k.qty,0)';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='下列品种库存不足，本单不可审核'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('bat_cd').asstring;
            s := s+ formatfloat('  处方数:###,##0',fieldbyname('qty').asfloat)+formatfloat(' 库存数:###,##0',fieldbyname('qty1').asfloat);
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
{
    if active=true then close;
    commandtext:='select top 10 *,mate_name=dbo.fn_mate_name(a.mate_id),broker=dbo.fn_staff_name(a.sta_id),';
    commandtext:=commandtext+' c.med_code,c.med_name,c.specifi,c.pdt_place from tb_bill m,tb_bill_dtl n,tb_brokermed a,tb_medicine c,';
    commandtext:=commandtext+' (select rela_id,rate=sum(isnull(rate,0)) from tb_brokermedtl group by rela_id) b';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.valid=1 and a.med_id=c.med_id and a.rec_id=b.rela_id ';
    commandtext:=commandtext+'  and isnull(a.rate,0)<>b.rate';
    commandtext:=commandtext+'  and m.bod_id=n.bod_id and m.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and m.dst_id=a.mate_id and a.med_id=n.med_id and a.sta_id=n.sta_id and m.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列品种医药代表提成款与其成员提成款合计不符，请先设置正确'+ #13#10;
        s:=s+'--------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('broker').asstring+' ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}    
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock7 7,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid); // 2: 销售出库 , 单据号
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
cdsbill_dtl.tag:=0;
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) 在refresh时，依据pickmedinfo.tag是否相同而执行refresh
DSbill_dtlDataChange(nil,nil);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport1.SpeedButton4Click(Sender: TObject);
begin
repexportbill:=Trepexportbill.create(Application);
with repexportbill.cdsbill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
    commandtext:=commandtext+' broker=dbo.fn_staff_name(a.broker_id),agent=dbo.fn_mate_name(a.src_id),customer= b.mate_name,b.address,b.phone ';
    commandtext:=commandtext+' from tb_bill a,tb_busimate b ';
    commandtext:=commandtext+' where a.dst_id*=b.mate_id and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then raise Exception.Create('无可打印输出的数据');
end;
with repexportbill do
begin
//    qrlabel1.caption:=trim(cdsbill.fieldbyname('stock_name').asstring)+' 配送商出库单';
    qrlabel8.caption:='[打印时间:'+copy(datetimetostr(now),3,14)+']';
    quickrep1.Prepare;
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.Preview;
//    free;
end;
end;

procedure Tsetmedexport1.SpeedButton3Click(Sender: TObject);
begin
//if not (uncheckabled(cdsbill.fieldbyname('bod_id').asinteger))
//        then raise Exception.Create('本单已结帐，不可反审核。');
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton3.enabled:=false; // 避免连续按两次
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock7 -7,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) 在refresh时，依据pickmedinfo.tag是否相同而执行refresh
DSbill_dtlDataChange(nil,nil);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetmedexport1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    if fieldbyname('bod_status_id').asinteger=0 then fieldbyname('cbod_status').asstring:='制单' else fieldbyname('cbod_status').asstring:='审核';
end;

procedure Tsetmedexport1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedexport1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetmedexport1.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
        then raise Exception.Create('药品单价或数量不可为零');
    if (pickmedinfo.fieldbyname('qty').asfloat<fieldbyname('qty').asfloat)
        then MessageBox(0,'医院库存数量不足','请注意',MB_OK+MB_ICONInformation);
//        then application.messagebox('配送商库存数量不足。请及时补足库存','注意',mb_ok+mb_iconexclamation);
//    if (pickmedinfo.fieldbyname('low_limit_price').asfloat<>0) and (fieldbyname('price').asfloat<pickmedinfo.fieldbyname('low_limit_price').asfloat)
//        then raise Exception.Create('药品销售单价不可低于最低限价');
end;
end;

procedure Tsetmedexport1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
end;

procedure Tsetmedexport1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetmedexport1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetmedexport1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedexport1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetmedexport1.dxDBGrid2DblClick(Sender: TObject);
begin
if pickmed_bat1.showmodal= mrOK then
begin
    if pickmed_bat1.query1.Active=true then
    begin
        if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
        cdsbill_dtl.fieldbyname('med_id').asinteger:=pickmed_bat1.query1.FieldByName('med_id').asinteger;
        cdsbill_dtl.fieldbyname('med_code').asstring:=pickmed_bat1.query1.FieldByName('med_code').asstring;
        cdsbill_dtl.fieldbyname('med_name').asstring:=pickmed_bat1.query1.FieldByName('med_name').asstring;
        cdsbill_dtl.fieldbyname('specifi').asstring:=pickmed_bat1.query1.FieldByName('specifi').asstring;
        cdsbill_dtl.fieldbyname('pdt_place').asstring:=pickmed_bat1.query1.FieldByName('pdt_place').asstring;
        cdsbill_dtl.fieldbyname('med_unit').asstring:=pickmed_bat1.query1.FieldByName('med_unit').asstring;
        cdsbill_dtl.fieldbyname('bat_cd').asstring:=pickmed_bat1.query1.FieldByName('bat_cd').asstring;
        cdsbill_dtl.fieldbyname('cost').asfloat:=pickmed_bat1.query1.fieldbyname('price').asfloat;
        cdsbill_dtl.fieldbyname('price').asfloat:=0;
    end;

    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='select dbo.fn_brokeridbymatemed('+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+'),';
        commandtext:=commandtext+'dbo.fn_staff_name(dbo.fn_brokeridbymatemed('+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+'))';
        open;
        if (recordcount=0) or (Fields[0].asinteger=0) then raise Exception.Create('该医院该品种尚未设置医药代表，请先设置医药代表经营品种及提成规则');
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=Fields[0].asinteger;
        cdsbill_dtl.fieldbyname('broker').asstring:=Fields[1].asstring;
    end;

    with pickmedinfo do
    begin
        if active=true then close;
        commandtext:='sp_getmedinfo_bat '+cdsbill_dtl.fieldbyname('med_id').asstring
           +','''+cdsbill_dtl.fieldbyname('bat_cd').asstring+''','+cdsbill.fieldbyname('dst_id').asstring;
        open;
        if FieldByName('zstop_yn').asboolean=true then raise Exception.Create('本品种或批次已停用，不可制单')
           else dxdbgrid2.focusedcolumn := 7;
    end;
end;

end;

procedure Tsetmedexport1.Edit2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then setupdatestatus;

    sk:=edit2.text;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickcustomer.query1 do
    begin
        if active=true then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,deputy,phone,address,broker=dbo.fn_staff_name(broker_id),broker_id,settle_type,stop_yn,qry_code';
        commandtext:=commandtext+' from tb_busimate where mate_type_id=1'; // and dbo.fn_inmate(mate_id,'+inttostr(curuserid)+')=1 ';
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and mate_name like''%'+sk+'%'''
         else commandtext:=commandtext+' and qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by mate_name';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询医院'); end;
        pickcustomer.edit1.text:= edit2.text;
//        pickcustomer.label1.caption:= formatfloat('[#,###]',pickcustomer.query1.recordcount);
        if pickcustomer.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean=true
                then raise Exception.Create('该医院已停用，不可制单');
            with cdsbill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('dst_id').asinteger:=pickcustomer.query1.FieldByName('mate_id').asinteger;
                if pickcustomer.query1.FieldByName('broker').asstring<>'' then
                   fieldbyname('broker_id').asinteger:=pickcustomer.query1.FieldByName('broker').asinteger;
                fieldbyname('settle_type').asinteger:=pickcustomer.query1.FieldByName('settle_type').asinteger;
                Edit2.text:=pickcustomer.query1.FieldByName('mate_name').asstring;
            end;
        end;
    end;
end;
end;

procedure Tsetmedexport1.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,mid,id1,id2,id3,id4,id5: integer;
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
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    screen.cursor:=crhourglass;
    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';
    j:=1;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if active=true then close;
            if sheet.cells[j,1].text='' then id1:=0
            else
            begin
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=0 and mate_name ='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else id1:=0;
            end;
            if sheet.cells[j,2].text='' then id2:=0
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else id2:=0;
            end;
            if sheet.cells[j,4].text='' then dt:=dt0 else
            try
                dt:=strtodatetime(Trim(sheet.cells[j,4].text));
            except
                dt:=dt0;
            end;
            id3:=0;
            if (sheet.cells[j,5].text='') or (sheet.cells[j,5].text='销售出库') or (sheet.cells[j,5].text='出库') then id3:= 101;
            if (sheet.cells[j,5].text='销售退货') or (sheet.cells[j,5].text='退货') then id3:= 102;
            if id3=0 then id3:=101;

            if sheet.cells[j,6].text='' then id4:=0 else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else id4:=0;
            end;
            if (id2>0) and (id4>0) then
            begin
                if active=true then close;
                commandtext:='select dbo.fn_brokeridbymatemed('+inttostr(id2)+','+inttostr(id4)+')';
                open;
                if (recordcount>0) then id5:=Fields[0].asinteger;
            end
            else id5:=0;

//            sb:=formatfloat('00000000',getbillid('EXP'));
            sb:=formatfloat('00000000',getbillid(compid,1));
            sbodcd:=sbodcd+#13#10+sb;

            if active=true then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,busi_type,creat_by,creat_dt,src_id,dst_id,bod_desc,carry_dt)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',2,0,'+inttostr(id3)+','+inttostr(curuserid)+',getdate(),';
            commandtext:=commandtext+inttostr(id1)+','+ inttostr(id2)+','''+ Trim(sheet.cells[j,3].text)+''','''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' select @@identity';
            open;
            mid:=fields[0].asinteger;
            if active=true then close;
            commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,qty,amot,sta_id)';
            commandtext:=commandtext+' values ('+inttostr(mid)+','+inttostr(id4)+',';
            if sheet.cells[j,7].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,7].text)+',';
            if sheet.cells[j,8].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,8].text)+',';
            if (sheet.cells[j,7].text='') or (sheet.cells[j,8].text='')
                then commandtext:=commandtext+'0,'
                else commandtext:=commandtext+'cast('+cleardeli(sheet.cells[j,7].text)+'*'+cleardeli(sheet.cells[j,8].text)+' as decimal(15,2)),';
//            commandtext:=commandtext+'90,';
            if id5=0 then commandtext:=commandtext+'null)' else commandtext:=commandtext+inttostr(id5)+')';
            execute;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar(sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedexport1.N1Click(Sender: TObject);
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
if mi=0 then raise Exception.Create('选择单据无效');
if sender= N1 then
    if MessageBox(0,'确定所选单据审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if sender= N2 then
    if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    open;
    if recordcount=0 then abort;
    first;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active=true then close;
                    if sender= N1 then commandtext:='sp_updatestock 2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock -2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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
        if active=true then close;
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetmedexport1.N3Click(Sender: TObject);
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

procedure Tsetmedexport1.Edit2Click(Sender: TObject);
begin
(sender as TEdit).selectall;
end;

end.
