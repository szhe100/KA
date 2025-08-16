unit Unit84a;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms;

type
  Tsetpromoapply1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    DBText14: TDBText;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    ADOQuery1: TADOQuery;
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
    cdsbillbroker_id: TIntegerField;
    cdsbillprncount: TIntegerField;
    cdsbillbod_desc: TStringField;
    dxDateEdit4: TdxDateEdit;
    cdsbillbroker: TStringField;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit1: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarryer: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    GIFimage1: TRxGIFAnimator;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    ADOQuery1carry_dt1: TDateTimeField;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    cdsbillmate_name: TStringField;
    cdsbillmate_name1: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    Label15: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    busiframerec_id: TAutoIncField;
    busiframeagent_id: TIntegerField;
    busiframeagent: TStringField;
    busiframemate_id: TIntegerField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlrate: TBCDField;
    cdsbill_dtlrate1: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlprice2: TBCDField;
    cdsbill_dtlprice3: TBCDField;
    cdsbill_dtlremark: TStringField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    cdsbill_dtltype_id: TIntegerField;
    cdsbill_dtltype_id1: TIntegerField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlfee: TBCDField;
    cdsbill_dtlCfee: TBCDField;
    cdsbill_dtlmate_name: TStringField;
    cdsbill_dtlctype: TStringField;
    cdsbill_dtlctype1: TStringField;
    cdsbill_dtlvalid: TBooleanField;
    SpeedButton6: TSpeedButton;
    dtl: TClientDataSet;
    dtlrec_id: TAutoIncField;
    dtlagent_id: TIntegerField;
    dtlagent: TStringField;
    dtlmate_id: TIntegerField;
    dtlmate_name: TStringField;
    dtlfee_type_id: TIntegerField;
    dtlLfee_type: TStringField;
    dtlrate: TBCDField;
    dtlCrate: TFloatField;
    dtlrela_id: TIntegerField;
    dtlcreat_by: TIntegerField;
    dtlcreat_dt: TDateTimeField;
    dtlcreater: TStringField;
    dtlmodify_by: TIntegerField;
    dtlmodifier: TStringField;
    dtlmodify_dt: TDateTimeField;
    DSdtl: TDataSource;
    fee_type: TClientDataSet;
    AutoIncField4: TAutoIncField;
    StringField2: TStringField;
    DSfee_type: TDataSource;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3broker: TdxDBGridColumn;
    dxDBGrid3Lfee_type: TdxDBGridColumn;
    dxDBGrid3rate: TdxDBGridColumn;
    dxDBGrid3Crate: TdxDBGridColumn;
    dtlamot: TBCDField;
    dtlfee: TBCDField;
    dxDBGrid3fee: TdxDBGridColumn;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText11: TDBText;
    DBText18: TDBText;
    DBText3: TDBText;
    DBText15: TDBText;
    Label16: TLabel;
    dxDBGrid3creat_dt: TdxDBGridColumn;
    dxDBGrid3creater: TdxDBGridColumn;
    cdsbill_dtltype_id2: TIntegerField;
    cdsbill_dtlctype2: TStringField;
    cdsbillchannel_id: TIntegerField;
    cdsbillchannel_dtl_id: TIntegerField;
    cdsbillchannel: TStringField;
    cdsbillchannel_dtl: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2valid_dt: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2price1: TdxDBGridMaskColumn;
    dxDBGrid2price2: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2rate1: TdxDBGridColumn;
    dxDBGrid2fee: TdxDBGridColumn;
    dxDBGrid2Cfee: TdxDBGridColumn;
    dxDBGrid2remark: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    Label17: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
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
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
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
    procedure dxDBGrid2mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
    procedure dtlCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setpromoapply1: Tsetpromoapply1;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetpromoapply1.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton6.enabled:=true;    // save enable
end;

procedure Tsetpromoapply1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetpromoapply1.FormActivate(Sender: TObject);
begin
with fee_type do
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''推广费(主)''';
        commandtext:=commandtext+'union all select obj_id=2,zdesc=''推广费(次)''';
        open;
    end;
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetpromoapply1.FormCloseQuery(Sender: TObject;
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
with cdsbill do if active then close;
with cdsbill_dtl do if active then close;
with fee_type do if active then close;
end;

procedure Tsetpromoapply1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetpromoapply1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetpromoapply1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetpromoapply1.SpeedButton8Click(Sender: TObject);
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
    if not (state in [dsinsert,dsedit]) then edit;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
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

procedure Tsetpromoapply1.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active then cancelUpdates;
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
setunupdatestatus;
setprogress(0);
end;

procedure Tsetpromoapply1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,mate_name='''',mate_name1='''',creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=35 and a.bod_status_id in (1,2,3)';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and c.mate_id=t.mate_id and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetpromoapply1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //分销销售促销申请单
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetpromoapply1.SpeedButton7Click(Sender: TObject);
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

procedure Tsetpromoapply1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active) and (recordcount>0); // and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
{
        SpeedButton3.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid)
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
}
        SpeedButton6.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);

        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //审核 图章显示
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
                commandtext:='select b.bod_id,b.dtl_id,c.rec_id,c.mate_id,mate_name=dbo.fn_mate_name(c.mate_id),c.agent_id,agent=dbo.fn_mate_name(c.agent_id),';
                commandtext:=commandtext+' c.med_id,c.type_id,c.type_id1,c.type_id2,c.price,c.price1,c.price2,c.price3,c.amot,c.rate,c.rate1,c.fee,c.remark,c.valid_dt,c.valid,';
                commandtext:=commandtext+' med_code,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id)';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_busiframe3 c,tb_medicine m';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
                commandtext:=commandtext+'  and b.med_id=c.rec_id and c.med_id=m.med_id';
edit1.text:=commandtext;
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

procedure Tsetpromoapply1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetpromoapply1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetpromoapply1.SpeedButton2Click(Sender: TObject);
begin
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
if MessageBox(0,'确定本单送财务审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=3 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetpromoapply1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetpromoapply1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='财务申请';
        1: fieldbyname('cbod_status').asstring:='完成';
        2: fieldbyname('cbod_status').asstring:='财务复核';
        3: fieldbyname('cbod_status').asstring:='财务审核';
    end;
end;

procedure Tsetpromoapply1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetpromoapply1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已完成审批，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetpromoapply1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetpromoapply1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetpromoapply1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetpromoapply1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetpromoapply1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetpromoapply1.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=2))
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
with dm.pubqry do
begin
    if active then close;
    if sender= N1 then commandtext:='select top 1 1 from tb_bill where bod_id in ('+t+') and bod_status_id=1';
    if sender= N2 then commandtext:='select top 1 1 from tb_bill where bod_id in ('+t+') and bod_status_id<>1';
    open;
    if recordcount>0 then
    begin
        if sender= N1 then raise Exception.Create('所选单据中有已审核单据，请重新选择');
        if sender= N2 then raise Exception.Create('所选单据中有未审核单据，请重新选择');
    end;
end;
if sender= N1 then
    if MessageBox(0,'确定所选单据审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if sender= N2 then
    if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
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
                    if active then close;
                    if sender= N1 then commandtext:='sp_updatestock35 35,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock35 -35,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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

procedure Tsetpromoapply1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetpromoapply1.dxDBGrid2mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
    if showmodal= mrOK then
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill_dtl.fieldbyname('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=0;
        cdsbill_dtl.fieldbyname('mate_name').asstring:='';
    end;
end;
end;

procedure Tsetpromoapply1.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    case fieldbyname('type_id').asinteger of
        1: fieldbyname('ctype').asstring:='全额返款';
        2: fieldbyname('ctype').asstring:='部分返款';
        3: fieldbyname('ctype').asstring:='终端基层';
    end;
    case fieldbyname('type_id1').asinteger of
        1: fieldbyname('ctype1').asstring:='差额比例';
        2: fieldbyname('ctype1').asstring:='全额比例';
    end;
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
end;
end;

procedure Tsetpromoapply1.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'确定将本单送回申请人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //可以刷新
end;
cdsbill.delete; // 因送回后，cdsbill中不应包含此记录，故从cdsbill中delete，物理记录并未删除
setunupdatestatus;
setprogress(0);
end;

procedure Tsetpromoapply1.DSbill_dtlDataChange(Sender: TObject;
  Field: TField);
begin
with dtl do
begin
    if tag=cdsbill_dtl.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    if (cdsbill_dtl.active=False) or (cdsbill_dtl.recordcount=0) then exit;
    commandtext:='select a.rec_id,a.agent_id,agent=b.mate_name,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id,';
    commandtext:=commandtext+' a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+' from tb_busiframe3_dtl a';
    commandtext:=commandtext+' left join tb_busimate b on a.agent_id=b.mate_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+' where a.rela_id='+cdsbill_dtl.fieldbyname('rec_id').asstring;
edit2.text:=commandtext;    
    open;
    tag:=cdsbill_dtl.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetpromoapply1.dtlCalcFields(DataSet: TDataSet);
begin
if (cdsbill_dtl.active=false) or (cdsbill_dtl.recordcount=0) then
begin
    dtl.fieldbyname('crate').asfloat:=0;
    exit;
end;
with dtl do
begin
    if cdsbill_dtl.fieldbyname('price1').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('amot').asfloat/cdsbill_dtl.fieldbyname('price1').asfloat;
end;
end;

end.
