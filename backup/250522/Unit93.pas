unit Unit93;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, dxEditor,
  dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, dxExGrEd, dxExELib, Animate,
  GIFCtrl, DBClient, ADODB, mycds;

type
  Tsetexpaybook2 = class(TForm)
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
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
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
    billbroker: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    billmate_name: TStringField;
    billagent_id: TIntegerField;
    Label5: TLabel;
    dxDBMemo1: TdxDBMemo;
    billzmemo: TMemoField;
    Label22: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    billagent: TStringField;
    billbusi_type: TIntegerField;
    billsettle_type: TIntegerField;
    dxDBGrid1agent: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    GIFimage2: TRxGIFAnimator;
    Label14: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    billmed_id: TIntegerField;
    billmed_code: TStringField;
    billmed_name: TStringField;
    billspecifi: TStringField;
    billCmed: TStringField;
    dxDBGrid1Cmed: TdxDBGridColumn;
    billpdt_place: TStringField;
    Button1: TButton;
    Label23: TLabel;
    Label19: TLabel;
    DBText11: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label10: TLabel;
    Label16: TLabel;
    billchannel_id: TIntegerField;
    billchannel_dtl_id: TIntegerField;
    billchannel: TStringField;
    billchannel_dtl: TStringField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label18: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    billmaterial_code1: TStringField;
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
    procedure dxDBButtonEdit1Enter(Sender: TObject);
    procedure dxDBButtonEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpaybook2: Tsetexpaybook2;

implementation

uses datamodu, Unit53, Unit15, Unit16a, Unit16c, Unit7, Unit28f, Unit28g;

{$R *.DFM}

procedure Tsetexpaybook2.setupdatestatus;    // 编辑状态
begin
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetexpaybook2.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetexpaybook2.FormActivate(Sender: TObject);
begin
with dm.homebank do
    if active=false then
    begin
        commandtext:='select * from tb_bank where comp_id='+inttostr(compid)+' order by bank_name';
        open;
    end;
if bill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetexpaybook2.FormCloseQuery(Sender: TObject;
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
end;

procedure Tsetexpaybook2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpaybook2.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook2.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetexpaybook2.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
//  UpdateApply speedbutton
setprogress(1);
with bill do
begin
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,43));
    end;

    mid:=fieldbyname('bod_id').asinteger;
    if state in [dsinsert,dsedit] then post;
    myapplyupdate(bill,'tb_bill','bod_id');
    refreshmyrecord(bill,dm.Refreshcds,0,'bod_id',mid)
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetexpaybook2.SpeedButton9Click(Sender: TObject);
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

procedure Tsetexpaybook2.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton

//if dxDateEdit1.date=null then exit;
with bill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select top 5000 a.*,g.mate_name,creater=d.zname,checker=e.zname,bank_name=dbo.fn_obj_desc(a.stock_id),broker=c.zname,agent=f.mate_name,m.med_code,m.material_code1,m.med_name,m.specifi,m.pdt_place';
//    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' ,a.channel_id,channel=h.zdesc,a.channel_dtl_id,channel_dtl=i.zdesc';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate g on a.dst_id=g.mate_id';
    commandtext:=commandtext+' left join tb_staff c on a.broker_id=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_object h on a.channel_id=h.obj_id';
    commandtext:=commandtext+' left join tb_object i on a.channel_dtl_id=i.obj_id';
    commandtext:=commandtext+' where bod_type_id=43 and cate_id=1';
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

procedure Tsetexpaybook2.FormCreate(Sender: TObject);
begin
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
label1.caption:= self.caption; //其他支出记账制单';
//label1.caption:=ent_title+' '+self.caption; //其他支出记账制单';
setunupdatestatus;
end;

procedure Tsetexpaybook2.SpeedButton6Click(Sender: TObject);
var mid:integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,cate_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',43,0,1,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
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

procedure Tsetexpaybook2.SpeedButton7Click(Sender: TObject);
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
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetexpaybook2.DSbillDataChange(Sender: TObject; Field: TField);
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
        dxDBButtonEdit3.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit4.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit1.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBLookupEdit2.enabled:=(recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
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

procedure Tsetexpaybook2.DSbillStateChange(Sender: TObject);
begin
with bill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetexpaybook2.billBeforeEdit(DataSet: TDataSet);
begin
with bill do
begin
    if fieldbyname('bod_status_id').asinteger<>0
        then raise Exception.Create('本单已非制单状态,不可更改'+#13#10+'确需更改，须先返回制单状态');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人单据，请勿制单');
end;
end;

procedure Tsetexpaybook2.billCalcFields(DataSet: TDataSet);
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

procedure Tsetexpaybook2.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetexpaybook2.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetexpaybook2.dxDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);   // turn lower charactor to upper
end;

procedure Tsetexpaybook2.SpeedButton2Click(Sender: TObject);
begin
with bill do
begin
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
    if fieldbyname('agent_id').asinteger=0 then raise Exception.Create('请选择代理人');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+bill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+bill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and month=month('''+bill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
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

procedure Tsetexpaybook2.SpeedButton4Click(Sender: TObject);
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

procedure Tsetexpaybook2.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    if not (bill.state in [dsinsert,dsedit]) then setupdatestatus;

    sk:=edit1.text;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickbusimate2.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,deputy,phone,address,broker=dbo.fn_staff_name(broker_id),broker_id,zname1,address1,phone1,zname2,address2,phone2,settle_type,stop_yn,qry_code';
        commandtext:=commandtext+' from tb_busimate where mate_type_id=2'; // and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and qry_code like ''%'+sk+'%''';
//        commandtext:=commandtext+' order by mate_name';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询商业公司'); end;
        pickbusimate2.edit1.text:= edit1.text;
        if pickbusimate2.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean=true
                then raise Exception.Create('该商业公司已停用，不可制单');
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

procedure Tsetexpaybook2.Edit1Click(Sender: TObject);
begin
edit1.selectall;
end;

procedure Tsetexpaybook2.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetexpaybook2.dxDBButtonEdit1Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetexpaybook2.dxDBButtonEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetexpaybook2.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickagent.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickagent.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetexpaybook2.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (bill.state in [dsinsert,dsedit]) then bill.edit;
    if showmodal= mrOK then
    begin
        bill.fieldbyname('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        bill.fieldbyname('material_code1').asstring:= query1.fieldbyname('material_code1').asstring;
        bill.fieldbyname('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        bill.fieldbyname('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        bill.fieldbyname('specifi').asstring:= query1.fieldbyname('specifi').asstring;
    end
    else
    begin
        bill.fieldbyname('med_id').asinteger:= 0;
        bill.fieldbyname('material_code1').asstring:= '';
        bill.fieldbyname('med_code').asstring:= '';
        bill.fieldbyname('med_name').asstring:= '';
        bill.fieldbyname('specifi').asstring:= '';
    end;
end;
end;

procedure Tsetexpaybook2.Button1Click(Sender: TObject);
begin
SpeedButton2Click(nil);
end;

procedure Tsetexpaybook2.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickchannel do
begin
    if not (bill.state in [dsinsert,dsedit]) then bill.edit;
    if showmodal= mrOK then
    begin
        bill.fieldbyname('channel_id').asinteger:= query1.fieldbyname('obj_id').asinteger;
        bill.fieldbyname('channel').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        bill.fieldbyname('channel_id').asinteger:= 0;
        bill.fieldbyname('channel').asstring:= '';
    end;
end;
end;

procedure Tsetexpaybook2.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickchannel_dtl do
begin
    if not (bill.state in [dsinsert,dsedit]) then bill.edit;
    if showmodal= mrOK then
    begin
        bill.fieldbyname('channel_dtl_id').asinteger:= query1.fieldbyname('obj_id').asinteger;
        bill.fieldbyname('channel_dtl').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        bill.fieldbyname('channel_dtl_id').asinteger:= 0;
        bill.fieldbyname('channel_dtl').asstring:= '';
    end;
end;
end;

end.
