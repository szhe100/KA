unit Unit201a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, StdCtrls,
  ExtCtrls, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, dxDBELib, dxdbtrel,
  ImgList;

type
  Tqryclassimp1 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    qrycreat_dt: TDateTimeField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    qrydtl_id: TAutoIncField;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrybat_cd: TStringField;
    ADOQuery1: TADOQuery;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    qrybod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qrycarry_dt: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Shape3: TShape;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    qryprice1: TBCDField;
    qryCrate: TFloatField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrylead_id: TAutoIncField;
    qryleader: TStringField;
    qrymate_name: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1material_code: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1prod_line: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    qrybod_cd1: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    Edit1: TEdit;
    Label5: TLabel;
    qrycate_id: TWordField;
    qryCcate_id: TStringField;
    Label13: TLabel;
    ADOQuery1broker1: TStringField;
    qrybroker: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxPickEdit1: TdxPickEdit;
    Shape4: TShape;
    Label3: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    qrybod_id: TIntegerField;
    qrybod_cd2: TStringField;
    dxDBGrid1bod_cd2: TdxDBGridColumn;
    qryprice12: TBCDField;
    dxDBGrid1price1: TdxDBGridColumn;
    qryCamot1: TFloatField;
    dxDBGrid1Camot1: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    dxDateEdit3: TdxDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList: TImageList;
    dxButtonEdit4: TdxButtonEdit;
    pubqry: TClientDataSet;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxLookupTreeView2: TdxLookupTreeView;
    Label10: TLabel;
    Shape5: TShape;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    qrybod_cd3: TStringField;
    qryamot1: TBCDField;
    dxDBGrid1bod_cd3: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    qryamot2: TBCDField;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    qryprod_line_id: TIntegerField;
    qryprod_line: TStringField;
    qrysale_team_id: TIntegerField;
    qrysale_team: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    qrymaterial_code: TStringField;
    qrymaterial_code1: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassimp1: Tqryclassimp1;

implementation

uses datamodu, Unit7, Unit16a, Unit16c, Main;

{$R *.DFM}

procedure Tqryclassimp1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tqryclassimp1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassimp1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassimp1.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclassimp1.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxdateedit3.date:=date-1;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclassimp1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassimp1.SpeedButton5Click(Sender: TObject);
var si: integer;
    ss: string[12];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
with qry do
begin
    if active then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select dtl_id,a.bod_id,a.bod_cd,e.med_code,e.med_name,e.material_code,e.material_code1,e.specifi,c.mate_name,mate_name1=g.mate_name,a.agent_id,agent=d.mate_name,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' a.cate_id,a.busi_type,b.lead_id,leader=dbo.fn_staff_name(k.sta_id),b.bod_cd1,b.bod_cd2,b.bod_cd3,';
    commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,';
    commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
    commandtext:=commandtext+' a.prod_line_id,prod_line=dbo.fn_obj_desc(a.prod_line_id),a.sale_team_id,sale_team=dbo.fn_obj_desc(a.sale_team_id),';
    commandtext:=commandtext+' b.price1,price9=0.0000,broker=f.zname,';
//    commandtext:=commandtext+' price9=dbo.fn_getbidprice9(a.dst_id,b.med_id,a.carry_dt),broker=f.zname,';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(e.unit_id),e.pdt_place,b.bat_cd,b.price,b.qty,b.amot,b.amot1,b.amot2,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine e on b.med_id=e.med_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate g on a.src_id=g.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
//    commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+'  left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join tb_busiframe k on b.med_id=k.med_id and a.district_id =k.district_id'; // and dbo.fn_ischildnode(c.district,k.district_id)=1'; // and d.district =k.district_id';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.cate_id=2';  // a.comp_id='+inttostr(compid)+' and
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    if Trim(dxEdit1.text)<>'' then
    begin
        ss:=trim(dxEdit1.text);
        commandtext:=commandtext+' and a.bod_cd like ''%'+ss+'%''';
    end
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
    end;
    if Trim(dxLookupTreeView2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.district_id=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
//    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';  //依据代理人地区 以限制地区
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+'  order by a.creat_dt,b.dtl_id';
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclassimp1.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure Tqryclassimp1.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassimp1.N3Click(Sender: TObject);
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

procedure Tqryclassimp1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassimp1.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
setprogress(0);
end;

procedure Tqryclassimp1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassimp1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
end;
{
if (AColumn = dxDBGrid1Ccate_id) then
begin
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tqryclassimp1.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type').asinteger of
//        1: fieldbyname('cbusitype').asstring:='采购';
        1: fieldbyname('cbusitype').asstring:='标准订单';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate_id').asstring:='商业';
        2: fieldbyname('ccate_id').asstring:='分销';
    end;
    if (fieldbyname('price9').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price9').asfloat;
//    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    if fieldbyname('amot2').asfloat<>0 then fieldbyname('camot1').asfloat:=fieldbyname('amot2').asfloat
        else fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
end;
end;

procedure Tqryclassimp1.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
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

procedure Tqryclassimp1.dxDBGrid1DblClick(Sender: TObject);
begin
fbodid:= qry.fieldbyname('bod_id').asinteger;
//showmessage(inttostr(fbodid));
//fbodtypeid:= qry.fieldbyname('bod_type_id').asinteger;
if fbodid=0 then exit;
(Sender as TComponent).Tag:=128;
MainForm.View(Sender);
end;

procedure Tqryclassimp1.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryclassimp1.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryclassimp1.SpeedButton1Click(Sender: TObject);
var ss,sc: string;
begin
if dxDateEdit3.Text='' then raise Exception.Create('请选择发生日期');
if dxLookupTreeView1.Text='' then raise Exception.Create('请选择地区');
ss:='确定发送以下资料给相关代理人'+#13#10+'------------------------------';
ss:=ss+#13#10+dxDateEdit3.Text+' '+dxLookupTreeView1.Text+' '+dxButtonEdit4.Text;
if MessageBox(0,pchar(ss),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select distinct a.agent_id,agent=d.mate_name,d.phone,bod_cd2= dbo.fn_getdtlbodcd2('+dm.district.fieldbyname('rec_id').asstring+',a.agent_id,'+inttostr(curuserid)+','''+dxDateEdit3.text+''','''+dxDateEdit3.text+''')';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_busimate d on a.agent_id=d.mate_id and d.phone >''''';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.cate_id=2';
    commandtext:=commandtext+'  and a.carry_dt>= '''+dxDateEdit3.text+''' and a.carry_dt< dateadd(day,1,'''+dxDateEdit3.text+''')';
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
    commandtext:=commandtext+'  and a.creat_by='+inttostr(curuserid);
    commandtext:=commandtext+'  and exists (select 1 from tb_bill_dtl b where a.bod_id=b.bod_id and b.bod_cd2>'''')';
    commandtext:=commandtext+'  and exists (select 1 from tb_treedata t where a.district_id=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))';
//    commandtext:=commandtext+'  and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')>0';
//edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if recordcount=0 then raise Exception.Create('无此范围数据');
    finally
        setprogress(0);
    end;
    first;
    while not eof do
    begin
        if (length(fieldbyname('phone').asstring) in [11]) and (copy(fieldbyname('phone').asstring,1,1)='1') then // 有效手机号  长度11,第一位为'1'
        begin
            sc:='尊敬的客户，您的货物已于'+dxDateEdit3.Text+'安排出库，物流单号为'+fieldbyname('bod_cd2').asstring+'，由';
            if (dm.district.FieldByName('rec_id').asinteger=31) or (dm.district.FieldByName('parnet').asinteger=31)  //广东省内
                then sc:=sc+'广州威盛'
                else sc:=sc+'深圳金大';
            sc:=sc+'物流承运，请留意物流电话通知，如有疑问，请与一品红客服联系';
            if pubqry.active then pubqry.close;
            pubqry.commandtext:='insert into tb_smslist (type_id,creat_dt,creat_by,sta_id,phone_no,sms_text,status_id)';
            pubqry.commandtext:=pubqry.commandtext+' values (2,getdate(),'+inttostr(curuserid)+','+dm.pubqry.fieldbyname('agent_id').asstring+','+dm.pubqry.fieldbyname('phone').asstring+','''+sc+''',2)'; // status_id: 1成功；2待发；3失败
            try
                setprogress(1);
                pubqry.execute;
            finally
                setprogress(0);
            end;
        end;
        next;
    end;
    MessageBox(0,pchar('所选范围资料已发至电信基站，将依次发出'),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tqryclassimp1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
