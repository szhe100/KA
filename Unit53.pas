unit Unit53;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBTLCl, dxGrClms, dxDBELib,
  Animate, GIFCtrl, dxDBGrid, dxDBCtrl, dxTL;

type
  Tsetruleapply = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    dxDateEdit1: TdxDateEdit;
    DBText14: TDBText;
    dxCheckEdit1: TdxCheckEdit;
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
    cdsbillleader: TStringField;
    brokermedrec_id: TAutoIncField;
    brokermedlead_id: TIntegerField;
    brokermedleader: TStringField;
    brokermedsta_id: TIntegerField;
    brokermedbroker: TStringField;
    brokermedmate_id: TIntegerField;
    brokermedmate_name: TStringField;
    brokermedqty: TBCDField;
    cdsbill_dtlrate: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlCrate: TFloatField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlqtyperpack: TBCDField;
    Edit1: TEdit;
    cdsbill_dtlprice: TBCDField;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarryer: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    brokermedtl: TClientDataSet;
    brokermedtlrec_id: TAutoIncField;
    brokermedtlsta_id: TIntegerField;
    brokermedtlbroker: TStringField;
    brokermedtlmate_id: TIntegerField;
    brokermedtlmate_name: TStringField;
    brokermedtlfee_type_id: TIntegerField;
    brokermedtlrate: TBCDField;
    brokermedtlCrate: TFloatField;
    brokermedtlrela_id: TIntegerField;
    brokermedtlcreat_by: TIntegerField;
    brokermedtlcreat_dt: TDateTimeField;
    brokermedtlcreater: TStringField;
    DSbrokermedtl: TDataSource;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3broker: TdxDBGridColumn;
    dxDBGrid3Lfee_type: TdxDBGridLookupColumn;
    dxDBGrid3rate: TdxDBGridColumn;
    dxDBGrid3Crate: TdxDBGridColumn;
    dxDBGrid3creat_dt: TdxDBGridDateColumn;
    dxDBGrid3creater: TdxDBGridMaskColumn;
    brokermedtlfee_type: TStringField;
    DBText15: TDBText;
    Label9: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBText18: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    GIFimage1: TRxGIFAnimator;
    Label12: TLabel;
    Label13: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    ADOQuery1bod_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1src_id: TIntegerField;
    ADOQuery1dst_id: TIntegerField;
    ADOQuery1bod_status_id: TIntegerField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1busi_type: TIntegerField;
    ADOQuery1bod_amot: TBCDField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1carry_by: TIntegerField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1check_by: TIntegerField;
    ADOQuery1check_dt: TDateTimeField;
    ADOQuery1delete_by: TIntegerField;
    ADOQuery1delete_dt: TDateTimeField;
    ADOQuery1receipt_by: TIntegerField;
    ADOQuery1receipt_dt: TDateTimeField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1relative_id: TIntegerField;
    ADOQuery1prncount: TIntegerField;
    ADOQuery1settle_type: TIntegerField;
    ADOQuery1allo_desc: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1level_id1: TIntegerField;
    ADOQuery1level_id2: TIntegerField;
    ADOQuery1level_id3: TIntegerField;
    ADOQuery1agent_id: TIntegerField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1storage_by: TIntegerField;
    ADOQuery1receiver: TStringField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    GIFimage2: TRxGIFAnimator;
    cdsbill_dtltrusted: TBooleanField;
    cdsbill_dtlbod_desc: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2leader: TdxDBGridColumn;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridButtonColumn;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2price1: TdxDBGridColumn;
    dxDBGrid2Crate: TdxDBGridColumn;
    dxDBGrid2valid_dt: TdxDBGridDateColumn;
    cdsbill_dtltype_id2: TIntegerField;
    cdsbill_dtlctype2: TStringField;
    cdsbill_dtlmaterial_code: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1material_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillmed_code: TStringField;
    cdsbillmaterial_code: TStringField;
    cdsbillmed_name: TStringField;
    cdsbillspecifi: TStringField;
    cdsbillpdt_place: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
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
    procedure brokermedtlCalcFields(DataSet: TDataSet);
    procedure brokermedtlAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setruleapply: Tsetruleapply;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetruleapply.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
GIFimage1.visible:=false;
end;

procedure Tsetruleapply.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetruleapply.FormActivate(Sender: TObject);
begin
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetruleapply.FormCloseQuery(Sender: TObject;
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
with cdsbill do if active=true then close;
with cdsbill_dtl do if active=true then close;
end;

procedure Tsetruleapply.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetruleapply.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetruleapply.DSbill_dtlDataChange(Sender: TObject;
  Field: TField);
begin
with cdsbill_dtl do
    if (active=False) or (recordcount=0) or (fieldbyname('med_id').asinteger=0) then
    begin
        if brokermedtl.Active=True then brokermedtl.Active:=False;
        exit;
    end;
    
with brokermedtl do
begin
    if tag=cdsbill_dtl.fieldbyname('med_id').asinteger then exit;
    if active=true then close;
    commandtext:='select a.rec_id,a.sta_id,broker=b.zname,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,fee_type=dbo.fn_obj_desc(a.fee_type_id),a.rate,a.rela_id,a.creat_by,a.creat_dt,creater=c.zname';
    commandtext:=commandtext+' from tb_brokermedtl a';
    commandtext:=commandtext+' left join tb_staff b on a.sta_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where a.rela_id='+cdsbill_dtl.fieldbyname('med_id').asstring;
    open;
    tag:=cdsbill_dtl.fieldbyname('med_id').asinteger;
end;
end;

procedure Tsetruleapply.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetruleapply.SpeedButton8Click(Sender: TObject);
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

procedure Tsetruleapply.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active=true then cancelUpdates;
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

procedure Tsetruleapply.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,leader=b.zname,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname';
    commandtext:=commandtext+' ,m.med_code,m.material_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.src_id =b.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' left join (select b.bod_id,med_id=min(r.med_id) from tb_bill_dtl b,tb_brokermed r where b.med_id=r.rec_id group by b.bod_id) t on a.bod_id=t.bod_id';
    commandtext:=commandtext+' left join tb_medicine m on m.med_id=t.med_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=20';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
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

procedure Tsetruleapply.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //'医药代表提成规则申请单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetruleapply.SpeedButton7Click(Sender: TObject);
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
with brokermedtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetruleapply.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));

        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //审核 图章显示
        gifimage2.visible:=fieldbyname('bod_status_id').asinteger=2;  //待审核 图章显示
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
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.price1,b.valid_dt,';
                commandtext:=commandtext+' a.*,leader=dbo.fn_staff_name(k.sta_id),m.material_code,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,med_unit=c.zdesc,m.qtyperpack,m.qtyperbox,';
                commandtext:=commandtext+' stoper=dbo.fn_staff_name(a.stop_by),'; //=dbo.fn_getbidprice1(d.district,a.med_id),';
                commandtext:=commandtext+' med_type=dbo.fn_med_type(m.med_id),broker=d.zname,e.mate_name,e.trusted,creater=g.zname,dist_name=dbo.fn_getdistrict(d.district)';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed a';
                commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_object c on m.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id=d.sta_id';
                commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
                commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt)';
                commandtext:=commandtext+' left join tb_staff g on a.creat_by=g.sta_id';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and b.med_id=a.rec_id';
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

procedure Tsetruleapply.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetruleapply.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetruleapply.SpeedButton2Click(Sender: TObject);
var s: string;
begin
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 valid_dt from tb_bill_dtl where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' and isnull(valid_dt,'''')=''''';
    open;
    if recordcount>0 then raise Exception.Create('本单有未设置启用日期记录，不可送审');

    if active=true then close;
    commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id and isnull(b.price1,0)=0';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='下列品种无中标价，请先填写'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 10 mate_name=dbo.fn_mate_name(c.mate_id),broker=dbo.fn_staff_name(c.sta_id),m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_brokermed c,tb_bill a,tb_bill_dtl b,tb_medicine m ';
    commandtext:=commandtext+' where a.bod_id=b.bod_id and a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and c.valid=1 and b.sta_id=c.mate_id and b.med_id=c.med_id';
    commandtext:=commandtext+'  and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列客户品种已设置提成规则，审核后将取代原规则，继续吗?'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('mate_name').asstring+' '+fieldbyname('broker').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        if MessageBox(0,pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    end;
end;
}
if MessageBox(0,'确定本单送业务审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
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

procedure Tsetruleapply.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetruleapply.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='业务申请'; //'制单';
        1: fieldbyname('cbod_status').asstring:='完成'; //'完成';
        2: fieldbyname('cbod_status').asstring:='业务审核'; //'复核';
        3: fieldbyname('cbod_status').asstring:='财务复核'; //'审批';
        4: fieldbyname('cbod_status').asstring:='财务审批'; //'审批';
    end;
end;

procedure Tsetruleapply.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetruleapply.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已完成审批，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetruleapply.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetruleapply.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetruleapply.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetruleapply.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetruleapply.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetruleapply.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效');
if sender= N1 then
    if MessageBox(0,'确定所选单据送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id in ('+t+') and bod_status_id=0';
    execute;
end;
SpeedButton5Click(nil);
end;

procedure Tsetruleapply.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetruleapply.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure Tsetruleapply.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
//        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
end;
end;

procedure Tsetruleapply.brokermedtlCalcFields(DataSet: TDataSet);
begin
with brokermedtl do
begin
{
    if (cdsbill_dtl.active=false) or (cdsbill_dtl.recordcount=0) or (cdsbill_dtl.fieldbyname('rate').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/cdsbill_dtl.fieldbyname('rate').asfloat;
}
    if (cdsbill_dtl.active=false) or (cdsbill_dtl.recordcount=0) or (cdsbill_dtl.fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/cdsbill_dtl.fieldbyname('price1').asfloat;
end;
end;

procedure Tsetruleapply.brokermedtlAfterPost(DataSet: TDataSet);
begin
if brokermedtl.ChangeCount>0 then myupdaterefresh(brokermedtl,'tb_tb_brokermedtl','rec_id','');
end;

end.
