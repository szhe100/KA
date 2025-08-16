unit Unit91;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib, DateUtils;

type
  Tsetreport23 = class(TForm)
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
    dxDBGrid1dist2: TdxDBGridColumn;
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
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
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
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    RadioGroup1: TRadioGroup;
    qryorder_cd: TStringField;
    qryorder_dt: TDateTimeField;
    dxDBGrid1order_cd: TdxDBGridColumn;
    dxDBGrid1order_dt: TdxDBGridColumn;
    qryckd_amot1: TBCDField;
    qryckd_amot2: TBCDField;
    dxDBGrid1ckd_amot1: TdxDBGridColumn;
    dxDBGrid1ckd_amot2: TdxDBGridColumn;
    qrycnot_amot1: TBCDField;
    qrycnot_amot2: TBCDField;
    dxDBGrid1cnot_amot1: TdxDBGridColumn;
    dxDBGrid1cnot_amot2: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Label9: TLabel;
    qryinvocd: TStringField;
    qryinvodt: TDateTimeField;
    dxDBGrid1invocd: TdxDBGridColumn;
    dxDBGrid1invodt: TdxDBGridColumn;
    dxDBGrid1recdt: TdxDBGridColumn;
    dxDBGrid1reccd: TdxDBGridColumn;
    qryreccd: TStringField;
    qryrecdt: TDateTimeField;
    qrycredit_day: TIntegerField;
    dxDBGrid1credit_day: TdxDBGridColumn;
    qryCoverdue: TIntegerField;
    dxDBGrid1Coverdue: TdxDBGridColumn;
    qrymate_name4: TStringField;
    qrymate_name5: TStringField;
    qrybod_desc1: TStringField;
    qrybod_desc2: TStringField;
    dxDBGrid1mate_name4: TdxDBGridColumn;
    dxDBGrid1bod_desc1: TdxDBGridColumn;
    dxDBGrid1mate_name5: TdxDBGridColumn;
    dxDBGrid1bod_desc2: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    Edit2: TEdit;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Shape6: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label7: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    Label6: TLabel;
    dxDBGrid1dst_id: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qryagent_id: TAutoIncField;
    dxDBGrid1agent_id: TdxDBGridColumn;
    Label12: TLabel;
    dxDBGrid1cate_id: TdxDBGridColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrysqty: TBCDField;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    Label14: TLabel;
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
    procedure N8Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport23: Tsetreport23;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport23.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
if fcateid>0 then fcateid:=0;
if fmateid>0 then fmateid:=0;
if fagentid>0 then fagentid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport23.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport23.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport23.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport23.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport23.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport23.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if (Trim(dxEdit1.text)<>'') and (length(Trim(dxEdit1.text))<>8) then raise Exception.Create('单据号不正确');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit2.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxButtonEdit5.text)='')
	and (Trim(dxLookupTreeView1.Text)='') and (Trim(dxEdit1.text)='') then
begin
	if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
end;
with qry do
begin
    if active=true then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select b.dtl_id,a.bod_cd,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,a.agent_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,j.mate_name,agent=p.mate_name,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
    commandtext:=commandtext+' level2=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
    commandtext:=commandtext+' level3=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
//    level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' order_cd=e.bod_cd,order_dt=e.carry_dt,broker='''',credit_day=dbo.fn_getcreditday(a.agent_id,a.dst_id,b.med_id,a.carry_dt),'; //dbo.fn_mate_name(l.agent_id),';
    commandtext:=commandtext+' recdt=dbo.fn_getexprecdt(b.dtl_id),reccd=dbo.fn_getexpreccd(b.dtl_id),';
    commandtext:=commandtext+' invodt=dbo.fn_getexpinvdt(b.dtl_id),invocd=dbo.fn_getexpinvcd(b.dtl_id),';
    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,';
    commandtext:=commandtext+' mate_name1=h.mate_name,mate_name2='''',mate_name3='''',mate_name4=dbo.fn_mate_name(f.mate_id4),f.bod_desc1,mate_name5=dbo.fn_mate_name(f.mate_id5),f.bod_desc2,';
    commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt,';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (p.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' a.busi_type,price=cast(m.price2 as decimal(15,6)),b.discount,'; //b.price,
    commandtext:=commandtext+' b.qty,sqty=cast(case when a.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),';
    commandtext:=commandtext+' price1=case when a.busi_type=3 then 0.0000 else b.price1 end,price2=case when a.busi_type=3 then 0.0000 else b.price2 end,';
    commandtext:=commandtext+' amot=cast(round(b.price*b.qty,2) as decimal(15,2)),b.ckd_amot1,b.ckd_amot2,';
//    commandtext:=commandtext+' b.price1,b.price2,amot=cast(round(b.price1*b.qty,2) as decimal(15,2)),b.ckd_amot1,b.ckd_amot2,';
    commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
    commandtext:=commandtext+' b.bat_cd,b.bod_cd1,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
    commandtext:=commandtext+' left join tb_bill e on a.order_id=e.bod_id';
    commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
    commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join tb_busiframe2 k on a.cate_id=2 and k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join tb_bill f on f.bod_id=dbo.fn_getinvobodid(b.dtl_id)';
    commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
    if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.ItemIndex);
//    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
//    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd = '''+trim(dxEdit1.text)+''''
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
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
//	if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(p.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where p.district=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
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

procedure Tsetreport23.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport23.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport23.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport23.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tsetreport23.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with pickbusimate2 do
begin
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
}
end;

procedure Tsetreport23.FormActivate(Sender: TObject);
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
RadioGroup1.ItemIndex:=fcateid;
if fmateid>0 then
begin
	dxButtonEdit1.Tag:=fmateid;
    dxButtonEdit1.Text:=fmatename;
end;
if fmateid1>0 then
begin
	dxButtonEdit5.Tag:=fmateid1;
    dxButtonEdit5.Text:=fmatename1;
end;
if fagentid>0 then
begin
	dxButtonEdit4.Tag:=fagentid;
    dxButtonEdit4.Text:=fagent;
end;
//showmessage(fagent+'  '+dxButtonEdit4.Text);
if (fmateid>0) or (fmateid1>0) or (fagentid>0) then SpeedButton5Click(nil);
end;

procedure Tsetreport23.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport23.N3Click(Sender: TObject);
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

procedure Tsetreport23.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport23.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1cate_id.Visible:=False;
setprogress(0);
end;

procedure Tsetreport23.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1dtl_id.Visible:=False;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1cate_id.Visible:=False;
end;

procedure Tsetreport23.dxDBGrid1CustomDrawCell(Sender: TObject;
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
        AColor := $00A5FEFC; //$0089FEFB; // $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot1) then
begin
    if (ANode.Values[dxDBGrid1ckd_amot1.Index] =ANode.Values[dxDBGrid1amot.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot2) then
begin
    if (ANode.Values[dxDBGrid1ckd_amot2.Index] =ANode.Values[dxDBGrid1amot.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
        AColor := clred;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '调价') then
    begin
        AColor := clyellow;
    end;
end;
{
if (AColumn = dxDBGrid2Cbod_status) then
begin
    if (ANode.Strings[dxDBGrid2Cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
end;

procedure Tsetreport23.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tsetreport23.qryCalcFields(DataSet: TDataSet);
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
    fieldbyname('cnot_amot1').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot1').asfloat;
    fieldbyname('cnot_amot2').asfloat:=fieldbyname('amot').asfloat-fieldbyname('ckd_amot2').asfloat;
//    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;
//    fieldbyname('cnot_amot2').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot2').asfloat;

    if fieldbyname('order_dt').asdatetime+fieldbyname('credit_day').asinteger<=dt0
        then fieldbyname('Coverdue').asinteger:=0
        else fieldbyname('Coverdue').asinteger:=DaysBetween(fieldbyname('order_dt').asdatetime+fieldbyname('credit_day').asinteger,dt0);
//        else fieldbyname('Coverdue').asinteger:=(fieldbyname('order_dt').asdatetime+fieldbyname('credit_day').asfloat)-dt0;

end;
end;

procedure Tsetreport23.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tsetreport23.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tsetreport23.N7Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n: integer;
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
    if (qry.fieldbyname('cnot_amot1').asfloat<>0) and (qry.fieldbyname('cate_id').asinteger=2) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('cnot_amot1').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
        mamt:=qry.fieldbyname('cnot_amot1').asfloat;
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
    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('cnot_amot1').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) and (dxDBGrid1.SelectedNodes[i].values[f3]=2) then
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
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务负责人的单据');
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
if mi=0 then raise Exception.Create('无可生成收款单记录(限分销类有未收款金额)');
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
        MessageBox(0, '同一单据中不可包含不同的业务负责人','请注意',MB_OK+MB_ICONError);
        abort;
	end;
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),b.amot,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill_dtl c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=45 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=c.dtl_id and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的收款单。请先将其审核完成或取消后，再生成新收款单'+#13+#10+'-------------------------------------------------------------------------------------------';
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

//if MessageBox(0,Pchar('确定由下列单据品种生成两票收款单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('由下列单据品种生成两票收款单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:= formatfloat('00000000',getbillid(compid,45));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',45,0,src_id,dst_id,agent_id,broker_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    commandtext:=commandtext+' select '+inttostr(mi)+',dtl_id,(b.price1*b.qty-isnull(b.ckd_amot1,0)),(b.price1*b.qty-isnull(b.ckd_amot1,0))';
    commandtext:=commandtext+' from tb_bill_dtl b where b.dtl_id in ('+t+') order by b.bod_id,b.dtl_id'; //转出时，批发价存入 discount字段
    commandtext:=commandtext+' update a set cate_id=c.cate_id from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
    commandtext:=commandtext+'  where a.bod_id='+inttostr(mi)+' and a.bod_id=b.bod_id and b.med_id=d.dtl_id and c.bod_id=d.bod_id';
edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号两票收款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport23.N8Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n: integer;
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
    if qry.fieldbyname('cnot_amot2').asfloat<>0 then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单 '+qry.fieldbyname('med_name').asstring;
        s:= s + '     '+formatfloat('###,###,##0.00',qry.fieldbyname('cnot_amot2').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
//        bodid:=qry.fieldbyname('bod_id').asinteger;
        mamt:=qry.fieldbyname('cnot_amot2').asfloat;
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
//    f3:= dxDBGrid1.ColumnByFieldName('amot').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('cnot_amot2').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
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
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务负责人的单据');
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
if mi=0 then raise Exception.Create('无可生成核销单记录(有未开票金额)');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),amot=case when c.busi_type=3 then d.price*d.qty else b.amot end,c.med_id,m.med_code,m.med_name';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_medicine m';
    commandtext:=commandtext+' where a.bod_type_id=46 and a.bod_status_id<>1 and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    commandtext:=commandtext+'  and b.med_id=d.dtl_id and d.med_id=m.med_id and c.bod_id=d.bod_id';
    open;
    if recordcount>0 then
    begin
        s:='所选记录中已有下列尚未完成审核的核销单。请先将其审核完成或取消后，再生成新单'+#13+#10+'-------------------------------------------------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'发票核销单:'+fieldbyname('bod_cd').asstring+'('+fieldbyname('creat_dt').asstring+'):'+fieldbyname('med_name').asstring+' '+formatfloat('###,##0.00',fieldbyname('amot').asfloat);
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);

//if MessageBox(0,Pchar('确定由下列单据生成发票快递物流核销单:'+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('由下列单据生成发票快递物流核销单:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:= formatfloat('00000000',getbillid(compid,46));
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,cate_id,district_id,order_id,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',46,0,src_id,dst_id,agent_id,broker_id,cate_id,district_id,order_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
//exit;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot,price1,price2)';
    commandtext:=commandtext+' select '+inttostr(mi)+',b.dtl_id,(case when a.busi_type=3 then b.price else b.price1 end*b.qty-isnull(b.ckd_amot2,0)),(case when a.busi_type=3 then b.price else b.price1 end*b.qty-isnull(b.ckd_amot2,0)),b.price1,b.price2';  // busi_type=3 调价类别 取tb_bill_dtl.price
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where b.dtl_id in ('+t+') and a.bod_id=b.bod_id order by b.bod_id,b.dtl_id'; //转出时，批发价存入 discount字段
//edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    beep;
    s:='已成功生成'+mcd+'号发票快递物流核销单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport23.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
