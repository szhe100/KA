unit Unit253a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, mycds;

type
  Tsetexpaybook1 = class(TForm)
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
    billreceipt_by: TIntegerField;
    billbroker_id: TIntegerField;
    DBText14: TDBText;
    billdst_id: TIntegerField;
    billstock_id: TIntegerField;
    billcarry_dt: TDateTimeField;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    billcarry_way: TIntegerField;
    Shape3: TShape;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dxDBCalcEdit1: TdxDBCalcEdit;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    DBText13: TDBText;
    billbroker: TStringField;
    billmate_name: TStringField;
    billagent_id: TIntegerField;
    billzmemo: TMemoField;
    Label23: TLabel;
    Label22: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    billagent: TStringField;
    billbusi_type: TIntegerField;
    billsettle_type: TIntegerField;
    DBText1: TDBText;
    SpeedButton6: TSpeedButton;
    DBText2: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    DBText3: TDBText;
    Label8: TLabel;
    billmed_id: TIntegerField;
    billmed_code: TStringField;
    billmed_name: TStringField;
    billspecifi: TStringField;
    billpdt_place: TStringField;
    billCmed: TStringField;
    Label14: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBMemo1: TdxDBMemo;
    Label5: TLabel;
    DBText11: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpaybook1: Tsetexpaybook1;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetexpaybook1.setupdatestatus;    // 编辑状态
begin
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
end;

procedure Tsetexpaybook1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetexpaybook1.FormActivate(Sender: TObject);
begin
with dm.homebank do
    if active=false then
    begin
        commandtext:='select * from tb_bank where comp_id='+inttostr(compid)+' order by bank_name';
        open;
    end;
if bill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetexpaybook1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with bill do if active=True then close;
with dm.homebank do if active=True then close;
end;

procedure Tsetexpaybook1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpaybook1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetexpaybook1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton

//if dxDateEdit1.date=null then exit;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select top 5000 a.*,g.mate_name,creater=d.zname,checker=e.zname,bank_name=dbo.fn_obj_desc(a.stock_id),broker=c.zname,agent=f.mate_name,m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate g on a.dst_id=g.mate_id';
    commandtext:=commandtext+' left join tb_staff c on a.broker_id=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' where bod_type_id=36 and a.bod_status_id in (1,2)';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetexpaybook1.FormCreate(Sender: TObject);
begin
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
label1.caption:= self.caption; //其他支出记账制单';
//label1.caption:=ent_title+' '+self.caption; //其他支出记账制单';
setunupdatestatus;
end;

procedure Tsetexpaybook1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
		dxDBMemo1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        speedbutton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and ((fieldbyname('check_by').asinteger=curuserid) and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0))
                or (curuserid=5)); // and (datetostr(fieldbyname('check_dt').asdatetime)>=datetostr(dt_1))); // 审核当天可反审
//            and (fieldbyname('check_by').asinteger=curuserid) //审核人本人反审
//            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(srv_date)); // 审核当天可反审
        speedbutton4.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1);
        speedbutton6.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        gifimage1.visible:= fieldbyname('bod_status_id').asinteger=1;
        if state=dsbrowse then setunupdatestatus;
    end;
//    if PageControl1.activepage=TabSheet1 then exit; // 查看”列表“时，不需显示明细数据
end;
end;

procedure Tsetexpaybook1.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpaybook1.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已非制单状态,不可更改'+#13#10+'确需更改，须先返回制单状态');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿制单');
end;
end;

procedure Tsetexpaybook1.billCalcFields(DataSet: TDataSet);
begin
with bill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
        2: fieldbyname('cbod_status').asstring:='待审核';
    end;
    fieldbyname('Cmed').asstring:=fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
end;
end;

procedure Tsetexpaybook1.billReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('bill:'+e.message);
end;

procedure Tsetexpaybook1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetexpaybook1.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpaybook1.SpeedButton2Click(Sender: TObject);
begin
with bill do
begin
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
    if fieldbyname('agent_id').asinteger=0 then raise Exception.Create('请选择代理人');
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock36 36,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'本单尚未审核');
    end;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook1.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
speedbutton3.enabled:=false; // 避免连续按两次，保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock36 -36,'+bill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook1.SpeedButton4Click(Sender: TObject);
begin
{
if not hasprintright(2,curuserid,self.tag)
    then raise Exception.Create('抱歉，你无权打印本单据');
reppay:=Treppay.create(Application);
with reppay.bill do
begin
    if active=true then close;
    commandtext:='select top 1 a.*,f.comp_name,bank_name=dbo.fn_obj_desc(a.stock_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
    commandtext:=commandtext+' mate_name=''(''+dbo.fn_mate_name(a.agent_id)+'')''+c.mate_name,bod_settle=c.settle_type,broker=dbo.fn_staff_name(a.broker_id)';
    commandtext:=commandtext+' from tb_bill a,tb_busimate c,tb_company f';
    commandtext:=commandtext+' where a.dst_id*=c.mate_id and a.comp_id*=f.comp_id and bod_id='+bill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then raise Exception.Create('无可打印输出的数据');
end;
with reppay do
begin
    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='update tb_bill set prncount=isnull(prncount,0)+1 where bod_id='+bill.fieldbyname('bod_id').asstring;
        execute;
        close;
    end;
    qrlabel8.caption:='[第'+inttostr(bill.fieldbyname('prncount').asinteger+1)+'次打印('+formatdatetime('mm.dd hh:mm',now)+')]';
    quickrep1.Preview;
//    quickrep1.Print;
end;
}
end;

procedure Tsetexpaybook1.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'确定将本单送回制单人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
bill.delete; // 因送回后，cdsbill中不应包含此记录，故从cdsbill中delete，物理记录并未删除
setunupdatestatus;
setprogress(0);
end;

end.
