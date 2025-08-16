unit Unit202b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib, ComCtrls;

type
  Tqryclassexp2 = class(TForm)
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
    qrymate_id1: TAutoIncField;
    qrymate_id2: TAutoIncField;
    qrymate_id3: TAutoIncField;
    qrymate_id4: TAutoIncField;
    qrymate_id5: TAutoIncField;
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
    SpeedButton4: TSpeedButton;
    Timer1: TTimer;
    RadioGroup2: TRadioGroup;
    qrycyear: TIntegerField;
    qrycmonth: TIntegerField;
    qrykind_id: TWordField;
    qryCbusitype1: TStringField;
    qrysupplier: TStringField;
    qrymate_name: TStringField;
    qryvalid_dt: TDateTimeField;
    qrycate_id: TWordField;
    qryprice2: TBCDField;
    Edit1: TEdit;
    qryCamot2: TFloatField;
    ADOQuery1price1: TBCDField;
    qryprice1: TBCDField;
    qryCamot1: TFloatField;
    qryzcode: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrybod_cd2: TStringField;
    qryprice3: TBCDField;
    qryCamot3: TFloatField;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    Shape8: TShape;
    Label9: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    Label10: TLabel;
    Shape9: TShape;
    dxButtonEdit5: TdxButtonEdit;
    qrybod_type_id: TIntegerField;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    RadioGroup3: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt: TdxDBGridColumn;
    dxDBGrid2cyear: TdxDBGridColumn;
    dxDBGrid2cmonth: TdxDBGridColumn;
    dxDBGrid2Cbusitype: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    dxDBGrid2Cbusitype1: TdxDBGridColumn;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    dxDBGrid2supplier: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2level1: TdxDBGridColumn;
    dxDBGrid2level2: TdxDBGridColumn;
    dxDBGrid2level3: TdxDBGridColumn;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    dxDBGrid2PARTNER: TdxDBGridColumn;
    dxDBGrid2leader: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2price3: TdxDBGridColumn;
    dxDBGrid2Camot3: TdxDBGridColumn;
    dxDBGrid2price2: TdxDBGridColumn;
    dxDBGrid2Camot2: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    dxDBGrid2valid_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd2: TdxDBGridColumn;
    qry1: TClientDataSet;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    BCDField4: TBCDField;
    BCDField6: TBCDField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DSqry1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1material_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1amot3: TdxDBGridColumn;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    qry1med_id: TIntegerField;
    qry1amot1: TBCDField;
    qry1amot2: TBCDField;
    qry1amot3: TBCDField;
    qrybusi_type_id: TIntegerField;
    qryCbusi_type: TStringField;
    dxDBGrid2Cbusi_type: TdxDBGridColumn;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    dxDBGrid2channel: TdxDBGridColumn;
    dxDBGrid2channel_dtl: TdxDBGridColumn;
    Shape10: TShape;
    Label17: TLabel;
    dxLookupEdit2: TdxLookupEdit;
    qrymaterial_code: TStringField;
    qrymaterial_code1: TStringField;
    qry1material_code: TStringField;
    qry1material_code1: TStringField;
    Label18: TLabel;
    qryPARTNER: TStringField;
    qryVKGRP: TStringField;
    qryVKGRP_TXT: TStringField;
    dxDBGrid2VKGRP: TdxDBGridColumn;
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassexp2: Tqryclassexp2;
  m1,m2: real;

implementation

uses datamodu, Unit7, Unit16a, Unit16b, Unit16c, Unit28;

{$R *.DFM}

procedure Tqryclassexp2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do if active then close;
with dm.channel_dtl do if active then close;
end;

procedure Tqryclassexp2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassexp2.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassexp2.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
speedbutton3.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclassexp2.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
}
end;

procedure Tqryclassexp2.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid2.SaveToXLS, self.tag)
	else if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总)1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassexp2.SpeedButton5Click(Sender: TObject);
var si: integer;
	fn: Boolean; //为空标志
begin
if (Trim(dxEdit1.text)<>'') and (length(Trim(dxEdit1.text))<>8) then raise Exception.Create('单据号不正确');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
if (Trim(dxLookupEdit1.text)='') and (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit2.text)='') and (Trim(dxButtonEdit3.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxButtonEdit5.text)='')
	and (Trim(dxLookupTreeView1.Text)='') and (Trim(dxEdit1.text)='') then
begin
	if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
end;
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
        commandtext:='';
        if RadioGroup2.ItemIndex in [0,1] then //所有、商业
        begin
            commandtext:='select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name,';
            commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict1(j.district),b.bod_cd2,';
            commandtext:=commandtext+' b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id),';
            commandtext:=commandtext+' dist1=i.prov_name,'; //dbo.fn_getdistrictlevel
            commandtext:=commandtext+' dist2=i.city_name,';  //dbo.fn_getdistrictlevel
//            commandtext:=commandtext+' dist1=dbo.fn_getdistrictname(j.district,1),'; //dbo.fn_getdistrictlevel
//            commandtext:=commandtext+' dist2=dbo.fn_getdistrictname(j.district,2),';  //dbo.fn_getdistrictlevel
            commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.zname,';
            commandtext:=commandtext+' level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER,';
            commandtext:=commandtext+' j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='''',';
            commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,'; //price1=e.price2,';
            commandtext:=commandtext+' price1=0.0000,b.price3,';
            commandtext:=commandtext+' a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,';
            commandtext:=commandtext+' supplier=l.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt,';
            commandtext:=commandtext+' amot=cast(b.price*b.qty as decimal(18,2)),';
//            commandtext:=commandtext+' price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end,';
            commandtext:=commandtext+' price2=cast(n.price as decimal(15,4)),';
            commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
            commandtext:=commandtext+' b.bat_cd,broker= c.zname,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate e on a.agent_id=e.mate_id';
            commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' left join vi_district1 i on j.district=i.code';
            commandtext:=commandtext+' left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt) ';
                // dbo].[fn_getSAP_ZSD_BUSrecid](@channelcode int,@channeldtlcode int,@districtid int,@matecode varchar(10),@materialcode varchar(20),@dt datetime)

            commandtext:=commandtext+' left join tb_medprice n on n.rec_id=dbo.fn_getmedpricerecid1(d.material_code,b.channel_id,b.channel_dtl_id,i.prov_code,i.city_code,a.carry_dt)';  //
            // fn_getmedpricerecid](@materialcode varchar(20),@channelcode int,@channeldtlcode int,@provcode varchar(20),@citycode varchar(20),@dt datetime)

            commandtext:=commandtext+' left join tb_busimate l on a.src_id=l.mate_id';
            if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' where a.bod_type_id=0' // 选择分销时，不应包含商业数据
                else commandtext:=commandtext+' where a.bod_type_id=2'; //  and a.cate_id in (3,4) and cate_id=1 and j.mate_type_id=1 ';  // 排除客户为商业公司 mate_type_id=2
            if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
            if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
            if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            commandtext:=commandtext+' and cate_id=1 and j.mate_type_id=1 ';
        //    if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
            if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.channel_dtl_id='+dm.channel_dtl.fieldbyname('obj_id').asstring;
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit5.tag);
//                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and j.district like '''+dm.district.fieldbyname('code').asstring+'%'''
            end;
        //    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=j.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        //    commandtext:=commandtext+' and dtl_id in (518275,518279)';
        end;
        if RadioGroup2.ItemIndex in [0,2] then //分销入库
        begin
            if commandtext<>'' then commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select b.dtl_id,cate_id=isnull(a.cate_id,1),a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name,';
//            commandtext:=commandtext+' a.platform_id,cate_id1=0,'; //dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
            commandtext:=commandtext+' cdistrict='''',b.bod_cd2,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
//            commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (j.district,1),';   // a.district_id
//            commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (j.district,2),';  // a.district_id
            commandtext:=commandtext+' dist1=dbo.fn_getdistrictname(case a.cate_id when 1 then e.district else a.district_id end,1),';
            commandtext:=commandtext+' dist2=dbo.fn_getdistrictname(case a.cate_id when 1 then e.district else a.district_id end,2),';
            commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=dbo.fn_mate_name(a.dst_id),agent=e.mate_name,'; //dbo.fn_mate_name(a.agent_id),';
//            commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
//            commandtext:=commandtext+' j.kind_id,j.busi_type_id,leader=p.zname,p.zcode,'; //dbo.fn_staff_name (k.sta_id),';
//            commandtext:=commandtext+' level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,';
            commandtext:=commandtext+' level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER,';
            commandtext:=commandtext+' j.kind_id,j.busi_type_id,leader=k.BU_SORT1,zcode='''',';
            commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,'; //price1=e.price2,';
            commandtext:=commandtext+' price1=cast(b.price as decimal(15,4)),b.price3,'; //b.price1,';
            commandtext:=commandtext+' a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,';
    //        commandtext:=commandtext+' carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,';
            commandtext:=commandtext+' supplier=dbo.fn_mate_name(a.src_id),a.busi_type,price=cast(b.price1 as decimal(15,6)),b.qty,b.discount,b.valid_dt,';
//            commandtext:=commandtext+' amot=cast(b.price1*b.qty as decimal(15,2)),';
            commandtext:=commandtext+' amot=cast(case when b.amot2<>0 then b.amot2 else b.price*b.qty end as decimal(18,2)),';
            commandtext:=commandtext+' price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,4)),';
            commandtext:=commandtext+' cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
            commandtext:=commandtext+' b.bat_cd,broker=e.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate e on a.agent_id=e.mate_id';
            commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt) ';
//            commandtext:=commandtext+' left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
//            commandtext:=commandtext+' left join tb_staff p on k.sta_id=p.sta_id';
            commandtext:=commandtext+' where a.bod_type_id=1 ';  // a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
            if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
            if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
            if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            commandtext:=commandtext+'  and a.cate_id=2';
            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
            if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.channel_dtl_id='+dm.channel_dtl.fieldbyname('obj_id').asstring;
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
//                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and j.district like '''+dm.district.fieldbyname('code').asstring+'%'''
            end;
    //        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    //        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(e.district,t.dist_id)=1)';  //依据业务负责人地区 以限制地区
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and (s.dist_id=t.rec_id or s.dist_id=t.parent) and j.district=t.rec_id)';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

            commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select dtl_id=a.rec_id,cate_id=0,bod_type_id=0,bod_cd=a.GBELN,bod_status_id=0,m.med_code,material_code=a.MATNR,m.material_code1,med_name=ARKTX,specifi=ZGG,pdt_place=ZSCQY,';
            commandtext:=commandtext+' m.qtyperpack,type_id1=0,mate_name=a.NAME1,cdistrict=dbo.fn_getdistrict1(c.district),bod_cd='''',';
            commandtext:=commandtext+' channel_id=VTWEG,channel=VTEXT,channel_dtl_id=KDGRP,channel_dtl=ZKDGRP,';
            commandtext:=commandtext+' dist1=ZZREGION,'; //dbo.fn_getdistrictname(c.district,1),
            commandtext:=commandtext+' dist2=ZCITYNAME,'; //dbo.fn_getdistrictname(c.district,2),';
            commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),bod_desc='''',customer=c.mate_name,agent=NAME_FIRST,';
            commandtext:=commandtext+' level1=a.VKBUR,level2=a.ZVKGRP,level3=a.ZPLOT_T,a.VKGRP,a.ZVKGRP,a.ZSALESID, kind_id=0,busi_type_id=0,';
            commandtext:=commandtext+' leader=ZSALESNAM,zcode=a.ZSALESID,mate_id1=0,mate_id2=0,mate_id3=0,mate_id4=0,mate_id5=0,';
            commandtext:=commandtext+' price1=cast(a.price as decimal(15,4)),price3=cast(a.price as decimal(15,4)),a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,supplier=a.ZVKORG,busi_type=0,';
            commandtext:=commandtext+' price=cast(a.price as decimal(15,6)),a.qty,discount=0.0000,valid_dt=cast(VFDAT as datetime),amot=cast(a.price*a.qty as decimal(18,2)), price2=cast(a.ZPR03 as decimal(15,4)),';
            commandtext:=commandtext+' cost=cast(0 as decimal(15,8)),profit=cast(0 as decimal(15,8)),prate=cast(0 as decimal(15,6)),bat_cd=a.CHARG,broker=a.ZSALESNAM,creater=a.ZTERMNAME,checker=ZUSNAM';
            commandtext:=commandtext+' from SAP_ZSD_015 a';  //vi_ZSD_015
            commandtext:=commandtext+' inner join tb_medicine m on a.MATNR=m.material_code';
            commandtext:=commandtext+' left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name';
            commandtext:=commandtext+' where KDGRP not in (''10'',''19'')';
            if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+' and (a.VBELN='''+Trim(dxEdit1.text)+''' or a.GBELN='''+Trim(dxEdit1.text)+''' or a.BOLNR='''+Trim(dxEdit1.text)+''')';
        end;
{
        if RadioGroup2.ItemIndex in [0,3] then //两票分销
        begin
            if commandtext<>'' then commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select b.dtl_id,a.cate_id,a.bod_type_id,a.bod_cd,a.bod_status_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,d.qtyperpack,d.type_id1,j.mate_name,';
            commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict1(j.district),bod_cd2='''',a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
            commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (j.district,1),'; //case a.cate_id when 1 then p.district else a.district_id end,1),';
            commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (j.district,2),'; //case a.cate_id when 1 then p.district else a.district_id end,2),';
            commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),a.bod_desc,customer=j.mate_name,agent=c.mate_name,';
            commandtext:=commandtext+' level1=k.VKBUR_TXT,level2=k.VKGRP_TXT,level3=k.ZPLOT_T,k.VKGRP,k.VKGRP_TXT,k.PARTNER,';
            commandtext:=commandtext+' kind_id=0,j.busi_type_id,leader=p.zname,p.zcode,';
            commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,';
            commandtext:=commandtext+' price1=cast(b.price as decimal(15,4)),b.price3,'; //b.price1,';
            commandtext:=commandtext+' a.carry_dt,cyear=year(a.carry_dt),cmonth=month(a.carry_dt),a.creat_dt,';
            commandtext:=commandtext+' supplier=h.mate_name,a.busi_type,b.price,b.qty,b.discount,b.valid_dt,';
            commandtext:=commandtext+' amot=cast(b.price1*b.qty as decimal(15,2)),';
            commandtext:=commandtext+' price2=cast(b.price2 as decimal(15,6)),cost=b.cost*b.qty,profit=(b.amot-b.cost*b.qty),prate=case b.amot when 0 then 0 else (b.amot-b.cost*b.qty)/b.amot*100 end,';
            commandtext:=commandtext+' b.bat_cd,broker='''',creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate c on a.agent_id=c.mate_id';
            commandtext:=commandtext+' left join tb_staff p on p.sta_id=dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
            commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(a.channel_id,a.channel_dtl_id,j.district,j.mate_code,d.material_code1,a.carry_dt)';

            commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' where a.bod_type_id=42'; // and a.bod_status_id=1';
            if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
            if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
            commandtext:=commandtext+'  and a.cate_id=2';
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and l.agent_id='+inttostr(dxbuttonedit4.tag);
                if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
                if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.channel_dtl_id='+dm.channel_dtl.fieldbyname('obj_id').asstring;
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and j.district like '''+dm.district.fieldbyname('code').asstring+'%''';
                if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            end;
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=j.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        end;
}
        commandtext:=commandtext+'  order by a.carry_dt';    //,b.dtl_id
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
end
else
begin
    with qry1 do
    begin
        if active then
        begin
            si:=fieldbyname('med_id').asinteger;
            close;
        end
        else si:=0;

        fn:=True; // Boolean; //为空标志

        commandtext:='select med_id,med_code,material_code,material_code1,med_name,specifi,pdt_place,med_unit,';
        commandtext:=commandtext+'	qty=sum(cast(isnull(qty,0) as decimal(15,0))),';
        commandtext:=commandtext+'	amot=sum(cast(isnull(amot,0) as decimal(15,2))),';
        commandtext:=commandtext+'	amot1=sum(cast(isnull(price1*qty,0) as decimal(15,2))),';
        commandtext:=commandtext+'	amot2=sum(cast(isnull(price2*qty,0) as decimal(15,2))),';
        commandtext:=commandtext+'	amot3=sum(cast(isnull(price3*qty,0) as decimal(15,2)))';
        commandtext:=commandtext+' from (';
        if RadioGroup2.ItemIndex in [0,1] then //所有、商业
        begin
        	fn:=False;
            commandtext:=commandtext+' select b.med_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id),';
            commandtext:=commandtext+' b.price,price1=0.0000,';
            commandtext:=commandtext+' price2=n.price,';
//            price2=case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end,';
            commandtext:=commandtext+' b.price3,b.qty,amot=cast(b.price*b.qty as decimal(15,2))';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate e on a.agent_id=e.mate_id';
            commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(j.district,b.med_id,a.dst_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busimate l on a.src_id=l.mate_id';
            commandtext:=commandtext+' left join tb_staff p on k.sta_id=p.sta_id';

            commandtext:=commandtext+' left join vi_district1 i on j.district=i.code';
            commandtext:=commandtext+' left join tb_medprice n on n.rec_id=dbo.fn_getmedpricerecid(d.material_code1,b.channel_id,b.channel_dtl_id,i.prov_code,i.city_code,a.carry_dt)';  //
            // fn_getmedpricerecid](@materialcode varchar(20),@channelcode int,@channeldtlcode int,@provcode varchar(20),@citycode varchar(20),@dt datetime)

            if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+' where a.bod_type_id=0' // 选择分销时，不应包含商业数据
                else commandtext:=commandtext+' where a.bod_type_id=2'; //  and a.cate_id in (3,4) and cate_id=1 and j.mate_type_id=1 ';  // 排除客户为商业公司 mate_type_id=2
            if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
            if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
            if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            commandtext:=commandtext+' and cate_id=1 and j.mate_type_id=1 ';
            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit5.tag);
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            end;
        //    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=j.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        end;
        if RadioGroup2.ItemIndex in [0,2] then //分销入库
        begin
            if not fn then commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select b.med_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id),';
            commandtext:=commandtext+' price=cast(b.price1 as decimal(15,6)),';
            commandtext:=commandtext+' price1=cast(b.price as decimal(15,4)),'; //b.price1,';
            commandtext:=commandtext+' price2=cast(case a.cate_id when 2 then b.price else dbo.fn_getprice2(a.dst_id,b.med_id,a.carry_dt) end as decimal(15,6)),';
            commandtext:=commandtext+' b.price3,b.qty,amot=cast(case when b.amot2<>0 then b.amot2 else b.price1*b.qty end as decimal(15,2))';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate e on a.agent_id=e.mate_id';
            commandtext:=commandtext+' inner join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' inner join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid2 (a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_staff p on k.sta_id=p.sta_id';
            commandtext:=commandtext+' where a.bod_type_id=1 ';  // a.comp_id='+inttostr(compid)+' and a.bod_status_id=1
            if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
            if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
            if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            commandtext:=commandtext+'  and a.cate_id=2';
            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and k.level_id1='+level1.fieldbyname('obj_id').asstring;
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit4.tag);
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            end;
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and (s.dist_id=t.rec_id or s.dist_id=t.parent) and j.district=t.rec_id)';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';

            commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select m.med_id,m.med_code,material_code=a.MATNR,m.material_code1,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),';
            commandtext:=commandtext+' price=cast(a.price as decimal(15,6)), price1=cast(a.price as decimal(15,4)), price2=cast(a.ZPR03 as decimal(15,6)),';
            commandtext:=commandtext+' price3=cast(a.price as decimal(15,4)),a.qty,amot=cast(a.price*a.qty as decimal(18,2))';
            commandtext:=commandtext+' from SAP_ZSD_015 a';
            commandtext:=commandtext+' inner join tb_medicine m on a.MATNR=m.material_code';
//            commandtext:=commandtext+' left join (select mate_code,mate_name,district from tb_busimate where mate_type_id=2) c on a.NAME1=c.mate_name';
            commandtext:=commandtext+' where KDGRP not in (''10'',''19'') and price>0';
            if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
                else commandtext:=commandtext+' and (a.VBELN='''+Trim(dxEdit1.text)+''' or a.GBELN='''+Trim(dxEdit1.text)+''' or a.BOLNR='''+Trim(dxEdit1.text)+''')';
        end;
{
        if RadioGroup2.ItemIndex in [0,3] then //两票分销
        begin
            if not fn then commandtext:=commandtext+' union all';
            commandtext:=commandtext+' select b.med_id,d.med_code,d.material_code,d.material_code1,d.med_name,d.specifi,d.pdt_place,med_unit=dbo.fn_obj_desc(d.unit_id),';
            commandtext:=commandtext+' b.price,price1=cast(b.price as decimal(15,4)),';
            commandtext:=commandtext+' price2=cast(b.price2 as decimal(15,6)),';
            commandtext:=commandtext+' b.price3,';
            commandtext:=commandtext+' b.qty,amot=cast(b.price1*b.qty as decimal(15,2))';
            commandtext:=commandtext+' from tb_bill a';
            commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
            commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
            commandtext:=commandtext+' left join tb_busimate c on a.agent_id=c.mate_id';
            commandtext:=commandtext+' left join tb_staff p on p.sta_id=dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
            commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
            commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_busiframe2 k on a.cate_id=2 and k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
            commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1';
            commandtext:=commandtext+'  and a.cate_id=2';
            if Trim(dxEdit1.text)<>'' then
            begin
                if length(Trim(dxEdit1.text))=8 then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
                    else commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
            end
            else
            begin
                commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
                if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
                if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
                if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
                if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and l.agent_id='+inttostr(dxbuttonedit4.tag);
                if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
                if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
                if RadioGroup3.ItemIndex>0 then commandtext:=commandtext+'  and d.type_id1='+inttostr(RadioGroup3.ItemIndex);
            end;
    //        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    //        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and (s.dist_id=t.rec_id or s.dist_id=t.parent) and h.district=t.rec_id)';
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=j.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        end;
}
        commandtext:=commandtext+'  ) h group by med_id,med_code,material_code,material_code1,med_name,specifi,pdt_place,med_unit';
        commandtext:=commandtext+' having sum(cast(isnull(amot,0) as decimal(15,2)))<>0';
        commandtext:=commandtext+' order by med_name,specifi,pdt_place';
    edit1.text:=commandtext;
    //exit;
        try
            setprogress(1);
            open;
            if si>0 then locate('med_id',si,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tqryclassexp2.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate3 do
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

procedure Tqryclassexp2.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassexp2.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryclassexp2.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryclassexp2.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tqryclassexp2.FormActivate(Sender: TObject);
begin
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
dxDBGrid2price.Visible:=false; //f2;
dxDBGrid2amot.Visible:=false; //f2;
//dxDBGrid2price1.Visible:=f2;
//dxDBGrid2camot1.Visible:=f2;
//dxDBGrid2price2.Visible:=f2;
//dxDBGrid2camot2.Visible:=f2;
//dxDBGrid2agent.Visible:=f2;
end;

procedure Tqryclassexp2.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryclassexp2.N3Click(Sender: TObject);
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

procedure Tqryclassexp2.N1Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassexp2.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid2 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid2price.Visible:=f2;
dxDBGrid2amot.Visible:=f2;
//dxDBGrid2price1.Visible:=f2;
//dxDBGrid2camot1.Visible:=f2;
dxDBGrid2price2.Visible:=f2;
dxDBGrid2camot2.Visible:=f2;
dxDBGrid2agent.Visible:=f2;
setprogress(0);
end;

procedure Tqryclassexp2.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
dxDBGrid2price.Visible:=f2;
dxDBGrid2amot.Visible:=f2;
//dxDBGrid2price1.Visible:=f2;
//dxDBGrid2camot1.Visible:=f2;
dxDBGrid2price2.Visible:=f2;
dxDBGrid2camot2.Visible:=f2;
dxDBGrid2agent.Visible:=f2;
end;

procedure Tqryclassexp2.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid2cbusitype) then
begin
    if (ANode.Strings[dxDBGrid2cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid2cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
    end;
    if (ANode.Strings[dxDBGrid2cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
    end;
end;
if (AColumn = dxDBGrid2Cbusitype1) then
begin
    if (ANode.Strings[dxDBGrid2Cbusitype1.Index] = '两票分销') then
    begin
    	AColor := $004EFC56; //$00FEFE94;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype1.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype1.Index] = '商业流向') then
    begin
        AColor := $00BAFEFB;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype1.Index] = '调拨') then
    begin
        AColor := $00EDD0EE;
    end;
end;
{
if (AColumn = dxDBGrid2Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
    end;
end;
}
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

procedure Tqryclassexp2.dxDBGrid1CustomDrawFooter(Sender: TObject;
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

procedure Tqryclassexp2.qryCalcFields(DataSet: TDataSet);
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
    if fieldbyname('bod_type_id').asinteger=2 then
    begin
        if fieldbyname('cate_id').asinteger=1 then
        begin
            if fieldbyname('kind_id').asinteger=4
                then fieldbyname('cbusitype1').asstring:='调拨'
                else fieldbyname('cbusitype1').asstring:='商业流向';
        end
        else fieldbyname('cbusitype1').asstring:='分销';
    end;
    if fieldbyname('bod_type_id').asinteger=42 then
    begin
        case fieldbyname('cate_id').asinteger of
            1: fieldbyname('cbusitype1').asstring:='两票采购';
            2: fieldbyname('cbusitype1').asstring:='两票分销';
        end;
    end;
    if fieldbyname('bod_type_id').asinteger=0 then fieldbyname('cbusitype1').asstring:='分销采购';
    if (fieldbyname('busi_type').asinteger in [1,2]) and (fieldbyname('cbusitype1').asstring='')
        then fieldbyname('cbusitype1').asstring:='分销';
    fieldbyname('Camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Camot3').asfloat:=fieldbyname('price3').asfloat*fieldbyname('qty').asfloat;
{
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
	case fieldbyname('cate_id1').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
}
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
end;
end;

procedure Tqryclassexp2.SpeedButton3Click(Sender: TObject);
var Guid:TGUID;
    st,ss,sm: string;
begin
if trim(dxbuttonedit4.text)=''
    then raise Exception.Create('请选择业务员');
with qry do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 email from tb_staff where sta_id='+inttostr(dxButtonEdit4.tag);
    open;
    if (recordcount=0) or (fieldbyname('email').asstring='') or (pos('@',fieldbyname('email').asstring)=0)
        then raise Exception.Create('无法取得该业务员电子邮箱或邮箱无效');
    sm:=fieldbyname('email').asstring;
end;

//sm:='szhe100@163.com';   //临时接收邮箱
if MessageBox(0,pchar('确定将本次查询数据发邮件给:'+dxButtonEdit4.text),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
CoCreateGuid(Guid); //需uses ComObj,ActiveX;
ss:=GuidToString(Guid);
Delete(ss,Pos('{', ss),1);
Delete(ss,Pos('}', ss),1);
st:=extractfilepath(Application.ExeName)+ss+'.xls';
dm.Save2(st,dxDBGrid2.SaveToXLS);
try
    SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
    //ss:文件名; st:文件路径
except
    MessageBox(0,'连接失败,请重试','请注意',MB_OK+MB_ICONERROR);
end;
end;

procedure Tqryclassexp2.SpeedButton1Click(Sender: TObject);
var Guid:TGUID;
    st,ss,sm,sr: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select distinct b.sta_id,broker=dbo.fn_staff_name(b.sta_id),c.email';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=2 ';  // and a.bod_status_id=1
    if RadioGroup1.ItemIndex<2 then commandtext:=commandtext+'  and a.bod_status_id='+inttostr(RadioGroup1.ItemIndex);
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//edit1.text:=commandtext;
//exit;    
    open;
    if recordcount=0 then raise Exception.Create('此范围内无数据');
    if MessageBox(0,pchar('确定将符合本查询条件的数据发邮件给相关业务员'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    sr:='已发送以下邮件'+#13#10+'--------------------------------------';
    first;
    Timer1.Enabled:=True;
    while not eof do
    begin
        sm:=Trim(fieldbyname('email').asstring);
        if (sm='') or (pos('@',sm)=0) then
        begin
            next;
            continue;
        end;

        dxButtonEdit4.Text:=fieldbyname('broker').asstring;
        dxButtonEdit4.Tag :=fieldbyname('sta_id').asinteger;
        SpeedButton5Click(nil); //refresh

        CoCreateGuid(Guid); //需uses ComObj,ActiveX;
        ss:=GuidToString(Guid);
        ss:=copy(ss,2,length(ss)-2);
        st:=extractfilepath(Application.ExeName)+ss+'.xls';
        dm.Save2(st,dxDBGrid2.SaveToXLS);
        try
            SendMSN(ss,'',sm,'',st,'baomushifuwu@vip.163.com','SMTP.vip.163.com','baomushifuwu','ljbm28877666','25');
//新KA邮箱账号：kmyygz@vip.163.com
//密码：ljbm28877666
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 成功';
        except
            sr:=sr+#13#10+fieldbyname('broker').asstring+'('+sm+'): 失败';
        end;
        next;
    end;
    Timer1.Enabled:=False;
end;
dxButtonEdit4.Text:='';
dxButtonEdit4.Tag :=0;
with qry do if active then close;
MessageBox(0,pchar(sr),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tqryclassexp2.SpeedButton4Click(Sender: TObject);
var h: boolean;
begin
Timer1.Enabled:=True;
SendMSN('测试邮件','内容','380206093@qq.com','','','szhe100@163.com','SMTP.163.com','szhe100','hy100797','25');

//SendMessage(Handle, WM_KeyDown, VK_RETURN, 0);
Timer1.Enabled:=True;
h:=SendMSN('测试邮件','内容','380206093@qq.com','','','szhe100@163.com','SMTP.163.com','szhe100','hy100797','25');
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

procedure Tqryclassexp2.Timer1Timer(Sender: TObject);
//var a,b:PAnsiChar;
var	h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
//if h<>0 then label10.caption:=inttostr(h) else label10.caption:='no';
//h:= FindWindowEx(h,0,'edit',nil);
//SendMessage(h, WM_KeyDown, VK_RETURN, 0);
//SendMessage(h, WM_KEYDOWN, VK_RETURN, 0);
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
//SendMessage(Handle, WM_KeyDown, VK_RETURN, 0);
//KeyBD_Event(13, MapVirtualKey(vk, 0), 0, 0);
//SendKey(13, []);
//label9.caption:=timetostr(now)+'sendmessage';
end;

procedure Tqryclassexp2.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

procedure Tqryclassexp2.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryclassexp2.PageControl1Change(Sender: TObject);
begin
speedbutton2.enabled:=(PageControl1.ActivePage=TabSheet1) and (qry.active) and (qry.recordcount>0)
                   or (PageControl1.ActivePage=TabSheet2) and (qry1.active) and (qry1.recordcount>0)
end;

procedure Tqryclassexp2.DSqry1DataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry1.active) and (qry1.recordcount>0);
end;

end.
