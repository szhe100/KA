unit Unit202d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, DateUtils, ComCtrls;

type
  Tqryclassexp4 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
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
    qrycustomer: TStringField;
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
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit4: TdxButtonEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    RadioGroup1: TRadioGroup;
    qryleader: TStringField;
    qrybod_desc: TStringField;
    qrydiscount: TBCDField;
    qrycdistrict: TStringField;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    ImageList: TImageList;
    Label13: TLabel;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    qryfyear: TIntegerField;
    qryfmonth: TIntegerField;
    qrycarry_dt: TDateTimeField;
    qrycreat_dt: TDateTimeField;
    qryCcate: TStringField;
    qrymate_name: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    ADOQuery1customer: TStringField;
    qrybusi_type_id: TWordField;
    qryCbusi_type: TStringField;
    qrycate_id: TWordField;
    qryprice2: TBCDField;
    qryCamot2: TFloatField;
    qrymate_code: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1fmonth: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1mate_code: TdxDBGridColumn;
    dxDBGrid1customer: TdxDBGridColumn;
    dxDBGrid1Cbusi_type: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2fyear: TdxDBGridColumn;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2qty01: TdxDBGridColumn;
    dxDBGrid2qty02: TdxDBGridColumn;
    qry1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DSqry1: TDataSource;
    qry1qty01: TBCDField;
    qry1qty02: TBCDField;
    qry1qty03: TBCDField;
    qry1qty04: TBCDField;
    qry1qty05: TBCDField;
    qry1qty06: TBCDField;
    qry1qty07: TBCDField;
    qry1qty08: TBCDField;
    qry1qty09: TBCDField;
    qry1qty10: TBCDField;
    qry1qty11: TBCDField;
    qry1qty12: TBCDField;
    dxDBGrid2qty00: TdxDBGridColumn;
    dxDBGrid2qty03: TdxDBGridColumn;
    dxDBGrid2qty04: TdxDBGridColumn;
    dxDBGrid2qty05: TdxDBGridColumn;
    dxDBGrid2qty06: TdxDBGridColumn;
    dxDBGrid2qty07: TdxDBGridColumn;
    dxDBGrid2qty08: TdxDBGridColumn;
    dxDBGrid2qty09: TdxDBGridColumn;
    dxDBGrid2qty10: TdxDBGridColumn;
    dxDBGrid2qty11: TdxDBGridColumn;
    qry1qty00: TBCDField;
    dxDBGrid2qty12: TdxDBGridColumn;
    dxDBGrid2customer: TdxDBGridColumn;
    qry1med_id: TIntegerField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    qrycate_id1: TIntegerField;
    qrycplatform: TStringField;
    dxDBGrid1cplatform: TdxDBGridColumn;
    Label9: TLabel;
    Label10: TLabel;
    qryprice3: TBCDField;
    qryCamot3: TFloatField;
    dxDBGrid1Cbod_status: TdxDBGridColumn;
    Label11: TLabel;
    dxPickEdit1: TdxPickEdit;
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
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassexp4: Tqryclassexp4;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit28, Unit16a;

{$R *.DFM}

procedure Tqryclassexp4.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
with qry1 do
    if active then close;
//with dm.district do
//    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tqryclassexp4.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassexp4.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassexp4.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tqryclassexp4.FormCreate(Sender: TObject);
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

procedure Tqryclassexp4.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'明细1.xls', dxDBGrid1.SaveToXLS, self.tag)
 else dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'汇总1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tqryclassexp4.SpeedButton5Click(Sender: TObject);
var si,y1,y2: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
    y2:=yearof(dxDateEdit2.Date);
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
if PageControl1.ActivePage=TabSheet1 then
begin
    with qry do
    begin
        if active then
        begin
            si:=fieldbyname('dtl_id').asinteger;
            close;
        end
        else si:=0;
        commandtext:='select b.dtl_id,a.bod_cd,a.bod_status_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
        commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,agent=dbo.fn_mate_name(a.src_id),';
        commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
        commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (j.district,1),';
        commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (j.district,2),';
        commandtext:=commandtext+' leader=dbo.fn_staff_name(k.sta_id),'; //dbo.fn_staff_name(dbo.fn_getleadid (b.sta_id,a.dst_id,b.med_id)),';
        commandtext:=commandtext+' f.mate_name,j.mate_code,customer=j.mate_name,j.busi_type_id,';    //customer=dbo.fn_mate_name(a.dst_id),
        commandtext:=commandtext+' broker=case a.cate_id when 1 then dbo.fn_staff_name(b.sta_id) when 2 then dbo.fn_mate_name(a.agent_id) end,';
        commandtext:=commandtext+' a.cate_id,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),fyear=year(a.carry_dt),fmonth=month(a.carry_dt),a.creat_dt,';
        commandtext:=commandtext+' a.busi_type,b.qty,b.discount,';
	    commandtext:=commandtext+' cate_id1=dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
        commandtext:=commandtext+' price=case a.cate_id when 2 then e.price2 else b.price end,price2=cast(case a.cate_id when 2 then e.price2 else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,4)),';
        commandtext:=commandtext+' amot=cast(b.price*b.qty as decimal(15,2)),b.price3,';
        commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
        commandtext:=commandtext+' b.bat_cd,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id and j.mate_type_id=1 and (j.kind_id<>4 or j.kind_id is null)';
//  		commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
    //    commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid(j.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
    //    commandtext:=commandtext+' left join tb_medata e on e.type_id=1 and b.med_id=e.med_id and e.id1=j.district';
        commandtext:=commandtext+' left join tb_medata e on e.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busimate f on a.src_id=f.mate_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and a.cate_id in (1,2) ';  // and a.bod_status_id=1 a.comp_id='+inttostr(compid)+' and
//        commandtext:=commandtext+' where a.bod_type_id=2'; // and a.cate_id=1 ';  // and a.bod_status_id=1 a.comp_id='+inttostr(compid)+' and
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        if RadioGroup2.ItemIndex=0 then commandtext:=commandtext+'  and a.cate_id in (1,2)'
                                   else commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';

    //    if RadioGroup1.ItemIndex<2 then commandtext:=commandtext+'  and a.bod_status_id='+inttostr(RadioGroup1.ItemIndex);
    //    commandtext:=commandtext+'  and dbo.fn_inmate(a.src_id,'+inttostr(curuserid)+')=1 and dbo.fn_inmed(b.med_id,'+inttostr(curuserid)+')=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
    //    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and (s.dist_id=t.rec_id or s.dist_id=t.parent) and j.district=t.rec_id)';
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
end
else
begin
    with qry1 do
    begin
        if active then close;
        commandtext:='select b.med_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,med_unit=dbo.fn_obj_desc(d.unit_id),';
        commandtext:=commandtext+'dist1=dbo.fn_getdistrictlevel (j.district,1),dist2=dbo.fn_getdistrictlevel (j.district,2),';
        commandtext:=commandtext+'fyear=year(a.carry_dt),j.mate_code,customer=j.mate_name,';
        commandtext:=commandtext+'qty00=sum(b.qty),';
        commandtext:=commandtext+'qty01=sum(case when month(a.carry_dt)=1 then b.qty end),';
        commandtext:=commandtext+'qty02=sum(case when month(a.carry_dt)=2 then b.qty end),';
        commandtext:=commandtext+'qty03=sum(case when month(a.carry_dt)=3 then b.qty end),';
        commandtext:=commandtext+'qty04=sum(case when month(a.carry_dt)=4 then b.qty end),';
        commandtext:=commandtext+'qty05=sum(case when month(a.carry_dt)=5 then b.qty end),';
        commandtext:=commandtext+'qty06=sum(case when month(a.carry_dt)=6 then b.qty end),';
        commandtext:=commandtext+'qty07=sum(case when month(a.carry_dt)=7 then b.qty end),';
        commandtext:=commandtext+'qty08=sum(case when month(a.carry_dt)=8 then b.qty end),';
        commandtext:=commandtext+'qty09=sum(case when month(a.carry_dt)=9 then b.qty end),';
        commandtext:=commandtext+'qty10=sum(case when month(a.carry_dt)=10 then b.qty end),';
        commandtext:=commandtext+'qty11=sum(case when month(a.carry_dt)=11 then b.qty end),';
        commandtext:=commandtext+'qty12=sum(case when month(a.carry_dt)=12 then b.qty end)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
//    --left join tb_staff c on b.sta_id=c.sta_id
    	commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
	    commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id and j.mate_type_id=1 and (j.kind_id<>4 or j.kind_id is null)';
//	   --left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt)
//	   --left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)
//	    --left join tb_busimate f on a.src_id=f.mate_id
        commandtext:=commandtext+' where a.bod_type_id=2 and a.cate_id in (1,2)';
//        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
        if RadioGroup2.ItemIndex=0 then commandtext:=commandtext+'  and a.cate_id in (1,2)'
                                   else commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
            if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
    //    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and (s.dist_id=t.rec_id or s.dist_id=t.parent) and j.district=t.rec_id)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' group by b.med_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,dbo.fn_obj_desc(d.unit_id),';
        commandtext:=commandtext+' dbo.fn_getdistrictlevel (j.district,1),dbo.fn_getdistrictlevel (j.district,2),';
        commandtext:=commandtext+' year(a.carry_dt),j.mate_code,j.mate_name'; //--fmonth=month(a.carry_dt),
    edit1.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tqryclassexp4.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryclassexp4.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryclassexp4.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryclassexp4.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryclassexp4.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
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
end;

procedure Tqryclassexp4.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
dxDBGrid1price.Visible:=f2; //// 可查看敏感数据
dxDBGrid1amot.Visible:=f2;
dxDBGrid1price2.Visible:=f2;
dxDBGrid1camot2.Visible:=f2;
dxDBGrid1broker.Visible:=f2;
end;

procedure Tqryclassexp4.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
//        SpeedButton5Click(nil);
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;
end;

procedure Tqryclassexp4.N3Click(Sender: TObject);
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

procedure Tqryclassexp4.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassexp4.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1price.Visible:=f2;
dxDBGrid1amot.Visible:=f2;
dxDBGrid1price2.Visible:=f2;
dxDBGrid1camot2.Visible:=f2;
dxDBGrid1broker.Visible:=f2;
setprogress(0);
end;

procedure Tqryclassexp4.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1price.Visible:=f2;
dxDBGrid1amot.Visible:=f2;
dxDBGrid1price2.Visible:=f2;
dxDBGrid1camot2.Visible:=f2;
dxDBGrid1broker.Visible:=f2;
end;

procedure Tqryclassexp4.dxDBGrid1CustomDrawCell(Sender: TObject;
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
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
        AColor := clred;
        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1Cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1Cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
end;

procedure Tqryclassexp4.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tqryclassexp4.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type_id').asinteger of
        1:  fieldbyname('cbusi_type').asstring:='一级';
        2:  fieldbyname('cbusi_type').asstring:='二级';
        3:  fieldbyname('cbusi_type').asstring:='三级';
        4:  fieldbyname('cbusi_type').asstring:='特三甲';
        5:  fieldbyname('cbusi_type').asstring:='社区';
        6:  fieldbyname('cbusi_type').asstring:='基层';
        7:  fieldbyname('cbusi_type').asstring:='诊所';
        8:  fieldbyname('cbusi_type').asstring:='药店';
    end;
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('Ccate').asstring:='商业';
        2: fieldbyname('Ccate').asstring:='分销';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调退';
        4: fieldbyname('cbusitype').asstring:='调销';
    end;
    fieldbyname('Camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
	case fieldbyname('cate_id1').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
end;
end;

procedure Tqryclassexp4.DSqry1DataChange(Sender: TObject; Field: TField);
begin
with qry1 do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tqryclassexp4.MenuItem1Click(Sender: TObject);
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

procedure Tqryclassexp4.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassexp4.MenuItem4Click(Sender: TObject);
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

procedure Tqryclassexp4.MenuItem6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
end;

procedure Tqryclassexp4.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
