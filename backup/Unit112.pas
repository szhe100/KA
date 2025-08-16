unit Unit112;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib, ComCtrls;

type
  Tqryreport14 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
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
    qryprofit: TBCDField;
    qryprate: TBCDField;
    qrybat_cd: TStringField;
    qrybroker: TStringField;
    qrycreater: TStringField;
    qrydtl_id: TAutoIncField;
    qrybod_cd: TStringField;
    qryagent: TStringField;
    Shape3: TShape;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
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
    qryleader: TStringField;
    qrybod_desc: TStringField;
    qrydiscount: TBCDField;
    qrycdistrict: TStringField;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
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
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    ImageList: TImageList;
    Label13: TLabel;
    Timer1: TTimer;
    Edit1: TEdit;
    qrydist1: TStringField;
    qrydist2: TStringField;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    dxPickEdit1: TdxPickEdit;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    qrybod_cd1: TStringField;
    qryprice1: TBCDField;
    qryprice2: TBCDField;
    qryCamot1: TBCDField;
    qryCamot2: TBCDField;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    RadioGroup1: TRadioGroup;
    N7: TMenuItem;
    N8: TMenuItem;
    qryckd_amot1: TBCDField;
    qrycnot_amot1: TBCDField;
    qrycredit_day: TIntegerField;
    qryreccd: TStringField;
    qryrecdt: TDateTimeField;
    qryCfinished: TBooleanField;
    busiframerate: TBCDField;
    qryrprice: TBCDField;
    qryrprice1: TBCDField;
    qryrprice2: TBCDField;
    qryramot: TBCDField;
    qryCamot3: TBCDField;
    qryckd_amot2: TBCDField;
    qryckd_amot3: TBCDField;
    qrycnot_amot3: TBCDField;
    qryrecdt1: TDateTimeField;
    qryCfinished1: TBooleanField;
    qrysrc_id: TIntegerField;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    qrycyear: TIntegerField;
    qrycmonth: TIntegerField;
    qryrate: TBCDField;
    qryrate1: TBCDField;
    qryfee: TBCDField;
    qrypamot: TBCDField;
    qrypprice1: TBCDField;
    qrypprice2: TBCDField;
    qryCamot4: TBCDField;
    qryCprofit: TBCDField;
    qryCprate: TBCDField;
    qryCamot: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Ccate: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1cyear: TdxDBGridColumn;
    dxDBGrid1cmonth: TdxDBGridColumn;
    dxDBGrid1sqty: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1tax_rate: TdxDBGridColumn;
    dxDBGrid1rprice: TdxDBGridColumn;
    dxDBGrid1rprice1: TdxDBGridColumn;
    dxDBGrid1rprice2: TdxDBGridColumn;
    dxDBGrid1ramot: TdxDBGridColumn;
    dxDBGrid1Camot3: TdxDBGridColumn;
    dxDBGrid1pprice2: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1pamot: TdxDBGridColumn;
    dxDBGrid1fee: TdxDBGridColumn;
    dxDBGrid1Camot4: TdxDBGridColumn;
    dxDBGrid1Cprofit: TdxDBGridColumn;
    dxDBGrid1Cprate: TdxDBGridColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1Camot: TdxDBGridColumn;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    qry1: TClientDataSet;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DSqry1: TDataSource;
    qry1med_id: TIntegerField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2p1: TdxDBGridColumn;
    dxDBGrid2p0: TdxDBGridColumn;
    dxDBGrid2p2: TdxDBGridColumn;
    dxDBGrid2p3: TdxDBGridColumn;
    dxDBGrid2p4: TdxDBGridColumn;
    dxDBGrid2p5: TdxDBGridColumn;
    dxDBGrid2p6: TdxDBGridColumn;
    qrydst_id: TIntegerField;
    qry2: TClientDataSet;
    DSqry2: TDataSource;
    qry2dst_id: TIntegerField;
    qry3: TClientDataSet;
    DSqry3: TDataSource;
    Edit2: TEdit;
    Label11: TLabel;
    qry1p0: TBCDField;
    qry1cyear: TIntegerField;
    dxDBGrid2p7: TdxDBGridColumn;
    dxDBGrid2p8: TdxDBGridColumn;
    dxDBGrid2p9: TdxDBGridColumn;
    dxDBGrid2p10: TdxDBGridColumn;
    dxDBGrid2p11: TdxDBGridColumn;
    dxDBGrid2p12: TdxDBGridColumn;
    qry1rec_id: TIntegerField;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3mate_name: TdxDBGridColumn;
    dxDBGrid3agent: TdxDBGridColumn;
    dxDBGrid3Ccate: TdxDBGridColumn;
    dxDBGrid3cyear: TdxDBGridColumn;
    dxDBGrid3p0: TdxDBGridColumn;
    dxDBGrid3p1: TdxDBGridColumn;
    dxDBGrid3p2: TdxDBGridColumn;
    dxDBGrid3p3: TdxDBGridColumn;
    dxDBGrid3p4: TdxDBGridColumn;
    dxDBGrid3p5: TdxDBGridColumn;
    dxDBGrid3p6: TdxDBGridColumn;
    dxDBGrid3p7: TdxDBGridColumn;
    dxDBGrid3p8: TdxDBGridColumn;
    dxDBGrid3p9: TdxDBGridColumn;
    dxDBGrid3p10: TdxDBGridColumn;
    dxDBGrid3p11: TdxDBGridColumn;
    dxDBGrid3p12: TdxDBGridColumn;
    qry2rec_id: TIntegerField;
    qry2cyear: TIntegerField;
    qry2p0: TBCDField;
    qry2p1: TBCDField;
    qry2p2: TBCDField;
    qry2p3: TBCDField;
    qry2p4: TBCDField;
    qry2p5: TBCDField;
    qry2p6: TBCDField;
    qry2p7: TBCDField;
    qry2p8: TBCDField;
    qry2p9: TBCDField;
    qry2p10: TBCDField;
    qry2p11: TBCDField;
    qry2p12: TBCDField;
    qry2mate_name: TStringField;
    qry2agent: TStringField;
    qry2cate_id: TWordField;
    qry2Ccate: TStringField;
    qry2agent_id: TIntegerField;
    dxDBGrid2cyear: TdxDBGridColumn;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4mate_name: TdxDBGridColumn;
    dxDBGrid4cyear: TdxDBGridColumn;
    dxDBGrid4p0: TdxDBGridColumn;
    dxDBGrid4p1: TdxDBGridColumn;
    dxDBGrid4p2: TdxDBGridColumn;
    dxDBGrid4p3: TdxDBGridColumn;
    dxDBGrid4p4: TdxDBGridColumn;
    dxDBGrid4p5: TdxDBGridColumn;
    dxDBGrid4p6: TdxDBGridColumn;
    dxDBGrid4p7: TdxDBGridColumn;
    dxDBGrid4p8: TdxDBGridColumn;
    dxDBGrid4p9: TdxDBGridColumn;
    dxDBGrid4p10: TdxDBGridColumn;
    dxDBGrid4p11: TdxDBGridColumn;
    dxDBGrid4p12: TdxDBGridColumn;
    qry3rec_id: TIntegerField;
    qry3mate_name: TStringField;
    qry3cyear: TIntegerField;
    qry3p0: TBCDField;
    qry3p1: TBCDField;
    qry3p2: TBCDField;
    qry3p3: TBCDField;
    qry3p4: TBCDField;
    qry3p5: TBCDField;
    qry3p6: TBCDField;
    qry3p7: TBCDField;
    qry3p8: TBCDField;
    qry3p9: TBCDField;
    qry3p10: TBCDField;
    qry3p11: TBCDField;
    qry3p12: TBCDField;
    qry3src_id: TIntegerField;
    qrysqty: TBCDField;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    dxDBGrid1price2a: TdxDBGridColumn;
    Label12: TLabel;
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
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
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
    procedure Timer1Timer(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N7Click(Sender: TObject);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid3CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid4CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qry2CalcFields(DataSet: TDataSet);
    procedure dxDBGrid3CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport14: Tqryreport14;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tqryreport14.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
with qry1 do
    if active=true then close;
with qry2 do
    if active=true then close;
with qry3 do
    if active=true then close;
if fmateid>0 then fmateid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport14.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport14.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport14.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqryreport14.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport14.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细表)1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总表)1.xls', dxDBGrid2.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet3 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(商业公司汇总表)1.xls', dxDBGrid3.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet4 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(供货单位汇总表)1.xls', dxDBGrid4.SaveToXLS, self.tag);
end;

procedure Tqryreport14.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if PageControl1.ActivePage=TabSheet1 then
begin
    with qry do
    begin
        if active=true then
        begin
            si:=fieldbyname('dtl_id').asinteger;
            close;
        end
        else si:=0;
        commandtext:='select b.dtl_id,a.bod_cd,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
        commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,j.mate_name,agent=p.mate_name,';
        commandtext:=commandtext+' level1=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
        commandtext:=commandtext+' level2=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
        commandtext:=commandtext+' level3=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
        commandtext:=commandtext+' broker='''','; //dbo.fn_mate_name(l.agent_id),';
        commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
        commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,o.credit_day,';
        commandtext:=commandtext+' a.src_id,mate_name1=h.mate_name,mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
        commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,';
        commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (p.district,1),';
        commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (p.district,2),';
        commandtext:=commandtext+' recdt=dbo.fn_getexprecdt(b.dtl_id),reccd=dbo.fn_getexpreccd(b.dtl_id),';
        commandtext:=commandtext+' b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,a.busi_type,price=cast(m.price2 as decimal(15,6)),b.discount,'; //b.qty,
	    commandtext:=commandtext+' b.qty,sqty=cast(case when a.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),';
//	    commandtext:=commandtext+' qty=case when a.busi_type=3 then -1 else 1 end*b.qty,sqty=cast(case when a.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),';
        commandtext:=commandtext+' recdt1=dbo.fn_getimprecdt(b.dtl_id),';
        commandtext:=commandtext+' b.price,b.price1,b.price2,amot=cast(m.price2*b.qty as decimal(15,2)),';
        commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
    //    commandtext:=commandtext+' b.bat_cd,b.bod_cd1,tax_rate=0.00,rprice=0.0000,rprice1=0.0000,rprice2=0.0000,ramot=0.0000,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
        commandtext:=commandtext+' b.bat_cd,b.bod_cd1,q.tax_rate,rprice=q.price,rprice1=q.price1,rprice2=q.price2,ramot=q.amot,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
        commandtext:=commandtext+' o.rate,o.rate1,o.fee,pamot=o.amot,pprice1=o.price1,pprice2=o.price2';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
        commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
        commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
        commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe2 k on a.cate_id=2 and k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
        commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
//        if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
        commandtext:=commandtext+'  and a.cate_id=2';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
//        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if dxPickEdit1.itemindex=0
                then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
            if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
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
if PageControl1.ActivePage=TabSheet2 then
begin
    with qry1 do
    begin
        if active=true then
        begin
            si:=fieldbyname('rec_id').asinteger;
            close;
        end
        else si:=0;
        commandtext:='select rec_id=cast(ROW_NUMBER() OVER(ORDER BY m.med_name,m.specifi,m.pdt_place,m.qtyperpack,y.cyear) as int),';
        commandtext:=commandtext+' y.*,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id) from (';
        commandtext:=commandtext+' select med_id,cyear,p0=sum(profit),p1=sum(case when cmonth=1 then profit end),p2=sum(case when cmonth=2 then profit end),';
        commandtext:=commandtext+' 	p3=sum(case when cmonth=3 then profit end),p4=sum(case when cmonth=4 then profit end),p5=sum(case when cmonth=5 then profit end),';
        commandtext:=commandtext+' 	p6=sum(case when cmonth=6 then profit end),p7=sum(case when cmonth=7 then profit end),p8=sum(case when cmonth=8 then profit end),';
        commandtext:=commandtext+' 	p9=sum(case when cmonth=9 then profit end),p10=sum(case when cmonth=10 then profit end),p11=sum(case when cmonth=11 then profit end),';
        commandtext:=commandtext+' 	p12=sum(case when cmonth=12 then profit end)';
		commandtext:=commandtext+' from ( select b.med_id,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),cyear=year(a.carry_dt),cmonth=month(a.carry_dt),';
        commandtext:=commandtext+'   profit=cast(round((isnull(q.amot,0)-isnull(o.amot,0)-isnull(o.fee,0))*case when a.busi_type=3 then 0 else 1 end*b.qty,2) as decimal(15,2))';
        commandtext:=commandtext+'   from tb_bill a';
        commandtext:=commandtext+'    inner join tb_bill_dtl b on a.bod_id=b.bod_id';
//        commandtext:=commandtext+' 	  left join tb_busimate p on a.agent_id=p.mate_id';
        commandtext:=commandtext+'    left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+'    left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
//        if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
        commandtext:=commandtext+'  and a.cate_id=2';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if dxPickEdit1.itemindex=0
                then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
            if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate where a.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)'
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' ) h group by med_id,cyear) y';
        commandtext:=commandtext+'	left join tb_medicine m on y.med_id=m.med_id';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if si>0 then locate('rec_id',si,[]);
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=TabSheet3 then
begin
    with qry2 do
    begin
        if active=true then
        begin
            si:=fieldbyname('rec_id').asinteger;
            close;
        end
        else si:=0;
        commandtext:='select rec_id=cast(ROW_NUMBER() OVER(ORDER BY c.mate_name,d.mate_name,y.cate_id,y.cyear) as int),';
        commandtext:=commandtext+' y.*,c.mate_name,agent=d.mate_name from (';
        commandtext:=commandtext+' select dst_id,agent_id,cate_id,cyear,p0=sum(profit),';
        commandtext:=commandtext+' p1=sum(case when cmonth=1 then profit end),p2=sum(case when cmonth=2 then profit end),p3=sum(case when cmonth=3 then profit end),';
        commandtext:=commandtext+' p4=sum(case when cmonth=4 then profit end),p5=sum(case when cmonth=5 then profit end),p6=sum(case when cmonth=6 then profit end),';
        commandtext:=commandtext+' p7=sum(case when cmonth=7 then profit end),p8=sum(case when cmonth=8 then profit end),p9=sum(case when cmonth=9 then profit end),';
        commandtext:=commandtext+' p10=sum(case when cmonth=10 then profit end),p11=sum(case when cmonth=11 then profit end),p12=sum(case when cmonth=12 then profit end)';
        commandtext:=commandtext+' from (select a.dst_id,a.agent_id,a.cate_id,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),cyear=year(a.carry_dt),cmonth=month(a.carry_dt),';
        commandtext:=commandtext+'   profit=cast(round((isnull(q.amot,0)-isnull(o.amot,0)-isnull(o.fee,0))*case when a.busi_type=3 then 0 else 1 end*b.qty,2) as decimal(15,2))';
        commandtext:=commandtext+'   from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+'   left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+'   left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+'   where a.bod_type_id=42 and a.bod_status_id=1';
//        if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
        commandtext:=commandtext+'  and a.cate_id=2';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if dxPickEdit1.itemindex=0
                then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
            if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate where a.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)'
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' ) h group by dst_id,agent_id,cate_id,cyear) y';
        commandtext:=commandtext+' left join tb_busimate c on y.dst_id=c.mate_id';
        commandtext:=commandtext+' left join tb_busimate d on y.agent_id=d.mate_id';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if si>0 then locate('rec_id',si,[]);
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=TabSheet4 then
begin
    with qry3 do
    begin
        if active=true then
        begin
            si:=fieldbyname('rec_id').asinteger;
            close;
        end
        else si:=0;
        commandtext:='select rec_id=cast(ROW_NUMBER() OVER(ORDER BY c.mate_name,y.cyear) as int),';
        commandtext:=commandtext+' y.*,c.mate_name from (';
        commandtext:=commandtext+' select src_id,cyear,p0=sum(profit),';
        commandtext:=commandtext+' p1=sum(case when cmonth=1 then profit end),p2=sum(case when cmonth=2 then profit end),p3=sum(case when cmonth=3 then profit end),';
        commandtext:=commandtext+' p4=sum(case when cmonth=4 then profit end),p5=sum(case when cmonth=5 then profit end),p6=sum(case when cmonth=6 then profit end),';
        commandtext:=commandtext+' p7=sum(case when cmonth=7 then profit end),p8=sum(case when cmonth=8 then profit end),p9=sum(case when cmonth=9 then profit end),';
        commandtext:=commandtext+' p10=sum(case when cmonth=10 then profit end),p11=sum(case when cmonth=11 then profit end),p12=sum(case when cmonth=12 then profit end)';
        commandtext:=commandtext+' from (select a.src_id,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),cyear=year(a.carry_dt),cmonth=month(a.carry_dt),';
        commandtext:=commandtext+'   profit=cast(round((isnull(q.amot,0)-isnull(o.amot,0)-isnull(o.fee,0))*case when a.busi_type=3 then 0 else 1 end*b.qty,2) as decimal(15,2))';
        commandtext:=commandtext+'   from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+'   left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+'   left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+'   where a.bod_type_id=42 and a.bod_status_id=1';
//        if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
        commandtext:=commandtext+'  and a.cate_id=2';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if dxPickEdit1.itemindex=0
                then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
            if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate where a.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)'
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' ) h group by src_id,cyear) y';
        commandtext:=commandtext+' left join tb_busimate c on y.src_id=c.mate_id';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if si>0 then locate('src_id',si,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tqryreport14.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
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

procedure Tqryreport14.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport14.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryreport14.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryreport14.FormActivate(Sender: TObject);
begin
{
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
}
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
if fmateid>0 then
begin
	dxButtonEdit5.Tag:=fmateid;
    dxButtonEdit5.Text:=fmatename;
    SpeedButton5Click(nil);
end;
end;

procedure Tqryreport14.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tqryreport14.N3Click(Sender: TObject);
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

procedure Tqryreport14.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tqryreport14.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1Camot.Visible:=False;
setprogress(0);
end;

procedure Tqryreport14.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1Camot.Visible:=False;
end;

procedure Tqryreport14.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1ckd_amot1) or (AColumn = dxDBGrid1Cfinished) then
begin
    if (ANode.Values[dxDBGrid1Camot1.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot1.Index] =ANode.Values[dxDBGrid1Camot1.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
{
if (AColumn = dxDBGrid1ckd_amot3) or (AColumn = dxDBGrid1Cfinished1) then
begin
    if (ANode.Values[dxDBGrid1Camot3.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot3.Index] =ANode.Values[dxDBGrid1Camot3.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
if (AColumn = dxDBGrid1rprice2) then
begin
    if (ANode.Values[dxDBGrid1price1.Index]<>ANode.Values[dxDBGrid1rprice2.Index]) then
//    if (ANode.Values[dxDBGrid1price1.Index]<>ANode.Values[dxDBGrid1rprice2.Index]) and (ANode.Values[dxDBGrid1rprice2.Index]>0) then
    begin
        Acolor := clred; //$00B8FFB3; //$00E9FFD7; // light green
        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqryreport14.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调价';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('cfinished').asboolean:=(fieldbyname('cnot_amot1').asfloat=0);
    fieldbyname('camot3').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot3').asfloat:=fieldbyname('camot3').asfloat-fieldbyname('ckd_amot3').asfloat;
    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat<>0) and (fieldbyname('cnot_amot3').asfloat<=0);
    fieldbyname('camot4').asfloat:=(fieldbyname('pamot').asfloat+fieldbyname('fee').asfloat)*fieldbyname('qty').asfloat;
    fieldbyname('cprofit').asfloat:= fieldbyname('camot3').asfloat-fieldbyname('camot4').asfloat;
    fieldbyname('camot').asfloat:= fieldbyname('rprice').asfloat*fieldbyname('qty').asfloat;
    if fieldbyname('rprice').asfloat*fieldbyname('qty').asfloat=0
    	then fieldbyname('cprate').asfloat:=0
        else fieldbyname('cprate').asfloat:= 100*fieldbyname('cprofit').asfloat/(fieldbyname('rprice').asfloat*fieldbyname('qty').asfloat);
end;
end;

procedure Tqryreport14.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tqryreport14.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

procedure Tqryreport14.N7Click(Sender: TObject);
var i,mi,mateid,agentid,l,m,n: integer;
    f1,f2,f3,f4,f5: integer;
    s,t: string;
    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:='--------------------------------------------';  t:='';
mi:=0;   mamt:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if qry.fieldbyname('cnot_amot3').asfloat<>0 then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('cnot_amot3').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
//        bodid:=qry.fieldbyname('bod_id').asinteger;
        mamt:=qry.fieldbyname('cnot_amot3').asfloat;
        mi:=1;
    end;
end
else
begin
    m := dxDBGrid1.ColumnByFieldName('src_id').Index;
//    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('amot').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('cnot_amot3').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
            if mi=0 then
            begin
//                bodid:=dxDBGrid1.SelectedNodes[i].values[l];
                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
//                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
//                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务负责人的单据');
            end;
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可生成返入收款单记录');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
//    commandtext:=commandtext+' left join (select * from tb_busiframe6 where valid=1) q on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where b.dtl_id in ('+t+') and (q.amot=0 or q.amot is null)';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中下列单据品种无应收返入单价，请先设置'+#13+#10+'-------------------------------------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where b.dtl_id in ('+t+') and (q.amot=0 or q.amot is null or b.price1<>isnull(q.price2,0))';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中下列单据品种无应收返入单价或销售单价不符合规则，'+ #13#10+'不可生成返入收款单'+#13+#10+'-----------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=48 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的返入收款单。请先将其审核完成或取消后，再生成新返入收款单'+#13+#10+'-------------------------------------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'返入收款单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

if MessageBox(0,Pchar('确定由下列单据品种生成返入收款单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:= formatfloat('00000000',getbillid(compid,48));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',48,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(round(q.amot*b.qty,2)-isnull(b.ckd_amot3,0)),(round(q.amot*b.qty,2)-isnull(b.ckd_amot3,0))';
    commandtext:=commandtext+' from tb_bill a left join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)'; // on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
//    commandtext:=commandtext+' left join (select * from tb_busiframe6 where valid=1) q on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
    commandtext:=commandtext+' where b.dtl_id in ('+t+') order by a.bod_id,b.dtl_id';
//edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号返入收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tqryreport14.qry1CalcFields(DataSet: TDataSet);
begin
{
with (DataSet as TClientDataSet) do
begin
    fieldbyname('cprofit').asfloat:= fieldbyname('camot3').asfloat-fieldbyname('camot4').asfloat;
    if fieldbyname('camot').asfloat=0
    	then fieldbyname('cprate').asfloat:=0
        else fieldbyname('cprate').asfloat:= 100*fieldbyname('cprofit').asfloat/(fieldbyname('camot').asfloat);
end;
}
end;

procedure Tqryreport14.dxDBGrid2CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid2Camot1' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

procedure Tqryreport14.dxDBGrid3CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid3Camot1' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid3Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid3Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

procedure Tqryreport14.dxDBGrid4CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid4Camot1' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid4Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid4Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

procedure Tqryreport14.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1Camot1' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
    label11.caption:=atext+ floattostr(m1)+ '   '+floattostr(m2);
end;
end;

procedure Tqryreport14.qry2CalcFields(DataSet: TDataSet);
begin
with qry2 do
begin
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
end;
end;

procedure Tqryreport14.dxDBGrid3CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid3Ccate) then
begin
    if (ANode.Strings[dxDBGrid3Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid3Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
    end;
end;
end;

procedure Tqryreport14.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
