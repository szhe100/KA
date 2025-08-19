unit Unit205b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, mycds, Menus;

type
  Tsetexpay2 = class(TForm)
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
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
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
    billprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    billbod_desc: TStringField;
    DBText15: TDBText;
    billbroker_id: TIntegerField;
    DBText14: TDBText;
    billdst_id: TIntegerField;
    billstock_id: TIntegerField;
    billcarry_dt: TDateTimeField;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    billcarry_way: TIntegerField;
    SpeedButton2: TSpeedButton;
    billbank_name: TStringField;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    billbroker: TStringField;
    billmate_name: TStringField;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1due: TBCDField;
    ADOQuery1pay: TBCDField;
    billagent_id: TIntegerField;
    billzmemo: TMemoField;
    bill_dtl: TClientDataSet;
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlmed_name: TStringField;
    bill_dtlmed_code: TStringField;
    bill_dtlspecifi: TStringField;
    bill_dtlpdt_place: TStringField;
    bill_dtlmed_unit: TStringField;
    bill_dtlbod_type: TStringField;
    bill_dtlbod_cd: TStringField;
    DSbill_dtl: TDataSource;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    billreceipt_by: TIntegerField;
    billstorage_by: TIntegerField;
    Label14: TLabel;
    DBText4: TDBText;
    Label18: TLabel;
    DBText5: TDBText;
    billcreater: TStringField;
    billchecker: TStringField;
    billreceiver: TStringField;
    billstorager: TStringField;
    billagent: TStringField;
    billdeputy: TStringField;
    billacnt_bank: TStringField;
    billbank_account: TStringField;
    Label12: TLabel;
    DBText12: TDBText;
    bill_dtlprice: TBCDField;
    bill_dtlrela_value: TBCDField;
    bill_dtlamot: TBCDField;
    Shape3: TShape;
    Label22: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    Label17: TLabel;
    Label5: TLabel;
    DBText8: TDBText;
    DBText17: TDBText;
    DBText3: TDBText;
    Label21: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    billbank_id: TIntegerField;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    DShomebank: TDataSource;
    billLbank_acnt: TStringField;
    bill_dtlcarry_dt: TDateTimeField;
    DBText7: TDBText;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    hello1: TMenuItem;
    dxDBMemo1: TdxDBMemo;
    Label35: TLabel;
    DBText6: TDBText;
    bill_dtlagent_id: TIntegerField;
    bill_dtlagent: TStringField;
    billcarry_dt2: TDateTimeField;
    RadioGroup1: TRadioGroup;
    GIFimage1: TRxGIFAnimator;
    bill_dtlmaterial_code: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2bod_type: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2rela_value: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridMaskColumn;
    Label13: TLabel;
    DBText13: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1carry_dt2: TdxDBGridColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1receiver: TdxDBGridColumn;
    dxDBGrid1storager: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
    billstoppay: TBooleanField;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    Label10: TLabel;
    DBText16: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
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
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure bill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure bill_dtlBeforePost(DataSet: TDataSet);
    procedure hello1Click(Sender: TObject);
    procedure bill_dtlCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpay2: Tsetexpay2;
  fsendback: Boolean;

implementation

uses datamodu, Unit15, Unit16;

{$R *.DFM}

procedure Tsetexpay2.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;   // refresh disable
speedbutton5.enabled:=false;   // refresh disable
end;

procedure Tsetexpay2.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetexpay2.FormActivate(Sender: TObject);
begin
with homebank do
begin
    if active then close;
    commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
    open;
end;
if bill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetexpay2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with homebank  do if active then close;
with bill do if active then close;
with bill_dtl do if active then close;
end;

procedure Tsetexpay2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpay2.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpay2.FormKeyPress(Sender: TObject; var Key: Char);
//var fapp: boolean;
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

procedure Tsetexpay2.SpeedButton5Click(Sender: TObject);
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
    commandtext:='select top 10000 a.*,m.mate_name,agent=c.mate_name,deputy=c.receiver,c.acnt_bank,c.bank_account,c.stoppay,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' f.bank_name,broker=g.zname,carry_dt1=dbo.fn_getcarrydt(a.bod_id),h.carry_dt2,'; //j.carry_dt,';
    commandtext:=commandtext+' receiver=dbo.fn_staff_name(receipt_by),storager=dbo.fn_staff_name(storage_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate m on a.dst_id=m.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.agent_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_bank f on a.bank_id=f.bank_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id=g.sta_id';
//    commandtext:=commandtext+' left join (select b.bod_id,carry_dt2=min(c.carry_dt) from tb_bill_dtl b,vi_bodstadtlmed c where b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id) group by b.bod_id) h on a.bod_id=h.bod_id';
//    commandtext:=commandtext+' left join (select b.bod_id,carry_dt2=max(a.carry_dt) from tb_bill_dtl b inner join SAP_ZSD_015 a on b.med_id=a.rec_id group by b.bod_id) h on a.bod_id=h.bod_id';

    commandtext:=commandtext+' left join ( select bod_id,carry_dt2=max(a.carry_dt) from (';
    commandtext:=commandtext+' select b.bod_id,a.carry_dt from tb_bill_dtl b inner join SAP_ZSD_015 a on b.med_id=a.rec_id and b.type_id=0';
    commandtext:=commandtext+' union all select b.bod_id,c.carry_dt from tb_bill_dtl b inner join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id)';
    commandtext:=commandtext+' ) a group by a.bod_id) h on a.bod_id=h.bod_id';

    commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id in (1,3,5)';  //,6,7
    if RadioGroup1.ItemIndex=0 then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and h.carry_dt2>= '''+datetostr(dxdateedit1.date)+''' and h.carry_dt2< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
//    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxEdit1.text)<>'' then
    begin
        commandtext:=commandtext+' and exists (select 1 from tb_bill_dtl b,vi_boddtlmed c where a.bod_id=b.bod_id and b.bod_id=c.bod_id';
        commandtext:=commandtext+'  and b.med_id=c.dtl_id and (c.pdt_place like ''%'+trim(dxEdit1.text)+'%'' or dbo.fn_getpy(c.pdt_place) like ''%'+trim(dxEdit1.text)+'%''))';
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

procedure Tsetexpay2.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
label1.caption:=ent_title+' '+self.caption;
setunupdatestatus;
end;

procedure Tsetexpay2.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBDateEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBMemo1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton1.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=3);
        speedbutton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=3);
        speedbutton4.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1);
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
                commandtext:='select bod_type=''采购'',b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,a.carry_dt,bod_cd=GBELN,agent_id=0,agent=NAME_FIRST,';  //bod_id=b.med_id,
                commandtext:=commandtext+' material_code=a.MATNR,med_code='''',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit=''''';
                commandtext:=commandtext+' from tb_bill_dtl b'; //
                commandtext:=commandtext+' inner join SAP_ZSD_015 a on b.med_id=a.rec_id';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring+'  and b.type_id=0'; //+' and b.type_id=36 and b.med_id=c.bod_id';
                commandtext:=commandtext+' union all ';
                commandtext:=commandtext+' select c.bod_type,b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent,';
                commandtext:=commandtext+' c.material_code,c.med_code,c.med_name,c.specifi,c.pdt_place,c.med_unit'; //,c.bod_type,c.bod_cd1,d.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b'; //
                commandtext:=commandtext+' inner join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id)';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring; //+' and b.type_id=36 and b.med_id=c.bod_id';
{
                if active then close;
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent,';
                commandtext:=commandtext+' c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1,d.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b'; //
                commandtext:=commandtext+' left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id)';
                commandtext:=commandtext+' inner join tb_bill a on a.bod_id=b.bod_id';
                commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
                commandtext:=commandtext+' 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end,';
                commandtext:=commandtext+' 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d';
                commandtext:=commandtext+' on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id'; // and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring; //+' and b.type_id=36 and b.med_id=c.bod_id';
}                
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

procedure Tsetexpay2.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpay2.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
//    if fieldbyname('bod_status_id').asinteger=1
    if (not fsendback) and (not (fieldbyname('bod_status_id').asinteger in [0,6]))
        then raise Exception.Create('本单已非制单状态，不可更改');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿制单');
end;
end;

procedure Tsetexpay2.billCalcFields(DataSet: TDataSet);
begin
with bill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='部门申请';
        1: fieldbyname('cbod_status').asstring:='审核完成';
        2: fieldbyname('cbod_status').asstring:='部门审核';
        3: fieldbyname('cbod_status').asstring:='财务复核';
        5: fieldbyname('cbod_status').asstring:='财务审核';
//        6: fieldbyname('cbod_status').asstring:='制单';
//        7: fieldbyname('cbod_status').asstring:='待审核';
    end;
end;

procedure Tsetexpay2.billReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpay2.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpay2.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (ANode.Values[dxdbgrid1cbod_status.Index] ='作废') then Acolor := $00F8CBF4;    // 淡红
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='财务复核') then Acolor := $00FBFB91; //$00FDE0FE; //$00FFFFE1;    // 黄色
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetexpay2.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpay2.SpeedButton1Click(Sender: TObject);
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
fsendback:=True;
bill.delete;
fsendback:=False;
with bill_dtl do
begin
    if active then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpay2.DSbill_dtlStateChange(Sender: TObject);
begin
with bill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpay2.bill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpay2.SpeedButton2Click(Sender: TObject);
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
        s:='本单代理人('+fieldbyname('mate_name').asstring+')已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
//        abort;
    end;
end;
if MessageBox(0,'确定本单送财务审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton2.enabled:=false; // 避免连续按两次，保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=5,storage_by='+inttostr(curuserid)+' where bod_id='+bill.fieldbyname('bod_id').asstring;
     // 送财务 审核
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpay2.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
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
end;

procedure Tsetexpay2.bill_dtlBeforePost(DataSet: TDataSet);
begin
with bill_dtl do
begin
    if fieldbyname('amot').asfloat>fieldbyname('price').asfloat
        then raise Exception.Create('实付金额不可超过应付金额');
end;
end;

procedure Tsetexpay2.hello1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetexpay2.bill_dtlCalcFields(DataSet: TDataSet);
begin
with bill_dtl do
begin
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
end;
end;

end.
