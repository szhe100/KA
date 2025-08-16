unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, Menus, DB, ADODB, dxEdLib, ExtCtrls, wwSpeedButton,
  DBClient, wwDBNavigator, wwclearpanel, dxDBELib, dxDBTL, dxEditor,
  dxDBEdtr, dxCntner, StdCtrls, Buttons, wwclearbuttongroup, wwradiogroup,
  DBCtrls, dxDBGrid, dxTL, dxDBCtrl, ComCtrls, Comobj, mycds;

type
  Tsetmedicine = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    Bevel1: TBevel;
    Label1: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DSmedicine: TDataSource;
    RadioGroup1: TRadioGroup;
    Label19: TLabel;
    dxEdit1: TdxEdit;
    Label21: TLabel;
    DBText10: TDBText;
    Label22: TLabel;
    DBText11: TDBText;
    Label23: TLabel;
    DBText1: TDBText;
    Label24: TLabel;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    wwRadioGroup3: TwwRadioGroup;
    BitBtn1: TBitBtn;
    dxDBEdit3: TdxDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1mc_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1mc_parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1mc_cd: TdxDBTreeListMaskColumn;
    dxDBTreeList1mc_title: TdxDBTreeListMaskColumn;
    Label17: TLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBEdit2: TdxDBEdit;
    Label28: TLabel;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit11: TdxDBEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBEdit12: TdxDBEdit;
    ImageList1: TImageList;
    medicine: TClientDataSet;
    medicinemed_id: TIntegerField;
    medicinemed_code: TStringField;
    medicinemed_name: TStringField;
    medicinemed_alia: TStringField;
    medicineforeigname: TStringField;
    medicinespecifi: TStringField;
    medicinemed_type_id: TIntegerField;
    medicinefunc_type_id: TIntegerField;
    medicinetax_type_id: TSmallintField;
    medicinepdt_place: TStringField;
    medicineunit_id: TIntegerField;
    medicinemed_unit: TStringField;
    medicinemed_type: TStringField;
    medicineqtyperbox: TBCDField;
    medicineqtyperpack: TBCDField;
    medicinenotes: TMemoField;
    medicineotc_rx: TBooleanField;
    medicinebarcode: TStringField;
    medicineappv_docu: TStringField;
    medicinespecial_treat: TBooleanField;
    medicineqry_code: TStringField;
    medicinesite_code: TStringField;
    medicinepick_ord: TIntegerField;
    medicinechm_name: TStringField;
    medicinevalid_period: TIntegerField;
    medicineGMP: TBooleanField;
    medicinecreat_dt: TDateTimeField;
    medicinecreat_by: TIntegerField;
    medicinemodify_dt: TDateTimeField;
    medicinemodify_by: TIntegerField;
    medicinecreater: TStringField;
    medicinemodifier: TStringField;
    SpeedButton6: TSpeedButton;
    dxDBCheckEdit2: TdxDBCheckEdit;
    medicinef1: TBooleanField;
    medicinecomp_id: TWordField;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label3: TLabel;
    DScompany: TDataSource;
    company: TClientDataSet;
    companycomp_id: TWordField;
    companycomp_name: TStringField;
    companysim_name: TStringField;
    medicineLcompany: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    wwRadioGroup1: TwwRadioGroup;
    ADOQuery1type_id1: TWordField;
    medicinetype_id1: TWordField;
    medicineCtypeid1: TStringField;
    Button1: TButton;
    Label13: TLabel;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1chm_name: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1med_type: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1appv_docu: TdxDBGridColumn;
    dxDBGrid1qtyperpack1: TdxDBGridColumn;
    medicinematerial_code: TStringField;
    medicinematerial_code1: TStringField;
    Label18: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label20: TLabel;
    dxDBEdit8: TdxDBEdit;
    Label25: TLabel;
    dxDBGrid1material_code1: TdxDBGridColumn;
    Label29: TLabel;
    dxDBEdit13: TdxDBEdit;
    medicinepack_desc: TStringField;
    dxDBGrid1pack_desc: TdxDBGridColumn;
    TabSheet3: TTabSheet;
    medicinemedium_desc: TStringField;
    dxDBGrid1medium_desc: TdxDBGridColumn;
    Label30: TLabel;
    dxDBEdit14: TdxDBEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2material_code1: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2chm_name: TdxDBGridColumn;
    dxDBGrid2med_type: TdxDBGridColumn;
    dxDBGrid2medium_desc: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pack_desc: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2appv_docu: TdxDBGridColumn;
    dxDBGrid2qtyperpack: TdxDBGridColumn;
    dxDBGrid2med_holder: TdxDBGridColumn;
    dxDBGrid2valid_period: TdxDBGridColumn;
    Label31: TLabel;
    dxDBEdit15: TdxDBEdit;
    medicinemed_holder: TStringField;
    dxDBGrid1med_holder: TdxDBGridColumn;
    Label32: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    Label33: TLabel;
    DBText14: TDBText;
    dxDBGrid1material_code: TdxDBGridColumn;
    Label34: TLabel;
    dxDBEdit10: TdxDBEdit;
    medicinematerial_desc: TStringField;
    Label9: TLabel;
    dxDBEdit16: TdxDBEdit;
    medicinematerial_medium: TStringField;
    medicineqtyperpack1: TStringField;
    Edit1: TEdit;
    Label35: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DSmedicineDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure dxDBPickEdit1Change(Sender: TObject);
    procedure dxDBPickEdit1Enter(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxDBLookupEdit1Change(Sender: TObject);
    procedure medicineAfterPost(DataSet: TDataSet);
    procedure medicineBeforeDelete(DataSet: TDataSet);
    procedure medicineBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure medicineCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmedicine: Tsetmedicine;

implementation

uses datamodu, Unit7;

{$R *.DFM}

procedure Tsetmedicine.FormActivate(Sender: TObject);
begin
with company do
    if active=false then
    begin
        commandtext:='select comp_id,comp_name,sim_name from tb_company order by comp_name ';
        open;
    end;
with dm.cdsunit do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=0';
        open;
    end;
with dm.func_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=10';
        open;
    end;
with dm.medcatlog do
    if active=false then
    begin
        commandtext:='select * from tb_medcatlog';
        open;
    end;
end;

procedure Tsetmedicine.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with medicine do if active then close;
with dm.staff do if active then close;
//with dm.med_type do if active then close;
with dm.cdsunit do if active then close;
with dm.func_type do if active then close;
with dm.medcatlog do if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmedicine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedicine.BitBtn1Click(Sender: TObject);
begin
with medicine do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='alter table tb_medicine disable trigger tr_medicine1 ';
    commandtext:=commandtext+' update tb_medicine set med_name='''+dxDBEdit5.Text+''',QRY_CODE='''+dxDBEdit3.Text+''' where med_id='+medicine.fieldbyname('med_id').asstring;
    commandtext:=commandtext+' alter table tb_medicine enable trigger tr_medicine1';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
        refreshmyrecord(medicine,dm.Refreshcds,0,'med_id',medicine.fieldbyname('med_id').asinteger); //refresh
    end;
end;
end;

procedure Tsetmedicine.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetmedicine.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetmedicine.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetmedicine.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetmedicine.DSmedicineDataChange(Sender: TObject;
  Field: TField);
begin
with medicine do
begin
//    label18.caption:=formatfloat('[##,###]',recordcount);
    speedbutton2.enabled:=(active) and (recordcount>0);
    BitBtn1.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetmedicine.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet3
    then dm.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS)
    else dm.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS);
end;

procedure Tsetmedicine.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetmedicine.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedicine.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with medicine do
begin
    if active then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 20000 med_unit=b.zdesc,*,med_type=e.mc_title,';
    commandtext:=commandtext+' creater=c.zname,modifier=d.zname';
    commandtext:=commandtext+' from tb_medicine a';
    commandtext:=commandtext+' left join tb_object b on a.unit_id =b.obj_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by =c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by =d.sta_id';
    commandtext:=commandtext+' left join tb_medcatlog e on a.med_type_id =e.mc_id';
    commandtext:=commandtext+' where 1=1'; //a.comp_id='+inttostr(compid);
//    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
//    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.material_code1 like '''+''%'')';
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id='+inttostr(dxButtonEdit1.tag)+' and a.material_code like substring(n.material_code,1,len(n.material_code)-1)+''%'')';
//    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id='+inttostr(dxButtonEdit1.tag)+' and a.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+''%'')';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.med_name ';
            2:  commandtext:=commandtext+' and a.pdt_place ';
            3:  commandtext:=commandtext+' and (a.material_code= '''+dxedit1.text+''' or a.material_code1= '''+dxedit1.text+''')';
        end;
        if radiogroup1.itemindex<3 then commandtext:=commandtext+' like ''%'+dxedit1.text+'%''';
    end;
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedicine.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetmedicine.N3Click(Sender: TObject);
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

procedure Tsetmedicine.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmedicine.N2Click(Sender: TObject);
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

procedure Tsetmedicine.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmedicine.dxDBEdit5Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=trim(dxDBEdit5.text)+' '+trim(dxDBEdit6.text);
    spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with medicine do
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('qry_code').asstring:=spy;
    end;
//showmessage(sw+'-'+spy);
//    dxDBEdit3.text:=spy;
end;

procedure Tsetmedicine.dxDBTreeList1DblClick(Sender: TObject);
begin
with medicine do
begin
    if (active=false) then raise Exception.Create('请先刷新并按新增');
    if not (state in [dsinsert,dsedit]) then edit;
    if fieldbyname('med_code').asstring='' then fieldbyname('med_code').asstring:=dm.medcatlog.fieldbyname('mc_cd').asstring;
    fieldbyname('med_type_id').asinteger:=dm.medcatlog.fieldbyname('mc_id').asinteger;
    fieldbyname('med_type').asstring:=dm.medcatlog.fieldbyname('mc_title').asstring;
    dxDBPickEdit1Enter(nil);
    if dxDBPickEdit1.items.Count>0 then fieldbyname('med_code').asstring:=dxDBPickEdit1.Items[0];
end;
end;

procedure Tsetmedicine.dxDBPickEdit1Change(Sender: TObject);
begin
with medicine do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('med_code').asstring:=dxDBPickEdit1.text;
end;
end;

procedure Tsetmedicine.dxDBPickEdit1Enter(Sender: TObject);
var mi,ci: integer;
    ss: string;
begin
if length(dxDBPickEdit1.text)<2 then exit;
//    then raise Exception.Create('生成新编码时，应先输入代表商品类别的2个字符');
setprogress(1);
ss:=copy(dxDBPickEdit1.text,1,2);
with dm.pubqry do
begin
    if active then close;
    commandtext:='select distinct med_code from tb_medicine where left(med_code,2)='''+ss+''' order by med_code';
    open;
    first;
    mi:=1;  ci:=0;
    dxDBPickEdit1.items.clear;
    while not eof do
    begin
        if length(fieldbyname('med_code').asstring)=6 then
        begin
            if fieldbyname('med_code').asstring<>ss+formatfloat('0000',mi) then
            begin
                dxDBPickEdit1.items.add(ss+formatfloat('0000',mi));
                inc(ci);
                if ci=10 then break;
            end
            else
            begin
                mi:=strtoint(copy(fieldbyname('med_code').asstring,3,4));
                next;
            end;
            inc(mi);
        end else next;
    end;
    close;
    for ci:=mi to mi+9-dxDBPickEdit1.items.count do
        dxDBPickEdit1.items.add(ss+formatfloat('0000',ci));
end;
setprogress(0);
end;

procedure Tsetmedicine.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tsetmedicine.dxDBLookupEdit1Change(Sender: TObject);
begin
with medicine do
    fieldbyname('med_unit').asstring:= dxDBLookupEdit1.Text;
end;

procedure Tsetmedicine.medicineAfterPost(DataSet: TDataSet);
begin
if medicine.ChangeCount>0 then myupdaterefresh(medicine,'tb_medicine','med_id','');
end;

procedure Tsetmedicine.medicineBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill_dtl where med_id='+medicine.fieldbyname('med_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该药品已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本药品'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedicine.medicineBeforePost(DataSet: TDataSet);
begin
with medicine do
begin
{
    if length(fieldbyname('med_code').asstring)<>6
        then raise Exception.Create('药品编码为6位字符。请修正，并重新保存');
}
    if fieldbyname('med_type_id').asinteger=0
        then raise Exception.Create('请选择药品剂型(双击剂型表)');
    if fieldbyname('unit_id').asinteger=0
        then raise Exception.Create('请设置药品单位');
//    if fieldbyname('comp_id').asinteger=0
//        then raise Exception.Create('请选择所属公司');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
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

procedure Tsetmedicine.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,unitid: integer;
    s1,s2,s3,s4,s5,s6,s7: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
//从第2行开始导入，导入格式: 1药品定价参考物料编码,2通用名,3商品名,4规格,5生产企业,6计量单位,7整件内装数
//    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        s5:=Trim(sheet.cells[j,5].text);
        s6:=Trim(sheet.cells[j,6].text);
        s7:=Trim(sheet.cells[j,7].text);
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 1 from tb_medicine where material_code1='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码品种，不再加入
            begin

                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=0 and zdesc='''+Trim(s6)+'''';
                open;
                if recordcount=0 then unitid:=0 else unitid:=fields[0].asinteger;

                if active then close;
                commandtext:='insert into tb_medicine (material_code1,med_name,chm_name,qry_code,specifi,pdt_place,unit_id,qtyperpack,comp_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''','''+s2+''','''+s3+''',dbo.fn_getpy('''+s2+s3+'''),'''+s4+''','''+s5+''','''+inttostr(unitid)+''','''+s7+''','+inttostr(compid)+','+inttostr(curuserid)+',getdate())';
    //showmessage(commandtext);
                try
                    execute;
                    mi:=mi+1;
                except

                end;
            end;
        end;
        j:=j+1;
    end;
    XL.Quit;
//    SpeedButton3Click(nil);
    setprogress(0);
    MessageBox(0,pchar('数据已导入(共导入'+inttostr(mi)+'个品种,药品定价参考物料编码重复品种未导入。可刷新查询)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedicine.medicineCalcFields(DataSet: TDataSet);
begin
with medicine do
begin
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
end;
end;

procedure Tsetmedicine.Button1Click(Sender: TObject);
var
    XL,Sheet: Variant;
//    SFileName: string;
    J,mrow: integer;  //mi, unitid,
//    s1,s2,s3,s4,s5,s6,s7: string;

//  FExcel:OleVariant; //excel应用程序
  FWorkBook :OleVariant; //工作表
//  Temsheet:OleVariant; //工作薄

begin
    try
        XL := CreateOleObject('Excel.Application'); //uses Comobj
    except
        MessageBox(0,pchar('Excel未安装或不正常'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
{
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='1.xls';
        if Execute then
        begin
            SFileName:=FileName;
//            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
}
    setprogress(1);

//从第2行开始导入，导入格式: 1生产批号 2生产日期 3有效期至 4不合格数量 5不合格原因 6是否已处理 7处理方式 //

//    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';

//    FExcel:= CreateoleObject('excel.Application');
    FWorkBook:=XL.WorkBooks.Add(-4167); //新的工作表

    sheet:=FWorkBook.Worksheets.Add;
    sheet.Name:='利润统计';

    sheet.Select;
    mrow:=1;  j:=1;
    sheet.cells[j,1]:=inttostr(j)+'1生产批号';
    sheet.cells[mrow,1].text:=inttostr(j)+'1生产批号';
    sheet.cells[mrow,2].text:=inttostr(j)+'2生产日期';
    sheet.cells[mrow,3].text:=inttostr(j)+'3有效期至';
    sheet.cells[mrow,4].text:=inttostr(j)+'4不合格数量';
    sheet.cells[mrow,5].text:=inttostr(j)+'5不合格原因';
    sheet.cells[mrow,6].text:=inttostr(j)+'6是否已处理';
    sheet.cells[mrow,7].text:=inttostr(j)+'7处理方式';

    //mi:=0;
    mrow:=2;  //第1行开始 每行一单
    while j<=5 do
//    while (sheet.cells[j,1].text<>'') do
    begin
        Sheet.Cells[mrow,5]:='1生产批号';
{
        sheet.cells[j,1].text:=inttostr(j)+'1生产批号';
        sheet.cells[j,2].text:=inttostr(j)+'2生产日期';
        sheet.cells[j,3].text:=inttostr(j)+'3有效期至';
        sheet.cells[j,4].text:=inttostr(j)+'4不合格数量';
        sheet.cells[j,5].text:=inttostr(j)+'5不合格原因';
        sheet.cells[j,6].text:=inttostr(j)+'6是否已处理';
        sheet.cells[j,7].text:=inttostr(j)+'7处理方式';
}
{
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        s5:=Trim(sheet.cells[j,5].text);
        s6:=Trim(sheet.cells[j,6].text);
        s7:=Trim(sheet.cells[j,7].text);
}
{
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 1 from tb_medicine where med_code='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码品种，不再加入
            begin

                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=0 and zdesc='''+Trim(s6)+'''';
                open;
                if recordcount=0 then unitid:=0 else unitid:=fields[0].asinteger;

                if active then close;
                commandtext:='insert into tb_medicine (med_code,med_name,chm_name,qry_code,specifi,pdt_place,unit_id,qtyperpack,comp_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''','''+s2+''','''+s3+''',dbo.fn_getpy('''+s2+s3+'''),'''+s4+''','''+s5+''','''+inttostr(unitid)+''','''+s7+''','+inttostr(compid)+','+inttostr(curuserid)+',getdate())';
    //showmessage(commandtext);
                try
                    execute;
                    mi:=mi+1;
                except

                end;
            end;
        end;
}
        j:=j+1;
    end;
    XL.WorkBooks[1].saveas('c:\1.xls');//保存文件
    XL.workbooks[1].close; //关闭工作表
    XL.Quit;
//    SpeedButton3Click(nil);
    setprogress(0);
//    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'个品种,药品编码重复品种未导入。可刷新查询)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedicine.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

end.
