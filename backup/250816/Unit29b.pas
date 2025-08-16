unit Unit29b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, mycds, Menus;

type
  Tsetreport10 = class(TForm)
    DSqry: TDataSource;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    pickdist: TClientDataSet;
    ImageList: TImageList;
    Label2: TLabel;
    Shape1: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Shape6: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    pubqry: TClientDataSet;
    Edit1: TEdit;
    Shape4: TShape;
    Label3: TLabel;
    Label1: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    qrysta_id: TIntegerField;
    qrybroker: TStringField;
    qryamot: TBCDField;
    qryreceiver1: TStringField;
    qrybank_name: TStringField;
    qrydepo_acco: TStringField;
    qrycdistrict: TStringField;
    Label8: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    dxDBGrid1Cnot_amot: TdxDBGridColumn;
    dxDBGrid1sta_id: TdxDBGridMaskColumn;
    dxDBGrid1med_id: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2broker: TdxDBGridMaskColumn;
    dxDBGrid2cdistrict: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2amot2: TdxDBGridColumn;
    dxDBGrid2Cnot_amot: TdxDBGridColumn;
    dxDBGrid2sta_id: TdxDBGridMaskColumn;
    dxDBGrid2med_id: TdxDBGridColumn;
    query1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    FloatField1: TFloatField;
    DSquery1: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    dxDBGrid2rec_id: TdxDBGridColumn;
    query1dtl_id: TIntegerField;
    dxDBGrid2bod_type_id: TdxDBGridColumn;
    query1bod_type_id: TIntegerField;
    query1bod_id: TIntegerField;
    query1bod_cd: TStringField;
    query1creat_dt: TDateTimeField;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    query1mate_name: TStringField;
    dxDBGrid2mate_name: TdxDBGridColumn;
    Label13: TLabel;
    query1qty: TBCDField;
    query1rate: TBCDField;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    dxCheckEdit1: TdxCheckEdit;
    ADOQuery1amot1: TBCDField;
    query1amot1: TBCDField;
    dxDBGrid2amot1: TdxDBGridColumn;
    dxDBGrid2Camot1: TdxDBGridColumn;
    query1Camot1: TFloatField;
    dxDBGrid2bod_desc: TdxDBGridColumn;
    query1bod_desc: TStringField;
    query1mate_name1: TStringField;
    dxDBGrid2mate_name1: TdxDBGridColumn;
    Edit2: TEdit;
    RadioGroup2: TRadioGroup;
    query1type_id1: TWordField;
    query1Ctypeid1: TStringField;
    Label9: TLabel;
    Shape3: TShape;
    query1busi_type: TIntegerField;
    query1Cbusitype: TStringField;
    dxDBGrid2Cbusitype: TdxDBGridColumn;
    query1type_id2: TIntegerField;
    query1ctype2: TStringField;
    query1ckd_amot3: TBCDField;
    query1fckdamot3: TBooleanField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dxDBGrid2bod_id: TdxDBGridColumn;
    query1lead_id: TAutoIncField;
    query1leader: TStringField;
    dxDBGrid2leader: TdxDBGridButtonColumn;
    query1dtl_id2: TIntegerField;
    dxDBGrid2dtl_id: TdxDBGridColumn;
    N9: TMenuItem;
    N10: TMenuItem;
    dxDBGrid2ckd_amot: TdxDBGridColumn;
    query1Camot2: TBCDField;
    dxDBGrid2Camot2: TdxDBGridColumn;
    query1amot2: TBCDField;
    query1bat_cd: TStringField;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    query1department: TStringField;
    dxDBGrid2department: TdxDBGridColumn;
    qryBCDField: TBCDField;
    qryBCDField2: TBCDField;
    qryFloatField: TFloatField;
    qryBCDField3: TBCDField;
    qryckd_amot: TBCDField;
    qryCnot_amot: TFloatField;
    Shape8: TShape;
    qrybal0: TBCDField;
    dxDBGrid1bal0: TdxDBGridColumn;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    dxEdit1: TdxEdit;
    Label10: TLabel;
    Edit3: TEdit;
    query1channel_id: TIntegerField;
    query1channel_dtl_id: TIntegerField;
    query1channel: TStringField;
    query1channel_dtl: TStringField;
    query1price1: TBCDField;
    dxDBGrid2price1: TdxDBGridColumn;
    dxDBGrid2price3: TdxDBGridColumn;
    query1material_code: TStringField;
    Shape9: TShape;
    Label14: TLabel;
    dxEdit4: TdxEdit;
    query1price3: TBCDField;
    dxDBGrid2Cprice_diff: TdxDBGridCheckColumn;
    query1Cprice_diff: TBooleanField;
    query1rate2: TBCDField;
    dxDBGrid2rate2: TdxDBGridColumn;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    dxDBGrid2channel: TdxDBGridColumn;
    dxDBGrid2channel_dtl: TdxDBGridColumn;
    query1terminal_id: TStringField;
    dxDBGrid2terminal_id: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure query1CalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure query1AfterPost(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure dxDBGrid2leaderButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N9Click(Sender: TObject);
    procedure dxDBGrid2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2SelectedCountChange(Sender: TObject);
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
  setreport10: Tsetreport10;

implementation

uses datamodu, Unit28, Unit16, Unit7, Unit16a, main, Unit54, Unit28c;

{$R *.DFM}

procedure Tsetreport10.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport10.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport10.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport10.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
if PageControl1.ActivePage=TabSheet1 then
    with qry do
        speedbutton2.enabled:=(active) and (recordcount>0)
else
    with query1 do
        speedbutton2.enabled:=(active) and (recordcount>0);
end;

procedure Tsetreport10.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
}
end;

procedure Tsetreport10.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
 else dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid2.SaveToXLS, self.tag);
end;

procedure Tsetreport10.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
if PageControl1.ActivePage=TabSheet1 then   //汇总
begin
    with qry do
    begin
        if active then
        begin
            mi:=fieldbyname('sta_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='if exists (select 1 from tempdb..sysobjects where id=object_id(''tempdb..#tmp'')) drop table #tmp';
//        commandtext:='select bal0=dbo.fn_getfeebalbystaid(sta_id,'''+datetostr(dxdateedit1.date)+''',0),* from (select h.sta_id,'; //a.dst_id,e.mate_name,';
        commandtext:=commandtext+' select bal0=0.00,h.sta_id,'; //a.dst_id,e.mate_name,';
//        commandtext:='select sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end,'; //a.dst_id,e.mate_name,';
        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
//        commandtext:=commandtext+' b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
        commandtext:=commandtext+' amot=sum(cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' ckd_amot=sum(isnull(y.ckd_amot,0)),amot1=sum(j.amot1),amot2=sum(j.amot2)';
        commandtext:=commandtext+' ,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id)';

        commandtext:=commandtext+' into #tmp from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
//        commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_staff c on h.sta_id=c.sta_id';
        commandtext:=commandtext+' inner join tb_busimate e on a.dst_id=e.mate_id';
//        commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
        commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id';
        commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
        if dxEdit1.Text='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
        commandtext:=commandtext+'  and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1';
        commandtext:=commandtext+'  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id='+inttostr(compid)+' and e.mate_type_id=1 ';    //mate_type_id=1: 医院
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';

    //    commandtext:=commandtext+'      and '; //tb_bill_stadtl表为依据业务成员表tb_brokermedtl中的业务成员提成规则，
                                                                //在计算提成款时，生成具体单据明细对业务成员的提成记录
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and m.material_code1=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
//        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and (b.sta_id='+inttostr(dxbuttonedit4.tag)+' or h.sta_id='+inttostr(dxbuttonedit4.tag)+')';
//        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and h.sta_id='+inttostr(dxbuttonedit4.tag);
//        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id=b.med_id and n.material_code like '''+Trim(dxEdit4.text)+'%'')';
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit4.text)+'''';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';

        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';

        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' group by h.sta_id,'; //a.dst_id,e.mate_name,';
        commandtext:=commandtext+'  c.zname,dbo.fn_getdistrict1(e.district),c.receiver,c.bank_name,c.depo_acco,';
//        commandtext:=commandtext+'  b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,dbo.fn_obj_desc(m.unit_id),m.type_id1';
        commandtext:=commandtext+'  b.channel_id,b.channel_dtl_id';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' having sum(cast(b.qty*case when h.rate is null then b.rate else h.rate end as decimal(15,2)))<>sum(isnull(h.ckd_amot,0))';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' having sum(cast(b.qty*case when h.rate is null then b.rate else h.rate end as decimal(15,2)))=sum(isnull(h.ckd_amot,0))';
        if not dxCheckEdit1.checked then
        begin
        	if RadioGroup1.ItemIndex=0
            	then commandtext:=commandtext+' having sum(b.qty*case when h.rate is null then b.rate else h.rate end)<>0'
            	else commandtext:=commandtext+' and sum(b.qty*case when h.rate is null then b.rate else h.rate end)<>0';
        end;
        commandtext:=commandtext+' union all select bal0=0.00,sta_id=broker_id,';
        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
//        commandtext:=commandtext+' a.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
        commandtext:=commandtext+' amot=a.bod_amot,y.ckd_amot,j.amot1,j.amot2,';
        commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
//        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' inner join tb_staff c on a.broker_id=c.sta_id';
		commandtext:=commandtext+' left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';
        commandtext:=commandtext+' left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
		commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+' and c.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id';

        commandtext:=commandtext+' where a.bod_type_id=19 and a.bod_status_id=1';    //a.comp_id='+inttostr(compid)+' and  mate_type_id=1: 医院
        if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and c.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
//        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and m.material_code1=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit4.text)+'''';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=c.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' and a.bod_amot<>isnull(a.ckd_amot,0)';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' and a.bod_amot=a.ckd_amot';

        commandtext:=commandtext+' if exists (select 1 from tempdb..sysobjects where id=object_id(''tempdb..#tmp1'')) drop table #tmp1';

        commandtext:=commandtext+' select broker_id,bal0=sum(cast(isnull(drawamot,0)+isnull(rec,0)-isnull(pay,0) as decimal(15,2))) into #tmp1';
        commandtext:=commandtext+' from vi_brokerexg where comp_id=1 and carry_dt< '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+' 	and broker_id in (select sta_id from #tmp) group by broker_id';
        commandtext:=commandtext+' select b.bal0,a.* from #tmp a left join #tmp1 b on a.sta_id=b.broker_id'; 

//        commandtext:=commandtext+') a';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('sta_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else       //明细 
begin
    with query1 do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
    // notice: union 得到的数据 Clientdataset 在post时，报read only 错误，所以要修改tb_bill.ckd_amot2字段，再inner join一下tb_bill
//        commandtext:='select a.rec_id,a.ckd_amot3,y.* from tb_bill_stadtl a inner join (select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc,';
        commandtext:='select a.rec_id,a.ckd_amot3,y.* from tb_bill_stadtl a inner join (select h.rec_id,b.dtl_id,a.bod_id,a.bod_type_id,a.busi_type,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc,';
		commandtext:=commandtext+' d.type_id2,d.price1,b.price3,';    //a.platform_id,
        commandtext:=commandtext+' e.mate_name,mate_name1=f.mate_name,';
        commandtext:=commandtext+' b.lead_id,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end,'; //a.dst_id,e.mate_name,';
//        commandtext:=commandtext+' b.lead_id,leader=g.zname,department=dbo.fn_obj_desc(g.dept_id),sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end,'; //a.dst_id,e.mate_name,';
        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict1(e.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
//        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
        commandtext:=commandtext+' b.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
//        commandtext:=commandtext+' b.bat_cd,amot=cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2)),';
        commandtext:=commandtext+' b.bat_cd,amot=cast(d.rate*b.qty as decimal(15,2)),';
//        commandtext:=commandtext+' b.qty,rate=cast(case when h.rate is null then b.rate else h.rate end as decimal(15,4)),';
        commandtext:=commandtext+' b.qty,rate=cast(d.rate as decimal(15,4)),';
        commandtext:=commandtext+' rate2=cast(case when isnull(d.price1,0)=0 then 0 else 100.00*d.rate/d.price1 end as decimal(10,2)),'; //rate2=cast(case when isnull(b.rate, 0)=0 then 0 else h.rate/b.rate*100 end as decimal(10,2)),';
        commandtext:=commandtext+' y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3';
        //h.ckd_amot  下面y连接是按单据计算已付款金额，如果tb_bill_stadtl.ckd_amot准确，可直接使用，否则可使用y连接计算
        commandtext:=commandtext+' ,b.terminal_id,b.channel_id,channel=dbo.fn_obj_desc1(11,b.channel_id),b.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,b.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_staff c on c.sta_id=case when h.sta_id is null then b.sta_id else h.sta_id end';
        commandtext:=commandtext+' inner join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' left  join tb_busimate f on a.src_id=f.mate_id';
//        commandtext:=commandtext+' left  join tb_staff g on b.lead_id=g.sta_id';
        commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
        commandtext:=commandtext+' left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt) and d.sta_id=h.sta_id'; //b.rule_id=d.rec_id';
//        commandtext:=commandtext+' left join (select rec_id,type_id2,price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt) from tb_brokermed) d on d.rec_id =dbo.fn_getbrokermedrecid(a.src_id,a.dst_id,b.med_id,a.carry_dt)'; //b.rule_id=d.rec_id';
        commandtext:=commandtext+' left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(b.channel_id,b.channel_dtl_id,e.district,e.mate_code,m.material_code1,a.carry_dt)';
        commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_type_id=17';
//        if dxEdit1.Text='' then commandtext:=commandtext+' and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id';

 		commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
        commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id';

        commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1 and e.mate_type_id=1 ';    //  and a.comp_id='+inttostr(compid)+' a.comp_id='+inttostr(compid)+' and mate_type_id=1: 医院
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';

    //    commandtext:=commandtext+'      and '; //tb_bill_stadtl表为依据业务成员表tb_brokermedtl中的业务成员提成规则，
                                                                //在计算提成款时，生成具体单据明细对业务成员的提成记录
//        commandtext:=commandtext+' and not exists (select 1 from tb_brokermed s,tb_brokermedtl t where h.rule_id=t.rec_id and t.rela_id=s.rec_id and s.stop_yn=1 and a.carry_dt>=s.stop_dt)';
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and m.material_code1=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and h.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit4.text)+'''';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';  // t.comp_id='+inttostr(compid)+' and
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if not dxCheckEdit1.checked then commandtext:=commandtext+' and (h.rate<>0 or b.rate<>0)';

        commandtext:=commandtext+' union all select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.carry_dt,20) as datetime),a.bod_desc,';
		commandtext:=commandtext+' type_id2=0,price1=0,price3=0,'; //a.platform_id, dbo.fn_getmatemedcateid(a.comp_id,a.src_id,b.med_id),';
        commandtext:=commandtext+' mate_name=dbo.fn_mate_name(a.dst_id),mate_name1=f.mate_name,';
        commandtext:=commandtext+' lead_id=0,leader='''',department='''',sta_id=a.broker_id,broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
        commandtext:=commandtext+' a.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
        commandtext:=commandtext+' bat_cd='''',amot=cast(a.bod_amot as decimal(15,2)),qty=0,rate=0,rate2=0.00,y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3';   //
        //a.ckd_amot 下面y连接是按单据计算已付款金额，如果tb_bill.ckd_amot准确，可直接使用，否则可使用y连接计算
        commandtext:=commandtext+' ,terminal_id='''',a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
		commandtext:=commandtext+' left join tb_bill_stadtl h on a.bod_id=h.bod_id';
        commandtext:=commandtext+' inner join tb_staff c on a.broker_id=c.sta_id';
        commandtext:=commandtext+' left join tb_busimate f on a.src_id=f.mate_id';
        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
		commandtext:=commandtext+' left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17';
//        if dxEdit1.Text='' then commandtext:=commandtext+' and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';

        commandtext:=commandtext+' left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
        if dxEdit1.Text='' then commandtext:=commandtext+' and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
        commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id';
        commandtext:=commandtext+' where a.bod_type_id=19 and a.bod_status_id=1'; // and a.comp_id='+inttostr(compid);    //a.comp_id='+inttostr(compid)+' and  mate_type_id=1: 医院
        if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and c.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
//        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and m.material_code1=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit4.text)+'''';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=c.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';

        //业务员费用补差记账
        commandtext:=commandtext+' union all select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),c.carry_dt,20) as datetime),bod_desc=''原单据号:''+c.bod_cd,'; //取原单据号
//        commandtext:=commandtext+' union all select h.rec_id,dtl_id=0,a.bod_id,a.bod_type_id,busi_type=0,a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),bod_desc=''原单据号:''+dbo.fn_getbodcd1(a.bod_id),'; //取原单据号
		commandtext:=commandtext+' type_id2=0,e.price1,d.price3,mate_name=dbo.fn_mate_name(c.dst_id),mate_name1=dbo.fn_mate_name(c.src_id),';
//        commandtext:=commandtext+' mate_name=dbo.fn_mate_name(a.dst_id),mate_name1=f.mate_name,';
        commandtext:=commandtext+' lead_id=0,leader=k.BU_SORT1,department=k.VKBUR_TXT,sta_id=a.broker_id,broker=f.zname,cdistrict=dbo.fn_getdistrict1(q.district),receiver1=f.receiver,f.bank_name,f.depo_acco,';
        commandtext:=commandtext+' m.med_id,m.material_code,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
//        commandtext:=commandtext+' med_id=0,material_code='''',med_code='''',med_name='''',specifi='''',pdt_place='''',med_unit='''',type_id1=0,';
        commandtext:=commandtext+' d.bat_cd,amot=cast(b.amot as decimal(15,2)),d.qty,rate=0,rate2=0.00,ckd_amot=0.00,amot1=0.00,amot2=0.00,ckd_amot3=0.00';   //
//        commandtext:=commandtext+' bat_cd='''',amot=cast(a.bod_amot as decimal(15,2)),qty=0,rate=0,rate2=0.00,y.ckd_amot,j.amot1,j.amot2,h.ckd_amot3';   //
        //a.ckd_amot 下面y连接是按单据计算已付款金额，如果tb_bill.ckd_amot准确，可直接使用，否则可使用y连接计算
        commandtext:=commandtext+' ,b.terminal_id,d.channel_id,channel=dbo.fn_obj_desc1(11,d.channel_id),d.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,d.channel_dtl_id)';
        commandtext:=commandtext+' from tb_bill a';
		commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
		commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' inner join tb_staff f on a.broker_id=f.sta_id';

        commandtext:=commandtext+' inner join tb_bill_stadtl x on b.med_id=x.rec_id';
        commandtext:=commandtext+' join tb_bill_dtl d on d.dtl_id=x.dtl_id';
        commandtext:=commandtext+' join tb_bill c on c.bod_id=d.bod_id';
        commandtext:=commandtext+' left join tb_medicine m on d.med_id=m.med_id';
        commandtext:=commandtext+' left join tb_busimate q on c.dst_id=q.mate_id';
        commandtext:=commandtext+' left join (select i.rec_id,i.type_id2,i.price1,j.sta_id,j.rate from tb_brokermed i inner join tb_brokermedtl j on i.rec_id=j.rela_id) e  on e.rec_id =dbo.fn_getbrokermedrecid(c.src_id,c.dst_id,d.med_id,c.carry_dt) and e.sta_id=x.sta_id';
        commandtext:=commandtext+' left join SAP_ZSD_BUS k on k.rec_id=dbo.fn_getSAP_ZSD_BUSrecid(d.channel_id,d.channel_dtl_id,q.district,q.mate_code,m.material_code1,c.carry_dt)';

        //commandtext:=commandtext+' left join tb_busimate f on a.src_id=f.mate_id';
        //commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
		//commandtext:=commandtext+' left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        //commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17';
        //commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';

        //commandtext:=commandtext+' left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+' and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
//        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
        //commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1 and c.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id';
        commandtext:=commandtext+' where a.bod_type_id=57 and a.bod_status_id=1'; // and a.comp_id='+inttostr(compid);    //a.comp_id='+inttostr(compid)+' and  mate_type_id=1: 医院
        if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and x.sta_id='+inttostr(dxbuttonedit4.tag);
        //if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        //	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
//        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and c.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and c.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and m.material_code1=(select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxbuttonedit2.tag)+')';
        //if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.material_code='''+Trim(dxEdit4.text)+'''';
        //if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        //if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=c.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        //if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';


    	commandtext:=commandtext+') y on a.rec_id=y.rec_id'; // order by a.carry_dt,a.bod_id';
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' where y.amot<>isnull(y.ckd_amot,0)';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' where y.amot= y.ckd_amot';

edit2.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
            if mi>0 then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tsetreport10.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetreport10.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport10.N3Click(Sender: TObject);
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

procedure Tsetreport10.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport10.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1sta_id.visible:=false;
dxDBGrid1med_id.visible:=false;
setprogress(0);
end;

procedure Tsetreport10.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport10.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport10.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport10.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport10.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cnot_amot').asfloat:= fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;  //未付款金额
    fieldbyname('camot1').asfloat:= fieldbyname('amot').asfloat-fieldbyname('amot1').asfloat; //未申请金额
    fieldbyname('camot2').asfloat:= fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat; //已审未付金额
{
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
}
end;
end;

procedure Tsetreport10.dxDBGrid1DblClick(Sender: TObject);
begin
with qry do
    if (active=False) or (recordcount=0) then exit;
(Sender as TComponent).Tag:=42;
MainForm.View(Sender);
with Setreport07 do
begin
    dxButtonEdit4.Tag:=qry.fieldbyname('sta_id').asinteger;
    dxButtonEdit4.Text:=qry.fieldbyname('broker').asstring;
    dxButtonEdit1.Tag:=qry.fieldbyname('sta_id').asinteger;
    dxButtonEdit1.Text:=qry.fieldbyname('mate_name').asstring;
    SpeedButton5Click(nil);
end;
end;

procedure Tsetreport10.MenuItem1Click(Sender: TObject);
var i,mi,l,m,n,p,q,j,k,m1 : integer;
    s,t,r,sql: string;
    mcd: string[20];
    mamt1 :real;
begin
if (query1.active=false) or (query1.recordcount=0) then exit;
if dxDBGrid2.SelectedCount<1 then raise Exception.Create('请选择需申请的记录');
s:='------------------------------------';
t :=''; r:=''; sql:=''; mamt1:=0; mi:=0;
l := dxDBGrid2.ColumnByFieldName('bod_type_id').Index;
k := dxDBGrid2.ColumnByFieldName('bod_cd').Index;
j := dxDBGrid2.ColumnByFieldName('broker').Index;
m := dxDBGrid2.ColumnByFieldName('rec_id').Index;
n := dxDBGrid2.ColumnByFieldName('bod_id').Index;
//m := dxDBGrid2.ColumnByFieldName('dtl_id').Index;
p := dxDBGrid2.ColumnByFieldName('Camot1').Index; // Cnot_amot 金额
q := dxDBGrid2.ColumnByFieldName('sta_id').Index;
for i:= 0 to dxDBGrid2.SelectedCount - 1 do
begin
    if i=0 then
    begin
        if dxDBGrid2.SelectedNodes[i].Strings[q]='' then raise Exception.Create('业务员为空，不可申请');
        m1:=dxDBGrid2.SelectedNodes[i].Values[q];
    end
    else
    begin
        if m1<>dxDBGrid2.SelectedNodes[i].Values[q] then raise Exception.Create('同一申请单中，不可包含不同的业务员');
    end;
//    if dxDBGrid2.SelectedNodes[i].Strings[m]<>'' then
//    begin
//showmessage(dxDBGrid2.SelectedNodes[i].Strings[p]);

// insert into tb_bill_dtl (bod_id,med_id,sta_id,price,amot)';

    if (abs(dxDBGrid2.SelectedNodes[i].values[p])>0.005) then
    begin
        s:= s + #13#10+ dxDBGrid2.SelectedNodes[i].Strings[k]+' '+dxDBGrid2.SelectedNodes[i].Strings[j]; //单据类别 + 单据号
        if dxDBGrid2.SelectedNodes[i].Strings[p]<>'' then s:= s + '  '+formatfloat('###,###,##0.00',dxDBGrid2.SelectedNodes[i].values[p]); // 补差金额
        if (dxDBGrid2.SelectedNodes[i].Values[l]=2) then  //出库单
        begin
            t:= t +','+ dxDBGrid2.SelectedNodes[i].Strings[m]; // 记录出库单 tb_bill_stadtl.rec_id 字符串
            sql:=sql+' union all select @id,med_id='+dxDBGrid2.SelectedNodes[i].Strings[m]+',sta_id=0,price='+floattostr(dxDBGrid2.SelectedNodes[i].values[p])+',amot='+floattostr(dxDBGrid2.SelectedNodes[i].values[p]);
        end
        else
        begin
            r:= r +','+ dxDBGrid2.SelectedNodes[i].Strings[n]; // 记录应收记账 tb_bill.bod_id 字符串
            sql:=sql+' union all select @id,med_id=0,sta_id='+dxDBGrid2.SelectedNodes[i].Strings[n]+',price='+floattostr(dxDBGrid2.SelectedNodes[i].values[p])+',amot='+floattostr(dxDBGrid2.SelectedNodes[i].values[p]);
        end;
        if dxDBGrid2.SelectedNodes[i].Strings[p]<>'' then mamt1:=mamt1+ dxDBGrid2.SelectedNodes[i].values[p]; 
        mi := mi+1;
    end;
end;
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计金额:'+formatfloat('###,###,###,##0.00',mamt1);
delete(t,1,1);  //删除 t 首字符 ','
delete(r,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录(完成申请的不可再次申请)');

with dm.pubqry do
begin
    if active then close;
    commandtext:='select distinct top 5 a.bod_cd from tb_bill a,tb_bill_dtl b';
    commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_id=b.bod_id';  // and a.bod_status_id in (0,2,3,4,5)
    if (t<>'') and (r<>'') then commandtext:=commandtext+' and (b.med_id in ('+t+') or b.sta_id in ('+r+'))'
    else if t<>'' then commandtext:=commandtext+'      and b.med_id in ('+t+')'
    else if r<>'' then commandtext:=commandtext+'      and b.sta_id in ('+r+')';
    commandtext:=commandtext+'  and not exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=18 and x.bod_status_id=1 and x.bod_id=y.bod_id and y.med_id=a.bod_id)';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='所选记录已生成下列未完成审核的费用申请付款单，'+ #13#10+'请先处理下列单据'+ #13#10;
        s:=s+'---------------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if t<>'' then
    begin
        if active then close;
        commandtext:='select top 3 a.bod_cd,c.zname,m.med_code,m.med_name,m.specifi from tb_bill a,tb_bill_dtl b,tb_bill_stadtl h,tb_staff c,tb_medicine m ';
        commandtext:=commandtext+' where a.bod_id=b.bod_id and b.dtl_id=h.dtl_id and h.rec_id in ('+t+') and b.med_id=m.med_id';
        commandtext:=commandtext+'	and dbo.fn_getstaruleid1(h.rec_id) is null'; //无有效费用规则
        open;
        if recordcount>0 then
        begin
            s:='下列记录无已启用费用规则,不可申请'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+' '+fieldbyname('zname').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;

        if active then close;
        commandtext:='select top 3 c.zname from tb_bill a,tb_bill_dtl b,tb_bill_stadtl h,tb_staff c ';
        commandtext:=commandtext+' where a.bod_id=b.bod_id and b.dtl_id=h.dtl_id and h.rec_id in ('+t+')';
        commandtext:=commandtext+'	and case when h.sta_id is null then b.sta_id else h.sta_id end=c.sta_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务员已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('zname').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;
{
        commandtext:=' select top 1 bod_cd from (';
        commandtext:=commandtext+' select a.bod_cd,a.bod_id,ckd_amot=dbo.fn_getckdamot(a.bod_id),amot=cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))';
        commandtext:=commandtext+'  from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+'  where a.bod_type_id=2 and h.rec_id in ('+t+')';
        commandtext:=commandtext+'	) a where ckd_amot=amot';
}
        commandtext:=' select top 3 a.bod_cd,amot=cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2)), j.amot1';
        commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b where a.bod_type_id=17  and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id';
        commandtext:=commandtext+' where h.rec_id in ('+t+') and cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))=isnull(j.amot1,0)'; // amot=isnull(j.amot1,0)';
		open;
{
        commandtext:='select top 1 bod_cd';
//        commandtext:='select distinct top 3 bod_cd';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and h.rec_id in ('+t+')';
//        commandtext:=commandtext+'  and i.ckd_amot=b.qty*case when isnull(h.rate,0)=0 then b.dtlrate else h.rate end';
        commandtext:=commandtext+'	and dbo.fn_getckdamot(a.bod_id)=cast(case when isnull(h.rate,0)=0 then b.rate else h.rate end*b.qty as decimal(15,2))';
------------------------------------------------------------------------------------------------------
        commandtext:='select distinct top 3 bod_cd';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
//        commandtext:=commandtext+' left join (select d.med_id,ckd_amot=sum(isnull(cast(d.amot as decimal(15,2)),0)) from tb_bill a,tb_bill_dtl b,tb_bill_dtl d';
        commandtext:=commandtext+' left join (select h.rec_id,ckd_amot=sum(y.amot) ';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_bill x,tb_bill_dtl y';
        commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_status_id=1'; // and a.carry_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id';
        commandtext:=commandtext+'  and a.bod_id=y.med_id and x.bod_type_id=18 and x.bod_status_id=1 and x.bod_id=y.bod_id'; // and a.carry_dt>= '''+datetostr(dxdateedit1.date)+'''
        commandtext:=commandtext+' group by h.rec_id) i on h.rec_id=i.rec_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and h.rec_id in ('+t+')';
        commandtext:=commandtext+'  and i.ckd_amot=b.qty*case when isnull(h.rate,0)=0 then b.dtlrate else h.rate end';
}
    edit3.text:=commandtext;
    //exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='下列单据已完成核销，不可再次申请'+ #13#10;
            s:=s+'-----------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if r<>'' then
    begin
{
        if active then close;
        commandtext:='select top 5 a.bod_cd,c.zname,m.med_code,m.med_name,m.specifi from tb_bill a,tb_staff c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+r+') and a.broker_id=c.sta_id and a.med_id=m.med_id';
        open;
        if recordcount>0 then
        begin
            s:='下列记录无已启用费用规则,不可申请'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('bod_cd').asstring+' '+fieldbyname('zname').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
}        
        if active then close;
        commandtext:='select top 3 c.zname from tb_bill a,tb_staff c ';
        commandtext:=commandtext+' where a.bod_id in ('+r+') and a.broker_id=c.sta_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='所选记录中下列业务员已暂停付款，请与财务确认'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+fieldbyname('zname').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
        if active then close;
{
        commandtext:='select distinct top 3 bod_cd';
        commandtext:=commandtext+' from tb_bill a where bod_id in ('+r+')';
        commandtext:=commandtext+'  and a.bod_amot=a.ckd_amot';
}
        commandtext:='select distinct top 3 bod_cd';
        commandtext:=commandtext+' from tb_bill a';
		commandtext:=commandtext+' inner join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';
        commandtext:=commandtext+' where bod_id in ('+r+') and a.bod_amot=isnull(a.ckd_amot,0)';
    edit2.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='下列单据已完成核销，不可再次申请'+ #13#10;
            s:=s+'-----------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
end;
//if MessageBox(0,Pchar('确定生成下列业务员费用申请付款单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
// 模态
//if messagedlg('确定生成下列业务员费用申请付款单:'+ #13#10+s,mtwarning,[mbyes,mbno],0,)<>id_yes then abort;
//if MessageBox(0,pchar('确定生成下列业务员费用申请付款单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
// 模态
if messagedlg('生成下列业务员费用申请付款单:'+ #13#10+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

mcd:=formatfloat('00000000',getbillid(0,17)); //bod_type_id=17: 业务员费用申请单
with dm.pubqry do
begin
    setprogress(1);
    if active then close;
    commandtext:=' declare @id int';
    commandtext:=commandtext+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,broker_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',17,0,'+inttostr(m1)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @id=@@identity';
{
    open;
    mi:=fields[0].asinteger;
    if active then close;
}
    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,med_id,sta_id,price,amot)';
    commandtext:=commandtext+' select 0,0,0,0,0 where 1=2';
    commandtext:=commandtext+sql;
{
    if t<>'' then
    begin
        if active then close;
//        commandtext:='insert into tb_bill_dtl (bod_id,med_id,sta_id,price,amot)'; //notice: med_id记录销售单dtl_id,fdiff=记录实际核销金额
        commandtext:=commandtext+' union all select @id,h.rec_id,0,';
        commandtext:=commandtext+' price=cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))-isnull(i.ckd_amot,0),';
        commandtext:=commandtext+' amot =cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))-isnull(i.ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join (select d.med_id,ckd_amot=sum(isnull(cast(d.amot as decimal(15,2)),0)) from tb_bill a,tb_bill_dtl b,tb_bill_dtl d';
        commandtext:=commandtext+'  where a.bod_type_id=18 and a.bod_status_id=1 and a.bod_id=b.bod_id and b.med_id=d.bod_id group by d.med_id) i on h.rec_id=i.med_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and h.rec_id in ('+t+')';
    end;
    if r<>'' then
    begin
        if active then close;
//        commandtext:='insert into tb_bill_dtl (bod_id,med_id,sta_id,price,amot)'; //notice: med_id记录销售单dtl_id,fdiff=记录实际核销金额
        commandtext:=commandtext+' union all select @id,0,a.bod_id,';
        commandtext:=commandtext+' price=a.bod_amot-isnull(j.ckd_amot,0),';
        commandtext:=commandtext+' amot =a.bod_amot-isnull(j.ckd_amot,0)';
        commandtext:=commandtext+' from tb_bill a';
		commandtext:=commandtext+' left join (select b.sta_id,ckd_amot=sum(cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';
        commandtext:=commandtext+' where bod_id in ('+r+')'; // and a.bod_amot=isnull(a.ckd_amot,0)';
//    edit2.text:=commandtext;
//        execute;
    end;
}
    edit2.text:=commandtext;
    execute;
    close;
    setprogress(0);
    s:='已成功生成'+mcd+'号业务员费用申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport10.MenuItem3Click(Sender: TObject);
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

procedure Tsetreport10.MenuItem5Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport10.MenuItem6Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid2 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid2sta_id.visible:=false;
dxDBGrid2med_id.visible:=false;
dxDBGrid2rec_id.visible:=false;
//dxDBGrid2dtl_id.visible:=false;
dxDBGrid2bod_id.visible:=false;
dxDBGrid2dtl_id.visible:=false;
setprogress(0);
end;

procedure Tsetreport10.MenuItem8Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
dxDBGrid2bod_id.visible:=false;
dxDBGrid2dtl_id.visible:=false;
end;

procedure Tsetreport10.query1CalcFields(DataSet: TDataSet);
begin
with query1 do
begin
//    fieldbyname('cckd_amot').asfloat:=fieldbyname('ckd_amot').asfloat;
//    if fieldbyname('ckd_amot').asfloat<>0 then fieldbyname('cckd_amot').asfloat:=fieldbyname('amot').asfloat;
    fieldbyname('cnot_amot').asfloat:= fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;  //未付款金额 = 费用金额 - 已付款金额
//    fieldbyname('cnot_amot').asfloat:= fieldbyname('amot').asfloat-fieldbyname('cckd_amot').asfloat;
    fieldbyname('camot1').asfloat:= fieldbyname('amot').asfloat-fieldbyname('amot1').asfloat; //未申请金额
    fieldbyname('camot2').asfloat:= fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat; //已审未付金额
    if fieldbyname('bod_type_id').asinteger=57 then fieldbyname('cbusitype').asstring:='补差记账'
    else
    case fieldbyname('busi_type').asinteger of  //
        0: fieldbyname('cbusitype').asstring:='记账';
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调退';
        4: fieldbyname('cbusitype').asstring:='调销';
    end;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
{
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='省平台';
		2: fieldbyname('cplatform').asstring:='广州GPO';
		3: fieldbyname('cplatform').asstring:='深圳GPO';
    end;
}
{
    fieldbyname('fckdamot2').asboolean := (fieldbyname('ckd_amot2').asfloat<>0)
    	and ((fieldbyname('amot').asfloat>0) and (fieldbyname('ckd_amot2').asfloat>=fieldbyname('amot').asfloat)
        	or (fieldbyname('amot').asfloat<0) and (fieldbyname('ckd_amot2').asfloat<=fieldbyname('amot').asfloat));
}
    fieldbyname('fckdamot3').asboolean := (fieldbyname('ckd_amot3').asfloat<>0)
    	and ((fieldbyname('amot').asfloat>0) and (fieldbyname('ckd_amot3').asfloat>=fieldbyname('amot').asfloat)
        	or (fieldbyname('amot').asfloat<0) and (fieldbyname('ckd_amot3').asfloat<=fieldbyname('amot').asfloat));
//    fieldbyname('camot2').asfloat:= fieldbyname('Cckd_amot').asfloat-fieldbyname('ckd_amot').asfloat;  //已审未付金额”，取值为=已审核金额①—已付款金额③
    fieldbyname('Cprice_diff').asboolean := (fieldbyname('price1').asfloat<>fieldbyname('price3').asfloat)
end;
end;

procedure Tsetreport10.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then wwDBNavigator1.DataSource:= DSqry
    else wwDBNavigator1.DataSource:= DSquery1;
GroupBox2.Visible:=(PageControl1.ActivePage=TabSheet2);
end;

procedure Tsetreport10.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1ckd_amot) then
begin
    if (ANode.Values[dxDBGrid1ckd_amot.Index]=ANode.Values[dxDBGrid1amot.Index]) and (ANode.Values[dxDBGrid1amot.Index]<>0) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid1Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
    end;
    if (ANode.Strings[dxDBGrid1Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
    end;
end;
}
end;

procedure Tsetreport10.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid2bod_cd) or (AColumn = dxDBGrid2ckd_amot) then
begin
    if (ANode.Values[dxDBGrid2ckd_amot.Index]=ANode.Values[dxDBGrid2amot.Index]) and (ANode.Values[dxDBGrid2amot.Index]<>0) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
{
if (AColumn = dxDBGrid2bod_cd) or (AColumn = dxDBGrid2cckd_amot) then
begin
    if (ANode.Values[dxDBGrid2cckd_amot.Index]=ANode.Values[dxDBGrid2amot.Index]) and (ANode.Values[dxDBGrid2amot.Index]<>0) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
}
if (AColumn = dxDBGrid2Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '退货') then
    begin
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '调退') then
    begin
        AFont.Color := clMaroon;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '调销') then
    begin
        AFont.Color := clPurple;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '记账') then
    begin
        AFont.Color := clHighlight; //$00F4A500; //$00FFB313;
    end;
    if (ANode.Strings[dxDBGrid2Cbusitype.Index] = '补差记账') then
    begin
//        AFont.Color := $00FAFAAB;
        AColor := $00FAFAAB;
    end;
end;
if (AColumn = dxDBGrid2Cprice_diff) then
begin
    if (ANode.Values[dxDBGrid2Cprice_diff.Index] =True) then AColor := $00DDDDFF; //<- light red    $00ABFCA9; <- light green
end;
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
{
if (AColumn = dxDBGrid2fckdamot3) then
begin
    if (ANode.Values[dxDBGrid2fckdamot3.Index] =True) then AColor := $00ABFCA9;
end;
if (AColumn = dxDBGrid2leader) then
begin
    if (ANode.values[dxDBGrid2dtl_id.Index] > 0) then
    begin
        AColor := $00CAFDFD;
    end;
end;
if (AColumn = dxDBGrid2Ctype2) then
begin
    if (ANode.Strings[dxDBGrid2Ctype2.Index] = '已办个户') then
    begin
        AColor := $00D7FDD8; //$00CAFDFD;
    end;
end;
}
end;

procedure Tsetreport10.query1AfterPost(DataSet: TDataSet);
begin
if query1.ChangeCount>0 then myupdaterefresh(query1,'tb_bill_stadtl','rec_id','');
end;

procedure Tsetreport10.N7Click(Sender: TObject);
{
var i,mi,bodid,j,k,p,q,r: integer;
    s,s1,s2,s3: string;
    mamt:real;
}
begin
{
if (query1.active=false) or (query1.recordcount=0) then exit;
if dxDBGrid2.SelectedCount<1 then raise Exception.Create('请选择需申请的记录');
s:=#13#10+ '--------------------------------------------';
s1:=''; s3:=''; mamt:=0; mi:=0;
j := dxDBGrid2.ColumnByFieldName('broker').Index;
k := dxDBGrid2.ColumnByFieldName('bod_cd').Index;
p := dxDBGrid2.ColumnByFieldName('amot').Index; //金额
r := dxDBGrid2.ColumnByFieldName('rec_id').Index;
for i:= 0 to dxDBGrid2.SelectedCount - 1 do
begin
    s:= s + #13#10+ dxDBGrid2.SelectedNodes[i].Strings[k]+' '+dxDBGrid2.SelectedNodes[i].Strings[j]; //单据类别 + 单据号
    if dxDBGrid2.SelectedNodes[i].Strings[p]<>'' then s:= s + '  '+formatfloat('###,###,##0.00',dxDBGrid2.SelectedNodes[i].values[p]); // 金额
    if dxDBGrid2.SelectedNodes[i].Strings[p]<>'' then mamt:=mamt+ dxDBGrid2.SelectedNodes[i].values[p];    // 记录 补差金额 fdiff
    if s1='' then s1:=dxDBGrid2.SelectedNodes[i].Strings[q] else s1:= s1 +','+ dxDBGrid2.SelectedNodes[i].Strings[q];  // 记录 bod_id 字符串
    s3:=s3+' update tb_bill_stadtl set ckd_amot3='+floattostr(dxDBGrid2.SelectedNodes[i].values[p])+' where rec_id='+dxDBGrid2.SelectedNodes[i].Strings[r];
    mi := mi+1;
end;
if mi=0 then raise Exception.Create('无可完成合规资料记录');
s:=s+ #13#10+'--------------------------------------------';
s:=s+ #13#10+'合计金额:     '+formatfloat('###,###,###,##0.00',mamt);
if messagedlg('下列单据完成合规资料:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:=s3;
    execute;
    edit2.text:=commandtext;
    r:= dxDBGrid2.ColumnByFieldName('rec_id').Index;  //tb_bill_stadtl.rec_id
    for i:= 0 to dxDBGrid2.SelectedCount - 1 do
    begin
    	query1.locate('rec_id',dxDBGrid2.SelectedNodes[i].values[r],[]);
    	refreshmyrecord(query1,dm.Refreshcds,0,'a.rec_id', dxDBGrid2.SelectedNodes[i].values[r]);
        mi := mi+1;
    end;
end;
setprogress(0);
MessageBox(0,pchar('已成功完成合规资料'),'请注意',MB_OK+MB_ICONInformation);
}
end;

procedure Tsetreport10.dxDBGrid2leaderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var id,dtlid,recid: integer;
begin
if query1.FieldByName('lead_id').asinteger=0 then exit;
if pickmanager.showmodal= mrOK then
begin
	setprogress(1);
    dtlid:=query1.FieldByName('dtl_id').asinteger;
    recid:=query1.FieldByName('rec_id').asinteger;
    id:=pickmanager.query1.fieldbyname('sta_id').asinteger;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='update tb_bill_dtl set lead_id='+inttostr(id)+' where dtl_id='+query1.fieldbyname('dtl_id').asstring;
    edit1.text:=commandtext;
        execute;
    end;
    query1.Locate('dtl_id',dtlid,[]);
    while (not query1.eof) and (dtlid=query1.FieldByName('dtl_id').asinteger) do
    begin
        refreshmyrecord(query1,dm.Refreshcds,0,'rec_id',query1.fieldbyname('rec_id').asinteger);
        query1.next;
    end;
    query1.Locate('rec_id',recid,[]);
	setprogress(0);
end;
//refreshmyrecord(query1,dm.Refreshcds,0,'a.bod_id',query1.fieldbyname('bod_id').asinteger);
end;

procedure Tsetreport10.N9Click(Sender: TObject);
begin
with query1 do
	if (active=False) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active then close;
	CommandText:='sp_updatebod2mate '+query1.fieldbyname('bod_id').asstring;
	Execute;
end;
refreshmyrecord(query1,dm.Refreshcds,0,'a.bod_id',query1.fieldbyname('bod_id').asinteger);
end;

procedure Tsetreport10.dxDBGrid2Click(Sender: TObject);
var amt: real;
    i,p: integer;
begin
with dxDBGrid2 do
begin
    label12.caption:=formatfloat('笔数:###',SelectedCount);
    p := ColumnByFieldName('Cnot_amot').Index;
    amt:=0;
    for i:= 0 to SelectedCount - 1 do
    begin
        if pos(':',SelectedNodes[i].Strings[p])=0 then// continue; //非合计行
        begin
            amt:=amt+ SelectedNodes[i].Values[p];
        end;
        next;
    end;
    label13.caption:='金额:'+formatfloat('###,###,##0.00',amt);
end;
end;

procedure Tsetreport10.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport10.dxDBGrid2SelectedCountChange(Sender: TObject);
var amt: real;
    i,p: integer;
begin
with dxDBGrid2 do
begin
    label12.caption:=formatfloat('笔数:###',SelectedCount);
    p := ColumnByFieldName('Cnot_amot').Index;
    amt:=0;
    for i:= 0 to SelectedCount - 1 do
    begin
        if pos(':',SelectedNodes[i].Strings[p])=0 then// continue; //非合计行
        begin
            amt:=amt+ SelectedNodes[i].Values[p];
        end;
        next;
    end;
    label11.caption:='金额:'+formatfloat('###,###,##0.00',amt);
end;
end;

procedure Tsetreport10.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure Tsetreport10.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

procedure Tsetreport10.dxLookupTreeView1DropDown(Sender: TObject);
begin
(Sender as TdxLookupTreeView).width:=150;
setprogress(1);
end;

procedure Tsetreport10.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetreport10.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
(Sender as TdxLookupTreeView).width:=98;
end;

end.
