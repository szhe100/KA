unit Unit102;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib; //, Math;

type
  Tsetreport24 = class(TForm)
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
    dxDBGrid1sqty: TdxDBGridColumn;
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
    Edit1: TEdit;
    qrydist1: TStringField;
    qrydist2: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxPickEdit1: TdxPickEdit;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
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
    dxDBGrid1bod_desc: TdxDBGridColumn;
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
    dxDBGrid1ckd_amot1: TdxDBGridColumn;
    dxDBGrid1cnot_amot1: TdxDBGridColumn;
    qrycredit_day: TIntegerField;
    dxDBGrid1credit_day: TdxDBGridColumn;
    qryreccd: TStringField;
    qryrecdt: TDateTimeField;
    dxDBGrid1recdt: TdxDBGridColumn;
    dxDBGrid1reccd: TdxDBGridColumn;
    qryCfinished: TBooleanField;
    dxDBGrid1Cfinished: TdxDBGridCheckColumn;
    busiframerate: TBCDField;
    qryrprice: TBCDField;
    qryrprice1: TBCDField;
    qryrprice2: TBCDField;
    qryramot: TBCDField;
    dxDBGrid1tax_rate: TdxDBGridColumn;
    dxDBGrid1rprice: TdxDBGridColumn;
    dxDBGrid1rprice1: TdxDBGridColumn;
    dxDBGrid1rprice2: TdxDBGridColumn;
    dxDBGrid1ramot: TdxDBGridColumn;
    qryCamot3: TBCDField;
    dxDBGrid1Camot3: TdxDBGridColumn;
    qryckd_amot2: TBCDField;
    qryckd_amot3: TBCDField;
    dxDBGrid1ckd_amot3: TdxDBGridColumn;
    qrycnot_amot3: TBCDField;
    dxDBGrid1cnot_amot3: TdxDBGridColumn;
    qryrecdt1: TDateTimeField;
    dxDBGrid1recdt1: TdxDBGridColumn;
    qryCfinished1: TBooleanField;
    dxDBGrid1Cfinished1: TdxDBGridCheckColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    qrysqty: TBCDField;
    qrycarrydays: TIntegerField;
    qryCexceeddays: TIntegerField;
    dxDBGrid1Cexceeddays: TdxDBGridColumn;
    Edit2: TEdit;
    Label11: TLabel;
    qryCqty: TBCDField;
    dxDBGrid1Cqty: TdxDBGridColumn;
    qryCqty1: TBCDField;
    dxDBGrid1Cqty1: TdxDBGridColumn;
    qryCqty2: TBCDField;
    dxDBGrid1Cqty2: TdxDBGridColumn;
    qryCqty3: TBCDField;
    qryCqty4: TBCDField;
    dxDBGrid1Cqty3: TdxDBGridColumn;
    qryCamot: TBCDField;
    dxDBGrid1Camot: TdxDBGridColumn;
    dxDBGrid1Cqty4: TdxDBGridColumn;
    dxDBGrid1amt9: TdxDBGridColumn;
    qryCamot4: TBCDField;
    qryCamot5: TBCDField;
    qryamt7: TBCDField;
    qryamt8: TBCDField;
    dxDBGrid1amt8: TdxDBGridColumn;
    qryCdif: TBCDField;
    qryamt9: TBCDField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport24: Tsetreport24;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport24.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
if fmateid>0 then fmateid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport24.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport24.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport24.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport24.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport24.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport24.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if (trim(dxbuttonedit1.text)='') and (trim(dxbuttonedit2.text)='') and (trim(dxbuttonedit4.text)='') and (trim(dxbuttonedit5.text)='') then
begin
	if (dxdateedit2.date-dxdateedit1.date>365) then raise Exception.Create('无查询条件时日期范围不可超过365天');
//	if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
end;
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
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,j.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,mate_name2='''',mate_name3='''',mate_name4='''',mate_name5='''',';
    commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),carrydays=datediff(day,a.carry_dt,getdate()),a.creat_dt,';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (p.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' recdt=dbo.fn_getexprecdt(b.dtl_id),reccd=dbo.fn_getexpreccd(b.dtl_id),';
    commandtext:=commandtext+' b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,a.busi_type,price=cast(m.price2 as decimal(15,6)),b.discount,'; //b.qty,
    commandtext:=commandtext+' b.qty,sqty=cast(case when a.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),';
//    commandtext:=commandtext+' qty=case when a.busi_type=3 then -1 else 1 end*b.qty,sqty=cast(case when a.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),';
    commandtext:=commandtext+' recdt1=dbo.fn_getimprecdt(b.dtl_id),';
//    commandtext:=commandtext+' b.price,b.price1,b.price2,amot=cast(m.price2*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' b.price,price1=cast(case when a.busi_type=3 then b.price else b.price1 end as decimal(15,4)),price2=case when a.busi_type=3 then 0 else 1 end*b.price2,';
    commandtext:=commandtext+' amot=cast(m.price2*b.qty as decimal(15,2)),';
//    commandtext:=commandtext+' cqty=cast(case when a.busi_type=3 or isnull(q.amot,0)=0 then 0 else case when b.ckd_amot3/q.amot>b.qty then b.qty else b.ckd_amot3/q.amot end end as decimal(10,0)),';
    commandtext:=commandtext+' cqty=cast(case when a.busi_type=3 or isnull(q.amot,0)=0 then 0 else case when b.qty>=0 and b.ckd_amot3/q.amot>b.qty or b.qty<0 and b.ckd_amot3/q.amot<b.qty then b.qty else round(b.ckd_amot3/q.amot,0) end end as decimal(10,0)),';
                             //cqty 为厂家返入数量
    commandtext:=commandtext+' cost=cast(case when a.busi_type=3 then 0 else 1 end*b.cost*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' profit=cast(case when a.busi_type=3 then -1 else 1 end*(b.amot-b.cost*b.qty) as decimal(15,2)),';
    commandtext:=commandtext+' prate=case b.amot when 0 then 0 else case when a.busi_type=3 then -1 else 1 end*(b.amot-b.cost*b.qty)/b.amot*100 end,';
    commandtext:=commandtext+' b.bat_cd,b.bod_cd1,q.tax_rate,rprice=q.price,rprice1=q.price1,rprice2=q.price2,ramot=q.amot,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' ,amt7=cast(case when busi_type=3 or b.price1=0 then 0 else';
    commandtext:=commandtext+' 		q.amot*(b.qty-isnull(round(case when b.qty>0 and b.ckd_amot1/b.price1>b.qty or b.qty<0 and b.ckd_amot1/b.price1<b.qty then b.qty else b.ckd_amot1/b.price1 end,2),0))';
    commandtext:=commandtext+' 	end as decimal(15,2))';
    commandtext:=commandtext+' ,amt8=cast(case when busi_type=3 or b.price1=0 then 0 else';
	commandtext:=commandtext+' isnull(q.amot*case when b.qty>0 and b.ckd_amot1/b.price1>b.qty or b.qty<0 and b.ckd_amot1/b.price1<b.qty then b.qty else b.ckd_amot1/b.price1 end,0)';
    commandtext:=commandtext+' 	end as decimal(15,2))';
	commandtext:=commandtext+' ,amt9= cast(case when a.busi_type=3 or b.price1=0 then 0 else';
    commandtext:=commandtext+' 		q.amot* (case when b.qty>0 and b.ckd_amot1/b.price1>b.qty or b.qty<0 and b.ckd_amot1/b.price1<b.qty then b.qty else isnull(b.ckd_amot1/b.price1,0) end';
    commandtext:=commandtext+' 	      -case when isnull(q.amot,0)=0 then 0 else case when b.qty>=0 and b.ckd_amot3/q.amot>b.qty or b.qty<0 and b.ckd_amot3/q.amot<b.qty then b.qty else isnull(b.ckd_amot3/q.amot,0) end end)';
    commandtext:=commandtext+' 	end as decimal(15,2))'; //  --已收款数量

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
//    commandtext:=commandtext+' left join tb_busiframe4 o on a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
    commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join (select * from tb_busiframe6 where valid=1) q on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
    commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
    if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot3=q.amot*b.qty';
    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and (b.ckd_amot3 is null or b.ckd_amot3<>q.amot*b.qty)';
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot1=b.price1*b.qty';
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and (b.ckd_amot1 is null or b.ckd_amot1<>b.price1*b.qty)';
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
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
//        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
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

procedure Tsetreport24.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport24.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport24.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport24.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport24.FormActivate(Sender: TObject);
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
if (fmateid>0) or (fmateid1>0) then
begin
	dxButtonEdit1.Tag:=fmateid;
    dxButtonEdit1.Text:=fmatename;
	dxButtonEdit5.Tag:=fmateid1;
    dxButtonEdit5.Text:=fmatename1;
    SpeedButton5Click(nil);
end;
end;

procedure Tsetreport24.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport24.N3Click(Sender: TObject);
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

procedure Tsetreport24.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport24.N2Click(Sender: TObject);
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
setprogress(0);
end;

procedure Tsetreport24.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport24.dxDBGrid1CustomDrawCell(Sender: TObject;
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
if (AColumn = dxDBGrid1Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
//        AColor := $00FDFCC1;
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调价') then
    begin
        AFont.Color := clBlue; //clyellow;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot1) or (AColumn = dxDBGrid1Cfinished) then
begin
    if (ANode.Values[dxDBGrid1Camot1.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot1.Index] =ANode.Values[dxDBGrid1Camot1.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot3) or (AColumn = dxDBGrid1Cfinished1) then
begin
    if (ANode.Values[dxDBGrid1Camot3.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot3.Index] =ANode.Values[dxDBGrid1Camot3.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
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

procedure Tsetreport24.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport24.qryCalcFields(DataSet: TDataSet);
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
    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('sqty').asfloat;
    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('cfinished').asboolean:=(fieldbyname('cnot_amot1').asfloat=0);
    if fieldbyname('busi_type').asinteger=3 then fieldbyname('camot3').asfloat:=fieldbyname('camot1').asfloat
    	else fieldbyname('camot3').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('sqty').asfloat;
    fieldbyname('cnot_amot3').asfloat:=fieldbyname('camot3').asfloat-fieldbyname('ckd_amot3').asfloat;
    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat<>0) and (fieldbyname('cnot_amot3').asfloat=0);
    if (fieldbyname('credit_day').asinteger>0) and (fieldbyname('carrydays').asinteger>fieldbyname('credit_day').asinteger)
    	then fieldbyname('Cexceeddays').asinteger := fieldbyname('carrydays').asinteger-fieldbyname('credit_day').asinteger
        else fieldbyname('Cexceeddays').asinteger := 0;
    if (fieldbyname('price1').asfloat=0) or (fieldbyname('busi_type').asinteger=3) then
    begin
    	fieldbyname('cqty1').asfloat:=0;
    	fieldbyname('cqty2').asfloat:=0;
    end
    else
    begin
    	fieldbyname('cqty1').asfloat:=round(fieldbyname('ckd_amot1').asfloat/fieldbyname('price1').asfloat+0.01); //已收款数量
//        if fieldbyname('cqty1').asfloat>fieldbyname('sqty').asfloat then fieldbyname('cqty1').asfloat:=fieldbyname('sqty').asfloat;
        if (fieldbyname('sqty').asfloat>0) and (fieldbyname('cqty1').asfloat>fieldbyname('sqty').asfloat)
        	or (fieldbyname('sqty').asfloat<0) and (fieldbyname('cqty1').asfloat<fieldbyname('sqty').asfloat)
        	then fieldbyname('cqty1').asfloat:=fieldbyname('sqty').asfloat;
    	fieldbyname('cqty2').asfloat:= fieldbyname('sqty').asfloat-fieldbyname('cqty1').asfloat; //未收款数量
    end;
	fieldbyname('cqty3').asfloat:=fieldbyname('sqty').asfloat-fieldbyname('cqty').asfloat;  //厂家未返数量
	fieldbyname('camot').asfloat:=round(fieldbyname('cqty2').asfloat*fieldbyname('ramot').asfloat*100+0.01)/100; //其中:未收款数量的未返入款=未收款数量*应收返入单价
	fieldbyname('cqty4').asfloat:=fieldbyname('cqty1').asfloat-fieldbyname('cqty').asfloat;  //未返数量=已收款数量-厂家返入数量
	fieldbyname('camot4').asfloat:=round(fieldbyname('cqty1').asfloat*fieldbyname('ramot').asfloat*100+0.01)/100; //应返金额=已收款数量*应收返入单价
	fieldbyname('camot5').asfloat:=round(fieldbyname('cqty4').asfloat*fieldbyname('ramot').asfloat*100+0.01)/100; //未返金额=未返数量*应收返入单价
{
    if (fieldbyname('busi_type').asinteger=3) or (fieldbyname('ramot').asfloat=0)
    	then fieldbyname('cqty').asinteger:=0
        else fieldbyname('cqty').asinteger:=round(fieldbyname('ckd_amot3').asfloat/fieldbyname('ramot').asfloat);
    if fieldbyname('cqty').asinteger>fieldbyname('qty').asinteger then fieldbyname('cqty').asinteger:=fieldbyname('qty').asinteger;
}    
	fieldbyname('cdif').asfloat:=fieldbyname('camot4').asfloat-fieldbyname('amt8').asfloat;
//	fieldbyname('cdif').asfloat:=fieldbyname('cqty1').asfloat*fieldbyname('ramot').asfloat-fieldbyname('amt8').asfloat; //应返金额=已收款数量*应收返入单价
end;
end;

procedure Tsetreport24.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tsetreport24.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tsetreport24.N7Click(Sender: TObject);
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
    commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where a.busi_type in (1,2) and b.dtl_id in ('+t+') and (q.amot=0 or q.amot is null)';
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
    commandtext:='select top 3 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where a.busi_type in (1,2) and b.dtl_id in ('+t+') and (q.amot=0 or q.amot is null or b.price1<>isnull(q.price2,0))';
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
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=48 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的返入收款单,请先将其审核完成或取消后，再生成新返入收款单'+#13+#10+'-------------------------------------------------------------------------------------------';
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

//if MessageBox(0,Pchar('确定由下列单据品种生成返入收款单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('由下列单据品种生成返入收款单:'+ #13#10+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
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
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(round(case when a.busi_type=3 then b.price*b.qty else q.amot*b.qty end,2)-isnull(b.ckd_amot3,0)),(round(case when a.busi_type=3 then b.price*b.qty else q.amot*b.qty end,2)-isnull(b.ckd_amot3,0))';
    commandtext:=commandtext+' from tb_bill a left join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(a.agent_id,a.src_id,a.dst_id,b.med_id,a.carry_dt)'; // on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
//    commandtext:=commandtext+' left join (select * from tb_busiframe6 where valid=1) q on a.agent_id=q.agent_id and a.dst_id=q.mate_id and b.med_id=q.med_id';
    commandtext:=commandtext+' where b.dtl_id in ('+t+') order by a.bod_id,b.dtl_id';
edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号返入收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport24.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
