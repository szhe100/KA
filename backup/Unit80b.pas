unit Unit80b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, DB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, dxDBTLCl, dxGrClms,
  dxDBELib, Animate, GIFCtrl, ExtCtrls, DBCtrls, StdCtrls, dxDBGrid,
  dxDBCtrl, dxTL, ComCtrls, mycds;

type
  Tsetdocument1 = class(TForm)
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
    GIFimage1: TRxGIFAnimator;
    bill: TClientDataSet;
    billbod_id: TIntegerField;
    billbod_cd: TStringField;
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
    bill_dtl: TClientDataSet;
    billprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    billbod_desc: TStringField;
    DBText14: TDBText;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    dxDateEdit4: TdxDateEdit;
    ADOQuery1: TADOQuery;
    pickacc: TClientDataSet;
    DataSource1: TDataSource;
    ImageList: TImageList;
    billcomp_id: TIntegerField;
    billstock_id: TIntegerField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1dtl_id: TAutoIncField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1acc_cd: TStringField;
    ADOQuery1zdesc: TStringField;
    ADOQuery1cost: TBCDField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rela_value: TBCDField;
    ADOQuery1rela_id: TIntegerField;
    ADOQuery1comptitle: TStringField;
    ADOQuery1expensesup: TStringField;
    SpeedButton9: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    dxCheckEdit2: TdxCheckEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    billbroker_id: TIntegerField;
    billcash_by: TIntegerField;
    Label22: TLabel;
    homebank: TClientDataSet;
    billbroker: TStringField;
    billcasher: TStringField;
    accounter: TClientDataSet;
    AutoIncField16: TAutoIncField;
    StringField177: TStringField;
    DSaccounter: TDataSource;
    accounts: TClientDataSet;
    accountsacc_id: TAutoIncField;
    accountscomp_id: TIntegerField;
    accountsparent_id: TIntegerField;
    accountsacc_cd: TStringField;
    accountsacc_title: TStringField;
    accountsacc_desc: TStringField;
    accountsacc_level: TIntegerField;
    accountsacc_side: TBooleanField;
    accountsLtitle: TStringField;
    accountshaschild: TBooleanField;
    accountsqry_code: TStringField;
    DSaccounts: TDataSource;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlstock_id: TIntegerField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlLacc_title: TStringField;
    bill_dtlacc_cd: TStringField;
    bill_dtlzdesc: TStringField;
    bill_dtlcost: TBCDField;
    bill_dtlprice: TBCDField;
    bill_dtlqty: TBCDField;
    bill_dtlamot: TBCDField;
    bill_dtlrela_value: TBCDField;
    bill_dtlrela_id: TIntegerField;
    bill_dtlcomptitle: TStringField;
    bill_dtlexpensesup: TStringField;
    bill_dtlLbankaccount: TStringField;
    Label35: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    billcarry_dt: TDateTimeField;
    Label9: TLabel;
    DBText15: TDBText;
    Label10: TLabel;
    DBText18: TDBText;
    DBText11: TDBText;
    Label11: TLabel;
    Shape2: TShape;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2acc_cd: TdxDBGridButtonColumn;
    dxDBGrid2Lacc_title: TdxDBGridColumn;
    dxDBGrid2Lbankaccount: TdxDBGridLookupColumn;
    dxDBGrid2comptitle: TdxDBGridButtonColumn;
    dxDBGrid2expensesup: TdxDBGridButtonColumn;
    dxDBGrid2zdesc: TdxDBGridMaskColumn;
    dxDBGrid2cost: TdxDBGridMaskColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure billBeforeEdit(DataSet: TDataSet);
    procedure billCalcFields(DataSet: TDataSet);
    procedure bill_dtlBeforeEdit(DataSet: TDataSet);
    procedure bill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure bill_dtlpriceChange(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2acc_cdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2expensesupButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2comptitleButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setdocument1: Tsetdocument1;

implementation

uses datamodu, Unit91a, Unit81a, Unit124a, Unit125;

{$R *.DFM}

procedure Tsetdocument1.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton4.enabled:=false;    // print disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetdocument1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetdocument1.FormActivate(Sender: TObject);
begin
with dm.staff do
    if active=false then
    begin
        commandtext:='select a.*,department=b.zdesc from tb_staff a,tb_object b ';
        commandtext:=commandtext+' where a.dept_id=b.obj_id and a.sta_type_id=0 ';
        open;
    end;
with accounts do
    if active=False then
    begin
        commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
        commandtext:=commandtext+' from tb_accounts where (comp_id=0 or comp_id='+inttostr(compid)+')';
        open;
    end;
with accounter do
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where account=1 and firedate is null and comp_id='+inttostr(compid);
        commandtext:=commandtext+' order by zname';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
	end;
with homebank do
    if active=false then
    begin
        commandtext:='select a.bank_id,a.bank_name,a.bank_acnt from tb_bank a where a.comp_id='+inttostr(compid); //+' and ISNULL(a.stop_yn,0)=0';
        commandtext:=commandtext+' order by a.bank_name';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
if (bill.active=false) then SpeedButton5Click(nil);
end;

procedure Tsetdocument1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with bill do if active=true then close;
with bill_dtl do if active=true then close;
with dm.staff do if active=true then close;
with homebank do if active=true then close;
end;

procedure Tsetdocument1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetdocument1.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tsetdocument1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetdocument1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetdocument1.SpeedButton9Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_status_id from tb_bill where bod_id='+bill.fieldbyname('bod_id').asstring;
    open;
    if fields[0].asinteger=1 then raise Exception.Create('本单已审核，不可送回');
end;
if MessageBox(0,'确定送回本凭证','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with bill do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('bod_status_id').asinteger:=0;
    post;
    myapplyupdate(bill,'tb_bill','bod_id');
//    ApplyUpdates(-1);
//    refresh;
    delete; //送回后，本clientdataset中delete本记录,并不实际删除此单据
end;
with bill_dtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
with bill_dtl do
begin
    if active=true then close;
    tag:=0;
end;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,creater=d.zname,checker=e.zname,broker=f.zname,casher=dbo.fn_staff_name(a.cash_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+' where bod_type_id=80 and bod_status_id in (1,2) and a.comp_id='+inttostr(compid); //+' and a.creat_by*=d.sta_id and a.check_by*=e.sta_id and a.broker_id*=f.sta_id';
    commandtext:=commandtext+'  and a.creat_dt>='''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit2.Checked then commandtext:=commandtext+' and isnull(prncount,0)=0';
    try
        setprogress(1);
        DisableControls; // 避免重复刷新
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        EnableControls; // 避免重复刷新
        setprogress(0);
    end;
end;
end;

procedure Tsetdocument1.FormCreate(Sender: TObject);
begin
label1.caption:='会计凭证审核';
//label1.caption:=ent_title+' 会计凭证审核';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetdocument1.SpeedButton6Click(Sender: TObject);
var mid: integer;
begin
{
if srv_date>=settleday+1 then  // 当前日期srv_date超过结帐日期settleday 提示
    raise Exception.Create('请先将'+datetostr(settleday)+'前的数据结帐');
}
// insert speedbutton
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (bod_type_id,bod_status_id,comp_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values (80,0,'+inttostr(compid)+','+inttostr(curuserid)+',getdate())';   //  busi_type : 242 报废
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;

with bill do
begin
    refresh;
    locate('bod_id',mid,[]);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
setupdatestatus;

//bill.tag:=-1;     // -1 为新单 不可 record scroll 保存后 设为 0
dxdbedit1.setfocus;
setprogress(0);
end;

procedure Tsetdocument1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label22.caption:=formatfloat('[##,###]',recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=2);
        speedbutton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=1)
             and ((datetostr(fieldbyname('creat_dt').asdatetime)=datetostr(dt0)) or (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)));
        speedbutton4.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0);
        speedbutton9.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
             and (fieldbyname('bod_status_id').asinteger=2);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);//审核 图章显示
    end;
    if (pagecontrol1.activepage=TabSheet1) or (bill.fieldbyname('bod_id').asinteger=0) then exit;
    with bill_dtl do
        if tag<>bill.fieldbyname('bod_id').asinteger then
            if bill.RecordCount=0 then
            begin
                if active=true then close;
                tag:=0;
            end
            else
            begin
                if active=true then close;
{
                commandtext:='select bod_id,dtl_id,stock_id,med_id,b.acc_cd,zdesc,cost,price,qty,amot,rela_value,expensesup=m.mate_name,rela_id,comptitle=t.title'; //dbo.fn_comptitle(rela_id)';
                commandtext:=commandtext+' from tb_bill_dtl a,tb_accounts b,tb_busimate m,tb_comptree t ';
                commandtext:=commandtext+' where a.med_id=b.acc_id and a.rela_value*=m.mate_id and a.rela_id*=t.rec_id and a.bod_id='+bill.fieldbyname('bod_id').asstring;
                commandtext:=commandtext+' order by a.dtl_id';
}
                commandtext:='select bod_id,dtl_id,stock_id,med_id,b.acc_cd,zdesc,cost,price,qty,amot,rela_value,expensesup=m.mate_name,rela_id,comptitle=t.title';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' inner join tb_accounts b on a.med_id=b.acc_id';
                commandtext:=commandtext+' left join tb_busimate m on a.rela_value=m.mate_id';
                commandtext:=commandtext+' left join tb_comptree t on a.rela_id=t.rec_id';
                commandtext:=commandtext+' where a.bod_id='+bill.fieldbyname('bod_id').asstring;
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

procedure Tsetdocument1.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetdocument1.DSbill_dtlStateChange(Sender: TObject);
begin
with bill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetdocument1.SpeedButton2Click(Sender: TObject);
begin
if bill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可审核');
with pubqry do
begin
    if active=true then close;
    commandtext:='select cost=sum(isnull(cost,0)),price=sum(isnull(price,0)) from tb_bill_dtl where bod_id='+bill.fieldbyname('bod_id').asstring;
    open;
    if fieldbyname('cost').asfloat<>fieldbyname('price').asfloat then raise Exception.Create('借方、贷方金额不等，不可审核');
end;
if MessageBox(0,'确定审核通过本凭证','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock80 80,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument1.SpeedButton4Click(Sender: TObject);
begin
//if not hasprintright(2,curuserid,self.tag)
//    then raise Exception.Create('抱歉，你无权打印本单据');
repaccdocu:=Trepaccdocu.create(Application);
with repaccdocu.bill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), ';
    commandtext:=commandtext+' broker=dbo.fn_staff_name(broker_id),casher=dbo.fn_staff_name(cash_by) from tb_bill a ';
    commandtext:=commandtext+' where bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then raise Exception.Create('无可打印输出的数据');
end;
with repaccdocu do
begin
    quickrep1.preview;
    quickrep1.free;
end;
end;

procedure Tsetdocument1.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定反审本凭证','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock80 -80,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetdocument1.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿制单');
end;
end;

procedure Tsetdocument1.billCalcFields(DataSet: TDataSet);
begin
with bill do
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='制单';
        1:  fieldbyname('cbod_status').asstring:='审核';
        2:  fieldbyname('cbod_status').asstring:='待审核';
    end;
end;

procedure Tsetdocument1.bill_dtlBeforeEdit(DataSet: TDataSet);
begin
if bill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
end;

procedure Tsetdocument1.bill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('bill_dtl : '+e.message);
end;

procedure Tsetdocument1.bill_dtlpriceChange(Sender: TField);
begin
with bill_dtl do
begin
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
end;
end;

procedure Tsetdocument1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetdocument1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='审核') then Acolor := $00E0FDD9;    // 淡绿色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;
        AFont.Color := clwhite;
    end;
end;
end;

procedure Tsetdocument1.dxDBGrid2acc_cdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickaccounts do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('med_id').asinteger:= qryacc.FieldByName('acc_id').asinteger;
        bill_dtl.fieldbyname('acc_cd').asstring:= qryacc.FieldByName('acc_cd').asstring;
    end;
{
if pickaccounts.showmodal= mrOK then
begin
    if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
    bill_dtl.fieldbyname('med_id').asinteger:=pickaccounts.qryacc.FieldByName('acc_id').asinteger;
    bill_dtl.fieldbyname('acc_cd').asstring:=pickaccounts.qryacc.FieldByName('acc_cd').asstring;
end;
}
end;

procedure Tsetdocument1.dxDBGrid2expensesupButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickexpensesup do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('rela_value').asinteger:=query1.FieldByName('mate_id').asinteger;
        bill_dtl.fieldbyname('expensesup').asstring:=query1.FieldByName('mate_name').asstring;
    end;
end;

procedure Tsetdocument1.dxDBGrid2comptitleButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcompobj do
    if showmodal= mrOK then
    begin
        if not (bill_dtl.state in [dsinsert,dsedit]) then bill_dtl.edit;
        bill_dtl.fieldbyname('rela_id').asinteger:=qry.FieldByName('rec_id').asinteger;
        bill_dtl.fieldbyname('comptitle').asstring:=qry.FieldByName('comptitle').asstring;
    end;
end;

end.
