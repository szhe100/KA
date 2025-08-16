unit Unit71;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, dxdbtrel, ImgList;

type
  Tsetbrokerfeeapply = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2price: TdxDBGridMaskColumn;
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
    GIFimage2: TRxGIFAnimator;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    cdsbill_dtlprice: TBCDField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarryer: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    dxDBGrid2carry_dt1: TdxDBGridColumn;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlbod_cd: TStringField;
    cdsbill_dtlcarry_dt1: TDateTimeField;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    cdsbillmate_name: TStringField;
    cdsbillmate_name1: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlchm_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    Label15: TLabel;
    Label7: TLabel;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1dtl_id: TIntegerField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rule_id: TIntegerField;
    ADOQuery1ckd_amot: TBCDField;
    cdsbill_dtlrec_id: TAutoIncField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlsta_id: TIntegerField;
    dxDBGrid2broker: TdxDBGridColumn;
    cdsbillstorage_by: TIntegerField;
    cdsbillstorage_dt: TDateTimeField;
    cdsbillstorager: TStringField;
    DBText3: TDBText;
    DBText15: TDBText;
    Label9: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label13: TLabel;
    Label12: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    Label16: TLabel;
    DBText12: TDBText;
    DBText8: TDBText;
    dxDBGrid1broker: TdxDBGridColumn;
    GIFimage1: TRxGIFAnimator;
    cdsbill_dtlmate_name: TStringField;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3carry_dt1: TdxDBGridColumn;
    dxDBGrid3bod_cd: TdxDBGridColumn;
    dxDBGrid3broker: TdxDBGridColumn;
    dxDBGrid3mate_name: TdxDBGridColumn;
    dxDBGrid3price: TdxDBGridMaskColumn;
    dxDBGrid3amot: TdxDBGridColumn;
    Label18: TLabel;
    cdsbill_dtl1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    DSbill_dtl1: TDataSource;
    N2: TMenuItem;
    N3: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label20: TLabel;
    Shape7: TShape;
    Label21: TLabel;
    Shape1: TShape;
    dxEdit2: TdxEdit;
    Edit1: TEdit;
    cdsbill_dtlqty: TBCDField;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid3material_code: TdxDBGridColumn;
    dxDBGrid3med_name: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    cdsbillstoppay: TBooleanField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    cdsbill_dtltype_id2: TIntegerField;
    cdsbill_dtlctype2: TStringField;
    cdsbill_dtl1type_id2: TIntegerField;
    cdsbill_dtl1ctype2: TStringField;
    cdsbill_dtlmaterial_code: TStringField;
    cdsbill_dtl1material_code: TStringField;
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
    procedure cdsbill_dtlBeforePost(DataSet: TDataSet);
    procedure cdsbill_dtl1AfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtl1CalcFields(DataSet: TDataSet);
    procedure DSbill_dtl1StateChange(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setbrokerfeeapply: Tsetbrokerfeeapply;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetbrokerfeeapply.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
GIFimage1.visible:=false;
end;

procedure Tsetbrokerfeeapply.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetbrokerfeeapply.FormActivate(Sender: TObject);
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

procedure Tsetbrokerfeeapply.FormCloseQuery(Sender: TObject;
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
with cdsbill_dtl1 do if active then close;
end;

procedure Tsetbrokerfeeapply.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbrokerfeeapply.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetbrokerfeeapply.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetbrokerfeeapply.SpeedButton8Click(Sender: TObject);
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
        if state in [dsedit] then post;
    except
        cancelUpdates;
    end;              
end;
with cdsbill_dtl1 do
begin
    if state = dsinsert then cancel;
    try
        if state in [dsedit] then post;
    except
        cancelUpdates;
    end;              
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetbrokerfeeapply.SpeedButton9Click(Sender: TObject);
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

procedure Tsetbrokerfeeapply.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
    if active then close;
with cdsbill_dtl1 do
    if active then close;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,f.stoppay,carryer=g.zname,receiver=h.zname,storager=i.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=17'; // a.comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxedit2.text)<>'' then commandtext:=commandtext+'  and a.bod_cd='''+Trim(dxedit2.text)+'''';
    if Trim(dxLookupTreeView1.text)<>'' then
    begin
        commandtext:=commandtext+' and (exists (select 1 from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_busimate j';
        commandtext:=commandtext+'  where a.bod_id=b.bod_id and b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and c.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')=1)';
	    commandtext:=commandtext+'  or (exists (select 1 from tb_bill_dtl b,tb_bill c,tb_staff d where a.bod_id=b.bod_id and b.sta_id=c.bod_id and c.broker_id=d.sta_id and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')=1) ) )';
    end;
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

procedure Tsetbrokerfeeapply.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //'医药代表提成规则申请单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetbrokerfeeapply.SpeedButton7Click(Sender: TObject);
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
with cdsbill_dtl1 do
begin
    if active then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetbrokerfeeapply.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
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
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id),';
                commandtext:=commandtext+' med_code,m.material_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),o.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b';
                commandtext:=commandtext+' inner join tb_bill_stadtl h on b.med_id=h.rec_id';
                commandtext:=commandtext+' left join tb_bill_dtl d on d.dtl_id=h.dtl_id';
                commandtext:=commandtext+' left join tb_bill c on c.bod_id=d.bod_id';
                commandtext:=commandtext+' left join tb_medicine m on d.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (d.sta_id,c.dst_id,d.med_id,c.carry_dt)';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
//edit1.text:=commandtext;
                try
                    setprogress(1);
                    open;
                finally
                    setprogress(0);
                end;
                tag:=cdsbill.fieldbyname('bod_id').asinteger;
            end;
    with cdsbill_dtl1 do
        if tag<>cdsbill.fieldbyname('bod_id').asinteger then
            if cdsbill.RecordCount=0 then
            begin
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select c.bod_id,b.dtl_id,rec_id=0,med_id=0,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,sta_id=c.broker_id,broker=dbo.fn_staff_name(c.broker_id),mate_name=dbo.fn_mate_name(c.dst_id),';
//                commandtext:='select c.bod_id,dtl_id=0,rec_id=0,med_id=0,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,sta_id=c.broker_id,broker=dbo.fn_staff_name(c.broker_id),mate_name=dbo.fn_mate_name(c.dst_id),';
                commandtext:=commandtext+' m.med_code,m.material_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type='''',o.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b';
                commandtext:=commandtext+' inner join tb_bill c on b.sta_id=c.bod_id';
                commandtext:=commandtext+' left join tb_medicine m on c.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (c.broker_id,c.dst_id,c.med_id,c.carry_dt)';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
//edit2.text:=commandtext;
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

procedure Tsetbrokerfeeapply.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetbrokerfeeapply.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetbrokerfeeapply.SpeedButton2Click(Sender: TObject);
var s: string;
begin
if (cdsbill_dtl.RecordCount=0) and (cdsbill_dtl1.RecordCount=0) then raise Exception.Create('无明细数据，不可送审核');
with cdsbill do
begin
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',fieldbyname('bod_id').asinteger);
    if fieldbyname('bod_amot').asfloat>300000 then raise Exception.Create('合计实付金额不可超过30万，请修改实付金额后重新提交申请');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 c.zname from tb_bill a,tb_staff c ';
    commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.broker_id=c.sta_id and c.stoppay=1';
    open;
    if recordcount>0 then
    begin
        s:='本单业务员('+fieldbyname('zname').asstring+')已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
//        abort;
    end;
end;
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 10 valid_dt from tb_bill_dtl where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' and isnull(valid_dt,'''')=''''';
    open;
    if recordcount>0 then raise Exception.Create('本单有未设置启用日期记录，不可送审');

    if active then close;
    commandtext:='select top 10 m.med_code,m.med_name,m.specifi,m.pdt_place';
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
}
{
with dm.pubqry do
begin
    if active then close;
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
    if active then close;
//    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;  //取消 业务审核 步骤
    commandtext:='update tb_bill set bod_status_id=3 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetbrokerfeeapply.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetbrokerfeeapply.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='业务申请'; //'制单';
        1: fieldbyname('cbod_status').asstring:='完成'; //'完成';
//        2: fieldbyname('cbod_status').asstring:='业务审核'; //'复核';
        3: fieldbyname('cbod_status').asstring:='财务复核'; //'审批';
        4: fieldbyname('cbod_status').asstring:='财务审核'; //'审批';
//        5: fieldbyname('cbod_status').asstring:='总经理批准'; //'审批';
    end;
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger>0
    then raise Exception.Create('本单已非制单状态，不可更改'); //。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetbrokerfeeapply.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetbrokerfeeapply.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetbrokerfeeapply.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
//    if (sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
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
        if (sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
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
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 5 c.zname from tb_bill a,tb_staff c ';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.broker_id=c.sta_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='下列业务员('+fieldbyname('zname').asstring+')已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
    //        abort;
        end;
    end;
    if MessageBox(0,'确定所选单据送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id in ('+t+') and bod_status_id=0';
    execute;
end;
SpeedButton5Click(nil); //bill.refresh;
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetbrokerfeeapply.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure Tsetbrokerfeeapply.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if fieldbyname('amot').asfloat>fieldbyname('price').asfloat
        then raise Exception.Create('实付费用不可超过应付费用');
end;
end;

procedure Tsetbrokerfeeapply.cdsbill_dtl1AfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl1.ChangeCount>0 then myupdaterefresh(cdsbill_dtl1,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetbrokerfeeapply.N3Click(Sender: TObject);
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
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+') and (bod_status_id>0 or creat_by<>'+inttostr(curuserid)+')';
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列单据非本人单据或已非申请(制单)状态，不可删除'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;

if MessageBox(0,'确定删除所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil); //bill.refresh;
end;

procedure Tsetbrokerfeeapply.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tsetbrokerfeeapply.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbrokerfeeapply.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
{
with cdsbill_dtl do
begin
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
end;
}
end;

procedure Tsetbrokerfeeapply.cdsbill_dtl1CalcFields(DataSet: TDataSet);
begin
{
with cdsbill_dtl1 do
begin
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
end;
}
end;

procedure Tsetbrokerfeeapply.DSbill_dtl1StateChange(Sender: TObject);
begin
with cdsbill_dtl1 do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

end.
