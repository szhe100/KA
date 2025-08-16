unit Unit202l;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, DateUtils, mycds;

type
  Tsetreport29 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape2: TShape;
    Label2: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
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
    Shape3: TShape;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
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
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    dxDBGrid1customer: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1amot2a: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1bonus: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    ImageList: TImageList;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    dxDBGrid1price3: TdxDBGridColumn;
    dxDBGrid1Camot3: TdxDBGridColumn;
    pubqry: TClientDataSet;
    dxDBGrid1mate_name: TdxDBGridColumn;
    Shape4: TShape;
    Label3: TLabel;
    Label1: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxDBGrid1Cbusitype1: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1rate1: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1Cfee: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Camot5: TdxDBGridColumn;
    dxDBGrid1Camot4: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1Cnotamot2: TdxDBGridColumn;
    dxDBGrid1amot4: TdxDBGridColumn;
    dxDBGrid1Cnotamot4: TdxDBGridColumn;
    dxDBGrid1amot5: TdxDBGridColumn;
    dxDBGrid1Cnotamot5: TdxDBGridColumn;
    dxDBGrid1Camot1a: TdxDBGridColumn;
    dxDBGrid1Cnotamot1: TdxDBGridColumn;
    dxDBGrid1Cf1: TdxDBGridCheckColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1agent_id: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    Edit2: TEdit;
    qrydtl_id: TAutoIncField;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    qrykind_id: TWordField;
    qrycate_id: TWordField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymate_name: TStringField;
    qrycustomer: TStringField;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    qrybod_desc: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrycarry_dt: TDateTimeField;
    qrycreat_dt: TDateTimeField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qryprice3: TBCDField;
    qryCamot3: TFloatField;
    qrybat_cd: TStringField;
    qryamot2a: TBCDField;
    qryrate: TBCDField;
    qrybonus: TBCDField;
    qryCbusitype1: TStringField;
    qryrate1: TBCDField;
    qryCamot1: TBCDField;
    qryCamot1a: TBCDField;
    qryCfee: TBCDField;
    qryCamot2: TBCDField;
    qryCamot4: TBCDField;
    qryCamot5: TBCDField;
    qryamot2: TBCDField;
    qryamot4: TBCDField;
    qryamot5: TBCDField;
    qryCnotamot1: TBCDField;
    qryCnotamot2: TBCDField;
    qryCnotamot4: TBCDField;
    qryCnotamot5: TBCDField;
    qryCf1: TBooleanField;
    qrysta_id: TAutoIncField;
    qrybroker: TStringField;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1sta_id: TdxDBGridColumn;
    Label9: TLabel;
    Shape8: TShape;
    Label10: TLabel;
    dxEdit2: TdxEdit;
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
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
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
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport29: Tsetreport29;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit28, Unit16a, Main;

{$R *.DFM}

procedure Tsetreport29.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tsetreport29.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport29.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport29.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport29.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport29.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport29.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,a.src_id,a.dst_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,'; //cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=case when j.mate_type_id=1 then j.mate_name else '''' end,'; //customer=j.mate_name,';
    commandtext:=commandtext+' mate_name=dbo.fn_mate_name(a.src_id),';
//	commandtext:=commandtext+' cate_id1=dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
    commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt,';
    commandtext:=commandtext+' a.cate_id,j.kind_id,a.agent_id,agent='''',b.sta_id,broker=dbo.fn_staff_name(b.sta_id),a.busi_type,b.price,b.price3,b.qty,'; //b.discount,';
//    commandtext:=commandtext+' a.cate_id,j.kind_id,agent_id=isnull(a.agent_id,0),agent=dbo.fn_mate_name(a.agent_id),a.busi_type,b.price,b.price3,b.qty,'; //b.discount,';
    commandtext:=commandtext+' amot=cast(b.price*b.qty as decimal(15,2)),amot2a=k.amot,k.rate,k.bonus,';
    commandtext:=commandtext+' rate1=dbo.fn_getsysrulef2(a.src_id,a.dst_id,b.med_id,a.carry_dt),';
//    commandtext:=commandtext+' rate1=dbo.fn_getsysrulef1b(a.src_id,a.dst_id,b.med_id,a.carry_dt),';
    commandtext:=commandtext+' b.bat_cd,e.amot2,f.amot4,g.amot5'; //,broker=dbo.fn_staff_name(b.sta_id)'; //,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
//    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id and j.mate_type_id=1';
	commandtext:=commandtext+' left join tb_busiframe8 k on k.rec_id=dbo.fn_getbusiframerecid8a(b.med_id,a.carry_dt,b.price3)';
//	commandtext:=commandtext+' inner join tb_busiframe8 k on k.rec_id=dbo.fn_getbusiframerecid8(b.med_id,a.carry_dt)';
    // notice: here use inner that means only use meds in tb_busiframe8 table
	commandtext:=commandtext+' left join (select dtl_id=b.med_id,amot2=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=54 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) e on b.dtl_id=e.dtl_id';
	commandtext:=commandtext+' left join (select dtl_id=b.med_id,amot4=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=55 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) f on b.dtl_id=f.dtl_id';
	commandtext:=commandtext+' left join (select dtl_id=b.med_id,amot5=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=56 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) g on b.dtl_id=g.dtl_id';
    commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id='+inttostr(compid);
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and e.amot2<>0 and e.amot2=k.amot*b.qty';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and k.amot*b.qty<>0 and isnull(e.amot2,0)<>k.amot*b.qty';
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and f.amot4<>0 and f.amot4=(b.price3*b.qty*isnull(k.rate,100)/100 - isnull(k.amot*b.qty,0) - isnull(b.price3*b.qty*dbo.fn_getsysrulef1b(a.src_id,a.dst_id,b.med_id,a.carry_dt)/100,0) )';
    if RadioGroup2.ItemIndex=2 then
    begin
    	commandtext:=commandtext+'  and b.price3*b.qty*isnull(k.rate,100)/100 - isnull(k.amot*b.qty,0) - isnull(b.price3*b.qty*dbo.fn_getsysrulef1b(a.src_id,a.dst_id,b.med_id,a.carry_dt)/100,0)<>0';
        commandtext:=commandtext+'  and isnull(f.amot4,0)<>(b.price3*b.qty*isnull(k.rate,100)/100 - isnull(k.amot*b.qty,0) - isnull(b.price3*b.qty*dbo.fn_getsysrulef1b(a.src_id,a.dst_id,b.med_id,a.carry_dt)/100,0) )';
    end;
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and g.amot5<>0 and g.amot5=k.bonus*b.qty';
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and k.bonus*b.qty<>0 and isnull(g.amot5,0)<>k.bonus*b.qty';
{
    //应收二次返款 = 应收返入金额-应收固定金额-托管费
    fieldbyname('Camot4').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot2').asfloat-fieldbyname('Cfee').asfloat;
    //商业金额 =（商业价*返款比率）*数量
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
    //托管费 = 商业价*托管率/100*数量
    fieldbyname('Cfee').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate1').asfloat/100;

    //应收返入金额 =（商业价*返款比率）*数量
    fieldbyname('Camot1').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate').asfloat/100;
    //实收返入金额 = 实收固定金额+托管费+实收二次返款
    fieldbyname('Camot1a').asfloat:=fieldbyname('amot2').asfloat+fieldbyname('amot4').asfloat+fieldbyname('Cfee').asfloat;
    //未收返入金额
    fieldbyname('Cnotamot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot1a').asfloat;

    fieldbyname('Cf1').asboolean:=(fieldbyname('Camot1').asfloat<>0) and (fieldbyname('Camot1').asfloat=fieldbyname('Camot1a').asfloat);

    //应收固定金额 = 固定金额/盒*数量
    fieldbyname('Camot2').asfloat:=fieldbyname('amot2a').asfloat*fieldbyname('qty').asfloat;
    //应收达成奖
    fieldbyname('Camot5').asfloat:=fieldbyname('bonus').asfloat*fieldbyname('qty').asfloat;
}

    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and k.amot*b.qty<>0 and k.amot*b.qty<>isnull(e.amot2,0)';
    if Trim(dxEdit1.text)<>'' then
    begin
        if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
            else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
    end
    else
    begin
		commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+'  and d.med_name like ''%'+Trim(dxEdit2.text)+'%''';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport29.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport29.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport29.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit1.selectall;
    dxEdit1.setfocus;
end;
end;

procedure Tsetreport29.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport29.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport29.N3Click(Sender: TObject);
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

procedure Tsetreport29.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport29.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1sta_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
setprogress(0);
end;

procedure Tsetreport29.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1sta_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport29.dxDBGrid1CustomDrawCell(Sender: TObject;
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
{
        AColor := clred;
        AFont.Color := clwhite;
}
    end;
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
//        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
//        AFont.Color := clblack;
    end;
end;
if (AColumn = dxDBGrid1Cbusitype1) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype1.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype1.Index] = '商业流向') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype1.Index] = '调拨') then
    begin
        AColor := $00EDD0EE;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1amot2a) then
begin
    if (ANode.Strings[dxDBGrid1amot2a.Index] = '') then
    begin
        AColor := $00FDE0FE;
    end;
end;
if (AColumn = dxDBGrid1bonus) then
begin
    if (ANode.Strings[dxDBGrid1bonus.Index] = '') then
    begin
        AColor := $00FDE0FE;
    end;
end;
if (AColumn = dxDBGrid1rate) then
begin
    if (ANode.Strings[dxDBGrid1rate.Index] = '') then
    begin
        AColor := $00FDE0FE;
    end;
end;
if (AColumn = dxDBGrid1Cf1) then
begin
    if (ANode.Strings[dxDBGrid1Cf1.Index] = 'True') then AColor := clgreen;
end;
end;

procedure Tsetreport29.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1profit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1prate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

procedure Tsetreport29.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调退';
        4: fieldbyname('cbusitype').asstring:='调销';
    end;
    if fieldbyname('cate_id').asinteger=1 then
    begin
        if fieldbyname('kind_id').asinteger=4
            then fieldbyname('cbusitype1').asstring:='调拨'
            else fieldbyname('cbusitype1').asstring:='商业流向';
    end
    else fieldbyname('cbusitype1').asstring:='分销';

    //商业金额 =（商业价*返款比率）*数量
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
    //托管费 = 商业价*托管率/100*数量
    fieldbyname('Cfee').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate1').asfloat/100;

    //应收返入金额 =（商业价*返款比率）*数量
    fieldbyname('Camot1').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate').asfloat/100;
    //实收返入金额 = 实收固定金额+托管费+实收二次返款
    fieldbyname('Camot1a').asfloat:=fieldbyname('amot2').asfloat+fieldbyname('amot4').asfloat+fieldbyname('Cfee').asfloat;
    //未收返入金额
    fieldbyname('Cnotamot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot1a').asfloat;

    fieldbyname('Cf1').asboolean:=(fieldbyname('Camot1').asfloat<>0) and (fieldbyname('Camot1').asfloat=fieldbyname('Camot1a').asfloat);

    //应收固定金额 = 固定金额/盒*数量
    fieldbyname('Camot2').asfloat:=fieldbyname('amot2a').asfloat*fieldbyname('qty').asfloat;

    //应收二次返款 = 应收返入金额-应收固定金额-托管费
    fieldbyname('Camot4').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot2').asfloat-fieldbyname('Cfee').asfloat;

    //应收达成奖
    fieldbyname('Camot5').asfloat:=fieldbyname('bonus').asfloat*fieldbyname('qty').asfloat;

    //未收固定金额
    fieldbyname('Cnotamot2').asfloat:=fieldbyname('Camot2').asfloat-fieldbyname('amot2').asfloat;
    //未收二次返款
    fieldbyname('Cnotamot4').asfloat:=fieldbyname('Camot4').asfloat-fieldbyname('amot4').asfloat;
    //未收达成奖
    fieldbyname('Cnotamot5').asfloat:=fieldbyname('Camot5').asfloat-fieldbyname('amot5').asfloat;

{
	case fieldbyname('cate_id1').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
}
end;
end;

procedure Tsetreport29.dxDBGrid1DblClick(Sender: TObject);
begin
fbodid:= qry.fieldbyname('bod_id').asinteger;
//fbodtypeid:= qry.fieldbyname('bod_type_id').asinteger;
if fbodid=0 then exit;
(Sender as TComponent).Tag:=136;
//if (fbodtypeid=2) then (Sender as TComponent).Tag:=11;
MainForm.View(Sender);
//refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id',qry.fieldbyname('bod_id').asinteger)
end;

procedure Tsetreport29.N7Click(Sender: TObject);
var i,mi,mateid,mateid1,staid,l,m,n,rcnt: integer;
    f1,f2,f3,f4,f5: integer;
    s,t: string;
    mcd: string[20];
    mamt:real;
    Arr0: array of integer;
	Arr1: array of real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+'--------------------------------------------';  t:='';
mi:=0;   mamt:=0;
SetLength(Arr0, dxDBGrid1.SelectedCount);
SetLength(Arr1, dxDBGrid1.SelectedCount);
rcnt:= dxDBGrid1.SelectedCount;
if dxDBGrid1.SelectedCount<2 then
begin
//    if (qry.fieldbyname('Cnotamot2').asfloat=0) then
    if (qry.fieldbyname('Cnotamot2').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Cnotamot2').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
        mamt:=qry.fieldbyname('Cnotamot2').asfloat;
        Arr0[0]:=qry.fieldbyname('dtl_id').asinteger;
        Arr1[0]:=qry.fieldbyname('Cnotamot2').asfloat;
        mi:=1;
    end;
end
else
begin
    l := dxDBGrid1.ColumnByFieldName('src_id').Index;
    m := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('sta_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Cnotamot2').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//        if (dxDBGrid1.SelectedNodes[i].values[f5]=0) then
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
{
            if mi=0 then
            begin
//                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
//                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                staid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
//                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
//                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if staid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务员的单据');
            end;
}
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            Arr0[i]:=dxDBGrid1.SelectedNodes[i].values[f4];
            Arr1[i]:=dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可生成收款记录(需有未收固定金额)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select distinct a.src_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同供货单位','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select distinct a.dst_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的商业公司','请注意',MB_OK+MB_ICONError);
        abort;
	end;
}
{
    if active=True then close;
    commandtext:='select distinct b.sta_id from tb_bill_dtl b where b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一次核销不可包含不同的业务员','请注意',MB_OK+MB_ICONError);
        abort;
	end;
}
{
    if active=True then close;
    commandtext:='select distinct a.agent_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的代理人','请注意',MB_OK+MB_ICONError);
        abort;
	end;
}
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=54 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的收款单。请先将其审核完成或取消后，再生成新收款单'+#13+#10+'----------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'收款单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

if messagedlg('由下列单据品种生成固定应收收款单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:= formatfloat('00000000',getbillid(compid,54));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',54,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    for i:=0 to rcnt-1 do
    begin
    	if i>0 then commandtext:=commandtext+' union all ';
		commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,'+floattostr(arr1[i])+','+floattostr(arr1[i])+' from tb_bill_dtl where dtl_id='+inttostr(arr0[i]);
    end;
{
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(b.price1*b.qty-isnull(b.ckd_amot1,0)),(b.price1*b.qty-isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill_dtl b where b.dtl_id in ('+t+') order by b.bod_id,b.dtl_id'; //转出时，批发价存入 discount字段
}
//    commandtext:=commandtext+' update a set cate_id=c.cate_id from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
//    commandtext:=commandtext+'  where a.bod_id='+inttostr(mi)+' and a.bod_id=b.bod_id and b.med_id=d.dtl_id and c.bod_id=d.bod_id';
edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号固定应收收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport29.N8Click(Sender: TObject);
var i,mi,mateid,mateid1,staid,l,m,n,rcnt: integer;
    f1,f2,f3,f4,f5: integer;
    s,t: string;
    mcd: string[20];
    mamt:real;
    Arr0: array of integer;
	Arr1: array of real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+'--------------------------------------------';  t:='';
mi:=0;   mamt:=0;
SetLength(Arr0, dxDBGrid1.SelectedCount);
SetLength(Arr1, dxDBGrid1.SelectedCount);
rcnt:= dxDBGrid1.SelectedCount;
if dxDBGrid1.SelectedCount<2 then
begin
//    if (qry.fieldbyname('Cnotamot4').asfloat=0) then
    if (qry.fieldbyname('Cnotamot4').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Cnotamot4').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
        mamt:=qry.fieldbyname('Cnotamot4').asfloat;
        Arr0[0]:=qry.fieldbyname('dtl_id').asinteger;
        Arr1[0]:=qry.fieldbyname('Cnotamot4').asfloat;
        mi:=1;
    end;
end
else
begin
    l := dxDBGrid1.ColumnByFieldName('src_id').Index;
    m := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('sta_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Cnotamot4').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//        if (dxDBGrid1.SelectedNodes[i].values[f5]=0) then
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
{
            if mi=0 then
            begin
//                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
//                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                staid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
//                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
//                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if staid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务员的单据');
            end;
}
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            Arr0[i]:=dxDBGrid1.SelectedNodes[i].values[f4];
            Arr1[i]:=dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可生成收款记录(需有未收款金额)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select distinct a.src_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同供货单位','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select distinct a.dst_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的商业公司','请注意',MB_OK+MB_ICONError);
        abort;
	end;
}
    if active=True then close;
    commandtext:='select distinct a.agent_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的代理人','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=54 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的收款单。请先将其审核完成或取消后，再生成新收款单'+#13+#10+'----------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'收款单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

if messagedlg('由下列单据品种生成应收二次收款单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:= formatfloat('00000000',getbillid(compid,55));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',55,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    for i:=0 to rcnt-1 do
    begin
    	if i>0 then commandtext:=commandtext+' union all ';
		commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,'+floattostr(arr1[i])+','+floattostr(arr1[i])+' from tb_bill_dtl where dtl_id='+inttostr(arr0[i]);
    end;
{
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(b.price1*b.qty-isnull(b.ckd_amot1,0)),(b.price1*b.qty-isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill_dtl b where b.dtl_id in ('+t+') order by b.bod_id,b.dtl_id'; //转出时，批发价存入 discount字段
}
//    commandtext:=commandtext+' update a set cate_id=c.cate_id from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
//    commandtext:=commandtext+'  where a.bod_id='+inttostr(mi)+' and a.bod_id=b.bod_id and b.med_id=d.dtl_id and c.bod_id=d.bod_id';
edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号应收二次收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport29.N10Click(Sender: TObject);
var i,mi,mateid,mateid1,staid,l,m,n,rcnt: integer;
    f1,f2,f3,f4,f5: integer;
    s,t: string;
    mcd: string[20];
    mamt:real;
    Arr0: array of integer;
	Arr1: array of real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+'--------------------------------------------';  t:='';
mi:=0;   mamt:=0;
SetLength(Arr0, dxDBGrid1.SelectedCount);
SetLength(Arr1, dxDBGrid1.SelectedCount);
rcnt:= dxDBGrid1.SelectedCount;
if dxDBGrid1.SelectedCount<2 then
begin
//    if (qry.fieldbyname('Cnotamot5').asfloat=0) then
    if (qry.fieldbyname('Cnotamot5').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Cnotamot5').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
        mamt:=qry.fieldbyname('Cnotamot5').asfloat;
        Arr0[0]:=qry.fieldbyname('dtl_id').asinteger;
        Arr1[0]:=qry.fieldbyname('Cnotamot5').asfloat;
        mi:=1;
    end;
end
else
begin
    l := dxDBGrid1.ColumnByFieldName('src_id').Index;
    m := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('sta_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Cnotamot5').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//        if (dxDBGrid1.SelectedNodes[i].values[f5]=0) then
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
{
            if mi=0 then
            begin
//                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
//                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                staid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if staid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务员的单据');
            end;
}
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            Arr0[i]:=dxDBGrid1.SelectedNodes[i].values[f4];
            Arr1[i]:=dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可生成收款记录(需有未收款金额)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select distinct a.src_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同供货单位','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select distinct a.dst_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的商业公司','请注意',MB_OK+MB_ICONError);
        abort;
	end;
}
    if active=True then close;
    commandtext:='select distinct a.agent_id from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    open;
    if recordcount>1 then
    begin
        MessageBox(0, '同一单据中不可包含不同的代理人','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=54 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的收款单。请先将其审核完成或取消后，再生成新收款单'+#13+#10+'----------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'收款单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

if messagedlg('由下列单据品种生成达成奖收款单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:= formatfloat('00000000',getbillid(compid,56));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',56,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    for i:=0 to rcnt-1 do
    begin
    	if i>0 then commandtext:=commandtext+' union all ';
		commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,'+floattostr(arr1[i])+','+floattostr(arr1[i])+' from tb_bill_dtl where dtl_id='+inttostr(arr0[i]);
    end;
{
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(b.price1*b.qty-isnull(b.ckd_amot1,0)),(b.price1*b.qty-isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill_dtl b where b.dtl_id in ('+t+') order by b.bod_id,b.dtl_id'; //转出时，批发价存入 discount字段
}
//    commandtext:=commandtext+' update a set cate_id=c.cate_id from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
//    commandtext:=commandtext+'  where a.bod_id='+inttostr(mi)+' and a.bod_id=b.bod_id and b.med_id=d.dtl_id and c.bod_id=d.bod_id';
edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号达成奖收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport29.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport29.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport29.dxEdit2Click(Sender: TObject);
begin
dxEdit2.selectall;
dxEdit2.setfocus;
end;

procedure Tsetreport29.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit2.selectall;
    dxEdit2.setfocus;
end;
end;

end.
