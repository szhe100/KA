unit Unit143;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Spin, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxDBEdtr,
  dxDBELib, Db, DBClient, ToolWin, dxDBTL, ImgList, Menus, ADODB, dxEdLib, mycds;

type
  Tsetaccounts = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Images: TImageList;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1acc_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1acc_cd: TdxDBTreeListMaskColumn;
    Label11: TLabel;
    Shape3: TShape;
    ImageList: TImageList;
    dxDBTreeList1acc_title: TdxDBTreeListColumn;
    ToolBar1: TToolBar;
    btnAdd: TToolButton;
    btnAddChild: TToolButton;
    btnDelete: TToolButton;
    ToolButton1: TToolButton;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    ADOQuery1: TADOQuery;
    DSaccounts: TDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    ADOQuery1acc_id: TAutoIncField;
    ADOQuery1comp_id: TIntegerField;
    ADOQuery1acc_cd: TStringField;
    ADOQuery1acc_title: TStringField;
    ADOQuery1acc_desc: TStringField;
    ADOQuery1qry_code: TStringField;
    ADOQuery1Ltitle: TStringField;
    ADOQuery1haschild: TBooleanField;
    ADOQuery1acc_level: TIntegerField;
    ADOQuery1parent_id: TIntegerField;
    ADOQuery1acc_side: TBooleanField;
    TabSheet2: TTabSheet;
    Shape1: TShape;
    Label1: TLabel;
    DSaccounts1: TDataSource;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    BitBtn1: TBitBtn;
    accounts: TClientDataSet;
    accountsacc_id: TAutoIncField;
    accountscomp_id: TIntegerField;
    accountsparent_id: TIntegerField;
    accountsacc_cd: TStringField;
    accountsacc_title: TStringField;
    accountsacc_desc: TStringField;
    accountsacc_level: TIntegerField;
    accountsacc_side: TBooleanField;
    accountsLtitle: TStringField;
    accountshaschild: TBooleanField;
    accountsqry_code: TStringField;
    accounts1: TClientDataSet;
    AutoIncField15: TAutoIncField;
    IntegerField119: TIntegerField;
    StringField172: TStringField;
    StringField173: TStringField;
    BooleanField22: TBooleanField;
    Button1: TButton;
    dxDBTreeList1acc_level: TdxDBTreeListColumn;
    Edit1: TEdit;
    dxDBTreeList2: TdxDBTreeList;
    dxDBTreeList2acc_cd: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    dxDBTreeList2acc_title: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn1: TdxDBTreeListColumn;
    dxDBTreeList2acc_side: TdxDBTreeListCheckColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFullExpandClick(Sender: TObject);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAddChildClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure accountsReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxDBTreeList1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure DSaccountsDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure accountsBeforeEdit(DataSet: TDataSet);
    procedure accountsBeforeDelete(DataSet: TDataSet);
    procedure accountsAfterPost(DataSet: TDataSet);
    procedure accountsBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FParentValue: Variant;
    FParentcode : Variant;
  public
    { Public declarations }
  end;

var
  setaccounts: Tsetaccounts;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetaccounts.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with accounts do
    if active=true then
    begin
        if state in [dsinsert,dsedit] then post;
        close;
    end;
end;

procedure Tsetaccounts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetaccounts.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

procedure Tsetaccounts.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tsetaccounts.btnDeleteClick(Sender: TObject);
var pr: integer;
begin
    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='select dbo.fn_acchaschild('+accounts.fieldbyname('acc_id').asstring+')';
        open;
        if fields[0].asboolean=true then raise Exception.Create('本科目具有下级,不可删除');
        close;

        if active=true then close;
        commandtext:='select top 1 1 from tb_bill a,tb_bill_dtl b where a.bod_type_id=80 and a.bod_id=b.bod_id';
        commandtext:=commandtext+' and b.med_id=' + accounts.fieldbyname('acc_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('本科目已发生，不可删除');
    end;
    if MessageBox(Handle, '确定删除所选科目?', '请注意', MB_YESNO or MB_ICONWARNING) = ID_YES then
    with dxDBTreeList1 do
    begin
//        accounts.disablecontrols;
        pr := accounts.fieldbyname('parent_id').asinteger;
//        pr := FParentValue;
        if SelectedCount > 0 then accounts.delete;
//        if SelectedCount > 0 then DeleteSelection;
        accounts.locate('acc_id',pr,[]);
//        accounts.enablecontrols;
    end;
end;

procedure Tsetaccounts.btnAddChildClick(Sender: TObject);
var acclevel: integer;
begin
if MessageBox(Handle, '确定新增当前科目的下级科目?', '请确定', MB_YESNO or MB_ICONWARNING) = ID_YES then
begin
    with accounts do
    begin
        FParentValue := fieldbyname('acc_id').asstring;
        FParentcode  := fieldbyname('acc_cd').asstring;
	    acclevel     :=accounts.fieldbyname('acc_level').asinteger+1;
        Insert;
    //    append;
        FieldByName('comp_id').asinteger := compid;
        FieldByName('parent_id').asstring := FParentValue;
        FieldByName('acc_cd').asstring := FParentcode;
		fieldbyname('acc_level').asinteger:=acclevel;
//        post;
//        edit;
        FParentValue := fieldbyname('acc_id').asstring;
    end;
    dxDBTreeList1.ShowEditor;
end;
end;

procedure Tsetaccounts.btnAddClick(Sender: TObject);
var acclevel: integer;
begin
if MessageBox(Handle, '确定新增当前科目的同级科目?', '请确定', MB_YESNO or MB_ICONWARNING) = ID_NO then Abort;
if accounts.fieldbyname('parent_id').IsNull then FParentValue := -1 else
begin
    FParentValue := accounts.fieldbyname('parent_id').asinteger;
    FParentcode  := accounts.fieldbyname('acc_cd').asstring;
    acclevel    :=accounts.fieldbyname('acc_level').asinteger;
end;
with accounts do
begin
    Insert;
//	append;
    FieldByName('comp_id').asinteger := compid;
    FieldByName('parent_id').asstring := FParentValue;
    FieldByName('acc_cd').asstring := FParentcode;
	fieldbyname('acc_level').asinteger:=acclevel;
//showmessage(inttostr(accounts.fieldbyname('acc_id').asinteger));
//    post;
end;
dxDBTreeList1.ShowEditor;
end;

procedure Tsetaccounts.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if (Node.Values[dxDBTreeList1parent_id.Index] =-1) then Index :=2 else
if Node.Selected then Index := 1 else
if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tsetaccounts.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_escape then
begin
    with Tdxdbtreelist(activecontrol) do
    begin
       if focusedcolumn= 0 then
       begin
            with accounts do
                if fieldbyname('acc_title').asstring='' then delete;
       end;
    end;
end;
end;

procedure Tsetaccounts.accountsReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('accounts : '+e.message);
end;

procedure Tsetaccounts.dxDBTreeList1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if (ANode.Values[dxDBTreeList1parent_id.Index] =-1)   // 由于上语句在分组时有 invalid variant type conversion 异常； 用string类型字段判断可避免
  then Acolor := $00E6E3E4; //clRed; //clFuchsia;     variant
}
end;

procedure Tsetaccounts.DSaccountsDataChange(Sender: TObject;
  Field: TField);
begin
with accounts do
begin
    btnadd.Enabled:=(state=dsbrowse) and (fieldbyname('acc_level').asinteger in [1,2,3]);
    btnaddchild.Enabled:=(state=dsbrowse) and (fieldbyname('acc_level').asinteger in [1,2]);
    btndelete.Enabled:=(state=dsbrowse) and ((fieldbyname('acc_level').asinteger in [2,3]) or (fieldbyname('acc_level').isnull)) and (fieldbyname('haschild').asboolean=false);
    dxDBTreeList1acc_title.DisableEditor:=not (fieldbyname('acc_level').isnull) and (fieldbyname('acc_level').asinteger in [0]);
    dxDBTreeList1acc_cd.DisableEditor:=not (fieldbyname('acc_level').isnull) and (fieldbyname('acc_level').asinteger in [0]);
end;
end;

procedure Tsetaccounts.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet2 then
begin
    with accounts1 do
    begin
        if active=True then close;
        commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
        commandtext:=commandtext+' from tb_accounts where dbo.fn_getacclevel(acc_id)<2 and (comp_id=0 or comp_id='+inttostr(compid)+')';
edit1.text:=commandtext;        
        open;
    end;
end;
end;

procedure Tsetaccounts.ToolButton6Click(Sender: TObject);
begin
dxDBTreeList2.FullCollapse;
end;

procedure Tsetaccounts.ToolButton7Click(Sender: TObject);
begin
dxDBTreeList2.FullExpand;
end;

procedure Tsetaccounts.BitBtn1Click(Sender: TObject);
var accid: integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_accounts set acc_level=dbo.fn_getacclevel(acc_id) where acc_level is null';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
with accounts do
begin
    if active then
    begin
    	accid:=fieldbyname('acc_id').asinteger;
        close;
    end
    else accid:=0;
    commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
    commandtext:=commandtext+' from tb_accounts where (comp_id=0 or comp_id='+inttostr(compid)+')';
    open;
    locate('acc_id',accid,[]);
end;
end;

procedure Tsetaccounts.accountsBeforeEdit(DataSet: TDataSet);
begin
if (accounts.fieldbyname('acc_level').asinteger=0) // and (accounts.fieldbyname('acc_level').asinteger in [0,1])
    then raise Exception.Create('科目分类记录不可修改');
{
if not (accounts.fieldbyname('acc_level').isnull) and (accounts.fieldbyname('acc_level').asinteger in [0,1])
    then raise Exception.Create('科目分类及总帐科目不可修改');
}
end;

procedure Tsetaccounts.accountsBeforeDelete(DataSet: TDataSet);
begin
if (accounts.fieldbyname('acc_level').asinteger=0) // and (accounts.fieldbyname('acc_level').asinteger in [0,1])
    then raise Exception.Create('科目分类记录不可修改删除');
{
if not (accounts.fieldbyname('acc_level').isnull) and (accounts.fieldbyname('acc_level').asinteger in [0,1])
    then raise Exception.Create('科目分类及总帐科目不可删除');
}
end;

procedure Tsetaccounts.accountsAfterPost(DataSet: TDataSet);
//var sc: string;
//    ri: integer;
begin
with accounts do
begin
//    sc:=fieldbyname('acc_cd').asstring;
	if ChangeCount>0 then myupdaterefresh(accounts,'tb_accounts','acc_id','');
end;
{
with (dataset as TClientdataset) do
begin

    if state=dsinsert then ri:=0 else ri:=fieldbyname('acc_id').asinteger;
    ApplyUpdates(-1);
    refresh;
    if ri=0 then last else locate('acc_id',ri,[]);
    if fieldbyname('acc_cd').asstring='' then raise Exception.Create('请输入科目编码');
    sc:=fieldbyname('acc_cd').asstring;
end;
}
end;

procedure Tsetaccounts.accountsBeforePost(DataSet: TDataSet);
begin
with accounts do
begin
    if fieldbyname('acc_cd').asstring='' then raise Exception.Create('请输入科目编码');
end;
end;

procedure Tsetaccounts.Button1Click(Sender: TObject);
begin
with accounts do
begin
    Insert;
showmessage(inttostr(accounts.fieldbyname('acc_id').asinteger));
end;
end;

procedure Tsetaccounts.FormActivate(Sender: TObject);
begin
BitBtn1Click(nil);
end;

end.
