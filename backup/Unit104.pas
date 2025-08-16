unit Unit104;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib, mycds;

type
  Tsetreport25 = class(TForm)
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
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    qrycarry_dt: TDateTimeField;
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
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    ImageList: TImageList;
    Label13: TLabel;
    Timer1: TTimer;
    qrydist1: TStringField;
    qrydist2: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxPickEdit1: TdxPickEdit;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    dxDBGrid1Ccate: TdxDBGridColumn;
    qrybod_cd1: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    qryprice1: TBCDField;
    qryprice2: TBCDField;
    qryCamot1: TFloatField;
    qryCamot2: TBCDField;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    N7: TMenuItem;
    N8: TMenuItem;
    qryckd_amot1: TBCDField;
    qrycnot_amot1: TBCDField;
    dxDBGrid1Camot4: TdxDBGridColumn;
    dxDBGrid1Cfeeamot: TdxDBGridColumn;
    qrycredit_day: TIntegerField;
    qryreccd: TStringField;
    qryrecdt: TDateTimeField;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1cnot_amot: TdxDBGridColumn;
    qryCfinished: TBooleanField;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1rate1: TdxDBGridColumn;
    dxDBGrid1fee: TdxDBGridColumn;
    dxDBGrid1Cfee: TdxDBGridColumn;
    dxDBGrid1ramot: TdxDBGridColumn;
    qryCamot3: TBCDField;
    qryckd_amot3: TBCDField;
    dxDBGrid1ckd_amot3a: TdxDBGridColumn;
    qrycnot_amot3: TBCDField;
    qryrecdt1: TDateTimeField;
    qryCfinished1: TBooleanField;
    dxDBGrid1Cfinished1: TdxDBGridCheckColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1recdt1: TdxDBGridColumn;
    qryrate: TBCDField;
    qryrate1: TBCDField;
    qryfee: TBCDField;
    qryCfee: TBCDField;
    qryramot: TBCDField;
    qryrprice1: TBCDField;
    qryrprice2: TBCDField;
    qryCamot4: TBCDField;
    qryCfeeamot: TBCDField;
    qrycnot_amot: TBCDField;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1agent_id: TdxDBGridColumn;
    qrydst_id: TIntegerField;
    qryagent_id: TIntegerField;
    Shape6: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label7: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1Camot3: TdxDBGridColumn;
    dxDBGrid1rprice1: TdxDBGridColumn;
    dxDBGrid1rprice2: TdxDBGridColumn;
    qryramot1: TBCDField;
    qrybod_type_id: TIntegerField;
    qryCbodtype: TStringField;
    dxDBGrid1bod_type_id: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    qrystoppay: TBooleanField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    qrytype_id1: TWordField;
    qryCtypeid1: TStringField;
    dxDBGrid1Ctypeid1: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qryreccheckdt: TDateTimeField;
    dxDBGrid1reccheckdt: TdxDBGridColumn;
    dxDBGrid1fckdamot3: TdxDBGridCheckColumn;
    dxDBGrid1ckd_amot3: TdxDBGridColumn;
    qryckd_amot2a: TBCDField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    qryckd_amot3a: TBCDField;
    qryfckdamot3a: TBooleanField;
    N9: TMenuItem;
    N10: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    qryCqty: TBCDField;
    dxDBGrid1Cqty: TdxDBGridColumn;
    qryckd_amot: TBCDField;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    qryCamot5: TBCDField;
    dxDBGrid1Camot5: TdxDBGridColumn;
    dxDBGrid1Camot6: TdxDBGridColumn;
    qryCamot6: TBCDField;
    qryamot1: TBCDField;
    qryamot2: TBCDField;
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
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N7Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport25: Tsetreport25;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport25.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
if fmateid>0 then fmateid:=0;
if fagentid>0 then fagentid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//����
end;

procedure Tsetreport25.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport25.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport25.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport25.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
//dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
end;

procedure Tsetreport25.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport25.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('�������ô���');
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
    // notice: union �õ������� Clientdataset ��postʱ����read only ��������Ҫ�޸�tb_bill.ckd_amot2�ֶΣ���inner joinһ��tb_bill
    commandtext:='select a.bod_id,a.ckd_amot3,y.* from tb_bill a inner join (select b.dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(p.district),'; //dbo.fn_getdistrict(j.district)
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),d.type_id1,o.type_id2,a.bod_desc,j.mate_name,a.agent_id,agent=p.mate_name,p.stoppay,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
    commandtext:=commandtext+' level2=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
    commandtext:=commandtext+' level3=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
    commandtext:=commandtext+' broker='''','; //dbo.fn_mate_name(l.agent_id),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,o.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
    commandtext:=commandtext+' a.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (p.district,1),dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' recdt=cast(null as datetime),reccd='''',';
    commandtext:=commandtext+' cqty=cast(case when a.busi_type=3 or isnull(q.amot,0)=0 then 0 else case when b.qty>=0 and b.ckd_amot3/q.amot>b.qty or b.qty<0 and b.ckd_amot3/q.amot<b.qty then b.qty else round(b.ckd_amot3/q.amot,0) end end as decimal(10,0)),';
                             //cqty Ϊ���ҷ�������

    commandtext:=commandtext+' b.ckd_amot1,ckd_amot2a=b.ckd_amot2,a.ckd_amot3,ckd_amot3a=b.ckd_amot3,a.busi_type,b.qty,b.price,b.amot,b.discount,';  //a.ckd_amot, price=cast(m.price2 as decimal(15,6)),
    commandtext:=commandtext+' recdt1=dbo.fn_getimprecdt(b.dtl_id),reccheckdt=dbo.fn_getimpreccheckdt(b.dtl_id),ramot1=q.amot,y.amot1,y.amot2,z.ckd_amot,'; //i.amot5,  b.ckd_amot4,';
    commandtext:=commandtext+' b.price1,b.price2,'; //amot=cast(m.price2*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
    commandtext:=commandtext+' b.bat_cd,b.bod_cd1,o.rate,o.rate1,o.fee,ramot=o.amot,rprice1=o.price1,rprice2=o.price2,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
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
    if RadioGroup3.ItemIndex in [0,3]
    	then commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'  // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id'
    	else commandtext:=commandtext+' inner join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join (select b.med_id,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.type_id=42 group by b.med_id) i on b.dtl_id=i.med_id';

    commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=42 group by b.med_id) y on b.dtl_id=y.med_id';

    commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=42';
    commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=50 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
    commandtext:=commandtext+' 	group by b.med_id) z on b.dtl_id=z.med_id';

//���ղ��ֿ�ʼ
{
        commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id';

 		commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1 and a.bod_id=b.bod_id';
        commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
        commandtext:=commandtext+' 	group by b.med_id) y on h.rec_id=y.med_id';
}
//���ղ��ֽ���


    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1 and a.busi_type in (1,2)'; //��Ʊ���۳��ⵥ busi_type: 1����,2�˻�,3���� 21.6.15ӦҪ���ų�busi_type=3����
    commandtext:=commandtext+'  and a.cate_id=2'; //����
//    if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
{
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot3=q.amot*b.qty';
    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and (b.ckd_amot3 is null or b.ckd_amot3<>q.amot*b.qty)';
}
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot4=(isnull(o.amot,0)+isnull(o.fee,0))*b.qty'; //����ɸ���
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and b.ckd_amot4<>(isnull(o.amot,0)+isnull(o.fee,0))*b.qty'; //δ��ɸ���
    if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (isnull(o.price1,0)=0 or isnull(o.price2,0)=0 or b.price1<>isnull(o.price2,0) or b.price2<>isnull(o.price1,0))'; //����Ʊ��������
    if RadioGroup3.ItemIndex=4 then //ѡ������븶��ʱ������ʾΪ��ɷ����տ�򹳣�����δ���������� �����������������
    begin
//    	commandtext:=commandtext+'  and (isnull(o.amot,0)+isnull(o.fee,0))*b.qty<>isnull(i.amot5,0)';
{
    	commandtext:=commandtext+'  and (b.ckd_amot3=q.amot*b.qty and exists (select 1 from tb_busiframe4 r where r.valid=1 and r.agent_id=a.agent_id and r.mate_id=a.dst_id and r.med_id=b.med_id and r.valid_dt<=a.carry_dt and b.price1=o.price2 and b.price2=o.price1)';
        commandtext:=commandtext+' 		and (isnull(o.amot,0)+isnull(o.fee,0))*b.qty<>isnull(b.ckd_amot4,0))';
}
		commandtext:=commandtext+' and b.ckd_amot3<>0 and b.ckd_amot3=round(q.amot*b.qty,2) and isnull(i.amot5,0)=0 and round((isnull(o.fee,0)+isnull(o.amot,0))*b.qty,2)<> isnull(ckd_amot4,0)';
{
        and b.ckd_amot3<>0 and b.ckd_amot3=round(q.amot*b.qty,2)
   		and isnull(i.amot5,0)=0
   		and round((isnull(o.fee,0)+isnull(o.amot,0))*b.qty,2) <> isnull(ckd_amot4,0)
}
//    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
//    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);

	end;
{
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('cfinished').asboolean:=(fieldbyname('cnot_amot1').asfloat=0);
    fieldbyname('camot3').asfloat:=fieldbyname('ramot1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot3').asfloat:=fieldbyname('camot3').asfloat-fieldbyname('ckd_amot3').asfloat;
    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
    fieldbyname('cfee').asfloat:=fieldbyname('rprice2').asfloat-fieldbyname('rprice1').asfloat-fieldbyname('ramot').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger=43 then
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('amot').asfloat;
	    fieldbyname('cfeeamot').asfloat:=0;
    end
    else
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('qty').asfloat;
    	fieldbyname('cfeeamot').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    fieldbyname('cnot_amot4').asfloat:=fieldbyname('camot4').asfloat+fieldbyname('cfeeamot').asfloat-fieldbyname('ckd_amot4').asfloat;
}
{
    fieldbyname('cfee').asfloat:=fieldbyname('rprice2').asfloat-fieldbyname('rprice1').asfloat-fieldbyname('ramot').asfloat-fieldbyname('fee').asfloat;

    	fieldbyname('camot4').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('qty').asfloat;
    	fieldbyname('cfeeamot').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    fieldbyname('cnot_amot4').asfloat:=fieldbyname('camot4').asfloat+fieldbyname('cfeeamot').asfloat-fieldbyname('ckd_amot4').asfloat;
}
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
//    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(p.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(p.district,t.dist_id)=1)';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

    commandtext:=commandtext+' union all select dtl_id=a.bod_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,';
    commandtext:=commandtext+' m.med_code,m.med_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+' qtyperpack=null,cdistrict=dbo.fn_getdistrict(l.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,type_id2=0,a.bod_desc,n.mate_name,a.agent_id,agent=l.mate_name,l.stoppay,';
    commandtext:=commandtext+' level1='''',level2='''',level3='''',broker='''',leader='''',';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,credit_day=0,';
    commandtext:=commandtext+' mate_name1='''',mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
    commandtext:=commandtext+' a.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (l.district,1),dist2=dbo.fn_getdistrictlevel (l.district,2),';
    commandtext:=commandtext+' recdt=cast(null as datetime),reccd='''',';
    commandtext:=commandtext+' cqty=0,';  //cqty Ϊ���ҷ�������

    commandtext:=commandtext+' a.ckd_amot1,ckd_amot2a=0,a.ckd_amot3,ckd_amot3a=0,a.busi_type,qty=0,price=0,amot=a.bod_amot,discount=0,';  //a.ckd_amot,
    commandtext:=commandtext+' recdt1=cast(null as datetime),reccheckdt=cast(null as datetime),ramot1=null,y.amot1,y.amot2,z.ckd_amot,'; //i.amot5,ckd_amot4=a.ckd_amot,
    commandtext:=commandtext+' price1=0,price2=0,cost=0,profit=0,prate=0,';
    commandtext:=commandtext+' bat_cd='''',bod_cd1='''',rate=0,rate1=0,fee=0,ramot=0,rprice1=0,rprice2=0,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate l on a.agent_id =l.mate_id';
    commandtext:=commandtext+' left join tb_busimate n on a.dst_id =n.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id =m.med_id';
//    commandtext:=commandtext+' left join (select b.med_id,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.type_id=43 group by b.med_id) i on a.bod_id=i.med_id';

    commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=43 group by b.med_id) y on a.bod_id=y.med_id';

    commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=43';
    commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=50 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
    commandtext:=commandtext+'  group by b.med_id) z on a.bod_id=z.med_id';

    commandtext:=commandtext+' where a.bod_type_id=43 and a.bod_status_id=1';   // ��Ʊ����֧�����˵�
    if dxPickEdit1.itemindex=0
        then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=50 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=50 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
    if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=50 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';

    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_amot=a.ckd_amot'; //����ɸ���
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_amot<>isnull(a.ckd_amot,0)'; //δ��ɸ���
    if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (1=2)'; //��Ʊ����֧�����˵� ����Ʊ��������
    if RadioGroup3.ItemIndex=4 then commandtext:=commandtext+'  and a.bod_amot<>isnull(a.ckd_amot,0)';
{
    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
    fieldbyname('cfee').asfloat:=fieldbyname('rprice2').asfloat-fieldbyname('rprice1').asfloat-fieldbyname('ramot').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger=43 then
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('amot').asfloat;
	    fieldbyname('cfeeamot').asfloat:=0;
    end
    else
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('qty').asfloat;
    	fieldbyname('cfeeamot').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    fieldbyname('cnot_amot4').asfloat:=fieldbyname('camot4').asfloat+fieldbyname('cfeeamot').asfloat-fieldbyname('ckd_amot4').asfloat;
}

    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(l.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(f.district,t.dist_id)=1)';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(l.district,t.dist_id)=1)';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    commandtext:=commandtext+') y on a.bod_id=y.bod_id'; // order by a.carry_dt,a.bod_id';
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

procedure Tsetreport25.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport25.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetreport25.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport25.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport25.FormActivate(Sender: TObject);
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
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
if fmateid>0 then
begin
	dxButtonEdit1.Tag:=fmateid;
    dxButtonEdit1.Text:=fmatename;
end;
if fagentid>0 then
begin
	dxButtonEdit4.Tag:=fagentid;
    dxButtonEdit4.Text:=fagent;
end;
//showmessage(fagent+'  '+dxButtonEdit4.Text);
if (fmateid>0) or (fagentid>0) then SpeedButton5Click(nil);
end;

procedure Tsetreport25.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport25.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('��ѯ�ؼ���', '������', NewString);
if ClickedOK then
    with dxdbgrid1 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure Tsetreport25.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport25.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1Camot3.Visible:=False;
dxDBGrid1ckd_amot3.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
setprogress(0);
end;

procedure Tsetreport25.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
dxDBGrid1Camot3.Visible:=False;
dxDBGrid1ckd_amot3.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
end;

procedure Tsetreport25.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '����') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '��ҵ') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '����') then
    begin
        AColor := $00E8C1DE;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '����') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '����') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1amot5) then
begin
    if (ANode.Strings[dxDBGrid1amot5.Index] <>'') then Acolor := $00FEFDE2;
end;
}
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
if (AColumn = dxDBGrid1Cfinished1) then
//if (AColumn = dxDBGrid1ckd_amot3) or (AColumn = dxDBGrid1Cfinished1) then
begin
    if (ANode.Values[dxDBGrid1Cfinished1.Index] ='True') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid1ckd_amot4) then
begin
    if (ANode.Values[dxDBGrid1Camot4.Index] =ANode.Values[dxDBGrid1ckd_amot4.Index]) then
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
if (AColumn = dxDBGrid1rprice1) then
begin
    if (ANode.Values[dxDBGrid1price2.Index]<>ANode.Values[dxDBGrid1rprice1.Index]) then
    begin
        Acolor := clred;
        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1rprice2) then
begin
    if (ANode.Values[dxDBGrid1price1.Index]<>ANode.Values[dxDBGrid1rprice2.Index]) then
    begin
        Acolor := clred;
        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1fckdamot3) then
begin
    if (ANode.Values[dxDBGrid1fckdamot3.Index] =True) then AColor := $00ABFCA9;
end;
end;

procedure Tsetreport25.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport25.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='���';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='����';
        2: fieldbyname('cbusitype').asstring:='�˻�';
    end;
    if fieldbyname('bod_type_id').asinteger=43 then fieldbyname('ccate').asstring:='����'
    else
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='��ҵ';
        2: fieldbyname('ccate').asstring:='����';
    end;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='����';
        2:  fieldbyname('ctypeid1').asstring:='����';
    end;
    case fieldbyname('type_id2').asinteger of  //����������ڲ������ϡ��۲������+��������
        1: fieldbyname('ctype2').asstring:='�Ѱ����';
        2: fieldbyname('ctype2').asstring:='�������';
        3: fieldbyname('ctype2').asstring:='�Ѱ������������';
        4: fieldbyname('ctype2').asstring:='���������������';
    end;
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('cfinished').asboolean:=(fieldbyname('cnot_amot1').asfloat=0);
    fieldbyname('camot3').asfloat:=fieldbyname('ramot1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('cnot_amot3').asfloat:=fieldbyname('camot3').asfloat-fieldbyname('ckd_amot3a').asfloat;


    fieldbyname('cfinished1').asboolean:= (fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3a').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3a').asfloat<=fieldbyname('Camot3').asfloat);
{
    fieldbyname('cfinished1').asboolean:= (fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
}
{
    fieldbyname('cfinished1').asboolean:=(fieldbyname('ckd_amot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('ckd_amot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
}

    fieldbyname('cfee').asfloat:=fieldbyname('rprice2').asfloat-fieldbyname('rprice1').asfloat-fieldbyname('ramot').asfloat-fieldbyname('fee').asfloat;
    if fieldbyname('bod_type_id').asinteger=43 then
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('amot').asfloat;
	    fieldbyname('cfeeamot').asfloat:=0;
    end
    else
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('qty').asfloat;
    	fieldbyname('cfeeamot').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    fieldbyname('cnot_amot').asfloat:=fieldbyname('camot4').asfloat+fieldbyname('cfeeamot').asfloat-fieldbyname('ckd_amot').asfloat;

    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('Camot4').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot4').asfloat)
        	or (fieldbyname('Camot4').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot4').asfloat));
{
    fieldbyname('fckdamot2').asboolean := (fieldbyname('ckd_amot2').asfloat<>0)
    	and ((fieldbyname('Camot4').asfloat>0) and (fieldbyname('ckd_amot2').asfloat>=fieldbyname('Camot4').asfloat)
        	or (fieldbyname('Camot4').asfloat<0) and (fieldbyname('ckd_amot2').asfloat<=fieldbyname('Camot4').asfloat));
}
	fieldbyname('camot5').asfloat:=fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat; //����δ�����=����˽��Ѹ�����
	fieldbyname('camot6').asfloat:=fieldbyname('Camot4').asfloat+fieldbyname('Cfeeamot').asfloat-fieldbyname('amot1').asfloat; //δ������=Ӧ�����+Ӧ�������ѡ���������
end;
end;

procedure Tsetreport25.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('��ʾ'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tsetreport25.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tsetreport25.N7Click(Sender: TObject);
var i,mi,srcid,dstid,agentid,l,m,n: integer;
    f1,f2,f3,f4,f5,f6,f7: integer;
    s,t,r: string;
    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:='------------------------------------------------';
t:=''; r:='';
mi:=0;   mamt:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if qry.fieldbyname('Camot6').asfloat<>0 then
//    if ((qry.fieldbyname('bod_type_id').asinteger=43) or (qry.fieldbyname('Cfinished1').asboolean=True)) and (qry.fieldbyname('cnot_amot4').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'�� '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot6').asfloat);
        if qry.fieldbyname('bod_type_id').asinteger=42 then t:=qry.fieldbyname('dtl_id').asstring;
        if qry.fieldbyname('bod_type_id').asinteger=43 then r:=qry.fieldbyname('bod_id').asstring;
        mamt:=qry.fieldbyname('Camot6').asfloat;
        mi:=1;
    end;
end
else
begin
    l := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    m := dxDBGrid1.ColumnByFieldName('src_id').Index;
    n := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
    f3:= dxDBGrid1.ColumnByFieldName('Cfinished1').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Camot6').Index;
    f6:= dxDBGrid1.ColumnByFieldName('bod_type_id').Index;
    f7:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if dxDBGrid1.SelectedNodes[i].values[f5]<>0 then
//        if ((dxDBGrid1.SelectedNodes[i].values[f6]=43) or (dxDBGrid1.SelectedNodes[i].values[f3]=True)) and (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
            if mi=0 then
            begin
                agentid:=dxDBGrid1.SelectedNodes[i].values[l];
                srcid:=dxDBGrid1.SelectedNodes[i].values[m];
                dstid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if agentid<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('ͬһ�����в��ɰ�����ͬҵ�����˵ĵ���');
                if srcid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('ͬһ�����в��ɰ�����ͬ������λ�ĵ���');
                if dstid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('ͬһ�����в��ɰ�����ͬ��ҵ��˾�ĵ���');
            end;
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'�� '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
        	if dxDBGrid1.SelectedNodes[i].values[f6]=42 then t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // ��¼ dtl_id �ַ���
        	if dxDBGrid1.SelectedNodes[i].values[f6]=43 then r:= r +','+ dxDBGrid1.SelectedNodes[i].Strings[f7];  // ��¼ bod_id �ַ���
//            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // ��¼ dtl_id �ַ���
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('�޿�������Ʊ����֧����������¼(��ɺ�������Ĳ����ٴκ���)');
//if mi=0 then raise Exception.Create('�޿�������Ʊ����֧����������¼(δ��ɷ������������ɸ������)');
with dm.pubqry do
begin
    if t<>'' then
    begin
        if active=True then close;
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_bill_dtl b,tb_busimate c ';
        commandtext:=commandtext+' where a.bod_id=b.bod_id and b.dtl_id in ('+t+') and a.agent_id=c.mate_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='��ѡ��¼������ҵ����������ͣ����������ȷ��'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active=True then close;
{
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
    //    commandtext:=commandtext+' where b.dtl_id in ('+t+') and (o.amot*b.qty>isnull(b.ckd_amot3,0))';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (o.amot*b.qty>0 and o.amot*b.qty>isnull(b.ckd_amot3,0) or o.amot*b.qty<0 and o.amot*b.qty<isnull(b.ckd_amot3,0))';
}
{
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (q.amot*b.qty>0 and round(q.amot*b.qty,2)>isnull(b.ckd_amot3,0) or q.amot*b.qty<0 and round(q.amot*b.qty,2)<isnull(b.ckd_amot3,0))';
edit1.text:=commandtext;        
        open;
        if recordcount>0 then
        begin
            s:='���е���Ʒ����δ��ɷ������,���������'+#13+#10+'----------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONInformation);
            //abort;
        end;
}

{
        if recordcount>0 then
        begin
            s:='���е���Ʒ����δ��ɷ��������'+#13#10+'����������Ʊ����֧��������'+#13+#10+'----------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
}
{
select top 1 @ret=rec_id from tb_busiframe4
 where agent_id=@agentid and mate_id=@mateid and med_id=@medid and valid_dt<=@dt
 order by valid_dt desc
 }
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+')';
        commandtext:=commandtext+' 	and not exists (select 1 from tb_busiframe4 r where r.valid=1 and r.agent_id=a.agent_id and r.mate_id=a.dst_id and r.med_id=b.med_id and r.valid_dt<=a.carry_dt)';
        open;
        if recordcount>0 then
        begin
            s:='���е���Ʒ���������õ���Ʊ���۴�������'+ #13#10+'����������Ʊ����֧��������'+#13+#10+'-----------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (b.price1<>isnull(o.price2,0) or b.price2<>isnull(o.price1,0))';
        open;
        if recordcount>0 then
        begin
            s:='���е���Ʒ�����۵��ۻ���㵥�۲����Ϲ���'+ #13#10+'����������Ʊ����֧��������'+#13+#10+'-----------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
        commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
        open;
        if recordcount>0 then
        begin
            s:='����������δ�����˵���Ʊ����֧��������'+ #13#10+'���Ƚ��������ɻ�ȡ�����������µ�'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'��Ʊ����֧��������:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
    end;
    if r<>'' then
    begin
        if active=True then close;
        commandtext:='select top 3 c.mate_name from tb_bill a,tb_busimate c ';
        commandtext:=commandtext+' where a.bod_id in ('+r+') and a.agent_id=c.mate_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='��ѡ��¼������ҵ����������ͣ����������ȷ��'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('mate_name').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,b.med_id,bod_cd1=c.bod_cd';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill c';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+r+') and b.med_id=c.bod_id';
        open;
        if recordcount>0 then
        begin
            s:='����������δ�����˵���Ʊ����֧��������'+ #13#10+'���Ƚ��������ɻ�ȡ�����������µ�'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'��Ʊ����֧��������:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):  ��Ʊ����֧�����˵�:'+fieldbyname('bod_cd1').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
    end;
end;
s:=s+ #13#10+'------------------------------------------------';
s:=#13#10+s+ #13#10+'�ϼƽ��:     '+formatfloat('###,###,###,##0.00',mamt);

//if MessageBox(0,Pchar('ȷ�������е���Ʒ��������Ʊ����֧��������:'+s),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('�����е���Ʒ��������Ʊ����֧��������:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
{
�һ�������Ʊ����֧��������ʱ����һ�����ɺ������ݣ���δ��ȷ�ϣ���Ը������һ����ɺ�������ϵͳ���ٴ����ɺ�������
��ͬһ�е��ݣ���ͬʱ�ɳ������������ݣ����æ�������ƣ�������ͬʱ�������κ�������
}
with dm.pubqry do
begin
    if t<>'' then
    begin
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
        commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
        open;
        if recordcount>0 then
        begin
            s:='����������δ�����˵���Ʊ����֧��������'+ #13#10+'���Ƚ��������ɻ�ȡ�����������µ�'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'��Ʊ����֧��������:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
    end;
    if r<>'' then
    begin
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,b.med_id,bod_cd1=c.bod_cd';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill c';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+r+') and b.med_id=c.bod_id';
        open;
        if recordcount>0 then
        begin
            s:='����������δ�����˵���Ʊ����֧��������'+ #13#10+'���Ƚ��������ɻ�ȡ�����������µ�'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'��Ʊ����֧��������:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):  ��Ʊ����֧�����˵�:'+fieldbyname('bod_cd1').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONError);
            abort;
        end;
    end;
end;
mcd:= formatfloat('00000000',getbillid(compid,49));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;
    commandtext:=' declare @id integer';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',49,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    if t<>'' then commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))'
    	else if r<>'' then commandtext:=commandtext+'  from tb_bill where bod_id in ('+r+')';
    commandtext:=commandtext+' select @id=@@identity';
//edit1.text:=commandtext;
{
    open;
    mi:=fields[0].asinteger;
    close;
}
	commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
    commandtext:=commandtext+' select 0,0,0,0,0 where 1=2';
    if t<>'' then
    begin
//        commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' union all select @id,a.bod_type_id,b.dtl_id,';
        commandtext:=commandtext+' (round((isnull(o.amot,0)+isnull(o.fee,0))*case when a.busi_type=3 or isnull(q.amot,0)=0 then 0 else case when b.qty>=0 and b.ckd_amot3/q.amot>b.qty or b.qty<0 and b.ckd_amot3/q.amot<b.qty then b.qty';
        commandtext:=commandtext+' 		else round(b.ckd_amot3/q.amot,0) end end,2)-isnull(b.ckd_amot4,0)),';
        commandtext:=commandtext+' (round((isnull(o.amot,0)+isnull(o.fee,0))*case when a.busi_type=3 or isnull(q.amot,0)=0 then 0 else case when b.qty>=0 and b.ckd_amot3/q.amot>b.qty or b.qty<0 and b.ckd_amot3/q.amot<b.qty then b.qty';
        commandtext:=commandtext+' 		else round(b.ckd_amot3/q.amot,0) end end,2)-isnull(b.ckd_amot4,0))';
        commandtext:=commandtext+' from tb_bill a left join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
	    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+')'; // order by a.bod_id,b.dtl_id';
    end;
    if r<>'' then
    begin
//        commandtext:='insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' union all select @id,bod_type_id,bod_id,bod_amot-isnull(ckd_amot,0),bod_amot-isnull(ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill where bod_type_id=43 and bod_id in ('+r+')';
	end;
edit1.text:=commandtext;
	execute;
    setprogress(0);
    beep;
    s:='�ѳɹ�����'+mcd+'����Ʊ����֧��������';
    MessageBox(0,pchar(s),'��ע��',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport25.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport25.qryAfterPost(DataSet: TDataSet);
begin
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_bill','bod_id','');
end;

procedure Tsetreport25.N10Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,bodtypeid1,l,m,n: integer;
    r,d,f0,f1,f2,f3,f4,f5: integer;
    s,s1,s2,s3: string;
    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:=#13#10+ '--------------------------------------------';
s1:='';s2:='';s3:='';
mi:=0;   mamt:=0;
bodid:=qry.fieldbyname('bod_id').asinteger;

if dxDBGrid1.SelectedCount<2 then
begin
    s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'�� '+qry.fieldbyname('med_name').asstring;
    s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('Camot4').asfloat);
    mamt:=qry.fieldbyname('Camot4').asfloat;
    s1:=qry.fieldbyname('bod_id').asstring;
    s3:='update tb_bill set ckd_amot3='+qry.fieldbyname('Camot4').asstring+' where bod_id='+qry.fieldbyname('bod_id').asstring;
    mi:=1;
end
else
begin
//    l := dxDBGrid1.ColumnByFieldName('agent_id').Index;
//    m := dxDBGrid1.ColumnByFieldName('src_id').Index;
//    n := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f2:= dxDBGrid1.ColumnByFieldName('med_name').Index;
//    f3:= dxDBGrid1.ColumnByFieldName('Cfinished1').Index;
//    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f3:= dxDBGrid1.ColumnByFieldName('camot4').Index;
//    f6:= dxDBGrid1.ColumnByFieldName('bod_type_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'�� '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
        if s1='' then s1:=dxDBGrid1.SelectedNodes[i].Strings[f5] else s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f5];  // ��¼ bod_id �ַ���
        s3:=s3+' update tb_bill set ckd_amot3='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+' where bod_id='+dxDBGrid1.SelectedNodes[i].Strings[f5];
//        if s1='' then s1:=dxDBGrid1.SelectedNodes[i].Strings[f7] else s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f7];  // ��¼ bod_id �ַ���
//        s3:=s3+' update tb_bill set ckd_amot3='+floattostr(dxDBGrid1.SelectedNodes[i].values[f5])+' where bod_id='+dxDBGrid1.SelectedNodes[i].Strings[f7];
        mi := mi+1;
    end;
end;
if mi=0 then raise Exception.Create('�޿���ɺϹ����ϼ�¼');
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'�ϼƽ��:     '+formatfloat('###,###,###,##0.00',mamt);
if messagedlg('���е�����ɺϹ�����:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:=s3;
    execute;
    edit3.text:=commandtext;

    f5:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
    	qry.locate('bod_id',dxDBGrid1.SelectedNodes[i].values[f5],[]);
    	refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id', dxDBGrid1.SelectedNodes[i].values[f5]);
        mi := mi+1;
    end;
end;
//qry.locate('bod_id',bodid,[]);
setprogress(0);
//s:='��ѡ�����ѳɹ���ɺϹ�����';
s:='�ѳɹ���ɺϹ����Ϻ���';
MessageBox(0,pchar(s),'��ע��',MB_OK+MB_ICONInformation);
end;

end.
