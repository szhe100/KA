unit Unit215b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, DB, ADODB, dxCntner, DBClient, dxEdLib, StdCtrls,
  dxDBEdtr, dxDBELib, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, Variants,
  dxGrClms, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Buttons,
  dxdbtrel, ImgList, mycds, DBCtrls, ComCtrls;

type
  Tsetexpaycheck = class(TForm)
    DSqry: TDataSource;
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
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit1: TdxCheckEdit;
    Shape5: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    qrydst_id: TIntegerField;
    qrybod_cd: TStringField;
    qrymate_name: TStringField;
    qryagent_id: TIntegerField;
    qryagent: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qrybat_cd: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrybod_type: TStringField;
    qrybod_type_id: TIntegerField;
    qrydtl_id: TAutoIncField;
    qrybod_id: TIntegerField;
    ADOQuery1ckd_amot1: TBCDField;
    ADOQuery1ckd_amot2: TBCDField;
    qryckd_amot1: TBCDField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrybod_cd1: TStringField;
    qryCamot1: TBCDField;
    qryCamot2: TBCDField;
    qryCnot_amot: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    qryCamot: TBCDField;
    qryrate: TBCDField;
    qryrate1: TBCDField;
    qryamot1: TBCDField;
    qryfee: TBCDField;
    qryCfee: TBCDField;
    qrycarry_dt: TDateTimeField;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    qrycreater: TStringField;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    qrytype_id: TIntegerField;
    qryCtype: TStringField;
    qrylevel1: TStringField;
    qrydist1: TStringField;
    qrystoppay: TBooleanField;
    qrytype_id1: TWordField;
    qryCtypeid1: TStringField;
    qrybod_desc: TStringField;
    qrydist2: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label10: TLabel;
    Shape6: TShape;
    ImageList: TImageList;
    Label7: TLabel;
    Shape7: TShape;
    dxEdit1: TdxEdit;
    Label9: TLabel;
    qrycprice1: TBCDField;
    qrycprice2: TBCDField;
    qryfee_type_id: TIntegerField;
    qryCfeetype: TStringField;
    qryrec_id: TAutoIncField;
    Edit3: TEdit;
    RadioGroup3: TRadioGroup;
    N2: TMenuItem;
    qryckd_amot2a: TBCDField;
    qryckd_amot2: TBCDField;
    qryfckdamot2: TBooleanField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    SpeedButton1: TSpeedButton;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    qrybod_desc1: TStringField;
    qryckd_amot3: TBCDField;
    qryfckdamot3: TBooleanField;
    Label5: TLabel;
    qryckd_amot: TBCDField;
    qryCamot22: TBCDField;
    qryCamot4: TBCDField;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    qrynot_amot: TBCDField;
    qrybod_cd2: TStringField;
    qrybod_cd3: TStringField;
    qryamot1a: TBCDField;
    qrycqty1: TBCDField;
    qryCstatus: TBooleanField;
    qryCamot5: TBCDField;
    qryCamot6: TBCDField;
    Label14: TLabel;
    qryamot2: TBCDField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    N11: TMenuItem;
    N12: TMenuItem;
    qryCamot7: TBCDField;
    qryCamot8: TBCDField;
    qryCamot9: TBCDField;
    qryprice10: TBCDField;
    qrymaterial_code: TStringField;
    qryBSTKD: TStringField;
    N13: TMenuItem;
    N14: TMenuItem;
    qryCamot10: TBCDField;
    qryVTEXT: TStringField;
    qryZKDGRP: TStringField;
    qryagent1: TStringField;
    qryASSIGNED_BP: TStringField;
    qryagent_code: TStringField;
    qryagent_code1: TStringField;
    qryamot6: TBCDField;
    N3: TMenuItem;
    N15: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N32: TMenuItem;
    N16: TMenuItem;
    N22: TMenuItem;
    N5: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1VTEXT: TdxDBGridColumn;
    dxDBGrid1ZKDGRP: TdxDBGridColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1bod_cd3: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1agent_code: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1agent_code1: TdxDBGridColumn;
    dxDBGrid1agent1: TdxDBGridColumn;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1BSTKD: TdxDBGridColumn;
    dxDBGrid1material_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1Camot3: TdxDBGridColumn;
    dxDBGrid1ckd_amot3: TdxDBGridColumn;
    dxDBGrid1ckd_amot2a: TdxDBGridColumn;
    dxDBGrid1ckd_amot1: TdxDBGridColumn;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    dxDBGrid1not_amot: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Camot4: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1Camot: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1price10: TdxDBGridColumn;
    dxDBGrid1cprice1: TdxDBGridColumn;
    dxDBGrid1cprice2: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1amot1a: TdxDBGridColumn;
    dxDBGrid1rate1: TdxDBGridColumn;
    dxDBGrid1fee: TdxDBGridColumn;
    dxDBGrid1Cstatus: TdxDBGridCheckColumn;
    dxDBGrid1cqty1: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1Camot10: TdxDBGridColumn;
    dxDBGrid1amot5: TdxDBGridColumn;
    dxDBGrid1Camot6: TdxDBGridColumn;
    dxDBGrid1bod_type_id: TdxDBGridColumn;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1agent_id: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1Camot7: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    dxDBGrid2ZKDGRP: TdxDBGridColumn;
    dxDBGrid2agent_code1: TdxDBGridColumn;
    dxDBGrid2agent1: TdxDBGridColumn;
    dxDBGrid2Camot1: TdxDBGridColumn;
    dxDBGrid2Camot3: TdxDBGridColumn;
    dxDBGrid2ckd_amot3: TdxDBGridColumn;
    dxDBGrid2ckd_amot2a: TdxDBGridColumn;
    dxDBGrid2ckd_amot1: TdxDBGridColumn;
    dxDBGrid2ckd_amot: TdxDBGridColumn;
    dxDBGrid2not_amot: TdxDBGridColumn;
    dxDBGrid2Camot2: TdxDBGridColumn;
    dxDBGrid2Camot4: TdxDBGridColumn;
    dxDBGrid2amot5: TdxDBGridColumn;
    dxDBGrid2Camot6: TdxDBGridColumn;
    dxDBGrid2Camot7: TdxDBGridColumn;
    qry1: TClientDataSet;
    StringField2: TStringField;
    StringField14: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    BCDField1: TBCDField;
    BCDField3: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    BCDField18: TBCDField;
    BCDField19: TBCDField;
    BCDField20: TBCDField;
    BCDField23: TBCDField;
    BooleanField2: TBooleanField;
    BCDField24: TBCDField;
    BooleanField3: TBooleanField;
    BCDField25: TBCDField;
    BCDField26: TBCDField;
    BCDField27: TBCDField;
    BooleanField4: TBooleanField;
    BCDField29: TBCDField;
    BCDField30: TBCDField;
    BCDField31: TBCDField;
    BCDField32: TBCDField;
    BCDField33: TBCDField;
    BCDField34: TBCDField;
    DSqry1: TDataSource;
    qry1bal0: TBCDField;
    dxDBGrid2bal0: TdxDBGridColumn;
    qry1agent_code1: TStringField;
    N17: TMenuItem;
    Edit4: TEdit;
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure dxDateEdit1DblClick(Sender: TObject);
    procedure dxDateEdit2DblClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure N13Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure N17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setexpaycheck: Tsetexpaycheck;
  sqry: string;

implementation

uses datamodu, Unit7, Unit15, Unit16, Unit16a, Unit16c; //, Main, Unit103;//, Unit35a Unit9,

{$R *.DFM}

procedure Tsetexpaycheck.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.purchaser do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetexpaycheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpaycheck.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetexpaycheck.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    if recordcount=0 then label20.caption:=''
    else
    begin
    if fieldbyname('carry_dt').asdatetime<strtodate('2024-01-01') then
    begin
        label20.caption:=fieldbyname('bod_type').asstring+fieldbyname('bod_cd').asstring+'号单发生日期:'+formatdatetime('yyyy-mm-dd',fieldbyname('carry_dt').asdatetime)+', 未申请金额 = '+formatfloat('###,###,##0.00',fieldbyname('Camot4').asfloat);
        if fieldbyname('Camot4').asfloat=0
            then label20.caption:=label20.caption+', 不可核销'  // (白色)
            else label20.caption:=label20.caption+', 可以核销'; // (黄色)
    end
    else
    begin
        label20.caption:=fieldbyname('bod_type').asstring+fieldbyname('bod_cd').asstring+'号单发生日期:'+formatdatetime('yyyy-mm-dd',fieldbyname('carry_dt').asdatetime)+', 回款应付金额-已申请金额 = '+'('+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat)+') - ('+formatfloat('###,###,##0.00',fieldbyname('ckd_amot2a').asfloat) +') = '+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat);
        if fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat=0
            then label20.caption:=label20.caption+', 不可核销'  // (白色)
            else label20.caption:=label20.caption+', 可以核销'; // (黄色)
    end;
    end;
//    label21.caption:='('+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat)+') - ('+formatfloat('###,###,##0.00',fieldbyname('ckd_amot2a').asfloat) +') = '+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat);
end;
end;

procedure Tsetexpaycheck.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
sqry:='';
N3.Visible:=False;
end;

procedure Tsetexpaycheck.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetexpaycheck.SpeedButton5Click(Sender: TObject);
var mi: integer;
    sc: string;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
//DecodeDate(dxDateEdit1.Date, Year, Month, Day);
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
{
if fperiodlimit then
begin
    case year of
        2015:  objid:=1;
        2016:  objid:=2;
        2017:  objid:=3;
        2018:  objid:=4;
        2019:  objid:=5;
        2020:  objid:=6;
        2021:  objid:=7;
        2022:  objid:=8;
        2023:  objid:=9;
        2024:  objid:=10;
        2025:  objid:=11;
        2026:  objid:=12;
        2027:  objid:=13;
        2028:  objid:=14;
    end;
    with dm.pubqry do
    begin
        commandtext:='select top 1 1 from tb_sysright where type_id=1 and sta_id='+inttostr(curuserid)+' and obj_id='+inttostr(objid);
        open;
        if recordcount=0 then raise Exception.Create('您不可查询'+inttostr(year)+'年度的数据');
    end;
    DecodeDate(dxDateEdit2.Date, Year, Month, Day);
    case year of
        2015:  objid:=1;
        2016:  objid:=2;
        2017:  objid:=3;
        2018:  objid:=4;
        2019:  objid:=5;
        2020:  objid:=6;
        2021:  objid:=7;
        2022:  objid:=8;
        2023:  objid:=0;
        2024:  objid:=10;
        2025:  objid:=11;
        2026:  objid:=12;
        2027:  objid:=13;
        2028:  objid:=14;
    end;
    with dm.pubqry do
    begin
        commandtext:='select top 1 1 from tb_sysright where type_id=1 and sta_id='+inttostr(curuserid)+' and obj_id='+inttostr(objid);
        open;
        if recordcount=0 then raise Exception.Create('您不可查询'+inttostr(year)+'年度的数据');
    end;
end;
}
if PageControl1.ActivePage=TabSheet1 then   //客户汇总
begin
    setprogress(1);
    with qry1 do
    begin
        if active then
        begin
            sc:=fieldbyname('agent_code1').asstring;
            close;
        end
        else sc:='';

        //分销采购
        commandtext:=' select agent_code1,agent1,ZKDGRP,dist1,dist2,bal0=0.00,';
        commandtext:=commandtext+' camot=sum(camot),camot1=sum(camot1),camot3=sum(camot3),';
        commandtext:=commandtext+' ckd_amot=sum(ckd_amot),ckd_amot1=sum(ckd_amot1),ckd_amot2=sum(ckd_amot2),ckd_amot2a=sum(ckd_amot2a),ckd_amot3=sum(ckd_amot3),';
        commandtext:=commandtext+' qty=sum(a.qty),amot=sum(amot),amot1=sum(amot1),amot2=sum(a.amot2),'; //a.price,'; //price10=i.price10,';
        commandtext:=commandtext+' fee=sum(fee),amot1a=sum(amot1a),not_amot=sum(not_amot),amot5=sum(amot5)';
        commandtext:=commandtext+' from (select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type=''分销采购'',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='''',bod_cd3=GBELN,bod_desc='''',bod_desc1='''', ';
        commandtext:=commandtext+' broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,';
        commandtext:=commandtext+' agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP,';
        commandtext:=commandtext+' agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end,';
        commandtext:=commandtext+' agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end,';
        commandtext:=commandtext+' stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,';
        commandtext:=commandtext+' creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='''',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='''',type_id1=0,bat_cd=CHARG,';
        
        commandtext:=commandtext+' camot=cast(cast(a.KONV as decimal(15,4))*a.qty as decimal(15,2)), camot1=cast(i.amot*a.qty as decimal(15,2)),camot3=cast(i.fee*a.qty as decimal(15,2)),';

        commandtext:=commandtext+' a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3,';
        commandtext:=commandtext+' a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)),'; //a.price,'; //price10=i.price10,';
        //dbo].[fn_getprice1a](@provcode varchar(10),@citycode varchar(10),@materialcode varchar(20),@dt datetime)
        commandtext:=commandtext+' price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt),'; //
        commandtext:=commandtext+' i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0,';
        commandtext:=commandtext+' not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2))';
        commandtext:=commandtext+' ,amot5=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else cast(a.amot1/cast(a.KONV as decimal(15,4)) as decimal(15,2))*i.amot end as decimal(15,2))'; //-isnull(a.ckd_amot,0)';

        commandtext:=commandtext+' from SAP_ZSD_015 a';
        commandtext:=commandtext+' left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name';
        commandtext:=commandtext+' left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP'; //按名称join 出错概率大, 确保mate_code唯一时，可用mate_code link    c.mate_code=a.ASSIGNED_BP'; //a.NAME_FIRST=c.mate_name';

        commandtext:=commandtext+' left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id';
        commandtext:=commandtext+' left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id';
        commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name';
        commandtext:=commandtext+'   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i';
        commandtext:=commandtext+'  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)';
    //create function [dbo].[fn_getbusiframe3recid](@channelcode int,@channeldtlcode int,@mateid int,@agentid int,@materialcode varchar(20),@price decimal(15,4),@price1 decimal(15,4),@dt datetime)

        commandtext:=commandtext+' where KDGRP not in (''10'',''19'')'; //  and a.carry_dt>= '2025-05-01' and a.carry_dt< dateadd(day,1,'2025-06-03')
        commandtext:=commandtext+'  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)'; //核销条件:原订单 销售单价 > 考核单价
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+' and (a.GBELN='''+Trim(dxEdit1.text)+''' or a.VBELN='''+Trim(dxEdit1.text)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.NAME1='''+Trim(dxbuttonedit1.text)+'''';
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id='+inttostr(dxbuttonedit2.tag)+' and (a.MATNR=m.material_code or a.MATNR=m.material_code1))';
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate c where c.mate_id='+inttostr(dxbuttonedit3.tag)+' and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';

        //应付记账
        commandtext:=commandtext+' union all select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''应付记账'',a.bod_cd,bod_cd1='''',bod_cd2='''',bod_cd3='''',a.bod_desc,a.bod_desc1,';
        commandtext:=commandtext+' a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1=f.mate_name,agent_code1=f.mate_code,stoppay=isnull(f.stoppay,0),';
        commandtext:=commandtext+' VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id),';
        commandtext:=commandtext+' dist1=f.BEZEI,dist2=f.CITY1,level1='''',';
        commandtext:=commandtext+' creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='''',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='''',';

        commandtext:=commandtext+' camot=0,camot1=cast(a.bod_amot as decimal(15,2)),camot3=0,';

        commandtext:=commandtext+' z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3,';    //h.amot1,
        commandtext:=commandtext+' qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0,';
        commandtext:=commandtext+' type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0';
        commandtext:=commandtext+' ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2))';
        commandtext:=commandtext+' ,amot5=cast(a.bod_amot as decimal(15,2))'; //-isnull(z.ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_bill_stadtl h on a.bod_id=h.bod_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))), ';
        commandtext:=commandtext+' 				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制

        commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id';

        commandtext:=commandtext+' left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制
        commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36';
        commandtext:=commandtext+' 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
        commandtext:=commandtext+'	group by b.med_id) z on z.med_id=a.bod_id';

        commandtext:=commandtext+' where a.bod_type_id=36 and a.bod_status_id=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';

            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and f.district like '''+dm.district.fieldbyname('code').asstring+'%'''
        end;

        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';


        if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_amot=z.ckd_amot'; //已完成收款
        if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_amot<>isnull(z.ckd_amot,0)'; //未完成收款
        if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (1=2)'; //两票其他支出记账单 无促销规则
        if RadioGroup3.ItemIndex=4 then
        begin
            commandtext:=commandtext+' and not exists (select 1 from (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,2,3,5) and a.bod_id=b.bod_id';   //1,
            commandtext:=commandtext+' 		and b.type_id=36 group by b.med_id) x where x.med_id=h.bod_id and a.bod_amot=isnull(h.ckd_amot2a,0))';
        end;
        commandtext:=commandtext+' ) a group by agent_code1,agent1,ZKDGRP,dist1,dist2';
{
        if sqry<>'' then
        begin
            commandtext:='select * from ( '+commandtext+' ) a where '+sqry; // VTEXT=''分销''';
            sqry:='';
        end;
}
        edit3.text:=commandtext;
        try
            setprogress(1);
            open;
            if sc<>'' then locate('agent_code1',sc,[]);
        finally
            setprogress(0);
        end;
    end;
end
else //明细核销
begin
    setprogress(1);
    with qry do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;

        //分销采购
        commandtext:=' select a.rec_id,dtl_id=0,bod_id=0,a.carry_dt,bod_type_id=0,bod_type=''分销采购'',bod_cd=GBELN,bod_cd1=VBELN,bod_cd2='''',bod_cd3=GBELN,bod_desc='''',bod_desc1='''', ';
        commandtext:=commandtext+' broker_id=cast(ZSALESID_O as int),broker=ZSALESNAM_O,';
        commandtext:=commandtext+' agent_code=a.ASSIGNED_BP,agent=case when i.rec_id>0 then dbo.fn_mate_name(i.agent_id1) else a.NAME_FIRST end,agent_id=c.mate_id,a.ASSIGNED_BP,';
        commandtext:=commandtext+' agent1=case when i.rec_id>0 then i.agent else a.NAME_FIRST end,';
        commandtext:=commandtext+' agent_code1=case when i.rec_id>0 then i.agent_code else a.ASSIGNED_BP end,';
        commandtext:=commandtext+' stoppay=cast(0 as bit), a.VTEXT,a.ZKDGRP,dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,';  //ZCITYNAME
        commandtext:=commandtext+' creater=ZTERNAM,dst_id=b.mate_id,mate_name=NAME1,b.mate_id,BSTKD,material_code=a.MATNR,med_code='''',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='''',type_id1=0,bat_cd=CHARG,';
        commandtext:=commandtext+' a.ckd_amot,ckd_amot1=e.amot,a.ckd_amot2,ckd_amot2a=d.amot,a.ckd_amot3,';
        commandtext:=commandtext+' a.qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(a.qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2)),amot1=cast(a.amot1 as decimal(15,2)),amot2=cast(a.amot2 as decimal(15,2)),price1=cast(a.KONV as decimal(15,4)),'; //a.price,'; //price10=i.price10,';
        //dbo].[fn_getprice1a](@provcode varchar(10),@citycode varchar(10),@materialcode varchar(20),@dt datetime)
        commandtext:=commandtext+' price10=dbo.fn_getprice1a(ZREGIO,ZCITYNUM,a.MATNR,a.carry_dt),'; //
        commandtext:=commandtext+' i.type_id,i.type_id2,i.rate,i.rate1,fee=cast(i.fee as decimal(15,4)),amot1a=cast(i.amot as decimal(15,4)),cprice1=i.price1,cprice2=i.price2,fee_type_id=0,';
        commandtext:=commandtext+' not_amot=cast((isnull(i.amot,0)+isnull(i.fee,0))*a.qty-isnull(a.ckd_amot,0) as decimal(15,2))';
        commandtext:=commandtext+' ,amot5=cast(case when cast(a.KONV as decimal(15,4))=0 then 0 else cast(a.amot1/cast(a.KONV as decimal(15,4)) as decimal(15,2))*i.amot end as decimal(15,2))'; //-isnull(a.ckd_amot,0)';

        commandtext:=commandtext+' from SAP_ZSD_015 a';
        commandtext:=commandtext+' left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=2) b on a.NAME1=b.mate_name';
        commandtext:=commandtext+' left join (select mate_id,mate_code,mate_name,district from tb_busimate where mate_type_id=4) c on c.mate_code=a.ASSIGNED_BP'; //按名称join 出错概率大, 确保mate_code唯一时，可用mate_code link    c.mate_code=a.ASSIGNED_BP'; //a.NAME_FIRST=c.mate_name';

        commandtext:=commandtext+' left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id group by b.med_id) d on d.med_id=a.rec_id';
        commandtext:=commandtext+' left join (select b.med_id,amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=0 group by b.med_id) e on e.med_id=a.rec_id';
        commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.rate,c.rate1,c.price1,c.price2,c.type_id2,agent_id1=c.agent_id,agent_code1=f.mate_code,d.agent_id,d.amot,d.fee,agent_code=e.mate_code,agent=e.mate_name';
        commandtext:=commandtext+'   from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id left join tb_busimate e on d.agent_id=e.mate_id left join tb_busimate f on c.agent_id=f.mate_id) i';
        commandtext:=commandtext+'  on i.rec_id=dbo.fn_getbusiframe3recid(a.VTWEG,a.KDGRP,b.mate_id,c.mate_id,a.MATNR,cast(a.KONV as decimal(15,4)),cast(ZPR03 as decimal(15,4)),a.carry_dt)';
    //create function [dbo].[fn_getbusiframe3recid](@channelcode int,@channeldtlcode int,@mateid int,@agentid int,@materialcode varchar(20),@price decimal(15,4),@price1 decimal(15,4),@dt datetime)

        commandtext:=commandtext+' where KDGRP not in (''10'',''19'')'; //  and a.carry_dt>= '2025-05-01' and a.carry_dt< dateadd(day,1,'2025-06-03')
        commandtext:=commandtext+'  and (a.price>cast(ZPR03 as decimal(15,4)) or a.price=cast(ZPR03 as decimal(15,4)) and i.rec_id>0)'; //核销条件:原订单 销售单价 > 考核单价
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+' and (a.GBELN='''+Trim(dxEdit1.text)+''' or a.VBELN='''+Trim(dxEdit1.text)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.NAME1='''+Trim(dxbuttonedit1.text)+'''';
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id='+inttostr(dxbuttonedit2.tag)+' and (a.MATNR=m.material_code or a.MATNR=m.material_code1))';
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate c where c.mate_id='+inttostr(dxbuttonedit3.tag)+' and (a.ASSIGNED_BP=c.mate_code or i.agent_code=c.mate_code))';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+')';

        //应付记账
        commandtext:=commandtext+' union all select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''应付记账'',a.bod_cd,bod_cd1='''',bod_cd2='''',bod_cd3='''',a.bod_desc,a.bod_desc1,';
        commandtext:=commandtext+' a.broker_id,broker=dbo.fn_staff_name(a.broker_id),agent_code=f.mate_code,agent=f.mate_name,a.agent_id,ASSIGNED_BP=f.mate_code,agent1=f.mate_name,agent_code1=f.mate_code,stoppay=isnull(f.stoppay,0),';
        commandtext:=commandtext+' VTEXT=dbo.fn_obj_desc1(11,a.channel_id),ZKDGRP=dbo.fn_obj_desc1(12,a.channel_dtl_id),';
        commandtext:=commandtext+' dist1=f.BEZEI,dist2=f.CITY1,level1='''',';
        commandtext:=commandtext+' creater=d.zname,a.dst_id,e.mate_name,e.mate_id,BSTKD='''',m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='''',';
        commandtext:=commandtext+' z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3,';    //h.amot1,
        commandtext:=commandtext+' qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2)),amot1=0.00,amot2=0.00,price1=0,price10=0,';
        commandtext:=commandtext+' type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0';
        commandtext:=commandtext+' ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2))';
        commandtext:=commandtext+' ,amot5=cast(a.bod_amot as decimal(15,2))'; //-isnull(z.ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_bill_stadtl h on a.bod_id=h.bod_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))), ';
        commandtext:=commandtext+' 				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制

        commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id';

        commandtext:=commandtext+' left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制
        commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36';
        commandtext:=commandtext+' 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
        commandtext:=commandtext+'	group by b.med_id) z on z.med_id=a.bod_id';

        commandtext:=commandtext+' where a.bod_type_id=36 and a.bod_status_id=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';

            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and f.district like '''+dm.district.fieldbyname('code').asstring+'%'''
        end;

        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';


        if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_amot=z.ckd_amot'; //已完成收款
        if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_amot<>isnull(z.ckd_amot,0)'; //未完成收款
        if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (1=2)'; //两票其他支出记账单 无促销规则
        if RadioGroup3.ItemIndex=4 then
        begin
            commandtext:=commandtext+' and not exists (select 1 from (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,2,3,5) and a.bod_id=b.bod_id';   //1,
            commandtext:=commandtext+' 		and b.type_id=36 group by b.med_id) x where x.med_id=h.bod_id and a.bod_amot=isnull(h.ckd_amot2a,0))';
        end;
        // notice: union 得到的数据 Clientdataset 在post时，报read only 错误，所以要修改tb_bill.ckd_amot2字段，再inner join一下tb_bill
        if sqry<>'' then
        begin
            commandtext:='select * from ( '+commandtext+' ) a where '+sqry; // VTEXT=''分销''';
            sqry:='';
        end;
        edit3.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tsetexpaycheck.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetexpaycheck.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetexpaycheck.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
//    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price').asfloat-fieldbyname('amot1a').asfloat-fieldbyname('fee').asfloat;
    fieldbyname('cfee').asfloat:=fieldbyname('cprice1').asfloat-fieldbyname('cprice2').asfloat-fieldbyname('amot1a').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger in [0,1] then  // 0: SAP采购单;  1: KA采购单
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot1a').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('Camot3').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    if fieldbyname('bod_type_id').asinteger=36 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot').asfloat;
        fieldbyname('Camot3').asfloat:=0;
    end;
{
    if fieldbyname('amot2').asfloat<>0 then fieldbyname('Camot').asfloat:=fieldbyname('amot2').asfloat
        else fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
}
    fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot3').asfloat-fieldbyname('ckd_amot').asfloat;  //未收款金额
//    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot2').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('camot2').asfloat:= fieldbyname('ckd_amot2a').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额 = 已审核金额—已收款金额
    fieldbyname('camot4').asfloat:= fieldbyname('Camot1').asfloat+fieldbyname('Camot3').asfloat-fieldbyname('ckd_amot2a').asfloat;  //未申请金额”，取值为：应付金额+应付促销费—已申请金额

    case fieldbyname('type_id').asinteger of
        0:  fieldbyname('ctype').asstring:='';
        1:  fieldbyname('ctype').asstring:='全额返款';
        2:  fieldbyname('ctype').asstring:='部分返款';
        3:  fieldbyname('ctype').asstring:='终端基层';
    end;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
    case fieldbyname('fee_type_id').asinteger of
        1:  fieldbyname('cfeetype').asstring:='推广费(主)';
        2:  fieldbyname('cfeetype').asstring:='推广费(次)';
    end;
    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('Camot1').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot1').asfloat)
        	or (fieldbyname('Camot1').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot1').asfloat));
{
    fieldbyname('fckdamot2').asboolean := (fieldbyname('ckd_amot2').asfloat<>0)
    	and ((fieldbyname('Camot1').asfloat>0) and (fieldbyname('ckd_amot2').asfloat>=fieldbyname('Camot1').asfloat)
        	or (fieldbyname('Camot1').asfloat<0) and (fieldbyname('ckd_amot2').asfloat<=fieldbyname('Camot1').asfloat));
}
{
    fieldbyname('camot2').asfloat:= fieldbyname('ckd_amot1').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额”，取值为已审核金额—已收款金额
    fieldbyname('camot4').asfloat:= fieldbyname('camot1').asfloat+fieldbyname('camot2').asfloat-fieldbyname('ckd_amot2a').asfloat;  //未申请金额”，取值为：应付金额+应付促销费—已申请金额
}
    fieldbyname('cstatus').asboolean:=(fieldbyname('amot1').asfloat=fieldbyname('Camot').asfloat) and (fieldbyname('amot1').asfloat<>0);
    if fieldbyname('price1').asfloat=0 then fieldbyname('cqty1').asfloat:=0 else fieldbyname('cqty1').asfloat:=fieldbyname('amot1').asfloat/fieldbyname('price1').asfloat; //已收款数量=已收款金额/销售单价

    if (fieldbyname('bod_type_id').asinteger=36) and (fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')) or (fieldbyname('cstatus').asboolean)
        then fieldbyname('camot5').asfloat:=fieldbyname('Camot1').asfloat  //回款应付金额=应付金额
        else fieldbyname('camot5').asfloat:=fieldbyname('cqty1').asfloat*fieldbyname('amot1a').asfloat; //回款应付金额=已收款数量*应付金额/盒
//    fieldbyname('camot5').asfloat:=fieldbyname('cqty1').asfloat*fieldbyname('amot1a').asfloat; //回款应付金额=已收款数量*应付金额/盒

    if fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')
        then fieldbyname('camot6').asfloat:=fieldbyname('amot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;
{
    if fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')
        then fieldbyname('camot6').asfloat:=fieldbyname('camot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;

    if (fieldbyname('bod_type_id').asinteger=1) and (fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1'))
        then fieldbyname('camot6').asfloat:=fieldbyname('camot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;
    fieldbyname('camot7').asfloat:= fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat;
    fieldbyname('camot8').asfloat:= fieldbyname('Camot5').asfloat;
}
    // camot7 用于 判断 应核销余额，显示颜色
    fieldbyname('camot7').asfloat:= fieldbyname('amot5').asfloat-fieldbyname('ckd_amot2a').asfloat;
    fieldbyname('camot8').asfloat:= fieldbyname('amot5').asfloat;
    fieldbyname('camot9').asfloat:= fieldbyname('ckd_amot2a').asfloat;
    fieldbyname('camot10').asfloat:= fieldbyname('Camot').asfloat-fieldbyname('amot1').asfloat; 
end;
end;

procedure Tsetexpaycheck.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1carry_dt.Index]< strtodate('2024-1-1')) and (ANode.Values[dxdbgrid1Camot4.Index]<>0) then Acolor := $00CEFFFD;
//if (ANode.Values[dxdbgrid1carry_dt.Index]>=strtodate('2024-1-1')) and (ANode.Values[dxdbgrid1Camot7.Index]<>0) then Acolor := $00CEFFFD;
{
begin
    if (ANode.Values[dxdbgrid1Camot5.Index]-ANode.Values[dxdbgrid1ckd_amot2a.Index]=0) then Acolor := clWindow
    else Acolor := $00CEFFFD;
end;
}
//label21.Caption:=ANode.Strings[dxdbgrid1Camot5.Index];
//label22.Caption:=ANode.Strings[dxdbgrid1ckd_amot2a.Index];
//        if fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat=0

if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '分销采购') then
    begin
        AColor := $00FFFFE1; //$00CAFDFD; //clyellow;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '应付记账') then
    begin
        AFont.Color := clHighlight;
    end;
end;
{
if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '应付记账') then
    begin
        AColor := $00CAFDFD; //clyellow;
//        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '分销采购') then
    begin
        AColor := $00FFFFE1; //$00FEFEB1;
    end;
end;
}
{
if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '代理') then AColor := $00FDE0FE;
end;
}
{
if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '自有') then
    begin
        AColor := $00DDFFFD; //$00BAFEFB;
    end;
end;
}
if (AColumn = dxDBGrid1bod_cd) or (AColumn = dxDBGrid1ckd_amot) then //Camot1
begin
    if (ANode.Values[dxDBGrid1ckd_amot.Index]=ANode.Values[dxDBGrid1Camot1.Index]+ANode.Values[dxDBGrid1Camot3.Index]) and (ANode.Values[dxDBGrid1ckd_amot.Index]<>0) then
    begin
        AColor := clLime; //clgreen;  //clLime;
//        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid1ckd_amot1) then
begin
//AColor := clgreen;
    if (ANode.Strings[dxDBGrid1ckd_amot1.Index] <>'') and (ANode.Strings[dxDBGrid1Cnot_amot.Index] ='') then AColor := clgreen; //$00ABFCA9;
//    if ANode.Values[dxDBGrid1ckd_amot1.Index] >= ANode.Values[dxDBGrid1Camot1.Index] + ANode.Values[dxDBGrid1Camot2.Index] then AColor := clgreen; //$00ABFCA9;
end;
}
//if (AColumn = dxDBGrid1ckd_amot1) or (AColumn = dxDBGrid1Cnot_amot) then
if (AColumn = dxDBGrid1ckd_amot1) or (AColumn = dxDBGrid1not_amot) then
begin
    if (ANode.Values[dxDBGrid1not_amot.Index] =0) then AColor := $00ABFCA9;
end;
if (AColumn = dxDBGrid1cprice1) then
begin
    if (ANode.Values[dxDBGrid1cprice1.Index] <>ANode.Values[dxDBGrid1price1.Index]) then //AColor := clRed; //$00FDE0FE;
    begin
    	AColor := $00C5C4FF; //$00272DFE; //clRed; //$00FDE0FE;
//		AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1cprice2) then
begin
    if (ANode.Values[dxDBGrid1cprice2.Index] <>ANode.Values[dxDBGrid1price.Index]) then
    begin
    	AColor := $00C5C4FF; //$00272DFE; //clRed; //$00FDE0FE;
//		AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1fckdamot3) then
begin
    if (ANode.Values[dxDBGrid1fckdamot3.Index] =True) then AColor := $00ABFCA9;
end;
}
if (AColumn = dxDBGrid1stoppay) then
begin
    if (ANode.Values[dxDBGrid1stoppay.Index] =True) then AColor := $00BFBFFF; //$00ABFCA9;
end;
if (AColumn = dxDBGrid1Cstatus) then
begin
    if (ANode.Values[dxDBGrid1Cstatus.Index]=True) then
    begin
        AColor := clLime;
    end;
end;
end;

procedure Tsetexpaycheck.N1Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,bodtypeid1,n: integer;
    r,d,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11: integer;
    s,s1,s2,sql: string;
    mcd: string[20];
    mamt,m7,m8,m9:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+ '--------------------------------------------';
s1:='';s2:='';  sql:='';
mi:=0;   mamt:=0;
if dxDBGrid1.SelectedCount<2 then
begin
//showmessage('Camot4:'+qry.fieldbyname('Camot4').asstring+'  ckd_amot2a:'+qry.fieldbyname('ckd_amot2a').asstring+'  Camot5:'+qry.fieldbyname('Camot5').asstring+'  cprice1:'+qry.fieldbyname('cprice1').asstring+'  price1:'+qry.fieldbyname('price1').asstring);
{
    if (abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat))
        and (qry.fieldbyname('cprice1').asfloat=qry.fieldbyname('price1').asfloat) then  //按未核销申请金额
}
    if (abs(qry.fieldbyname('Camot4').asfloat)>0.005)
//        and (abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat))
        and (abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('amot5').asfloat))
        and (qry.fieldbyname('cprice1').asfloat=qry.fieldbyname('price1').asfloat) then  //按未核销申请金额
    begin
//showmessage(qry.fieldbyname('cnotamt1').asstring);
        if qry.fieldbyname('bod_type_id').asinteger=36 then
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' 应付记账 ';
//            s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot4').asfloat);

            if qry.fieldbyname('carry_dt').asdatetime<strtodate('2024-1-1') then
            begin
                s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot4').asfloat);  //未申请金额
                mamt:=qry.fieldbyname('Camot4').asfloat;
            end
            else
            begin
                {
                if abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat) then
                begin
                    s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                    mamt:=qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
                end;
                }
                s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('amot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                mamt:=qry.fieldbyname('amot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
            end;
//    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,rela_value,amot)';

            sql:=sql+' union all select @id,type_id='+qry.fieldbyname('bod_type_id').asstring+',med_id='+qry.fieldbyname('bod_id').asstring;  //注意应付记账取tb_bill.bod_id
            sql:=sql+',price='+floattostr(mamt)+',rela_value=0,amot='+floattostr(mamt);
            s1:=qry.fieldbyname('bod_id').asstring; // 取bod_id值
        end
        else   //分销采购
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' '+qry.fieldbyname('med_name').asstring;
//            if qry.fieldbyname('carry_dt').asdatetime<strtodate('2024-1-1') and (qry.fieldbyname('Camot4').asfloat>qry.fieldbyname('Camot6').asfloat) then
            if qry.fieldbyname('carry_dt').asdatetime<strtodate('2024-1-1') then
            begin
                s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot4').asfloat);  //未申请金额
                mamt:=qry.fieldbyname('Camot4').asfloat;
            end
            else
            begin
                {
                if abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat) then
                begin
                    s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                    mamt:=qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
                end;
                }
                s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('amot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                mamt:=qry.fieldbyname('amot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
            end;
{
            if qry.fieldbyname('Camot4').asfloat>qry.fieldbyname('Camot6').asfloat
                then s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot6').asfloat)
                else s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot4').asfloat);

            if (qry.fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')) and (qry.fieldbyname('Camot4').asfloat>qry.fieldbyname('Camot6').asfloat) then
            begin
                MessageBox(0, pchar('超出回款未付金额，请检查'),'请注意',MB_OK+MB_ICONInformation);
                abort;
            end;
}
//    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,rela_value,amot)';
            sql:=sql+' union all select @id,type_id='+qry.fieldbyname('bod_type_id').asstring+',med_id='+qry.fieldbyname('rec_id').asstring;  //注意分销采购取tb_bill_stadtl.rec_id
            sql:=sql+',price='+floattostr(mamt)+',rela_value='+floattostr(qry.fieldbyname('Camot3').asfloat)+',amot='+floattostr(mamt);
            s2:=qry.fieldbyname('rec_id').asstring; // rec_id
        end;
        bodid:=qry.fieldbyname('bod_id').asinteger;
        mateid:=qry.fieldbyname('dst_id').asinteger;
        agentid:=qry.fieldbyname('agent_id').asinteger;
        bodtypeid:=qry.fieldbyname('bod_type_id').asinteger;
        mi:=1;
    end;
end
else
begin
    d := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    f0:= dxDBGrid1.ColumnByFieldName('bod_type_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
    f3:= dxDBGrid1.ColumnByFieldName('Camot4').Index;  // 未申请金额
//    f3:= dxDBGrid1.ColumnByFieldName('Cnot_amot').Index;
    f4:= dxDBGrid1.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
    f5:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    f6:= dxDBGrid1.ColumnByFieldName('carry_dt').Index;
//    f7:= dxDBGrid1.ColumnByFieldName('Camot6').Index;  //回款未付金额
//    f7:= dxDBGrid1.ColumnByFieldName('Camot5').Index;  //回款应付金额
    f7:= dxDBGrid1.ColumnByFieldName('amot5').Index;  //回款应付金额
    f8:= dxDBGrid1.ColumnByFieldName('Camot3').Index;  //应付促销费
    f9:= dxDBGrid1.ColumnByFieldName('ckd_amot2a').Index;  //已申请金额
    
    f10:= dxDBGrid1.ColumnByFieldName('cprice1').Index;  //促销规则 销售单价
    f11:= dxDBGrid1.ColumnByFieldName('price1').Index;  //订单 销售单价
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (abs(dxDBGrid1.SelectedNodes[i].values[f3])>0.005) then
        begin
            if mi=0 then
            begin
                bodtypeid:=dxDBGrid1.SelectedNodes[i].values[f0];
                mateid:=dxDBGrid1.SelectedNodes[i].values[d];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid<>dxDBGrid1.SelectedNodes[i].values[d] then raise Exception.Create('同一次核销不可包含不同商业公司的单据');
                if bodtypeid<>dxDBGrid1.SelectedNodes[i].values[f0] then raise Exception.Create('同一核销单中不可包含不同单据类别');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一核销单中不可包含不同业务负责人');
            end;
            if dxDBGrid1.SelectedNodes[i].values[f0]=36 then//应付记账单
            begin
                s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' 应付记账 '; //+ dxDBGrid1.SelectedNodes[i].Strings[f2]
                s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f5];  // 记录 bod_id 字符串
{
                mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];
}
                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f5]; //应付记账取tb_bill.bod_id
                if dxDBGrid1.SelectedNodes[i].values[f6]<strtodate('2024-1-1') then
                begin
                    s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]);  //Camot4未申请金额
                    mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];  //Camot4
                    sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+',rela_value=0,amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3]);
                end
                else
                begin
                    if dxDBGrid1.SelectedNodes[i].Strings[f7]='' then m7:=0 else m7:=dxDBGrid1.SelectedNodes[i].values[f7];
//                    if dxDBGrid1.SelectedNodes[i].Strings[f8]='' then m8:=0 else m8:=dxDBGrid1.SelectedNodes[i].values[f8];
                    if dxDBGrid1.SelectedNodes[i].Strings[f9]='' then m9:=0 else m9:=dxDBGrid1.SelectedNodes[i].values[f9];

//                    if abs(dxDBGrid1.SelectedNodes[i].values[f9])<>abs(dxDBGrid1.SelectedNodes[i].values[f7]) then
                    if m9 <> m7 then
                    begin
                        s:= s + ' '+formatfloat('###,###,##0.00',m7);  //Camot6回款未付金额
                        mamt:=mamt+m7-m9;  //Camot6
                        sql:=sql+',price='+floattostr(m7-m9)+',rela_value=0,amot='+floattostr(m7-m9);
{
                        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f7]);  //Camot6回款未付金额
                        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9];  //Camot6
                        sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9])+',rela_value=0,amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9]);
}
                    end;
                end;
//                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f5]; //应付记账取tb_bill.bod_id
//                sql:=sql+',price='+floattostr(mamt)+',rela_value=0,amot='+floattostr(mamt);
            end
            else     //分销采购
            begin
                s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
                s2:= s2 +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 tb_bill_stadtl.rec_id 字符串
                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f4]; //分销采购取tb_bill_stadtl.rec_id
                if dxDBGrid1.SelectedNodes[i].values[f6]<strtodate('2024-1-1') then
                begin
                    s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]);  //Camot4未申请金额
                    mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];
                    sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+',rela_value='+floattostr(dxDBGrid1.SelectedNodes[i].Values[f8])+',amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3]);
                end
                else
                begin
                    //showmessage(dxDBGrid1.SelectedNodes[i].Strings[f10]);
                    //showmessage(dxDBGrid1.SelectedNodes[i].Strings[f11]);
                    if dxDBGrid1.SelectedNodes[i].Strings[f7]='' then m7:=0 else m7:=dxDBGrid1.SelectedNodes[i].values[f7];
                    if dxDBGrid1.SelectedNodes[i].Strings[f8]='' then m8:=0 else m8:=dxDBGrid1.SelectedNodes[i].values[f8];
                    if dxDBGrid1.SelectedNodes[i].Strings[f9]='' then m9:=0 else m9:=dxDBGrid1.SelectedNodes[i].values[f9];
//                    if m9<>m7 then showmessage('<>');
                    //if dxDBGrid1.SelectedNodes[i].values[f10]=dxDBGrid1.SelectedNodes[i].values[f11] then showmessage('=');
//                    if (dxDBGrid1.SelectedNodes[i].Strings[f9]<>dxDBGrid1.SelectedNodes[i].Strings[f7]) and (dxDBGrid1.SelectedNodes[i].values[f10]=dxDBGrid1.SelectedNodes[i].values[f11]) then
                    if (m9<>m7) and (dxDBGrid1.SelectedNodes[i].values[f10]=dxDBGrid1.SelectedNodes[i].values[f11]) then
                    begin
                        s:= s + ' '+formatfloat('###,###,##0.00',m7); //dxDBGrid1.SelectedNodes[i].values[f7]);  //Camot4未申请金额
                        mamt:=mamt+m7-m9; //dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9];
                        sql:=sql+',price='+floattostr(m7-m9)+',rela_value='+floattostr(m8)+',amot='+floattostr(m7);
                    end;
                end;
//                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f4]; //分销采购取tb_bill_stadtl.rec_id
//                sql:=sql+',price='+floattostr(mamt)+',rela_value='+floattostr(dxDBGrid1.SelectedNodes[i].Values[f8])+',amot='+floattostr(mamt);
            end;
//            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]);
//            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];
            mi := mi+1;
        end;
    end;
    if s1>'' then delete(s1,1,1);  //删除 s1 首字符 ','
    if s2>'' then delete(s2,1,1);  //删除 s2 首字符 ','
end;
//showmessage('s1:'+s1+'  s2:'+s2);
if mi=0 then raise Exception.Create('无可生成其他支出核销单记录(销售单价不一致 或 完成核销申请的不可申请)');
if (s1='') and (s2='') then raise Exception.Create('未取得明细id数据，可先按"检查数据"按钮');
with dm.pubqry do
begin
    if active then close;
    if s1>'' then
    begin
        commandtext:='select distinct ltrim(str(year(carry_dt)))+ltrim(str(month(carry_dt))) from tb_bill ';
        commandtext:=commandtext+' where bod_id in ('+s1+')';
        open;
        if recordcount>1 then
        begin
            s:='同一核销单中不可包含不同年月的单据';
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_busimate c ';
        commandtext:=commandtext+' where a.bod_type_id=36 and a.agent_id=c.mate_id and c.stoppay=1 and a.bod_id in ('+s1+')';
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务负责人已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if s2>'' then
    begin
{
        if active then close;
        commandtext:='select distinct a.carry_dt from tb_bill a,tb_bill_stadtl h ';
        commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_id=h.bod_id and h.rec_id in ('+s2+')';
    edit2.text:=commandtext;
        open;
        if recordcount>1 then
        begin
            s:='只可由同一发生日期的分销采购单生成一张其他支出核销单';
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
}

        if active then close;
        commandtext:='select distinct ltrim(str(year(a.carry_dt)))+ltrim(str(month(a.carry_dt))) from tb_bill a,tb_bill_stadtl h ';
        commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_id=h.bod_id and h.rec_id in ('+s2+')';
//    edit2.text:=commandtext;
        open;
        if recordcount>1 then
        begin
            s:='同一核销单中不可包含不同年月的单据';
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_bill_stadtl h,tb_busimate c '; //tb_bill_dtl b,
        commandtext:=commandtext+' where a.bod_type_id=1 and a.agent_id=c.mate_id and c.stoppay=1 and a.bod_id=h.bod_id and h.rec_id in ('+s2+')';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务负责人已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if active then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime)';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b ';
    commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id<>1 and a.bod_id=b.bod_id and (1=2 ';
    if s1>'' then commandtext:=commandtext+' or b.type_id=36 and b.med_id in ('+s1+')';
    if s2>'' then commandtext:=commandtext+' or b.type_id=1  and b.med_id in ('+s2+')';
    commandtext:=commandtext+')';
//edit4.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审批的其他支出核销单'+#13#10+'请先将其审批完成或取消后，再生成新单'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'其他支出核销单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('creat_dt').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    if s1>'' then
    begin
        if active then close;
        commandtext:=' select top 3 a.bod_cd from tb_bill a';
	    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) d on a.bod_id=d.med_id';
	    commandtext:=commandtext+' where a.bod_id in ('+s1+') and a.bod_id=d.med_id and d.amot>a.bod_amot';
//    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列应付记账单已完成核销，不可再次核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'应付记账单:'+fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if s2>'' then
    begin
        if active then close;
        commandtext:=' select top 3 a.bod_cd,m.med_name,m.specifi,m.pdt_place,b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) d on b.dtl_id=d.med_id';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and h.rec_id=d.med_id and d.amot>b.qty*(isnull(c.amot,0)+isnull(c.fee,0))';
//	    commandtext:=commandtext+' where a.bod_type_id=1 and b.dtl_id in ('+s2+') and b.dtl_id=d.med_id and d.amot>b.qty*(isnull(c.amot,0)+isnull(c.fee,0))';
//    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列单据品种已完成核销，不可再次核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单与规则的结算单价须一致
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(b.price,0)=0 or b.price<>isnull(c.price2,0))';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单与规则的结算价不符，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单有无 已生效的规则
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(c.price1,0)=0)'; //销售单价
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单无已生效的促销规则，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单与规则的销售单价须一致
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
//	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join (select c.rec_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,c.price1 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c';
        commandtext:=commandtext+'  on c.rec_id=b.bf3_id and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
{
        commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
        commandtext:=commandtext+'  c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.agent_id>=0 then d.amot else c.amot end,';
        commandtext:=commandtext+' c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c on c.rec_id=b.bf3_id and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
}
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(b.price1,0)=0 or b.price1<>isnull(c.price1,0))';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单与规则的销售价不符，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

//if MessageBox(0,Pchar('确定由下列单据生成其他支出核销单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
// 模态
//if messagedlg('确定由下列单据生成其他支出核销单:'+s,mtwarning,[mbyes,mbno],0,)<>id_yes then abort;
if messagedlg('由下列单据生成其他支出核销单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

setprogress(1);
mcd:= formatfloat('00000000',getbillid(compid,37));
if s1='' then s1:='0';
if s2='' then s2:='0';
with dm.pubqry do
begin
    if active then close;
    commandtext:=' declare @id int';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,dst_id,agent_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select '+inttostr(compid)+','''+mcd+''',37,0,'+inttostr(mateid)+','+inttostr(agentid)+',cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' select @id=@@identity';

    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,rela_value,amot)';
    commandtext:=commandtext+' select 0,0,0,0,0,0 where 1=2';
    commandtext:=commandtext+sql;
{
    if s1<>'' then   // 应付记账
    begin
//        commandtext:=commandtext+' union all select @id,a.bod_type_id,a.bod_id,(a.bod_amot-isnull(a.ckd_amot1,0)),0,(a.bod_amot-isnull(a.ckd_amot1,0))';
        commandtext:=commandtext+' union all select @id,a.bod_type_id,a.bod_id,(a.bod_amot-case when a.carry_dt<''2024-01-01'' then isnull(a.ckd_amot1,0) else isnull(a.ckd_amot,0) end),';
        commandtext:=commandtext+' 0,(a.bod_amot-case when a.carry_dt<''2024-01-01'' then isnull(a.ckd_amot1,0) else isnull(a.ckd_amot,0) end)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' where a.bod_type_id=36 and a.bod_id in ('+s1+')';
	end;
    if s2<>'' then  // 分销采购
    begin
        //未分2024-1-1时段前的取值:
//        commandtext:=commandtext+' union all select @id,a.bod_type_id,h.rec_id,b.qty*isnull(c.amot,0),b.qty*isnull(c.fee,0),b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(h.ckd_amot1,0)';    //h.ckd_amot1

        commandtext:=commandtext+' union all select @id,a.bod_type_id,h.rec_id,price=b.qty*isnull(c.amot,0),rela_value=b.qty*isnull(c.fee,0),';
        commandtext:=commandtext+' amot=case when a.carry_dt<''2024-01-01'' then b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(y.ckd_amot2a,0)';
        commandtext:=commandtext+'      else case when b.price1>0 then round(h.amot1/b.price1,0)*c.amot-isnull(z.ckd_amot,0) else 0 end';
        commandtext:=commandtext+'      end';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join (select c.rec_id,c.type_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
        commandtext:=commandtext+' 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.agent_id>0 then d.amot else c.amot end,';
        commandtext:=commandtext+' 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt) and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';

        commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))),';
        commandtext:=commandtext+' ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) y on y.med_id=h.rec_id';
        commandtext:=commandtext+' left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
        commandtext:=commandtext+' 		  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=1';
        commandtext:=commandtext+'          and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)	group by b.med_id) z on z.med_id=h.rec_id';
        commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+')';
	end;
}
{
    commandtext:='insert into tb_bill_dtl (bod_id,type_id,med_id,price,rela_value,amot)';
    commandtext:=commandtext+' select '+inttostr(mi)+',a.bod_type_id,a.bod_id,(a.bod_amot-isnull(a.ckd_amot1,0)),0,(a.bod_amot-isnull(a.ckd_amot1,0))';
//    commandtext:=commandtext+' select '+inttostr(mi)+',a.bod_type_id,a.bod_id,(a.bod_amot-isnull(a.ckd_amot1,0)),0,(a.bod_amot-isnull(a.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill a';
	commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,2,3,5) and a.bod_id=b.bod_id';
    commandtext:=commandtext+' 		and b.type_id=36 group by b.med_id) h on h.med_id=a.bod_id';   //and a.creat_dt>='''+datetostr(dxdateedit1.date)+'''
    commandtext:=commandtext+' where a.bod_type_id=36 and a.bod_id in ('+s1+')';

    commandtext:=commandtext+' union all select '+inttostr(mi)+',a.bod_type_id,h.rec_id,b.qty*isnull(c.amot,0),b.qty*isnull(c.fee,0),b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(h.ckd_amot1,0)';    //h.ckd_amot1
//    commandtext:=commandtext+' union all select '+inttostr(mi)+',a.bod_type_id,h.rec_id,b.qty*isnull(c.amot,0),b.qty*isnull(c.fee,0),b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';

//    commandtext:=commandtext+' union all select '+inttostr(mi)+',a.bod_type_id,b.dtl_id,(b.qty*isnull(c.amot,0)+b.qty*isnull(c.fee,0)-isnull(b.ckd_amot1,0)),(b.qty*isnull(c.amot,0)+b.qty*isnull(c.fee,0)-isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
//    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join (select c.rec_id,c.type_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
    commandtext:=commandtext+' 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.amot>0 then d.amot else c.amot end,';
    commandtext:=commandtext+' 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt) and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) d on d.med_id=h.rec_id';  // and a.bod_status_id=1
    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+')';
}    
edit3.text:=commandtext;
    execute;
    close;
end;
setprogress(0);
s:='已成功生成'+mcd+'号其他支出核销单'+#13#10+'--------------------------------------------'+#13#10+'请在"其他支出核销审批流程"中完成审批';
MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetexpaycheck.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetexpaycheck.N5Click(Sender: TObject);
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

procedure Tsetexpaycheck.N7Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetexpaycheck.N8Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1bod_type_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1Camot7.Visible:=False;  //用于判断显示颜色
setprogress(0);
end;

procedure Tsetexpaycheck.N10Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1bod_type_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1Camot7.Visible:=False;  //用于判断显示颜色
end;

procedure Tsetexpaycheck.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetexpaycheck.N2Click(Sender: TObject);
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update b set bf3_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=1 and a.cate_id=2 and a.bod_id=b.bod_id';
    commandtext:=commandtext+'	and a.bod_id='+qry.fieldbyname('bod_id').asstring;
//   	and (b.bf3_id is null or bf3_id<>dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt))
//	and a.creat_dt>'2020-1-1' and a.creat_dt<='2020-11-1'
edit2.Text:=commandtext;
    execute;
end;
SpeedButton5Click(nil);
end;

procedure Tsetexpaycheck.qryAfterPost(DataSet: TDataSet);
begin
//showmessage('');
//showmessage('after post ckd_amot3:'+qry.fieldbyname('ckd_amot3').asstring);
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_bill_stadtl','rec_id','');
//showmessage(qry.fieldbyname('ckd_amot3').asstring);
{
if qry.ChangeCount>0 then
begin
	if qry.fieldbyname('bod_type_id').asinteger=1 then myupdaterefresh(qry,'tb_bill_stadtl','rec_id','');
	if qry.fieldbyname('bod_type_id').asinteger=36 then myupdaterefresh(qry,'tb_bill','bod_id','');
end;
}
end;

procedure Tsetexpaycheck.SpeedButton1Click(Sender: TObject);
begin
if MessageBox(0,pchar('确定按日期范围检查数据'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='sp_updatebillstadtl '''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit2.Text:=commandtext;
    try
        setprogress(1);
	    execute;
    finally
        setprogress(0);
    end;
end;
if qry.Active=True then SpeedButton5Click(nil);
end;

procedure Tsetexpaycheck.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetexpaycheck.dxDBGrid1Click(Sender: TObject);
var amt: real;
    i,o,p,q: integer;
begin
with dxDBGrid1 do
begin
    label12.caption:=formatfloat('笔数:###',SelectedCount);
    o := ColumnByFieldName('carry_dt').Index;
    p := ColumnByFieldName('Camot4').Index;
    q := ColumnByFieldName('Camot6').Index;
    amt:=0;
    for i:= 0 to SelectedCount - 1 do
    begin
        if dxDBGrid1.SelectedNodes[i].values[o]<strtodate('2024-1-1') then
        begin
            if pos(':',SelectedNodes[i].Strings[p])=0 then// continue; //非合计行
            begin
                amt:=amt+ SelectedNodes[i].Values[p];
            end;
        end
        else
        begin
            if pos(':',SelectedNodes[i].Strings[q])=0 then// continue; //非合计行
            begin
                amt:=amt+ SelectedNodes[i].Values[q];
            end;
        end;
        next;
    end;
    label13.caption:='金额:'+formatfloat('###,###,##0.00',amt);
end;
end;

procedure Tsetexpaycheck.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetexpaycheck.qryBeforePost(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('amot1').asfloat>fieldbyname('Camot').asfloat then raise Exception.Create('已收款金额不可大于销售金额');
{
//    showmessage('tb_bill_stadtl.rec_id:'+fieldbyname('rec_id').asstring);
//    showmessage(' oldvalue:'+VarToStr(fieldbyname('amot1').oldvalue));
//    showmessage(' newvalue:'+VarToStr(fieldbyname('amot1').newvalue));
    with dm.pubqry do
    begin
        if active then close;
        if qry.fieldbyname('rec_id').asstring<>'' then
        begin
            commandtext:='update tb_bill_stadtl set amot1='+VarToStr(qry.fieldbyname('amot1').newvalue)+' where rec_id='+qry.fieldbyname('rec_id').asstring;
    edit1.text:=commandtext;
            execute;
        end;
    end;
}
end;
end;

procedure Tsetexpaycheck.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure Tsetexpaycheck.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

procedure Tsetexpaycheck.N11Click(Sender: TObject);
var s: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.bod_status_id, b.amot';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b ';
    commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_id=b.bod_id and '; //  and a.bod_status_id<>1 ';
    if qry.fieldbyname('bod_type_id').asinteger=1 then commandtext:=commandtext+' b.med_id='+qry.fieldbyname('rec_id').asstring
        else commandtext:=commandtext+' b.med_id='+qry.fieldbyname('bod_id').asstring;
{
    if s1>'' then commandtext:=commandtext+' or b.type_id=36 and b.med_id in ('+s1+')';
    if s2>'' then commandtext:=commandtext+' or b.type_id=1  and b.med_id in ('+s2+')';
}
edit3.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='已有下列核销单'+#13+#10+'---------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+fieldbyname('creat_dt').asstring+' '+fieldbyname('bod_cd').asstring;
            case fieldbyname('bod_status_id').asinteger of
                0: s:=s+'  状态:部门申请';
                1: s:=s+'  状态:完成核销';
                2: s:=s+'  状态:部门审核';
                3: s:=s+'  状态:财务复核';
                5: s:=s+'  状态:财务审核';
            end;
            s:=s+'  金额:'+formatfloat(' ###,###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
    end
    else MessageBox(0, pchar('无核销单据'),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetexpaycheck.dxLookupTreeView1DropDown(Sender: TObject);
begin
(Sender as TdxLookupTreeView).width:=200;
setprogress(1);
end;

procedure Tsetexpaycheck.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetexpaycheck.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
(Sender as TdxLookupTreeView).width:=110;
end;

procedure Tsetexpaycheck.N13Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,n: integer;  //,bodtypeid1
    r,d,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9: integer;
    s,s1,s2,sql: string;
    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+ '--------------------------------------------';
s1:='';s2:='';  sql:='';
mi:=0;   mamt:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if abs(qry.fieldbyname('Camot10').asfloat)>0.005 then  //按应收余额
    begin
        if qry.fieldbyname('bod_type_id').asinteger=36 then
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' 应付记账 ';
            s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot10').asfloat);  //应收余额
            mamt:=qry.fieldbyname('Camot10').asfloat;
            sql:=sql+' union all select @id,type_id='+qry.fieldbyname('bod_type_id').asstring+',med_id='+qry.fieldbyname('rec_id').asstring;  //注意应付记账取tb_bill.bod_id
//            sql:=sql+',price='+floattostr(mamt)+',rela_value=0,amot='+floattostr(mamt);
            sql:=sql+',price='+floattostr(mamt)+',amot='+floattostr(mamt);
            s1:=qry.fieldbyname('bod_id').asstring; // 取bod_id值
        end
        else   //分销采购
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' '+qry.fieldbyname('med_name').asstring;
            s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot10').asfloat);  //未申请金额
            mamt:=qry.fieldbyname('Camot10').asfloat;
            sql:=sql+' union all select @id,type_id='+qry.fieldbyname('bod_type_id').asstring+',med_id='+qry.fieldbyname('rec_id').asstring;  //注意分销采购取tb_bill_stadtl.rec_id
            sql:=sql+',price='+floattostr(mamt)+',amot='+floattostr(mamt);
//            sql:=sql+',price='+floattostr(mamt)+',rela_value='+floattostr(qry.fieldbyname('Camot3').asfloat)+',amot='+floattostr(mamt);
            s2:=qry.fieldbyname('rec_id').asstring; // rec_id
        end;
        bodid:=qry.fieldbyname('bod_id').asinteger;
        mateid:=qry.fieldbyname('dst_id').asinteger;
        agentid:=qry.fieldbyname('agent_id').asinteger;
        bodtypeid:=qry.fieldbyname('bod_type_id').asinteger;
        mi:=1;
    end;
end
else
begin
    d := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    f0:= dxDBGrid1.ColumnByFieldName('bod_type_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
    f3:= dxDBGrid1.ColumnByFieldName('Camot10').Index;  // 应收余额
    f4:= dxDBGrid1.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
    f5:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    f6:= dxDBGrid1.ColumnByFieldName('carry_dt').Index;
//    f7:= dxDBGrid1.ColumnByFieldName('Camot5').Index;  //回款应付金额
    f7:= dxDBGrid1.ColumnByFieldName('amot5').Index;  //回款应付金额
    f8:= dxDBGrid1.ColumnByFieldName('Camot3').Index;  //应付促销费
    f9:= dxDBGrid1.ColumnByFieldName('ckd_amot2a').Index;  //已申请金额
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (abs(dxDBGrid1.SelectedNodes[i].values[f3])>0.005) then
        begin
            if mi=0 then
            begin
                mateid:=dxDBGrid1.SelectedNodes[i].values[d];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid<>dxDBGrid1.SelectedNodes[i].values[d] then raise Exception.Create('同一次核销不可包含不同商业公司的单据');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一次核销不可包含不同业务负责人的单据');
            end;
            if dxDBGrid1.SelectedNodes[i].values[f0]=36 then//应付记账单
            begin
                s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' 应付记账 '; //+ dxDBGrid1.SelectedNodes[i].Strings[f2]
                s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f5];  // 记录 bod_id 字符串
                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f5]; //应付记账取tb_bill.bod_id
                s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]);  //Camot10 应收余额
                mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];  //Camot4
                sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+',amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3]);
            end
            else     //分销采购
            begin
                s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
                s2:= s2 +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 tb_bill_stadtl.rec_id 字符串
                sql:=sql+' union all select @id,type_id='+dxDBGrid1.SelectedNodes[i].Strings[f0]+',med_id='+dxDBGrid1.SelectedNodes[i].Strings[f4]; //分销采购取tb_bill_stadtl.rec_id
                s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]);  //Camot10 应收余额
                mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3];
                sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+',amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3]);
//                sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+',rela_value='+floattostr(dxDBGrid1.SelectedNodes[i].Values[f8])+',amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3]);
            end;
            mi := mi+1;
        end;
    end;
    if s1>'' then delete(s1,1,1);  //删除 s1 首字符 ','
    if s2>'' then delete(s2,1,1);  //删除 s2 首字符 ','
end;
//showmessage('s1:'+s1+'  s2:'+s2);
if mi=0 then raise Exception.Create('无可生成其他支出收款单记录(完成收款申请的不可再次申请)');
if (s1='') and (s2='') then raise Exception.Create('未取得明细id数据，可先按"检查数据"按钮');
with dm.pubqry do
begin
    if active then close;
    if s1>'' then
    begin
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_busimate c ';
        commandtext:=commandtext+' where a.bod_type_id=36 and a.agent_id=c.mate_id and c.stoppay=1 and a.bod_id in ('+s1+')';
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务负责人已暂停收款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if s2>'' then
    begin
        if active then close;
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_bill_stadtl h,tb_busimate c '; //tb_bill_dtl b,
        commandtext:=commandtext+' where a.bod_type_id=1 and a.agent_id=c.mate_id and c.stoppay=1 and a.bod_id=h.bod_id and h.rec_id in ('+s2+')';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务负责人已暂停收款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if active then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime)';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b ';
    commandtext:=commandtext+' where a.bod_type_id=58 and a.bod_status_id<>1 and a.bod_id=b.bod_id and (1=2 ';
    if s1>'' then commandtext:=commandtext+' or b.type_id=36 and b.med_id in ('+s1+')';
//    if s2>'' then commandtext:=commandtext+' or b.type_id=1  and b.med_id in ('+s2+')';
    if s2>'' then commandtext:=commandtext+' or b.type_id=0  and b.med_id in ('+s2+')';
    commandtext:=commandtext+')';
edit4.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审批的其他支出收款单'+#13#10+'请先将其审批完成或取消后，再生成新单'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'其他支出收款单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('creat_dt').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
{
    if s1>'' then
    begin
        if active then close;
        commandtext:=' select top 3 a.bod_cd from tb_bill a';
	    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) d on a.bod_id=d.med_id';
	    commandtext:=commandtext+' where a.bod_id in ('+s1+') and a.bod_id=d.med_id and d.amot>a.bod_amot';
//    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列应付记账单已完成收款，不可再次收款'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'应付记账单:'+fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if s2>'' then
    begin
        if active then close;
        commandtext:=' select top 3 a.bod_cd,m.med_name,m.specifi,m.pdt_place,b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' left join (select b.med_id,amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) d on b.dtl_id=d.med_id';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and h.rec_id=d.med_id and d.amot>b.qty*(isnull(c.amot,0)+isnull(c.fee,0))';
//	    commandtext:=commandtext+' where a.bod_type_id=1 and b.dtl_id in ('+s2+') and b.dtl_id=d.med_id and d.amot>b.qty*(isnull(c.amot,0)+isnull(c.fee,0))';
//    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列单据品种已完成收款，不可再次收款'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单与规则的结算单价须一致
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(b.price,0)=0 or b.price<>isnull(c.price2,0))';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单与规则的结算价不符，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单有无 已生效的规则
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(c.price1,0)=0)'; //销售单价
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单无已生效的促销规则，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;  // 以下检查订单与规则的销售单价须一致
        commandtext:=' select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place,b.bat_cd'; //b.qty*(isnull(c.amot,0)+isnull(c.fee,0))-isnull(d.amot,0)';
        commandtext:=commandtext+' from tb_bill a';
	    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
	    commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_medicine m on b.med_id=m.med_id';
//	    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join (select c.rec_id,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,c.price1 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c';
        commandtext:=commandtext+'  on c.rec_id=b.bf3_id and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
	    commandtext:=commandtext+' where a.bod_type_id=1 and h.rec_id in ('+s2+') and (isnull(b.price1,0)=0 or b.price1<>isnull(c.price1,0))';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种订单与规则的销售价不符，不可核销'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'分销采购单:'+fieldbyname('bod_cd').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
}
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

//if MessageBox(0,Pchar('确定由下列单据生成其他支出核销单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
// 模态
if messagedlg('由下列单据生成其他支出收款单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
setprogress(1);
mcd:= formatfloat('00000000',getbillid(compid,58));
if s1='' then s1:='0';
if s2='' then s2:='0';
with dm.pubqry do
begin
    if active then close;
    commandtext:=' declare @id int';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,dst_id,agent_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select '+inttostr(compid)+','''+mcd+''',58,0,'+inttostr(mateid)+','+inttostr(agentid)+',cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' select @id=@@identity';

    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)'; //rela_value,
    commandtext:=commandtext+' select 0,0,0,0,0 where 1=2';
    commandtext:=commandtext+sql;
edit3.text:=commandtext;
    execute;
    close;
end;
setprogress(0);
s:='已成功生成'+mcd+'号其他支出收款单'+#13#10+'--------------------------------------------'+#13#10+'请在"其他支出收款审批流程"中完成审批';
MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetexpaycheck.N16Click(Sender: TObject);
var findex,i: integer;
begin
//dxDBGrid1.SelectedNodes
//showmessage('dxDBGrid1.FocusedField.AsString: FullName:'+dxDBGrid1.FocusedField.FullName+', DisplayName:'+dxDBGrid1.FocusedField.DisplayName+', AsString:'+dxDBGrid1.FocusedField.AsString+', DisplayText:'+dxDBGrid1.FocusedField.DisplayText+', Text:'+dxDBGrid1.FocusedField.Text+', FieldName:'+dxDBGrid1.FocusedField.FieldName); // .SelectedNodes[1]. .Items[0]); // .Strings[1]);
//showmessage('dxDBGrid1.FocusedField.AsString: '+dxDBGrid1.FocusedField.AsString); // .SelectedNodes[1]. .Items[0]); // .Strings[1]);
//showmessage('SelectedRows: '+dxDBGrid1.SelectedRows[1]);
//exit;
if Sender=N16 then findex := dxDBGrid1.ColumnByFieldName('dist1').Index
else if Sender=N22 then findex := dxDBGrid1.ColumnByFieldName('dist2').Index
else if Sender=N15 then findex := dxDBGrid1.ColumnByFieldName('VTEXT').Index
else if Sender=N21 then findex := dxDBGrid1.ColumnByFieldName('ZKDGRP').Index
else if Sender=N32 then findex := dxDBGrid1.ColumnByFieldName('broker').Index
else if Sender=N31 then findex := dxDBGrid1.ColumnByFieldName('agent').Index
else if Sender=N41 then findex := dxDBGrid1.ColumnByFieldName('agent1').Index
else if Sender=N51 then findex := dxDBGrid1.ColumnByFieldName('mate_name').Index
else if Sender=N61 then findex := dxDBGrid1.ColumnByFieldName('material_code').Index;
sqry:='';
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if Pos(dxDBGrid1.SelectedNodes[i].values[findex], sqry)=0 then
    begin
        if sqry<>'' then sqry:=sqry+',';
        sqry:=sqry+''''+dxDBGrid1.SelectedNodes[i].values[findex]+'''';
    end;
end;
if sqry<>'' then
begin
    MessageBox(0,pchar('查询下列 '+dxDBGrid1.Columns[findex].caption+#13#10+'-----------------------------------'+#13#10+sqry),'请注意',MB_OK+MB_ICONInformation);

    sqry:=dxDBGrid1.Columns[findex].FieldName+' in ('+sqry+')';
//    showmessage(sqry);
    SpeedButton5Click(nil);
end;
end;

procedure Tsetexpaycheck.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
{
    fieldbyname('cfee').asfloat:=fieldbyname('cprice1').asfloat-fieldbyname('cprice2').asfloat-fieldbyname('amot1a').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger in [0,1] then  // 0: SAP采购单;  1: KA采购单
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot1a').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('Camot3').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    if fieldbyname('bod_type_id').asinteger=36 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot').asfloat;
        fieldbyname('Camot3').asfloat:=0;
    end;
    fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
}
    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot3').asfloat-fieldbyname('ckd_amot').asfloat;  //未收款金额
    fieldbyname('camot2').asfloat:= fieldbyname('ckd_amot2a').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额 = 已审核金额—已收款金额
    fieldbyname('camot4').asfloat:= fieldbyname('Camot1').asfloat+fieldbyname('Camot3').asfloat-fieldbyname('ckd_amot2a').asfloat;  //未申请金额”，取值为：应付金额+应付促销费—已申请金额

    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('Camot1').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot1').asfloat)
        	or (fieldbyname('Camot1').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot1').asfloat));
    fieldbyname('cstatus').asboolean:=(fieldbyname('amot1').asfloat=fieldbyname('Camot').asfloat) and (fieldbyname('amot1').asfloat<>0);
//    if fieldbyname('price1').asfloat=0 then fieldbyname('cqty1').asfloat:=0 else fieldbyname('cqty1').asfloat:=fieldbyname('amot1').asfloat/fieldbyname('price1').asfloat; //已收款数量=已收款金额/销售单价
{
    if (fieldbyname('bod_type_id').asinteger=36) and (fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')) or (fieldbyname('cstatus').asboolean)
        then fieldbyname('camot5').asfloat:=fieldbyname('Camot1').asfloat  //回款应付金额=应付金额
        else fieldbyname('camot5').asfloat:=fieldbyname('cqty1').asfloat*fieldbyname('amot1a').asfloat; //回款应付金额=已收款数量*应付金额/盒
    if fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')
        then fieldbyname('camot6').asfloat:=fieldbyname('amot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;
}
    fieldbyname('camot6').asfloat:=fieldbyname('amot5').asfloat-fieldbyname('ckd_amot').asfloat;  //回款未付金额=回款应付金额-已付金额
    fieldbyname('camot7').asfloat:= fieldbyname('amot5').asfloat-fieldbyname('ckd_amot2a').asfloat;
    fieldbyname('camot8').asfloat:= fieldbyname('amot5').asfloat;
    fieldbyname('camot9').asfloat:= fieldbyname('ckd_amot2a').asfloat;
    fieldbyname('camot10').asfloat:= fieldbyname('Camot').asfloat-fieldbyname('amot1').asfloat; 
end;
end;

procedure Tsetexpaycheck.N17Click(Sender: TObject);
var findex,i: integer;
begin
//showmessage('dxDBGrid1.FocusedField.AsString: FullName:'+dxDBGrid1.FocusedField.FullName+', DisplayName:'+dxDBGrid1.FocusedField.DisplayName+', AsString:'+dxDBGrid1.FocusedField.AsString+', DisplayText:'+dxDBGrid1.FocusedField.DisplayText+', Text:'+dxDBGrid1.FocusedField.Text+', FieldName:'+dxDBGrid1.FocusedField.FieldName); // .SelectedNodes[1]. .Items[0]); // .Strings[1]);

//showmessage('dxDBGrid1.FocusedField.AsString: '+dxDBGrid1.FocusedField.AsString); // .SelectedNodes[1]. .Items[0]); // .Strings[1]);
//showmessage('SelectedRows: '+dxDBGrid1.SelectedRows[1]);
//exit;
with dxDBGrid1 do
begin
    findex := ColumnByFieldName(FocusedField.FieldName).Index;
//    showmessage(qry.FieldByName(Columns[findex].FieldName).DataType);
    if not (qry.FieldByName(Columns[findex].FieldName).FieldKind = fkData) or not ((qry.FieldByName(Columns[findex].FieldName).DataType = ftString) or (qry.FieldByName(Columns[findex].FieldName).DataType = ftDatetime)) then
    begin
        MessageBox(0, pchar('本列不可按选择值查询'),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
{
if Sender=N16 then findex := dxDBGrid1.ColumnByFieldName('dist1').Index
else if Sender=N22 then findex := dxDBGrid1.ColumnByFieldName('dist2').Index
else if Sender=N15 then findex := dxDBGrid1.ColumnByFieldName('VTEXT').Index
else if Sender=N21 then findex := dxDBGrid1.ColumnByFieldName('ZKDGRP').Index
else if Sender=N32 then findex := dxDBGrid1.ColumnByFieldName('broker').Index
else if Sender=N31 then findex := dxDBGrid1.ColumnByFieldName('agent').Index
else if Sender=N41 then findex := dxDBGrid1.ColumnByFieldName('agent1').Index
else if Sender=N51 then findex := dxDBGrid1.ColumnByFieldName('mate_name').Index
else if Sender=N61 then findex := dxDBGrid1.ColumnByFieldName('material_code').Index;
}
    sqry:='';
    for i:= 0 to SelectedCount - 1 do
    begin
        if Pos(SelectedNodes[i].values[findex], sqry)=0 then
        begin
            if sqry<>'' then sqry:=sqry+',';
//            sqry:=sqry+''''+SelectedNodes[i].values[findex]+'''';
            sqry:=sqry+''''+SelectedNodes[i].Strings[findex]+'''';
        end;
    end;
    if sqry<>'' then
    begin
        MessageBox(0,pchar('查询下列 '+Columns[findex].caption+#13#10+'-----------------------------------'+#13#10+sqry),'请注意',MB_OK+MB_ICONInformation);
        //qry.FieldByName[Columns[findex].FieldName].
        //qry.FieldByName(Columns[findex].FieldName).FieldKind<>'fkData';
        sqry:=Columns[findex].FieldName+' in ('+sqry+')';
    //    showmessage(sqry);
        SpeedButton5Click(nil);
    end;
end;
end;

end.
