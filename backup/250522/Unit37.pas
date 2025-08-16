unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, dxCntner, dxEdLib, wwSpeedButton, wwDBNavigator,
  Menus, wwclearpanel, Buttons, dxDBELib, StdCtrls, dxEditor, dxDBEdtr,
  Animate, GIFCtrl, DBCtrls, ExtCtrls, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl,
  dxGrClms, ComCtrls, Comobj, mycds;

type
  Tsetpay = class(TForm)
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
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
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
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
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
    Edit1: TEdit;
    Shape1: TShape;
    DBText11: TDBText;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbilldst_id: TIntegerField;
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
    cdsbillLbusi_type: TStringField;
    dxDBGrid1Lbusi_type: TdxDBGridColumn;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label12: TLabel;
    Label14: TLabel;
    dxDateEdit1: TdxDateEdit;
    cdsbillbod_desc: TStringField;
    Label15: TLabel;
    Shape3: TShape;
    DBText15: TDBText;
    DBText2: TDBText;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    cdsbillbroker_id: TIntegerField;
    Label16: TLabel;
    cdsbillstorage_by: TIntegerField;
    Label17: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    DBText14: TDBText;
    dxDateEdit4: TdxDateEdit;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    cdsbillcarry_dt: TDateTimeField;
    cdsbillbroker: TStringField;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pubqry: TClientDataSet;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label5: TLabel;
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
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
    procedure DSbillStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbillBeforeInsert(DataSet: TDataSet);
    procedure cdsbillBeforePost(DataSet: TDataSet);
    procedure cdsbillReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxDBCalcEdit1Change(Sender: TObject);
    procedure cdsbillAfterInsert(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setpay: Tsetpay;

implementation

uses datamodu, Unit35, Unit28, Unit39;

{$R *.DFM}

procedure Tsetpay.setupdatestatus;    // 编辑状态
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

procedure Tsetpay.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
//speedbutton7.enabled:=true;    // delete enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
{
if cdsbill.fieldbyname('bod_status_id').asinteger=0   // 制单
    then begin speedbutton2.enabled:=true;   speedbutton3.enabled:=false;  speedbutton7.enabled:=true; end  // examine enable
    else begin speedbutton2.enabled:=false;  speedbutton3.enabled:=true;   speedbutton7.enabled:=false; end;    // unexamine enable
if (cdsbill.fieldbyname('creat_by').asinteger<>curuserid) or (cdsbill.recordcount=0) // 非 本人当天单据 或单据为空
 then SpeedButton3.enabled:=false;
if (cdsbill.active=true) and (cdsbill.recordcount=0) then
begin
    speedbutton2.enabled:=false;
    speedbutton7.enabled:=false;
end
}
end;

procedure Tsetpay.FormActivate(Sender: TObject);
begin
with dm.rnp_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=6';
        open;
    end;
with dm.homebank do
    if active=false then
    begin
        commandtext:='select * from tb_bank where comp_id='+inttostr(compid)+' order by bank_name';
        open;
    end;
if cdsbill.Active=False then SpeedButton5Click(nil);
end;

procedure Tsetpay.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IF (cdsbill.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with dm.rnp_type do if active=true then close;
with dm.homebank do if active=true then close;
with cdsbill     do if active=true then close;
end;

procedure Tsetpay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetpay.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetpay.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetpay.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
//  UpdateApply speedbutton
screen.cursor:=crhourglass;
with cdsbill do
begin
    mid:=fieldbyname('bod_id').asinteger;
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
end;
setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetpay.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
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
setunupdatestatus;
setprogress(0);
end;

procedure Tsetpay.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,creater=d.zname,checker=e.zname,broker=b.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and bod_type_id=9';
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

procedure Tsetpay.FormCreate(Sender: TObject);
begin
label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;

setunupdatestatus;
end;

procedure Tsetpay.SpeedButton6Click(Sender: TObject);
var mid: integer;
begin
//if srv_date>=settleday+1 then
//  raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
// insert speedbutton
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',9,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),102) as datetime))';
    commandtext:=commandtext+' select @@identity';
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
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2; // 如在”列表“页，则转为”明细“页
setupdatestatus;
label15.caption:=''; // 金额大写清空
dxDBButtonEdit1.Text:='';
dxDBButtonEdit1.setfocus;
end;

procedure Tsetpay.SpeedButton7Click(Sender: TObject);
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
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
setprogress(0);
end;

procedure Tsetpay.DSbillDataChange(Sender: TObject; Field: TField);
begin
//if PageControl1.activepage=TabSheet1 then exit; // 查看”列表“时，不需显示明细数据
if field=nil then
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
        edit1.text:= fieldbyname('broker').asstring;
        edit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton1.enabled:=(state=dsbrowse);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid))
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        speedbutton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton4.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);
        if state=dsbrowse then setunupdatestatus;
        if fieldbyname('src_id').asstring='' then
        begin
            label14.caption:='';
            label14.tag:=0;
        end
        else
        begin
            label15.caption:=saydigit(fieldbyname('bod_amot').asfloat);

            if fieldbyname('broker_id').asinteger<>label14.tag then
            begin
                label14.caption:=showbrokerdue(fieldbyname('broker_id').asinteger);  // 显示当前欠款
                label14.tag:= fieldbyname('broker_id').asinteger;
            end;
        end;
    end;
end;
end;

procedure Tsetpay.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean;
begin
if key=#32 then  // <space> key
begin
    if edit1.text='' then begin beep; exit; end;
    key:=char(0);
    edit1.selectall;
    sk:=trim(edit1.text);
    if sk='' then exit;
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickbroker.query1 do
    begin
        if active=true then close;
{
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY zname) as int),';
        commandtext:=commandtext+' sta_id,zname,zcode,sex,origin,degree,title,zpost,phone,fax,residence,';
        commandtext:=commandtext+' sta_type_id,qry_code from tb_staff where sta_type_id=1 and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and qry_code like ''%'+sk+'%''';
//        commandtext:=commandtext+' order by zname';
}
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY zname) as int),';
        commandtext:=commandtext+' sta_id,zname,zcode,sex,origin,degree,title,zpost,phone,fax,residence,district,cdistrict=dbo.fn_getdistrict(district),';
        commandtext:=commandtext+' sta_type_id,qry_code from tb_staff where sta_type_id=1 and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and qry_code like ''%'+sk+'%''';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询业务员'); end;
        pickbroker.edit1.text:= edit1.text;
        if pickbroker.showmodal= mrOK then
        begin
            with cdsbill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('broker_id').asinteger:=pickbroker.query1.FieldByName('sta_id').asinteger;
                Edit1.text:=pickbroker.query1.FieldByName('zname').asstring;
                label14.caption:=showbrokerdue(cdsbill.fieldbyname('broker_id').asinteger);  // 显示当前欠款
            end;
        end;
    end;
end;
end;

procedure Tsetpay.Edit1Click(Sender: TObject);
begin
edit1.selectall;
end;

procedure Tsetpay.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetpay.SpeedButton2Click(Sender: TObject);
begin
with cdsbill do
begin
    if fieldbyname('broker_id').asstring='' then raise Exception.Create('请选择业务员');
    if fieldbyname('relative_id').asstring='' then  raise Exception.Create('请选择结算科目');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('请输入发生日期');
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton2.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock9 9,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
label14.caption:=showbrokerdue(cdsbill.fieldbyname('broker_id').asinteger);  // 显示当前欠款

setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetpay.SpeedButton4Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
reppaybill:=Treppaybill.create(Application);
with reppaybill.cdsbill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,creater=d.zname,checker=e.zname,broker=dbo.fn_staff_name(a.broker_id)';
    commandtext:=commandtext+' from tb_bill a,tb_staff d,tb_staff e';
    commandtext:=commandtext+' where a.bod_status_id=1 and a.creat_by*=d.sta_id and a.check_by*=e.sta_id and bod_type_id=9';
    commandtext:=commandtext+'  and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount=0 then
    begin
        screen.cursor:=crdefault;
        raise Exception.Create('无可打印输出的数据');
    end;
end;
screen.cursor:=crdefault;
with reppaybill do
begin
    quickrep1.prepare;
    qrlabel8.caption:='';
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
end;

procedure Tsetpay.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton3.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock9 -9,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
label14.caption:=showbrokerdue(cdsbill.fieldbyname('broker_id').asinteger);  // 显示当前欠款

setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetpay.cdsbillBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
end;

procedure Tsetpay.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    if fieldbyname('bod_status_id').asinteger=0 then fieldbyname('cbod_status').asstring:='制单' else fieldbyname('cbod_status').asstring:='审核';
end;

procedure Tsetpay.cdsbillBeforeInsert(DataSet: TDataSet);
begin
//if date>settleday then raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
end;

procedure Tsetpay.cdsbillBeforePost(DataSet: TDataSet);
begin
//with cdsbill do
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;

procedure Tsetpay.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetpay.dxDBCalcEdit1Change(Sender: TObject);
begin
if dxdbcalcedit1.text<>'' then label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
end;

procedure Tsetpay.cdsbillAfterInsert(DataSet: TDataSet);
begin
cdsbill.fieldbyname('storage_by').asinteger:=0;  // 记录结算类别数据
end;

procedure Tsetpay.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetpay.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetpay.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,id1,id2,id3 : integer;
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
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    screen.cursor:=crhourglass;
    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';

    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        with dm.pubqry do
        begin
            id1:=0;
            if Trim(sheet.cells[j,2].text)<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=6 and zdesc ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger;
            end;
            id2:=0;
            if Trim(sheet.cells[j,3].text)<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=1 and zname ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('sta_id').asinteger;
            end;
            id3:=0;
            if Trim(sheet.cells[j,5].text)<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 bank_id from tb_bank where bank_name ='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('bank_id').asinteger;
            end;

            sb:=formatfloat('00000000',getbillid(compid,9));
            sbodcd:=sbodcd+#13#10+sb;

            if active=true then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,busi_type,broker_id,relative_id,bod_desc,bod_amot,creat_by,creat_dt,carry_dt)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',9,0,'+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','''+Trim(sheet.cells[j,4].text)+''',';
            if sheet.cells[j,6].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,6].text)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate(),'''+datetimetostr(dt)+''')';
//edit2.text:=commandtext;
            execute;
            if active=true then close;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    sbodcd:=sbodcd+#13#10+'---------------------------';
    MessageBox(0,pchar(sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetpay.N2Click(Sender: TObject);
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
begin
    with dm.pubqry do
    begin
        if active=True then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+') and creat_dt<cast(convert(char(10),getdate(),20) as datetime)';
        open;
        if recordcount>0 then
        begin
            first;
            s:= '下列单据非本日单据，不可反审' + #13#10 + '-------------------------';
            while not eof do
            begin
                s:=s+#13#10+fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;
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
                    if sender= N1 then commandtext:='sp_updatestock9 9,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock9 -9,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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

procedure Tsetpay.N3Click(Sender: TObject);
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

procedure Tsetpay.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if dxDBButtonEdit1.text<>'' then Edit1.text:=Trim(dxDBButtonEdit1.text);
//    if cdsbill.fieldbyname('broker').asstring<>'' then query1.fieldbyname('zname').asstring:=cdsbill.fieldbyname('broker').asstring;
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

procedure Tsetpay.dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#32 then  // <space> key
begin
//    key:=char(0);  // avoid insert space
//    dxDBButtonEdit1ButtonClick(nil,0);
    pickbroker.Edit1.Text:=Trim(dxDBButtonEdit1.text);
    pickbroker.Edit1KeyPress(Sender,Key);
    dxDBButtonEdit1ButtonClick(Sender,0);
{
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if pickbroker.showmodal= mrOK then
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= pickbroker.query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= pickbroker.query1.fieldbyname('zname').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= 0;
        cdsbill.fieldbyname('broker').asstring:= '';
    end;
}
end;
end;

end.
