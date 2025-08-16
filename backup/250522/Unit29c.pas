unit Unit29c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, mycds, Menus;

type
  Tsetreport11 = class(TForm)
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
    RadioGroup1: TRadioGroup;
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
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1receiver1: TdxDBGridColumn;
    dxDBGrid1bank_name: TdxDBGridColumn;
    dxDBGrid1depo_acco: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1bank_name1: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2cdistrict: TdxDBGridColumn;
    dxDBGrid2receiver1: TdxDBGridColumn;
    dxDBGrid2bank_name: TdxDBGridColumn;
    dxDBGrid2depo_acco: TdxDBGridColumn;
    dxDBGrid2bod_desc: TdxDBGridMaskColumn;
    dxDBGrid2bod_amot: TdxDBGridColumn;
    dxDBGrid2bod_cd1: TdxDBGridColumn;
    dxDBGrid2bank_name1: TdxDBGridColumn;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2carryer: TdxDBGridColumn;
    dxDBGrid2Ctypeid1: TdxDBGridColumn;
    qry1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
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
    StringField9: TStringField;
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
    qry1carry_dt1: TDateTimeField;
    qry1med_id: TIntegerField;
    qry1med_code: TStringField;
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
    dxDBGrid2bod_cd2: TdxDBGridColumn;
    qry1bod_cd2: TStringField;
    dxDBGrid2carry_dt1: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2mate_name1: TdxDBGridColumn;
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
    qry1supplier: TStringField;
    qry1leader: TStringField;
    qry1dist1: TStringField;
    qry1dist2: TStringField;
    dxDBGrid2supplier: TdxDBGridColumn;
    dxDBGrid2level1: TdxDBGridColumn;
    dxDBGrid2level2: TdxDBGridColumn;
    dxDBGrid2level3: TdxDBGridColumn;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    dxDBGrid2leader: TdxDBGridColumn;
    Edit1: TEdit;
    qry1bod_desc2: TStringField;
    dxDBGrid2bod_desc2: TdxDBGridColumn;
    qry1check_dt1: TDateTimeField;
    qrycheck_dt1: TDateTimeField;
    dxDBGrid1check_dt1: TdxDBGridColumn;
    dxDBGrid2check_dt1: TdxDBGridColumn;
    qry1type_id1: TWordField;
    qry1Ctypeid1: TStringField;
    qry1platform_id: TIntegerField;
    qry1cplatform: TStringField;
    qry1channel_id: TIntegerField;
    qry1channel_dtl_id: TIntegerField;
    qry1channel: TStringField;
    qry1channel_dtl: TStringField;
    dxDBGrid2channel: TdxDBGridColumn;
    dxDBGrid2channel_dtl: TdxDBGridColumn;
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
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport11: Tsetreport11;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tsetreport11.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
with qry1 do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport11.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport11.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport11.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetreport11.FormCreate(Sender: TObject);
begin
//dxdateedit1.date:=dt_30;
dxdateedit1.date:=date;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
end;

procedure Tsetreport11.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tsetreport11.SpeedButton5Click(Sender: TObject);
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
        commandtext:='select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,a.*,bod_cd1=j.bod_cd,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname,';
        commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(f.district),receiver1=f.receiver,f.bank_name,f.depo_acco,j.bank_id1,bank_name1=dbo.fn_bank_name(j.bank_id1)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
        commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
        commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
        commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
        commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
        commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
        commandtext:=commandtext+' left join (select a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id';
        commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_status_id=1';
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and j.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and j.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//            else commandtext:=commandtext+'  and j.check_dt>= '''+datetostr(dxdateedit1.date)+''' and j.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}
        if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';

        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(f.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(f.district,t.dist_id)=1)';
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
        commandtext:='select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),check_dt=cast(convert(char(10),a.check_dt,20) as datetime),j.carry_dt,check_dt1=j.check_dt,y.*,a.*,j.bod_cd1,';
        commandtext:=commandtext+' supplier=b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname,';
        commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(f.district),receiver1=f.receiver,f.bank_name,f.depo_acco,j.bank_id1,bank_name1=dbo.fn_bank_name(j.bank_id1),';
        commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (c.district,1),';
        commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (c.district,2),';
        commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
        commandtext:=commandtext+' leader=dbo.fn_staff_name(k.sta_id)';
        commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
//        commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
//        commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
        commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
        commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
        commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
        commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
        commandtext:=commandtext+' left join (select bod_cd1=a.bod_cd,b.med_id,bank_id1=a.bank_id,a.carry_dt,a.check_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id) j on a.bod_id =j.med_id';
        commandtext:=commandtext+' left join (select b.bod_id,bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),c.src_id,c.dst_id,';
//		commandtext:=commandtext+'  cate_id1=dbo.fn_getmatemedcateid(c.comp_id,c.src_id,d.med_id),';
		commandtext:=commandtext+'  c.platform_id,';
        commandtext:=commandtext+'  d.med_id,med_code,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1';
        commandtext:=commandtext+'  from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_medicine m';
        commandtext:=commandtext+'  where b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and d.med_id=m.med_id';
        commandtext:=commandtext+' union all select b.bod_id,bod_cd2=c.bod_cd,bod_desc2=c.bod_desc,qty=0,b.price,b.amot,carry_dt1=c.carry_dt,c.broker_id,broker=dbo.fn_staff_name(c.broker_id),c.src_id,c.dst_id,';
		commandtext:=commandtext+'  c.platform_id,';
//		commandtext:=commandtext+'  cate_id1=dbo.fn_getmatemedcateid(c.comp_id,c.src_id,c.med_id),';
        commandtext:=commandtext+'  c.med_id,m.med_code,med_name=case when m.med_name is null then ''未关联品种'' else m.med_name end,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),type_id1';
//        commandtext:=commandtext+'  c.med_id,m.med_code,med_name=case when m.med_name is null then ''应付记账'' else m.med_name end,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id)';
        commandtext:=commandtext+'  from tb_bill_dtl b inner join tb_bill c on b.sta_id=c.bod_id left join tb_medicine m on c.med_id=m.med_id) y on a.bod_id=y.bod_id';
        commandtext:=commandtext+' left join tb_busimate b on y.src_id =b.mate_id';
        commandtext:=commandtext+' left join tb_busimate c on y.dst_id =c.mate_id';
    	commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(c.district,y.med_id,y.dst_id,y.carry_dt1)';
        commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_status_id=1';
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and j.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and j.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//            else commandtext:=commandtext+'  and y.check_dt>= '''+datetostr(dxdateedit1.date)+''' and y.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
}
        if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+' and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_status_id in (0,2) and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(f.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(f.district,t.dist_id)=1)';
edit1.text:=commandtext;
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

procedure Tsetreport11.FormActivate(Sender: TObject);
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

procedure Tsetreport11.N3Click(Sender: TObject);
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

procedure Tsetreport11.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport11.N2Click(Sender: TObject);
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

procedure Tsetreport11.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport11.N7Click(Sender: TObject);
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
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill_dtl b,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=18 and a.bod_id=b.bod_id'; // and a.bod_status_id in (0,2)
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
//        s:='所选记录已生成了待审核状态的出纳付款单，'+ #13#10+'请先处理下列单据'+ #13#10;
        s:=s+'-----------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'号出纳付款单:'+fieldbyname('bod_cd1').asstring+'号申请单';
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;

if MessageBox(0,Pchar('确定生成下列出纳付款单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,18)); //bod_type_id=18: 业务员费用出纳付款单
with dm.pubqry do
begin
    setprogress(1);
    if active then close;

    commandtext:='declare @id integer';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',18,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @id=@@identity';
{
    open;
    mi:=fields[0].asinteger;
    if active then close;
}
    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,med_id,price,amot)'; //notice: med_id记录销售单dtl_id,fdiff=记录实际核销金额
    commandtext:=commandtext+' select @id,bod_id,';
    commandtext:=commandtext+' price=cast(bod_amot as decimal(15,2)),';
    commandtext:=commandtext+' amot=cast(bod_amot as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill';
    commandtext:=commandtext+' where bod_id in ('+t+')';
//    commandtext:=commandtext+'  and bod_amot <> isnull(ckd_amot,0)';
edit1.text:=commandtext;
    execute;
    if active then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号业务员费用出纳付款单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport11.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=  query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetreport11.MenuItem3Click(Sender: TObject);
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

procedure Tsetreport11.MenuItem5Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport11.MenuItem6Click(Sender: TObject);
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

procedure Tsetreport11.MenuItem8Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
end;

procedure Tsetreport11.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then wwDBNavigator1.DataSource:=DSqry
    else wwDBNavigator1.DataSource:=DSqry1;
end;

procedure Tsetreport11.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
end;
end;

procedure Tsetreport11.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport11.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
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
end;

end.
