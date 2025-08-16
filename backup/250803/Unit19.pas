unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, DateUtils, mycds;

type
  Tqryclasscheckstock = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrycreat_dt: TDateTimeField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrycost: TBCDField;
    qrybat_cd: TStringField;
    qrybroker: TStringField;
    qrycreater: TStringField;
    qrydtl_id: TAutoIncField;
    qrybod_cd: TStringField;
    Shape3: TShape;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    qrycarry_dt: TDateTimeField;
    dxButtonEdit4: TdxButtonEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    RadioGroup1: TRadioGroup;
    qrybod_desc: TStringField;
    qrydiscount: TBCDField;
    qrybusi_type: TIntegerField;
    ADOQuery1mate_id1: TAutoIncField;
    ADOQuery1mate_id2: TAutoIncField;
    ADOQuery1mate_id3: TAutoIncField;
    ADOQuery1mate_id4: TAutoIncField;
    ADOQuery1mate_id5: TAutoIncField;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1mate_name2: TStringField;
    ADOQuery1mate_name3: TStringField;
    ADOQuery1mate_name4: TStringField;
    ADOQuery1mate_name5: TStringField;
    qrymate_id1: TAutoIncField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1material_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrybod_status_id: TIntegerField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    ImageList: TImageList;
    Timer1: TTimer;
    Edit1: TEdit;
    dxPickEdit1: TdxPickEdit;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    pubqry: TClientDataSet;
    qrymate_name: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    Label11: TLabel;
    dxEdit2: TdxEdit;
    dxEdit3: TdxEdit;
    dxEdit5: TdxEdit;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    qrymaterial_code1: TStringField;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    dxDBGrid1Ccate: TdxDBGridColumn;
    qrymaterial_code: TStringField;
    Shape2: TShape;
    Label2: TLabel;
    dxEdit4: TdxEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclasscheckstock: Tqryclasscheckstock;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit16a, Unit28, Main;

{$R *.DFM}

procedure Tqryclasscheckstock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tqryclasscheckstock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclasscheckstock.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclasscheckstock.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclasscheckstock.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclasscheckstock.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
//dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tqryclasscheckstock.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('查询日期范围不可超过180天');
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
    y2:=yearof(dxDateEdit2.Date);
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        commandtext:=commandtext+' union all select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
edit1.text:=commandtext;
        open;
        if recordcount<2 then raise Exception.Create('查询年度未授权');
    end;
end;
}
with qry do
begin
    if active then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,a.cate_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,'; //cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,';
    commandtext:=commandtext+' b.channel_id,channel=dbo.fn_obj_desc(b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(b.channel_dtl_id),';
    commandtext:=commandtext+' a.dst_id,i.mate_name,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt,';
    commandtext:=commandtext+' a.busi_type,b.price,b.qty,b.discount,amot=cast(b.price*b.qty as decimal(15,2)),';  //b.price3,
    commandtext:=commandtext+' cost=b.cost*b.qty,'; //profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
    commandtext:=commandtext+' b.bat_cd,broker=dbo.fn_staff_name(a.broker_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' left join tb_busimate i on a.dst_id=i.mate_id';
    commandtext:=commandtext+' where a.bod_type_id=10'; // and a.bod_status_id=1';  // a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
    if RadioGroup1.ItemIndex=0 then commandtext:=commandtext+'  and a.bod_status_id in (0,1)';
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
//    if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
//    if RadioGroup1.ItemIndex<2 then commandtext:=commandtext+'  and a.bod_status_id='+inttostr(RadioGroup1.ItemIndex);
//    commandtext:=commandtext+'  and dbo.fn_inmate(a.src_id,'+inttostr(curuserid)+')=1 and dbo.fn_inmed(b.med_id,'+inttostr(curuserid)+')=1';
    if Trim(dxEdit1.text)<>'' then
    begin
        if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
            else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
    end
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.broker_id='+inttostr(dxbuttonedit4.tag);
    end;
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate b where a.dst_id=b.mate_id and (try_cast('''+Trim(dxEdit2.text)+''' as int) is not null and b.mate_id='''+Trim(dxEdit2.text)+''' or b.mate_name like ''%'+Trim(dxEdit2.text)+'%'' or b.qry_code like ''%'+Trim(dxEdit2.text)+'%''))';
    if Trim(dxEdit3.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_staff c where a.broker_id=c.sta_id and (c.zname like ''%'+Trim(dxEdit3.text)+'%'' or c.qry_code like ''%'+Trim(dxEdit3.text)+'%''))';
    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=b.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
    if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id=b.med_id and n.material_code like '''+Trim(dxEdit4.text)+'%'')';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
//    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
//    commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclasscheckstock.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryclasscheckstock.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tqryclasscheckstock.dxEdit1Click(Sender: TObject);
begin
with (Sender as TdxEdit) do
begin
    selectall;
    setfocus;
end;
end;

procedure Tqryclasscheckstock.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
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

procedure Tqryclasscheckstock.FormActivate(Sender: TObject);
begin
{
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
}
end;

procedure Tqryclasscheckstock.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryclasscheckstock.N3Click(Sender: TObject);
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

procedure Tqryclasscheckstock.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclasscheckstock.N2Click(Sender: TObject);
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

procedure Tqryclasscheckstock.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclasscheckstock.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
{
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调退';
        4: fieldbyname('cbusitype').asstring:='调销';
    end;
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
}
{
	case fieldbyname('mate_type_id').asinteger of  // mate_type_id=1: 医院     mate_type_id=2: 经销商
		1: fieldbyname('ctype').asstring:='纯销';
		2: fieldbyname('ctype').asstring:='调拨';
    end;
}
end;
end;

procedure Tqryclasscheckstock.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
    end;
end;
if (AColumn = dxDBGrid1Cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1Cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1Ctype) then
begin
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '纯销') then
    begin
        AColor := $00FFFEDF;
    end;
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '调拨') then
    begin
        AColor := $00D2FFFD;
    end;
end;
}
end;

procedure Tqryclasscheckstock.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
end;

end.
