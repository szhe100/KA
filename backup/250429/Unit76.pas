unit Unit76;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, dxCntner, dxEdLib, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, dxDBELib, StdCtrls, dxEditor, dxDBEdtr, Animate,
  GIFCtrl, DBCtrls, ExtCtrls, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  ComCtrls, mycds, Menus, Comobj;

type
  Tsetrecaccount = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carry_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    Label13: TLabel;
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
    cdsbill: TClientDataSet;
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
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label12: TLabel;
    Label14: TLabel;
    dxDateEdit1: TdxDateEdit;
    cdsbillbod_desc: TStringField;
    Label15: TLabel;
    DBText15: TDBText;
    DBText2: TDBText;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    cdsbillbroker_id: TIntegerField;
    cdsbillstorage_by: TIntegerField;
    DBText14: TDBText;
    dxDateEdit4: TdxDateEdit;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    cdsbillcarry_dt: TDateTimeField;
    cdsbillbroker: TStringField;
    Label23: TLabel;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    pubqry: TClientDataSet;
    Shape3: TShape;
    Label5: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    GIFimage2: TRxGIFAnimator;
    SpeedButton1: TSpeedButton;
    N1: TMenuItem;
    N2: TMenuItem;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label6: TLabel;
    cdsbillmed_code: TStringField;
    cdsbillmed_name: TStringField;
    cdsbillspecifi: TStringField;
    cdsbillCmed: TStringField;
    cdsbillmed_id: TIntegerField;
    dxDBGrid1Cmed: TdxDBGridColumn;
    N4: TMenuItem;
    N5: TMenuItem;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillchannel_id: TIntegerField;
    cdsbillchannel_dtl_id: TIntegerField;
    cdsbillchannel: TStringField;
    cdsbillchannel_dtl: TStringField;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbillReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxDBCalcEdit1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setrecaccount: Tsetrecaccount;

implementation

uses datamodu, Unit28, Unit7;

{$R *.DFM}

procedure Tsetrecaccount.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetrecaccount.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetrecaccount.FormActivate(Sender: TObject);
begin
if cdsbill.Active=False then SpeedButton5Click(nil);
end;

procedure Tsetrecaccount.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IF (cdsbill.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'尚有未存盘数据，保存退出?','请注意',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with cdsbill     do if active=true then close;
end;

procedure Tsetrecaccount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetrecaccount.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetrecaccount.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetrecaccount.SpeedButton8Click(Sender: TObject);
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
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetrecaccount.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'确定取消本单的编辑','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
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

procedure Tsetrecaccount.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,m.med_code,m.med_name,m.specifi,creater=d.zname,checker=e.zname,broker=b.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' where a.bod_type_id=19';
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

procedure Tsetrecaccount.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetrecaccount.SpeedButton6Click(Sender: TObject);
var mid: integer;
begin
// insert speedbutton
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',19,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),102) as datetime))';
    commandtext:=commandtext+' select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with cdsbill do
begin
    append;
    post;
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2; // 如在”列表“页，则转为”明细“页
setupdatestatus;
label15.caption:=''; // 金额大写清空
dxDBEdit1.SetFocus;
end;

procedure Tsetrecaccount.SpeedButton7Click(Sender: TObject);
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
DSbillDataChange(nil,nil);  //刷新cdsbill_dtl
setprogress(0);
end;

procedure Tsetrecaccount.DSbillDataChange(Sender: TObject; Field: TField);
begin
if field=nil then
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid)
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        speedbutton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0) and (fieldbyname('creat_by').asinteger=curuserid);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);
        gifimage2.visible:=(fieldbyname('bod_status_id').asinteger=2);
        if state=dsbrowse then setunupdatestatus;
        if dxdbcalcedit1.text='' then label15.caption:='' else label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
    end;
    // 无论 pagecontrol 状态，控制 未审核不可打印
end;
end;

procedure Tsetrecaccount.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetrecaccount.SpeedButton2Click(Sender: TObject);
begin
with cdsbill do
begin
    if fieldbyname('broker_id').asinteger=0 then raise Exception.Create('请选择业务员');
//    if fieldbyname('relative_id').asstring='' then  raise Exception.Create('请选择结算科目');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('请输入发生日期');
end;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 c.district from tb_staff c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.sta_id=a.broker_id) b';
    commandtext:=commandtext+' where a.settled=1 and a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本单业务员所在区域发生日期年月已结账，不可送审核');
end;
if MessageBox(0,'确定本单送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton2.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetrecaccount.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton3.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock19 -19,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetrecaccount.cdsbillBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
end;

procedure Tsetrecaccount.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='制单';
        1:  fieldbyname('cbod_status').asstring:='审核';
        2:  fieldbyname('cbod_status').asstring:='待审核';
    end;
    fieldbyname('Cmed').asstring:=fieldbyname('med_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
end;
end;

procedure Tsetrecaccount.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetrecaccount.dxDBCalcEdit1Change(Sender: TObject);
begin
if dxdbcalcedit1.text<>'' then label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
end;

procedure Tsetrecaccount.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetrecaccount.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetrecaccount.N3Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
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
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(仅制单状态单据可删除)');
if MessageBox(0,'确定删除所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //刷新
end;

procedure Tsetrecaccount.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= 0;
        cdsbill.fieldbyname('broker').asstring:= '';
    end;
end;
end;

procedure Tsetrecaccount.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,id2,id5 : integer;
    dt: TDatetime;
    f1: Boolean;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
///导入字段为：1发生日期、2业务员id2、3付款金额、4单据摘要、5药品编码
    setprogress(1);
    sbodcd:='';
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id2:=0; id5:=0;
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        with dm.pubqry do
        begin
            if active=true then close;
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=1 and zname ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('sta_id').asinteger;
            end;
            if active=True then close;
            commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_staff where sta_id='+inttostr(id2)+') b';
            commandtext:=commandtext+' where a.settled=1 and a.settled=1 and year=year('''+datetostr(dt)+''')';
            commandtext:=commandtext+' and month=month('''+datetostr(dt)+''')';
            commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
//        edit1.Text:=commandtext;
            open;
//            if recordcount>0 then raise Exception.Create('本单业务员所在区域发生日期年月已结账，不可审核');
            f1:=(recordcount>0);
            if (id2=0) or f1 then
            begin
                sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
                if id2=0 then sbodcd:=sbodcd+' 未取得业务员 ';
                if f1    then sbodcd:=sbodcd+' 业务员所在区域发生日期月度已结账';
            end;
        end;
        j:=j+1;
    end;
    setprogress(0);
    if sbodcd<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'-----------------------------------'+sbodcd),'请注意',MB_OK+MB_IconError);
        XL.Quit;
        abort;
    end;

    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    screen.cursor:=crhourglass;
    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';

///导入字段为：1发生日期、2业务员id2、3付款金额、4单据摘要、5药品编码
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id2:=0; id5:=0;
        if sheet.cells[j,1].text='' then dt:=dt0 else
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=dt0;
        end;
        with dm.pubqry do
        begin
            if active=true then close;
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=1 and zname ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('sta_id').asinteger;
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code ='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('med_id').asinteger; //药品
            end;

            sb:=formatfloat('00000000',getbillid(compid,19));
            sbodcd:=sbodcd+#13#10+sb;
            if id2=0 then sbodcd:=sbodcd+'(未取得业务员)';

///导入字段为：发生日期、业务员id2、付款金额、单据摘要。
            if active=true then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,broker_id,bod_desc,bod_amot,med_id,creat_by,creat_dt,carry_dt)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',19,0,'+inttostr(id2)+','''+Trim(sheet.cells[j,4].text)+''','+cleardeli(sheet.cells[j,3].text)+',';
            commandtext:=commandtext+inttostr(id5)+','+inttostr(curuserid)+',getdate(),'''+datetimetostr(dt)+''')';
//edit2.text:=commandtext;
            execute;
            if active=true then close;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    sbodcd:=sbodcd+#13#10+'---------------------------';
    MessageBox(0,pchar(sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetrecaccount.N2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetrecaccount.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        cdsbill.fieldbyname('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        cdsbill.fieldbyname('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        cdsbill.fieldbyname('specifi').asstring:= query1.fieldbyname('specifi').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('med_id').asinteger:= 0;
        cdsbill.fieldbyname('med_code').asstring:= '';
        cdsbill.fieldbyname('med_name').asstring:= '';
        cdsbill.fieldbyname('specifi').asstring:= '';
    end;
end;
end;

procedure Tsetrecaccount.N4Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
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
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(仅制单状态单据可送审)');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_bill a,tb_staff c where a.bod_id in ('+t+') and a.broker_id=c.sta_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('所选单据中业务员所在区域与年月已结账，不可送审核');
end;
if MessageBox(0,'确定所选单据送审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //刷新
end;

end.
