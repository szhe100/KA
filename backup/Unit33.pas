unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, dxCntner, dxEdLib, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, dxDBELib, StdCtrls, dxEditor, dxDBEdtr, Animate,
  GIFCtrl, DBCtrls, ExtCtrls, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  ComCtrls, mycds, Menus;

type
  Tsetreceive = class(TForm)
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
    Label5: TLabel;
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
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pubqry: TClientDataSet;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBButtonEdit1: TdxDBButtonEdit;
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
  setreceive: Tsetreceive;

implementation

uses datamodu, Unit35, Unit28, Unit36;

{$R *.DFM}

procedure Tsetreceive.setupdatestatus;    // 编辑状态
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

procedure Tsetreceive.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetreceive.FormActivate(Sender: TObject);
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

procedure Tsetreceive.FormCloseQuery(Sender: TObject;
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

procedure Tsetreceive.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreceive.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetreceive.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetreceive.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
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
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetreceive.SpeedButton9Click(Sender: TObject);
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

procedure Tsetreceive.SpeedButton5Click(Sender: TObject);
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
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and bod_type_id=8';
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

procedure Tsetreceive.FormCreate(Sender: TObject);
begin
label1.caption:=ent_title+' 收款单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;

setunupdatestatus;
end;

procedure Tsetreceive.SpeedButton6Click(Sender: TObject);
var mid: integer;
begin
//if srv_date>=settleday+1 then
//  raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
// insert speedbutton
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',8,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),102) as datetime))';
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

//cdsbill.tag:=-1;     // -1 为新单 不可 record scroll 保存后 设为 0
label15.caption:=''; // 金额大写清空
dxDBButtonEdit1.Text:='';
dxDBButtonEdit1.setfocus;
end;

procedure Tsetreceive.SpeedButton7Click(Sender: TObject);
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

procedure Tsetreceive.DSbillDataChange(Sender: TObject; Field: TField);
begin
//if PageControl1.activepage=TabSheet1 then exit; // 查看”列表“时，不需显示明细数据
if field=nil then
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
        edit1.text:= fieldbyname('broker').asstring;
        edit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid))
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        speedbutton4.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);
        speedbutton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);
        if state=dsbrowse then setunupdatestatus;

        if fieldbyname('src_id').asstring='' then
        begin
            label14.caption:='';
            label14.tag:=0;
        end
        else
        begin
            label15.caption:=saydigit( fieldbyname('bod_amot').asfloat);
            if fieldbyname('broker_id').asinteger<>label14.tag then
            begin
                label14.caption:=showbrokerdue( fieldbyname('broker_id').asinteger);  // 显示当前欠款
                label14.tag:= fieldbyname('broker_id').asinteger;
            end;
        end;
    end;
    // 无论 pagecontrol 状态，控制 未审核不可打印
end;
end;

procedure Tsetreceive.Edit1KeyPress(Sender: TObject; var Key: Char);
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
}
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY zname) as int),';
        commandtext:=commandtext+' sta_id,zname,zcode,sex,origin,degree,title,zpost,phone,fax,residence,district,cdistrict=dbo.fn_getdistrict(district),';
        commandtext:=commandtext+' sta_type_id,qry_code from tb_staff where sta_type_id=1 and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and qry_code like ''%'+sk+'%''';
//        commandtext:=commandtext+' order by zname';
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

procedure Tsetreceive.Edit1Click(Sender: TObject);
begin
edit1.selectall;
end;

procedure Tsetreceive.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetreceive.SpeedButton2Click(Sender: TObject);
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
    commandtext:='sp_updatestock8 8,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);

label14.caption:=showbrokerdue(cdsbill.fieldbyname('broker_id').asinteger);  // 显示当前欠款

setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetreceive.SpeedButton4Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
repreceivebill:=Trepreceivebill.create(Application);
with repreceivebill.cdsbill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,creater=d.zname,checker=e.zname,broker=dbo.fn_staff_name(a.broker_id)';
    commandtext:=commandtext+' from tb_bill a,tb_staff d,tb_staff e';
    commandtext:=commandtext+' where a.bod_status_id=1 and a.creat_by*=d.sta_id and a.check_by*=e.sta_id and bod_type_id=8';
    commandtext:=commandtext+'  and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount=0 then
    begin
        screen.cursor:=crdefault;
        raise Exception.Create('无可打印输出的数据');
    end;
end;
screen.cursor:=crdefault;
with repreceivebill do
begin
    quickrep1.prepare;
    qrlabel8.caption:='';
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
end;

procedure Tsetreceive.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton3.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock8 -8,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
label14.caption:=showbrokerdue(cdsbill.fieldbyname('broker_id').asinteger);  // 显示当前欠款

setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetreceive.cdsbillBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
end;

procedure Tsetreceive.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    if fieldbyname('bod_status_id').asinteger=0 then fieldbyname('cbod_status').asstring:='制单' else fieldbyname('cbod_status').asstring:='审核';
end;

procedure Tsetreceive.cdsbillBeforeInsert(DataSet: TDataSet);
begin
//if date>settleday then raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
end;

procedure Tsetreceive.cdsbillBeforePost(DataSet: TDataSet);
begin
//with cdsbill do
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;

procedure Tsetreceive.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetreceive.dxDBCalcEdit1Change(Sender: TObject);
begin
if dxdbcalcedit1.text<>'' then label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
end;

procedure Tsetreceive.cdsbillAfterInsert(DataSet: TDataSet);
begin
cdsbill.fieldbyname('storage_by').asinteger:=0;  // 记录结算类别数据
end;

procedure Tsetreceive.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetreceive.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetreceive.N2Click(Sender: TObject);
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
                    if sender= N1 then commandtext:='sp_updatestock8 8,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock8 -8,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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

procedure Tsetreceive.N3Click(Sender: TObject);
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

procedure Tsetreceive.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreceive.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
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
