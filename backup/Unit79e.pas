unit Unit79e;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, mycds,
  dxExEdtr, Menus, ADODB, DB, DBClient, dxCntner, dxEditor, dxEdLib,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, dxdbtrel, ImgList;

type
  Tsetcontractapply5 = class(TForm)
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
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
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
    Edit1: TEdit;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarry_dt: TDateTimeField;
    GIFimage1: TRxGIFAnimator;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    cdsbillmate_name: TStringField;
    cdsbillmate_name1: TStringField;
    Label15: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ADOQuery1storage_by: TIntegerField;
    ADOQuery1storage_dt: TDateTimeField;
    ADOQuery1storager: TStringField;
    cdsbillstorage_by: TIntegerField;
    cdsbillstorage_dt: TDateTimeField;
    N2: TMenuItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    Label9: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText15: TDBText;
    Label5: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    ImageList: TImageList;
    Label21: TLabel;
    dxEdit2: TdxEdit;
    Shape1: TShape;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1Ctype1: TdxDBGridLookupColumn;
    dxDBGrid1Ctype2: TdxDBGridLookupColumn;
    dxDBGrid1Ctype3: TdxDBGridLookupColumn;
    dxDBGrid1flow_cd: TdxDBGridColumn;
    dxDBGrid1sign_dt: TdxDBGridDateColumn;
    dxDBGrid1signer: TdxDBGridButtonColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1f1: TdxDBGridMaskColumn;
    dxDBGrid1f2: TdxDBGridColumn;
    dxDBGrid1f3: TdxDBGridColumn;
    dxDBGrid1f4: TdxDBGridColumn;
    dxDBGrid1f5: TdxDBGridColumn;
    dxDBGrid1f6: TdxDBGridColumn;
    dxDBGrid1f7: TdxDBGridColumn;
    dxDBGrid1f8: TdxDBGridColumn;
    dxDBGrid1f9: TdxDBGridColumn;
    dxDBGrid1f10: TdxDBGridColumn;
    dxDBGrid1f11: TdxDBGridColumn;
    dxDBGrid1f12: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1fmonth: TdxDBGridColumn;
    dxDBGrid1dt1: TdxDBGridDateColumn;
    dxDBGrid1dt2: TdxDBGridDateColumn;
    dxDBGrid1appoint: TdxDBGridColumn;
    dxDBGrid1insure_amot: TdxDBGridColumn;
    dxDBGrid1q1: TdxDBGridColumn;
    dxDBGrid1q2: TdxDBGridColumn;
    dxDBGrid1q3: TdxDBGridColumn;
    dxDBGrid1q4: TdxDBGridColumn;
    dxDBGrid1r1: TdxDBGridColumn;
    dxDBGrid1r2: TdxDBGridColumn;
    dxDBGrid1r3: TdxDBGridColumn;
    dxDBGrid1r4: TdxDBGridColumn;
    dxDBGrid1zname1: TdxDBGridColumn;
    dxDBGrid1contact1: TdxDBGridColumn;
    dxDBGrid1fax1: TdxDBGridColumn;
    dxDBGrid1address1: TdxDBGridColumn;
    dxDBGrid1zname2: TdxDBGridColumn;
    dxDBGrid1contact2: TdxDBGridColumn;
    dxDBGrid1fax2: TdxDBGridColumn;
    dxDBGrid1address2: TdxDBGridColumn;
    dxDBGrid1destination: TdxDBGridColumn;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    cdsbill_dtlrec_id: TAutoIncField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlcreat_by: TIntegerField;
    cdsbill_dtlcreat_dt: TDateTimeField;
    cdsbill_dtldist1: TStringField;
    cdsbill_dtldist2: TStringField;
    cdsbill_dtlmate_name: TStringField;
    cdsbill_dtlmate_name1: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtltype_id1: TWordField;
    cdsbill_dtltype_id2: TWordField;
    cdsbill_dtltype_id3: TWordField;
    cdsbill_dtltask_amot: TBCDField;
    cdsbill_dtlflow_cd: TStringField;
    cdsbill_dtlleader: TStringField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlcreater: TStringField;
    cdsbill_dtlcomp_id: TWordField;
    cdsbill_dtlvalid: TBooleanField;
    cdsbill_dtlfyear: TSmallintField;
    cdsbill_dtlsign_dt: TDateTimeField;
    cdsbill_dtlsign_by: TIntegerField;
    cdsbill_dtlsigner: TStringField;
    cdsbill_dtllevel_id1: TSmallintField;
    cdsbill_dtllevel1: TStringField;
    cdsbill_dtllevel2: TStringField;
    cdsbill_dtllevel3: TStringField;
    cdsbill_dtllead_id: TIntegerField;
    cdsbill_dtlbroker_id: TIntegerField;
    cdsbill_dtldistrict_id: TIntegerField;
    cdsbill_dtlmate_id: TIntegerField;
    cdsbill_dtlmate_id1: TIntegerField;
    cdsbill_dtlfyear1: TSmallintField;
    cdsbill_dtlf1: TBCDField;
    cdsbill_dtlf2: TBCDField;
    cdsbill_dtlf3: TBCDField;
    cdsbill_dtlf4: TBCDField;
    cdsbill_dtlf5: TBCDField;
    cdsbill_dtlf6: TBCDField;
    cdsbill_dtlf7: TBCDField;
    cdsbill_dtlf8: TBCDField;
    cdsbill_dtlf9: TBCDField;
    cdsbill_dtlf10: TBCDField;
    cdsbill_dtlf11: TBCDField;
    cdsbill_dtlf12: TBCDField;
    cdsbill_dtlqty1: TBCDField;
    cdsbill_dtlqty2: TBCDField;
    cdsbill_dtlfmonth: TStringField;
    cdsbill_dtldt1: TDateTimeField;
    cdsbill_dtldt2: TDateTimeField;
    cdsbill_dtlinsure_amot: TBCDField;
    cdsbill_dtlappoint: TStringField;
    cdsbill_dtlamot1: TBCDField;
    cdsbill_dtlq1: TWordField;
    cdsbill_dtlq2: TWordField;
    cdsbill_dtlq3: TWordField;
    cdsbill_dtlq4: TWordField;
    cdsbill_dtlr1: TWordField;
    cdsbill_dtlr2: TWordField;
    cdsbill_dtlr3: TWordField;
    cdsbill_dtlr4: TWordField;
    cdsbill_dtlzname1: TStringField;
    cdsbill_dtlcontact1: TStringField;
    cdsbill_dtlfax1: TStringField;
    cdsbill_dtladdress1: TStringField;
    cdsbill_dtlzname2: TStringField;
    cdsbill_dtlcontact2: TStringField;
    cdsbill_dtlfax2: TStringField;
    cdsbill_dtladdress2: TStringField;
    cdsbill_dtldestination: TStringField;
    cdsbill_dtlchm_name: TStringField;
    cdsbill_dtlqtyperpack: TBCDField;
    cdsbill_dtlqtyperbox: TBCDField;
    cdsbill_dtlmodify_dt: TDateTimeField;
    cdsbill_dtlmodify_by: TIntegerField;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlCtype1: TStringField;
    cdsbill_dtlCtype2: TStringField;
    cdsbill_dtlCtype3: TStringField;
    SpeedButton7: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setcontractapply5: Tsetcontractapply5;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetcontractapply5.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
GIFimage1.visible:=false;
end;

procedure Tsetcontractapply5.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetcontractapply5.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetcontractapply5.FormCloseQuery(Sender: TObject;
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

procedure Tsetcontractapply5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcontractapply5.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetcontractapply5.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetcontractapply5.SpeedButton8Click(Sender: TObject);
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

procedure Tsetcontractapply5.SpeedButton9Click(Sender: TObject);
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

procedure Tsetcontractapply5.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,mate_name='''',mate_name1='''',creater=d.zname,checker=e.zname,broker=''''';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=32'; // and a.bod_status_id in (1,5)';  // a.comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxedit2.text)<>'' then commandtext:=commandtext+'  and a.bod_cd='''+Trim(dxedit2.text)+'''';
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

procedure Tsetcontractapply5.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetcontractapply5.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        SpeedButton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0);
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

                commandtext:='select f.dtl_id,a.*,signer=d.zname,level1=dbo.fn_obj_desc(e.level_id1),level2=dbo.fn_obj_desc(e.level_id2),level3=dbo.fn_obj_desc(e.level_id3),b.mate_name,mate_name1='''',';
                commandtext:=commandtext+'  m.med_code,m.med_name,m.chm_name,med_type=dbo.fn_med_type(m.med_id),m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,m.qtyperbox,';
                commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
                commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
                commandtext:=commandtext+'	leader=dbo.fn_staff_name (e.sta_id),';
                commandtext:=commandtext+'	broker=c.mate_name,';
                commandtext:=commandtext+'  creater=dbo.fn_staff_name(a.creat_by)';
                commandtext:=commandtext+' from tb_report01 a';
                commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
                commandtext:=commandtext+' left join tb_busimate c on a.broker_id=c.mate_id';
                commandtext:=commandtext+' left join tb_staff d on a.sign_by=d.sta_id';
                commandtext:=commandtext+' left join tb_busiframe e on a.med_id=e.med_id and dbo.fn_treeischild(a.district_id,e.district_id)=1';
                commandtext:=commandtext+' inner join tb_bill_dtl f on f.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and f.med_id=a.rec_id';
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

procedure Tsetcontractapply5.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetcontractapply5.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetcontractapply5.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetcontractapply5.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='申请'; //'制单';
        1: fieldbyname('cbod_status').asstring:='批准'; //'完成';
    end;
end;

procedure Tsetcontractapply5.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetcontractapply5.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已完成审批，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetcontractapply5.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetcontractapply5.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetcontractapply5.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetcontractapply5.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetcontractapply5.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '批准') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetcontractapply5.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
//    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0))
//     or ((sender=N2) and (cdsbill.fieldbyname('bod_status_id').asinteger=1)) then
//    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
//    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=0))
//         or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1)) then
//        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
//        end;
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
    if sender= N1 then commandtext:=commandtext+' and bod_status_id=5';
    if sender= N2 then commandtext:=commandtext+' and bod_status_id=1';
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
                    if sender= N1 then commandtext:='sp_updatestock17 17,' +dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock17 -17,'+dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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

procedure Tsetcontractapply5.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetcontractapply5.dxDBGrid2mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
    if showmodal= mrOK then
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=pickcustomer.query1.fieldbyname('mate_id').asinteger;
        cdsbill_dtl.fieldbyname('mate_name').asstring:=pickcustomer.query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=0;
        cdsbill_dtl.fieldbyname('mate_name').asstring:='';
    end;
end;
end;

procedure Tsetcontractapply5.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定取消本单批准','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton3.enabled:=false; // 避免连续按两次
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock32 -32,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetcontractapply5.SpeedButton2Click(Sender: TObject);
begin
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
if MessageBox(0,'确定本单合同批准生效','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock32 32,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetcontractapply5.dxEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tsetcontractapply5.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctype1').asstring:='新签';
        2:  fieldbyname('ctype1').asstring:='续签';
    end;
    case fieldbyname('type_id2').asinteger of
        1:  fieldbyname('ctype2').asstring:='GD';
        2:  fieldbyname('ctype2').asstring:='GZ';
        3:  fieldbyname('ctype2').asstring:='HC';
    end;
    case fieldbyname('type_id3').asinteger of
        1:  fieldbyname('ctype3').asstring:='医院代理';
        2:  fieldbyname('ctype3').asstring:='区域代理';
        3:  fieldbyname('ctype3').asstring:='省区代理';
    end;
end;
end;

procedure Tsetcontractapply5.SpeedButton7Click(Sender: TObject);
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

end.
