unit Unit80a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, DB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Buttons, dxDBELib, dxEditor, dxDBEdtr,
  dxDBTLCl, dxGrClms, Animate, GIFCtrl, ExtCtrls, DBCtrls, StdCtrls,
  dxDBGrid, dxDBCtrl, dxTL, ComCtrls, mycds, Menus;

type
  Tsetdocument = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
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
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
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
    Shape2: TShape;
    DBText11: TDBText;
    GIFimage1: TRxGIFAnimator;
    bill: TClientDataSet;
    billbod_id: TIntegerField;
    billbod_cd: TStringField;
    billbod_status_id: TIntegerField;
    billbod_type_id: TIntegerField;
    billbod_amot: TBCDField;
    billcreat_by: TIntegerField;
    billcreat_dt: TDateTimeField;
    billcheck_by: TIntegerField;
    billcheck_dt: TDateTimeField;
    billrelative_id: TIntegerField;
    billCbod_status: TStringField;
    billcreater: TStringField;
    billchecker: TStringField;
    bill_dtl: TClientDataSet;
    billprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    billbod_desc: TStringField;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText18: TDBText;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    dxCheckEdit2: TdxCheckEdit;
    dxDateEdit4: TdxDateEdit;
    ADOQuery1: TADOQuery;
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlzdesc: TStringField;
    bill_dtlcost: TBCDField;
    bill_dtlprice: TBCDField;
    bill_dtlqty: TBCDField;
    bill_dtlrela_value: TBCDField;
    bill_dtlLacc_title: TStringField;
    dxDBGrid2zdesc: TdxDBGridMaskColumn;
    dxDBGrid2cost: TdxDBGridMaskColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    bill_dtlacc_cd: TStringField;
    bill_dtlamot: TBCDField;
    pickacc: TClientDataSet;
    DataSource1: TDataSource;
    ImageList: TImageList;
    billcomp_id: TIntegerField;
    billstock_id: TIntegerField;
    dxDBGrid2Lacc_title: TdxDBGridColumn;
    dxDBGrid2acc_cd: TdxDBGridButtonColumn;
    GIFimage2: TRxGIFAnimator;
    bill_dtlrela_id: TIntegerField;
    bill_dtlexpensesup: TStringField;
    bill_dtlcomptitle: TStringField;
    dxDBGrid2comptitle: TdxDBGridButtonColumn;
    dxDBGrid2expensesup: TdxDBGridButtonColumn;
    bill_dtlstock_id: TIntegerField;
    bill_dtlLbankaccount: TStringField;
    dxDBGrid2Lbankaccount: TdxDBGridLookupColumn;
    Label5: TLabel;
    Label6: TLabel;
    billbroker_id: TIntegerField;
    dxDBLookupEdit2: TdxDBLookupEdit;
    billcash_by: TIntegerField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    billbroker: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1casher: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1cash_by: TIntegerField;
    Label22: TLabel;
    homebank: TClientDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    accounter: TClientDataSet;
    AutoIncField16: TAutoIncField;
    StringField177: TStringField;
    DSaccounter: TDataSource;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    accounts: TClientDataSet;
    accountsacc_id: TAutoIncField;
    accountscomp_id: TIntegerField;
    accountsparent_id: TIntegerField;
    accountsacc_cd: TStringField;
    accountsacc_title: TStringField;
    accountsacc_desc: TStringField;
    accountsacc_level: TIntegerField;
    accountsacc_side: TBooleanField;
    accountsLtitle: TStringField;
    accountshaschild: TBooleanField;
    accountsqry_code: TStringField;
    DSaccounts: TDataSource;
    Edit1: TEdit;
    billcarry_dt: TDateTimeField;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
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
    procedure billBeforeEdit(DataSet: TDataSet);
    procedure billCalcFields(DataSet: TDataSet);
    procedure bill_dtlBeforeDelete(DataSet: TDataSet);
    procedure bill_dtlBeforeEdit(DataSet: TDataSet);
    procedure bill_dtlBeforePost(DataSet: TDataSet);
    procedure billBeforePost(DataSet: TDataSet);
    procedure bill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure bill_dtlpriceChange(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2acc_cdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2expensesupButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2comptitleButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bill_dtlAfterPost(DataSet: TDataSet);
    procedure billReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setdocument: Tsetdocument;
  dtlid: integer;

implementation

uses datamodu, Unit28a, Unit81a, Unit91a, Unit124a, Unit125; //, Unit81, Unit91, Unit124, Unit125, Unit61;

{$R *.DFM}

procedure Tsetdocument.setupdatestatus;    // 编辑状态
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

procedure Tsetdocument.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetdocument.FormActivate(Sender: TObject);
begin
with dm.staff do
    if active=false then
    begin
        commandtext:='select a.*,department=b.zdesc from tb_staff a,tb_object b ';
        commandtext:=commandtext+' where a.dept_id=b.obj_id and a.sta_type_id=0 ';
        open;
    end;
with accounts do
    if active=False then
    begin
        commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
        commandtext:=commandtext+' from tb_accounts where (comp_id=0 or comp_id='+inttostr(compid)+')';
edit1.text:=commandtext;
        open;
    end;
{
with dm.staff do
    if active=false then
    begin
        commandtext:='select *,busistruc=dbo.fn_getreefulldesc(struc_id),department=dbo.fn_obj_desc(dept_id),';
        commandtext:=commandtext+' creater=dbo.fn_staff_name(creat_by),modifier=dbo.fn_staff_name(modify_by)';
        commandtext:=commandtext+' from tb_staff where comp_id='+inttostr(compid);
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
}
with accounter do
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where account=1 and firedate is null and comp_id='+inttostr(compid);
        commandtext:=commandtext+' order by zname';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
	end;
with homebank do
    if active=false then
    begin
        commandtext:='select a.bank_id,a.bank_name,a.bank_acnt from tb_bank a where a.comp_id='+inttostr(compid) +' and a.managered=1 and ISNULL(a.stop_yn,0)=0';
        commandtext:=commandtext+' order by a.bank_name';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
if (bill.active=false) or (bill.active=True) and (fbodid>0) and (fbodid<>bill.FieldByName('bod_id').asinteger)
    then SpeedButton5Click(nil);
end;

procedure Tsetdocument.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IF (bill.state in [dsinsert,dsedit]) or (bill_dtl.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with bill do if active=true then close;
with bill_dtl do if active=true then close;
with dm.staff do if active=true then close;
with accounter do if active=true then close;
with homebank do if active=true then close;
end;

procedure Tsetdocument.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetdocument.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetdocument.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid,fchr: boolean; //  东方语言 宽字符 (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    with dxdbgrid2 do
    begin
        focusedcolumn := focusedcolumn+1;
        focusedcolumn := focusedcolumn-1;
    end;
    sk:=trimacccd(bill_dtl.fieldbyname('acc_cd').asstring);
//    if sk='' then exit;
    fwid:=false;   fchr:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
        if (sc[1] in ['a'..'z']) or (sc[1] in ['A'..'Z']) then fchr:=true; //注意这里的技巧
    end;
    with pickaccounts.qryacc do
    begin
        if active=false then
        begin
            commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild1(acc_id,'+inttostr(compid)+'),acc_level=dbo.fn_getacclevel(acc_id)';
            commandtext:=commandtext+' from tb_accounts where (comp_id=0 or comp_id='+inttostr(compid)+')';
            open;
        end;
        if fwid then locate('acc_title',sk,[loCaseInsensitive,loPartialKey])
            else
            begin
                if fchr then locate('qry_code',sk,[loCaseInsensitive,loPartialKey])
                        else locate('acc_cd',sk,[loPartialKey]);
            end;
    end;
    if pickaccounts.showmodal= mrOK then
    begin
        if pickaccounts.qryacc.Active=true then
        begin
            if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
            bill_dtl.fieldbyname('med_id').asinteger:=pickaccounts.qryacc.FieldByName('acc_id').asinteger;
            bill_dtl.fieldbyname('acc_cd').asstring:=pickaccounts.qryacc.FieldByName('acc_cd').asstring;
        end;
    end else exit;
    dxdbgrid2.focusedcolumn :=2;
end;
end;

procedure Tsetdocument.dxDBGrid2Enter(Sender: TObject);
begin
with bill_dtl do
begin
    if active=false then exit;
    if recordcount=0 then begin bill.edit; append; end;
end;
end;

procedure Tsetdocument.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetdocument.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
if bill_dtl.recordcount=0 then raise Exception.Create('无明细数据，不可保存');
//  UpdateApply speedbutton
setprogress(1);
with bill do
begin
//    tag:=0; // 新单 记号 ，-1 时 不可 record scroll
    mid:=fieldbyname('bod_id').asinteger;
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;
    if not (state in [dsinsert,dsedit]) then edit;
    if state in [dsinsert,dsedit] then post;
//    ApplyUpdates(-1);
    if changecount>0 then myapplyupdate(bill,'tb_bill','bod_id');
//    myapplyupdate(bill,'tb_bill','bod_id');
    refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',mid)
end;
with bill_dtl do
begin
    if state = dsinsert then cancel;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(bill_dtl,'tb_bill_dtl','dtl_id','');
end;
//bill.tag:=1;  //  入库标志
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
setprogress(1);
//bill.tag:=0;  // 为 -1 时为新单 ,不可 record scroll
if bill.recordcount<>0 then
begin
    with bill_dtl do
    begin
        if active=true then cancelUpdates;
        tag:=0; //可以刷新
        close;
    end;
    with bill do
    begin
        if fieldbyname('bod_cd').asstring<>'' then cancelUpdates
        else
        begin
            delete;
            myapplyupdate(bill,'tb_bill','bod_id');
//            ApplyUpdates(-1);
//            close;  open;  last;
        end;
    end;
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
with bill_dtl do
begin
    if active=true then close;
    tag:=0;
end;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    if (fbodid>0) then commandtext:='select top 1' else commandtext:='select top 1000';
    commandtext:=commandtext+' a.*,creater=d.zname,checker=e.zname,broker=f.zname ';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+' where bod_type_id=80 and a.comp_id='+inttostr(compid);
    if (fbodid>0) then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
        commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
        if dxcheckedit2.Checked then commandtext:=commandtext+' and isnull(prncount,0)=0';
    end;
    try
        setprogress(1);
        DisableControls; // 避免重复刷新
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        EnableControls; // 避免重复刷新
        setprogress(0);
    end;
end;
end;

procedure Tsetdocument.FormCreate(Sender: TObject);
begin
label1.caption:='会计凭证制单';
//label1.caption:=ent_title+' 会计凭证制单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetdocument.SpeedButton6Click(Sender: TObject);
var mid: integer;
begin
{
if srv_date>=settleday+1 then  // 当前日期srv_date超过结帐日期settleday 提示
    raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
}
// insert speedbutton
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (bod_type_id,bod_status_id,comp_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values (80,0,'+inttostr(compid)+','+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with bill do
begin
    append;
    post;
    refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',mid);
end;
DSbillDataChange(nil,nil); //refresh bill_dtl
//if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
if pagecontrol1.activepage=tabsheet1 then dxDBGrid1DblClick(nil); //pagecontrol1.activepage:=tabsheet2;
setupdatestatus;
dxdbedit1.setfocus;
setprogress(0);
end;

procedure Tsetdocument.SpeedButton7Click(Sender: TObject);
begin
if bill.recordcount=0
    then raise Exception.Create('请指定需删除的单据');
if bill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可删除。'+#13#10+'确需删除，应先反审核');
if MessageBox(0,'确定删除本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
//    commandtext:='update tb_bill set bod_type_id=bod_type_id+100 where bod_id='+bill.fieldbyname('bod_id').asstring;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
bill.delete;
with bill_dtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetdocument.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label22.caption:=formatfloat('[##,###]',recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
        dxDBButtonEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit2.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=2) and (fieldbyname('creat_by').asinteger=curuserid); // and (datetostr(fieldbyname('creat_dt').asdatetime)=datetostr(dt0));
        speedbutton4.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger in [1,2]) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);//审核 图章显示
        gifimage2.visible:=(fieldbyname('bod_status_id').asinteger=2);//待审核 图章显示
        if (pagecontrol1.activepage=TabSheet1) or (fieldbyname('bod_id').asinteger=0) or (recordcount=0) then exit;
    end;
    with bill_dtl do
        if tag<>bill.fieldbyname('bod_id').asinteger then
            if bill.RecordCount=0 then
            begin
                if active=true then close;
                tag:=0;
            end
            else
            begin
                if active=true then close;
                commandtext:='select bod_id,dtl_id,stock_id,med_id,b.acc_cd,zdesc,cost,price,qty,amot,rela_value,expensesup=m.mate_name,rela_id,comptitle=t.title';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' inner join tb_accounts b on a.med_id=b.acc_id';
                commandtext:=commandtext+' left join tb_busimate m on a.rela_value=m.mate_id';
                commandtext:=commandtext+' left join tb_comptree t on a.rela_id=t.rec_id';
                commandtext:=commandtext+' where a.bod_id='+bill.fieldbyname('bod_id').asstring;
 //               commandtext:=commandtext+' order by a.dtl_id';
                try
                    setprogress(1);
                    open;
                finally
                    setprogress(0);
                end;
                tag:=bill.fieldbyname('bod_id').asinteger;
            end;
end;
end;

procedure Tsetdocument.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var fapp: boolean;
begin
if (key=Ord('C')) and (Shift=[ssCtrl]) then N1Click(nil); //复制整行
if (key=Ord('D')) and (Shift=[ssCtrl]) then N2Click(nil); //粘贴
if key=vk_delete then
begin
    with dxDBGrid2 do
    begin
        if VisibleColumns[focusedcolumn].fieldname='Lbankaccount' then
        begin
            with bill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('stock_id').asinteger:=0;
                fieldbyname('Lbankaccount').asstring:='';
            end;
        end;
        if VisibleColumns[focusedcolumn].fieldname='comptitle' then
        begin
            with bill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
        		fieldbyname('rela_id').asinteger:=0;
        		fieldbyname('comptitle').asstring:='';
            end;
        end;
    end;
end;
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
    with Tdxdbgrid(activecontrol) do
    begin
        if focusedcolumn= 0 then
        begin

            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;
            if bill_dtl.fieldbyname('acc_cd').asstring='' then raise Exception.Create('请选择或输入会计科目');

            if (pickaccounts.qryacc.active=true) and (pickaccounts.qryacc.recordcount>0)
                and (bill_dtl.fieldbyname('acc_cd').asstring<>pickaccounts.qryacc.FieldByName('acc_cd').asstring) then
            begin
                with pubqry do
                begin
                    if active=true then close;
                    commandtext:='select top 1 acc_id,acc_cd,Ltitle=dbo.fn_getacctitle0(acc_id),';
                    commandtext:=commandtext+' haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
                    commandtext:=commandtext+' from tb_accounts where acc_cd='''+ bill_dtl.fieldbyname('acc_cd').asstring +'''';
//                    commandtext:=commandtext+' from tb_accounts where acc_cd='''+trimacccd(bill_dtl.fieldbyname('acc_cd').asstring)+'''';
                    open;
                    if recordcount=0 then raise Exception.Create('无此会计科目编码');
                    if fieldbyname('haschild').asboolean=true then raise Exception.Create('非明细科目，不可做账');
                    if bill_dtl.state=dsinsert then
                    begin
                        bill_dtl.fieldbyname('med_id').asinteger:=FieldByName('acc_id').asinteger;
                        bill_dtl.fieldbyname('acc_cd').asstring:=FieldByName('acc_cd').asstring;
                    end;
                end;
            end;
        end;
        if (focusedcolumn= 6) then
        begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;
        end;
        if (focusedcolumn= 7) or ((focusedcolumn= 6) and (bill_dtl.fieldbyname('cost').asfloat<>0)) then
        begin
            fapp:=false;
            with bill_dtl do
            begin
                if state in [dsinsert,dsedit] then post;
//                disablecontrols;
                next;
                if eof then fapp:=true;
//                enablecontrols;
                if fapp then begin  bill.edit; append; end;
                key:=0;  focusedcolumn:=0;
            end;
        end;
    end;
end;
end;

procedure Tsetdocument.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetdocument.DSbill_dtlStateChange(Sender: TObject);
begin
with bill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetdocument.SpeedButton2Click(Sender: TObject);
//var s: string;
begin
with bill do
begin
    if fieldbyname('broker_id').asinteger=0 then raise Exception.Create('请填写经手人');
    if fieldbyname('cash_by').asinteger=0 then raise Exception.Create('请填写出纳');
    if fieldbyname('bod_cd').asstring='' then raise Exception.Create('无单据号，不可送审核');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('请填写发生日期');
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id='+bill.fieldbyname('bod_id').asstring;
    open;
    if fieldbyname('bod_cd').asstring='' then raise Exception.Create('本单无单据号，请再次保存后送审核');
end;
if bill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
with pubqry do
begin
    if active=true then close;
    commandtext:='select cost=sum(isnull(cost,0)),price=sum(isnull(price,0)) from tb_bill_dtl where bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
{
    if fieldbyname('cost').asfloat<>fieldbyname('price').asfloat then raise Exception.Create('借方、贷方金额不等，不可送审核');
    if active=true then close;
    commandtext:='select top 5 * from (select b.*,bank_name=dbo.fn_obj_desc(b.stock_id),l.balance';
    commandtext:=commandtext+' from (select stock_id,amot=sum(isnull(cost,0)-isnull(price,0)) from tb_bill_dtl where stock_id>0 and bod_id='+bill.fieldbyname('bod_id').asstring+' group by stock_id) b ';
    commandtext:=commandtext+'  where dbo.fn_obj_desc(b.stock_id) not like ''%损益%'' and dbo.fn_obj_desc(b.stock_id) not like ''%付承兑%'') h where balance+ amot<0';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='下列银行账户余额不足，本单不可送审'+ #13#10;
        s:=s+'----------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bank_name').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
end;
if MessageBox(0,'确定本凭证送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with bill do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('bod_status_id').asinteger:=2;
    post;
    myapplyupdate(bill,'tb_bill','bod_id');
//    ApplyUpdates(-1);
//    refresh;
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument.SpeedButton4Click(Sender: TObject);
begin
//if not hasprintright(2,curuserid,self.tag)
//    then raise Exception.Create('抱歉，你无权打印本单据');
repaccdocu:=Trepaccdocu.create(Application);
with repaccdocu.bill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), ';
    commandtext:=commandtext+' broker=dbo.fn_staff_name(broker_id),casher=dbo.fn_staff_name(cash_by) from tb_bill a ';
    commandtext:=commandtext+' where bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then raise Exception.Create('无可打印输出的数据');
end;
with repaccdocu do
begin
    quickrep1.preview;
    quickrep1.free;
end;
end;

procedure Tsetdocument.SpeedButton3Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_status_id from tb_bill where bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if fields[0].asinteger=1 then raise Exception.Create('本单已审核，不可取回');
end;
if MessageBox(0,'确定取回本凭证','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with bill do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('bod_status_id').asinteger:=0;
    post;
    myapplyupdate(bill,'tb_bill','bod_id');
//    ApplyUpdates(-1);
//    refresh;
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿修改');
end;
end;

procedure Tsetdocument.billCalcFields(DataSet: TDataSet);
begin
with bill do
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='制单';
        1:  fieldbyname('cbod_status').asstring:='审核';
        2:  fieldbyname('cbod_status').asstring:='待审核';
    end;
end;

procedure Tsetdocument.bill_dtlBeforeDelete(DataSet: TDataSet);
begin
billBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetdocument.bill_dtlBeforeEdit(DataSet: TDataSet);
begin
if bill.fieldbyname('bod_status_id').asinteger in [1,2]
    then raise Exception.Create('本单已送审或审核，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>bill.fieldbyname('creat_by').asinteger)
    then raise Exception.Create('非制单人，不可修改');
end;

procedure Tsetdocument.bill_dtlBeforePost(DataSet: TDataSet);
begin
with bill_dtl do
begin
    if (fieldbyname('cost').asfloat=0) and (fieldbyname('price').asfloat=0)
        then raise Exception.Create('请输入借方或贷方金额');
    if (fieldbyname('cost').asfloat<>0) and (fieldbyname('price').asfloat<>0)
        then raise Exception.Create('同一科目不可同时记借方与贷方');
//    if (bill_dtl.fieldbyname('rela_id').asinteger=0)
//        then raise Exception.Create('请选择费用科目的费用人');
    if isexpenseacc(fieldbyname('med_id').asinteger) and (bill_dtl.fieldbyname('rela_id').asinteger=0)
        then raise Exception.Create('费用类科目需要填写费用人');
    if state=dsinsert then
    begin
        fieldbyname('bod_id').asinteger:=bill.fieldbyname('bod_id').asinteger;
        fieldbyname('qty').asinteger:=1;  //amot=price*qty
    end;
end;
end;

procedure Tsetdocument.billBeforePost(DataSet: TDataSet);
begin
{
with bill do
begin
    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;
}
end;

procedure Tsetdocument.bill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('bill_dtl : '+e.message);
end;

procedure Tsetdocument.bill_dtlpriceChange(Sender: TField);
begin
with bill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*100+0.01)/100;
//    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
end;

procedure Tsetdocument.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetdocument.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='审核') then Acolor := $00E0FDD9;    // 淡绿色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '制单') then
    begin
        AColor := $0089FEFB; //$00CAFDFD;
        //AFont.Color := clwhite;
    end;
end;
end;

procedure Tsetdocument.dxDBGrid2acc_cdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickaccounts do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('med_id').asinteger:= qryacc.FieldByName('acc_id').asinteger;
        bill_dtl.fieldbyname('acc_cd').asstring:= qryacc.FieldByName('acc_cd').asstring;
    end;
end;

procedure Tsetdocument.dxDBGrid2expensesupButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickexpensesup do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('rela_value').asinteger:=query1.FieldByName('mate_id').asinteger;
        bill_dtl.fieldbyname('expensesup').asstring:=query1.FieldByName('mate_name').asstring;
    end;
end;

procedure Tsetdocument.dxDBGrid2comptitleButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcompobj do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('rela_id').asinteger:=qry.FieldByName('rec_id').asinteger;
        bill_dtl.fieldbyname('comptitle').asstring:=qry.FieldByName('comptitle').asstring;
    end;
end;

procedure Tsetdocument.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    with bill do
        if not (state in [dsinsert,dsedit]) then edit;
    if showmodal= mrOK then
    begin
        dxDBButtonEdit1.text:=query1.fieldbyname('zname').asstring;
        dxDBButtonEdit1.tag :=query1.fieldbyname('sta_id').asinteger;
        bill.FieldByName('broker_id').asinteger:=query1.fieldbyname('sta_id').asinteger;
        bill.FieldByName('broker').asstring:=query1.fieldbyname('zname').asstring;
    end
    else
    begin
        dxDBButtonEdit1.text:='';
        dxDBButtonEdit1.tag :=0;
        bill.FieldByName('broker_id').asinteger:=0;
        bill.FieldByName('broker').asstring:='';
    end;
end;
end;

procedure Tsetdocument.bill_dtlAfterPost(DataSet: TDataSet);
begin
if bill_dtl.ChangeCount>0 then myupdaterefresh(bill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetdocument.billReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('bill : '+e.message);
end;

procedure Tsetdocument.N1Click(Sender: TObject);
begin
with bill_dtl do
    if (active=True) and (recordcount>0) then dtlid:=fieldbyname('dtl_id').asinteger;
end;

procedure Tsetdocument.N2Click(Sender: TObject);
var mi: integer;
begin
with bill_dtl do
    if (active=False) then exit;
billBeforeEdit(nil);
if dtlid=0 then raise Exception.Create('请先复制');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_bill_dtl (bod_id,stock_id,med_id,zdesc,cost,price,qty,amot,rela_value,rela_id)';
    commandtext:=commandtext+' select top 1 '+bill.fieldbyname('bod_id').asstring+',stock_id,med_id,zdesc,cost,price,qty,amot,rela_value,rela_id';
    commandtext:=commandtext+' from tb_bill_dtl where dtl_id='+inttostr(dtlid);
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
with bill_dtl do
begin
    tag:=0;
    DSbillDataChange(nil,nil);
    if mi>0 then locate('dtl_id',mi,[]);
//    append;
//    refreshmyrecord(bill_dtl,dm.Refreshcds,0,'dtl_id',mi);
end;
end;

end.
