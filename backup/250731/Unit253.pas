unit Unit253;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, Comobj, mycds;

type
  Tsetexpaybook = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
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
    SpeedButton6: TSpeedButton;
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
    billreceipt_by: TIntegerField;
    DBText16: TDBText;
    dxDBGrid1Column11: TdxDBGridColumn;
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
    Label6: TLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    Edit1: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBText13: TDBText;
    billbroker: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    billmate_name: TStringField;
    Label16: TLabel;
    billagent_id: TIntegerField;
    billzmemo: TMemoField;
    Label23: TLabel;
    Label22: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    billagent: TStringField;
    billbusi_type: TIntegerField;
    billsettle_type: TIntegerField;
    dxDBGrid1agent: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    GIFimage2: TRxGIFAnimator;
    Label8: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
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
    dxDBGrid1Cmed: TdxDBGridColumn;
    Button1: TButton;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label15: TLabel;
    billchannel_id: TIntegerField;
    billchannel_dtl_id: TIntegerField;
    billchannel: TStringField;
    billchannel_dtl: TStringField;
    Label17: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    DBText2: TDBText;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    billmaterial_code1: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    Label20: TLabel;
    Edit3: TEdit;
    billmaterial_code: TStringField;
    billLchannel: TStringField;
    billLchannel_dtl: TStringField;
    dxDBLookupEdit3: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure billBeforeEdit(DataSet: TDataSet);
    procedure billCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpaybook: Tsetexpaybook;

implementation

uses datamodu, Unit53, Unit15, Unit16a, Unit16c, Unit7; //, Unit28f, Unit28g;

{$R *.DFM}

procedure Tsetexpaybook.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;   // refresh disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetexpaybook.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetexpaybook.FormActivate(Sender: TObject);
begin
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.homebank do
    if active=false then
    begin
        commandtext:='select * from tb_bank where comp_id='+inttostr(compid)+' order by bank_name';
        open;
    end;
if bill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetexpaybook.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (bill.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with bill do if active then close;
with dm.homebank do if active then close;
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;
end;

procedure Tsetexpaybook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpaybook.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetexpaybook.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
//  UpdateApply speedbutton
setprogress(1);
with bill do
begin
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,36));
    end;

    mid:=fieldbyname('bod_id').asinteger;
    if state in [dsinsert,dsedit] then post;
    myapplyupdate(bill,'tb_bill','bod_id');
    refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',mid)
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
setprogress(1);
if bill.recordcount<>0 then
begin
    with bill do
    begin
        if fieldbyname('bod_cd').asstring='' then
        begin
            delete;
            myapplyupdate(bill,'tb_bill','bod_id');
        end
        else cancelUpdates;
    end;
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton

//if dxDateEdit1.date=null then exit;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select top 5000 a.*,g.mate_name,creater=d.zname,checker=e.zname,bank_name=dbo.fn_obj_desc(a.stock_id),broker=c.zname,agent=f.mate_name,m.med_code,m.material_code,m.material_code1,m.med_name,m.specifi,m.pdt_place';
//    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';  //dbo.fn_obj_desc1(11,a.channel_id)
//    commandtext:=commandtext+' ,a.channel_id,channel=h.zdesc,a.channel_dtl_id,channel_dtl=i.zdesc';  //
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate g on a.dst_id=g.mate_id';
    commandtext:=commandtext+' left join tb_staff c on a.broker_id=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
//    commandtext:=commandtext+' left join tb_object h on a.channel_id=h.obj_id';
//    commandtext:=commandtext+' left join tb_object i on a.channel_dtl_id=i.obj_id';
    commandtext:=commandtext+' where bod_type_id=36';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetexpaybook.FormCreate(Sender: TObject);
begin
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
label1.caption:= self.caption; //其他支出记账制单';
//label1.caption:=ent_title+' '+self.caption; //其他支出记账制单';
setunupdatestatus;
end;

procedure Tsetexpaybook.SpeedButton6Click(Sender: TObject);
var mid:integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',36,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with bill do
begin
    append;
    post;
    refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',mid);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
setupdatestatus;
edit1.Text:='';
edit1.setfocus;
setprogress(0);
end;

procedure Tsetexpaybook.SpeedButton7Click(Sender: TObject);
begin
if bill.recordcount=0 then raise Exception.Create('请指定需删除的单据');
if bill.fieldbyname('bod_status_id').asinteger=1 then raise Exception.Create('本单已审核，不可删除。'+#13#10+'确需删除，应先反审核');
if MessageBox(0,'确定删除本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
bill.delete;
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetexpaybook.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with bill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
        edit1.text:=fieldbyname('mate_name').asstring;
        edit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxdbedit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit3.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit4.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit2.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBMemo1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
        speedbutton4.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=1);
        speedbutton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('creat_by').asinteger=curuserid) and (fieldbyname('bod_status_id').asinteger=0);
        gifimage1.visible:= fieldbyname('bod_status_id').asinteger=1;
        gifimage2.visible:= fieldbyname('bod_status_id').asinteger=2;
        if state=dsbrowse then setunupdatestatus;
    end;
//    if PageControl1.activepage=TabSheet1 then exit; // 查看”列表“时，不需显示明细数据
end;
end;

procedure Tsetexpaybook.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpaybook.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
    if fieldbyname('bod_status_id').asinteger<>0
        then raise Exception.Create('本单已非制单状态,不可更改'+#13#10+'确需更改，须先返回制单状态');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿制单');
end;
end;

procedure Tsetexpaybook.billCalcFields(DataSet: TDataSet);
begin
with bill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
        2: fieldbyname('cbod_status').asstring:='待审核';
    end;
    fieldbyname('Cmed').asstring:=fieldbyname('material_code1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
end;
end;

procedure Tsetexpaybook.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetexpaybook.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpaybook.SpeedButton2Click(Sender: TObject);
begin
with bill do
begin
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
    if fieldbyname('agent_id').asinteger=0 then raise Exception.Create('请选择代理人');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+ bill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+ bill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and month=month('''+ bill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
edit2.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本单商业公司所在区域发生日期年月已结账，不可送审核');
end;
if MessageBox(0,'确定本单送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+bill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',bill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook.SpeedButton4Click(Sender: TObject);
begin
{
if not hasprintright(2,curuserid,self.tag)
    then raise Exception.Create('抱歉，你无权打印本单据');
reppay:=Treppay.create(Application);
with reppay.bill do
begin
    if active then close;
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
        if active then close;
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

procedure Tsetexpaybook.Edit1KeyPress(Sender: TObject; var Key: Char);
var sk: widestring;
begin
if key=#32 then  // <space> key is pressed
begin
    if not (bill.state in [dsinsert,dsedit]) then setupdatestatus;

    sk:=Trim(edit1.text);
    if sk='' then exit;
{
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
}
    with pickbusimate2.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,deputy,phone,address,broker=dbo.fn_staff_name(broker_id),broker_id,zname1,address1,phone1,zname2,address2,phone2,settle_type,stop_yn,qry_code';
        commandtext:=commandtext+' from tb_busimate where mate_type_id=2'; // and comp_id='+inttostr(compid);
        commandtext:=commandtext+' and (mate_name like ''%'+sk+'%'' or dbo.fn_getpy(mate_name) like ''%'+sk+'%'')';
//        commandtext:=commandtext+' order by mate_name';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询商业公司'); end;
        pickbusimate2.edit1.text:= edit1.text;
        if pickbusimate2.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean then raise Exception.Create('该商业公司已停用，不可制单');
            with bill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('dst_id').asinteger:=pickbusimate2.query1.FieldByName('mate_id').asinteger;
                if pickbusimate2.query1.FieldByName('broker').asstring<>'' then
                   fieldbyname('broker_id').asinteger:=pickbusimate2.query1.FieldByName('broker').asinteger;
                fieldbyname('settle_type').asinteger:=pickbusimate2.query1.FieldByName('settle_type').asinteger;
                Edit1.text:=pickbusimate2.query1.FieldByName('mate_name').asstring;
            end;
        end;
    end;
end;
end;

procedure Tsetexpaybook.Edit1Click(Sender: TObject);
begin
edit1.selectall;
end;

procedure Tsetexpaybook.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if not (bill.state in [dsinsert,dsedit]) then bill.edit;
    if showmodal= mrOK then
    begin
        bill.fieldbyname('agent_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        bill.fieldbyname('agent').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        bill.fieldbyname('agent_id').asinteger:= 0;
        bill.fieldbyname('agent').asstring:= '';
    end;
end;
end;

procedure Tsetexpaybook.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (bill.state in [dsinsert,dsedit]) then bill.edit;
    if showmodal= mrOK then
    begin
        bill.fieldbyname('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        bill.fieldbyname('material_code').asstring:= query1.fieldbyname('material_code').asstring;
        bill.fieldbyname('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        bill.fieldbyname('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        bill.fieldbyname('specifi').asstring:= query1.fieldbyname('specifi').asstring;
    end
    else
    begin
        bill.fieldbyname('med_id').asinteger:= 0;
        bill.fieldbyname('material_code').asstring:= '';
        bill.fieldbyname('med_code').asstring:= '';
        bill.fieldbyname('med_name').asstring:= '';
        bill.fieldbyname('specifi').asstring:= '';
    end;
end;
end;

procedure Tsetexpaybook.Button1Click(Sender: TObject);
begin
SpeedButton2Click(nil);
end;

procedure Tsetexpaybook.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer; 
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    mi:=0;j:=2;  //第1行开始 每行一单
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100))';
    sql:=sql+' insert @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8)';
    while (sheet.cells[j,2].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''',replace('''+Trim(sheet.cells[j,4].text)+''','','',''''),'''+Trim(sheet.cells[j,5].text);
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text)+''','''+Trim(sheet.cells[j,8].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入,导入格式:1发生日期, 2商业公司, 3业务负责人编码, 4金额, 5单据摘要, 6物料编码(选填), 7渠道名称, 8子渠道名称
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+' select top 10 * from ( select top 5 info=''第''+line_no+''行 无发生日期或数据无效'' from @tab where f1='''' or try_cast(f1 as datetime) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无商业公司或数据无效'' from @tab a where f2='''' or not exists (select 1 from tb_busimate b where mate_type_id=2 and b.mate_name =a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无业务负责人编码或数据无效'' from @tab a where f3='''' or not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_code =a.f3)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无金额或数据无效'' from @tab a where f4='''' or try_cast(f4 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 物料编码无效'' from @tab a where f6<>'''' and not exists (select 1 from tb_medicine m where m.material_code=a.f6)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无渠道名称或数据无效'' from @tab a where a.f7='''' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.zdesc=a.f7)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无子渠道名称或数据无效'' from @tab a where a.f8='''' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.zdesc=a.f8)';
    sql:=sql+' ) a order by info';
edit2.text:=sql;
//    setprogress(0);
//exit;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit2.text:=sql;
        open;
        setprogress(0);
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//从第2行开始导入,导入格式:1发生日期, 2商业公司, 3业务负责人编码, 4金额, 5单据摘要, 6关联定价参考物料编码(选填), 7渠道名称, 8子渠道名称
        sql:=sql1+' declare @cid int,@cnt int';

//        sql:=sql+' select top 1 @cid=cast(bod_cd as int) from tb_bill where bod_type_id=36 order by bod_cd desc';  //取最大单据号
        sql:=sql+' select top 1 @cid=currentid from tb_billid where comp_id='+inttostr(compid)+' and bod_type_id=36';  //取最大单据号

        sql:=sql+' insert tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,carry_dt,dst_id,agent_id,bod_amot,bod_desc,med_id,channel_id,channel_dtl_id,creat_by,creat_dt)';
        sql:=sql+' select comp_id='+inttostr(compid)+',bod_cd=replace(str(isnull(@cid,0)+row_number() over(order by line_no),8),'' '',''0''),bod_type_id=36,bod_status_id=0,';
        sql:=sql+' carry_dt=cast(f1 as datetime),dst_id=c.mate_id,agent_id=d.mate_id,';
        sql:=sql+' bod_amot=cast(f4 as decimal(15,2)),bod_desc=f5,med_id=m.med_id,channel_id=e.obj_code,channel_dtl_id=f.obj_code,';
        sql:=sql+' creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' left join (select mate_id,mate_name from tb_busimate where mate_type_id=2) c on c.mate_name=a.f2';
        sql:=sql+' left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) d on d.mate_code=a.f3';
//        sql:=sql+' left join (select med_id,material_code,material_code1 from tb_medicine) m on m.material_code1=a.f6';
        sql:=sql+' left join (select med_id,material_code,material_code1 from tb_medicine) m on m.material_code=a.f6'; //material_code1有重复，故用material_code
        sql:=sql+' left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=11) e on e.zdesc=a.f7';
        sql:=sql+' left join (select obj_id,obj_code,zdesc from tb_object where obj_type_id=12) f on f.zdesc=a.f8';
        sql:=sql+' set @cnt=@@ROWCOUNT';
        sql:=sql+' update tb_billid set currentid=currentid+@cid where comp_id='+inttostr(compid)+' and bod_type_id=36';
//        sql:=sql+' select @cid ';
        sql:=sql+' select @cnt,str=''已导入''+replace((str(@cid+1,8)),'' '',''0'')+''-''+replace(str(@cid+@cnt,8),'' '',''0'')+'' 共''+ str(@cnt,2)+''张单据''';

edit3.text:=sql;
//exit;
        try
            setprogress(1);
            commandtext:=sql;
            open;
            if recordcount>0 then
            begin
                mi:=fields[0].asinteger;
                s:=fields[1].asstring;
            end
            else
            begin
                mi:=0;
                s:='';
            end;
        finally
            setprogress(0);
        end;
        if mi=0 then MessageBox(0,pchar('无可导入数据'),'请注意',MB_OK+MB_ICONInformation)
        else
        begin
            SpeedButton5Click(nil);
            if bill.active then bill.Last;  //如有新增，locate到最后记录
//            MessageBox(0,pchar('已导入'+inttostr(mi)+'张单据'),'请注意',MB_OK+MB_ICONInformation);
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
        end;
    end;
end;

end.
