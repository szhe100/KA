unit Unit202n;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, DateUtils, mycds;

type
  Tqryclassexp5 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
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
    dxDBGrid2carry_dt: TdxDBGridDateColumn;
    dxDBGrid2med_name: TdxDBGridMaskColumn;
    dxDBGrid2specifi: TdxDBGridMaskColumn;
    dxDBGrid2med_unit: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    dxDBGrid2broker: TdxDBGridMaskColumn;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrycustomer: TStringField;
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
    dxDBGrid2Cbusitype: TdxDBGridColumn;
    qrybod_cd: TStringField;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    Shape3: TShape;
    Label6: TLabel;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
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
    RadioGroup1: TRadioGroup;
    qryleader: TStringField;
    qrybod_desc: TStringField;
    qrydiscount: TBCDField;
    qrycdistrict: TStringField;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
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
    qrymate_id1: TAutoIncField;
    qrymate_id2: TAutoIncField;
    qrymate_id3: TAutoIncField;
    qrymate_id4: TAutoIncField;
    qrymate_id5: TAutoIncField;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    qrymate_name3: TStringField;
    qrymate_name4: TStringField;
    qrymate_name5: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    dxDBGrid1mate_name3: TdxDBGridColumn;
    dxDBGrid1mate_name4: TdxDBGridColumn;
    dxDBGrid1customer: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid2mate_name5: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    dxDBGrid1Cbod_status: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    ImageList: TImageList;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    Timer1: TTimer;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    dxPickEdit1: TdxPickEdit;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    SpeedButton6: TSpeedButton;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    qryprice3: TBCDField;
    qryCamot3: TFloatField;
    dxDBGrid1price3: TdxDBGridColumn;
    dxDBGrid1Camot3: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    pubqry: TClientDataSet;
    qrymate_name: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qryplatform_id: TIntegerField;
    qrycplatform: TStringField;
    Label3: TLabel;
    N7: TMenuItem;
    N8: TMenuItem;
    Label11: TLabel;
    dxEdit2: TdxEdit;
    dxEdit3: TdxEdit;
    dxEdit4: TdxEdit;
    dxEdit5: TdxEdit;
    qryCtype: TStringField;
    qrymate_type_id: TIntegerField;
    dxDBGrid1Ctype: TdxDBGridColumn;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    qrydata_type_id: TIntegerField;
    qrydata_type: TStringField;
    dxDBGrid1data_type: TdxDBGridColumn;
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N7Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassexp5: Tqryclassexp5;
  m1,m2: real;

implementation

uses datamodu, Unit16, Unit7, Unit28, Unit16a, Main;

{$R *.DFM}

procedure Tqryclassexp5.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
fbodid:=0;
end;

procedure Tqryclassexp5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassexp5.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassexp5.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton3.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryclassexp5.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclassexp5.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
//dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tqryclassexp5.SpeedButton5Click(Sender: TObject);
var si: integer;    //,y1,y2
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('查询日期范围不可超过180天');
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
    y2:=yearof(dxDateEdit2.Date);
    with dm.pubqry do
    begin
        if active=True then close;
        commandtext:='select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        commandtext:=commandtext+' union all select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
edit1.text:=commandtext;
        open;
        if recordcount<2 then raise Exception.Create('查询年度未授权');
    end;
end;
}
with qry do
begin
    if active then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,a.bod_status_id,d.med_code,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=case when j.mate_type_id=1 then j.mate_name else '''' end,j.mate_type_id,mate_name=dbo.fn_mate_name(a.src_id),';
    commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' leader=p.zname,a.data_type_id,data_type=dbo.fn_obj_desc(a.data_type_id),';  //customer=dbo.fn_mate_name(a.dst_id),
//	commandtext:=commandtext+' cate_id1=dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
	commandtext:=commandtext+' a.platform_id,';
//    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid (b.sta_id,a.dst_id,b.med_id)),';  //customer=dbo.fn_mate_name(a.dst_id),
    commandtext:=commandtext+' mate_id1=i.mate_id,mate_id2=e.mate_id,mate_id3=f.mate_id,mate_id4=g.mate_id,mate_id5=h.mate_id,';
    commandtext:=commandtext+' mate_name1=i.mate_name,mate_name2=e.mate_name,mate_name3=f.mate_name,mate_name4=g.mate_name,mate_name5=h.mate_name,';
//    commandtext:=commandtext+' mate_id1=i.mate_id,mate_id2=e.mate_id,mate_id3=f.mate_id,mate_id4=g.mate_id,mate_id5=h.mate_id,';
//    commandtext:=commandtext+' mate_name1=dbo.fn_mate_name(i.mate_id),mate_name2=e.mate_name,mate_name3=f.mate_name,mate_name4=g.mate_name,mate_name5=h.mate_name,';
    commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.creat_dt,';
    commandtext:=commandtext+' a.busi_type,b.price,b.price3,b.qty,b.discount,';
    commandtext:=commandtext+' amot=cast(b.price*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
    commandtext:=commandtext+' b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
//    commandtext:=commandtext+' left join tb_sysrule i on i.rec_id=dbo.fn_getsysrulerecid2(b.med_id,1,a.carry_dt)';
    //dbo].[fn_getsysrulerecid2] (@medid int,@levelid int,@dt datetime)
    commandtext:=commandtext+' left join tb_busimate i on a.mate_id1=i.mate_id';
    commandtext:=commandtext+' left join tb_busimate e on a.mate_id2=e.mate_id';
    commandtext:=commandtext+' left join tb_busimate f on a.mate_id3=f.mate_id';
    commandtext:=commandtext+' left join tb_busimate g on a.mate_id4=g.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on a.mate_id5=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
	commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt)';
//	commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.carry_dt,case when j.busi_type_id in (7,8) then 2 else 1 end)';
    commandtext:=commandtext+' left join tb_staff p on k.sta_id=p.sta_id';
//    commandtext:=commandtext+' left join tb_busiframe k on b.med_id=k.med_id and dbo.fn_ischildnode(j.district,k.district_id)=1'; //b.lead_id=k.sta_id and
//    commandtext:=commandtext+' left join tb_busiframe k on b.lead_id=k.sta_id and b.med_id=k.med_id and (j.district =k.district_id or dbo.fn_ischildnode(j.district,k.district_id)=1)';
//    commandtext:=commandtext+' left join tb_busiframe k on b.med_id=k.med_id and j.district =k.district_id';
    commandtext:=commandtext+' where a.bod_type_id=2 and a.cate_id=6';  // a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
    if RadioGroup1.ItemIndex=0 then commandtext:=commandtext+'  and a.bod_status_id in (0,1)';
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
//    if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
//    if RadioGroup1.ItemIndex<2 then commandtext:=commandtext+'  and a.bod_status_id='+inttostr(RadioGroup1.ItemIndex);
//    commandtext:=commandtext+'  and dbo.fn_inmate(a.src_id,'+inttostr(curuserid)+')=1 and dbo.fn_inmed(b.med_id,'+inttostr(curuserid)+')=1';
    if Trim(dxEdit1.text)<>'' then
    begin
        if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
            else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
    end
    else
    begin
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and (a.mate_id1='+inttostr(dxbuttonedit3.tag)+' or a.mate_id2='+inttostr(dxbuttonedit3.tag)+' or a.mate_id3='+inttostr(dxbuttonedit3.tag)+')';
//        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate b where a.src_id=b.mate_id and (try_cast('''+Trim(dxEdit2.text)+''' as int) is not null and b.mate_id='''+Trim(dxEdit2.text)+''' or b.mate_name like ''%'+Trim(dxEdit2.text)+'%'' or b.qry_code like ''%'+Trim(dxEdit2.text)+'%''))';
    if Trim(dxEdit3.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_staff c where b.sta_id=c.sta_id and (c.zname like ''%'+Trim(dxEdit3.text)+'%'' or c.qry_code like ''%'+Trim(dxEdit3.text)+'%''))';
    if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate b where a.dst_id=b.mate_id and (try_cast('''+Trim(dxEdit4.text)+''' as int) is not null and b.mate_id='''+Trim(dxEdit4.text)+''' or b.mate_name like ''%'+Trim(dxEdit4.text)+'%'' or b.qry_code like ''%'+Trim(dxEdit4.text)+'%''))';
    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=b.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
//    commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclassexp5.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryclassexp5.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryclassexp5.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tqryclassexp5.dxEdit1Click(Sender: TObject);
begin
with (Sender as TdxEdit) do
begin
    selectall;
    setfocus;
end;
end;

procedure Tqryclassexp5.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tqryclassexp5.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryclassexp5.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
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

procedure Tqryclassexp5.N3Click(Sender: TObject);
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

procedure Tqryclassexp5.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassexp5.N2Click(Sender: TObject);
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

procedure Tqryclassexp5.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassexp5.qryCalcFields(DataSet: TDataSet);
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
        3: fieldbyname('cbusitype').asstring:='调退';
        4: fieldbyname('cbusitype').asstring:='调销';
    end;
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
	case fieldbyname('mate_type_id').asinteger of  // mate_type_id=1: 医院     mate_type_id=2: 经销商
		1: fieldbyname('ctype').asstring:='纯销';
		2: fieldbyname('ctype').asstring:='调拨';
    end;
end;
end;

procedure Tqryclassexp5.SpeedButton3Click(Sender: TObject);
var st,ss,sm: string;
begin
if trim(dxbuttonedit4.text)=''
    then raise Exception.Create('请选择业务员');
with qry do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无权限发电子邮件');
    if active=true then close;
    commandtext:='select top 1 email from tb_staff where sta_id='+inttostr(dxButtonEdit4.tag);
    open;
    if (recordcount=0) or (fieldbyname('email').asstring='') or (pos('@',fieldbyname('email').asstring)=0)
        then raise Exception.Create('无法取得该业务员电子邮箱或邮箱无效');
    sm:=fieldbyname('email').asstring;
end;

//sm:='szhe100@163.com';   //临时接收邮箱
if MessageBox(0,pchar('确定将本次查询数据发邮件给:'+dxButtonEdit4.text),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
ss:='YPH流向';
st:=extractfilepath(Application.ExeName)+ss+'.xls';
dm.Save2(st,dxDBGrid2.SaveToXLS);
try
    SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
{
Function SendMSN(Topic: string;  //主题
                Content: string; //内容
                MailAddr: string; //收件人地址
                CCMailAddr: string; //抄送地址
                AttachFiles: string; //附件
                SmtpMailName: string;//发件人
                SmtpServer: string;   //发件服务器
                SmtpUser: string;     //发件帐户
                SmtpPass: string;     //发件密码
                SmtpPort: string = '25';     //端口
                TestMail: Boolean =true):Boolean;Stdcall; external 'SendDLL.dll';
}
except
    MessageBox(0,'连接失败,请重试','请注意',MB_OK+MB_ICONERROR);
end;
end;

procedure Tqryclassexp5.SpeedButton1Click(Sender: TObject);
var st,ss,sm,sr: string;
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无权限发电子邮件');
    if active=True then close;
    commandtext:='select distinct b.sta_id,broker=dbo.fn_staff_name(b.sta_id),c.email'; //email=dbo.fn_getemailbydtlid(b.dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=2 ';  //  a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and b.sta_id>0 and c.email<>''''';
//    commandtext:=commandtext+'  and b.sta_id>0 and isnull(c.email,'''')<>''''';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_busimate j where a.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0)';
//edit1.text:=commandtext;
//abort;
    open;
    if recordcount=0 then raise Exception.Create('此范围内无数据');
    if MessageBox(0,pchar('确定将符合本查询条件的数据发邮件给相关业务员'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    sr:='已发送以下邮件'+#13#10+'--------------------------------------';
//    mi:=0;
    Timer1.Enabled:=True;
    first;
    while not eof do
    begin
        sm:=Trim(fieldbyname('email').asstring);
//        sm:='szhe100@163.com';
        if (sm='') or (pos('@',sm)=0) then
        begin
            next;
            continue;
        end;
        dxButtonEdit4.Text:=fieldbyname('broker').asstring;
        dxButtonEdit4.Tag :=fieldbyname('sta_id').asinteger;
        SpeedButton5Click(nil); //refresh
        if qry.RecordCount=0 then
        begin
            next;
            continue;
        end;
        ss:='YPH流向'; //GuidToString(Guid);   //主题
        st:=extractfilepath(Application.ExeName)+ss+'.xls';
        dm.Save2(st,dxDBGrid2.SaveToXLS);
//sm:='szhe100@163.com';   //临时接收邮箱
        try
            SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//新KA邮箱账号：baomushifuwu@vip.163.com
//密码：ljbm28877666
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 成功';
    //ss:文件名; st:文件路径
        except
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 失败';
        end;
        next;
    end;
    Timer1.Enabled:=False;
end;
dxButtonEdit4.Text:='';
dxButtonEdit4.Tag :=0;
with qry do if active=True then close;
MessageBox(0,pchar(sr),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tqryclassexp5.SpeedButton4Click(Sender: TObject);
//var h: boolean;
begin
Timer1.Enabled:=True;
SendMSN('测试邮件','内容','380206093@qq.com','','4.jpg','szhe100@163.com','SMTP.163.com','szhe100','hy100797','25');
//SendMSN('测试baomushifuwu@vip.163.com发邮件','内容','380206093@qq.com','','180604.jpg','baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//SendMSN('YPH流向','','380206093@qq.com','','1.jpg','baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');

//SendMessage(Handle, WM_KeyDown, VK_RETURN, 0);
//Timer1.Enabled:=True;
//h:=SendMSN('测试邮件','内容','380206093@qq.com','','','szhe100@163.com','SMTP.163.com','szhe100','hy100797','25');
//SendMessage(Handle, WM_KeyDown, VK_RETURN, 0);

{
Function SendMSN(Topic: string;  //主题
                Content: string; //内容
                MailAddr: string; //收件人地址
                CCMailAddr: string; //抄送地址
                AttachFiles: string; //附件
                SmtpMailName: string;//发件人
                SmtpServer: string;   //发件服务器
                SmtpUser: string;     //发件帐户
                SmtpPass: string;     //发件密码
                SmtpPort: string = '25';     //端口
                TestMail: Boolean =true):Boolean;Stdcall; external 'SendDLL.dll';
}
end;

procedure Tqryclassexp5.Timer1Timer(Sender: TObject);
//var a,b:PAnsiChar;
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tqryclassexp5.dxDBGrid1DblClick(Sender: TObject);
begin
fbodid:= qry.fieldbyname('bod_id').asinteger;
//fbodtypeid:= qry.fieldbyname('bod_type_id').asinteger;
if fbodid=0 then exit;
(Sender as TComponent).Tag:=136;
//if (fbodtypeid=2) then (Sender as TComponent).Tag:=11;
MainForm.View(Sender);
//refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id',qry.fieldbyname('bod_id').asinteger)
end;

procedure Tqryclassexp5.SpeedButton6Click(Sender: TObject);
var dtlid,mi: integer;
    sbodid: string;
begin
with qry do
    if (active=True) and (recordcount>0) then dtlid:=fieldbyname('dtl_id').asinteger else dtlid:=0;
if MessageBox(0,'确定开始填补数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='exec sp_getbod2dtldata';   // 此功能已在 sp_updatebod2mate 中实现
    execute;
end;
}
with qry do
begin
    first;
    sbodid:=fieldbyname('bod_id').asstring;
    next;
    while not eof do
    begin
        sbodid:=sbodid+','+fieldbyname('bod_id').asstring;
        next;
    end;
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+sbodid+')';
    open;
    first;
    if pubqry.active=True then pubqry.close;
    pubqry.CommandText:='sp_updatebod2mate '+fieldbyname('bod_id').asstring;
    pubqry.Execute;
end;
if dtlid>0 then
begin
    SpeedButton5Click(nil);
    qry.Locate('dtl_id',dtlid,[]);
end;
end;

procedure Tqryclassexp5.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryclassexp5.N7Click(Sender: TObject);
begin
with qry do
	if (active=False) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+qry.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+qry.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and month=month('''+qry.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本单购货单位所在区域发生日期年月已结账，不可更改');

    if active=true then close;
	CommandText:='sp_updatebod2mate '+qry.fieldbyname('bod_id').asstring;
	Execute;
end;
refreshmyrecord(qry,dm.Refreshcds,0,'a.bod_id',qry.fieldbyname('bod_id').asinteger);
end;

procedure Tqryclassexp5.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
{
        AColor := clred;
        AFont.Color := clwhite;
}
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
//        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
//        AFont.Color := clblack;
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
if (AColumn = dxDBGrid1Ctype) then
begin
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '纯销') then
    begin
        AColor := $00FFFEDF;
    end;
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '调拨') then
    begin
        AColor := $00D2FFFD;
    end;
end;
end;

procedure Tqryclassexp5.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

end.
