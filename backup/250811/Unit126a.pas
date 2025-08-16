unit Unit126a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, mycds, Menus;

type
  Tsetexpayrec1 = class(TForm)
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
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    GIFimage1: TRxGIFAnimator;
    bill: TClientDataSet;
    billbod_id: TIntegerField;
    billbod_cd: TStringField;
    billsrc_id: TIntegerField;
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
    billprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    billbod_desc: TStringField;
    DBText15: TDBText;
    DBText16: TDBText;
    billbroker_id: TIntegerField;
    DBText14: TDBText;
    billdst_id: TIntegerField;
    billstock_id: TIntegerField;
    billcarry_dt: TDateTimeField;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    billcarry_way: TIntegerField;
    Shape3: TShape;
    billbank_name: TStringField;
    Shape1: TShape;
    DBText12: TDBText;
    Label12: TLabel;
    billbroker: TStringField;
    billmate_name: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    billzmemo: TMemoField;
    Label22: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    bill_dtl: TClientDataSet;
    DSbill_dtl: TDataSource;
    Label23: TLabel;
    billreceipt_by: TIntegerField;
    billstorage_by: TIntegerField;
    billreceiver: TStringField;
    billstorager: TStringField;
    DBText7: TDBText;
    billdeputy: TStringField;
    billacnt_bank: TStringField;
    billbank_account: TStringField;
    ADOQuery1rela_value: TBCDField;
    Edit1: TEdit;
    Label5: TLabel;
    DBText8: TDBText;
    DBText17: TDBText;
    DBText3: TDBText;
    Label21: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    billbank_id: TIntegerField;
    billLbank_acnt: TStringField;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    DShomebank: TDataSource;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBMemo1: TdxDBMemo;
    billagent_id: TIntegerField;
    billagent: TStringField;
    billcarry_dt1: TDateTimeField;
    Label35: TLabel;
    billstoppay: TBooleanField;
    dxDBDateEdit1: TdxDBDateEdit;
    Edit2: TEdit;
    billcarry_dt2: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N7: TMenuItem;
    N6: TMenuItem;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlcarry_dt: TDateTimeField;
    bill_dtlagent_id: TIntegerField;
    bill_dtlagent: TStringField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlmaterial_code: TStringField;
    bill_dtlmed_code: TStringField;
    bill_dtlmed_name: TStringField;
    bill_dtlspecifi: TStringField;
    bill_dtlpdt_place: TStringField;
    bill_dtlmed_unit: TStringField;
    bill_dtlprice: TBCDField;
    bill_dtlrela_value: TBCDField;
    bill_dtlamot: TBCDField;
    bill_dtlbod_type: TStringField;
    bill_dtlbod_cd: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridMaskColumn;
    Label6: TLabel;
    DBText4: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure billBeforeEdit(DataSet: TDataSet);
    procedure billCalcFields(DataSet: TDataSet);
    procedure billReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure bill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure bill_dtlAfterPost(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure bill_dtlBeforePost(DataSet: TDataSet);
    procedure N6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpayrec1: Tsetexpayrec1;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetexpayrec1.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;   // refresh disable
speedbutton5.enabled:=false;   // refresh disable
end;

procedure Tsetexpayrec1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetexpayrec1.FormActivate(Sender: TObject);
begin
with homebank do
begin
    if active then close;
    commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
    open;
end;
if (bill.active=false) or (bill.active) and (fbodid>0) and (fbodid<>bill.FieldByName('bod_id').asinteger)
    then SpeedButton5Click(nil);
end;

procedure Tsetexpayrec1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with homebank  do if active then close;
with bill do if active then close;
with bill_dtl do if active then close;
end;

procedure Tsetexpayrec1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpayrec1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpayrec1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol is TdxDBMemo then exit;
    if activecontrol is Tdxdbgrid then
    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;
end;

procedure Tsetexpayrec1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
with bill_dtl do
begin
    if active then close;
    tag:=0;
end;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    if (fbodid>0) then commandtext:='select top 1' else commandtext:='select top 10000';
    commandtext:=commandtext+' a.*,m.mate_name,agent=c.mate_name,deputy=c.receiver,c.acnt_bank,c.bank_account,c.stoppay,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' f.bank_name,broker=g.zname,carry_dt1=dbo.fn_getcarrydt(a.bod_id),h.carry_dt2,'; //j.carry_dt,';
    commandtext:=commandtext+' receiver=dbo.fn_staff_name(receipt_by),storager=dbo.fn_staff_name(storage_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate m on a.dst_id=m.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.agent_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_bank f on a.bank_id=f.bank_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id=g.sta_id';
    commandtext:=commandtext+' left join (select b.bod_id,carry_dt2=min(c.carry_dt) from tb_bill_dtl b,vi_bodstadtlmed c where b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) group by b.bod_id) h on a.bod_id=h.bod_id';
    commandtext:=commandtext+' where a.bod_type_id=58 and a.bod_status_id in (1,2)';
    if (fbodid>0) then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
    	commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    end;
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

procedure Tsetexpayrec1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption; //其他付款部门申请';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetexpayrec1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBMemo1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton1.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        speedbutton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        speedbutton3.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid);
        gifimage1.visible:= fieldbyname('bod_status_id').asinteger=1;
        if state=dsbrowse then setunupdatestatus;
    end;
    if (pagecontrol1.activepage=TabSheet1) or (bill.fieldbyname('bod_id').asinteger=0) then exit;
    with bill_dtl do
    begin
        if tag<>bill.fieldbyname('bod_id').asinteger then
        begin
            if bill.RecordCount=0 then
            begin
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select bod_type=''采购'',bod_id=b.med_id,dtl_id=b.med_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST,';
                commandtext:=commandtext+' material_code=a.MATNR,med_code='''',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit=''''';
                commandtext:=commandtext+' from tb_bill_dtl b'; //
                commandtext:=commandtext+' inner join SAP_ZSD_015 a on b.med_id=a.rec_id';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring; //+' and b.type_id=36 and b.med_id=c.bod_id';
edit2.text:=commandtext;
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
end;
end;

procedure Tsetexpayrec1.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpayrec1.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
//    if fieldbyname('bod_status_id').asinteger=1
    if not (fieldbyname('bod_status_id').asinteger in [0,6])
        then raise Exception.Create('本单已非制单状态，不可更改');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿制单');
end;
end;

procedure Tsetexpayrec1.billCalcFields(DataSet: TDataSet);
begin
with bill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='业务申请';
        1: fieldbyname('cbod_status').asstring:='完成审核';
        2: fieldbyname('cbod_status').asstring:='财务审核';
    end;
end;

procedure Tsetexpayrec1.billReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpayrec1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpayrec1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='部门申请') then Acolor := $00A3FEFC;    // 黄色
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='作废') then Acolor := $00F8CBF4;    // 淡红
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='财务复核') then Acolor := $00FBFB91; //$00FDE0FE; //$00FFFFE1;    // 黄色
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '完成审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetexpayrec1.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpayrec1.SpeedButton1Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_status_id from tb_bill where bod_id='+bill.fieldbyname('bod_id').asstring;
    open;
    if fields[0].asinteger=1 then raise Exception.Create('本单已审核，不可送回');
end;
if MessageBox(0,'确定将本单送回至制单人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
{
fsendback:=True;
bill.delete;
fsendback:=False;
}
with bill_dtl do
begin
    if active then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec1.SpeedButton2Click(Sender: TObject);
var s: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 c.mate_name from tb_bill a,tb_busimate c ';
    commandtext:=commandtext+' where a.bod_id='+bill.fieldbyname('bod_id').asstring+' and a.agent_id=c.mate_id and c.stoppay=1';
    open;
    if recordcount>0 then
    begin
        s:='本单代理人('+fieldbyname('mate_name').asstring+')已暂停付款，请与财务确认'; //+#13+#10+'------------------------------------------------';
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock58 58,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单尚未审核');
    end;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec1.DSbill_dtlStateChange(Sender: TObject);
begin
with bill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpayrec1.bill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpayrec1.bill_dtlAfterPost(DataSet: TDataSet);
begin
if bill_dtl.ChangeCount>0 then myupdaterefresh(bill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetexpayrec1.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if (AColumn = dxDBGrid2bod_type) then
begin
    if (ANode.Strings[dxDBGrid2bod_type.Index] = '退货') then
    begin
        AColor := clred;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid2bod_type.Index] = '调价') then
    begin
        AColor := clBlue;
//        AFont.Color := clblack;
    end;
end;
}
end;

procedure Tsetexpayrec1.bill_dtlBeforePost(DataSet: TDataSet);
begin
with bill_dtl do
begin
    if fieldbyname('amot').NewValue>fieldbyname('amot').OldValue
        then raise Exception.Create('实付金额不可超过原值');
    if fieldbyname('amot').asfloat>fieldbyname('price').asfloat+fieldbyname('rela_value').asfloat
        then raise Exception.Create('实付金额不可超过应付金额+应付促销费');
end;
end;

procedure Tsetexpayrec1.N6Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'列表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetexpayrec1.N1Click(Sender: TObject);
var mi,j,k,l,m,i : integer;
    s,t : string;
begin
if (bill.active=false) or (bill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (bill.fieldbyname('bod_status_id').asinteger=0) and (bill.fieldbyname('creat_by').asinteger=curuserid) then
    begin
        s:= s + #13#10 + bill.fieldbyname('bod_cd').asstring;
        t:= t + bill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    m := dxDBGrid1.ColumnByFieldName('creat_by').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) and (dxDBGrid1.SelectedNodes[i].Values[m]=curuserid) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(限申请状态的本人单据)');

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+') and isnull(dst_id,0)=0';
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列单据无客户数据，不可送审核'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;

    if active then close;
    commandtext:='select top 1 a.bod_cd,c.mate_name from tb_bill a,tb_busimate c ';
    commandtext:=commandtext+' where a.bod_id in ('+t+') and a.agent_id=c.mate_id and c.stoppay=1';
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列单据业务负责人已暂停付款，请与财务确认'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+' '+fieldbyname('mate_name').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;

    end;
end;

if MessageBox(0,'确定所选单据送财务复核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=3 where bod_id in ('+t+')';
    execute;
    SpeedButton5Click(nil);
    MessageBox(0,pchar('所选单据已成功送审核'),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetexpayrec1.SpeedButton3Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_status_id from tb_bill where bod_id='+bill.fieldbyname('bod_id').asstring;
    open;
    if (recordcount=0) or (fieldbyname('bod_status_id').asinteger<>1) then raise Exception.Create('本单已不可反审');
end;
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton3.enabled:=false; // 避免连续按两次 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
//    commandtext:='sp_updatestock37 -37,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    commandtext:='sp_updatestock58 -58,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单尚未反审核');
    end;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

end.
