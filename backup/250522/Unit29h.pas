unit Unit29h;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, mycds, Menus;

type
  Tsetreport10c = class(TForm)
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
    Shape7: TShape;
    Label6: TLabel;
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
    qrymed_id: TIntegerField;
    qryspecifi: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryreceiver1: TStringField;
    qrybank_name: TStringField;
    qrydepo_acco: TStringField;
    qrycdistrict: TStringField;
    Label13: TLabel;
    ADOQuery1amot1: TBCDField;
    Edit2: TEdit;
    qrytype_id1: TWordField;
    qryCtypeid1: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    qryBCDField: TBCDField;
    qryBCDField2: TBCDField;
    qryFloatField: TFloatField;
    qryBCDField3: TBCDField;
    qryckd_amot: TBCDField;
    qryCnot_amot: TFloatField;
    Shape8: TShape;
    qrybal0: TBCDField;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1bal0: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1amot2: TdxDBGridColumn;
    dxDBGrid1ckd_amot: TdxDBGridColumn;
    dxDBGrid1Cnot_amot: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    dxDBGrid1sta_id: TdxDBGridMaskColumn;
    dxDBGrid1med_id: TdxDBGridColumn;
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
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDateEdit1DblClick(Sender: TObject);
    procedure dxDateEdit2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport10c: Tsetreport10c;

implementation

uses datamodu, Unit28, Unit16, Unit7, Unit16a, main, Unit54, Unit28c;

{$R *.DFM}

procedure Tsetreport10c.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport10c.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport10c.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport10c.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
    speedbutton2.enabled:=(active) and (recordcount>0)
end;

procedure Tsetreport10c.FormCreate(Sender: TObject);
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

procedure Tsetreport10c.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetreport10c.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
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
        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
        commandtext:=commandtext+' b.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
        commandtext:=commandtext+' amot=sum(cast(case when h.rate is null then b.rate else h.rate end*b.qty as decimal(15,2))),';
        commandtext:=commandtext+' ckd_amot=sum(isnull(y.ckd_amot,0)),amot1=sum(j.amot1),amot2=sum(j.amot2)';
//        commandtext:=commandtext+' ckd_amot=sum(isnull(h.ckd_amot,0)),amot1=sum(j.amot1),amot2=sum(j.amot2)';
        commandtext:=commandtext+' into #tmp from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' inner join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
//        commandtext:=commandtext+' left join tb_bill_stadtl h on b.dtl_id=h.dtl_id';
        commandtext:=commandtext+' left join tb_staff c on h.sta_id=c.sta_id';
        commandtext:=commandtext+' inner join tb_busimate e on a.dst_id=e.mate_id';
        commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
        commandtext:=commandtext+' left join (select b.med_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id and b.med_id>0 group by b.med_id) j on h.rec_id=j.med_id';
        commandtext:=commandtext+' left join (select b.med_id,ckd_amot=sum(cast(b.amot as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
        commandtext:=commandtext+'  and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+'  and c.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.med_id) y on h.rec_id=y.med_id';
        commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1 and a.comp_id='+inttostr(compid)+' and e.mate_type_id=1 ';    //mate_type_id=1: 医院
        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
//        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';

    //    commandtext:=commandtext+'      and '; //tb_bill_stadtl表为依据业务成员表tb_brokermedtl中的业务成员提成规则，
                                                                //在计算提成款时，生成具体单据明细对业务成员的提成记录
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and (b.sta_id='+inttostr(dxbuttonedit4.tag)+' or h.sta_id='+inttostr(dxbuttonedit4.tag)+')';
//        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and h.sta_id='+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';

        if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';

        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
        commandtext:=commandtext+' group by h.sta_id,'; //a.dst_id,e.mate_name,';
        commandtext:=commandtext+'  c.zname,dbo.fn_getdistrict(c.district),c.receiver,c.bank_name,c.depo_acco,';
        commandtext:=commandtext+'  b.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place,dbo.fn_obj_desc(m.unit_id),m.type_id1';
{
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' having sum(cast(b.qty*case when h.rate is null then b.rate else h.rate end as decimal(15,2)))<>sum(isnull(h.ckd_amot,0))';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' having sum(cast(b.qty*case when h.rate is null then b.rate else h.rate end as decimal(15,2)))=sum(isnull(h.ckd_amot,0))';
        if not dxCheckEdit1.checked then
        begin
        	if RadioGroup1.ItemIndex=0
            	then commandtext:=commandtext+' having sum(b.qty*case when h.rate is null then b.rate else h.rate end)<>0'
            	else commandtext:=commandtext+' and sum(b.qty*case when h.rate is null then b.rate else h.rate end)<>0';
        end;
}
        commandtext:=commandtext+' union all select bal0=0.00,sta_id=broker_id,';
        commandtext:=commandtext+' broker=c.zname,cdistrict=dbo.fn_getdistrict(c.district),receiver1=c.receiver,c.bank_name,c.depo_acco,';
        commandtext:=commandtext+' a.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.type_id1,';
        commandtext:=commandtext+' amot=a.bod_amot,y.ckd_amot,j.amot1,j.amot2';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' inner join tb_staff c on a.broker_id=c.sta_id';
		commandtext:=commandtext+' left join (select b.sta_id,amot1=sum(cast(isnull(b.amot,0) as decimal(15,2))),amot2=sum(case a.bod_status_id when 1 then 1 else 0 end*cast(isnull(b.amot,0) as decimal(15,2)))';
        commandtext:=commandtext+' 	from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id and b.sta_id>0 group by b.sta_id) j on a.bod_id=j.sta_id';
        commandtext:=commandtext+' left join (select b.sta_id,ckd_amot=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=17 and a.bod_status_id=1';
//        if dxEdit1.Text='' then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id';
		commandtext:=commandtext+' 	and exists (select 1 from tb_bill c,tb_bill_dtl d where c.bod_type_id=18 and c.bod_status_id=1';
        commandtext:=commandtext+' and c.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
//        if dxEdit1.Text='' then commandtext:=commandtext+' and c.creat_dt>= '''+datetostr(dxdateedit1.date)+'''';
        commandtext:=commandtext+'  and c.bod_id=d.bod_id and d.med_id=a.bod_id) group by b.sta_id) y on a.bod_id=y.sta_id';

        commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=19 and a.bod_status_id=1';    //mate_type_id=1: 医院
        if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and c.sta_id='+inttostr(dxbuttonedit4.tag);
        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
{
        if Trim(dxEdit1.text)='' then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        	else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
}
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+DM.district.fieldbyname('rec_id').asstring+')>0 ';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=c.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
{
        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' and a.bod_amot<>isnull(a.ckd_amot,0)';
        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' and a.bod_amot=a.ckd_amot';
}
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
end;

procedure Tsetreport10c.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetreport10c.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport10c.N3Click(Sender: TObject);
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

procedure Tsetreport10c.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport10c.N2Click(Sender: TObject);
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

procedure Tsetreport10c.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport10c.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport10c.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport10c.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport10c.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cnot_amot').asfloat:= fieldbyname('amot').asfloat-fieldbyname('ckd_amot').asfloat;  //未付款金额
    fieldbyname('camot1').asfloat:= fieldbyname('amot').asfloat-fieldbyname('amot1').asfloat; //未申请金额
    fieldbyname('camot2').asfloat:= fieldbyname('amot2').asfloat-fieldbyname('ckd_amot').asfloat; //已审未付金额

    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
end;
end;

procedure Tsetreport10c.dxDBGrid1DblClick(Sender: TObject);
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

procedure Tsetreport10c.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetreport10c.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure Tsetreport10c.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

end.
