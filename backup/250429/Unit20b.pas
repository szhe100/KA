unit Unit20b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ImgList, DB, ADODB, dxCntner, dxdbtrel, dxEditor,
  DBClient, dxEdLib, dxDBTL, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, StdCtrls,
  ToolWin, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, mycds;

type
  Tqrystock2 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSstockqry: TDataSource;
    SpeedButton3: TSpeedButton;
    StyleController: TdxEditStyleController;
    ADOQuery1: TADOQuery;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit2: TdxEdit;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    SpeedButton1: TSpeedButton;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    stockqry: TClientDataSet;
    stockqryrec_id: TAutoIncField;
    stockqrydistrict: TStringField;
    stockqrymate_id: TIntegerField;
    stockqrymed_code: TStringField;
    stockqrymed_name: TStringField;
    stockqrychm_name: TStringField;
    stockqryspecifi: TStringField;
    stockqrypdt_place: TStringField;
    stockqrymed_unit: TStringField;
    stockqrymed_type: TStringField;
    stockqryqtyperpack: TBCDField;
    stockqryqty: TBCDField;
    stockqryprice: TBCDField;
    stockqryGMP: TBooleanField;
    stockqryotc_rx: TBooleanField;
    stockqrybat_cd: TStringField;
    stockqrymed_id: TAutoIncField;
    stockqrystock_amot: TBCDField;
    stockqryvalid_dt: TDateTimeField;
    stockqrymate_name: TStringField;
    stockqry1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    StringField10: TStringField;
    AutoIncField2: TAutoIncField;
    DateTimeField1: TDateTimeField;
    BCDField4: TBCDField;
    DSstockqry1: TDataSource;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Images: TImageList;
    stockqryparent_id: TIntegerField;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1rec_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1district: TdxDBTreeListColumn;
    dxDBTreeList1mate_name: TdxDBTreeListMaskColumn;
    dxDBTreeList1med_code: TdxDBTreeListColumn;
    dxDBTreeList1med_name: TdxDBTreeListColumn;
    dxDBTreeList1chm_name: TdxDBTreeListColumn;
    dxDBTreeList1med_type: TdxDBTreeListColumn;
    dxDBTreeList1specifi: TdxDBTreeListColumn;
    dxDBTreeList1pdt_place: TdxDBTreeListColumn;
    dxDBTreeList1med_unit: TdxDBTreeListColumn;
    dxDBTreeList1qty: TdxDBTreeListColumn;
    dxDBTreeList1price: TdxDBTreeListColumn;
    dxDBTreeList1stock_amot: TdxDBTreeListColumn;
    dxDBTreeList1qtyperpack: TdxDBTreeListColumn;
    stockqry1parent_id: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    Label4: TLabel;
    Shape4: TShape;
    ADOQuery1zdesc: TStringField;
    stockqry1zdesc: TStringField;
    Label13: TLabel;
    RadioGroup2: TRadioGroup;
    stockqry1cate_id: TWordField;
    stockqry1Ccate: TStringField;
    SpeedButton2: TSpeedButton;
    RadioGroup3: TRadioGroup;
    dxEdit5: TdxEdit;
    dxDBTreeList1bat_cd: TdxDBTreeListColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1district: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1zdesc: TdxDBGridColumn;
    dxDBGrid1Ccate: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1stock_amot: TdxDBGridColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSstockqryDataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure stockqry1BeforeEdit(DataSet: TDataSet);
    procedure stockqry1AfterPost(DataSet: TDataSet);
    procedure stockqry1CalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrystock2: Tqrystock2;

implementation

uses datamodu, Unit16a, Unit7;

{$R *.DFM}

procedure Tqrystock2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with stockqry do
    if active then close;
//with dm.district do
//    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrystock2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrystock2.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
if PageControl1.ActivePage=TabSheet1 then
begin
    with stockqry1 do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select a.rec_id,a.parent_id,a.mate_id,c.mate_name,a.cate_id,a.med_id,a.bat_cd,a.price,a.qty,stock_amot=price*qty,a.valid_dt,b.gmp,b.otc_rx,';
        commandtext:=commandtext+' district=dbo.fn_getdistrictbymate_id(a.mate_id),b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),med_type=dbo.fn_med_type(b.med_id),qtyperpack,qtyperbox,';
        if dxDateEdit1.Date=dt0 then commandtext:=commandtext+' zdesc='''''
            else commandtext:=commandtext+' a.zdesc';
        if dxDateEdit1.Date=dt0 then commandtext:=commandtext+' from tb_medstock_bat a'
            else commandtext:=commandtext+' from tb_medstock_log a';
        commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' inner join tb_busimate c on a.mate_id=c.mate_id';
        commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and c.mate_type_id=2 and a.qty<>0'; // and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
        if dxDateEdit1.Date<>dt0 then commandtext:=commandtext+' and a.valid_dt>= '''+datetostr(dxdateedit1.date)+''' and a.valid_dt< dateadd(day,1,'''+datetostr(dxdateedit1.date)+''')';
//        if dxDateEdit1.Date<>dt0 then commandtext:=commandtext+' and a.log_dt>= '''+datetostr(dxdateedit1.date)+''' and a.log_dt< dateadd(day,1,'''+datetostr(dxdateedit1.date)+''')';
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        commandtext:=commandtext+'  and a.cate_id=1'; //商业
//        if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
        if Trim(dxedit2.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and b.qry_code ';
                1:  commandtext:=commandtext+' and b.med_name ';
                2:  commandtext:=commandtext+' and b.pdt_place ';
                3:  commandtext:=commandtext+' and b.med_code ';
            end;
            commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
        end;
        if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=b.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
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
if PageControl1.ActivePage=TabSheet2 then
begin
    with stockqry do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select a.rec_id,a.parent_id,a.mate_id,c.mate_name,a.cate_id,a.med_id,a.bat_cd,a.price,a.qty,stock_amot=price*qty,a.valid_dt,b.gmp,b.otc_rx,'; //valid_dt=substring(convert(char(10),a.valid_dt,102),1,7),
        commandtext:=commandtext+' district=dbo.fn_getdistrictbymate_id(a.mate_id),b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),med_type=dbo.fn_med_type(b.med_id),qtyperpack,qtyperbox';
        commandtext:=commandtext+' from tb_medstock_bat a';
        commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' inner join tb_busimate c on a.mate_id=c.mate_id';
        commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.qty<>0'; //and c.mate_type_id=2 and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        if Trim(dxedit2.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and b.qry_code ';
                1:  commandtext:=commandtext+' and b.med_name ';
                2:  commandtext:=commandtext+' and b.pdt_place ';
                3:  commandtext:=commandtext+' and b.med_code ';
            end;
            commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
        end;
        commandtext:=commandtext+'union all select a.rec_id,a.parent_id,a.mate_id,c.mate_name,a.cate_id,';
        commandtext:=commandtext+'	med_id=0,bat_cd='''',price=0,qty=0,stock_amot=0,valid_dt=null,gmp=null,otc_rx=null,';
        commandtext:=commandtext+'  district=dbo.fn_getdistrictbymate_id(a.mate_id),med_code='''',med_name='''',chm_name='''',specifi='''',pdt_place='''',med_unit='''',med_type='''',qtyperpack=0,qtyperbox=0';
        commandtext:=commandtext+'  from tb_medstock_bat a left join tb_busimate c on a.mate_id=c.mate_id';
        commandtext:=commandtext+'  where a.comp_id='+inttostr(compid)+' and a.qty=0';
        commandtext:=commandtext+'	and exists (select 1 from tb_medstock_bat k where k.comp_id=1 and k.qty<>0';
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
        if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
{
        if Trim(dxedit2.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and b.qry_code ';
                1:  commandtext:=commandtext+' and b.med_name ';
                2:  commandtext:=commandtext+' and b.pdt_place ';
                3:  commandtext:=commandtext+' and b.med_code ';
            end;
            commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
        end;
}
        commandtext:=commandtext+' and dbo.fn_medstockchild(k.rec_id,a.rec_id)=1 )';
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
end;

procedure Tqrystock2.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tqrystock2.SpeedButton1Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet2 then
begin
    PageControl1.ActivePage:=TabSheet1;
    SpeedButton3Click(nil);
end;
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqrystock2.dxEdit2Click(Sender: TObject);
begin
dxedit2.SelectAll;
dxedit2.SetFocus;
end;

procedure Tqrystock2.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag:=0;
    end;
end;

procedure Tqrystock2.DSstockqryDataChange(Sender: TObject; Field: TField);
begin
//with stockqry do
with (Sender as TDataSource).DataSet do
begin
    speedbutton1.enabled:= (active) and (recordcount>0);
end;
end;

procedure Tqrystock2.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqrystock2.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqrystock2.FormCreate(Sender: TObject);
begin
dxDateEdit1.Date:=dt0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
TabSheet2.TabVisible:=False;
end;

procedure Tqrystock2.N3Click(Sender: TObject);
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

procedure Tqrystock2.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrystock2.N2Click(Sender: TObject);
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

procedure Tqrystock2.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqrystock2.btnFullCollapseClick(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
    then dxDBGrid1.FullCollapse
    else dxDBTreeList1.FullCollapse;
end;

procedure Tqrystock2.btnFullExpandClick(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
    then dxDBGrid1.FullExpand
    else dxDBTreeList1.FullExpand;
end;

procedure Tqrystock2.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 1 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tqrystock2.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
    then wwDBNavigator1.DataSource:=DSstockqry1
    else wwDBNavigator1.DataSource:=DSstockqry;
end;

procedure Tqrystock2.stockqry1BeforeEdit(DataSet: TDataSet);
begin
if dxDateEdit1.Date=dt0 then raise Exception.Create('当日库存，不可修改');
end;

procedure Tqrystock2.stockqry1AfterPost(DataSet: TDataSet);
begin
if stockqry1.ChangeCount>0 then myupdaterefresh(stockqry1,'tb_medstock_log','rec_id','');
end;

procedure Tqrystock2.stockqry1CalcFields(DataSet: TDataSet);
begin
with stockqry1 do
begin
    case fieldbyname('cate_id').asinteger of
        1:  fieldbyname('ccate').asstring:='商业';
        2:  fieldbyname('ccate').asstring:='分销';
    end;
end;
end;

procedure Tqrystock2.SpeedButton2Click(Sender: TObject);
begin
if MessageBox(0,pchar('确定重算'+datetostr(dxdateedit1.date)+'日的历史库存'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
	if active then close;
    commandtext:='exec sp_adjustmedstocklog '+datetostr(dxdateedit1.date);
    try
        setprogress(1);
	    execute;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrystock2.dxEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(self);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tqrystock2.dxEdit5Enter(Sender: TObject);
begin
(Sender as TdxEdit).selectall;
(Sender as TdxEdit).setfocus;
end;

end.
