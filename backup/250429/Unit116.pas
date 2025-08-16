unit Unit116;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, dxDBGrid,
  dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, Buttons;

type
  Tqryreport20 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    qrycarry_dt: TDateTimeField;
    qrybod_type_id: TIntegerField;
    qrybod_cd: TStringField;
    qrybod_desc: TStringField;
    qrybroker: TStringField;
    qryamot: TBCDField;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1zdesc: TdxDBGridMaskColumn;
    qrycreater: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qrybod_id: TIntegerField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1carry_dt_1: TDateTimeField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1amot: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1due: TBCDField;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    Edit1: TEdit;
    qrycate_id: TWordField;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit5: TdxButtonEdit;
    Label1: TLabel;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    Label2: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Shape5: TShape;
    Label5: TLabel;
    Shape7: TShape;
    Label6: TLabel;
    Shape8: TShape;
    qrybod_cd1: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1Cqty: TdxDBGridColumn;
    dxDBGrid1invo_cd: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrydtl_id: TAutoIncField;
    Shape4: TShape;
    Label3: TLabel;
    dxEdit1: TdxEdit;
    qryinvo_cd: TStringField;
    qryinvo_dt: TDateTimeField;
    qryzdesc: TStringField;
    dxDBGrid1invo_dt: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    qryprice1: TBCDField;
    qryCqty: TBCDField;
    qryamot1: TBCDField;
    dxDBGrid1amot1: TdxDBGridColumn;
    qryvalid_dt: TDateTimeField;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    Shape6: TShape;
    Label7: TLabel;
    dxEdit2: TdxEdit;
    qryCnot_amot: TBCDField;
    dxDBGrid1Cnot_amot: TdxDBGridColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qryagent_id: TAutoIncField;
    dxDBGrid1src_id: TdxDBGridColumn;
    dxDBGrid1dst_id: TdxDBGridColumn;
    dxDBGrid1agent_id: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1cate_id: TdxDBGridColumn;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    qryamot5: TBCDField;
    dxDBGrid1amot5: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    qryreceipt_dt: TDateTimeField;
    dxDBGrid1receipt_dt: TdxDBGridColumn;
    qryvalid_dt1: TDateTimeField;
    dxDBGrid1valid_dt1: TdxDBGridColumn;
    qrystorage_dt: TDateTimeField;
    dxDBGrid1storage_dt: TdxDBGridColumn;
    qryCbusitype: TStringField;
    qrybusi_type: TIntegerField;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    qryCqty1: TIntegerField;
    dxDBGrid1Cqty1: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N7Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxEdit2Enter(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport20: Tqryreport20;

implementation

uses datamodu, Unit16a, Unit7, Unit9;

{$R *.DFM}

procedure Tqryreport20.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport20.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport20.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport20.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport20.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport20.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport20.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
//if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择业务员');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select b.dtl_id,a.bod_id,a.bod_cd,bod_cd1=c.bod_cd,c.busi_type,a.bod_type_id,a.bod_status_id,a.cate_id,a.src_id,a.dst_id,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' a.bod_desc,mate_name1=h.mate_name,mate_name2=j.mate_name,c.agent_id,agent=p.mate_name,';   //c.src_id, c.dst_id,
    commandtext:=commandtext+' carry_dt=cast(convert(char(10),c.carry_dt,20) as datetime),a.creat_dt,a.receipt_dt,';  //a.busi_type,
    commandtext:=commandtext+' b.qty,b.discount,b.price,b.price1,b.price2,amot=round(b.amot,2),k.storage_dt,k.amot1,i.amot5,';  //b.qty,b.discount, sqty=cast(case when c.busi_type=3 then 0 else 1 end*b.qty as decimal(15,4)),b.amot,
    commandtext:=commandtext+' m.med_code,m.med_name,m.specifi,m.pdt_place,m.qtyperpack,med_unit=dbo.fn_obj_desc(m.unit_id),';
    commandtext:=commandtext+' b.invo_cd,b.invo_dt,b.bat_cd,b.zdesc,k.valid_dt,valid_dt1=q.valid_dt,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_bill_dtl d on b.med_id=d.dtl_id';
    commandtext:=commandtext+' left join tb_bill c on c.bod_id=d.bod_id';
    commandtext:=commandtext+' inner join tb_medicine m on d.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_busimate p on c.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on c.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on c.dst_id=j.mate_id';
    commandtext:=commandtext+' left join (select b.rela_id1,zdesc=max(b.zdesc),storage_dt=max(a.storage_dt),valid_dt=max(case when a.carry_dt is null then b.valid_dt else a.carry_dt end),amot1=sum(cast(round(b.amot,2) as decimal(15,2))) from tb_bill a,tb_bill_dtl b';
    commandtext:=commandtext+'  where a.bod_type_id=45 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.rela_id1) k on b.dtl_id=k.rela_id1';
//    commandtext:=commandtext+'  where a.bod_type_id=45 and a.bod_status_id=1 and a.carry_dt>'''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.rela_id1) k on b.dtl_id=k.rela_id1';
//    commandtext:=commandtext+' left join (select b.rela_id1,zdesc=max(b.zdesc),valid_dt=max(b.valid_dt),amot1=sum(cast(round(b.amot,2) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=45 and a.bod_status_id=1 and a.carry_dt>'''+datetostr(dxdateedit1.date)+''' and a.bod_id=b.bod_id group by b.rela_id1) k on b.dtl_id=k.rela_id1';
    commandtext:=commandtext+' left join (select b.rela_id1,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=45 and a.bod_status_id<>1 and a.bod_id=b.bod_id group by b.rela_id1) i on b.dtl_id=i.rela_id1';
//    commandtext:=commandtext+' left join (select b.med_id,amot5=sum(b.amot) from tb_bill a,tb_bill_dtl b where a.bod_type_id=45 and a.bod_status_id<>1 and a.bod_id=b.bod_id group by b.med_id) i on b.med_id=i.med_id';
    commandtext:=commandtext+' left join (select a.order_id,b.dtl_id,b.valid_dt from tb_bill a,tb_bill_dtl b where a.bod_type_id=42 and a.bod_status_id=1 and a.bod_id=b.bod_id) q on a.order_id=q.order_id and b.med_id=q.dtl_id';
    commandtext:=commandtext+' where a.bod_type_id=46 and a.bod_status_id=1 and a.cate_id=1';
	commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%''';
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and b.invo_cd like ''%'+trim(dxEdit2.text)+'%''';
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and d.med_id='+inttostr(dxbuttonedit2.tag);
    if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit5.tag);
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=45 and x.bod_status_id=1 and x.bod_id=y.bod_id and b.dtl_id=y.rela_id1)';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+' and b.amot<>isnull(k.amot1,0)';
    if RadioGroup1.ItemIndex=3 then commandtext:=commandtext+' and exists (select 1 from tb_bill x,tb_bill_dtl y where x.bod_type_id=45 and x.bod_status_id<>1 and x.bod_id=y.bod_id and b.dtl_id=y.rela_id1)';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
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

procedure Tqryreport20.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport20.N3Click(Sender: TObject);
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

procedure Tqryreport20.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport20.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1cate_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
setprogress(0);
end;

procedure Tqryreport20.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dst_id.Visible:=False;
dxDBGrid1agent_id.Visible:=False;
dxDBGrid1bod_id.Visible:=False;
dxDBGrid1cate_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tqryreport20.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调价';
    end;
	if (fieldbyname('price1').asfloat=0) or (fieldbyname('busi_type').asinteger=3) then
    begin
    	fieldbyname('cqty').asfloat:=0;
    end
    else
    begin
    	fieldbyname('cqty').asfloat:=round(100*fieldbyname('amot').asfloat/fieldbyname('price1').asfloat)/100;
    end;
	fieldbyname('cnot_amot').asfloat:=fieldbyname('amot').asfloat-fieldbyname('amot1').asfloat;
//    if (fieldbyname('price1').asfloat=0) or (fieldbyname('busi_type').asinteger=3)
    if (fieldbyname('amot').asfloat=0) or (fieldbyname('cqty').asfloat=0) or (fieldbyname('busi_type').asinteger=3)
    	then fieldbyname('cqty1').asinteger:=0
    	else fieldbyname('cqty1').asinteger:=round(fieldbyname('amot1').asfloat/(fieldbyname('amot').asfloat/fieldbyname('cqty').asfloat)); //(fieldbyname('amot').asfloat/fieldbyname('cqty').asfloat));
//    	else fieldbyname('cqty1').asinteger:=round(fieldbyname('amot1').asfloat/fieldbyname('price1').asfloat); //(fieldbyname('amot').asfloat/fieldbyname('cqty').asfloat));
end;
end;

procedure Tqryreport20.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport20.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

procedure Tqryreport20.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryreport20.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryreport20.N7Click(Sender: TObject);
var i,mi,mateid,mateid1,agentid,l,m,n: integer;
    f1,f2,f3,f4,f5: integer;
    s,t,sbodcd: string;
    mcd: string[20];
    mamt:real;
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
s:='--------------------------------------------';  t:='';
mi:=0;   mamt:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (qry.fieldbyname('Cnot_amot').asfloat<>0) then
    begin
        s:= s + #13#10+ qry.fieldbyname('bod_cd').asstring+'单'; //+qry.fieldbyname('med_name').asstring;
        s:= s + ' '+formatfloat('###,###,##0.00',qry.fieldbyname('Cnot_amot').asfloat);
        t:=qry.fieldbyname('dtl_id').asstring;
		mamt:=qry.fieldbyname('Cnot_amot').asfloat;
        mi:=1;
    end;
end
else
begin
    l := dxDBGrid1.ColumnByFieldName('src_id').Index;
    m := dxDBGrid1.ColumnByFieldName('dst_id').Index;
    n := dxDBGrid1.ColumnByFieldName('agent_id').Index;
    f1:= dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    f3:= dxDBGrid1.ColumnByFieldName('cate_id').Index;
    f4:= dxDBGrid1.ColumnByFieldName('dtl_id').Index;
    f5:= dxDBGrid1.ColumnByFieldName('Cnot_amot').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].values[f5]<>0) then   // and (dxDBGrid1.SelectedNodes[i].values[f3]=2)
        begin
            if mi=0 then
            begin
                mateid1:=dxDBGrid1.SelectedNodes[i].values[l];
                mateid:=dxDBGrid1.SelectedNodes[i].values[m];
                agentid:=dxDBGrid1.SelectedNodes[i].values[n];
            end
            else
            begin
                if mateid1<>dxDBGrid1.SelectedNodes[i].values[l] then raise Exception.Create('同一单据中不可包含不同供货单位的单据');
                if mateid<>dxDBGrid1.SelectedNodes[i].values[m] then raise Exception.Create('同一单据中不可包含不同商业公司的单据');
                if agentid<>dxDBGrid1.SelectedNodes[i].values[n] then raise Exception.Create('同一单据中不可包含不同业务负责人的单据');
            end;
            s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[f1]+'单'; //+ dxDBGrid1.SelectedNodes[i].Strings[f2];
            s:= s + ' '+formatfloat('###,###,##0.00',dxDBGrid1.SelectedNodes[i].values[f5]);
            t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[f4];  // 记录 dtl_id 字符串
            mamt:=mamt+dxDBGrid1.SelectedNodes[i].values[f5];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(已完成收款单据不可再次收款)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select distinct d.bod_id from tb_bill a,tb_bill_dtl b,tb_bill_dtl d';
    commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and b.med_id=d.dtl_id';
    open;
    if recordcount=0 then
    begin
        MessageBox(0,pchar('选择单据无效'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    first;  t1:='';
    while not eof do
    begin
    	if t1<>'' then t1:=t1+',';
        t1:=t1+fieldbyname('bod_id').asstring;
    	next;
    end;
}
{
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and dbo.fn_orderisfinished(bod_id)=1';   // dbo.fn_orderisfinished1收款完成
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('已完成收款单据不可再次收款(如'+fieldbyname('bod_cd').asstring+')'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
    if active=True then close;
    commandtext:='select top 3 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill_dtl b,tb_bill c,tb_bill_dtl d';
    commandtext:=commandtext+' where a.bod_type_id=46 and a.bod_id=b.bod_id and b.dtl_id in ('+t+') and c.bod_type_id=45 and c.bod_status_id<>1 and c.bod_id=d.bod_id and d.rela_id1=b.dtl_id';
    open;
    if recordcount>0 then
    begin
//        s:='下列单据已生成了未完成审核的两票销售单，请先审核'+#13+#10+'------------------------------------------------';
        s:='下列单据已生成了未完成审核的两票收款单，不可再次生成'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'发票核销单:'+fieldbyname('bod_cd').asstring+' 两票收款单:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
//if MessageBox(0,'确定所选单据生成两票收款单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if messagedlg('所选单据生成两票收款单',mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
setprogress(1);
mcd:=formatfloat('00000000',getbillid(compid,45));
sbodcd:=sbodcd+#13#10+mcd;
with dm.pubqry do
begin
    if active=True then close;
	commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,src_id,dst_id,agent_id,broker_id,district_id,carry_dt,creat_by,creat_dt)';
	commandtext:= commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',45,0,src_id,dst_id,agent_id,broker_id,district_id,cast(convert(char(10),getdate(),20) as datetime),'+inttostr(curuserid)+',getdate()';
	commandtext:= commandtext+'  from tb_bill where bod_id=(select top 1 bod_id from tb_bill_dtl where dtl_id in ('+t+'))';
	commandtext:= commandtext+' select @@identity';
//edit1.text:=dm.pubqry.commandtext;
	open;
    mi:= fields[0].asinteger;
	close;
	commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,amot,price1,price2,invo_cd,invo_dt,rela_id1)';
	commandtext:= commandtext+' select '+inttostr(mi)+',b.med_id,(amot-isnull(k.amot1,0)),(amot-isnull(k.amot1,0)),price1,price2,invo_cd,invo_dt,dtl_id';
	commandtext:= commandtext+' from tb_bill_dtl b ';
    commandtext:= commandtext+' left join (select b.rela_id1,amot1=sum(cast(round(b.amot,2) as decimal(15,2))) from tb_bill a,tb_bill_dtl b where a.bod_type_id=45 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.rela_id1) k on b.dtl_id=k.rela_id1';
    commandtext:= commandtext+' where dtl_id in ('+t+')';
//edit2.text:=dm.pubqry.commandtext;
	execute;
end;
setprogress(0);
beep;
//s:='已成功生成'+sbodcd+'号两票收款单';
MessageBox(0,pchar('已成功生成下列两票收款单'+#13#10+'-------------------------'+sbodcd),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tqryreport20.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
//        AColor := $00FDFCC1;
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调价') then
    begin
        AFont.Color := clBlue; //clyellow;
    end;
end;
if (AColumn = dxDBGrid1amot) or (AColumn = dxDBGrid1amot1) then
begin
    if (ANode.Values[dxDBGrid1amot.Index]=ANode.Values[dxDBGrid1amot1.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1amot5) then
begin
    if (ANode.Strings[dxDBGrid1amot5.Index] <>'') then Acolor := $00FEFDE2;
end;
end;

procedure Tqryreport20.dxEdit2Enter(Sender: TObject);
begin
dxEdit2.selectall;
dxEdit2.setfocus;
end;

procedure Tqryreport20.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit2.selectall;
    dxEdit2.setfocus;
end;
end;

end.
