unit Unit201d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, StdCtrls,
  ExtCtrls, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, dxDBELib, dxdbtrel,
  ImgList, shellapi;

type
  Tqryclassimp4 = class(TForm)
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
    qrydtl_id: TAutoIncField;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrybat_cd: TStringField;
    ADOQuery1: TADOQuery;
    dxDBGrid1Cbod_status: TdxDBGridColumn;
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
    qryCrate: TFloatField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrylead_id: TAutoIncField;
    qryleader: TStringField;
    qrymate_name: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    qrybod_cd1: TStringField;
    Edit1: TEdit;
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
    dxDBGrid1price1: TdxDBGridColumn;
    qryCamot1: TFloatField;
    dxDBGrid1Camot1: TdxDBGridColumn;
    ImageList: TImageList;
    pubqry: TClientDataSet;
    dxLookupTreeView1: TdxLookupTreeView;
    Label10: TLabel;
    Shape5: TShape;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    qrybod_type_id: TIntegerField;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    qrymate_name1: TStringField;
    qryprice1: TBCDField;
    qryprice2: TBCDField;
    qryCamot2: TBCDField;
    dxDBGrid1zname1: TdxDBGridColumn;
    dxDBGrid1phone1: TdxDBGridColumn;
    dxDBGrid1address1: TdxDBGridColumn;
    dxDBGrid1zname2: TdxDBGridColumn;
    dxDBGrid1phone2: TdxDBGridColumn;
    dxDBGrid1address2: TdxDBGridColumn;
    qryzname1: TStringField;
    qryaddress1: TStringField;
    qryphone1: TStringField;
    qryzname2: TStringField;
    qryaddress2: TStringField;
    qryphone2: TStringField;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridColumn;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    qrymailed: TBooleanField;
    dxDBGrid1mailed: TdxDBGridCheckColumn;
    qrybod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qryqty2: TBCDField;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    dxDBGridColumn10: TdxDBGridColumn;
    dxDBGridColumn12: TdxDBGridColumn;
    dxDBGridColumn13: TdxDBGridColumn;
    dxDBGridColumn14: TdxDBGridColumn;
    dxDBGridColumn15: TdxDBGridColumn;
    dxDBGridColumn16: TdxDBGridColumn;
    dxDBGridColumn17: TdxDBGridColumn;
    dxDBGridColumn20: TdxDBGridColumn;
    dxDBGridColumn21: TdxDBGridColumn;
    dxDBGridColumn22: TdxDBGridColumn;
    dxDBGridColumn23: TdxDBGridColumn;
    dxDBGridColumn24: TdxDBGridColumn;
    dxDBGridColumn25: TdxDBGridColumn;
    dxDBGridColumn26: TdxDBGridColumn;
    dxDBGridColumn27: TdxDBGridColumn;
    dxDBGridColumn28: TdxDBGridColumn;
    dxDBGridColumn29: TdxDBGridColumn;
    dxDBGridColumn30: TdxDBGridColumn;
    qryEmail: TStringField;
    dxDBGrid1Email: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    qry1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    AutoIncField2: TAutoIncField;
    StringField7: TStringField;
    StringField8: TStringField;
    AutoIncField3: TAutoIncField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    FloatField1: TFloatField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    StringField20: TStringField;
    StringField21: TStringField;
    WordField1: TWordField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    FloatField2: TFloatField;
    BCDField7: TBCDField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    DSqry1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qryimage: TClientDataSet;
    qryimagerec_id: TAutoIncField;
    qryimagetype_id: TIntegerField;
    qryimageid: TIntegerField;
    qryimagezimage1: TBlobField;
    qryimagegraphclass1: TStringField;
    qryimagezimage2: TBlobField;
    qryimagegraphclass2: TStringField;
    qryimagezimage3: TBlobField;
    qryimagegraphclass3: TStringField;
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    DSqryimage: TDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
    Label12: TLabel;
    Label5: TLabel;
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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassimp4: Tqryclassimp4;

implementation

uses datamodu, Unit16a, Unit7, Unit16c; //, Unit7, Unit16a, Unit16c, Main;

{$R *.DFM}

procedure Tqryclassimp4.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tqryclassimp4.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassimp4.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassimp4.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryclassimp4.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
//dxdateedit3.date:=date-1;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclassimp4.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassimp4.SpeedButton5Click(Sender: TObject);
var si: integer;
    ss: string[12];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.bod_desc,e.med_code,e.med_name,e.specifi,c.mate_name,mate_name1=h.mate_name,h.email,a.agent_id,agent=d.mate_name,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (d.district,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (d.district,2),';
    commandtext:=commandtext+' mailed=cast(case when exists (select 1 from tb_maillist where type_id=1 and id=a.bod_id) then 1 else 0 end as bit),';  
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' a.cate_id,a.busi_type,b.lead_id,leader=dbo.fn_staff_name(k.sta_id),b.bod_cd1,b.bod_cd2,';
    commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,';
    commandtext:=commandtext+' b.price1,b.price2,broker=f.zname,c.zname1,c.phone1,c.address1,c.zname2,c.phone2,c.address2,';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(e.unit_id),e.pdt_place,b.bat_cd,b.price,b.qty,b.qty2,b.amot,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine e on b.med_id=e.med_id';
    commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+'  left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where a.bod_type_id in (39,41)';  // a.comp_id='+inttostr(compid)+' and
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_type_id=41';
    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_type_id=39';
    if Trim(dxEdit1.text)<>'' then
    begin
        ss:=trim(dxEdit1.text);
        commandtext:=commandtext+' and a.bod_cd like ''%'+ss+'%''';
    end
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
    end;
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where d.district=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
//	if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';  //依据代理人地区 以限制地区
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+'  order by a.creat_dt,b.dtl_id';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclassimp4.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryclassimp4.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassimp4.N3Click(Sender: TObject);
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

procedure Tqryclassimp4.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassimp4.N2Click(Sender: TObject);
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

procedure Tqryclassimp4.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassimp4.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1Cbod_status.Index] = '完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
        AColor := clred;
        AFont.Color := clwhite;
    end;
end;
}
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1mailed) then
begin
    if (ANode.Strings[dxDBGrid1mailed.Index] = 'True') then
    begin
        AColor := $0040D04F;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqryclassimp4.qryCalcFields(DataSet: TDataSet);
begin
with (DataSet as TClientDataSet) do
//with qry do
begin
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='采购';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    case fieldbyname('bod_type_id').asinteger of
        39: fieldbyname('ccate').asstring:='分销';
        41: fieldbyname('ccate').asstring:='商业';
    end;
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='申请';
        1: fieldbyname('cbod_status').asstring:='完成';
        2: fieldbyname('cbod_status').asstring:='待审核';
    end;
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
{
    if (fieldbyname('price9').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price9').asfloat;
}
end;
end;

procedure Tqryclassimp4.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
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

procedure Tqryclassimp4.dxDBGrid1DblClick(Sender: TObject);
begin
{
fbodid:= qry.fieldbyname('bod_id').asinteger;
//showmessage(inttostr(fbodid));
//fbodtypeid:= qry.fieldbyname('bod_type_id').asinteger;
if fbodid=0 then exit;
(Sender as TComponent).Tag:=128;
MainForm.View(Sender);
}
end;

procedure Tqryclassimp4.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryclassimp4.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with pickagent do
begin
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
}
end;

procedure Tqryclassimp4.SpeedButton1Click(Sender: TObject);
var st,sm,ss,s0: string;
	i,mi,f1,f2: integer;
    t: string;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无发电子邮件权限');
end;
}
if dxDBGrid1.SelectedCount<1 then raise Exception.Create('请选择需发送邮件的记录(可多选)');

t :=''; mi:=0;
f1:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
f2:= dxDBGrid1.ColumnByFieldName('email').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
	if not RegExpr('[_a-zA-Z\d\-\.]+@[_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+',dxDBGrid1.SelectedNodes[i].Strings[f2]) 
    	then raise Exception.Create('无email地址或地址无效，不可发送邮件');
	t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f1]; // 记录出库单 tb_bill_stadtl.rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
if MessageBox(0,'确定所选记录发送邮件','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//showmessage(t);
setprogress(1);
if dm.pubqry.active=True then dm.pubqry.close;
pubqry.commandtext:='select distinct a.src_id,c.mate_name,c.email from tb_bill a,tb_busimate c where a.bod_id in ('+t+') and a.src_id=c.mate_id order by a.src_id';
pubqry.open;
pubqry.first;
while not pubqry.eof do
begin

    with qry1 do
    begin
        if active=True then close;
        commandtext:='select dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.bod_desc,e.med_code,e.med_name,e.specifi,c.mate_name,mate_name1=h.mate_name,h.email,a.agent_id,agent=d.mate_name,';
        commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (d.district,1),';
        commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (d.district,2),';
//        commandtext:=commandtext+' mailed=cast(case when exists (select 1 from tb_maillist where type_id=1 and id=a.bod_id) then 1 else 0 end as bit),';  
        commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
        commandtext:=commandtext+' a.cate_id,a.busi_type,b.lead_id,leader=dbo.fn_staff_name(k.sta_id),b.bod_cd1,b.bod_cd2,';
        commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,';
        commandtext:=commandtext+' b.price1,b.price2,broker=f.zname,c.zname1,c.phone1,c.address1,c.zname2,c.phone2,c.address2,';
        commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(e.unit_id),e.pdt_place,b.bat_cd,b.price,b.qty,b.qty2,b.amot,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine e on b.med_id=e.med_id';
        commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
        commandtext:=commandtext+' left join tb_busimate c on a.dst_id=c.mate_id';
        commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
        commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
        commandtext:=commandtext+'  left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.src_id='+ pubqry.fieldbyname('src_id').asstring;
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;

        st:=extractfilepath(Application.ExeName);
        s0:=qry1.fieldbyname('mate_name1').asstring+formatdatetime('yymmddhhssnn',srv_date);
//        s0:=formatdatetime('yymmddhhssnn',srv_date)+'_'+ pubqry.fieldbyname('src_id').asstring;
        ss:=st+s0;
//showmessage(ss);
        if not DirectoryExists(ss) then
        begin
            try
		        CreateDir(ss);
            except
                raise Exception.Create('生成文件夹失败'); //+Edit1.Text);
            end;
        end;
//    	showmessage(ss+'\yph流向2.xls');
        dm.Save2(ss+'\yph流向.xls',dxDBGrid2.SaveToXLS); //生成 excel文件
        //以下获取图片文件
        first;
        while not eof do
        begin
        	if qryimage.Active=True then qryimage.close;
            qryimage.CommandText:='select top 1 * from tb_image where type_id=1 and id='+qry1.fieldbyname('bod_id').asstring;
            qryimage.open;
            if qryimage.recordcount>0 then
            begin
            	if qryimage.fieldbyname('zimage1').AsString<>'' then dxDBGraphicEdit1.Picture.saveToFile(ss+'\'+qry1.fieldbyname('bod_cd').asstring+'A.jpg');
            	if qryimage.fieldbyname('zimage2').AsString<>'' then dxDBGraphicEdit2.Picture.saveToFile(ss+'\'+qry1.fieldbyname('bod_cd').asstring+'B.jpg');
            	if qryimage.fieldbyname('zimage3').AsString<>'' then dxDBGraphicEdit3.Picture.saveToFile(ss+'\'+qry1.fieldbyname('bod_cd').asstring+'C.jpg');
            	if qryimage.fieldbyname('zimage4').AsString<>'' then dxDBGraphicEdit4.Picture.saveToFile(ss+'\'+qry1.fieldbyname('bod_cd').asstring+'D.jpg');
            	if qryimage.fieldbyname('zimage5').AsString<>'' then dxDBGraphicEdit5.Picture.saveToFile(ss+'\'+qry1.fieldbyname('bod_cd').asstring+'E.jpg');
			end;
            next;                
        end;
        try
            ShellExecute(Handle,'open','WinRar',PAnsiChar(AnsiString('a -r .\'+s0+'.rar .\'+s0+'\*.*')),nil,SW_HIDE);
        //	ShellExecute(Handle,'open','WinRar','a -r d:\hello.rar d:\hello\*.*',nil,SW_HIDE);
        except
			raise Exception.Create('生成压缩文件失败(请检查是否安装WinRar软件)'); //+Edit1.Text);
        end;
    	Timer1.Enabled:=True;
//    	sm:='szhe100@163.com';
    	sm:=qry1.fieldbyname('email').asstring;
		st:=ss+'.rar';
//showmessage(st);
        try
            SendMSN('YPH发货申请','',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 成功';
			if dm.pubqry.active=True then dm.pubqry.close;
            dm.pubqry.commandtext:='insert into tb_maillist (type_id,id,mail_by,mail_dt)';
            dm.pubqry.commandtext:=dm.pubqry.commandtext+' select 1,bod_id,'+inttostr(curuserid)+',getdate() from tb_bill';
            dm.pubqry.commandtext:=dm.pubqry.commandtext+' where bod_id in ('+t+') and src_id='+ pubqry.fieldbyname('src_id').asstring;
            dm.pubqry.execute;
        except
//            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 失败';
        end;
	end;
	pubqry.next;
end;
Timer1.Enabled:=False;
SpeedButton5Click(nil);
MessageBox(0,pchar('已成功发送邮件'),'请注意',MB_OK+MB_ICONInformation);
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无权限发电子邮件');
    if active=True then close;
    commandtext:='select distinct b.sta_id,broker=dbo.fn_staff_name(b.sta_id),c.email'; //email=dbo.fn_getemailbydtlid(b.dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=2 ';  //  a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and b.sta_id>0 and c.email<>''''';
//    commandtext:=commandtext+'  and b.sta_id>0 and isnull(c.email,'''')<>''''';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
//    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
//    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate j where a.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
//edit1.text:=commandtext;
//abort;
    open;
    if recordcount=0 then raise Exception.Create('此范围内无数据');
    if MessageBox(0,pchar('确定将符合本查询条件的数据发邮件给相关供应商'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    sr:='已发送以下邮件'+#13#10+'--------------------------------------';
//    mi:=0;
    Timer1.Enabled:=True;
    first;
    while not eof do
    begin
        sm:=Trim(fieldbyname('email').asstring);
//        sm:='szhe100@163.com';
        if (sm='') or (pos('@',sm)=0) then
        begin
            next;
            continue;
        end;

//        dxButtonEdit4.Text:=fieldbyname('broker').asstring;
//        dxButtonEdit4.Tag :=fieldbyname('sta_id').asinteger;
        SpeedButton5Click(nil); //refresh
        if qry.RecordCount=0 then
        begin
            next;
            continue;
        end;
        ss:='YPH流向'; //GuidToString(Guid);   //主题
        st:=extractfilepath(Application.ExeName)+ss+'.xls';
        dm.Save2(st,dxDBGrid1.SaveToXLS);
//sm:='szhe100@163.com';   //临时接收邮箱
        try
            SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//新KA邮箱账号：baomushifuwu@vip.163.com
//密码：ljbm28877666
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 成功';
    //ss:文件名; st:文件路径
        except
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 失败';
        end;
        next;
    end;
    Timer1.Enabled:=False;
end;
//dxButtonEdit4.Text:='';
//dxButtonEdit4.Tag :=0;
with qry do if active=True then close;
MessageBox(0,pchar(sr),'请注意',MB_OK+MB_ICONInformation);
}
end;

procedure Tqryclassimp4.Button1Click(Sender: TObject);
begin
try
    SendMSN('YPH流向','','szhe100@163.com','','.\123.rar','baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
    showmessage('成功');
//ss:文件名; st:文件路径
except
    showmessage('失败');
end;
end;

procedure Tqryclassimp4.Button2Click(Sender: TObject);
begin
showmessage(formatdatetime('yymmddhhssnn',srv_date));
end;

procedure Tqryclassimp4.Timer1Timer(Sender: TObject);
//var a,b:PAnsiChar;
var	h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tqryclassimp4.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
