unit Unit29a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, mycds, Menus;

type
  Tsetdrawrate1 = class(TForm)
    DSdrawlog: TDataSource;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    drawlog: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1customer: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1dtlrate: TdxDBGridMaskColumn;
    Shape3: TShape;
    Label1: TLabel;
    dxSpinEdit1: TdxSpinEdit;
    dxSpinEdit2: TdxSpinEdit;
    SpeedButton3: TSpeedButton;
    drawlogsta_id: TIntegerField;
    drawlogmate_id: TIntegerField;
    drawlogmed_id: TIntegerField;
    drawlogqty: TBCDField;
    drawlogbroker: TStringField;
    drawlogcustomer: TStringField;
    drawlogmed_code: TStringField;
    drawlogmed_name: TStringField;
    drawlogchm_name: TStringField;
    drawlogspecifi: TStringField;
    drawlogmed_unit: TStringField;
    drawlogpdt_place: TStringField;
    drawlogqtyperpack: TBCDField;
    dxDBGrid1chm_name: TdxDBGridColumn;
    drawlogdistrict: TStringField;
    dxDBGrid1district: TdxDBGridColumn;
    drawlogdist_id: TIntegerField;
    pickdist: TClientDataSet;
    ImageList: TImageList;
    Label2: TLabel;
    Shape1: TShape;
    SpeedButton7: TSpeedButton;
    CheckBox1: TdxCheckEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    dxDBGrid1Camot: TdxDBGridColumn;
    drawlogCamot: TFloatField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1qty: TBCDField;
    ADOQuery1broker: TStringField;
    ADOQuery1dist_id: TIntegerField;
    ADOQuery1district: TStringField;
    ADOQuery1customer: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1Camot: TFloatField;
    ADOQuery1dtl_id: TAutoIncField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    drawlogdtl_id: TAutoIncField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1carry_dt: TDateTimeField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    drawlogbod_cd: TStringField;
    drawlogcarry_dt: TDateTimeField;
    ADOQuery1dtlrate: TBCDField;
    drawlogdtlrate: TBCDField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Shape6: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    Shape7: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    drawlogagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    Label8: TLabel;
    pubqry: TClientDataSet;
    drawlogbod_id: TIntegerField;
    dxDBGrid1bod_id: TdxDBGridColumn;
    Edit1: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure drawlogAfterPost(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure drawlogCalcFields(DataSet: TDataSet);
    procedure drawlogBeforeEdit(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setdrawrate1: Tsetdrawrate1;

implementation

uses datamodu, Unit28, Unit16, Unit7, Unit16a;

{$R *.DFM}

procedure Tsetdrawrate1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with drawlog do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetdrawrate1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetdrawrate1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetdrawrate1.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
with drawlog do
begin
//    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton4.enabled:=(active=true) and (recordcount>0);
//    speedbutton6.enabled:=(active=true) and (recordcount>0);
    speedbutton7.enabled:=(active=true) and (recordcount>0);
    dxDBGrid1dtlrate.DisableEditor :=(active=false) or (recordcount=0) or (fieldbyname('qty').asfloat>=0);
end;
end;

procedure Tsetdrawrate1.FormCreate(Sender: TObject);
var yar,mon,day: word;
begin
screen.cursor:=crhourglass;
decodedate(srv_date,yar,mon,day);
dxSpinEdit1.value:=yar;
dxSpinEdit2.value:=mon;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetdrawrate1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', '投资款计算表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetdrawrate1.SpeedButton5Click(Sender: TObject);
var mi: integer;
    dt1,dt2: TDatetime;
    yy,mm: word;
begin
yy:=trunc(dxSpinEdit1.value);
mm:=trunc(dxSpinEdit2.value);
dt1:=encodedate(yy,mm,1);
if dxSpinEdit2.value=12 then
begin
    yy:=trunc(dxSpinEdit1.value)+1;
    mm:=1;
end
else
begin
    yy:=trunc(dxSpinEdit1.value);
    mm:=trunc(dxSpinEdit2.value)+1;
end;
dt2:=encodedate(yy,mm,1);
with drawlog do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.carry_dt,a.bod_cd,b.sta_id,mate_id=a.dst_id,b.med_id,broker=dbo.fn_staff_name(h.sta_id),customer=e.mate_name,';
    commandtext:=commandtext+' dist_id=e.district,district=dbo.fn_getreetitle(e.district),agent=dbo.fn_mate_name(a.src_id),';
    commandtext:=commandtext+' b.qty,m.med_code,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.pdt_place,m.qtyperpack,';
    commandtext:=commandtext+' dtlrate=cast(case when isnull(h.rate,0)=0 then b.dtlrate else h.rate end as decimal(15,4))'; //drawamot=cast(h.rate*b.qty as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
    commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' inner join tb_busimate e on a.dst_id=e.mate_id';
    commandtext:=commandtext+' where a.bod_type_id=2 and a.comp_id='+inttostr(compid)+' and e.mate_type_id=1 ';
//    commandtext:=commandtext+'      and '; //tb_bill_stadtl表为依据业务成员表tb_brokermedtl中的业务成员提成规则，
                                                            //在计算提成款时，生成具体单据明细对业务成员的提成记录
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    commandtext:=commandtext+'  and a.carry_dt>='''+datetimetostr(dt1)+''' and a.carry_dt<'''+datetimetostr(dt2)+'''';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetdrawrate1.SpeedButton3Click(Sender: TObject);
var ss: string;
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 5 *,mate_name=dbo.fn_mate_name(a.mate_id),broker=dbo.fn_staff_name(a.sta_id),';
    commandtext:=commandtext+' c.med_code,c.med_name,c.specifi,c.pdt_place from tb_brokermed a,tb_medicine c,';
    commandtext:=commandtext+' (select rela_id,rate=sum(isnull(rate,0)) from tb_brokermedtl group by rela_id) b';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.valid=1 and a.med_id=c.med_id and a.rec_id=b.rela_id ';
    commandtext:=commandtext+'  and isnull(a.rate,0)<>b.rate';
    open;
    if recordcount>0 then
    begin
        first;
        ss:='下列客户品种业务员提成款与其成员提成款合计不符，请先设置正确'+ #13#10;
        ss:=ss+'--------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            ss := ss+ #13#10 +fieldbyname('broker').asstring+':'+fieldbyname('mate_name').asstring+' ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0,pchar(ss),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;
if MessageBox(0,'确定计算投资款','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_getbilldata '+inttostr(compid)+','+dxSpinEdit1.text+','+dxSpinEdit2.text;
    try
        setprogress(1);
        execute;
    finally
        close;
        setprogress(0);
    end;
end;
SpeedButton5Click(nil);
MessageBox(0,PChar('计算投资款成功完成'),'请注意',MB_OK);
end;

procedure Tsetdrawrate1.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetdrawrate1.drawlogAfterPost(DataSet: TDataSet);
begin
if drawlog.ChangeCount>0 then myupdaterefresh(drawlog,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetdrawrate1.SpeedButton7Click(Sender: TObject);
var ss: string;
begin
if MessageBox(0,'确定计算当前记录的投资款','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with drawlog do
    ss:='select dbo.fn_drawrate('+fieldbyname('sta_id').asstring+','+fieldbyname('mate_id').asstring+','+fieldbyname('med_id').asstring+','+fieldbyname('qty').asstring+')';
with dm.pubqry do
begin
    if active=true then close;
    commandtext:=ss;
    open;
    if not (drawlog.state in [dsinsert,dsedit]) then drawlog.edit; 
    drawlog.fieldbyname('rate').asfloat:=fields[0].asfloat;
    drawlog.post;
end;
end;

procedure Tsetdrawrate1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetdrawrate1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1dtlrate) then
begin
    if (ANode.Values[dxDBGrid1qty.Index] < 0 ) then AColor := $00ACF9F4;
end;
end;

procedure Tsetdrawrate1.drawlogCalcFields(DataSet: TDataSet);
begin
with drawlog do
    fieldbyname('camot').asfloat:=fieldbyname('qty').asfloat*fieldbyname('dtlrate').asfloat
end;

procedure Tsetdrawrate1.drawlogBeforeEdit(DataSet: TDataSet);
var dt:TDatetime;
begin
    dt:=StrToDate(formatfloat('####',dxSpinEdit1.value)+'-'+formatfloat('##',dxSpinEdit2.value)+'-1');
    if dt<=lastsetday then raise Exception.Create('已结账数据不可修改');
end;

procedure Tsetdrawrate1.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
    ClickedOK := InputQuery('查询关键字', '请输入', NewString);
    if ClickedOK then
        with dxdbgrid1 do
        begin
            StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
            EndSearch;
        end;
end;

procedure Tsetdrawrate1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetdrawrate1.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1bod_id.visible:=false;
setprogress(0);
end;

procedure Tsetdrawrate1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetdrawrate1.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;
end;

procedure Tsetdrawrate1.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=pickbroker.query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=pickbroker.query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;
end;

procedure Tsetdrawrate1.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=pickcustomer.query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag :=pickcustomer.query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;
end;

procedure Tsetdrawrate1.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetdrawrate1.N7Click(Sender: TObject);
var i,mi,k,l: integer;  //,m,n
    s,t,p: string;
begin
if (drawlog.active=false) or (drawlog.recordcount=0) then exit;
s:='确定下列单据重新计算投资款'+ #13#10+'---------------------------------------';  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    s:= s + #13#10+ drawlog.fieldbyname('bod_cd').asstring;
    t:=drawlog.fieldbyname('bod_id').asstring;
    mi:=1;
end
else
begin
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[k];
        t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[l];  // 记录 bod_id 字符串
        mi := mi+1;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可操作单据');

if MessageBox(0,pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select distinct bod_id from tb_bill where bod_id in ('+t+')';
    open;
    first;
    while not eof do
    begin
        if pubqry.active=true then pubqry.close;
        pubqry.commandtext:='exec sp_recalbodrate '+dm.pubqry.fieldbyname('bod_id').asstring;
        pubqry.execute;
        dm.pubqry.next;
    end;
end;
SpeedButton5Click(nil); //cdsbill.refresh;
setprogress(0);
end;

end.
