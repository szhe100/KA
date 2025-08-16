unit Unit202m;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, DateUtils, mycds;

type
  Tsetreport30 = class(TForm)
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
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqty: TBCDField;
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
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    ImageList: TImageList;
    Label13: TLabel;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    dxDBGrid1Camot3: TdxDBGridColumn;
    pubqry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Label1: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    qryCamot1: TBCDField;
    dxDBGrid1Camot1: TdxDBGridColumn;
    qryCfee: TBCDField;
    dxDBGrid1Cfee: TdxDBGridColumn;
    qryCamot2: TBCDField;
    qryCamot4: TBCDField;
    qryCamot5: TBCDField;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Camot5: TdxDBGridColumn;
    dxDBGrid1Camot4: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    qryamot2: TBCDField;
    qryamot3: TBCDField;
    qryamot5: TBCDField;
    qryCnotamot2: TBCDField;
    qryCnotamot4: TBCDField;
    qryCnotamot5: TBCDField;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1Cnotamot2: TdxDBGridColumn;
    dxDBGrid1amot4: TdxDBGridColumn;
    dxDBGrid1Cnotamot4: TdxDBGridColumn;
    dxDBGrid1amot5: TdxDBGridColumn;
    dxDBGrid1Cnotamot5: TdxDBGridColumn;
    qryCamot1a: TBCDField;
    qryCnotamot1: TBCDField;
    dxDBGrid1Camot1a: TdxDBGridColumn;
    dxDBGrid1Cnotamot1: TdxDBGridColumn;
    qryCf1: TBooleanField;
    dxDBGrid1Cf1: TdxDBGridCheckColumn;
    Edit2: TEdit;
    qrymed_id: TIntegerField;
    qryCamot3: TBCDField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport30: Tsetreport30;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit28, Unit16a, Main;

{$R *.DFM}

procedure Tsetreport30.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tsetreport30.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport30.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport30.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport30.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport30.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport30.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),';
	commandtext:=commandtext+' qty=sum(qty),';
    commandtext:=commandtext+' amot2=sum(amot2),';
    commandtext:=commandtext+' amot4=sum(amot4),';
    commandtext:=commandtext+' amot5=sum(amot5),';

    commandtext:=commandtext+' Camot1 =sum(cast(price3*qty*rate/100 as decimal(15,2))),';  //应收返入金额 =（商业价*返款比率）*数量

    commandtext:=commandtext+' Cfee =sum(cast(price3*qty*rate1/100 as decimal(15,2))),'; //托管费 = 商业价*托管率/100*数量

//    commandtext:=commandtext+' Camot1a =sum(cast(isnull(amot2,0) + isnull(amot4,0) + isnull(price3*qty*case when isnull(rate1,0)=0 then 100 else rate1 end/100,0) as decimal(15,2))),'; //实收返入金额 = 实收固定金额+托管费+实收二次返款
//    commandtext:=commandtext+' Camot1a =sum(cast(amot2 + amot4 +price3*qty*rate1/100 as decimal(15,2))),'; //实收返入金额 = 实收固定金额+托管费+实收二次返款
    commandtext:=commandtext+' Camot2 =sum(cast(amot2a*qty as decimal(15,2))),'; //应收固定金额 = 固定金额/盒*数量
    commandtext:=commandtext+' Camot3=sum(cast(price3*qty as decimal(15,2))),';  //商业金额
    commandtext:=commandtext+' Camot4 =sum(cast(price3*qty*rate/100 - amot2a*qty - price3*qty*rate1/100 as decimal(15,2))),'; //应收二次返款 = 应收返入金额-应收固定金额-托管费
    commandtext:=commandtext+' Camot5 =sum(cast(bonus*qty as decimal(15,2)))'; //应收达成奖
{
    --未收返入金额
    --Cnotamot1 = b.price3*b.qty*k.rate/100 - (amot2 + amot4 +b.price3*qty*rate1/100),
    //未收固定金额
    fieldbyname('Cnotamot2').asfloat:=fieldbyname('Camot2').asfloat-fieldbyname('amot2').asfloat;
    //未收二次返款
    fieldbyname('Cnotamot4').asfloat:=fieldbyname('Camot4').asfloat-fieldbyname('amot4').asfloat;
    //未收达成奖
    fieldbyname('Cnotamot5').asfloat:=fieldbyname('Camot5').asfloat-fieldbyname('amot5').asfloat;
}

 	commandtext:=commandtext+' from (select b.med_id,b.price,b.price3,b.qty,';
   	commandtext:=commandtext+' amot=cast(b.price*b.qty as decimal(15,2)),';
   	commandtext:=commandtext+' amot2a=k.amot,k.rate,k.bonus,e.amot2,f.amot4,g.amot5,';
   	commandtext:=commandtext+' rate1 = dbo.fn_getsysrulef1b(a.src_id,a.dst_id,b.med_id,a.carry_dt)';
 	commandtext:=commandtext+' 	from tb_bill a';
  	commandtext:=commandtext+'  inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	commandtext:=commandtext+'  inner join tb_busiframe8 k on k.rec_id=dbo.fn_getbusiframerecid8(b.med_id,a.carry_dt)';
	commandtext:=commandtext+'  left join (select dtl_id=b.med_id,amot2=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=54 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) e on b.dtl_id=e.dtl_id';
	commandtext:=commandtext+'  left join (select dtl_id=b.med_id,amot4=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=55 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) f on b.dtl_id=f.dtl_id';
	commandtext:=commandtext+' 	left join (select dtl_id=b.med_id,amot5=sum(cast(amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=56 and a.bod_status_id=1 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.med_id) g on b.dtl_id=g.dtl_id';
    commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id='+inttostr(compid);
    if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
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
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
	commandtext:=commandtext+' ) a,tb_medicine m';
 	commandtext:=commandtext+' where a.med_id=m.med_id';
 	commandtext:=commandtext+' group by a.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place,dbo.fn_obj_desc(m.unit_id)';
 	commandtext:=commandtext+' order by m.med_name,m.specifi,m.pdt_place';

edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport30.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport30.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport30.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport30.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport30.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport30.N3Click(Sender: TObject);
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

procedure Tsetreport30.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport30.N2Click(Sender: TObject);
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

procedure Tsetreport30.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport30.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cf1) then
begin
    if (ANode.Strings[dxDBGrid1Cf1.Index] = 'True') then AColor := clgreen;
end;
end;

procedure Tsetreport30.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport30.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
{
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
}
{
    //商业金额 =（商业价*返款比率）*数量
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
    //托管费 = 商业价*托管率/100*数量
    fieldbyname('Cfee').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate1').asfloat/100;

    //应收返入金额 =（商业价*返款比率）*数量
    fieldbyname('Camot1').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat*fieldbyname('rate').asfloat/100;
    //实收返入金额 = 实收固定金额+托管费+实收二次返款
    fieldbyname('Camot1a').asfloat:=fieldbyname('amot2').asfloat+fieldbyname('amot4').asfloat+fieldbyname('Cfee').asfloat;
    //应收固定金额 = 固定金额/盒*数量
    fieldbyname('Camot2').asfloat:=fieldbyname('amot2a').asfloat*fieldbyname('qty').asfloat;
    //应收二次返款 = 应收返入金额-应收固定金额-托管费
    fieldbyname('Camot4').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot2').asfloat-fieldbyname('Cfee').asfloat;
    //应收达成奖
    fieldbyname('Camot5').asfloat:=fieldbyname('bonus').asfloat*fieldbyname('qty').asfloat;
}
    //实收返入金额 = 实收固定金额+托管费+实收二次返款
    fieldbyname('Camot1a').asfloat:=fieldbyname('amot2').asfloat+fieldbyname('amot4').asfloat+fieldbyname('Cfee').asfloat;
    //未收返入金额
    fieldbyname('Cnotamot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('Camot1a').asfloat;
    //未收固定金额
    fieldbyname('Cnotamot2').asfloat:=fieldbyname('Camot2').asfloat-fieldbyname('amot2').asfloat;
    //未收二次返款
    fieldbyname('Cnotamot4').asfloat:=fieldbyname('Camot4').asfloat-fieldbyname('amot4').asfloat;
    //未收达成奖
    fieldbyname('Cnotamot5').asfloat:=fieldbyname('Camot5').asfloat-fieldbyname('amot5').asfloat;
    fieldbyname('Cf1').asboolean:=(fieldbyname('Camot1').asfloat<>0) and (fieldbyname('Camot1').asfloat=fieldbyname('Camot1a').asfloat);
end;
end;

procedure Tsetreport30.dxDBGrid1DblClick(Sender: TObject);
begin
fbodid:= qry.fieldbyname('bod_id').asinteger;
//fbodtypeid:= qry.fieldbyname('bod_type_id').asinteger;
if fbodid=0 then exit;
(Sender as TComponent).Tag:=136;
//if (fbodtypeid=2) then (Sender as TComponent).Tag:=11;
MainForm.View(Sender);
//refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id',qry.fieldbyname('bod_id').asinteger)
end;

procedure Tsetreport30.N7Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n,rcnt: integer;
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
    if (qry.fieldbyname('Cnotamot2').asfloat=0) then
//    if (qry.fieldbyname('Cnotamot2').asfloat<>0) then
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
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Cnotamot2').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].values[f5]=0) then
//        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
            if mi=0 then
            begin
                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同代理人的单据');
            end;
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

procedure Tsetreport30.N8Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n,rcnt: integer;
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
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
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
            if mi=0 then
            begin
                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同代理人的单据');
            end;
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

procedure Tsetreport30.N10Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n,rcnt: integer;
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
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
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
            if mi=0 then
            begin
                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同代理人的单据');
            end;
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

procedure Tsetreport30.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
