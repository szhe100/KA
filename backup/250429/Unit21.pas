unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, dxdbtrel,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, StdCtrls, Menus, ComCtrls;

type
  Tsetreport14 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryqty: TBCDField;
    qrybroker: TStringField;
    qrycustomer: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrydrawamot: TBCDField;
    qryamot: TBCDField;
    qrydistrict: TStringField;
    SpeedButton1: TSpeedButton;
    dxButtonEdit4: TdxButtonEdit;
    qrysta_id: TAutoIncField;
    qryprice: TBCDField;
    qryCdrawprice: TFloatField;
    qryCcostprice: TFloatField;
    qryCprofprice: TFloatField;
    Shape3: TShape;
    Label8: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList: TImageList;
    qryprice1: TBCDField;
    qryrate0: TBCDField;
    qryCrate: TFloatField;
    qryCprate: TFloatField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label13: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    qryCfee: TFloatField;
    qrycostprice: TBCDField;
    qrycostamot: TFloatField;
    qryrate: TBCDField;
    qrymate_name: TStringField;
    qrydrawprice: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1district: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1costamot: TdxDBGridColumn;
    dxDBGrid1drawamot: TdxDBGridColumn;
    dxDBGrid1Cprofit: TdxDBGridColumn;
    qry1: TClientDataSet;
    IntegerField3: TIntegerField;
    BCDField4: TBCDField;
    StringField1: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    StringField9: TStringField;
    DSqry1: TDataSource;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2district: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridMaskColumn;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridMaskColumn;
    dxDBGrid2specifi: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2med_unit: TdxDBGridMaskColumn;
    dxDBGrid2rate0: TdxDBGridColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2price3: TdxDBGridColumn;
    dxDBGrid2Camot3: TdxDBGridColumn;
    dxDBGrid2costprice: TdxDBGridColumn;
    dxDBGrid2costamot: TdxDBGridColumn;
    dxDBGrid2drawamot: TdxDBGridColumn;
    dxDBGrid2Cfee: TdxDBGridColumn;
    dxDBGrid2Cprofit1: TdxDBGridColumn;
    dxDBGrid2Cprate: TdxDBGridColumn;
    qrycarry_dt: TDateTimeField;
    qrydtl_id: TAutoIncField;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    dxDBGrid2drawprice: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    qrymate_name1: TStringField;
    qrybod_desc: TStringField;
    dxDBGrid2mate_name1: TdxDBGridColumn;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    qryCamot: TFloatField;
    qryCamot1: TFloatField;
    dxDBGrid2Camot: TdxDBGridColumn;
    dxDBGrid2Camot1: TdxDBGridColumn;
    dxDBGrid1camot1: TdxDBGridColumn;
    qry1costamot: TBCDField;
    qry1Cprofit: TBCDField;
    qryCprofit: TBCDField;
    dxDBGrid2Crate: TdxDBGridColumn;
    ADOQuery1rate1: TBCDField;
    qryrate1: TBCDField;
    RadioGroup1: TRadioGroup;
    TabSheet3: TTabSheet;
    qry2: TClientDataSet;
    DSqry2: TDataSource;
    qryprice3: TBCDField;
    qryCamot3: TBCDField;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2Cbusitype: TdxDBGridColumn;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    qrybod_type_id: TIntegerField;
    qryCbodtype: TStringField;
    qrybod_amot: TBCDField;
    qryCprofit1: TBCDField;
    qry1camot1: TBCDField;
    qry1camot3: TBCDField;
    dxDBGrid1camot3: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3med_code: TdxDBGridColumn;
    dxDBGrid3med_name: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    dxDBGrid3med_unit: TdxDBGridColumn;
    dxDBGrid3qty: TdxDBGridColumn;
    dxDBGrid3amot: TdxDBGridColumn;
    dxDBGrid3camot3: TdxDBGridColumn;
    dxDBGrid3costamot: TdxDBGridColumn;
    dxDBGrid3drawamot: TdxDBGridColumn;
    dxDBGrid3Cprofit: TdxDBGridColumn;
    dxDBGrid3camot1: TdxDBGridColumn;
    qry2med_id: TIntegerField;
    qry2qty: TBCDField;
    qry2med_code: TStringField;
    qry2med_name: TStringField;
    qry2specifi: TStringField;
    qry2pdt_place: TStringField;
    qry2med_unit: TStringField;
    qry2amot: TBCDField;
    qry2drawamot: TBCDField;
    qry2costamot: TBCDField;
    qry2Cprofit: TBCDField;
    qry2camot1: TBCDField;
    qry2camot3: TBCDField;
    qry2Cprate: TFloatField;
    qry1Cprate: TFloatField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure qry2CalcFields(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid3CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport14: Tsetreport14;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit22, Unit28, Unit16a;

{$R *.DFM}

procedure Tsetreport14.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport14.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport14.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport14.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
if PageControl1.ActivePage=Tabsheet1 then
begin
    with qry do
    begin
        speedbutton1.enabled:=(active=true) and (recordcount>0);
        speedbutton2.enabled:=(active=true) and (recordcount>0);
    end;
end;
if PageControl1.ActivePage=Tabsheet2 then
begin
    with qry1 do
    begin
        speedbutton1.enabled:=(active=true) and (recordcount>0);
        speedbutton2.enabled:=(active=true) and (recordcount>0);
    end;
end;
end;

procedure Tsetreport14.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport14.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid2.SaveToXLS, self.tag);
if PageControl1.ActivePage=Tabsheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(商业公司品种汇总)1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=Tabsheet3 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总)1.xls', dxDBGrid3.SaveToXLS, self.tag);
end;

procedure Tsetreport14.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if PageControl1.ActivePage=Tabsheet1 then
begin
    with qry do
    begin
        if active=true then close;
        commandtext:=' select price=cast(case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end as decimal(10,2)),';
        commandtext:=commandtext+' amot=cast(case y.bod_type_id when 2 then case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end*y.qty else y.amot end as decimal(10,2)),';
        commandtext:=commandtext+' drawamot=cast(case y.bod_type_id when 2 then drawprice*y.qty when 19 then y.bod_amot else 0 end as decimal(10,2)),';
        commandtext:=commandtext+' y.*,z.mate_name,mate_name1=t.mate_name,z.rate,rate1=dbo.fn_drawrate1(y.sta_id,y.dst_id,i.med_id,y.carry_dt),';
        commandtext:=commandtext+' broker=dbo.fn_staff_name(y.sta_id),customer=dbo.fn_mate_name(y.dst_id), district=dbo.fn_getdistrictbymate_id(y.dst_id),';
        commandtext:=commandtext+' i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack';
        commandtext:=commandtext+' from (';
        commandtext:=commandtext+'select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+'  price=cast(b.price as decimal(15,2)),';
        commandtext:=commandtext+'  price1=cast(case when a.carry_dt<''2019-1-1'' then b.price else b.price3 end as decimal(15,6)),';
        commandtext:=commandtext+'  price3=cast(b.price3 as decimal(15,2)),';
        commandtext:=commandtext+'  b.qty,b.rate0,b.drawprice,b.costprice,';
{         //下列注销语句说明 各字段的来源，勿删除
        commandtext:=commandtext+'  rate0=dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  drawprice= dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt),'; //投资款单价
        commandtext:=commandtext+'  b.qty,costprice=dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt),';
}
		commandtext:=commandtext+'  cprofit=cast(b.qty*round(case when a.carry_dt<''2016-12-1'' then 0.12 else 0.17 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2))';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_busimate d';
        commandtext:=commandtext+'  where a.bod_type_id=2 and a.cate_id=1 and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id'; //a.comp_id='+inttostr(compid)+' and
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' union all ';
        commandtext:=commandtext+' select dtl_id=a.bod_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,sta_id=0,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,a.med_id,amot=0,'; //a.bod_amot
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),qty=0,rate0=0,drawprice=0,costprice=0,';  //a.bod_amot
        commandtext:=commandtext+' cprofit=cast(0 as decimal(15,2))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' where a.bod_type_id=19'; // and a.bod_status_id=1';  //应付记账
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
//        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';

		commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))'; //b.amot
//        commandtext:=commandtext+' price=cast(b.amot as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type=3 and a.bod_id=b.bod_id';  // 42: 销售调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
//        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

        commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))';
		commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=52 and a.busi_type=3 and a.bod_id=b.bod_id'; // 52: 采购调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
//        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

		commandtext:=commandtext+' ) y inner join tb_medicine i on i.med_id=y.med_id';
        commandtext:=commandtext+' left join tb_busimate t on y.dst_id=t.mate_id';
        commandtext:=commandtext+' left join tb_busimate z on y.src_id=z.mate_id';
        commandtext:=commandtext+' order by dbo.fn_getdistrictbymate_id(y.dst_id),z.mate_name,t.mate_name,dbo.fn_staff_name(y.sta_id),';
        commandtext:=commandtext+'          dbo.fn_mate_name(y.dst_id),i.med_name,i.specifi,i.pdt_place';
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=Tabsheet2 then  //商业公司品种汇总
begin
{         //下列注销语句说明 各字段的来源，勿删除
        commandtext:=commandtext+'  rate0=dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  drawprice= dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt),'; //投资款单价
        commandtext:=commandtext+'  b.qty,costprice=dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt),';
}

{
--销售数量、销售金额、成本金额、投资款金额、单品税费金额、单品利润金额，均按明细表按“商业公司+品种”做汇总即可

select a.mate_name,district,med_id,med_code,med_name,specifi,pdt_place,med_unit,
 qty=sum(qty),amot=sum(amot),costamot=sum(cast(costprice*qty as decimal(15,2))),drawamot=sum(drawamot),
 cprofit=sum(cast(cfee*qty as decimal(15,2))),camot1=sum(camot1)

  from (
 select price=cast(case when y.carry_dt<'2019-1-1' then y.rate0*(100-z.rate)/100 else y.price end as decimal(10,2)),
  amot=cast(case y.bod_type_id when 2 then case when y.carry_dt<'2019-1-1' then y.rate0*(100-z.rate)/100 else y.price end*y.qty else y.amot end as decimal(10,2)),
  drawamot=cast(case y.bod_type_id when 2 then drawprice*y.qty when 19 then y.bod_amot else 0 end as decimal(10,2)),
   y.src_id,y.dst_id,y.qty,y.med_id,y.costprice,
   cfee=case when y.carry_dt<'2016-12-1' then 0.12 when y.carry_dt<'2019-4-1' then 0.17 else 0.20 end*(y.price-y.costprice),
   camot1=case y.bod_type_id when 19 then -y.bod_amot when 42 then y.amot when 45 then y.amot 
		else y.price-y.costprice-y.drawprice-case when y.carry_dt<'2016-12-1' then 0.12 when y.carry_dt<'2019-4-1' then 0.17 else 0.20 end*(y.price-y.costprice) end,
    z.mate_name,mate_name1=t.mate_name,z.rate,rate1=dbo.fn_drawrate1(y.sta_id,y.dst_id,i.med_id,y.carry_dt), broker=dbo.fn_staff_name(y.sta_id),customer=dbo.fn_mate_name(y.dst_id), district=dbo.fn_getdistrictbymate_id(y.dst_id),
    i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack
	 from (select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,  price=cast(b.price as decimal(15,2)),  price1=cast(case when a.carry_dt<'2019-1-1' then b.price else b.price3 end as decimal(15,6)),  price3=cast(b.price3 as decimal(15,2)),  b.qty,b.rate0,b.drawprice,b.costprice,  cprofit=cast(b.qty*round(case when a.carry_dt<'2016-12-1' then 0.12 else 0.17 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2))
	   from tb_bill a,tb_bill_dtl b,tb_busimate d
	     where a.bod_type_id=2 and a.cate_id=1 and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id  and a.carry_dt>='2020-07-01' and a.carry_dt< dateadd(day,1,'2020-07-06')
 union all  
  select dtl_id=a.bod_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,sta_id=0,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,a.med_id,amot=0, price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),qty=0,rate0=0,drawprice=0,costprice=0, cprofit=cast(0 as decimal(15,2))
	from tb_bill a where a.bod_type_id=19  and a.carry_dt>='2020-07-01' and a.carry_dt< dateadd(day,1,'2020-07-06')
 union all 
 select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot, price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2)) from tb_bill a,tb_bill_dtl b where a.bod_type_id=42 and a.busi_type=3 and a.bod_id=b.bod_id  and a.carry_dt>='2020-07-01' and a.carry_dt< dateadd(day,1,'2020-07-06')
  union all select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot, price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2)) from tb_bill a,tb_bill_dtl b where a.bod_type_id=52 and a.busi_type=3 and a.bod_id=b.bod_id  and a.carry_dt>='2020-07-01' and a.carry_dt< dateadd(day,1,'2020-07-06') ) y
   inner join tb_medicine i on i.med_id=y.med_id
    left join tb_busimate t on y.dst_id=t.mate_id
	 left join tb_busimate z on y.src_id=z.mate_id
) a
 group by a.mate_name,district,med_id,med_code,med_name,specifi,pdt_place,med_unit
 --having sum(qty)<>0

}
    with qry1 do
    begin
        if active=true then close;
        commandtext:=' select a.mate_name,district,med_id,med_code,med_name,specifi,pdt_place,med_unit,';
        commandtext:=commandtext+' qty=sum(qty),amot=sum(amot),costamot=sum(cast(costprice*qty as decimal(15,2))),drawamot=sum(drawamot),';
        commandtext:=commandtext+' cprofit=sum(cast(cfee*qty as decimal(15,2))),';
//        commandtext:=commandtext+' camot1=sum(cast(camot1 as decimal(15,2)))';
        commandtext:=commandtext+' camot1=sum(cast(case bod_type_id when 19 then -bod_amot when 42 then amot when 45 then amot';
		commandtext:=commandtext+'  	else amot-costprice*qty-isnull(drawamot,0)-isnull(cfee*qty,0) end as decimal(15,2))),';
        commandtext:=commandtext+' camot3=sum(cast(camot3 as decimal(15,2)))';
		commandtext:=commandtext+' from (';
        commandtext:=commandtext+' select price=cast(case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end as decimal(10,2)),';
        commandtext:=commandtext+' amot=cast(case y.bod_type_id when 2 then case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end*y.qty else y.amot end as decimal(10,2)),';
        commandtext:=commandtext+' drawamot=cast(case y.bod_type_id when 2 then drawprice*y.qty when 19 then y.bod_amot else 0 end as decimal(10,2)),';
        //commandtext:=commandtext+' y.*,';
        commandtext:=commandtext+' y.bod_type_id,y.bod_amot,y.src_id,y.dst_id,y.med_id,y.qty,y.costprice,';
        //commandtext:=commandtext+' cfee=case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice),';
        commandtext:=commandtext+' cfee=round(case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice),2),';
//        commandtext:=commandtext+' camot1=case y.bod_type_id when 19 then -y.bod_amot when 42 then y.amot when 45 then y.amot';
//        commandtext:=commandtext+' 		else y.price-y.costprice-y.drawprice-case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice) end,';
        commandtext:=commandtext+' camot3=y.price3*y.qty,';
        commandtext:=commandtext+' z.mate_name,mate_name1=t.mate_name,z.rate,rate1=dbo.fn_drawrate1(y.sta_id,y.dst_id,i.med_id,y.carry_dt),';
        commandtext:=commandtext+' broker=dbo.fn_staff_name(y.sta_id),customer=dbo.fn_mate_name(y.dst_id), district=dbo.fn_getdistrictbymate_id(y.dst_id),';
        commandtext:=commandtext+' i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack';
        commandtext:=commandtext+' from (';
        commandtext:=commandtext+'select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+'  price=cast(b.price as decimal(15,2)),';
        commandtext:=commandtext+'  price1=cast(case when a.carry_dt<''2019-1-1'' then b.price else b.price3 end as decimal(15,6)),';
        commandtext:=commandtext+'  price3=cast(b.price3 as decimal(15,2)),';
        commandtext:=commandtext+'  b.qty,b.rate0,b.drawprice,b.costprice,';
{         //下列注销语句说明 各字段的来源，勿删除
        commandtext:=commandtext+'  rate0=dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  drawprice= dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt),'; //投资款单价
        commandtext:=commandtext+'  b.qty,costprice=dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt),';
}
		commandtext:=commandtext+'  cprofit=cast(b.qty*round(case when a.carry_dt<''2016-12-1'' then 0.12 else 0.17 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2))';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_busimate d';
        commandtext:=commandtext+'  where a.bod_type_id=2 and a.cate_id=1 and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id'; //a.comp_id='+inttostr(compid)+' and
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' union all ';
        commandtext:=commandtext+' select dtl_id=a.bod_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,sta_id=0,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,a.med_id,amot=0,'; //a.bod_amot
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),qty=0,rate0=0,drawprice=0,costprice=0,';  //a.bod_amot
        commandtext:=commandtext+' cprofit=cast(0 as decimal(15,2))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' where a.bod_type_id=19'; // and a.bod_status_id=1';  //应付记账
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';

		commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))'; //b.amot
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type=3 and a.bod_id=b.bod_id';  // 42: 销售调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

        commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))';
		commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=52 and a.busi_type=3 and a.bod_id=b.bod_id'; // 52: 采购调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

		commandtext:=commandtext+' ) y inner join tb_medicine i on i.med_id=y.med_id';
        commandtext:=commandtext+' left join tb_busimate t on y.dst_id=t.mate_id';
        commandtext:=commandtext+' left join tb_busimate z on y.src_id=z.mate_id';
        commandtext:=commandtext+' ) a group by a.mate_name,district,med_id,med_code,med_name,specifi,pdt_place,med_unit';
{
        commandtext:='if exists (select 1 from tempdb..sysobjects where id=object_id(''tempdb..#tb_tmp'')) drop table #tb_tmp ';
        commandtext:=commandtext+'select d.district,a.src_id,b.med_id,';
        commandtext:=commandtext+'  price1=cast(case sum(qty) when 0 then avg(price) else sum(b.price*b.qty)/sum(qty) end as decimal(15,6)),';
        commandtext:=commandtext+'  price=case sum(qty) when 0 then avg(price) else sum(b.amot)/sum(qty) end,';
        commandtext:=commandtext+'  b.rate0,';
//        commandtext:=commandtext+'  rate0= dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  amot1=sum(cast(b.amot as decimal(15,2))),';
        commandtext:=commandtext+'  qty=sum(b.qty),';
        commandtext:=commandtext+'  drawprice= max(b.drawprice),'; //投资款单价
//        commandtext:=commandtext+'  drawprice= max(dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt)),'; //投资款单价
        commandtext:=commandtext+'  drawamot=sum(cast(b.qty*drawprice as decimal(15,2))),';
        commandtext:=commandtext+'  costamot=sum(cast(b.qty*costprice as decimal(15,2))),';
		commandtext:=commandtext+'  cprofit=sum(cast(b.qty*round(case when a.carry_dt<''2016-12-1'' then 0.12 when a.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2)))';
        commandtext:=commandtext+'  into #tb_tmp';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_busimate d ';
        commandtext:=commandtext+'  where a.bod_type_id=2 and a.cate_id=1 ';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        commandtext:=commandtext+' and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id';

//        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+'  and exists (select 1 from tb_treedata r where r.rec_id=d.district and (r.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or r.parent='+dm.district.fieldbyname('rec_id').asstring+'))';

        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
//        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=d.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' group by d.district,a.src_id,b.med_id,rate0'; //dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt)';
//        commandtext:=commandtext+' having sum(b.amot)<>0';
//此句会造成部分记录排除，与明细不一致

        commandtext:=commandtext+' select district=dbo.fn_getdistrict(y.district),price=cast(y.rate0*(100-z.rate)/100 as decimal(10,2)),';
        commandtext:=commandtext+' costprice=cast(case when isnull(y.qty,0)=0 then 0 else y.costamot/y.qty end as decimal(10,4)),';
        commandtext:=commandtext+' cprofit=cast(cprofit as decimal(10,2)),';
        commandtext:=commandtext+' amot=cast(cast(y.rate0*(100-z.rate)/100 as decimal(10,2))*y.qty as decimal(10,2)),';
        commandtext:=commandtext+' y.*,z.mate_name,z.rate,';
        commandtext:=commandtext+' i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack';
        commandtext:=commandtext+' from tb_medicine i inner join #tb_tmp y on i.med_id=y.med_id';
        commandtext:=commandtext+' left join tb_busimate z on y.src_id=z.mate_id';
        commandtext:=commandtext+' order by dbo.fn_getdistrict(y.district),z.mate_name,i.med_name,i.specifi,i.pdt_place';
}
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=Tabsheet3 then
begin
{         //下列注销语句说明 各字段的来源，勿删除
        commandtext:=commandtext+'  rate0=dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  drawprice= dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt),'; //投资款单价
        commandtext:=commandtext+'  b.qty,costprice=dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt),';
}
    with qry2 do
    begin
        if active=true then close;
        commandtext:=' select med_id,med_code,med_name,specifi,pdt_place,med_unit,';
        commandtext:=commandtext+' qty=sum(qty),amot=sum(amot),costamot=sum(cast(costprice*qty as decimal(15,2))),drawamot=sum(drawamot),';
        commandtext:=commandtext+' cprofit=sum(cast(cfee*qty as decimal(15,2))),';
//        camot1=sum(cast(camot1 as decimal(15,2))),camot3=sum(cast(camot3 as decimal(15,2)))';
        commandtext:=commandtext+' camot1=sum(cast(case bod_type_id when 19 then -bod_amot when 42 then amot when 45 then amot';
		commandtext:=commandtext+'  	else amot-costprice*qty-isnull(drawamot,0)-isnull(cfee*qty,0) end as decimal(15,2))),';
        commandtext:=commandtext+' camot3=sum(cast(camot3 as decimal(15,2)))';
		commandtext:=commandtext+' from (';
        commandtext:=commandtext+' select price=cast(case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end as decimal(10,2)),';
        commandtext:=commandtext+' amot=cast(case y.bod_type_id when 2 then case when y.carry_dt<''2019-1-1'' then y.rate0*(100-z.rate)/100 else y.price end*y.qty else y.amot end as decimal(10,2)),';
        commandtext:=commandtext+' drawamot=cast(case y.bod_type_id when 2 then drawprice*y.qty when 19 then y.bod_amot else 0 end as decimal(10,2)),';
        //commandtext:=commandtext+' y.*,';
//        commandtext:=commandtext+' y.src_id,y.dst_id,y.med_id,y.qty,y.costprice,';
        commandtext:=commandtext+' y.bod_type_id,y.bod_amot,y.src_id,y.dst_id,y.med_id,y.qty,y.costprice,';
//        commandtext:=commandtext+' cfee=case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice),';
        commandtext:=commandtext+' cfee=round(case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice),2),';
//        commandtext:=commandtext+' camot1=case y.bod_type_id when 19 then -y.bod_amot when 42 then y.amot when 45 then y.amot';
//        commandtext:=commandtext+' 		else y.price-y.costprice-y.drawprice-case when y.carry_dt<''2016-12-1'' then 0.12 when y.carry_dt<''2019-4-1'' then 0.17 else 0.20 end*(y.price-y.costprice) end,';
        commandtext:=commandtext+' camot3=y.price3*y.qty,';
//        commandtext:=commandtext+' z.mate_name,mate_name1=t.mate_name,';
//        commandtext:=commandtext+' z.rate,rate1=dbo.fn_drawrate1(y.sta_id,y.dst_id,i.med_id,y.carry_dt),';
//        commandtext:=commandtext+' broker=dbo.fn_staff_name(y.sta_id),customer=dbo.fn_mate_name(y.dst_id), district=dbo.fn_getdistrictbymate_id(y.dst_id),';
        commandtext:=commandtext+' i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack';
        commandtext:=commandtext+' from (';
        commandtext:=commandtext+'select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+'  price=cast(b.price as decimal(15,2)),';
        commandtext:=commandtext+'  price1=cast(case when a.carry_dt<''2019-1-1'' then b.price else b.price3 end as decimal(15,6)),';
        commandtext:=commandtext+'  price3=cast(b.price3 as decimal(15,2)),';
        commandtext:=commandtext+'  b.qty,b.rate0,b.drawprice,b.costprice,';
{         //下列注销语句说明 各字段的来源，勿删除
        commandtext:=commandtext+'  rate0=dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  drawprice= dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt),'; //投资款单价
        commandtext:=commandtext+'  b.qty,costprice=dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt),';
}
		commandtext:=commandtext+'  cprofit=cast(b.qty*round(case when a.carry_dt<''2016-12-1'' then 0.12 else 0.17 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2))';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_busimate d';
        commandtext:=commandtext+'  where a.bod_type_id=2 and a.cate_id=1 and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id'; //a.comp_id='+inttostr(compid)+' and
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' union all ';
        commandtext:=commandtext+' select dtl_id=a.bod_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,sta_id=0,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,a.med_id,amot=0,'; //a.bod_amot
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),qty=0,rate0=0,drawprice=0,costprice=0,';  //a.bod_amot
        commandtext:=commandtext+' cprofit=cast(0 as decimal(15,2))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' where a.bod_type_id=19'; // and a.bod_status_id=1';  //应付记账
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';

		commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))'; //b.amot
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.busi_type=3 and a.bod_id=b.bod_id';  // 42: 销售调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

        commandtext:=commandtext+' union all';
        commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_type_id,a.bod_cd,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.src_id,b.sta_id,a.dst_id,a.busi_type,a.bod_desc,a.bod_amot,b.med_id,b.amot,';
        commandtext:=commandtext+' price=cast(0 as decimal(15,2)),price1=cast(0 as decimal(15,6)),price3=cast(0 as decimal(15,2)),  qty=0,rate0=0,drawprice=0,costprice=0,cprofit=cast(0 as decimal(15,2))';
		commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_type_id=52 and a.busi_type=3 and a.bod_id=b.bod_id'; // 52: 采购调价
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0'; // and a.bod_status_id=1
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate d where a.dst_id=d.mate_ia and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate d,tb_trustdistrict t where d.mate_id=a.dst_id and t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

		commandtext:=commandtext+' ) y inner join tb_medicine i on i.med_id=y.med_id';
//        commandtext:=commandtext+' left join tb_busimate t on y.dst_id=t.mate_id';
        commandtext:=commandtext+' left join tb_busimate z on y.src_id=z.mate_id';
        commandtext:=commandtext+' ) a group by med_id,med_code,med_name,specifi,pdt_place,med_unit';
{
        if active=true then close;
        commandtext:='if exists (select 1 from tempdb..sysobjects where id=object_id(''tempdb..#tb_tmp'')) drop table #tb_tmp ';
        commandtext:=commandtext+'select d.district,b.med_id,';   //a.src_id,
        commandtext:=commandtext+'  price1=cast(case sum(qty) when 0 then avg(price) else sum(b.price*b.qty)/sum(qty) end as decimal(15,6)),';
        commandtext:=commandtext+'  price=case sum(qty) when 0 then avg(price) else sum(b.amot)/sum(qty) end,';
        commandtext:=commandtext+'  b.rate0,';
//        commandtext:=commandtext+'  rate0= dbo.fn_getbidprice3(a.dst_id,b.med_id,a.carry_dt),';
        commandtext:=commandtext+'  amot=sum(cast(b.amot as decimal(15,2))),';
        commandtext:=commandtext+'  qty=sum(b.qty),';
        commandtext:=commandtext+'  drawprice= max(b.drawprice),'; //投资款单价
//        commandtext:=commandtext+'  drawprice= max(dbo.fn_getrate1(a.dst_id,b.med_id,a.carry_dt)),'; //投资款单价
        commandtext:=commandtext+'  drawamot=sum(cast(b.qty*drawprice as decimal(15,2))),';
        commandtext:=commandtext+'  costamot=sum(cast(b.qty*costprice as decimal(15,2))),';
		commandtext:=commandtext+'  cprofit=sum(cast(b.qty*round(case when a.carry_dt<''2016-12-1'' then 0.12 else 0.17 end*(cast(b.price as decimal(15,2))-isnull(costprice,0)),2) as decimal(15,2)))';
        commandtext:=commandtext+'  into #tb_tmp';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b,tb_busimate d ';
        commandtext:=commandtext+'  where a.bod_type_id=2 and a.cate_id=1 ';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        commandtext:=commandtext+' and a.dst_id=d.mate_id and d.mate_type_id=1 and a.bod_id=b.bod_id';

//        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+'  and exists (select 1 from tb_treedata r where r.rec_id=d.district and (r.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or r.parent='+dm.district.fieldbyname('rec_id').asstring+'))';

        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
//        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=d.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' group by d.district,b.med_id,rate0'; //a.src_id,
//        commandtext:=commandtext+' having sum(b.amot)<>0';
//此句会造成部分记录排除，与明细不一致

        commandtext:=commandtext+' select district=dbo.fn_getdistrict(y.district),price=0.00,'; //cast(y.rate0*(100-z.rate)/100 as decimal(10,2)),';
        commandtext:=commandtext+' costprice=cast(case when isnull(y.qty,0)=0 then 0 else y.costamot/y.qty end as decimal(10,4)),';
        commandtext:=commandtext+' cprofit=cast(cprofit as decimal(10,2)),';
//        commandtext:=commandtext+' amot=cast(cast(y.rate0*(100-z.rate)/100 as decimal(10,2))*y.qty as decimal(10,2)),';
        commandtext:=commandtext+' y.*,';   //z.mate_name,z.rate,
        commandtext:=commandtext+' i.med_code,i.med_name,i.specifi,i.pdt_place,med_unit=dbo.fn_obj_desc(i.unit_id),i.qtyperpack';
        commandtext:=commandtext+' from tb_medicine i inner join #tb_tmp y on i.med_id=y.med_id';
//        commandtext:=commandtext+' left join tb_busimate z on y.src_id=z.mate_id';
        commandtext:=commandtext+' order by dbo.fn_getdistrict(y.district),i.med_name,i.specifi,i.pdt_place'; //z.mate_name,
}
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end
end;

procedure Tsetreport14.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport14.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport14.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tsetreport14.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport14.SpeedButton1Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
report02:=Treport02.create(Application);
with report02 do
begin
    qry.CommandText:=self.qry.CommandText;
    qry.open;
    screen.cursor:=crdefault;
    quickrep1.Prepare;
    QRLabel6.Caption:='统计范围:'+datetostr(dxdateedit1.date)+'至'+datetostr(dxdateedit2.date);
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
end;

procedure Tsetreport14.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport14.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport14.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1camot1' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
end;

procedure Tsetreport14.N3Click(Sender: TObject);
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

procedure Tsetreport14.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport14.N2Click(Sender: TObject);
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

procedure Tsetreport14.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport14.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet1 then wwDBNavigator1.DataSource:=DSqry
    else wwDBNavigator1.DataSource:=DSqry1;
end;

procedure Tsetreport14.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
{
    if fieldbyname('qty').asfloat=0 then
    begin
        fieldbyname('cdrawprice').asfloat:=0;
        fieldbyname('cdrawprice').asfloat:=0;
        fieldbyname('cprofprice').asfloat:=0;
    end
    else
    begin
        fieldbyname('cdrawprice').asfloat:=fieldbyname('drawamot').asfloat/fieldbyname('qty').asfloat;
        fieldbyname('cprofprice').asfloat:=(fieldbyname('amot').asfloat-fieldbyname('costprice').asfloat*fieldbyname('qty').asfloat-fieldbyname('drawamot').asfloat)/fieldbyname('qty').asfloat-fieldbyname('cfee').asfloat;
    end;

    if fieldbyname('rate0').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('Cdrawprice').asfloat/fieldbyname('rate0').asfloat;
    fieldbyname('camot').asfloat:=fieldbyname('price').asfloat-fieldbyname('costprice').asfloat-fieldbyname('Cdrawprice').asfloat-fieldbyname('Cfee').asfloat;
    fieldbyname('camot1').asfloat:=fieldbyname('camot').asfloat*fieldbyname('qty').asfloat;
}
    if fieldbyname('amot').asfloat=0 then fieldbyname('cprate').asfloat:=0
        else fieldbyname('cprate').asfloat:=round(10000*fieldbyname('camot1').asfloat/fieldbyname('amot').asfloat)/100; //保留百分数小数后2位
end;
end;

procedure Tsetreport14.dxDBGrid2CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid2amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Camot1' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
end;

procedure Tsetreport14.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('qty').asfloat=0 then
    begin
        fieldbyname('cdrawprice').asfloat:=0;
        fieldbyname('cprofprice').asfloat:=0;
    end
    else
    begin
//        fieldbyname('ccostprice').asfloat:=fieldbyname('cost').asfloat/fieldbyname('qty').asfloat;
        fieldbyname('costamot').asfloat:=fieldbyname('costprice').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('cdrawprice').asfloat:=fieldbyname('drawamot').asfloat/fieldbyname('qty').asfloat;
        if fieldbyname('carry_dt').asdatetime<strtodatetime('2016-12-1')
            then fieldbyname('cfee').asfloat:=round(100*(fieldbyname('price').asfloat-fieldbyname('costprice').asfloat)*0.12)/100
        else if fieldbyname('carry_dt').asdatetime<strtodatetime('2019-4-1')
            then fieldbyname('cfee').asfloat:=round(100*(fieldbyname('price').asfloat-fieldbyname('costprice').asfloat)*0.17)/100
        else fieldbyname('cfee').asfloat:=round(100*(fieldbyname('price').asfloat-fieldbyname('costprice').asfloat)*0.20)/100;
        fieldbyname('Cprofit1').asfloat:=fieldbyname('cfee').asfloat*fieldbyname('qty').asfloat;
//单品税费=[销售单价-成本单价]*20%，发生日期：2019-4-1开始按20%计算（我看了现在还是17%）
        if fieldbyname('bod_type_id').asinteger=19
        	then fieldbyname('cprofprice').asfloat:=0
            else fieldbyname('cprofprice').asfloat:=(fieldbyname('amot').asfloat-fieldbyname('costprice').asfloat*fieldbyname('qty').asfloat-fieldbyname('drawamot').asfloat)/fieldbyname('qty').asfloat-fieldbyname('cfee').asfloat;
//        fieldbyname('cprofit').asfloat:=fieldbyname('cfee').asfloat*fieldbyname('qty').asfloat;
    end;

    if fieldbyname('rate0').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('Cdrawprice').asfloat/fieldbyname('rate0').asfloat;

//单品利润
    fieldbyname('camot').asfloat:=fieldbyname('price').asfloat-fieldbyname('costprice').asfloat-fieldbyname('Cdrawprice').asfloat-fieldbyname('Cfee').asfloat;

//单品利润金额
    if fieldbyname('bod_type_id').asinteger=19  //应付记账
    	then fieldbyname('camot1').asfloat:=-fieldbyname('bod_amot').asfloat
    else if fieldbyname('bod_type_id').asinteger in [42,52]  //销售调价、采购调价
    	then fieldbyname('camot1').asfloat:=fieldbyname('amot').asfloat
    else fieldbyname('camot1').asfloat:=fieldbyname('camot').asfloat*fieldbyname('qty').asfloat;
    
    fieldbyname('camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
    if fieldbyname('amot').asfloat=0 then fieldbyname('cprate').asfloat:=0
        else fieldbyname('cprate').asfloat:=round(10000*fieldbyname('camot1').asfloat/fieldbyname('amot').asfloat)/100; //保留百分数小数后2位

    if (fieldbyname('rate0').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('rate0').asfloat;
    case fieldbyname('bod_type_id').asinteger of
    	2:begin
            case fieldbyname('busi_type').asinteger of
                1: fieldbyname('cbusitype').asstring:='销售';
                2: fieldbyname('cbusitype').asstring:='退货';
                3: fieldbyname('cbusitype').asstring:='调退';
                4: fieldbyname('cbusitype').asstring:='调销';
            end;
          end;
        19:	fieldbyname('cbusitype').asstring:='应付记账';
        42:	fieldbyname('cbusitype').asstring:='销售调价';
        52:	fieldbyname('cbusitype').asstring:='采购调价';
    end;
end;
end;

procedure Tsetreport14.qry2CalcFields(DataSet: TDataSet);
begin
with qry2 do
begin
{
    if fieldbyname('qty').asfloat=0 then
    begin
        fieldbyname('cdrawprice').asfloat:=0;
        fieldbyname('cprofprice').asfloat:=0;
    end
    else
    begin
        fieldbyname('cdrawprice').asfloat:=fieldbyname('drawamot').asfloat/fieldbyname('qty').asfloat;
        fieldbyname('cprofprice').asfloat:=(fieldbyname('amot').asfloat-fieldbyname('costprice').asfloat*fieldbyname('qty').asfloat-fieldbyname('drawamot').asfloat)/fieldbyname('qty').asfloat-fieldbyname('cfee').asfloat;
    end;

    if fieldbyname('rate0').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('Cdrawprice').asfloat/fieldbyname('rate0').asfloat;
    fieldbyname('camot').asfloat:=fieldbyname('price').asfloat-fieldbyname('costprice').asfloat-fieldbyname('Cdrawprice').asfloat-fieldbyname('Cfee').asfloat;
    fieldbyname('camot1').asfloat:=fieldbyname('camot').asfloat*fieldbyname('qty').asfloat;
}
    if fieldbyname('amot').asfloat=0 then fieldbyname('cprate').asfloat:=0
        else fieldbyname('cprate').asfloat:=round(10000*fieldbyname('camot1').asfloat/fieldbyname('amot').asfloat)/100; //保留百分数小数后2位
end;
end;

procedure Tsetreport14.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid2Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '销售') then
    begin
        AColor := $00FFFFE1;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '应付记账') then
    begin
        Acolor := $00CAFDFD;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '销售调价') then
    begin
        Acolor := $00CBF8CE;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '采购调价') then
    begin
        Acolor := $00FDE0FE;
    end;
end;
end;

procedure Tsetreport14.dxDBGrid3CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid3amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid3camot1' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid3Cprate' then
begin
//showmessage('m1:'+floattostr(m1)+'  m2:'+floattostr(m2));
//    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

end.
