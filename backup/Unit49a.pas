unit Unit49a;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, dxDBTLCl, dxGrClms,
  Animate, GIFCtrl, dxDBGrid, dxDBCtrl, dxTL;

type
  Tsetallotruleapply1 = class(TForm)
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
    Label7: TLabel;
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
    N2: TMenuItem;
    GIFimage2: TRxGIFAnimator;
    cdsbillleader: TStringField;
    brokermedrec_id: TAutoIncField;
    brokermedqty: TBCDField;
    cdsbill_dtlrate: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlqtyperpack: TBCDField;
    Edit1: TEdit;
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
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    Bevel1: TBevel;
    cdsbill_dtlcost: TBCDField;
    cdsbill_dtlrela_value: TBCDField;
    cdsbill_dtlcdistrict: TStringField;
    cdsbill_dtllevel_id: TWordField;
    ADOQuery1dtl_id: TIntegerField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1level_id: TWordField;
    ADOQuery1cdistrict: TStringField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1med_type: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1price: TBCDField;
    ADOQuery1price1: TBCDField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rela_value: TBCDField;
    ADOQuery1cost: TBCDField;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsbill_dtlmate_id: TIntegerField;
    cdsbill_dtlmate_name: TStringField;
    cdsbill_dtlmate_id1: TIntegerField;
    cdsbill_dtlmate_name1: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2cdistrict: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridButtonColumn;
    dxDBGrid2mate_name1: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2price1: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2rela_value: TdxDBGridColumn;
    dxDBGrid2valid_dt: TdxDBGridDateColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure cdsbill_dtlBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setallotruleapply1: Tsetallotruleapply1;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetallotruleapply1.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
GIFimage1.visible:=false;
end;

procedure Tsetallotruleapply1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetallotruleapply1.FormActivate(Sender: TObject);
begin
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetallotruleapply1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with cdsbill do if active=true then close;
with cdsbill_dtl do if active=true then close;
end;

procedure Tsetallotruleapply1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetallotruleapply1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetallotruleapply1.DSbill_dtlDataChange(Sender: TObject;
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

procedure Tsetallotruleapply1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetallotruleapply1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,leader=b.zname,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.src_id =b.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=22 and a.bod_status_id in (1,2,3,4)'; // a.comp_id='+inttostr(compid)+' and
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

procedure Tsetallotruleapply1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //'医药代表提成规则申请单';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetallotruleapply1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        SpeedButton6.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
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
                commandtext:='select b.bod_id,b.dtl_id,a.rec_id,a.mate_id,a.mate_id1,e.mate_name,mate_name1=f.mate_name,a.med_id,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,';
                commandtext:=commandtext+'	e.district,cdistrict=dbo.fn_getdistrict(e.district),med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
                commandtext:=commandtext+'	b.price1,b.price,b.rate,b.rela_value,b.cost,b.qty,a.level_id,a.f1,a.f2,a.f3,a.f4,a.valid,b.valid_dt';
                commandtext:=commandtext+'	from tb_bill_dtl b,tb_sysrule a';
                commandtext:=commandtext+'	left join tb_busimate e on a.mate_id=e.mate_id';
                commandtext:=commandtext+'	left join tb_busimate f on a.mate_id1=f.mate_id';
                commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
                commandtext:=commandtext+'	where b.med_id=a.rec_id and b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
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

procedure Tsetallotruleapply1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetallotruleapply1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetallotruleapply1.SpeedButton2Click(Sender: TObject);
begin
if MessageBox(0,'确定本单通过业务审核,送批准','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=3,carry_by='+inttostr(curuserid)+',carry_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
//pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) 在refresh时，依据pickmedinfo.tag是否相同而执行refresh
setunupdatestatus;
setprogress(0);
end;

procedure Tsetallotruleapply1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetallotruleapply1.cdsbillCalcFields(DataSet: TDataSet);
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

procedure Tsetallotruleapply1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetallotruleapply1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已完成审批，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或审核单据，请勿修改');
end;

procedure Tsetallotruleapply1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetallotruleapply1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetallotruleapply1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetallotruleapply1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetallotruleapply1.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetallotruleapply1.N1Click(Sender: TObject);
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
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=2))
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

procedure Tsetallotruleapply1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetallotruleapply1.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure Tsetallotruleapply1.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
//        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
end;
end;

procedure Tsetallotruleapply1.brokermedtlCalcFields(DataSet: TDataSet);
begin
with brokermedtl do
begin
    if (cdsbill_dtl.active=false) or (cdsbill_dtl.recordcount=0) or (cdsbill_dtl.fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/cdsbill_dtl.fieldbyname('price1').asfloat;
end;
end;

procedure Tsetallotruleapply1.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('level_id').asinteger=1) and (fieldbyname('price').asfloat=0)
        then raise Exception.Create('1级品种，请输入供货价');
    if (fieldbyname('level_id').asinteger=2) and (fieldbyname('rate').asfloat=0)
        then raise Exception.Create('2级品种，请输入调拨率');
    if (fieldbyname('level_id').asinteger=2) and (fieldbyname('rela_value').asfloat=0)
        then raise Exception.Create('2级品种，请输入调拨价');
end;
end;

procedure Tsetallotruleapply1.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'确定将本单送回制单人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
cdsbill.delete; // 因送回后，cdsbill中不应包含此记录，故从cdsbill中delete，物理记录并未删除
setunupdatestatus;
setprogress(0);
end;

end.
