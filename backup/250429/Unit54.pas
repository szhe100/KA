unit Unit54;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxdbtrel, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, Menus, dxDBTLCl, DateUtils, dxGrClms, mycds;

type
  Tsetreport07 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
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
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
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
    qryagent: TStringField;
    qrybroker: TStringField;
    qrycustomer: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrydrawrate: TBCDField;
    qrydrawamot: TBCDField;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1customer: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1drawrate: TdxDBGridMaskColumn;
    dxDBGrid1drawamot: TdxDBGridMaskColumn;
    SpeedButton1: TSpeedButton;
    qrydistrict: TStringField;
    dxDBGrid1district: TdxDBGridColumn;
    dxButtonEdit4: TdxButtonEdit;
    qrysta_id: TAutoIncField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrybod_id: TAutoIncField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrybusi_type: TStringField;
    qrybod_desc: TStringField;
    qrydtl_id: TAutoIncField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrycreater: TStringField;
    qryprice: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    qrycreat_dt: TDateTimeField;
    qrycheck_dt: TDateTimeField;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList: TImageList;
    RadioGroup1: TRadioGroup;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qryleader: TStringField;
    dxDBGrid1leader: TdxDBGridColumn;
    qrycost: TBCDField;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1Crate: TdxDBGridColumn;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ADOQuery1price2: TBCDField;
    qryprice2: TBCDField;
    dxDBGrid1qty: TdxDBGridColumn;
    Edit2: TEdit;
    dxDBGrid1price3: TdxDBGridColumn;
    qryprice3: TBCDField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    Label15: TLabel;
    Shape3: TShape;
    dxEdit1: TdxEdit;
    Label6: TLabel;
    qrytrusted: TBooleanField;
    dxDBGrid1trusted: TdxDBGridCheckColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    qryCrate: TBCDField;
    qryCrate1: TBCDField;
    qrycate_id1: TIntegerField;
    qrycplatform: TStringField;
    qryCbusitype: TStringField;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    dxDBGrid1ctype2: TdxDBGridColumn;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    dxEdit5: TdxEdit;
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure dxEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport07: Tsetreport07;
  qty: real;

implementation

uses datamodu, Unit16, Unit7, Unit27, Unit28, Unit16a;

{$R *.DFM}

procedure Tsetreport07.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
//with dm.district do
//    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport07.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport07.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport07.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tsetreport07.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport07.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport07.SpeedButton5Click(Sender: TObject);
var mi,y1: integer;
    ss: string;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
//    y2:=yearof(dxDateEdit2.Date);
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        commandtext:=commandtext+' union all select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        open;
        if recordcount<2 then raise Exception.Create('查询年度未授权');
    end;
end;
}
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 3 a.*,mate_name=dbo.fn_mate_name(a.mate_id),broker=dbo.fn_staff_name(a.sta_id),';
    commandtext:=commandtext+' c.med_code,c.med_name,c.specifi,c.pdt_place from tb_brokermed a,tb_medicine c,';
    commandtext:=commandtext+' (select rela_id,rate=sum(isnull(rate,0)) from tb_brokermedtl group by rela_id) b';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.valid=1 and a.med_id=c.med_id and a.rec_id=b.rela_id ';
    commandtext:=commandtext+'  and isnull(a.rate,0)<>b.rate';
//edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        ss:='下列客户品种业务员提成款与其成员提成款合计不符，请先设置正确'+ #13#10;
        ss:=ss+'--------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            ss := ss+ #13#10 +fieldbyname('broker').asstring+':'+fieldbyname('mate_name').asstring+' ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0,pchar(ss),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
    commandtext:='select sum(b.qty) from tb_bill a';
    commandtext:=commandtext+'      inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+'      inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
    commandtext:=commandtext+'      inner join tb_medicine c on b.med_id=c.med_id';
    commandtext:=commandtext+'      left join tb_brokermed d on b.med_id=d.med_id and b.lead_id=d.lead_id and a.dst_id=d.mate_id and d.valid=1 and isnull(d.stop_yn,0)=0';
    commandtext:=commandtext+'      left join tb_busimate e on a.dst_id=e.mate_id';
    commandtext:=commandtext+'  where a.bod_type_id=2 and a.bod_status_id=1';  //a.comp_id='+inttostr(compid)+' and 
    commandtext:=commandtext+'      and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    if trim(dxLookupTreeView1.text)<>'' then
    begin
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            else commandtext:=commandtext+' and exists (select 1 from tb_staff s where h.sta_id=s.sta_id and dbo.fn_treeischild(s.district,'+dm.district.fieldbyname('rec_id').asstring+')>0) ';
    end;
//edit2.text:=commandtext;
    try
        setprogress(1);
        open;
        if recordcount=0 then qty:=0 else qty:=fields[0].asfloat;
    finally
        setprogress(0);
    end;

end;
with qry do
begin
    if active then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select ordid=cast(ROW_NUMBER() OVER(ORDER BY dbo.fn_getdistrictbymate_id(a.dst_id),dbo.fn_mate_name(a.src_id),dbo.fn_staff_name(h.sta_id),dbo.fn_mate_name(a.dst_id),c.med_name,c.specifi,c.pdt_place,a.carry_dt) as int),';
    commandtext:=commandtext+' b.dtl_id,a.bod_id,a.bod_cd,a.bod_desc,a.creat_dt,a.check_dt,a.carry_dt,busi_type=dbo.fn_obj_desc(a.busi_type),creater=dbo.fn_staff_name(a.creat_by),';
//    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,a.bod_desc,a.creat_dt,a.check_dt,a.carry_dt,busi_type=dbo.fn_obj_desc(a.busi_type),creater=dbo.fn_staff_name(a.creat_by),';
	commandtext:=commandtext+' cate_id1=dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
    commandtext:=commandtext+' district=dbo.fn_getdistrict(e.district),'; //dbo.fn_getdistrictbymate_id(a.dst_id),';
    commandtext:=commandtext+' g.type_id2,agent=dbo.fn_mate_name(a.src_id),mate_name1=f.mate_name,customer=e.mate_name,';
    commandtext:=commandtext+' broker=dbo.fn_staff_name(case when isnull(h.sta_id,0)=0 then b.sta_id else h.sta_id end),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(k.sta_id),'; //dbo.fn_staff_name(dbo.fn_getleadid (b.sta_id,a.dst_id,b.med_id)),';
    commandtext:=commandtext+' a.src_id,a.dst_id,b.sta_id,b.med_id,c.med_code,c.med_name,c.specifi,c.pdt_place,med_unit=dbo.fn_obj_desc(c.unit_id),c.qtyperpack,b.qty,b.price,b.price2,b.price3,b.cost,';
//    commandtext:=commandtext+'   rate0=dbo.fn_getbidprice(a.dst_id,b.med_id,a.carry_dt),';

//    commandtext:=commandtext+'   drawrate=cast(case when g.valid=1 then 1 else 0 end*case when isnull(h.rate,0)=0 then b.rate else h.rate end as decimal(15,4)),';
//    commandtext:=commandtext+'   drawamot=cast(case when g.valid=1 then 1 else 0 end*case when isnull(h.rate,0)=0 then b.rate else h.rate end*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' drawrate=cast(case when isnull(h.rate,0)=0 then b.dtlrate else h.rate end as decimal(15,4)),drawamot=cast(case when isnull(h.rate,0)=0 then b.dtlrate else h.rate end*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' trusted=cast(case when exists (select 1 from tb_sysrule s where s.type_id=4 and s.mate_id=a.src_id and s.mate_id1=a.dst_id and s.valid_dt<=a.carry_dt) then 1 else 0 end as bit)';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
	commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+'      inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+'      inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
    commandtext:=commandtext+'      left join (select rec_id,type_id2 from tb_brokermed) g on b.rule_id=g.rec_id';
//    commandtext:=commandtext+'      left join tb_brokermedtl g on h.rule_id=g.mate_id';
    commandtext:=commandtext+'      inner join tb_medicine c on b.med_id=c.med_id';
    commandtext:=commandtext+'      left join tb_busimate e on a.dst_id=e.mate_id';
    commandtext:=commandtext+'      left join tb_busimate f on a.src_id=f.mate_id';
    commandtext:=commandtext+'      left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,b.med_id,a.dst_id,a.carry_dt)';
    commandtext:=commandtext+'  where a.bod_type_id=2 and a.bod_status_id=1'; // a.comp_id='+inttostr(compid)+' and
//    if RadioGroup2.ItemIndex=0 then commandtext:=commandtext+'  and a.bod_status_id in (0,1)';
//    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
//    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    commandtext:=commandtext+'      and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
//    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=b.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%'')';
    if trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+Trim(dxEdit1.text)+'''';
    if trim(dxLookupTreeView1.text)<>'' then
    begin
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            else commandtext:=commandtext+' and exists (select 1 from tb_staff s where h.sta_id=s.sta_id and dbo.fn_treeischild(s.district,'+dm.district.fieldbyname('rec_id').asstring+')>0) ';
    end;
//    commandtext:=commandtext+' and not exists (select 1 from tb_brokermed s,tb_brokermedtl t where h.rule_id=t.rec_id and t.rela_id=s.rec_id and (s.stop_yn=1 or s.valid=0))';
//    commandtext:=commandtext+' and not exists (select 1 from tb_brokermed s,tb_brokermedtl t where h.rule_id=t.rec_id and t.rela_id=s.rec_id and s.stop_yn=1 and a.carry_dt>=s.stop_dt)';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';    
//    commandtext:=commandtext+' order by dbo.fn_getdistrictbymate_id(a.dst_id),dbo.fn_mate_name(a.src_id),dbo.fn_staff_name(h.sta_id),dbo.fn_mate_name(a.dst_id),c.med_name,c.specifi,c.pdt_place,a.carry_dt';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport07.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport07.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport07.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tsetreport07.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport07.SpeedButton1Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
report01:=Treport01.create(Application);
with report01 do
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

procedure Tsetreport07.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
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
end;

procedure Tsetreport07.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport07.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('price2').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('drawrate').asfloat/fieldbyname('price2').asfloat;
//    if fieldbyname('cost').asfloat=0 then fieldbyname('crate').asfloat:=0
//        else fieldbyname('crate').asfloat:=100*fieldbyname('drawrate').asfloat/fieldbyname('cost').asfloat;
    if fieldbyname('price2').asfloat=0 then fieldbyname('crate1').asfloat:=0
        else fieldbyname('crate1').asfloat:=Round(10000*fieldbyname('drawrate').asfloat/fieldbyname('price2').asfloat)/100;
        //float转int有两个函数：Trunc 和 Round，其中Round有四舍五入的功能，Trunc则没有
	case fieldbyname('cate_id1').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
end;
end;

procedure Tsetreport07.N3Click(Sender: TObject);
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

procedure Tsetreport07.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport07.N2Click(Sender: TObject);
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

procedure Tsetreport07.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport07.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1qty' then
begin
    atext:=formatfloat('###,##0.##;; ',qty);
end;
end;

procedure Tsetreport07.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tsetreport07.dxEdit1Click(Sender: TObject);
begin
dxedit1.SelectAll;
end;

procedure Tsetreport07.N7Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+qry.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+qry.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+qry.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('本单客户所在区域与年月已结账，不可修改数据');
    if active then close;
    commandtext:='exec sp_setruleid '+qry.fieldbyname('bod_id').asstring;
    execute;
end;
//refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id',qry.fieldbyname('bod_id').asinteger)
SpeedButton5Click(nil);
end;

procedure Tsetreport07.dxEdit5Enter(Sender: TObject);
begin
with (Sender as TdxEdit) do
begin
    selectall;
    setfocus;
end;
end;

end.
