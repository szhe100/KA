unit Unit6a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, Menus, DB, ADODB, dxEdLib, ExtCtrls, wwSpeedButton,
  DBClient, wwDBNavigator, wwclearpanel, dxDBELib, dxDBTL, dxEditor,
  dxDBEdtr, dxCntner, StdCtrls, Buttons, wwclearbuttongroup, wwradiogroup,
  DBCtrls, dxDBGrid, dxTL, dxDBCtrl, ComCtrls, Comobj, mycds;

type
  Tsetmedicine1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    Bevel1: TBevel;
    Label1: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1qtyperbox: TdxDBGridMaskColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    dxDBGrid1appv_docu: TdxDBGridMaskColumn;
    dxDBGrid1site_code: TdxDBGridMaskColumn;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
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
    dxDBGrid1qry_code: TdxDBGridColumn;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    wwRadioGroup3: TwwRadioGroup;
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
    dxDBEdit10: TdxDBEdit;
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
    dxDBCheckEdit2: TdxDBCheckEdit;
    medicinef1: TBooleanField;
    ADOQuery1comp_id: TWordField;
    medicinecomp_id: TWordField;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label3: TLabel;
    ADOQuery1comp_name: TStringField;
    ADOQuery1sim_name: TStringField;
    DScompany: TDataSource;
    company: TClientDataSet;
    companycomp_id: TWordField;
    companycomp_name: TStringField;
    companysim_name: TStringField;
    medicineLcompany: TStringField;
    dxDBGrid1Lcompany: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmedicine1: Tsetmedicine1;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetmedicine1.FormActivate(Sender: TObject);
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

procedure Tsetmedicine1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with medicine do if active=true then close;
with dm.staff do if active=true then close;
//with dm.med_type do if active=true then close;
with dm.cdsunit do if active=true then close;
with dm.func_type do if active=true then close;
with dm.medcatlog do if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmedicine1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedicine1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetmedicine1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetmedicine1.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetmedicine1.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetmedicine1.DSmedicineDataChange(Sender: TObject;
  Field: TField);
begin
with medicine do
begin
    label18.caption:=formatfloat('[##,###]',recordcount);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    BitBtn1.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetmedicine1.SpeedButton2Click(Sender: TObject);
begin
dm.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS);
end;

procedure Tsetmedicine1.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetmedicine1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedicine1.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with medicine do
begin
    if active=true then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 20000 *,med_type=e.mc_title,med_unit=b.zdesc,';
    commandtext:=commandtext+' creater=c.zname,modifier=d.zname';
    commandtext:=commandtext+' from tb_medicine a';
    commandtext:=commandtext+' left join tb_object b on a.unit_id =b.obj_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by =c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by =d.sta_id';
    commandtext:=commandtext+' left join tb_medcatlog e on a.med_type_id =e.mc_id';
    commandtext:=commandtext+' where 1=1'; //a.comp_id='+inttostr(compid);
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.med_name ';
            2:  commandtext:=commandtext+' and a.pdt_place ';
            3:  commandtext:=commandtext+' and a.med_code ';
        end;
        commandtext:=commandtext+' like ''%'+dxedit1.text+'%''';
    end;
    try
        setprogress(1);
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedicine1.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetmedicine1.N3Click(Sender: TObject);
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

procedure Tsetmedicine1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmedicine1.N2Click(Sender: TObject);
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

procedure Tsetmedicine1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmedicine1.dxDBEdit5Change(Sender: TObject);
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

procedure Tsetmedicine1.dxDBTreeList1DblClick(Sender: TObject);
begin
with medicine do
begin
    if (active=false) then raise Exception.Create('请先刷新并按新增');
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('med_code').asstring:=dm.medcatlog.fieldbyname('mc_cd').asstring;
    fieldbyname('med_type_id').asinteger:=dm.medcatlog.fieldbyname('mc_id').asinteger;
    fieldbyname('med_type').asstring:=dm.medcatlog.fieldbyname('mc_title').asstring;
    dxDBPickEdit1Enter(nil);
    if dxDBPickEdit1.items.Count>0 then fieldbyname('med_code').asstring:=dxDBPickEdit1.Items[0];
end;
end;

procedure Tsetmedicine1.dxDBPickEdit1Change(Sender: TObject);
begin
with medicine do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('med_code').asstring:=dxDBPickEdit1.text;
end;
end;

procedure Tsetmedicine1.dxDBPickEdit1Enter(Sender: TObject);
var mi,ci: word;   //ln,
    ss: string;
begin
if length(dxDBPickEdit1.text)<2 then exit;
//    then raise Exception.Create('生成新编码时，应先输入代表商品类别的2个字符');
setprogress(1);
ss:=copy(dxDBPickEdit1.text,1,2);
with dm.pubqry do
begin
    if active=true then close;
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

procedure Tsetmedicine1.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tsetmedicine1.dxDBLookupEdit1Change(Sender: TObject);
begin
with medicine do
    fieldbyname('med_unit').asstring:= dxDBLookupEdit1.Text;
end;

procedure Tsetmedicine1.medicineAfterPost(DataSet: TDataSet);
begin
with medicine do
    if ChangeCount>0 then myupdaterefresh(medicine,'tb_medicine','med_id','');
end;

procedure Tsetmedicine1.medicineBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill_dtl where med_id='+medicine.fieldbyname('med_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该药品已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本药品'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedicine1.medicineBeforePost(DataSet: TDataSet);
begin
with medicine do
begin
{
    if length(fieldbyname('med_code').asstring)<>6
        then raise Exception.Create('药品编码为6位字符。请修正，并重新保存');
}
    if fieldbyname('unit_id').asinteger=0
        then raise Exception.Create('请设置药品单位');
    if fieldbyname('comp_id').asinteger=0
        then raise Exception.Create('请选择所属公司');
    if state=dsinsert then
    begin
//        fieldbyname('comp_id').asinteger:=compid;
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

end.
