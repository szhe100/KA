unit Unit29d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, mycds, Menus;

type
  Tsetreport22 = class(TForm)
    DSqry: TDataSource;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    pickdist: TClientDataSet;
    ImageList: TImageList;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    pubqry: TClientDataSet;
    Edit1: TEdit;
    Shape4: TShape;
    Label3: TLabel;
    Label1: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    qrybod_status_id: TIntegerField;
    qrybod_type_id: TIntegerField;
    qrybusi_type: TIntegerField;
    qrybod_amot: TBCDField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrycheck_by: TIntegerField;
    qrycheck_dt: TDateTimeField;
    qryrelative_id: TIntegerField;
    qryCbod_status: TStringField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrysettle_type: TIntegerField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qryprncount: TIntegerField;
    qrybod_desc: TStringField;
    qrycarry_by: TIntegerField;
    qrycarry_dt: TDateTimeField;
    qrycarryer: TStringField;
    qryreceipt_by: TIntegerField;
    qryreceipt_dt: TDateTimeField;
    qryreceiver: TStringField;
    qrystorage_by: TIntegerField;
    qrystorage_dt: TDateTimeField;
    qrystorager: TStringField;
    qryreceiver1: TStringField;
    qrybank_name: TStringField;
    qrydepo_acco: TStringField;
    Label2: TLabel;
    qrycdistrict: TStringField;
    cdsbillbank_id: TIntegerField;
    qrybank_id1: TAutoIncField;
    qrybank_name1: TStringField;
    Label13: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    dxButtonEdit4: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    Shape1: TShape;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    ADOQuery1bod_cd1: TStringField;
    qrybod_cd1: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1bank_name1: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1storager: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2bod_amot: TdxDBGridColumn;
    dxDBGrid2bod_cd2: TdxDBGridColumn;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2storager: TdxDBGridColumn;
    qry1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BCDField1: TBCDField;
    IntegerField7: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField8: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField9: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    DateTimeField3: TDateTimeField;
    StringField10: TStringField;
    IntegerField14: TIntegerField;
    DateTimeField4: TDateTimeField;
    StringField11: TStringField;
    IntegerField15: TIntegerField;
    DateTimeField5: TDateTimeField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField16: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    AutoIncField1: TAutoIncField;
    DSqry1: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    qry1med_id: TIntegerField;
    qry1med_name: TStringField;
    qry1specifi: TStringField;
    qry1pdt_place: TStringField;
    qry1med_unit: TStringField;
    qry1qty: TBCDField;
    qry1price: TBCDField;
    qry1amot: TBCDField;
    qry1bank_name1: TStringField;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridColumn;
    dxDBGrid2checker: TdxDBGridColumn;
    dxDBGrid2check_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd1: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    Shape8: TShape;
    Label9: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    qry1level1: TStringField;
    qry1level2: TStringField;
    qry1level3: TStringField;
    qry1leader: TStringField;
    qry1dist1: TStringField;
    qry1dist2: TStringField;
    dxDBGrid2level1: TdxDBGridColumn;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    qryagent_id: TIntegerField;
    qryagent: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    qryacnt_bank: TStringField;
    qrybank_account: TStringField;
    qry1acnt_bank: TStringField;
    qry1bank_account: TStringField;
    dxDBGrid2agent: TdxDBGridColumn;
    qry1agent_id: TIntegerField;
    qry1agent: TStringField;
    qry1mate_name: TStringField;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    Shape2: TShape;
    Label5: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    RadioGroup1: TRadioGroup;
    qrycheck_dt1: TDateTimeField;
    qry1check_dt1: TDateTimeField;
    dxDBGrid1check_dt1: TdxDBGridColumn;
    dxDBGrid2check_dt1: TdxDBGridColumn;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape7: TShape;
    Label8: TLabel;
    qrycdistrict1: TStringField;
    dxDBGrid1cdistrict1: TdxDBGridColumn;
    qry1bod_desc: TStringField;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    qry1channel_id: TIntegerField;
    qry1channel_dtl_id: TIntegerField;
    qry1channel: TStringField;
    qry1channel_dtl: TStringField;
    qry1bod_desc1: TStringField;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    Edit2: TEdit;
    qry1material_code: TStringField;
    qry1bod_cd2: TStringField;
    dxDBGrid2bank_name1: TdxDBGridColumn;
    qry1carry_dt1: TDateTimeField;
    dxDBGrid2carry_dt1: TdxDBGridColumn;
    dxDBGrid2bod_desc1: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDateEdit1DblClick(Sender: TObject);
    procedure dxDateEdit2DblClick(Sender: TObject);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport22: Tsetreport22;

implementation

uses datamodu, Unit16c, Unit16a;

{$R *.DFM}

procedure Tsetreport22.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
with qry1 do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport22.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport22.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport22.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetreport22.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
end;

procedure Tsetreport22.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(汇总)1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tsetreport22.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if PageControl1.ActivePage=TabSheet1 then
begin
    with qry do
    begin
        if active then
        begin
            mi:=fieldbyname('bod_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,bod_desc1=j.bod_desc,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,';
        commandtext:=commandtext+' broker='''',agent=k.mate_name,k.receiver,k.acnt_bank,k.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname,';
        commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict1(c.district),cdistrict1=dbo.fn_getdistrict1(k.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1'; //=dbo.fn_bank_name(j.bank_id1)';
        commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
        commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
        commandtext:=commandtext+' left join tb_bank f on a.bank_id =f.bank_id';
//        commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
        commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
        commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
        commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
        commandtext:=commandtext+' left join (select bod_id,channel_id,channel_dtl_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id)';
//        commandtext:=commandtext+' left join (select a.bod_id,a.bod_cd,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a where bod_type_id=30 and bod_status_id=1) j on j.bod_id=dbo.fn_getbodid(a.bod_id)';
        commandtext:=commandtext+' left join tb_busimate k on a.agent_id =k.mate_id';
        commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id=1';
        if Trim(dxEdit1.text)='' then
        begin
            if RadioGroup1.ItemIndex=0
                then commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and j.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and j.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    //            else commandtext:=commandtext+'  and j.check_dt>= '''+datetostr(dxdateedit1.date)+''' and j.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
		end
        else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
{
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}            
        if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(k.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
//        commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('bod_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else
begin
with qry1 do
    begin
        if active then
        begin
            mi:=fieldbyname('bod_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select c.bod_desc1,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,carry_dt1=c.carry_dt,check_dt1=a.check_dt,a.*,bod_cd2=j.bod_cd,amot=cast(b.amot as decimal(15,2)),price=cast(b.price as decimal(15,4)),';
        commandtext:=commandtext+' c.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='''',receiver='''',acnt_bank='''',bank_account='''',';   //c.agent,
//        commandtext:=commandtext+' c.mate_name,c.bod_cd1,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by), broker='''',c.agent,receiver='''',acnt_bank='''',bank_account='''',';
        commandtext:=commandtext+' carryer=dbo.fn_staff_name(a.carry_by),receiver1='''',storager=dbo.fn_staff_name(a.storage_by),';
        commandtext:=commandtext+' cdistrict='''',bank_name='''',depo_acco='''',bank_id1=0,j.bank_name1,';
        commandtext:=commandtext+' level2='''',level3='''', leader=''''';
//        commandtext:=commandtext+' dist1=dbo.fn_getdistrictname(l.district,1), dist2=dbo.fn_getdistrictname(l.district,2), level1='',level2='',level3='', leader='',
//        commandtext:=commandtext+' c.channel_id,c.channel,c.channel_dtl_id,c.channel_dtl';
//        commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id) --a.VTEXT,a.ZKDGRP,
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join (select bod_type_id=0,rec_id,bod_cd1=GBELN,mate_name=NAME1,agent=NAME_FIRST,';
        commandtext:=commandtext+' 	    dist1=ZZREGION, dist2=ZCITYNAME, level1=ZBEZEI,channel_id=0,channel=VTEXT,channel_dtl_id=0,channel_dtl=ZKDGRP,carry_dt,bod_desc1='''',';
        commandtext:=commandtext+'      material_code=MATNR,med_code='''',med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='''',';
        commandtext:=commandtext+'      qty,price=cast(ZPR03 as decimal(15,4)),amot=cast(qty*cast(ZPR03 as decimal(15,4)) as decimal(15,2))';
        commandtext:=commandtext+'      from SAP_ZSD_015 where KDGRP not in (''10'',''19'')';
        commandtext:=commandtext+' 	union all select bod_type_id,rec_id=a.bod_id,bod_cd1=bod_cd,mate_name=dbo.fn_mate_name(a.dst_id),agent=dbo.fn_mate_name(a.agent_id),';
        commandtext:=commandtext+'      dist1=f.BEZEI,dist2=f.CITY1,level1='''',channel_id=0,channel=dbo.fn_obj_desc1(11,a.channel_id),channel_dtl_id=0,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id),carry_dt,bod_desc1=a.bod_desc,';
        commandtext:=commandtext+'      m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),';
        commandtext:=commandtext+'      qty=0,price=0,amot=cast(a.bod_amot as decimal(15,2))';
        commandtext:=commandtext+' 		from tb_bill a left join tb_busimate f on a.agent_id=f.mate_id left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' 		where a.bod_type_id=36 and a.bod_status_id=1) c on b.type_id=c.bod_type_id and b.med_id=c.rec_id';
        commandtext:=commandtext+' left join (select bod_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id)';
//        commandtext:=commandtext+' left join (select bod_id,channel_id,channel_dtl_id,bod_cd,bod_desc,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id)';
        commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id=1'; //  and a.check_dt>= '2025-05-26' and a.check_dt< dateadd(day,1,'2025-07-17')
{
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and c.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and c.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+' and c.bod_cd1='''+trim(dxEdit1.text)+'''';
}
        if Trim(dxEdit1.text)='' then
        begin
            if RadioGroup1.ItemIndex=0
                then commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+'  and j.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and j.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    //            else commandtext:=commandtext+'  and j.check_dt>= '''+datetostr(dxdateedit1.date)+''' and j.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
		end
        else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';

        if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';

//        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and c.mate_name=(select top 1 mate_name from tb_busimate where mate_id='+inttostr(dxbuttonedit1.tag)+')';
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and c.agent=(select top 1 mate_name from tb_busimate where mate_id='+inttostr(dxbuttonedit4.tag)+')';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (c.dist1='''+dm.district.fieldbyname('name').asstring+''' or c.dist2='''+dm.district.fieldbyname('name').asstring+''')';

{
        commandtext:='select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,n.mate_name,bod_cd1=j.bod_cd,creater=d.zname,checker=e.zname,';
        commandtext:=commandtext+' broker='''',agent=l.mate_name,l.receiver,l.acnt_bank,l.bank_account,carryer=g.zname,receiver1=h.zname,storager=i.zname,';
        commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict1(l.district),f.bank_name,depo_acco=f.bank_acnt,j.bank_id1,j.bank_name1,y.*,';   //=dbo.fn_bank_name(j.bank_id1)
        commandtext:=commandtext+' dist1=dbo.fn_getdistrictname(l.district,1),';
        commandtext:=commandtext+' dist2=dbo.fn_getdistrictname(l.district,2),';
        commandtext:=commandtext+' level1='''',level2='''',level3='''',';
        commandtext:=commandtext+' leader='''',';
        commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
        commandtext:=commandtext+' left join tb_bank f on a.bank_id =f.bank_id';
        commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
        commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
        commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
        commandtext:=commandtext+' left join (select bod_id,bod_cd,bank_id1=bank_id,bank_name1=dbo.fn_mate_name(bank_id),carry_dt,check_dt from tb_bill) j on j.bod_id=dbo.fn_getbodid(a.bod_id)';
        commandtext:=commandtext+' left join (select b.bod_id,VTEXT,ZKDGRP,bod_cd2=a.VBELN,a.qty,b.price,b.amot,b.med_id,med_code=a.MATNR,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,med_unit='''',type_id1=1';   //carry_dt1=null,
        commandtext:=commandtext+'      from tb_bill_dtl b inner join SAP_ZSD_015 a on b.med_id=a.rec_id) y on a.bod_id=y.bod_id';
        commandtext:=commandtext+' left join tb_busimate l on a.agent_id =l.mate_id';
        commandtext:=commandtext+' left join tb_busimate n on a.dst_id =n.mate_id';
        commandtext:=commandtext+' where a.bod_type_id=37 and a.bod_status_id=1';
    	if Trim(dxEdit1.text)='' then
        begin
            if RadioGroup1.ItemIndex=0
                then commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
    //            else commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                else commandtext:=commandtext+'  and j.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and j.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    	end
        else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
        if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=30 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(l.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(n.district,t.dist_id)=1)';
//        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(n.district,t.dist_id)=1)';
//        commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(n.district,t.dist_id)=1)';
}
edit2.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('bod_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tsetreport22.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;

procedure Tsetreport22.N3Click(Sender: TObject);
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

procedure Tsetreport22.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport22.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1bod_id.visible:=false;
setprogress(0);
end;

procedure Tsetreport22.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport22.N7Click(Sender: TObject);
var i,mi,m,p,j: integer;
    s,t: string;
    mcd: string[20];
    mamt1 :real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
if dxDBGrid1.SelectedCount<1 then raise Exception.Create('请选择需申请的记录');
s:='------------------------------------';
t :=''; mamt1:=0; mi:=0;
j := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
m := dxDBGrid1.ColumnByFieldName('bod_id').Index;
p := dxDBGrid1.ColumnByFieldName('bod_amot').Index; //金额
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[j]; //单据类别 + 单据号
    if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then s:= s + '  '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[p]); // 补差金额
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[m];  // 记录 bod_id 字符串
    if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then mamt1:=mamt1+ dxDBGrid1.SelectedNodes[i].values[p];    // 记录 补差金额 fdiff
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计金额:'+formatfloat('###,###,###,##0.00',mamt1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 3 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill_dtl b,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=30 and a.bod_id=b.bod_id'; // and a.bod_status_id in (0,2)
    commandtext:=commandtext+'  and b.med_id in ('+t+') and b.med_id=c.bod_id';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='所选记录已生成了出纳付款单，不可重复生成'+ #13#10;
        s:=s+'--------------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'号出纳付款单已生成'+fieldbyname('bod_cd1').asstring+'号申请单';
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;

if MessageBox(0,Pchar('确定生成下列出纳付款单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,30)); //bod_type_id=30: 其他支出出纳付款单
with dm.pubqry do
begin
    setprogress(1);
    if active then close;
    commandtext:=' declare @id int';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',30,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @id=@@identity';
{
    mi:=fields[0].asinteger;
    if active then close;
}
    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,med_id,price,amot)';
    commandtext:=commandtext+' select @id,bod_id,price=cast(bod_amot as decimal(15,2)),amot=cast(bod_amot as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill where bod_id in ('+t+')';
//    commandtext:=commandtext+'  and bod_amot <> isnull(ckd_amot,0)';
edit1.text:=commandtext;
    execute;
    if active then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号其他支出付款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport22.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:=  query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetreport22.MenuItem3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('查询关键字', '请输入', NewString);
if ClickedOK then
    with dxdbgrid2 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure Tsetreport22.MenuItem5Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport22.MenuItem6Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid2 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
setprogress(0);
end;

procedure Tsetreport22.MenuItem8Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
end;

procedure Tsetreport22.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then wwDBNavigator1.DataSource:=DSqry
    else wwDBNavigator1.DataSource:=DSqry1;
end;

procedure Tsetreport22.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport22.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure Tsetreport22.qry1CalcFields(DataSet: TDataSet);
begin
{
with qry1 do
begin
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
end;
}
end;

procedure Tsetreport22.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if (AColumn = dxDBGrid2Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tsetreport22.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport22.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure Tsetreport22.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

procedure Tsetreport22.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetreport22.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetreport22.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
(Sender as TdxLookupTreeView).text:=dm.district.fieldbyname('cdistrict').asstring;
end;

end.
