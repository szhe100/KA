unit Unit215a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, DB, ADODB, dxCntner, DBClient, dxEdLib, StdCtrls,
  dxDBEdtr, dxDBELib, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, Variants,
  dxGrClms, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Buttons,
  dxdbtrel, ImgList, mycds, DBCtrls;

type
  Tsetexpaycheck2 = class(TForm)
    DSqry: TDataSource;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
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
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    ADOQuery1: TADOQuery;
    dxDBGrid1bod_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit1: TdxCheckEdit;
    Shape5: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
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
    dxDBGrid1qty: TdxDBGridColumn;
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
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1Camot3: TdxDBGridColumn;
    qryCnot_amot: TBCDField;
    dxDBGrid1ckd_amot1: TdxDBGridColumn;
    cdsbill_dtlprice1: TBCDField;
    qryCamot: TBCDField;
    dxDBGrid1Camot: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    qryrate: TBCDField;
    qryrate1: TBCDField;
    qryamot1: TBCDField;
    dxDBGrid1amot1a: TdxDBGridColumn;
    qryfee: TBCDField;
    qryCfee: TBCDField;
    dxDBGrid1rate1: TdxDBGridColumn;
    dxDBGrid1fee: TdxDBGridColumn;
    dxDBGrid1Cfee: TdxDBGridColumn;
    qrycarry_dt: TDateTimeField;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    dxDBGrid1bod_type_id: TdxDBGridColumn;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1agent_id: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrycreater: TStringField;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    qrytype_id: TIntegerField;
    qryCtype: TStringField;
    dxDBGrid1Ctype: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrydist1: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    qrystoppay: TBooleanField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    qrytype_id1: TWordField;
    qryCtypeid1: TStringField;
    dxDBGrid1Ctypeid1: TdxDBGridColumn;
    qrybod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1ckd_amot3: TdxDBGridColumn;
    qrydist2: TStringField;
    dxDBGrid1dist2: TdxDBGridColumn;
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
    dxDBGrid1cprice1: TdxDBGridColumn;
    dxDBGrid1cprice2: TdxDBGridColumn;
    qryfee_type_id: TIntegerField;
    qryCfeetype: TStringField;
    dxDBGrid1Cfeetype: TdxDBGridColumn;
    qryrec_id: TAutoIncField;
    dxDBGrid1rec_id: TdxDBGridColumn;
    Edit3: TEdit;
    RadioGroup3: TRadioGroup;
    N2: TMenuItem;
    qryckd_amot2a: TBCDField;
    qryckd_amot2: TBCDField;
    dxDBGrid1ckd_amot2a: TdxDBGridColumn;
    qryfckdamot2: TBooleanField;
    dxDBGrid1fckdamot3: TdxDBGridCheckColumn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    N3: TMenuItem;
    N5: TMenuItem;
    dxDBGrid1bod_id: TdxDBGridColumn;
    SpeedButton1: TSpeedButton;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    qrybod_desc1: TStringField;
    dxDBGrid1bod_desc1: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qryckd_amot3: TBCDField;
    qryfckdamot3: TBooleanField;
    Label5: TLabel;
    qryckd_amot: TBCDField;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    qryCamot22: TBCDField;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Camot4: TdxDBGridColumn;
    qryCamot4: TBCDField;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    dxDBGrid1not_amot: TdxDBGridColumn;
    qrynot_amot: TBCDField;
    qrybod_cd2: TStringField;
    qrybod_cd3: TStringField;
    dxDBGrid1bod_cd2: TdxDBGridColumn;
    dxDBGrid1bod_cd3: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    qryamot1a: TBCDField;
    qrycqty1: TBCDField;
    dxDBGrid1cqty1: TdxDBGridColumn;
    qryCstatus: TBooleanField;
    dxDBGrid1Cstatus: TdxDBGridCheckColumn;
    qryCamot5: TBCDField;
    qryCamot6: TBCDField;
    dxDBGrid1Camot5: TdxDBGridColumn;
    dxDBGrid1Camot6: TdxDBGridColumn;
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
    dxDBGrid1Camot7: TdxDBGridColumn;
    qryCamot8: TBCDField;
    qryCamot9: TBCDField;
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
    procedure N3Click(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setexpaycheck2: Tsetexpaycheck2;

implementation

uses datamodu, Unit7, Unit15, Unit16, Unit16a, Unit16c; //, Main, Unit103;//, Unit35a Unit9,

{$R *.DFM}

procedure Tsetexpaycheck2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.purchaser do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetexpaycheck2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetexpaycheck2.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetexpaycheck2.DSqryDataChange(Sender: TObject;
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
            then label20.caption:=label20.caption+', 不可核销 (白色)'
            else label20.caption:=label20.caption+', 可以核销 (黄色)';
    end
    else
    begin
        label20.caption:=fieldbyname('bod_type').asstring+fieldbyname('bod_cd').asstring+'号单发生日期:'+formatdatetime('yyyy-mm-dd',fieldbyname('carry_dt').asdatetime)+', 回款应付金额-已申请金额 = '+'('+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat)+') - ('+formatfloat('###,###,##0.00',fieldbyname('ckd_amot2a').asfloat) +') = '+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat);
        if fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat=0
            then label20.caption:=label20.caption+', 不可核销 (白色)'
            else label20.caption:=label20.caption+', 可以核销 (黄色)';
    end;
    end;
//    label21.caption:='('+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat)+') - ('+formatfloat('###,###,##0.00',fieldbyname('ckd_amot2a').asfloat) +') = '+formatfloat('###,###,##0.00',fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat);
end;
end;

procedure Tsetexpaycheck2.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetexpaycheck2.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetexpaycheck2.SpeedButton5Click(Sender: TObject);
var mi: integer;  //,objid
//    year,month,day: word;
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
setprogress(1);
{
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='sp_updatebillstadtl '''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit2.Text:=commandtext;
    execute;
end;
}
with qry do
begin
    if active then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    // notice: union 得到的数据 Clientdataset 在post时，报read only 错误，所以要修改tb_bill.ckd_amot2字段，再inner join一下tb_bill
    commandtext:='select z.rec_id,z.ckd_amot3,z.amot1,y.* from (select h.rec_id,b.dtl_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''分销采购'',';
    commandtext:=commandtext+'  a.bod_cd,b.bod_cd1,b.bod_cd2,b.bod_cd3,a.bod_desc,a.bod_desc1,a.broker_id,broker=dbo.fn_staff_name(a.broker_id),';
    commandtext:=commandtext+'  agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end,';
    commandtext:=commandtext+'  agent=f.mate_name,stoppay=isnull(f.stoppay,0),';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictname(a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictname(a.district_id,2),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),creater=d.zname,a.dst_id,e.mate_name,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,b.bat_cd,';
//    commandtext:=commandtext+' ckd_amot=h.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,'; //ckd_amot2a=case when a.bod_amot=h.ckd_amot1 then 0 else y.ckd_amot2a end,';
    commandtext:=commandtext+' z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3,';   //h.amot1,
    commandtext:=commandtext+' b.qty,b.price,b.amot,b.amot2,b.price1,';
    commandtext:=commandtext+' c.type_id,c.type_id2,c.rate,c.rate1,c.fee,amot1a=c.amot,cprice1=c.price1,cprice2=c.price2,fee_type_id=0';   //c.fee_type_id
//    commandtext:=commandtext+' ,not_amot=(isnull(c.amot,0)+isnull(c.fee,0))*b.qty-isnull(h.ckd_amot,0)';
    commandtext:=commandtext+' ,not_amot=cast((isnull(c.amot,0)+isnull(c.fee,0))*b.qty-isnull(z.ckd_amot,0) as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
//	commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id'; //note:  and h.agent_id>0限制会无法关联tb_bill 与 tb_bill_stadtl,造成单据查询不到
	commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id and h.agent_id>0';
    commandtext:=commandtext+' left join (select c.rec_id,c.type_id,c.type_id2,agent_id=case when d.agent_id>0 then d.agent_id else c.agent_id end,';
    commandtext:=commandtext+' 	c.rate,c.rate1,fee=case when d.fee>0 then d.fee else c.fee end,amot=case when d.agent_id>=0 then d.amot else c.amot end,';
    commandtext:=commandtext+' 	c.price1,c.price2 from tb_busiframe3 c left join tb_busiframe3_dtl d on c.rec_id=d.rela_id) c';

    commandtext:=commandtext+' 	 on c.rec_id=b.bf3_id and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
//    commandtext:=commandtext+' 	 on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt) and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
//  bod_type_id=1 and cate_id=2 类单据 tb_bill_dtl.bf3_id 记录dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt),以加快查询速度
//     当tb_bill_dtl.bf3_id不准确时，统计数据不准确，可用回on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)或比对tb_bill_dtl.bf3_id检查

//    commandtext:=commandtext+' 	 on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,case when h.agent_id>0 then h.agent_id else a.agent_id end,b.med_id,a.carry_dt) and c.agent_id=case when h.agent_id>0 then h.agent_id else a.agent_id end';
//    commandtext:=commandtext+' left join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
    commandtext:=commandtext+' left join tb_busimate f on f.mate_id=case when h.agent_id>0 then h.agent_id else a.agent_id end'; //case when c.agent_id>0 then c.agent_id else a.agent_id end'; //   (c.agent_id>0 and c.agent_id=f.mate_id or c.agent_id is null and ';
	commandtext:=commandtext+' left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))), ';
    commandtext:=commandtext+' 				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2)))';
//    commandtext:=commandtext+' 				,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
//    commandtext:=commandtext+' 				ckd_amot =sum(cast(case when a.bod_amot=0 then 0 else isnull(a.ckd_amot,0)/a.bod_amot*b.amot end as decimal(15,2)))';
    commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=1 group by b.med_id) y on y.med_id=h.rec_id';

    commandtext:=commandtext+' left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
    commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制
//     and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=1';
    commandtext:=commandtext+' 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
    commandtext:=commandtext+'	group by b.med_id) z on z.med_id=h.rec_id';

    commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
//        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    //    commandtext:=commandtext+'  and b.price1=c.price1'; //注: 分销采购单不包含销售单价与分销促销规则中销售单价不符的单据
//        commandtext:=commandtext+'  and b.price=c.price2 and b.price1=c.price1'; //注: 分销采购单仅包含结算单价、销售单价与分销促销规则中相应结算单价、销售单价相等的单据
//        commandtext:=commandtext+'  and (b.price=c.price2 and b.price1=c.price1 or b.price<>isnull(b.price1,0))'; //注: 分销采购单仅包含结算单价、销售单价与分销促销规则中相应结算单价、销售单价相等的单据
//        commandtext:=commandtext+'  and (b.price=c.price2 and b.price1=c.price1 or b.price1>b.price)'; //财务要求修改为销售单价大于结算单价的数据，才需要显示出来

        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
//        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and case when h.agent_id>0 then h.agent_id else a.agent_id end='+inttostr(dxbuttonedit3.tag);
//        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.broker_id='+dxLookupEdit1.ListSource.DataSet.fieldbyname('sta_id').asstring;
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.district_id=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
//    commandtext:=commandtext+'  and (b.price=c.price2 and b.price1=c.price1 or b.price1>b.price)'; //财务要求修改为销售单价大于结算单价的数据，才需要显示出来
    commandtext:=commandtext+'  and (b.price1>b.price)'; //财务要求修改为销售单价大于结算单价的数据，才需要显示出来
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and z.ckd_amot=(isnull(c.amot,0)+isnull(c.fee,0))*b.qty'; //已完成付款
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and isnull(z.ckd_amot,0)<>(isnull(c.amot,0)+isnull(c.fee,0))*b.qty'; //未完成付款
{
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and h.ckd_amot1=(isnull(c.amot,0)+isnull(c.fee,0))*b.qty'; //已完成付款
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and h.ckd_amot1<>(isnull(c.amot,0)+isnull(c.fee,0))*b.qty'; //未完成付款
}
    if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and not exists (select 1 from tb_busiframe3 t where t.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt))';
//and (isnull(c.amot,0)=0 or isnull(c.fee,0)=0)'; // or b.price1<>isnull(o.price2,0) or b.price2<>isnull(o.price1,0))'; //无促销规则
    if RadioGroup3.ItemIndex=4 then
    begin
    	commandtext:=commandtext+'	and not exists (select 1 from (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,1,2,3,5) and a.bod_id=b.bod_id';
    	commandtext:=commandtext+' 		and b.type_id=1 group by b.med_id) x where x.med_id=h.rec_id and x.ckd_amot2a=(isnull(c.amot,0)+isnull(c.fee,0))*b.qty)';  //and a.creat_dt>='''+datetostr(dxdateedit1.date)+'''
	//    and (isnull(c.amot,0)+isnull(c.fee,0))*b.qty <> isnull(y.ckd_amot2a,0)';
    end;

    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';


//    commandtext:=commandtext+' union all select h.rec_id,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''应付记账'',a.bod_cd,bod_cd1='''',a.bod_desc,a.bod_desc1,a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0),';
    commandtext:=commandtext+' union all select rec_id=case when h.rec_id is null then a.bod_id else h.rec_id end,dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''应付记账'',a.bod_cd,bod_cd1='''',bod_cd2='''',bod_cd3='''',a.bod_desc,a.bod_desc1,';
    commandtext:=commandtext+' a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0),';
    commandtext:=commandtext+' dist1=dbo.getdistrictname(f.district,1),dist2=dbo.fn_getdistrictname(f.district,2),level1='''',';
//    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (e.district,1),dist2=dbo.fn_getdistrictlevel (e.district,2),level1='''',';
    commandtext:=commandtext+' creater=d.zname,a.dst_id,e.mate_name,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,bat_cd='''',';
//    commandtext:=commandtext+' a.ckd_amot,a.ckd_amot2,g.ckd_amot2a,h.ckd_amot3,'; //a.ckd_amot3,';
    commandtext:=commandtext+' z.ckd_amot,y.ckd_amot1,a.ckd_amot2,y.ckd_amot2a,h.ckd_amot3,';    //h.amot1,
//    commandtext:=commandtext+' a.ckd_amot1,a.ckd_amot,a.ckd_amot2,g.ckd_amot2a,a.ckd_amot3,';
//    ckd_amot2a=case when a.bod_status_id=1 then 0 else g.ckd_amot2a end,';
    commandtext:=commandtext+' qty=0,price=0,amot=a.bod_amot,amot2=0.0000,price1=0,';
    commandtext:=commandtext+' type_id=0,type_id2=0,rate=0,rate1=0,fee=0,amot1a=0,cprice1=0,cprice2=0,fee_type_id=0';
//    commandtext:=commandtext+' ,not_amot=a.bod_amot-isnull(a.ckd_amot,0)';
    commandtext:=commandtext+' ,not_amot=cast(a.bod_amot-isnull(z.ckd_amot,0) as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill a';
	commandtext:=commandtext+' left join tb_bill_stadtl h on a.bod_id=h.bod_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))), ';
    commandtext:=commandtext+' 				ckd_amot1=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(b.amot as decimal(15,2)))';
//    commandtext:=commandtext+' 				,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
//    commandtext:=commandtext+' 				ckd_amot =sum(cast(case when a.bod_amot=0 then 0 else isnull(a.ckd_amot,0)/a.bod_amot*b.amot end as decimal(15,2)))';
    commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
//     and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制

    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36 group by b.med_id) y on y.med_id=a.bod_id';

    commandtext:=commandtext+' left join (select b.med_id,ckd_amot =sum(cast(b.amot as decimal(15,2)))';
//    commandtext:=commandtext+' 				ckd_amot =sum(cast(case when a.bod_amot=0 then 0 else isnull(a.ckd_amot,0)/a.bod_amot*b.amot end as decimal(15,2)))';
    commandtext:=commandtext+' 			  from tb_bill a,tb_bill_dtl b where a.bod_type_id=37';
    if Trim(dxEdit1.text)='' then commandtext:=commandtext+' and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';   //dxEdit1.text<>''时，日期范围不要限制
//     and a.carry_dt>='''+datetostr(dxdateedit1.date)+'''';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.type_id=36';
    commandtext:=commandtext+' 				and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=30 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
    commandtext:=commandtext+'	group by b.med_id) z on z.med_id=a.bod_id';

    commandtext:=commandtext+' where a.bod_type_id=43 and a.bod_status_id=1 and a.cate_id=2';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
//        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';

        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
//        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.broker_id='+dxLookupEdit1.ListSource.DataSet.fieldbyname('sta_id').asstring;
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where e.district=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;

    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';


    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_amot=z.ckd_amot'; //已完成付款
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_amot<>isnull(z.ckd_amot,0)'; //未完成付款
{
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_amot=a.ckd_amot1'; //已完成付款
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_amot<>isnull(a.ckd_amot1,0)'; //未完成付款
}
    if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (1=2)'; //两票其他支出记账单 无促销规则
    if RadioGroup3.ItemIndex=4 then
    begin
        commandtext:=commandtext+' and not exists (select 1 from (select b.med_id,ckd_amot2a=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,2,3,5) and a.bod_id=b.bod_id';   //1,
        commandtext:=commandtext+' 		and b.type_id=36 group by b.med_id) x where x.med_id=h.bod_id and a.bod_amot=isnull(h.ckd_amot2a,0))';
    end;
    commandtext:=commandtext+') y left join tb_bill_stadtl z on y.rec_id=z.rec_id'; // order by y.carry_dt ';
//    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+' where y.not_amot<>0'; //未完成付款
edit3.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
//    if recordcount=0 then MessageBox(0,pchar('无所查询数据，可能为未发生或未授权客户或品种'),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetexpaycheck2.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetexpaycheck2.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetexpaycheck2.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price').asfloat-fieldbyname('amot1a').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger=1 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot1a').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('Camot3').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    if fieldbyname('bod_type_id').asinteger=36 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot').asfloat;
        fieldbyname('Camot3').asfloat:=0;
    end;
    if fieldbyname('amot2').asfloat<>0 then fieldbyname('Camot').asfloat:=fieldbyname('amot2').asfloat
        else fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot3').asfloat-fieldbyname('ckd_amot').asfloat;  //未付款金额
//    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot2').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('camot2').asfloat:= fieldbyname('ckd_amot1').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额”，取值为已审核金额—已付款金额
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
    fieldbyname('camot2').asfloat:= fieldbyname('ckd_amot1').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额”，取值为已审核金额—已付款金额
    fieldbyname('camot4').asfloat:= fieldbyname('camot1').asfloat+fieldbyname('camot2').asfloat-fieldbyname('ckd_amot2a').asfloat;  //未申请金额”，取值为：应付金额+应付促销费—已申请金额
}
    fieldbyname('cstatus').asboolean:=(fieldbyname('amot1').asfloat=fieldbyname('Camot').asfloat) and (fieldbyname('amot1').asfloat<>0);
    if fieldbyname('price1').asfloat=0 then fieldbyname('cqty1').asfloat:=0 else fieldbyname('cqty1').asfloat:=fieldbyname('amot1').asfloat/fieldbyname('price1').asfloat; //已收款数量=已收款金额/销售单价

    if (fieldbyname('bod_type_id').asinteger=36) and (fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')) or (fieldbyname('cstatus').asboolean)
        then fieldbyname('camot5').asfloat:=fieldbyname('Camot1').asfloat  //回款应付金额=应付金额
        else fieldbyname('camot5').asfloat:=fieldbyname('cqty1').asfloat*fieldbyname('amot1a').asfloat; //回款应付金额=已收款数量*应付金额/盒
    if fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1')
        then fieldbyname('camot6').asfloat:=fieldbyname('camot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;
{
    if (fieldbyname('bod_type_id').asinteger=1) and (fieldbyname('carry_dt').asdatetime>=strtodate('2024-1-1'))
        then fieldbyname('camot6').asfloat:=fieldbyname('camot5').asfloat-fieldbyname('ckd_amot').asfloat  //回款未付金额=回款应付金额-已付金额
        else fieldbyname('camot6').asfloat:=0;
}
    // camot7 用于 判断 应核销余额，显示颜色
    fieldbyname('camot7').asfloat:= fieldbyname('Camot5').asfloat-fieldbyname('ckd_amot2a').asfloat; 
    fieldbyname('camot8').asfloat:= fieldbyname('Camot5').asfloat;
    fieldbyname('camot9').asfloat:= fieldbyname('ckd_amot2a').asfloat;
end;
end;

procedure Tsetexpaycheck2.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxdbgrid1carry_dt.Index]< strtodate('2024-1-1')) and (ANode.Values[dxdbgrid1Camot4.Index]<>0) then Acolor := $00CEFFFD;
if (ANode.Values[dxdbgrid1carry_dt.Index]>=strtodate('2024-1-1')) and (ANode.Values[dxdbgrid1Camot7.Index]<>0) then Acolor := $00CEFFFD;
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
{
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '分销采购') then
    begin
        AColor := $00CAFDFD; //clyellow;
    end;
}
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
if (AColumn = dxDBGrid1fckdamot3) then
begin
    if (ANode.Values[dxDBGrid1fckdamot3.Index] =True) then AColor := $00ABFCA9;
end;
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

procedure Tsetexpaycheck2.N1Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,bodtypeid1,n: integer;
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
    if abs(qry.fieldbyname('Camot4').asfloat)>0.005 then  //按未核销申请金额
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
                if abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat) then
//                if qry.fieldbyname('ckd_amot2a').asfloat<qry.fieldbyname('Camot5').asfloat then
                begin
                    s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                    mamt:=qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
                end;
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
                if abs(qry.fieldbyname('ckd_amot2a').asfloat)<abs(qry.fieldbyname('Camot5').asfloat) then
                begin
                    s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat); //回款未付金额
                    mamt:=qry.fieldbyname('Camot5').asfloat-qry.fieldbyname('ckd_amot2a').asfloat;
                end;
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
    f7:= dxDBGrid1.ColumnByFieldName('Camot5').Index;  //回款应付金额
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
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一次核销不可包含不同代理人的单据');
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
                    if abs(dxDBGrid1.SelectedNodes[i].values[f9])<>abs(dxDBGrid1.SelectedNodes[i].values[f7]) then
                    begin
                        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f7]);  //Camot6回款未付金额
                        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9];  //Camot6
                        sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9])+',rela_value=0,amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9]);
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
                    if abs(dxDBGrid1.SelectedNodes[i].values[f9])<>abs(dxDBGrid1.SelectedNodes[i].values[f7]) then
                    begin
                        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f7]);  //Camot4未申请金额
                        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9];
                        sql:=sql+',price='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]-dxDBGrid1.SelectedNodes[i].values[f9])+',rela_value='+floattostr(dxDBGrid1.SelectedNodes[i].Values[f8])+',amot='+floattostr(dxDBGrid1.SelectedNodes[i].values[f7]);
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
if mi=0 then raise Exception.Create('无可生成其他支出核销单记录(完成核销申请的不可再次核销)');
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
            s:='所选记录中下列代理人已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
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
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_bill_stadtl h,tb_busimate c '; //tb_bill_dtl b,
        commandtext:=commandtext+' where a.bod_type_id=1 and a.agent_id=c.mate_id and c.stoppay=1 and a.bod_id=h.bod_id and h.rec_id in ('+s2+')';
    edit2.text:=commandtext;
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列代理人已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
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

procedure Tsetexpaycheck2.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetexpaycheck2.N5Click(Sender: TObject);
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

procedure Tsetexpaycheck2.N7Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetexpaycheck2.N8Click(Sender: TObject);
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

procedure Tsetexpaycheck2.N10Click(Sender: TObject);
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

procedure Tsetexpaycheck2.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetexpaycheck2.N2Click(Sender: TObject);
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

procedure Tsetexpaycheck2.qryAfterPost(DataSet: TDataSet);
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

procedure Tsetexpaycheck2.N3Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,l,m,n: integer;  // bodtypeid1,
    r,d,f0,f1,f2,f3,f4,f5,f6: integer;
    s,s1,s2,s3: string;
//    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+ '--------------------------------------------';
//s1:='';s2:='';
s3:=''; mi:=0;   mamt:=0;
bodid:=qry.fieldbyname('bod_id').asinteger;
if dxDBGrid1.SelectedCount<2 then
begin
//    if abs(qry.fieldbyname('Cnot_amot').asfloat)>0.005 then
//    if (qry.fieldbyname('Camot1').asfloat)<>0) and (qry.fieldbyname('ckd_amot3').asfloat)<>qry.fieldbyname('Camot1').asfloat)) then
//    begin
        if qry.fieldbyname('bod_type_id').asinteger=36 then
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' 应付记账 ';
//            s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot1').asfloat);
//            s1:=qry.fieldbyname('rec_id').asstring; // tb_bill_stadtl.rec_id  dtl_id取bod_id值
//	        s3:='update tb_bill set ckd_amot3='+floattostr(qry.fieldbyname('Camot1').asfloat)+'+'+floattostr(qry.fieldbyname('Camot3').asfloat)+' where bod_id='+qry.fieldbyname('bod_id').asstring;
        end
        else
        begin
            s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+' '+qry.fieldbyname('med_name').asstring;
//            s2:=qry.fieldbyname('rec_id').asstring; // dtl_id
       	end;
		s:= s + ' '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot1').asfloat+qry.fieldbyname('Camot3').asfloat);
//		s:= s + ' '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot1').asfloat+qry.fieldbyname('Camot3').asfloat-qry.fieldbyname('ckd_amot3').asfloat);
//        bodid:=qry.fieldbyname('bod_id').asinteger;
		if (qry.fieldbyname('Camot1').asfloat+qry.fieldbyname('Camot3').asfloat<>0) and (qry.fieldbyname('rec_id').asinteger>0)
        	then s3:='update tb_bill_stadtl set ckd_amot3='+floattostr(qry.fieldbyname('Camot1').asfloat)+'+'+floattostr(qry.fieldbyname('Camot3').asfloat)+' where rec_id='+qry.fieldbyname('rec_id').asstring;
        mateid:=qry.fieldbyname('dst_id').asinteger;
        agentid:=qry.fieldbyname('agent_id').asinteger;
        bodtypeid:=qry.fieldbyname('bod_type_id').asinteger;
        mamt:=qry.fieldbyname('Camot1').asfloat+qry.fieldbyname('Camot3').asfloat;
//        s1:=qry.fieldbyname('bod_id').asstring;
//        s3:='update tb_bill set ckd_amot3='+qry.fieldbyname('Camot1').asstring+' where bod_id='+qry.fieldbyname('bod_id').asstring;
        mi:=1;
//    end;
end
else
begin
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
    f3:= dxDBGrid1.ColumnByFieldName('Camot1').Index;
    f4:= dxDBGrid1.ColumnByFieldName('Camot3').Index;
    f5:= dxDBGrid1.ColumnByFieldName('bod_id').Index;  //
    f6:= dxDBGrid1.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin

        if dxDBGrid1.SelectedNodes[i].values[f0]=36 then//其他应付记账单
        begin
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' 应付记账 '; //+ dxDBGrid1.SelectedNodes[i].Strings[f2]
        end
        else
        begin
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+' '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
        end;
        if (dxDBGrid1.SelectedNodes[i].values[f3]+dxDBGrid1.SelectedNodes[i].values[f4]<>0) and (dxDBGrid1.SelectedNodes[i].values[f6]>0)
        	then s3:=s3+' update tb_bill_stadtl set ckd_amot3='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+'+'+floattostr(dxDBGrid1.SelectedNodes[i].values[f4])+' where rec_id='+dxDBGrid1.SelectedNodes[i].Strings[f6];
        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f3]+dxDBGrid1.SelectedNodes[i].values[f4]);
        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f3]+dxDBGrid1.SelectedNodes[i].values[f4];
        mi := mi+1;
    end;
end;
//showmessage('s3:'+s3);
if (mi=0) or (s3='') then raise Exception.Create('无可完成合规资料记录(无业务规则或核销金额)');
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);
if messagedlg('下列单据完成合规资料:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

setprogress(1);
//qry.DisableControls;
{
f3:= dxDBGrid1.ColumnByFieldName('Camot1').Index;
f4:= dxDBGrid1.ColumnByFieldName('Camot3').Index;
f6:= dxDBGrid1.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if (dxDBGrid1.SelectedNodes[i].values[f3]+dxDBGrid1.SelectedNodes[i].values[f4] <>0) and (f6>0) then
    begin
    	qry.locate('rec_id',dxDBGrid1.SelectedNodes[i].values[f6],[]);
        if not (qry.state in [dsedit]) then qry.Edit;
        qry.fieldbyname('ckd_amot3').asfloat:= dxDBGrid1.SelectedNodes[i].values[f3]+dxDBGrid1.SelectedNodes[i].values[f4];
        qry.post;
        mi := mi+1;
    end;
end;
}
with dm.pubqry do
begin
    if active=true then close;
    commandtext:=s3;
    edit3.text:=s3;
    execute;
//    SpeedButton5Click(nil);

{
    f6:= dxDBGrid1.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
    	qry.locate('rec_id',dxDBGrid1.SelectedNodes[i].values[f6],[]);
    	refreshmyrecord(qry,dm.Refreshcds,0,'z.rec_id', dxDBGrid1.SelectedNodes[i].values[f6]);
//    	refreshmyrecord(qry,dm.Refreshcds,0,'a.rec_id', dxDBGrid1.SelectedNodes[i].values[f6]);
        mi := mi+1;
    end;
}
{
    if active=true then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+s1+')';
    edit1.text:=commandtext;
    open;
    first;
    while not eof do
    begin
    	qry.locate('bod_id',fieldbyname('bod_id').asinteger,[]);
    	refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id', fieldbyname('bod_id').asinteger);
        next;
    end;
}

end;
setprogress(0);
//s:='已成功完成合规资料,可刷新查看结果';
MessageBox(0,pchar('已成功完成合规资料核销,需刷新后查看核销结果'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetexpaycheck2.SpeedButton1Click(Sender: TObject);
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

procedure Tsetexpaycheck2.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetexpaycheck2.dxDBGrid1Click(Sender: TObject);
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

procedure Tsetexpaycheck2.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetexpaycheck2.qryBeforePost(DataSet: TDataSet);
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

procedure Tsetexpaycheck2.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure Tsetexpaycheck2.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

procedure Tsetexpaycheck2.N11Click(Sender: TObject);
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

end.
