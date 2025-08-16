unit Unit66;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  ImgList, dxdbtrel, Menus;

type
  Tsetreport09 = class(TForm)
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
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1Camot: TdxDBGridMaskColumn;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    ImageList1: TImageList;
    dxDBGrid1med_code: TdxDBGridColumn;
    Edit1: TEdit;
    ADOQuery1mate_name: TStringField;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1src_id: TIntegerField;
    ADOQuery1dst_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1med_type: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1qtyperbox: TBCDField;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrymed_type: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryqtyperpack: TBCDField;
    qryqtyperbox: TBCDField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrydtl_id: TAutoIncField;
    qryckd_amot2: TBCDField;
    dxDBGrid1ckd_amot2: TdxDBGridColumn;
    Label13: TLabel;
    qryprice: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    qrybod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    qryprice2: TBCDField;
    qryprice3: TBCDField;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1price3: TdxDBGridColumn;
    qryf2: TBCDField;
    dxDBGrid1f2: TdxDBGridColumn;
    qryCfee: TBCDField;
    qrycamot: TBCDField;
    dxDBGrid1Cfee: TdxDBGridColumn;
    dxDBGrid1Cnotckdamot: TdxDBGridColumn;
    qryCnotckdamot: TBCDField;
    qrycdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    qryfee1: TBCDField;
    qryfee2: TBCDField;
    qryfee3: TBCDField;
    qrydt1: TDateTimeField;
    qrydt2: TDateTimeField;
    qrydt3: TDateTimeField;
    qrydt4: TDateTimeField;
    dxDBGrid1fee1: TdxDBGridColumn;
    dxDBGrid1dt1: TdxDBGridColumn;
    dxDBGrid1fee3: TdxDBGridColumn;
    dxDBGrid1dt3: TdxDBGridColumn;
    dxDBGrid1dt4: TdxDBGridColumn;
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
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
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
  setreport09: Tsetreport09;

implementation

uses datamodu, Unit16, Unit7, Unit28, Unit16a;

{$R *.DFM}

procedure Tsetreport09.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport09.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport09.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport09.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport09.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport09.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport09.SpeedButton5Click(Sender: TObject);
var mi: integer;
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
//   每月医院流向数量 X 中标价(或供货价) X 托管费率 = 每月托管费
//   此公式中取中标价还是供货价，由设置托管费规则时选择
//   医院托管费统计表：商业公司 医院 品种 托管费金额
    commandtext:='select h.*,cdistrict=dbo.fn_getdistrict(h.district),mate_name=dbo.fn_mate_name(h.src_id),m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,';   //mate_name1=dbo.fn_mate_name(h.dst_id),
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,m.qtyperbox';
    commandtext:=commandtext+' from (select a.carry_dt,a.bod_cd,a.src_id,a.dst_id,mate_name1=c.mate_name,c.district,a.bod_desc,b.med_id,b.price,b.price2,b.price3,r.f2,r.fee1,r.dt1,r.fee2,r.dt2,r.fee3,r.dt3,r.dt4,';
    commandtext:=commandtext+'  dtl_id=min(b.dtl_id),qty=sum(b.qty),amot=sum(cast(case r.level_id when 1 then r.f4 when 2 then b.price end*b.qty*r.f1/100 as decimal(15,2))),ckd_amot2=sum(isnull(b.ckd_amot2,0))';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_busimate c on a.dst_id=c.mate_id and c.mate_type_id=1';
    commandtext:=commandtext+' inner join tb_sysrule r on r.rec_id=dbo.fn_getsysrulerecid4(a.src_id,a.dst_id,b.med_id,a.carry_dt)'; // and r.comp_id='+inttostr(compid);
//    commandtext:=commandtext+' inner join tb_sysrule r on a.src_id=r.mate_id and a.dst_id=r.mate_id1 and b.med_id=r.med_id and r.valid=1'; // and r.comp_id='+inttostr(compid);
    commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1'; // and a.comp_id='+inttostr(compid);
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    if Trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+'  group by a.carry_dt,a.bod_cd,a.src_id,a.dst_id,c.mate_name,c.district,a.bod_desc,b.med_id,b.price,b.price2,b.price3,r.f2,r.fee1,r.dt1,r.fee2,r.dt2,r.fee3,r.dt3,r.dt4) h';
    commandtext:=commandtext+'  left join tb_medicine m on h.med_id=m.med_id';
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

procedure Tsetreport09.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreport09.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport09.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetreport09.N3Click(Sender: TObject);
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

procedure Tsetreport09.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport09.N2Click(Sender: TObject);
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

procedure Tsetreport09.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport09.N7Click(Sender: TObject);
var i,mi,l,b,m,n,r,o,p,q,j,k,y,u,v: integer;
    s,t: string;
    mcd: string[20];
    mamt1 :real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
if dxDBGrid1.SelectedCount<1 then raise Exception.Create('请选择需申请的记录');
s:='------------------------------------';
t :=''; mamt1:=0; mi:=0;
j := dxDBGrid1.ColumnByFieldName('mate_name').Index;
k := dxDBGrid1.ColumnByFieldName('mate_name1').Index;
y := dxDBGrid1.ColumnByFieldName('med_name').Index;
m := dxDBGrid1.ColumnByFieldName('src_id').Index;
n := dxDBGrid1.ColumnByFieldName('dst_id').Index;
q := dxDBGrid1.ColumnByFieldName('dtl_id').Index;
//q := dxDBGrid1.ColumnByFieldName('med_id').Index;
p := dxDBGrid1.ColumnByFieldName('camot').Index; //金额
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
            if r<>dxDBGrid1.SelectedNodes[i].Values[m] then raise Exception.Create('同一张申请单中不可包含不同商业公司的单据');
            if l<>dxDBGrid1.SelectedNodes[i].Values[n] then raise Exception.Create('同一张申请单中不可包含不同医院的单据');
        end;
        s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[j]+' '+dxDBGrid1.SelectedNodes[i].Strings[k]+' '+dxDBGrid1.SelectedNodes[i].Strings[y]; //单据类别 + 单据号
        if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then s:= s + '  '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[p]); // 补差金额
        t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[q];  // 记录 dtl_id 字符串
        if dxDBGrid1.SelectedNodes[i].Strings[p]<>'' then mamt1:=mamt1+ dxDBGrid1.SelectedNodes[i].values[p];    // 记录 补差金额 fdiff
        mi := mi+1;
    end;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计金额:'+formatfloat('###,###,###,##0.00',mamt1);
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
    commandtext:=commandtext+' where a.bod_type_id=16 and a.bod_status_id in (0,2,3,4) and a.bod_id=b.bod_id';
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
        s:='所选记录已生成了待审核状态的托管费申请单，'+ #13#10+'请先处理下列单据'+ #13#10;
        s:=s+'-----------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'号托管费申请单:'+fieldbyname('bod_cd1').asstring+'号';
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;
}
if MessageBox(0,Pchar('确定由下列记录中未完成核销的记录生成托管费申请单:'+ #13#10+s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,16)); //bod_type_id=16: 托管费申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',16,0,'+inttostr(r)+','+inttostr(l)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    if active=true then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,qty,price,amot)'; //notice: med_id记录销售单dtl_id,fdiff=记录实际核销金额
    commandtext:=commandtext+' select '+inttostr(mi)+',b.dtl_id,b.qty,';
    commandtext:=commandtext+' cast(round(r.f2/100*b.price3*b.qty,2) - isnull(ckd_amot2,0) as decimal(15,2)),';
    commandtext:=commandtext+' cast(round(r.f2/100*b.price3*b.qty,2) - isnull(ckd_amot2,0) as decimal(15,2))';
    commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_busimate c on a.dst_id=c.mate_id and c.mate_type_id=1';
//    commandtext:=commandtext+' left join tb_sysrule r on a.src_id=r.mate_id and a.dst_id=r.mate_id1 and b.med_id=r.med_id'; // and r.comp_id='+inttostr(compid);
    commandtext:=commandtext+' inner join tb_sysrule r on r.rec_id=dbo.fn_getsysrulerecid4(a.src_id,a.dst_id,b.med_id,a.carry_dt)'; // and r.comp_id='+inttostr(compid);
	commandtext:=commandtext+' where a.bod_type_id=2 and a.bod_status_id=1';
//    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and b.dtl_id in ('+t+')';
    commandtext:=commandtext+'  and round(r.f2/100*b.price3*b.qty,2) <>  isnull(ckd_amot2,0) '; //
//    commandtext:=commandtext+'  and case r.level_id when 1 then r.f4 when 2 then b.price end*b.qty*r.f1/100 <> isnull(ckd_amot2,0)';
edit1.text:=commandtext;
    execute;
    if active=true then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号托管费申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreport09.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cfee').asfloat:=fieldbyname('f2').asfloat/100*fieldbyname('price3').asfloat;
    fieldbyname('camot').asfloat:=round(100*fieldbyname('cfee').asfloat*fieldbyname('qty').asfloat)/100;
    fieldbyname('Cnotckdamot').asfloat:=fieldbyname('camot').asfloat-fieldbyname('ckd_amot2').asfloat;
end;
end;

procedure Tsetreport09.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1ckd_amot2) then
begin
    if (ANode.Values[dxDBGrid1camot.Index]=ANode.Values[dxDBGrid1ckd_amot2.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

end.
