unit Unit104a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib;

type
  Tsetreport27 = class(TForm)
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
    qryqty: TBCDField;
    qrybat_cd: TStringField;
    qrybroker: TStringField;
    qrycreater: TStringField;
    qrydtl_id: TAutoIncField;
    qrybod_cd: TStringField;
    qryagent: TStringField;
    Shape3: TShape;
    Label6: TLabel;
    dxEdit1: TdxEdit;
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
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    ImageList: TImageList;
    Label13: TLabel;
    Timer1: TTimer;
    qrydist1: TStringField;
    qrydist2: TStringField;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    dxPickEdit1: TdxPickEdit;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    dxDBGrid1Cbodtype: TdxDBGridColumn;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    N7: TMenuItem;
    N8: TMenuItem;
    qrysrc_id: TIntegerField;
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
    qrybod_id: TIntegerField;
    dxDBGrid1dist2: TdxDBGridColumn;
    Edit1: TEdit;
    qrycarry_dt1: TDateTimeField;
    dxDBGrid1carry_dt1: TdxDBGridColumn;
    qrybod_cd1: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    qryacnt_bank: TStringField;
    qrybank_account: TStringField;
    qryreceiver1: TStringField;
    qryprice: TBCDField;
    qryamot: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1receiver1: TdxDBGridColumn;
    dxDBGrid1acnt_bank: TdxDBGridColumn;
    dxDBGrid1bank_account: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    Shape5: TShape;
    qrycate_id1: TIntegerField;
    qrycplatform: TStringField;
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
  setreport27: Tsetreport27;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport27.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
if fmateid>0 then fmateid:=0;
if fagentid>0 then fagentid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport27.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport27.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport27.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport27.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport27.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport27.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,bod_cd1=b.bod_cd,a.cate_id,a.src_id,a.dst_id,b.med_code,b.med_name,b.specifi,b.pdt_place,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' b.med_unit,a.bod_desc,j.mate_name,a.agent_id,agent=p.mate_name,p.acnt_bank,p.bank_account,receiver1=p.receiver,'; //dbo.fn_staff_name(a.receipt_by),';
//    commandtext:=commandtext+' level1='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
//    commandtext:=commandtext+' level2='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
//    commandtext:=commandtext+' level3='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
//    commandtext:=commandtext+' broker='''','; //dbo.fn_mate_name(l.agent_id),';
//    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,b.carry_dt)),';
	commandtext:=commandtext+' cate_id1=dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' broker='''',leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,b.carry_dt)),';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,'; //o.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,carry_dt1=i.carry_dt,b.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (p.district,1),dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' a.busi_type,b.qty,b.price,b.amot,';  //price=cast(m.price2 as decimal(15,6)),
    commandtext:=commandtext+' b.bat_cd,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join (select c.carry_dt,c.bod_cd,b.bod_id,b.dtl_id,d.med_id,b.bat_cd,b.price,b.rela_value,d.qty,b.amot,';
    commandtext:=commandtext+' m.med_name,m.med_code,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),b.bod_cd1';
    commandtext:=commandtext+' from tb_bill_dtl b';
    commandtext:=commandtext+' left join tb_bill_dtl d on b.med_id=d.dtl_id';
    commandtext:=commandtext+' left join tb_bill c on c.bod_id=d.bod_id';
    commandtext:=commandtext+' left join tb_medicine m on m.med_id=d.med_id';
    commandtext:=commandtext+' where b.type_id=42';
    commandtext:=commandtext+' union all select c.carry_dt,c.bod_cd,b.bod_id,b.dtl_id,c.med_id,bat_cd='''',b.price,b.rela_value,b.qty,b.amot,';
    commandtext:=commandtext+' med_name=''其他支出记账'',med_code='''',specifi='''',pdt_place='''',med_unit='''',b.bod_cd1';
    commandtext:=commandtext+' from tb_bill_dtl b';
	commandtext:=commandtext+' left join tb_bill c on b.med_id=c.bod_id';
    commandtext:=commandtext+' where b.type_id=43 ) b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
    commandtext:=commandtext+' left join (select b.med_id,a.carry_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=50 and a.bod_status_id=1 and a.bod_id=b.bod_id) i on a.bod_id =i.med_id';
    commandtext:=commandtext+' left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,b.carry_dt)';
    commandtext:=commandtext+' where a.bod_type_id=49 and a.bod_status_id=1'; //两票其他支出核销付款
//    commandtext:=commandtext+'  and a.cate_id=2'; //分销
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
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+' union all select b.dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,bod_cd1=b.bod_cd,a.cate_id,a.src_id,a.dst_id,b.med_code,b.med_name,b.specifi,b.pdt_place,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' b.med_unit,a.bod_desc,j.mate_name,a.agent_id,agent=p.mate_name,p.acnt_bank,p.bank_account,receiver1=p.receiver,'; //dbo.fn_staff_name(a.receipt_by),';
//    commandtext:=commandtext+' level1='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
//    commandtext:=commandtext+' level2='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
//    commandtext:=commandtext+' level3='''','; //dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
//    commandtext:=commandtext+' broker='''','; //dbo.fn_mate_name(l.agent_id),';
//    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
	commandtext:=commandtext+' cate_id1=0,'; //dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' broker='''',leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,b.carry_dt)),';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,'; //o.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,carry_dt1=i.carry_dt,b.carry_dt,a.creat_dt,dist1=dbo.fn_getdistrictlevel (p.district,1),dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' a.busi_type,b.qty,b.price,b.amot,';  //price=cast(m.price2 as decimal(15,6)),
    commandtext:=commandtext+' b.bat_cd,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join (select c.carry_dt,c.bod_cd,b.bod_id,b.dtl_id,c.med_id,c.bat_cd,c.price,c.rela_value,c.qty,b.amot,';
    commandtext:=commandtext+' c.med_name,c.med_code,c.specifi,c.pdt_place,c.med_unit,c.bod_cd1';
    commandtext:=commandtext+' from tb_bill_dtl b';
    commandtext:=commandtext+' 	left join vi_bodstadtlmed c on b.bod_id=c.bod_id and (b.type_id=36 and b.med_id=c.bod_id1 or b.type_id=1 and b.med_id=c.rec_id)';
    commandtext:=commandtext+'  ) b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
    commandtext:=commandtext+' left join (select b.med_id,a.carry_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=30 and a.bod_status_id=1 and a.bod_id=b.bod_id) i on a.bod_id =i.med_id';
    commandtext:=commandtext+' left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,b.carry_dt)';
    commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id=1'; //其他支出核销财务审核
//    commandtext:=commandtext+'  and a.cate_id=2'; //分销
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and b.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and b.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
//    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
	commandtext:=commandtext+' union all ';
    commandtext:=commandtext+' select b.dtl_id,a.bod_id,a.bod_cd,a.bod_type_id,bod_cd1=b.bod_cd,a.cate_id,a.src_id,a.dst_id,b.med_code,b.med_name,b.specifi,b.pdt_place,cdistrict=dbo.fn_getdistrict(c.district), b.med_unit,a.bod_desc,c.mate_name,';
    commandtext:=commandtext+'  b.agent_id,agent=d.zname,acnt_bank=d.bank_name,bank_account=d.depo_acco,receiver1=d.receiver,'; //dbo.fn_staff_name(a.receipt_by),';
//    commandtext:=commandtext+'  level1='''', level2='''', level3='''',broker='''', leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
	commandtext:=commandtext+' cate_id1=0,'; //dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),broker='''',leader=p.zname,';
   	commandtext:=commandtext+'  a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5, mate_name1=e.mate_name,carry_dt1=j.carry_dt,b.carry_dt,a.creat_dt,';
    commandtext:=commandtext+'  dist1=dbo.fn_getdistrictlevel (c.district,1),dist2=dbo.fn_getdistrictlevel (c.district,2),';
    commandtext:=commandtext+'  a.busi_type,b.qty,b.price,b.amot,b.bat_cd,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+'	inner join (select bod_id1=b.bod_id,c.bod_id,b.dtl_id,h.rec_id,d.med_id,d.bat_cd,d.qty,b.price,b.amot,c.carry_dt,c.bod_cd,c.src_id,c.dst_id,';
    commandtext:=commandtext+'      agent_id=case when h.sta_id is null then d.sta_id else h.sta_id end,'; //agent=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),'; //mate_name=dbo.fn_mate_name(c.dst_id),';
    commandtext:=commandtext+'		med_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id)';
    commandtext:=commandtext+'		from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_medicine m';
    commandtext:=commandtext+'		where b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and d.med_id=m.med_id';
    commandtext:=commandtext+'	 union all';
    commandtext:=commandtext+'	select bod_id1=b.bod_id,c.bod_id,dtl_id=0,rec_id=0,med_id=0,bat_cd='''',qty=0,b.price,b.amot,c.carry_dt,c.bod_cd,c.src_id,c.dst_id,agent_id=c.broker_id,'; //agent=dbo.fn_staff_name(c.broker_id),'; //mate_name=dbo.fn_mate_name(c.dst_id),';
    commandtext:=commandtext+'  	m.med_code,med_name=case when m.med_name is null then ''应付记账'' else m.med_name end,m.chm_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=''''';
    commandtext:=commandtext+'		from tb_bill_dtl b inner join tb_bill c on b.sta_id=c.bod_id left join tb_medicine m on c.med_id=m.med_id) b on a.bod_id=b.bod_id1';
    commandtext:=commandtext+'  left join tb_staff d on b.agent_id =d.sta_id';
    commandtext:=commandtext+'  left join tb_busimate c on b.dst_id =c.mate_id';
    commandtext:=commandtext+'  left join tb_busimate e on b.src_id =e.mate_id';
	commandtext:=commandtext+'  left join (select a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id';

	commandtext:=commandtext+'  left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(c.district,b.med_id,b.dst_id,b.carry_dt)'; //c.district,b.med_id,a.dst_id,a.carry_dt)';
    commandtext:=commandtext+'  left join tb_staff p on k.sta_id=p.sta_id';

    commandtext:=commandtext+'  where a.bod_type_id=17 and a.bod_status_id=1';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and b.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and b.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
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

procedure Tsetreport27.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport27.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport27.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport27.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport27.FormActivate(Sender: TObject);
begin
{
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
}
{
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
}
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

procedure Tsetreport27.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport27.N3Click(Sender: TObject);
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

procedure Tsetreport27.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
//dxDBGrid1src_id.Visible:=False;
//dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport27.N2Click(Sender: TObject);
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
{
dxDBGrid1src_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
}
setprogress(0);
end;

procedure Tsetreport27.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
//dxDBGrid1Camot3.Visible:=False;
//dxDBGrid1ckd_amot3.Visible:=False;
{
dxDBGrid1src_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1bod_type_id.Visible:=False;
}
end;

procedure Tsetreport27.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cbodtype) then
begin
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '两票分销') then
    begin
        AColor := $00EDD0EE
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Cbodtype.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
{
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '记账') then
    begin
        AColor := $00E8C1DE;
//        AFont.Color := clwhite;
    end;
}
end;
end;

procedure Tsetreport27.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport27.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
{
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
}
    case fieldbyname('bod_type_id').asinteger of
        17: fieldbyname('cbodtype').asstring:='商业';
        37: fieldbyname('cbodtype').asstring:='分销';
        49: fieldbyname('cbodtype').asstring:='两票分销';
{
        17: fieldbyname('cbodtype').asstring:='商业';
        37: fieldbyname('cbodtype').asstring:='分销';
        49: fieldbyname('cbodtype').asstring:='两票分销';
}
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    if fieldbyname('bod_type_id').asinteger=43 then fieldbyname('ccate').asstring:='记账'
    else
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
	case fieldbyname('cate_id1').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
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
end;
end;

procedure Tsetreport27.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tsetreport27.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tsetreport27.N7Click(Sender: TObject);
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
    if ((qry.fieldbyname('bod_type_id').asinteger=43) or (qry.fieldbyname('Cfinished1').asboolean=True)) and (qry.fieldbyname('cnot_amot4').asfloat<>0) then
//    if (qry.fieldbyname('Cfinished1').asboolean=True) and (qry.fieldbyname('cnot_amot4').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('cnot_amot4').asfloat);
        if qry.fieldbyname('bod_type_id').asinteger=42 then t:=qry.fieldbyname('dtl_id').asstring;
        if qry.fieldbyname('bod_type_id').asinteger=43 then r:=qry.fieldbyname('bod_id').asstring;
        mamt:=qry.fieldbyname('cnot_amot4').asfloat;
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
    f5:= dxDBGrid1.ColumnByFieldName('cnot_amot4').Index;
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
        commandtext:='select top 5 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)';
    //    commandtext:=commandtext+' where b.dtl_id in ('+t+') and (o.amot*b.qty>isnull(b.ckd_amot3,0))';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+') and (o.amot*b.qty>0 and o.amot*b.qty>isnull(b.ckd_amot3,0) or o.amot*b.qty<0 and o.amot*b.qty<isnull(b.ckd_amot3,0))';
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
        commandtext:='select top 5 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
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
        commandtext:='select top 5 a.bod_cd,d.med_code,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id)';
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
        commandtext:='select top 5 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
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
        commandtext:='select top 5 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,b.med_id,bod_cd1=c.bod_cd';
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
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

if MessageBox(0,Pchar('确定由下列单据品种生成两票其他支出核销单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
{
右击生成两票其他支出核销单时，第一次生成核销单据，如未点确认，针对该行再右击生成核销单，系统可再次生成核销单；
即同一行单据，可同时成成两个核销单据，请帮忙设置限制，不允许同时生成两次核销单据
}
with dm.pubqry do
begin
    if t<>'' then
    begin
        if active=True then close;
        commandtext:='select top 5 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
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
        commandtext:='select top 5 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,b.med_id,bod_cd1=c.bod_cd';
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

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',49,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    if t<>'' then commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))'
    	else if r<>'' then commandtext:=commandtext+'  from tb_bill where bod_id in ('+r+')';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    if t<>'' then
    begin
	    if active=true then close;
        commandtext:='insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' select '+inttostr(mi)+',a.bod_type_id,b.dtl_id,(round((isnull(o.amot,0)+isnull(o.fee,0))*b.qty,2)-isnull(b.ckd_amot4,0)),(round((isnull(o.amot,0)+isnull(o.fee,0))*b.qty,2)-isnull(b.ckd_amot4,0))';
        commandtext:=commandtext+' from tb_bill a left join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
        commandtext:=commandtext+' where a.bod_type_id=42 and b.dtl_id in ('+t+')'; // order by a.bod_id,b.dtl_id';
	    execute;
    end;
    if r<>'' then
    begin
	    if active=true then close;
        commandtext:='insert into tb_bill_dtl (bod_id,type_id,med_id,price,amot)';
        commandtext:=commandtext+' select '+inttostr(mi)+',bod_type_id,bod_id,bod_amot-isnull(ckd_amot,0),bod_amot-isnull(ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill where bod_type_id=43 and bod_id in ('+r+')';
edit1.text:=commandtext;
        execute;
	end;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号两票其他支出核销单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport27.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
