unit Unit126;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, mycds, Menus;

type
  Tsetexpayrec = class(TForm)
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
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
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
    dxCheckEdit1: TdxCheckEdit;
    billcarry_way: TIntegerField;
    Shape3: TShape;
    SpeedButton2: TSpeedButton;
    billbank_name: TStringField;
    SpeedButton4: TSpeedButton;
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
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlmed_name: TStringField;
    bill_dtlmed_code: TStringField;
    bill_dtlspecifi: TStringField;
    bill_dtlpdt_place: TStringField;
    bill_dtlmed_unit: TStringField;
    bill_dtlprice: TBCDField;
    bill_dtlamot: TBCDField;
    bill_dtlbod_type: TStringField;
    bill_dtlbod_cd: TStringField;
    DSbill_dtl: TDataSource;
    Label23: TLabel;
    billreceipt_by: TIntegerField;
    billstorage_by: TIntegerField;
    billreceiver: TStringField;
    billstorager: TStringField;
    DBText7: TDBText;
    dxDBGrid1receiver: TdxDBGridColumn;
    dxDBGrid1storager: TdxDBGridColumn;
    billdeputy: TStringField;
    billacnt_bank: TStringField;
    billbank_account: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2bod_type: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridMaskColumn;
    ADOQuery1rela_value: TBCDField;
    bill_dtlrela_value: TBCDField;
    Edit1: TEdit;
    bill_dtlcarry_dt: TDateTimeField;
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
    bill_dtlbod_cd1: TStringField;
    dxDBGrid2bod_cd1: TdxDBGridColumn;
    dxDBMemo1: TdxDBMemo;
    billagent_id: TIntegerField;
    billagent: TStringField;
    billcarry_dt1: TDateTimeField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1carry_dt1: TdxDBGridColumn;
    Label35: TLabel;
    billstoppay: TBooleanField;
    bill_dtlagent_id: TIntegerField;
    bill_dtlagent: TStringField;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBDateEdit1: TdxDBDateEdit;
    Edit2: TEdit;
    billcarry_dt2: TDateTimeField;
    dxDBGrid1carry_dt2: TdxDBGridColumn;
    bill_dtltype_id2: TIntegerField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N7: TMenuItem;
    N6: TMenuItem;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
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
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpayrec: Tsetexpayrec;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetexpayrec.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;   // refresh disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetexpayrec.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetexpayrec.FormActivate(Sender: TObject);
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

procedure Tsetexpayrec.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (bill.state in [dsinsert,dsedit]) or (bill_dtl.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with homebank  do if active then close;
with bill do if active then close;
with bill_dtl do if active then close;
end;

procedure Tsetexpayrec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpayrec.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpayrec.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetexpayrec.SpeedButton8Click(Sender: TObject);
begin
//  UpdateApply speedbutton
setprogress(1);
with bill do
begin
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,38));
    end;
    if state in [dsinsert,dsedit] then post;
    if changecount>0 then myapplyupdate(bill,'tb_bill','bod_id');
    refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',fieldbyname('bod_id').asinteger)
end;
with bill_dtl do
begin
//    if state = dsinsert then cancel;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(bill_dtl,'tb_bill_dtl','dtl_id','');
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
setprogress(1);
if bill.recordcount<>0 then
begin
    bill_dtl.cancelUpdates;
    with bill do
    begin
        if fieldbyname('bod_cd').asstring<>'' then cancelUpdates
        else
        begin
            delete;
            myapplyupdate(bill,'tb_bill','bod_id');
        end;
    end;
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec.SpeedButton5Click(Sender: TObject);
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
//    commandtext:=commandtext+' left join (select a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=30 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id';
    commandtext:=commandtext+' where bod_type_id=58';
    if (fbodid>0) then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
    	commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
//    	if RadioGroup1.ItemIndex=0 then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
//    	if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and h.carry_dt2>= '''+datetostr(dxdateedit1.date)+''' and h.carry_dt2< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
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

procedure Tsetexpayrec.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption; //其他付款部门申请';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetexpayrec.SpeedButton7Click(Sender: TObject);
begin
if bill.recordcount=0
    then raise Exception.Create('请指定需删除的单据');
if bill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可删除。'+#13#10+'确需删除，应先反审核');
if MessageBox(0,'确定删除本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
//    commandtext:='update tb_bill set bod_type_id=bod_type_id+100 where bod_id='+bill.fieldbyname('bod_id').asstring;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
bill.delete;
with bill_dtl do
begin
    if active then close;
    tag:=0; //可以刷新
end;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
setprogress(0);
end;

procedure Tsetexpayrec.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBMemo1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
        speedbutton4.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=1);
        speedbutton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
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
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,c.carry_dt,c.bod_cd,c.agent_id,c.agent,';
                commandtext:=commandtext+' c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_type,c.bod_cd1,d.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b'; //
                commandtext:=commandtext+' left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id)';
                commandtext:=commandtext+' inner join tb_bill a on a.bod_id=b.bod_id';
//                commandtext:=commandtext+' left join tb_busiframe3 d on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt)'; // and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
                commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
                commandtext:=commandtext+' 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>=0 then d.amot else c.amot end,';
                commandtext:=commandtext+' 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) d';
                commandtext:=commandtext+' on d.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,c.med_id,c.carry_dt) and a.agent_id=d.agent_id'; // and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';

                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring; //+' and b.type_id=36 and b.med_id=c.bod_id';
{
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,creat_dt=cast(convert(char(10),c.carry_dt,20) as datetime),c.bod_cd,';
                commandtext:=commandtext+' c.agent_id,agent=dbo.fn_mate_name(c.agent_id),med_name='''',med_code='''',specifi='''',pdt_place='''',med_unit='''',bod_type=''应付记账''';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_bill c ';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring+' and b.type_id=36 and b.med_id=c.bod_id';
                commandtext:=commandtext+' union all select b.bod_id,b.dtl_id,b.med_id,b.price,b.rela_value,b.amot,creat_dt=cast(convert(char(10),c.carry_dt,20) as datetime),c.bod_cd,';
                commandtext:=commandtext+' c.agent_id,agent=dbo.fn_mate_name(c.agent_id),m.med_name,m.med_code,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),bod_type=''分销''';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_medicine m';
                commandtext:=commandtext+' where b.bod_id='+bill.fieldbyname('bod_id').asstring+' and b.type_id=1 and b.med_id=d.dtl_id and c.bod_id=d.bod_id and d.med_id=m.med_id';
}                
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

procedure Tsetexpayrec.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpayrec.billBeforeEdit(DataSet: TDataSet);
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

procedure Tsetexpayrec.billCalcFields(DataSet: TDataSet);
begin
with bill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='业务申请';
        1: fieldbyname('cbod_status').asstring:='完成审核';
        2: fieldbyname('cbod_status').asstring:='财务审核';
    end;
end;

procedure Tsetexpayrec.billReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpayrec.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpayrec.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetexpayrec.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpayrec.SpeedButton1Click(Sender: TObject);
begin
if MessageBox(0,'确定本单作废','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    commandtext:='update tb_bill set bod_status_id=4,check_by='+inttostr(curuserid)+',check_dt=getdate() where bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单作废操作失败');
    end;
    close;
end;

bill.refresh;

setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec.SpeedButton2Click(Sender: TObject);
var s: string;
begin
with bill do
begin
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择客户');
//    if fieldbyname('carry_dt').isnull then raise Exception.Create('请输入发生日期');
//    refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',fieldbyname('bod_id').asinteger);
    if fieldbyname('bod_amot').asfloat>300000 then raise Exception.Create('合计实付金额不可超过30万，请修改实付金额后重新提交申请');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 c.mate_name from tb_bill a,tb_busimate c ';
    commandtext:=commandtext+' where a.bod_id='+bill.fieldbyname('bod_id').asstring+' and a.agent_id=c.mate_id and c.stoppay=1';
    open;
    if recordcount>0 then
    begin
        s:='本单业务负责人('+fieldbyname('mate_name').asstring+')已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
//        abort;
    end;
    if active then close;
    commandtext:=' select top 3 a.bod_cd from tb_bill a';
    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and (a.bod_status_id=1 or a.bod_id='+bill.fieldbyname('bod_id').asstring+') and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) d on a.bod_id=d.med_id';
    commandtext:=commandtext+' where a.bod_id in (select med_id from tb_bill_dtl where bod_id='+bill.fieldbyname('bod_id').asstring+' and type_id=36)';
    commandtext:=commandtext+'  and d.amot>a.bod_amot';   //and d.med_id=a.bod_id 
edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='本单下列应付记账实付金额(可能包含之前已核销金额)超过应付金额，不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'应付记账单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;

    if active then close;
    commandtext:=' select top 5 a.bod_cd,m.med_name,m.specifi,m.pdt_place,b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
   	commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
    commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and (a.bod_status_id=1 or a.bod_id='+bill.fieldbyname('bod_id').asstring+') and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) d on d.med_id=h.rec_id'; //b.dtl_id=d.med_id';
    commandtext:=commandtext+' where a.bod_type_id=1';
    commandtext:=commandtext+'  and b.dtl_id in (select med_id from tb_bill_dtl where bod_id='+bill.fieldbyname('bod_id').asstring+' and type_id=1)';
    commandtext:=commandtext+'  and d.amot>b.qty*(isnull(c.amot,0)+isnull(c.fee,0))';  //and b.dtl_id=d.med_id
edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='本单下列品种实付金额(可能包含之前已核销金额)超过应付金额，不可送审核'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;

if MessageBox(0,'确定本单送财务复核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//if MessageBox(0,'确定本单送部门审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton2.enabled:=false; // 避免连续按两次，保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=3 where bod_id='+bill.fieldbyname('bod_id').asstring;
     // 送财务复核
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'a.bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpayrec.DSbill_dtlStateChange(Sender: TObject);
begin
with bill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpayrec.bill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetexpayrec.bill_dtlAfterPost(DataSet: TDataSet);
begin
if bill_dtl.ChangeCount>0 then myupdaterefresh(bill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetexpayrec.dxDBGrid2CustomDrawCell(Sender: TObject;
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

procedure Tsetexpayrec.bill_dtlBeforePost(DataSet: TDataSet);
begin
with bill_dtl do
begin
    if fieldbyname('amot').NewValue>fieldbyname('amot').OldValue
        then raise Exception.Create('实付金额不可超过原值');
    if fieldbyname('amot').asfloat>fieldbyname('price').asfloat+fieldbyname('rela_value').asfloat
        then raise Exception.Create('实付金额不可超过应付金额+应付促销费');
end;
end;

procedure Tsetexpayrec.N6Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'列表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetexpayrec.N1Click(Sender: TObject);
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

end.
