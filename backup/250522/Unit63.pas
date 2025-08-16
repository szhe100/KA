unit Unit63;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  ImgList, dxdbtrel, Menus;

type
  Tsetreport08 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
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
    dxDBGrid1level2: TdxDBGridDateColumn;
    dxDBGrid1f1: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1fdiff: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1f3: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit4: TdxButtonEdit;
    ImageList1: TImageList;
    dxDBGrid1f2: TdxDBGridColumn;
    dxDBGrid1f4: TdxDBGridColumn;
    Edit1: TEdit;
    qrydtl_id: TAutoIncField;
    qrybod_cd: TStringField;
    qrylevel2: TStringField;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    qrydistrict: TStringField;
    qrydistrict1: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryf1: TBCDField;
    qryf2: TBCDField;
    qryf3: TBCDField;
    qryf4: TBCDField;
    qryfdiff: TBCDField;
    qrycarry_dt: TDateTimeField;
    qrycreat_dt: TDateTimeField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrybat_cd: TStringField;
    qrybroker: TStringField;
    qrycreater: TStringField;
    qryfprice: TBCDField;
    dxDBGrid1fprice: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    qryckd_amot1: TBCDField;
    qryckd_amot2: TBCDField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    ADOQuery1src_id: TIntegerField;
    ADOQuery1dst_id: TIntegerField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1ckd_amot1: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
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
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport08: Tsetreport08;

implementation

uses datamodu, Unit16a, Unit7, Unit28;

{$R *.DFM}

procedure Tsetreport08.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport08.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport08.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport08.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport08.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport08.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport08.SpeedButton5Click(Sender: TObject);
var mi: integer;  //si,
//    ss: string[12];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select b.dtl_id,b.bod_id,level2=dbo.fn_obj_desc(a.level_id2),mate_name1=dbo.fn_mate_name(a.src_id),a.bod_cd,a.src_id,a.dst_id,a.bod_desc,m.med_code,m.med_name,m.specifi,m.pdt_place,m.qtyperpack,';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),e.mate_name,c.f1,c.f2,c.f3,c.f4,b.ckd_amot1,b.ckd_amot2,'; //fdiff=0.00,
    commandtext:=commandtext+' fprice=cast( ((100-c.f2)*c.f3/100-c.f1) as decimal(15,2)),';
    commandtext:=commandtext+' fdiff=cast(b.qty*((100-c.f2)*c.f3/100-c.f1) as decimal(15,2)),';
//补差 = (1级供货价-2级调拨价-2级调拨价X调拨率)X数量
    commandtext:=commandtext+' district=dbo.fn_getdistrict(e.district),district1=dbo.fn_getdistrict(f.district),agent=dbo.fn_mate_name(a.src_id),';
    commandtext:=commandtext+' carry_dt=a.carry_dt,a.creat_dt,';
    commandtext:=commandtext+' b.med_id,b.price,b.qty,amot=cast(b.price*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' b.bat_cd,broker=dbo.fn_staff_name(b.sta_id),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine m on b.med_id=m.med_id';
    commandtext:=commandtext+' inner join tb_busimate e on a.dst_id=e.mate_id and e.mate_type_id=2';
    commandtext:=commandtext+' left join tb_staff f on b.sta_id=f.sta_id';
    commandtext:=commandtext+' left join tb_sysrule c on a.dst_id=c.mate_id1 and b.med_id=c.med_id'; // and c.valid =1'; // c.comp_id=a.comp_id and
//    commandtext:=commandtext+' left join tb_sysrule c on a.src_id=c.mate_id and a.dst_id=c.mate_id1 and b.med_id=c.med_id'; // and c.valid =1'; // c.comp_id=a.comp_id and
    commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1';  //a.comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    if not dxCheckEdit1.checked then commandtext:=commandtext+' and c.f3<>0';
//    if not dxCheckEdit1.checked then commandtext:=commandtext+' and b.price<>0';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport08.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport08.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport08.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport08.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=pickbroker.query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=pickbroker.query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetreport08.N3Click(Sender: TObject);
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

procedure Tsetreport08.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport08.N2Click(Sender: TObject);
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
setprogress(0);
end;

procedure Tsetreport08.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport08.N7Click(Sender: TObject);
var i,mi,l,b,m,n,r,o,p,q,j,k,y,u,v: integer;
    s,t: string;
    mcd: string[20];
    mamt1 :real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
if dxDBGrid1.SelectedCount<1 then raise Exception.Create('请选择需申请的记录');
s:='------------------------------------';
t :=''; mamt1:=0; mi:=0;
j := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
m := dxDBGrid1.ColumnByFieldName('src_id').Index;
n := dxDBGrid1.ColumnByFieldName('dst_id').Index;
q := dxDBGrid1.ColumnByFieldName('dtl_id').Index;
p := dxDBGrid1.ColumnByFieldName('fdiff').Index; //补差金额
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if 1=1 then
//    if (dxDBGrid1.SelectedNodes[i].values[p]<>0) then
    begin
        if mi=0 then
        begin
            r:=dxDBGrid1.SelectedNodes[i].Values[m];
            l:=dxDBGrid1.SelectedNodes[i].Values[n];
        end
        else
        begin
            if r<>dxDBGrid1.SelectedNodes[i].Values[m] then raise Exception.Create('同一张申请单中不可包含不同一级经销商的单据');
            if l<>dxDBGrid1.SelectedNodes[i].Values[n] then raise Exception.Create('同一张申请单中不可包含不同配送公司的单据');
        end;
        s:= s + #13#10+ '销售单: '+dxDBGrid1.SelectedNodes[i].Strings[j]; //单据类别 + 单据号
        if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then s:= s + '     '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[p]); // 补差金额
        t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[q];  // 记录 dtl_id 字符串
        if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then mamt1:=mamt1+ dxDBGrid1.SelectedNodes[i].values[p];    // 记录 补差金额 fdiff
        mi := mi+1;
    end;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录(可能已完成收款)');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计金额:'+formatfloat('###,###,###,##0.00',mamt1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
    commandtext:=commandtext+' where a.bod_type_id=15 and a.bod_status_id in (0,2,3,4) and a.bod_id=b.bod_id';
    commandtext:=commandtext+'  and b.med_id in ('+t+') and b.med_id=d.dtl_id and c.bod_id=d.bod_id';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='所选记录已生成了待审核状态的调拨费申请单，'+ #13#10+'请先处理下列单据'+ #13#10;
        s:=s+'-----------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'号调拨费申请单:'+fieldbyname('bod_cd1').asstring+'号';
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;
if MessageBox(0,Pchar('确定由下列记录生成调拨费申请单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,15)); //bod_type_id=15: 调拨费申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,broker_id,src_id,dst_id,district_id,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 comp_id,'''+mcd+''',15,0,broker_id,src_id,dst_id,district_id,creat_by='+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'  from tb_bill a,tb_bill_dtl b where a.bod_id=b.bod_id and b.dtl_id in ('+t+')';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    if active=true then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot)'; //notice: med_id记录销售单dtl_id,fdiff=记录实际核销金额
    commandtext:=commandtext+' select '+inttostr(mi)+',b.dtl_id,';
    commandtext:=commandtext+' cast(b.qty*((100-c.f2)*c.f3/100-c.f1) - isnull(ckd_amot1,0) as decimal(15,2)),';
    commandtext:=commandtext+' cast(b.qty*((100-c.f2)*c.f3/100-c.f1) - isnull(ckd_amot1,0) as decimal(15,2))';
//补差 = (1级供货价-2级调拨价-2级调拨价X调拨率)X数量
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' left join tb_sysrule c on c.comp_id=a.comp_id and a.src_id=c.mate_id and a.dst_id=c.mate_id1 and b.med_id=c.med_id and c.valid =1';
    commandtext:=commandtext+' where b.dtl_id in ('+t+')';
    commandtext:=commandtext+'  and b.qty*((100-c.f2)*c.f3/100-c.f1) <> isnull(ckd_amot1,0)';
edit1.text:=commandtext;
    execute;
    if active=true then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号调拨费申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

end.
