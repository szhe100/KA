unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, DB, DBClient, ComCtrls, ToolWin, dxDBTL, ExtCtrls,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, mycds, ADODB, Buttons, Comobj;

type
  Tsetbusioption = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    TabSheet1: TTabSheet;
    Label14: TLabel;
    TabSheet6: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1department: TdxDBGridMaskColumn;
    dxDBGrid1zname: TdxDBGridMaskColumn;
    dxDBGrid1sta_id: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridCheckColumn;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    homebankbalance: TBCDField;
    DShomebank: TDataSource;
    Label18: TLabel;
    dxDBGrid1account: TdxDBGridCheckColumn;
    dxDBGrid1supervisor: TdxDBGridCheckColumn;
    dxDBGrid1biller: TdxDBGridCheckColumn;
    TabSheet8: TTabSheet;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1zdesc: TdxDBTreeListMaskColumn;
    ImageList1: TImageList;
    Images: TImageList;
    ToolBar1: TToolBar;
    btnAdd: TToolButton;
    btnAddChild: TToolButton;
    btnDelete: TToolButton;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Shape3: TShape;
    Label21: TLabel;
    ToolButton2: TToolButton;
    Label6: TLabel;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3zdesc: TdxDBGridMaskColumn;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4team_name: TdxDBGridMaskColumn;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid5zdesc: TdxDBGridMaskColumn;
    dxDBGrid6: TdxDBGrid;
    dxDBGrid6zdesc: TdxDBGridMaskColumn;
    dxDBGrid10: TdxDBGrid;
    dxDBGrid11: TdxDBGrid;
    dxDBGrid11zdesc: TdxDBGridMaskColumn;
    dxDBGrid12: TdxDBGrid;
    homebankcomp_id: TAutoIncField;
    TabSheet4: TTabSheet;
    level1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField4: TIntegerField;
    DSlevel1: TDataSource;
    level2: TClientDataSet;
    AutoIncField2: TAutoIncField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField2: TStringField;
    DateTimeField3: TDateTimeField;
    IntegerField9: TIntegerField;
    DSlevel2: TDataSource;
    level3: TClientDataSet;
    AutoIncField3: TAutoIncField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField3: TStringField;
    DateTimeField5: TDateTimeField;
    IntegerField14: TIntegerField;
    DSlevel3: TDataSource;
    Label8: TLabel;
    dxDBGrid14: TdxDBGrid;
    dxDBGrid14zdesc: TdxDBGridColumn;
    Label9: TLabel;
    ADOQuery1: TADOQuery;
    dxDBGrid1manager: TdxDBGridCheckColumn;
    dxDBGrid1custservice: TdxDBGridCheckColumn;
    level1zname: TStringField;
    dxDBGrid14zname: TdxDBGridButtonColumn;
    level1sta_id: TAutoIncField;
    dxDBTreeList1cust_code: TdxDBTreeListColumn;
    district: TClientDataSet;
    districtrec_id: TAutoIncField;
    districttype_id: TIntegerField;
    districtparent: TIntegerField;
    districtzdesc: TStringField;
    districtcust_code: TStringField;
    districtzinfo: TMemoField;
    DSdistrict: TDataSource;
    staff: TClientDataSet;
    staffsta_id: TAutoIncField;
    staffcomp_id: TAutoIncField;
    staffdepartment: TStringField;
    staffdept_id: TIntegerField;
    staffsta_type_id: TIntegerField;
    staffzname: TStringField;
    staffqry_code: TStringField;
    staffzcode: TStringField;
    staffsex: TBooleanField;
    staffpersonalID: TStringField;
    staffbirthdate: TDateTimeField;
    stafforigin: TStringField;
    staffdegree: TStringField;
    stafftitle: TStringField;
    staffhiredate: TDateTimeField;
    stafffiredate: TDateTimeField;
    staffzpost: TStringField;
    staffphone: TStringField;
    stafffax: TStringField;
    staffnotes: TMemoField;
    staffpassword: TStringField;
    staffoperative: TBooleanField;
    staffresidence: TStringField;
    staffreceipt: TBooleanField;
    staffbroker: TBooleanField;
    staffstorage: TBooleanField;
    staffmanager: TBooleanField;
    staffcustservice: TBooleanField;
    staffuse_priority: TIntegerField;
    staffcreat_dt: TDateTimeField;
    staffcreat_by: TIntegerField;
    staffaccount: TBooleanField;
    staffpurchase: TBooleanField;
    staffsupervisor: TBooleanField;
    staffexportable: TBooleanField;
    staffbiller: TBooleanField;
    DSstaff: TDataSource;
    staffcheckimp: TBooleanField;
    dxDBGrid1checkimp: TdxDBGridCheckColumn;
    staffmodify_dt: TDateTimeField;
    staffmodify_by: TIntegerField;
    level3zname: TStringField;
    level2zname: TStringField;
    level2sta_id: TAutoIncField;
    stafff1: TBooleanField;
    dxDBGrid1f1: TdxDBGridCheckColumn;
    level1obj_code: TStringField;
    level2obj_code: TStringField;
    level3obj_code: TStringField;
    dxDBGrid14obj_code: TdxDBGridColumn;
    level3sta_id: TAutoIncField;
    stafff2: TBooleanField;
    dxDBGrid1f2: TdxDBGridCheckColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    dxDBTreeList1district: TdxDBTreeListColumn;
    districtdistrict: TStringField;
    districtSAP_code: TStringField;
    dxDBGrid10zdesc: TdxDBGridColumn;
    dxDBGrid12zdesc: TdxDBGridColumn;
    dxDBGrid16: TdxDBGrid;
    dxDBGrid16obj_code: TdxDBGridColumn;
    dxDBGrid16zdesc: TdxDBGridColumn;
    Label15: TLabel;
    dxDBGrid17: TdxDBGrid;
    dxDBGrid17obj_code: TdxDBGridColumn;
    dxDBGrid17zdesc: TdxDBGridColumn;
    Label16: TLabel;
    dxDBGrid19: TdxDBGrid;
    dxDBGrid19obj_code: TdxDBGridColumn;
    dxDBGrid19zdesc: TdxDBGridColumn;
    Label17: TLabel;
    dxDBGrid9: TdxDBGrid;
    dxDBGrid9obj_code: TdxDBGridColumn;
    dxDBGrid9zdesc: TdxDBGridColumn;
    dxDBGrid13: TdxDBGrid;
    dxDBGrid13obj_code: TdxDBGridColumn;
    dxDBGrid13zdesc: TdxDBGridColumn;
    Label12: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2rec_id: TdxDBGridColumn;
    dxDBGrid2country: TdxDBGridColumn;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1country: TStringField;
    ADOQuery1prov_code: TStringField;
    ADOQuery1prov_name: TStringField;
    ADOQuery1city_code: TStringField;
    ADOQuery1city_name: TStringField;
    ADOQuery1county_code: TStringField;
    ADOQuery1county_name: TStringField;
    dist: TClientDataSet;
    DSdist: TDataSource;
    distrec_id: TAutoIncField;
    distcountry: TStringField;
    distprov_code: TStringField;
    distprov_name: TStringField;
    distcity_code: TStringField;
    distcity_name: TStringField;
    distcounty_code: TStringField;
    distcounty_name: TStringField;
    dxDBGrid2prov_code: TdxDBGridColumn;
    dxDBGrid2prov_name: TdxDBGridColumn;
    dxDBGrid2city_code: TdxDBGridColumn;
    dxDBGrid2city_name: TdxDBGridColumn;
    dxDBGrid2county_code: TdxDBGridColumn;
    dxDBGrid2county_name: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure homebankAfterPost(DataSet: TDataSet);
    procedure homebankBeforePost(DataSet: TDataSet);
    procedure homebankBeforeDelete(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddChildClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1SelectedCountChange(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure level1BeforePost(DataSet: TDataSet);
    procedure level2BeforePost(DataSet: TDataSet);
    procedure level3BeforePost(DataSet: TDataSet);
    procedure level1AfterPost(DataSet: TDataSet);
    procedure dxDBGrid14znameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure districtAfterPost(DataSet: TDataSet);
    procedure districtAfterInsert(DataSet: TDataSet);
    procedure dxDBTreeList1Enter(Sender: TObject);
    procedure districtBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure staffAfterPost(DataSet: TDataSet);
    procedure staffBeforePost(DataSet: TDataSet);
    procedure dxDBGrid15znameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid18znameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FParentValue: Variant;
  public
    { Public declarations }
  end;

var
  setbusioption: Tsetbusioption;
  settle_way,settle_day: integer;

implementation

uses datamodu, Unit28a;

{$R *.DFM}

procedure Tsetbusioption.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with dm.back_type do if active then close;
with dm.cdsunit do if active then close;
with dm.settle_type do if active then close;
with dm.fee_type do if active then close;
with dm.imp_type do if active then close;
with dm.exp_type do if active then close;
with dm.med_type do if active then close;
with dm.rnp_type do if active then close;
with dm.cust_group do if active then close;
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;
with dm.prod_line do if active then close;
with dm.busi_center do if active then close;
with dm.sale_team do if active then close;
with dm.data_type do if active then close;

with dm.department do if active then close;
with dm.homebank do if active then close;
with dm.bank do if active then close;
with staff do if active then close;
with district do if active then close;
with dm.team do if active then close;
with dm.pubqry do
begin
    if active then close;
    commandtext:='if exists (select 1 from tb_treedata where level_id is null)';
    commandtext:=commandtext+' update tb_treedata set level_id=dbo.fn_getdistlevel(rec_id) where level_id is null';
    execute;
end;
end;

procedure Tsetbusioption.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusioption.BitBtn1Click(Sender: TObject);
var mi: word;
begin

with dm.pubqry do
begin
    if active then close;
    commandtext:='select * from tb_option where opt_title=''bill_split''';
    open;
    if recordcount=0 then
    begin
        for mi:=1 to 6 do
        begin
            if active then close;
            commandtext:='insert into tb_option (opt_title,param3) values (''bill_split'','+inttostr(mi)+')';
            execute;
        end;
    end;

    commandtext:='if not exists (select * from tb_option where opt_title=''bill_splitable'')';
    commandtext:=commandtext+' insert into tb_option (opt_title) values (''bill_splitable'')';
    execute;
    close;
    execute;
    close;
    dm.sysoption.refresh;
end;
end;

procedure Tsetbusioption.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    with dm.back_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=10';
            open;
        end;
    with dm.imp_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=4';
            open;
        end;
    with dm.exp_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=5';
            open;
        end;
    with dm.fee_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=9';
            open;
        end;
    with dm.settle_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
            open;
        end;
    with dm.rnp_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=6';
            open;
        end;
    with dm.prod_line do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=14';
            open;
        end;
    with dm.nation do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=17';
            open;
        end;
    with dm.data_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=18';
            open;
        end;
end;
if pagecontrol1.activepage=tabsheet3 then
begin
    with dm.cdsunit do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=0';
            open;
        end;
    with dm.med_type do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=3';
            open;
        end;
end;
if pagecontrol1.activepage=TabSheet4 then
begin
    with level1 do
    begin
        if active=false then
        begin
            commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
            commandtext:=commandtext+' where a.obj_type_id=21 and a.comp_id='+inttostr(compid);
            open;
        end;
    end;
    with dm.busi_center do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=15';
            open;
        end;
    with dm.sale_team do
        if active=false then
        begin
            commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=16';
            open;
        end;
{
    with level2 do
    begin
        if active=false then
        begin
            commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
            commandtext:=commandtext+' where a.obj_type_id=22 and a.comp_id='+inttostr(compid);
            open;
        end;
    end;
    with level3 do
    begin
        if active=false then
        begin
            commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
            commandtext:=commandtext+' where a.obj_type_id=23 and a.comp_id='+inttostr(compid);
            open;
        end;
    end;
}
end;
if pagecontrol1.activepage=tabsheet6 then
begin
    with staff do
        if active=false then
        begin
            commandtext:='select a.*,department=b.zdesc from tb_staff a,tb_object b ';
            commandtext:=commandtext+' where a.dept_id=b.obj_id and a.sta_type_id=0 and firedate is null ';
            open;
        end;
end;
{
if pagecontrol1.activepage=tabsheet7 then
begin
    with homebank do
    begin
        if active then close;
        commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
        open;
    end;
end;
}
if pagecontrol1.activepage=tabsheet8 then
begin
with dist do
    if active=false then
    begin
        commandtext:='select * from tb_district';
        setprogress(1);
        open;
        setprogress(0);
    end;
end;
{
with district do
    if active=false then
    begin
        commandtext:='select * from tb_treedata';
        setprogress(1);
        open;
        setprogress(0);
    end;
end;
}
end;

procedure Tsetbusioption.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetbusioption.FormActivate(Sender: TObject);
begin
with dm.department do
    if active=false then
    begin
        commandtext:='select * from tb_object where obj_type_id=1 and comp_id='+inttostr(compid);
        open;
    end;
with dm.team do
begin
    if active then close;
    commandtext:='select * from tb_team';
    open;
end;
end;

procedure Tsetbusioption.homebankAfterPost(DataSet: TDataSet);
begin
if homebank.ChangeCount>0 then myupdaterefresh(homebank,'tb_bank','bank_id','');
end;

procedure Tsetbusioption.homebankBeforePost(DataSet: TDataSet);
begin
with homebank do
begin
    if fieldbyname('bank_name').asstring='' then raise exception.create('科目名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
    end;
end;
end;

procedure Tsetbusioption.homebankBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where bod_status_id=1 and relative_id='+ homebank.fieldbyname('bank_id').asstring;
    open;
    if recordcount>0 then raise exception.create('本科目已发生，不可删除');
end;
if MessageBox(0,'确定删除本科目','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusioption.btnAddClick(Sender: TObject);
var mi: integer;
begin
{
  // add a record
if district.fieldbyname('parent').IsNull then FParentValue := -1
else FParentValue := district.fieldbyname('parent').asinteger;
with district do
begin
    Insert;
    FieldByName('parent').asstring := FParentValue;
end;
}
with dm.pubqry do
begin
    if active then close;
    commandtext:='Insert into tb_treedata(type_id,parent) values(1,'+district.fieldbyname('parent').asstring+')';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
end;
district.close;
PageControl1Change(nil);
district.Locate('rec_id',mi,[]);
dxDBTreeList1.ShowEditor;
end;

procedure Tsetbusioption.btnAddChildClick(Sender: TObject);
var mi: integer;
begin
{
// add a child record
with district do
begin
    FParentValue := fieldbyname('rec_id').asstring;
    Insert;
    FieldByName('parent').asstring := FParentValue;
    post;
    edit;
end;
dxDBTreeList1.ShowEditor;
}
with dm.pubqry do
begin
    if active then close;
    commandtext:='Insert into tb_treedata(type_id,parent) values(1,'+district.fieldbyname('rec_id').asstring+')';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
end;
district.close;
PageControl1Change(nil);
district.Locate('rec_id',mi,[]);
dxDBTreeList1.ShowEditor;
end;

procedure Tsetbusioption.btnDeleteClick(Sender: TObject);
begin
if MessageBox(Handle, '删除所选记录?', 'Confirm', MB_YESNO or MB_ICONWARNING) = ID_YES then
  with dxDBTreeList1 do if SelectedCount > 0 then DeleteSelection;
end;

procedure Tsetbusioption.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tsetbusioption.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

procedure Tsetbusioption.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
  if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tsetbusioption.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_escape then
begin
    with Tdxdbtreelist(activecontrol) do
    begin
       if focusedcolumn= 0 then
       begin
            with district do
                if fieldbyname('zdesc').asstring='' then delete;
       end;
    end;
end;
end;

procedure Tsetbusioption.dxDBTreeList1SelectedCountChange(Sender: TObject);
begin
btnDelete.Enabled := dxDBTreeList1.SelectedCount > 0;
end;

procedure Tsetbusioption.ToolButton2Click(Sender: TObject);
begin
district.refresh;
end;

procedure Tsetbusioption.level1BeforePost(DataSet: TDataSet);
begin
with level1 do
begin
    if fieldbyname('zdesc').asstring='' then raise Exception.Create('事业部名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('obj_type_id').asinteger:=21;
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusioption.level2BeforePost(DataSet: TDataSet);
begin
with level2 do
begin
    if (fieldbyname('zdesc').asstring='')
        then raise Exception.Create('大区名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('obj_type_id').asinteger:=22;
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusioption.level3BeforePost(DataSet: TDataSet);
begin
with level3 do
begin
    if (fieldbyname('zdesc').asstring='')
        then raise Exception.Create('小区名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('obj_type_id').asinteger:=23;
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusioption.level1AfterPost(DataSet: TDataSet);
begin
if (DataSet as TClientDataSet).ChangeCount>0 then myupdaterefresh((DataSet as TClientDataSet),'tb_object','obj_id','');
//if level1.ChangeCount>0 then myupdaterefresh(level1,'tb_object','obj_id','');
end;

procedure Tsetbusioption.dxDBGrid14znameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (level1.state in [dsinsert,dsedit]) then level1.edit;
    if showmodal= mrOK then
    begin
        level1.fieldbyname('sta_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        level1.fieldbyname('zname').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        level1.fieldbyname('sta_id').asinteger:=0;
        level1.fieldbyname('zname').asstring:='';
    end;
end;
end;

procedure Tsetbusioption.districtAfterPost(DataSet: TDataSet);
begin
if district.ChangeCount>0 then myupdaterefresh(district,'tb_treedata','rec_id','');
end;

procedure Tsetbusioption.districtAfterInsert(DataSet: TDataSet);
begin
district.fieldbyname('type_id').asinteger:=1;
end;

procedure Tsetbusioption.dxDBTreeList1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDBTreeList).datasource;
wwDBNavigator1Insert.Enabled:=False;
end;

procedure Tsetbusioption.districtBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_busimate where district='+ district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise exception.create('本地区已使用，不可删除');
end;
if MessageBox(0,'确定删除本地区','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusioption.wwDBNavigator1InsertClick(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet8 then abort;
end;

procedure Tsetbusioption.staffAfterPost(DataSet: TDataSet);
begin
with staff do
begin
    if ChangeCount>0 then myupdaterefresh(staff,'tb_staff','sta_id','');
    refreshmyrecord(staff,dm.Refreshcds,0,'a.sta_id',fieldbyname('sta_id').asinteger);
end;
end;

procedure Tsetbusioption.staffBeforePost(DataSet: TDataSet);
begin
with staff do
begin
    if fieldbyname('zname').asstring='' then raise exception.create('请输入员工姓名');
    if fieldbyname('dept_id').asinteger=0 then raise exception.create('请输入员工所属部门');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('sta_type_id').asinteger:=0;  // 0: 员工
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusioption.dxDBGrid15znameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (level2.state in [dsinsert,dsedit]) then level2.edit;
    if showmodal= mrOK then
    begin
        level2.fieldbyname('sta_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        level2.fieldbyname('zname').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        level2.fieldbyname('sta_id').asinteger:=0;
        level2.fieldbyname('zname').asstring:='';
    end;
end;
end;

procedure Tsetbusioption.dxDBGrid18znameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (level3.state in [dsinsert,dsedit]) then level3.edit;
    if showmodal= mrOK then
    begin
        level3.fieldbyname('sta_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        level3.fieldbyname('zname').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        level3.fieldbyname('sta_id').asinteger:=0;
        level3.fieldbyname('zname').asstring:='';
    end;
end;
end;

procedure Tsetbusioption.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,typeid: integer;
    s1,s2,s3,str: string;
begin
    if sender= SpeedButton1 then typeid:=21
    else if sender= SpeedButton2 then typeid:=22
    else if sender= SpeedButton3 then typeid:=23;
    XL := CreateOleObject('Excel.Application');
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
    //从第2行开始导入，导入格式: 编码,事业部,负责人

    str:='declare @cnt int,@sum int select @cnt=0,@sum=0';

    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);  //obj_code
        s2:=Trim(sheet.cells[j,2].text);  //zdesc
        s3:=Trim(sheet.cells[j,3].text);  //zname
//  sp_importobject](@compid tinyint,@objtypeid tinyint,@objcode varchar(50),@zdesc varchar(50),@zname varchar(50),@creatby int,@cnt int output)
        str:=str+' exec sp_importobject '+inttostr(compid)+','+inttostr(typeid)+','''+s1+''','''+s2+''','''+s3+''','+inttostr(curuserid)+',@cnt output';
        str:=str+' set @sum=@sum+@cnt';
{
exec sp_importobject 1,21,'','OTC?????','??',5,@cnt output
select @cnt
set @sum=@sum+@cnt

set @cnt=0
exec sp_importobject 1,21,'','heyang','??',5,@cnt output
select @cnt
set @sum=@sum+@cnt

select @sum
}
        j:=j+1;
    end;
    XL.Quit;
    setprogress(0);
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=str+' select @sum';
edit1.text:=commandtext;        
        open;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then mi:=0 else mi:=fields[0].asinteger;
    end;
    if (typeid=21) and level1.Active then level1.close;
    if (typeid=22) and level2.Active then level2.close;
    if (typeid=23) and level3.Active then level3.close;
    PageControl1Change(nil);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'条记录,重复记录不再导入)'),'请注意',MB_OK+MB_ICONInformation);
end;

end.
