unit Unit21a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, ADODB, dxCntner, DB, DBClient, dxdbtrel,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEdLib, dxEditor,
  dxDBCtrl, dxDBGrid, dxTL, Buttons, StdCtrls, Menus, ComCtrls, dxDBTLCl,
  dxGrClms;

type
  Tqryreport27 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    ImageList: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label13: TLabel;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ADOQuery1rate1: TBCDField;
    RadioGroup1: TRadioGroup;
    TabSheet2: TTabSheet;
    qry1: TClientDataSet;
    DSqry1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1Cprofit: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1Ccostamot: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Cprate: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1Camot: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1fee: TdxDBGridColumn;
    dxDBGrid1Cfee: TdxDBGridColumn;
    qry: TClientDataSet;
    qrydtl_id: TAutoIncField;
    qrybod_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrybod_cd1: TStringField;
    qrybod_desc: TStringField;
    qrybod_type_id: TIntegerField;
    qrybod_type: TStringField;
    qrymate_name: TStringField;
    qryagent_id: TIntegerField;
    qryagent: TStringField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qryqty: TBCDField;
    qryprice: TBCDField;
    qryamot: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    qryCamot: TBCDField;
    qryCamot1: TBCDField;
    qryCamot2: TBCDField;
    qryfee: TBCDField;
    qryCfee: TBCDField;
    qryamot1: TBCDField;
    Shape7: TShape;
    Shape6: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Shape5: TShape;
    Label5: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit3: TdxButtonEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    dxEdit1: TdxEdit;
    qryCfeeamot: TBCDField;
    dxDBGrid1Cfeeamot: TdxDBGridColumn;
    qryprice2: TBCDField;
    qryCcostamot: TBCDField;
    qryCprofit: TBCDField;
    qryCprate: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2Camot: TdxDBGridColumn;
    dxDBGrid2Camot1: TdxDBGridColumn;
    dxDBGrid2Camot2: TdxDBGridColumn;
    dxDBGrid2Cfeeamot: TdxDBGridColumn;
    dxDBGrid2Ccostamot: TdxDBGridColumn;
    dxDBGrid2Cprofit: TdxDBGridColumn;
    dxDBGrid2Cprate: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    qry1med_code: TStringField;
    qry1med_name: TStringField;
    qry1specifi: TStringField;
    qry1med_unit: TStringField;
    qry1pdt_place: TStringField;
    qry1qty: TBCDField;
    qry1amot: TBCDField;
    qry1Camot: TBCDField;
    qry1Camot1: TBCDField;
    qry1Camot2: TBCDField;
    qry1Cfeeamot: TBCDField;
    qry1Ccostamot: TBCDField;
    qry1Cprofit: TBCDField;
    qry1Cprate: TBCDField;
    qry1med_id: TIntegerField;
    dxDBGrid2qty: TdxDBGridColumn;
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
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure dxDBGrid2CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport27: Tqryreport27;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit16c, Unit7, Unit22, Unit28;

{$R *.DFM}

procedure Tqryreport27.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport27.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport27.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport27.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
if PageControl1.ActivePage=Tabsheet1 then
begin
    with qry do
    begin
        speedbutton2.enabled:=(active=true) and (recordcount>0);
    end;
end;
if PageControl1.ActivePage=Tabsheet2 then
begin
    with qry1 do
    begin
        speedbutton2.enabled:=(active=true) and (recordcount>0);
    end;
end;
end;

procedure Tqryreport27.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport27.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet1
 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid1.SaveToXLS, self.tag)
 else dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总)1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tqryreport27.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if PageControl1.ActivePage=Tabsheet1 then
begin
    with qry do
    begin
        if active=true then
        begin
            mi:=fieldbyname('dtl_id').asinteger;
            close;
        end else mi:=0;
        commandtext:='select b.dtl_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''分销采购'',a.bod_cd,b.bod_cd1,a.bod_desc,a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=f.mate_name,'; //stoppay=isnull(f.stoppay,0),';
        commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
        commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    //    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),'; //level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
//        commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),creater=d.zname,';
		commandtext:=commandtext+' a.dst_id,e.mate_name,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,'; //b.bat_cd,b.ckd_amot1,ckd_amot2=case when a.bod_status_id=1 then 0 else h.ckd_amot2 end,'; //h.ckd_amot2,';
        commandtext:=commandtext+' b.qty,b.price,b.amot,b.price1,';
        commandtext:=commandtext+' c.fee,amot1=c.amot,price2=dbo.fn_getbusiframeprice7(b.med_id,a.carry_dt)';
//        commandtext:=commandtext+' c.type_id,c.rate,c.rate1,c.fee,amot1=c.amot,price2=dbo.fn_getbusiframeprice7(b.med_id,a.carry_dt)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
    //    commandtext:=commandtext+' inner join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id and m.type_id1=1'; //代理品种
//        commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
        commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2'; //
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
    //        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        //    commandtext:=commandtext+'  and b.price1=c.price1'; //注: 分销采购单不包含销售单价与分销促销规则中销售单价不符的单据
    //        commandtext:=commandtext+'  and b.price=c.price2 and b.price1=c.price1'; //注: 分销采购单仅包含结算单价、销售单价与分销促销规则中相应结算单价、销售单价相等的单据
    //        commandtext:=commandtext+'  and (b.price=c.price2 and b.price1=c.price1 or b.price<>isnull(b.price1,0))'; //注: 分销采购单仅包含结算单价、销售单价与分销促销规则中相应结算单价、销售单价相等的单据

            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
//            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.broker_id='+dxLookupEdit1.ListSource.DataSet.fieldbyname('sta_id').asstring;
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.district_id=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
{
        commandtext:=commandtext+' union all select dtl_id=a.bod_id,a.bod_id,a.carry_dt,a.bod_type_id,bod_type=''应付记账'',a.bod_cd,bod_cd1='''',a.bod_desc,a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=f.mate_name,stoppay=isnull(f.stoppay,0),';
        commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (e.district,1),dist2=dbo.fn_getdistrictlevel (e.district,2),level1='''',';
    //    commandtext:=commandtext+' level1='''','; //level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
        commandtext:=commandtext+' creater=d.zname,a.dst_id,e.mate_name,med_code='''',med_name='''',specifi='''',pdt_place='''',med_unit='''',type_id1=0,bat_cd='''',a.ckd_amot1,ckd_amot2=case when a.bod_status_id=1 then 0 else h.ckd_amot2 end,'; //h.ckd_amot2,';
        commandtext:=commandtext+' qty=0,price=0,amot=a.bod_amot,price1=0,';
        commandtext:=commandtext+' type_id=0,rate=0,rate1=0,fee=0,amot1=0';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' left join tb_busimate f on a.agent_id=f.mate_id';
        commandtext:=commandtext+' left join (select bod_id=b.med_id,ckd_amot2=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=37 and a.bod_status_id in (0,2,3,5) and a.bod_id=b.bod_id';   //1,
        commandtext:=commandtext+' 		and b.type_id=36 group by b.med_id) h on a.bod_id=h.bod_id';   //and a.creat_dt>='''+datetostr(dxdateedit1.date)+'''
        commandtext:=commandtext+' where a.bod_type_id=36 and a.bod_status_id=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
    //        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';

            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
//            if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.broker_id='+dxLookupEdit1.ListSource.DataSet.fieldbyname('sta_id').asstring;
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where e.district=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
}
        commandtext:=commandtext+' order by a.carry_dt ';
    edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('dtl_id',mi,[]);
        finally
            setprogress(0);
        end;
    //    if recordcount=0 then MessageBox(0,pchar('无所查询数据，可能为未发生或未授权客户或品种'),'请注意',MB_OK+MB_ICONInformation);
    end;
end
else if PageControl1.ActivePage=Tabsheet2 then
begin
    with qry1 do
    begin
        if active=true then close;
        commandtext:='select h.*,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id) from';
        commandtext:=commandtext+' (select b.med_id,qty=sum(cast(b.qty as decimal(15,2))),amot=sum(cast(b.amot as decimal(15,2))),';
        commandtext:=commandtext+' camot=sum(cast(b.price1*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' camot1=sum(cast(c.amot*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' camot2=sum(cast(c.fee*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' cfeeamot=sum(cast((isnull(b.price1,0)-isnull(b.price,0)-isnull(c.amot,0)-isnull(c.fee,0))*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' ccostamot=sum(cast(dbo.fn_getbusiframeprice7(b.med_id,a.carry_dt)*b.qty as decimal(15,2)))';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id and m.type_id1=1';
        commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+''''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>='''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        //    commandtext:=commandtext+'  and (b.price=c.price2 and b.price1=c.price1 or b.price<>isnull(b.price1,0))'; //注: 分销采购单仅包含结算单价、销售单价与分销促销规则中相应结算单价、销售单价相等的单据
            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
            if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxbuttonedit3.tag);
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.district_id=t.rec_id and (t.rec_id='+dm.district.fieldbyname('rec_id').asstring+' or t.parent='+dm.district.fieldbyname('rec_id').asstring+'))'; // dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
        commandtext:=commandtext+' group by b.med_id) h,tb_medicine m';
        commandtext:=commandtext+' where h.med_id=m.med_id';
        commandtext:=commandtext+' order by m.med_name,m.specifi,m.pdt_place';
{   //如加区域的脚本
select h.*,cdistrict=dbo.fn_getdistrict(district_id),m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id) from (
	select a.district_id,b.med_id,qty=sum(cast(b.qty as decimal(15,2))),amot=sum(cast(b.amot as decimal(15,2))), 
	camot=sum(cast(b.price1*b.qty as decimal(15,2))), camot1=sum(cast(c.amot*b.qty as decimal(15,2))),
	 camot2=sum(cast(c.fee*b.qty as decimal(15,2))),
	  cfeeamot=sum(cast((isnull(b.price1,0)-isnull(b.price,0)-isnull(c.amot,0)-isnull(c.fee,0))*b.qty as decimal(15,2))),
	   ccostamot=sum(cast(dbo.fn_getbusiframeprice7(b.med_id,a.carry_dt)*b.qty as decimal(15,2)))
	    from tb_bill a
		 inner join tb_bill_dtl b on a.bod_id=b.bod_id
		  left join tb_busiframe3 c on c.rec_id=dbo.fn_getbusiframerecid4(a.dst_id,a.agent_id,b.med_id,a.carry_dt)
		   inner join tb_medicine m on b.med_id=m.med_id and m.type_id1=1
		    where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2
			  and a.carry_dt>='2019-12-28' and a.carry_dt< dateadd(day,1,'2020-01-27')
			    and (b.price=c.price2 and b.price1=c.price1 or b.price<>isnull(b.price1,0))
				 group by a.district_id,b.med_id) h,tb_medicine m
		 where h.med_id=m.med_id
		  order by dbo.fn_getdistrict(district_id),m.med_name,m.specifi,m.pdt_place
}
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end
end;

procedure Tqryreport27.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport27.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tqryreport27.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqryreport27.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport27.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport27.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
//fieldbyname('Cprofit').asfloat/fieldbyname('Camot').asfloat
if AColumn.Name='dxDBGrid1Camot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
end;

procedure Tqryreport27.N3Click(Sender: TObject);
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

procedure Tqryreport27.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport27.N2Click(Sender: TObject);
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

procedure Tqryreport27.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport27.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet1 then wwDBNavigator1.DataSource:=DSqry
    else wwDBNavigator1.DataSource:=DSqry1;
end;

procedure Tqryreport27.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
{
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price').asfloat-fieldbyname('amot1').asfloat-fieldbyname('fee').asfloat;
    fieldbyname('cfeeamot').asfloat:=fieldbyname('cfee').asfloat*fieldbyname('qty').asfloat;
    if fieldbyname('bod_type_id').asinteger=1 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot1').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('Camot2').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;

    fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Ccostamot').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;
}
//利润金额=销售金额-成本金额-应付金额-应付促销费-广告费
    fieldbyname('Cprofit').asfloat:=fieldbyname('Camot').asfloat-fieldbyname('Ccostamot').asfloat-fieldbyname('Camot1').asfloat-fieldbyname('Camot2').asfloat-fieldbyname('Cfeeamot').asfloat;
//单品利润率 = 利润金额/销售金额
	if fieldbyname('Camot').asfloat=0 then fieldbyname('Cprate').asfloat:=0
    	else fieldbyname('Cprate').asfloat:= fieldbyname('Cprofit').asfloat/fieldbyname('Camot').asfloat*100;
end;
end;

procedure Tqryreport27.dxDBGrid2CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid2Camot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprofit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid2Cprate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',round(m2/m1*10000)/100);
end;
end;

procedure Tqryreport27.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price').asfloat-fieldbyname('amot1').asfloat-fieldbyname('fee').asfloat;
    fieldbyname('cfeeamot').asfloat:=fieldbyname('cfee').asfloat*fieldbyname('qty').asfloat;
    if fieldbyname('bod_type_id').asinteger=1 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot1').asfloat*fieldbyname('qty').asfloat;
        fieldbyname('Camot2').asfloat:=fieldbyname('fee').asfloat*fieldbyname('qty').asfloat;
    end;
    if fieldbyname('bod_type_id').asinteger=36 then
    begin
        fieldbyname('Camot1').asfloat:=fieldbyname('amot').asfloat;
        fieldbyname('Camot2').asfloat:=0;
    end;

//    fieldbyname('Cnot_amot').asfloat:=fieldbyname('Camot1').asfloat+fieldbyname('Camot2').asfloat-fieldbyname('ckd_amot1').asfloat;

    fieldbyname('Camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
    fieldbyname('Ccostamot').asfloat:=fieldbyname('price2').asfloat*fieldbyname('qty').asfloat;

//利润金额=销售金额-成本金额-应付金额-应付促销费-广告费
    fieldbyname('Cprofit').asfloat:=fieldbyname('Camot').asfloat-fieldbyname('Ccostamot').asfloat-fieldbyname('Camot1').asfloat-fieldbyname('Camot2').asfloat-fieldbyname('Cfeeamot').asfloat;
//单品利润率 = 利润金额/销售金额
	if fieldbyname('Camot').asfloat=0 then fieldbyname('Cprate').asfloat:=0
    	else fieldbyname('Cprate').asfloat:= fieldbyname('Cprofit').asfloat/fieldbyname('Camot').asfloat*100;
{
    case fieldbyname('type_id').asinteger of
        0:  fieldbyname('ctype').asstring:='';
        1:  fieldbyname('ctype').asstring:='全额返款';
        2:  fieldbyname('ctype').asstring:='部分返款';
        3:  fieldbyname('ctype').asstring:='终端基层';
    end;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
}
end;
end;

end.
