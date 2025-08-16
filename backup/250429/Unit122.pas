unit Unit122;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib, mycds;

type
  Tsetreport31 = class(TForm)
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
    qrybroker: TStringField;
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
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
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
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    dxDBGrid1bod_type: TdxDBGridColumn;
    qryCamot1: TFloatField;
    qryCamot2: TBCDField;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    RadioGroup1: TRadioGroup;
    N7: TMenuItem;
    N8: TMenuItem;
    qryckd_amot1: TBCDField;
    dxDBGrid1amot4: TdxDBGridColumn;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1Cnot_amot: TdxDBGridColumn;
    qryCfinished: TBooleanField;
    qryCamot3: TBCDField;
    qryckd_amot3: TBCDField;
    qrycnot_amot3: TBCDField;
    qryCfinished1: TBooleanField;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
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
    qrybod_type_id: TIntegerField;
    qryCbodtype: TStringField;
    dxDBGrid1bod_type_id: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    qrystoppay: TBooleanField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    qrytype_id1: TWordField;
    qryCtypeid1: TStringField;
    dxDBGrid1Ctypeid1: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1fckdamot3: TdxDBGridCheckColumn;
    dxDBGrid1ckd_amot3: TdxDBGridColumn;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    qryckd_amot3a: TBCDField;
    qryfckdamot3a: TBooleanField;
    N9: TMenuItem;
    N10: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label9: TLabel;
    Shape8: TShape;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    qryamot4: TBCDField;
    qrycnot_amot: TBCDField;
    qrybod_type: TStringField;
    Shape7: TShape;
    Shape9: TShape;
    qryindi_acco: TBooleanField;
    dxDBGrid1indi_acco: TdxDBGridCheckColumn;
    qrybod_desc1: TStringField;
    dxDBGrid1bod_desc1: TdxDBGridColumn;
    dxDBGrid1Cfinished1: TdxDBGridCheckColumn;
    qryramot1: TBCDField;
    qryamot1: TBCDField;
    qryamot2: TBCDField;
    qryckd_amot: TBCDField;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
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
  setreport31: Tsetreport31;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport31.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
if fmateid>0 then fmateid:=0;
if fagentid>0 then fagentid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport31.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport31.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport31.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport31.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
//dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport31.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport31.SpeedButton5Click(Sender: TObject);
var si: integer;
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
{
    create PROCEDURE [dbo].[sp_setreport31] (
	@compid tinyint,
	@mateid int,  --供货单位
	@mateid1 int, --商业公司
	@agentid int, --业务负责人
	@medid int,  --品种
	@cateid tinyint,  --类别
	@bodcd varchar(12),  --单据号
	@dt1 datetime,  --起始日期
	@dt2 datetime,  --结束日期
	@userid int  --用户id
    )
}
	commandtext:='exec sp_setreport31 '+inttostr(compid)+',';
    if dxButtonEdit5.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit5.Tag)+','; //供货单位
    if dxButtonEdit1.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.Tag)+','; //商业公司
    if dxButtonEdit4.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit4.Tag)+','; //业务负责人
    if dxButtonEdit2.Text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.Tag)+','; //品种
    commandtext:=commandtext+inttostr(RadioGroup1.ItemIndex)+',';
    commandtext:=commandtext+''''+trim(dxEdit1.text)+''',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+''',';
    commandtext:=commandtext+inttostr(curuserid);
edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
exit;
    // notice: union 得到的数据 Clientdataset 在post时，报read only 错误，所以要修改tb_bill.ckd_amot2字段，再inner join一下tb_bill
    commandtext:='select a.bod_id,a.ckd_amot3,y.* from tb_bill a inner join (select b.dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),d.type_id1,o.type_id2,a.bod_desc,a.bod_desc1,j.mate_name,a.agent_id,agent=p.mate_name,p.stoppay,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
    commandtext:=commandtext+' level2=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
    commandtext:=commandtext+' level3=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
    commandtext:=commandtext+' broker='''','; //dbo.fn_mate_name(l.agent_id),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,o.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
    commandtext:=commandtext+' a.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (p.district,1),dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' recdt=cast(null as datetime),reccd='''',';
    commandtext:=commandtext+' b.ckd_amot1,ckd_amot2a=b.ckd_amot2,a.ckd_amot3,ckd_amot3a=b.ckd_amot3,a.busi_type,b.qty,b.price,b.amot,b.discount,';  //price=cast(m.price2 as decimal(15,6)),
    commandtext:=commandtext+' recdt1=dbo.fn_getimprecdt(b.dtl_id),reccheckdt=dbo.fn_getimpreccheckdt(b.dtl_id),ramot1=q.amot,y.amot1,y.amot2,z.ckd_amot,'; //i.amot5,';
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
	commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';  // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
{
    if RadioGroup3.ItemIndex in [0,3]
    	then commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'  // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id'
    	else commandtext:=commandtext+' inner join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
}
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join (select b.med_id,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.type_id=42 group by b.med_id) i on b.dtl_id=i.med_id';

    commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=42 group by b.med_id) y on b.dtl_id=y.med_id';

    commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_id=b.bod_id and b.type_id=42';
    commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=50 and c.bod_status_id=1 and c.bod_id=d.bod_id and d.med_id=a.bod_id)';
    commandtext:=commandtext+' 	group by b.med_id) z on b.dtl_id=z.med_id';


    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1'; //两票销售出库单
    commandtext:=commandtext+'  and a.cate_id=2'; //分销
{
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot4=(isnull(o.amot,0)+isnull(o.fee,0))*b.qty'; //已完成付款
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and b.ckd_amot4<>(isnull(o.amot,0)+isnull(o.fee,0))*b.qty'; //未完成付款
    if RadioGroup3.ItemIndex=3 then commandtext:=commandtext+'  and (isnull(o.price1,0)=0 or isnull(o.price2,0)=0 or b.price1<>isnull(o.price2,0) or b.price2<>isnull(o.price1,0))'; //无两票促销规则
    if RadioGroup3.ItemIndex=4 then //选择可申请付款时，仅显示为完成返入收款打钩，且有未付金额的数据 且无已申请金额的数据
    begin
		commandtext:=commandtext+' and b.ckd_amot3<>0 and b.ckd_amot3=round(q.amot*b.qty,2) and isnull(i.amot5,0)=0 and round((isnull(o.fee,0)+isnull(o.amot,0))*b.qty,2)<> isnull(ckd_amot4,0)';
	end;
}
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
    else
    begin
		commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(p.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(p.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

    commandtext:=commandtext+' union all select dtl_id=a.bod_id,a.bod_id,a.bod_cd,a.bod_type_id,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,';
    commandtext:=commandtext+' m.med_code,m.med_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+' qtyperpack=null,cdistrict=dbo.fn_getdistrict(l.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,type_id2=0,a.bod_desc,a.bod_desc1,n.mate_name,a.agent_id,agent=l.mate_name,l.stoppay,';
    commandtext:=commandtext+' level1='''',level2='''',level3='''',broker='''',leader='''',';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,credit_day=0,';
    commandtext:=commandtext+' mate_name1='''',mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
    commandtext:=commandtext+' a.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (n.district,1),dist2=dbo.fn_getdistrictlevel (n.district,2),';
    commandtext:=commandtext+' recdt=cast(null as datetime),reccd='''',';
    commandtext:=commandtext+' a.ckd_amot1,ckd_amot2a=0,a.ckd_amot3,ckd_amot3a=0,ckd_amot4=a.ckd_amot,a.busi_type,qty=0,price=0,amot=a.bod_amot,discount=0,';
    commandtext:=commandtext+' recdt1=cast(null as datetime),reccheckdt=cast(null as datetime),ramot1=null,i.amot5,';
    commandtext:=commandtext+' price1=0,price2=0,cost=0,profit=0,prate=0,';
    commandtext:=commandtext+' bat_cd='''',bod_cd1='''',rate=0,rate1=0,fee=0,ramot=0,rprice1=0,rprice2=0,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate l on a.agent_id =l.mate_id';
    commandtext:=commandtext+' left join tb_busimate n on a.dst_id =n.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id =m.med_id';
    commandtext:=commandtext+' left join (select b.med_id,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.type_id=43 group by b.med_id) i on a.bod_id=i.med_id';
    commandtext:=commandtext+' where a.bod_type_id=43 and a.bod_status_id=1';   // 两票其他支出记账单
	commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
    if dxPickEdit1.itemindex=0
        then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}        
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
//    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(l.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(l.district,t.dist_id)=1)';
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

procedure Tsetreport31.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport31.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport31.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport31.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport31.FormActivate(Sender: TObject);
begin
{
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
}
{
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
}
end;

procedure Tsetreport31.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport31.N3Click(Sender: TObject);
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

procedure Tsetreport31.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport31.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
//dxDBGrid1Camot3.Visible:=False;
//dxDBGrid1ckd_amot3.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
setprogress(0);
end;

procedure Tsetreport31.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
//dxDBGrid1Camot3.Visible:=False;
//dxDBGrid1ckd_amot3.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
end;

procedure Tsetreport31.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
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
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '记账') then
    begin
        AColor := $00E8C1DE;
//        AFont.Color := clwhite;
    end;
end;
}

if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '两票分销') then
    begin
    	AColor := $004EFC56; //$00FEFE94;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '两票记账') then
    begin
    	AColor := $004EE000; //$00FEFE94;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '分销采购') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '分销记账') then
    begin
        AColor := $00FDF000;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '商业销售') then
    begin
        AColor := $00CAFDFD;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '商业记账') then
    begin
        AColor := $0084FFFF;
    end;
end;

if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1amot1) then
begin
    if (ANode.Strings[dxDBGrid1amot1.Index] <>'') then Acolor := $00FEFDE2;
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
{
if (AColumn = dxDBGrid1Cfinished1) then
//if (AColumn = dxDBGrid1ckd_amot3) or (AColumn = dxDBGrid1Cfinished1) then
begin
    if (ANode.Values[dxDBGrid1Cfinished1.Index] ='True') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
if (AColumn = dxDBGrid1ckd_amot) then
begin
    if (ANode.Values[dxDBGrid1amot4.Index] =ANode.Values[dxDBGrid1ckd_amot.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
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
{
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
}
if (AColumn = dxDBGrid1fckdamot3) then
begin
    if (ANode.Values[dxDBGrid1fckdamot3.Index] =True) then AColor := $00ABFCA9;
end;
end;

procedure Tsetreport31.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport31.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
{
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
}
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    case fieldbyname('bod_type_id').asinteger of
    	42:	fieldbyname('ccate').asstring:='两票分销';
    	43:	fieldbyname('ccate').asstring:='两票分销';
    end;
{
    if fieldbyname('bod_type_id').asinteger=43 then fieldbyname('ccate').asstring:='记账'
    else
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
}
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
    case fieldbyname('type_id2').asinteger of  //不办个户、②不交资料、③不办个户+不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot4').asfloat-fieldbyname('ckd_amot').asfloat;
    fieldbyname('camot1').asfloat:=fieldbyname('amot4').asfloat-fieldbyname('amot1').asfloat;
//    fieldbyname('camot1').asfloat:=fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat;
    fieldbyname('camot2').asfloat:=fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat;
//    fieldbyname('camot2').asfloat:=fieldbyname('amot4').asfloat-fieldbyname('amot1').asfloat;
//    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
//    fieldbyname('cfinished').asboolean:=(fieldbyname('cnot_amot1').asfloat=0);
	fieldbyname('camot3').asfloat:=fieldbyname('ramot1').asfloat*fieldbyname('qty').asfloat;

{
    fieldbyname('cfinished1').asboolean:= (fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3a').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3a').asfloat<=fieldbyname('Camot3').asfloat);
}
{
    fieldbyname('cfinished1').asboolean:= (fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
}
{
    fieldbyname('cfinished1').asboolean:=(fieldbyname('ckd_amot3').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('ckd_amot3').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot3').asfloat);
}
    fieldbyname('cfinished1').asboolean:= (fieldbyname('camot3').asfloat>0) and (fieldbyname('ckd_amot3a').asfloat>=fieldbyname('Camot3').asfloat)
    	or (fieldbyname('camot3').asfloat<0) and (fieldbyname('ckd_amot3a').asfloat<=fieldbyname('Camot3').asfloat);

//    fieldbyname('cfee').asfloat:=fieldbyname('rprice2').asfloat-fieldbyname('rprice1').asfloat-fieldbyname('ramot').asfloat-fieldbyname('fee').asfloat;
{
    if fieldbyname('bod_type_id').asinteger=43 then
    begin
    	fieldbyname('camot4').asfloat:=fieldbyname('amot').asfloat;
//	    fieldbyname('cfeeamot').asfloat:=0;
    end
    else
    begin
    	fieldbyname('camot4').asfloat:=(fieldbyname('ramot').asfloat+fieldbyname('fee').asfloat)*fieldbyname('qty').asfloat;
    end;
    fieldbyname('cnot_amot4').asfloat:=fieldbyname('amot4').asfloat-fieldbyname('ckd_amot4').asfloat;
//    fieldbyname('cnot_amot4').asfloat:=fieldbyname('camot4').asfloat+fieldbyname('cfeeamot').asfloat-fieldbyname('ckd_amot4').asfloat;

    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('Camot4').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('Camot4').asfloat)
        	or (fieldbyname('Camot4').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('Camot4').asfloat));
}
//    fieldbyname('cnot_amot4').asfloat:=fieldbyname('amot4').asfloat-fieldbyname('ckd_amot4').asfloat;
    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('amot4').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('amot4').asfloat)
        	or (fieldbyname('amot4').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('amot4').asfloat));
end;
end;

procedure Tsetreport31.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tsetreport31.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tsetreport31.N7Click(Sender: TObject);
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
    if ((qry.fieldbyname('bod_type_id').asinteger=43) or (qry.fieldbyname('Cfinished1').asboolean=True)) and (qry.fieldbyname('Camot1').asfloat<>0) then
//    if (qry.fieldbyname('Cfinished1').asboolean=True) and (qry.fieldbyname('cnot_amot4').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('cnot_amot4').asfloat);
        if qry.fieldbyname('bod_type_id').asinteger=42 then t:=qry.fieldbyname('dtl_id').asstring;
        if qry.fieldbyname('bod_type_id').asinteger=43 then r:=qry.fieldbyname('bod_id').asstring;
        mamt:=qry.fieldbyname('Camot1').asfloat;  //cnot_amot4
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
    f5:= dxDBGrid1.ColumnByFieldName('Camot1').Index;  //cnot_amot4
    f6:= dxDBGrid1.ColumnByFieldName('bod_type_id').Index;
    f7:= dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if ((dxDBGrid1.SelectedNodes[i].values[f6]=43) or (dxDBGrid1.SelectedNodes[i].values[f3]=True)) and (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then
        begin
            if mi=0 then
            begin
                agentid:=dxDBGrid1.SelectedNodes[i].values[l];
                srcid:=dxDBGrid1.SelectedNodes[i].values[m];
                dstid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if agentid<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同业务负责人的单据');
                if srcid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
                if dstid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
            end;
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
        	if dxDBGrid1.SelectedNodes[i].values[f6]=42 then t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
        	if dxDBGrid1.SelectedNodes[i].values[f6]=43 then r:= r +','+ dxDBGrid1.SelectedNodes[i].Strings[f7];  // 记录 bod_id 字符串
//            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('无可生成两票其他支出核销单记录(未完成返入核销或已完成付款核销)');
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
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (q.amot*b.qty>0 and round(q.amot*b.qty,2)>isnull(b.ckd_amot3,0) or q.amot*b.qty<0 and round(q.amot*b.qty,2)<isnull(b.ckd_amot3,0))';
edit1.text:=commandtext;        
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种尚未完成返入核销，'+#13#10+'不可生成两票其他支出核销单'+#13+#10+'----------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+':['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
            abort;
        end;
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
            s:='下列单据品种无已启用的两票销售促销规则，'+ #13#10+'不可生成两票其他支出核销单'+#13+#10+'-----------------------------------------------------';
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
        commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (b.price1<>isnull(o.price2,0) or b.price2<>isnull(o.price1,0))';
        open;
        if recordcount>0 then
        begin
            s:='下列单据品种销售单价或结算单价不符合规则，'+ #13#10+'不可生成两票其他支出核销单'+#13+#10+'-----------------------------------------------------';
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
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
        commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
        open;
        if recordcount>0 then
        begin
            s:='已有下列尚未完成审核的两票其他支出核销单'+ #13#10+'请先将其审核完成或取消后，再生成新单'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'两票其他支出核销单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
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
        if active=True then close;
        commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,b.med_id,bod_cd1=c.bod_cd';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill c';
        commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+r+') and b.med_id=c.bod_id';
        open;
        if recordcount>0 then
        begin
            s:='已有下列尚未完成审核的两票其他支出核销单'+ #13#10+'请先将其审核完成或取消后，再生成新单'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'两票其他支出核销单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):  两票其他支出记账单:'+fieldbyname('bod_cd1').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
            abort;
        end;
    end;
end;
s:=s+ #13#10+'------------------------------------------------';
s:=#13#10+s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

//if MessageBox(0,Pchar('确定由下列单据品种生成两票其他支出核销单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('由下列单据品种生成两票其他支出核销单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
{
右击生成两票其他支出核销单时，第一次生成核销单据，如未点确认，针对该行再右击生成核销单，系统可再次生成核销单；
即同一行单据，可同时成成两个核销单据，请帮忙设置限制，不允许同时生成两次核销单据
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
            s:='已有下列尚未完成审核的两票其他支出核销单'+ #13#10+'请先将其审核完成或取消后，再生成新单'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'两票其他支出核销单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
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
            s:='已有下列尚未完成审核的两票其他支出核销单'+ #13#10+'请先将其审核完成或取消后，再生成新单'+#13+#10+'-------------------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+'两票其他支出核销单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):  两票其他支出记账单:'+fieldbyname('bod_cd1').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
            abort;
        end;
    end;
end;
mcd:= formatfloat('00000000',getbillid(compid,49));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;
    commandtext:='declare @id integer';
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
	commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot) select 0,0,0,0,0 where 1=2';
    if t<>'' then
    begin
	    if active=true then close;
//        commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' union all select '+inttostr(mi)+',a.bod_type_id,b.dtl_id,(round((isnull(o.amot,0)+isnull(o.fee,0))*b.qty,2)-isnull(b.ckd_amot4,0)),(round((isnull(o.amot,0)+isnull(o.fee,0))*b.qty,2)-isnull(b.ckd_amot4,0))';
        commandtext:=commandtext+' from tb_bill a left join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+')'; // order by a.bod_id,b.dtl_id';
    end;
    if r<>'' then
    begin
	    if active=true then close;
//        commandtext:='insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' union all select '+inttostr(mi)+',bod_type_id,bod_id,bod_amot-isnull(ckd_amot,0),bod_amot-isnull(ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill where bod_type_id=43 and bod_id in ('+r+')';
edit1.text:=commandtext;
	end;
	execute;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号两票其他支出核销单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport31.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport31.qryAfterPost(DataSet: TDataSet);
begin
//if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_bill','bod_id','');
end;

procedure Tsetreport31.N10Click(Sender: TObject);
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
    s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
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
        s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单 '+ dxDBGrid1.SelectedNodes[i].Strings[f2];
        s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
        mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
        if s1='' then s1:=dxDBGrid1.SelectedNodes[i].Strings[f5] else s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f5];  // 记录 bod_id 字符串
        s3:=s3+' update tb_bill set ckd_amot3='+floattostr(dxDBGrid1.SelectedNodes[i].values[f3])+' where bod_id='+dxDBGrid1.SelectedNodes[i].Strings[f5];
//        if s1='' then s1:=dxDBGrid1.SelectedNodes[i].Strings[f7] else s1:= s1 +','+ dxDBGrid1.SelectedNodes[i].Strings[f7];  // 记录 bod_id 字符串
//        s3:=s3+' update tb_bill set ckd_amot3='+floattostr(dxDBGrid1.SelectedNodes[i].values[f5])+' where bod_id='+dxDBGrid1.SelectedNodes[i].Strings[f7];
        mi := mi+1;
    end;
end;
if mi=0 then raise Exception.Create('无可完成合规资料记录');
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);
if messagedlg('下列单据完成合规资料:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

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
//qry.locate('bod_id',bodid,[]);
setprogress(0);
//s:='所选单据已成功完成合规资料';
s:='已成功完成合规资料,可刷新查看结果';
MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;

end.
