unit Unit73;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ADODB, ImgList, Menus, DB, DBClient, StdCtrls, dxEdLib, Comobj,
  ExtCtrls, dxdbtrel, dxEditor, wwSpeedButton, wwDBNavigator, wwclearpanel,
  dxDBEdtr, dxDBELib;

type
  Tsetreport31 = class(TForm)
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    qry: TClientDataSet;
    DSqry: TDataSource;
    SpeedButton3: TSpeedButton;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrymed_type: TStringField;
    qryqtyperpack: TBCDField;
    qrycreater: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Shape2: TShape;
    Label3: TLabel;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    ADOQuery1: TADOQuery;
    type1: TClientDataSet;
    DataSource1: TDataSource;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource2: TDataSource;
    Edit1: TEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    DSlevel1: TDataSource;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    dxButtonEdit3: TdxButtonEdit;
    dxLookupEdit2: TdxLookupEdit;
    dxLookupEdit1: TdxLookupEdit;
    Label2: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label6: TLabel;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrydist3: TStringField;
    qryrec_id: TAutoIncField;
    qrycomp_id: TWordField;
    qrydistrict_id: TIntegerField;
    qrymed_id: TIntegerField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1material_code1: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    qrydtl: TClientDataSet;
    DSqrydtl: TDataSource;
    qrydtldtl_id: TAutoIncField;
    qrydtlrec_id: TIntegerField;
    qrydtlmate_id1: TIntegerField;
    qrydtlmate_name1: TStringField;
    qrydtlmate_name: TStringField;
    qrydtlf1: TBooleanField;
    qrydtlf2: TBooleanField;
    qrydtldt1: TDateTimeField;
    qrydtldt2: TDateTimeField;
    qrydtlqty1: TSmallintField;
    qrydtlqty2: TSmallintField;
    qrydtlqty3: TSmallintField;
    qrydtlqty4: TSmallintField;
    qrydtlqty5: TSmallintField;
    qrydtlqty6: TSmallintField;
    qrydtlqty7: TSmallintField;
    qrydtlqty8: TSmallintField;
    qrydtlqty9: TSmallintField;
    qrydtlqty10: TSmallintField;
    qrydtlqty11: TSmallintField;
    qrydtlqty12: TSmallintField;
    qrydtlCqty: TIntegerField;
    qrydtlcreat_by: TIntegerField;
    qrydtlcreat_dt: TDateTimeField;
    qrydtlmodify_by: TIntegerField;
    qrydtlmodify_dt: TDateTimeField;
    qrydtlcreater: TStringField;
    qrydtlcamt1: TFloatField;
    qrydtlcamt2: TFloatField;
    qrydtlcamt3: TFloatField;
    qrydtlcamt4: TFloatField;
    qrydtlcamt5: TFloatField;
    qrydtlcamt6: TFloatField;
    qrydtlcamt7: TFloatField;
    qrydtlcamt8: TFloatField;
    qrydtlcamt9: TFloatField;
    qrydtlcamt10: TFloatField;
    qrydtlcamt11: TFloatField;
    qrydtlcamt12: TFloatField;
    qrydtlcamot: TFloatField;
    qrydtltype_id1: TWordField;
    qrydtltype_id2: TWordField;
    qrydtlLtype1: TStringField;
    qrydtlLtype2: TStringField;
    DSbroker: TDataSource;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    dxLookupEdit4: TdxLookupEdit;
    dxButtonEdit4: TdxButtonEdit;
    Label8: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Shape7: TShape;
    Label10: TLabel;
    Label13: TLabel;
    qrymodify_by: TIntegerField;
    qrymodify_dt: TDateTimeField;
    qrymodifier: TStringField;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1agent_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1qty: TSmallintField;
    ADOQuery1stock_dt: TDateTimeField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    qryagent_id: TIntegerField;
    qryqty: TSmallintField;
    qrystock_dt: TDateTimeField;
    qryagent: TStringField;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridColumn;
    dxDBGrid1Column17: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    qrymaterial_code1: TStringField;
    dxDBGrid1Column18: TdxDBGridColumn;
    dxDBGrid1Column19: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure medataReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlCalcFields(DataSet: TDataSet);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport31: Tsetreport31;

implementation

uses datamodu, Unit7, Unit28d, Unit16c, Unit28c;

{$R *.DFM}

procedure Tsetreport31.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;
end;

procedure Tsetreport31.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport31.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
{
with qrydtl do
begin
    if tag=qry.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_medindexdtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
edit1.text:=commandtext;    
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
}
end;

procedure Tsetreport31.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择地区');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择业务负责人');
//if dxDateEdit1.Text='' then raise Exception.Create('请输入生效日期');

with dm.pubqry do
begin
    if MessageBox(0,pchar('确定按加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active then close;
    commandtext:='insert into tb_report18 (comp_id,district_id,agent_id,med_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',';
    commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
edit1.text:=commandtext;
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    qry.locate('rec_id',mi,[]);
end;
end;

procedure Tsetreport31.qryBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_medindexdtl where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本记录有下级明细记录，不可删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport31.qryAfterPost(DataSet: TDataSet);
begin
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_report18','rec_id','');
end;

procedure Tsetreport31.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,agent=b.mate_name,';
    commandtext:=commandtext+'  m.material_code1,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  creater=s.zname,modifier=t.zname,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
    commandtext:=commandtext+' from tb_report18 a';
    commandtext:=commandtext+' left join tb_busimate b on a.agent_id=b.mate_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff s on a.creat_by=s.sta_id';
    commandtext:=commandtext+' left join tb_staff t on a.creat_by=t.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport31.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport31.medataReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetreport31.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetreport31.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with level1 do if active then close;
with level2 do if active then close;
with type1 do if active then close;
with type2 do if active then close;
with qry do if active then close;
with qrydtl do if active then close;
end;

procedure Tsetreport31.FormCreate(Sender: TObject);
begin
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tsetreport31.N3Click(Sender: TObject);
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

procedure Tsetreport31.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport31.N2Click(Sender: TObject);
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

procedure Tsetreport31.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport31.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
{
with broker do
begin
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and isnull(stop_yn,0)=0 order by zname';
        open;
    end;
end;
with level1 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''非基非医保'' union select obj_id=2,zdesc=''基药'' union select obj_id=3,zdesc=''非基医保''';
        open;       //非基非医保/基药/非基医保
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''已开发'' union select obj_id=2,zdesc=''预计开发''';
        open;  //已开发/预计开发
    end;
end;
}
end;

procedure Tsetreport31.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport31.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    case fieldbyname('type_id').asinteger of
        1:  fieldbyname('ctype').asstring:='目标医院目标量';
        2:  fieldbyname('ctype').asstring:='目标医院实际完成量';
        3:  fieldbyname('ctype').asstring:='完成率';
    end;
end;
end;

procedure Tsetreport31.qryBeforePost(DataSet: TDataSet);
begin
with qry do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

procedure Tsetreport31.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    serror:='';
    j:=2;  //第2行开始 每行一单
//导入格式: 地区,药品编码,中标,费用政策
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;

    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;

            if active then close;
            commandtext:='if not exists (select 1 from tb_medata where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2)+')';
            commandtext:=commandtext+' insert into tb_medata (type_id,comp_id,id1,med_id,price,rate,creat_by,creat_dt)';
            commandtext:=commandtext+' values (1,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+',';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text)+',';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+' else update tb_medata set price=';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text);
            commandtext:=commandtext+' ,rate=';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text);
            commandtext:=commandtext+' where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2);
//edit2.text:=commandtext;            
            execute;
        end;
        j:=j+1;
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport31.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;  //,ss
    J,mi,id1,id3,id4 : integer; //mid,
    qty: real;
    dt : TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    serror:='';
    j:=2; mi:=0; //第2行开始 每行一单
//导入格式: 1省份,2城市,3业务负责人,4药品编码,5期初库存,6库存时间
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id1:=0; id3:=0;id4:=0;  //qty:=0;
        with dm.pubqry do
        begin
            if (sheet.cells[j,1].text<>'') or (sheet.cells[j,2].text<>'') then
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,1].text)+' '+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;
            end;
            if sheet.cells[j,4].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,4].text+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger;
            end;
{
            if sheet.cells[j,5].text='' then qty:=0 else
            try
                qty:=strtofloat(Trim(sheet.cells[j,5].text));
            except
                qty:=0;
            end;
}
//导入格式: 1省份,2城市,3业务负责人,4药品编码,5期初库存,6库存时间
            if (id1=0) or (id3=0) or (id4=0) then 
            begin
                serror:=serror+#13#10+'第'+inttostr(j)+'行:';
                if id1=0 then serror:=serror+',未取得省份或城市';
                if id3=0 then serror:=serror+',未取得业务负责人';
                if id4=0 then serror:=serror+',未取得药品';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
//导入格式: 1省份,2城市,3业务负责人,4药品编码,5期初库存,6库存时间
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0;id3:=0;id4:=0;qty:=0;dt:=0;
        with dm.pubqry do
        begin
            if (sheet.cells[j,1].text<>'') or (sheet.cells[j,2].text<>'') then
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,1].text)+' '+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;
            end;
            if sheet.cells[j,4].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,4].text+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger;
            end;
            if sheet.cells[j,5].text='' then qty:=0 else
            try
                qty:=strtofloat(Trim(sheet.cells[j,5].text));
            except
                qty:=0;
            end;
            if sheet.cells[j,6].text='' then dt:=0 else
            try
                dt:=strtodatetime(Trim(sheet.cells[j,6].text));
            except
                dt:=0;
            end;
            if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
//导入格式: 1省份,2城市,3业务负责人,4药品编码,5期初库存,6库存时间
            if active then close;
            commandtext:='select top 1 rec_id from tb_report18 where comp_id= '+inttostr(compid);
            commandtext:=commandtext+' and district_id='+inttostr(id1)+' and mate_id='+inttostr(id3)+' and med_id='+inttostr(id4);
            open;
            if recordcount=0 then
            begin
                if active then close;
                commandtext:=' insert into tb_report18 (comp_id,district_id,mate_id,med_id,qty,stock_dt,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(id1)+','+inttostr(id3)+','+inttostr(id4)+','+floattostr(qty)+',';
                if dt=0 then commandtext:=commandtext+ 'null,' else commandtext:=commandtext+ ''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
                open;
                mi:=fields[0].asinteger;
            end
            else
            begin
                mi:=fields[0].asinteger;
                if active then close;
                commandtext:=' update tb_report18 set qty='+floattostr(qty)+',stock_dt=';
                if dt=0 then commandtext:=commandtext+ 'null,' else commandtext:=commandtext+ ''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+',modify_by='+inttostr(curuserid)+',modify_dt=getdate() where rec_id='+inttostr(mi);
                execute;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then qry.Locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport31.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;
end;

procedure Tsetreport31.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.tag :=query1.fieldbyname('mate_id').asinteger;
        dxbuttonedit2.text:=query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        dxbuttonedit2.tag :=0;
        dxbuttonedit2.text:='';
    end;
end;
end;

procedure Tsetreport31.qrydtlCalcFields(DataSet: TDataSet);
begin
with qrydtl do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    fieldbyname('camt1').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('camt2').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
    fieldbyname('camt3').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty3').asfloat;
    fieldbyname('camt4').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty4').asfloat;
    fieldbyname('camt5').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty5').asfloat;
    fieldbyname('camt6').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty6').asfloat;
    fieldbyname('camt7').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty7').asfloat;
    fieldbyname('camt8').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty8').asfloat;
    fieldbyname('camt9').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty9').asfloat;
    fieldbyname('camt10').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty10').asfloat;
    fieldbyname('camt11').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty11').asfloat;
    fieldbyname('camt12').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty12').asfloat;
    fieldbyname('camot').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('cqty').asfloat;
end;
end;

procedure Tsetreport31.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_medindexdtl','dtl_id','');
end;

procedure Tsetreport31.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tsetreport31.qrydtlBeforePost(DataSet: TDataSet);
begin
with qrydtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('rec_id').asinteger:= qry.fieldbyname('rec_id').asinteger;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport31.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport31.wwDBNavigator1PostClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tsetreport31.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tsetreport31.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tsetreport31.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tsetreport31.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetreport31.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

end.
