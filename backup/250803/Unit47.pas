unit Unit47;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, Menus, ADODB, DBClient, dxCntner, ImgList, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, dxDBELib, dxDBEdtr, dxdbtrel,
  StdCtrls, Buttons, dxDBTL, dxEdLib, dxEditor, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, ComCtrls, mycds;

type
  Tsetuser = class(TForm)
    ImageList1: TImageList;
    StyleController: TdxEditStyleController;
    pubqry: TClientDataSet;
    SpeedButton2: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    Shape3: TShape;
    Shape5: TShape;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1dept: TdxDBGridMaskColumn;
    dxDBGrid1zname: TdxDBGridMaskColumn;
    DSuser: TDataSource;
    ADOQuery1: TADOQuery;
    dxDBGrid1degree: TdxDBGridColumn;
    dxDBGrid1title: TdxDBGridColumn;
    dxDBGrid1zpost: TdxDBGridColumn;
    dxDBGrid1hiredate: TdxDBGridColumn;
    dxDBGrid1firedate: TdxDBGridColumn;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    dxDBGrid1stop_for: TdxDBGridColumn;
    dxDBGrid1stop_dt: TdxDBGridColumn;
    dxButtonEdit1: TdxButtonEdit;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    Label4: TLabel;
    dxDBGrid1stoper: TdxDBGridColumn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBGrid3: TdxDBGrid;
    dxLookupTreeView1: TdxLookupTreeView;
    Label1: TLabel;
    Shape4: TShape;
    SpeedButton3: TSpeedButton;
    supplier: TClientDataSet;
    DSsupplier: TDataSource;
    suppliermate_id: TAutoIncField;
    suppliermate_name: TStringField;
    suppliercdistrict: TStringField;
    dxDBGrid3mate_name: TdxDBGridMaskColumn;
    dxDBGrid3cdistrict: TdxDBGridMaskColumn;
    trustmate1: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField3: TStringField;
    DStrustmate1: TDataSource;
    dxDBGrid4: TdxDBGrid;
    dxDBGrid4cdistrict: TdxDBGridMaskColumn;
    dxDBGrid4mate_name: TdxDBGridMaskColumn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape6: TShape;
    dxLookupTreeView2: TdxLookupTreeView;
    SpeedButton5: TSpeedButton;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid5cdistrict: TdxDBGridMaskColumn;
    dxDBGrid5mate_name: TdxDBGridMaskColumn;
    customer: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField4: TStringField;
    StringField6: TStringField;
    DScustomer: TDataSource;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label7: TLabel;
    Shape7: TShape;
    dxDBGrid6: TdxDBGrid;
    dxDBGrid6cdistrict: TdxDBGridMaskColumn;
    dxDBGrid6mate_name: TdxDBGridMaskColumn;
    trustmate2: TClientDataSet;
    AutoIncField3: TAutoIncField;
    StringField7: TStringField;
    StringField9: TStringField;
    DStrustmate2: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    trustmate1rec_id: TAutoIncField;
    trustmate2rec_id: TAutoIncField;
    TabSheet5: TTabSheet;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    dxEdit1: TdxEdit;
    SpeedButton6: TSpeedButton;
    DBGrid1: TdxDBGrid;
    DBGrid1med_code: TdxDBGridMaskColumn;
    DBGrid1med_name: TdxDBGridMaskColumn;
    DBGrid1chm_name: TdxDBGridColumn;
    DBGrid1specifi: TdxDBGridMaskColumn;
    DBGrid1med_type: TdxDBGridColumn;
    DBGrid1pdt_place: TdxDBGridMaskColumn;
    DBGrid1med_unit: TdxDBGridMaskColumn;
    DBGrid1qtyperpack: TdxDBGridColumn;
    DBGrid1qtyperbox: TdxDBGridColumn;
    Label33: TLabel;
    pickmed: TClientDataSet;
    pickmedpick_ord: TIntegerField;
    pickmedmed_id: TAutoIncField;
    pickmedmed_code: TStringField;
    pickmedmed_name: TStringField;
    pickmedchm_name: TStringField;
    pickmedspecifi: TStringField;
    pickmedmed_type: TStringField;
    pickmedpdt_place: TStringField;
    pickmedmed_unit: TStringField;
    pickmedqry_code: TStringField;
    pickmedqtyperbox: TBCDField;
    pickmedqtyperpack: TBCDField;
    pickmedappv_docu: TStringField;
    pickmedfunc_type: TStringField;
    DSpickmed: TDataSource;
    DBGrid1appv_docu: TdxDBGridColumn;
    dxDBGrid7: TdxDBGrid;
    dxDBGrid7med_code: TdxDBGridMaskColumn;
    dxDBGrid7med_name: TdxDBGridMaskColumn;
    dxDBGrid7chm_name: TdxDBGridColumn;
    dxDBGrid7specifi: TdxDBGridMaskColumn;
    dxDBGrid7pdt_place: TdxDBGridMaskColumn;
    dxDBGrid7appv_docu: TdxDBGridColumn;
    dxDBGrid7med_unit: TdxDBGridMaskColumn;
    dxDBGrid7qtyperpack: TdxDBGridColumn;
    dxDBGrid7qtyperbox: TdxDBGridColumn;
    BitBtn9: TBitBtn;
    trustmed: TClientDataSet;
    DStrustmed: TDataSource;
    DBGrid1med_id: TdxDBGridColumn;
    trustmedpick_ord: TIntegerField;
    trustmedmed_id: TAutoIncField;
    trustmedmed_code: TStringField;
    trustmedmed_name: TStringField;
    trustmedchm_name: TStringField;
    trustmedspecifi: TStringField;
    trustmedpdt_place: TStringField;
    trustmedmed_unit: TStringField;
    trustmedqry_code: TStringField;
    trustmedqtyperbox: TBCDField;
    trustmedqtyperpack: TBCDField;
    trustmedappv_docu: TStringField;
    trustmedfunc_type: TStringField;
    Label10: TLabel;
    Shape10: TShape;
    trustmedrec_id: TAutoIncField;
    TabSheet6: TTabSheet;
    dxDBGrid8: TdxDBGrid;
    dxDBGrid3district: TdxDBGridColumn;
    Shape11: TShape;
    Label11: TLabel;
    dxDBTreeList2: TdxDBTreeList;
    dxDBTreeList1obj_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1name: TdxDBTreeListMaskColumn;
    dxDBCheckEdit4: TdxDBCheckEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    trustdistrict: TClientDataSet;
    DStrustdistrict: TDataSource;
    trustdistrictrec_id: TAutoIncField;
    trustdistrictsta_id: TIntegerField;
    trustdistrictzname: TStringField;
    trustdistrictdist_id: TIntegerField;
    trustdistrictcdistrict: TStringField;
    TabSheet7: TTabSheet;
    dxDBGrid9: TdxDBGrid;
    dxDBGridcreat_dt: TdxDBGridColumn;
    Label12: TLabel;
    Shape12: TShape;
    trustlog: TClientDataSet;
    DStrustlog: TDataSource;
    trustlogrec_id: TAutoIncField;
    trustlogcreat_dt: TDateTimeField;
    trustlogcreat_by: TIntegerField;
    trustlogopt_id: TWordField;
    trustlogsta_id: TIntegerField;
    trustlogtype_id: TWordField;
    trustlogtrust_id: TIntegerField;
    trustlogzname: TStringField;
    trustlogcreater: TStringField;
    trustlogctype: TStringField;
    trustlogtrust_name: TStringField;
    dxDBGrid9copt: TdxDBGridColumn;
    trustlogcopt: TStringField;
    dxDBGrid9ctype: TdxDBGridColumn;
    dxDBGrid9trust_name: TdxDBGridColumn;
    dxDBGrid9creater: TdxDBGridColumn;
    TabSheet9: TTabSheet;
    dxDBCheckEdit6: TdxDBCheckEdit;
    Label14: TLabel;
    Shape14: TShape;
    trustdevice: TClientDataSet;
    DStrustdevice: TDataSource;
    Label16: TLabel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    dxDBGrid12: TdxDBGrid;
    dxDBGrid12mac_addr: TdxDBGridMaskColumn;
    dxDBGrid12hostname: TdxDBGridMaskColumn;
    dxDBGrid12hostip: TdxDBGridColumn;
    pickdevice: TClientDataSet;
    DSpickdevice: TDataSource;
    dxDBGrid13: TdxDBGrid;
    dxDBGrid13mac_addr: TdxDBGridMaskColumn;
    dxDBGrid13hostname: TdxDBGridMaskColumn;
    dxDBGrid13hostip: TdxDBGridColumn;
    pickdevicemac_addr: TStringField;
    pickdevicehostname: TStringField;
    pickdevicehostip: TStringField;
    trustdevicerec_id: TAutoIncField;
    trustdevicesta_id: TIntegerField;
    trustdevicemac_addr: TStringField;
    trustdevicehostname: TStringField;
    trustdevicehostip: TStringField;
    BitBtn16: TBitBtn;
    dxCheckEdit2: TdxCheckEdit;
    SpeedButton8: TSpeedButton;
    Label36: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit3: TdxEdit;
    N2: TMenuItem;
    dxCheckEdit4: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    dxDBGrid1sex: TdxDBGridColumn;
    dxDBTreeList3: TdxDBTreeList;
    dxDBTreeList3sf_id: TdxDBTreeListMaskColumn;
    dxDBTreeList3sf_parent: TdxDBTreeListMaskColumn;
    dxDBTreeList3sf_title: TdxDBTreeListMaskColumn;
    dxDBTreeList3sf_invoke: TdxDBTreeListMaskColumn;
    dxDBTreeList3sf_sort: TdxDBTreeListMaskColumn;
    dxDBTreeList3printable: TdxDBTreeListCheckColumn;
    dxDBTreeList3exportable: TdxDBTreeListCheckColumn;
    Button1: TButton;
    ClientDataSet1: TClientDataSet;
    user: TClientDataSet;
    usersta_id: TAutoIncField;
    userzname: TStringField;
    usersex: TBooleanField;
    userdept_id: TIntegerField;
    userdept: TStringField;
    userhiredate: TDateTimeField;
    userfiredate: TDateTimeField;
    userdegree: TStringField;
    usertitle: TStringField;
    userzpost: TStringField;
    userpassword: TStringField;
    userstop_yn: TBooleanField;
    userstop_by: TIntegerField;
    userstoper: TStringField;
    userstop_dt: TDateTimeField;
    userstop_for: TStringField;
    useruse_priority: TWordField;
    userpurchase: TBooleanField;
    userstorage: TBooleanField;
    useraccount: TBooleanField;
    usersupervisor: TBooleanField;
    userconfidential: TBooleanField;
    usercheckable: TBooleanField;
    usercredit_level: TStringField;
    userfuser: TBooleanField;
    userfallsupplier: TBooleanField;
    userfallcustomer: TBooleanField;
    userfallmed: TBooleanField;
    userfalldistrict: TBooleanField;
    userfalldevice: TBooleanField;
    userftrustright: TBooleanField;
    useright: TClientDataSet;
    userightrec_id: TAutoIncField;
    userightsta_id: TIntegerField;
    userightsf_id: TIntegerField;
    userightsf_parent: TIntegerField;
    userightsf_title: TStringField;
    userightprintable: TBooleanField;
    userightexportable: TBooleanField;
    DSuseright: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1sf_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1sf_parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1sf_title: TdxDBTreeListMaskColumn;
    dxDBGrid1Lusepriority: TdxDBGridLookupColumn;
    usepriority: TClientDataSet;
    DSperiodtype: TDataSource;
    ADOQuery1id: TIntegerField;
    ADOQuery1zdesc: TStringField;
    usepriorityid: TIntegerField;
    usepriorityzdesc: TStringField;
    userLusepriority: TStringField;
    trustmedmed_type: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2sf_title: TdxDBGridMaskColumn;
    dxDBGrid2printable: TdxDBGridCheckColumn;
    dxDBGrid2exportable: TdxDBGridCheckColumn;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit3: TEdit;
    periodtype: TClientDataSet;
    periodtypeobj_id: TIntegerField;
    periodtypezdesc: TStringField;
    TabSheet8: TTabSheet;
    Label9: TLabel;
    Shape8: TShape;
    dxLookupEdit1: TdxLookupEdit;
    dxDBGrid10: TdxDBGrid;
    dxDBCheckEdit5: TdxDBCheckEdit;
    userperiodlimit: TBooleanField;
    periodlimit: TClientDataSet;
    DSperiodlimit: TDataSource;
    periodlimitsta_id: TIntegerField;
    periodlimitrec_id: TIntegerField;
    periodlimitobj_id: TIntegerField;
    periodlimitLzdesc: TStringField;
    periodlimitcreater: TStringField;
    periodlimitcreat_by: TIntegerField;
    periodlimitcreat_dt: TDateTimeField;
    dxDBGrid10Lzdesc: TdxDBGridLookupColumn;
    dxDBGrid10creater: TdxDBGridMaskColumn;
    dxDBGrid10creat_dt: TdxDBGridDateColumn;
    SpeedButton9: TSpeedButton;
    Label13: TLabel;
    Shape9: TShape;
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DSuserDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure trustmate2ReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure dxDBCheckEdit1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DSpickdeviceDataChange(Sender: TObject; Field: TField);
    procedure DStrustdeviceDataChange(Sender: TObject; Field: TField);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure dxLookupTreeView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn16Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dxDBTreeList3Click(Sender: TObject);
    procedure dxDBTreeList3CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure userightAfterPost(DataSet: TDataSet);
    procedure userAfterPost(DataSet: TDataSet);
    procedure dxDBTreeList1Enter(Sender: TObject);
    procedure trustmate1AfterDelete(DataSet: TDataSet);
    procedure trustmate2AfterDelete(DataSet: TDataSet);
    procedure trustdistrictAfterDelete(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure periodlimitBeforeDelete(DataSet: TDataSet);
    procedure periodlimitAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure pickuseright;
  public
    { Public declarations }
  end;

var
  setuser: Tsetuser;
  frightid: integer;

implementation

{$R *.DFM}

uses datamodu, Unit28a, Unit48, md5;

procedure Tsetuser.pickuseright;
var mi: integer;
begin
with useright do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.rec_id,a.sta_id,a.sf_id,b.sf_title,b.sf_parent,b.sf_sort,a.printable,a.exportable';
    commandtext:=commandtext+' from tb_useright a,tb_sysframe b';
    commandtext:=commandtext+' where a.sta_id='+user.fieldbyname('sta_id').asstring+' and a.sf_id is not null and a.sf_id=b.sf_id';
    commandtext:=commandtext+' union all';
    commandtext:=commandtext+' select rec_id=0,sta_id=0,sf_id,sf_title,sf_parent,sf_sort=0,printable=cast(0 as bit),exportable=cast(0 as bit)';
    commandtext:=commandtext+'  from tb_sysframe a';
    commandtext:=commandtext+'  where sf_parent=-1 and exists (select 1 from tb_useright b,tb_sysframe c where b.sta_id='+user.fieldbyname('sta_id').asstring+' and b.sf_id=c.sf_id and c.sf_parent=a.sf_id )';
    commandtext:=commandtext+'      and not exists (select 1 from tb_useright d where a.sf_id=d.sf_id)';
    commandtext:=commandtext+'   order by sf_parent,sf_sort';
//edit2.text:=commandtext;
    open;
    if mi>0 then locate('rec_id',mi,[]);
end;
end;

procedure Tsetuser.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tsetuser.FormActivate(Sender: TObject);
begin
with dm.sysframe do
    if not active then
    begin
        commandtext:='select * from tb_sysframe where dbo.fn_trustright('+inttostr(curuserid)+',sf_id)=1';
        commandtext:=commandtext+' order by sf_parent,sf_sort';
        open;
    end;
with usepriority do
begin
    if active=false then
    begin
        commandtext:='select id=0,zdesc=''普通用户'' union select id=1,zdesc=''超级用户'' union select id=2,zdesc=''系统管理员''';
        open;
    end;
end;
with periodtype do
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'' union all select obj_id=5,zdesc=''2019''';
        commandtext:=commandtext+' union all select obj_id=6,zdesc=''2020'' union all select obj_id=7,zdesc=''2021'' union all select obj_id=8,zdesc=''2022'' union all select obj_id=9,zdesc=''2023''';
        commandtext:=commandtext+' union all select obj_id=10,zdesc=''2024'' union all select obj_id=11,zdesc=''2025''';
        if dt0>=strtodate('2026-01-01') then commandtext:=commandtext+' union all select obj_id=12,zdesc=''2026''';
        if dt0>=strtodate('2027-01-01') then commandtext:=commandtext+' union all select obj_id=13,zdesc=''2027''';
        if dt0>=strtodate('2028-01-01') then commandtext:=commandtext+' union all select obj_id=14,zdesc=''2028''';
        open;
    end;
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetuser.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
with user do
    if active then close;
with useright do
    if active then close;
with dm.sysframe do
    if active then close;
with periodtype do
    if active then close;
end;

procedure Tsetuser.BitBtn2Click(Sender: TObject);
var mi:integer;
begin
with user do
begin
    if (active=false) or (recordcount=0) then raise Exception.Create('请先选择需要授权的用户');
//    if user.fieldbyname('sta_id').asinteger=curuserid then raise Exception.Create('不可给本人授权');
end;
with dm.pubqry do
begin
    if MessageBox(0,Pchar('确定授权 '+user.fieldbyname('zname').asstring+'【'+DM.sysframe.fieldbyname('sf_title').asstring+'】权限'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    commandtext:='insert into tb_useright (sta_id,sf_id) select '+user.fieldbyname('sta_id').asstring+',sf_id from tb_sysframe a';
    commandtext:=commandtext+' where (dbo.fn_sysframechild(sf_id,'+dm.sysframe.fieldbyname('sf_id').asstring+')=1';  //包含下级
    commandtext:=commandtext+'  or dbo.fn_sysframechild('+dm.sysframe.fieldbyname('sf_id').asstring+',sf_id)=1)';  //包含上级
    commandtext:=commandtext+'  and not exists (select 1 from tb_useright b where b.sta_id='+user.fieldbyname('sta_id').asstring+' and a.sf_id=b.sf_id)';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;    
    open;
    mi:=fields[0].asinteger;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',1,'+dm.sysframe.fieldbyname('sf_id').asstring+')';
    execute;
    close;
    pickuseright;
    useright.locate('rec_id',mi,[]);
//    MessageBox(0,PChar('所选权限已成功授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetuser.BitBtn3Click(Sender: TObject);
begin
if useright.fieldbyname('rec_id').asinteger=0 then exit;
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_trustright('+inttostr(curuserid)+','+useright.fieldbyname('sf_id').asstring+')';;
    open;
    if fields[0].asboolean=false then raise Exception.Create('该权限非本人可授权权限，不可取消');
end;
}
if MessageBox(0,Pchar('确定取消 '+user.fieldbyname('zname').asstring+' 的【'+useright.fieldbyname('sf_title').asstring+'】权限'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;

    commandtext:=' delete tb_useright where sta_id='+useright.fieldbyname('sta_id').asstring+' and dbo.fn_sysframechild(sf_id,'+useright.fieldbyname('sf_id').asstring+')=1';  //包含下级
//    commandtext:=commandtext+'  or sta_id='+useright.fieldbyname('sta_id').asstring+' and dbo.fn_sysframechild(sf_id,'+useright.fieldbyname('sf_id').asstring+')=1)';  //包含下级
//    commandtext:=commandtext+' go enable trigger tr_useright on tb_useright';
//    edit1.text:=commandtext;
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',1,'+useright.fieldbyname('sf_id').asstring+')';
    execute;
    close;
end;
if (useright.fieldbyname('sf_parent').asinteger=-1) or (useright.fieldbyname('sf_parent').asinteger=0)
    then pickuseright //包含下级的刷新显示
    else useright.delete; //清除本行显示
end;

procedure Tsetuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetuser.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit1.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;
end;

procedure Tsetuser.SpeedButton4Click(Sender: TObject);
begin
if dxbuttonedit1.text='' then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_staff where fuser=1 and sta_id='+inttostr(dxbuttonedit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('该员工已设置为用户，不可再次设置');
end;
if MessageBox(0,pchar('确定将 '+dxbuttonedit1.text+' 设置为用户(初始登录密码为666666)'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_staff set fuser=1,password=''666666'' where sta_id='+inttostr(dxbuttonedit1.tag);
    execute;
end;
SpeedButton8Click(nil);
user.locate('sta_id',dxbuttonedit1.tag,[]);
end;

procedure Tsetuser.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
begin
    wwDBNavigator1.DataSource:=DSuser;
end;
if PageControl1.ActivePage=TabSheet2 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        TabSheet2.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 操作权限';
        pickuseright;
    end;
end;
if PageControl1.ActivePage=TabSheet3 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        with trustmate1 do
        begin
            if tag=user.fieldbyname('sta_id').asinteger then exit;
            if active then close;
            commandtext:='select a.*,zname=dbo.fn_staff_name(a.sta_id),';
            commandtext:=commandtext+'  b.mate_name,cdistrict=dbo.fn_getdistrict(b.district)';
            commandtext:=commandtext+' from tb_trustmate a,tb_busimate b';
            commandtext:=commandtext+' where a.mate_id=b.mate_id and b.mate_type_id=0';
            commandtext:=commandtext+'  and a.sta_id='+user.fieldbyname('sta_id').asstring;
            open;
            tag:=user.fieldbyname('sta_id').asinteger;
        end;
        TabSheet3.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 授权配送商';
    end;
end;
if PageControl1.ActivePage=TabSheet4 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        with trustmate2 do
        begin
            if tag=user.fieldbyname('sta_id').asinteger then exit;
            if active then close;
            commandtext:='select a.*,zname=dbo.fn_staff_name(a.sta_id),';
            commandtext:=commandtext+'  b.mate_name,cdistrict=dbo.fn_getdistrict(b.district)';
            commandtext:=commandtext+' from tb_trustmate a,tb_busimate b';
            commandtext:=commandtext+' where a.mate_id=b.mate_id and b.mate_type_id=1';
            commandtext:=commandtext+'  and a.sta_id='+user.fieldbyname('sta_id').asstring;
            open;
            tag:=user.fieldbyname('sta_id').asinteger;
        end;
        TabSheet4.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 授权客户';
    end;
end;
if PageControl1.ActivePage=TabSheet5 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        with trustmed do
        begin
            if tag=user.fieldbyname('sta_id').asinteger then exit;
            if active then close;
            commandtext:='select t.rec_id,a.pick_ord,a.med_id,a.med_code,a.med_name,a.chm_name,specifi,pdt_place,appv_docu,'; //a.stop_yn,';
            commandtext:=commandtext+' med_type='''',func_type=dbo.fn_obj_desc(a.med_type_id),';  //dbo.fn_med_type(a.med_id)
            commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(a.unit_id),qtyperpack,qtyperbox,qry_code';
            commandtext:=commandtext+' from tb_trustmed t,tb_medicine a';
            commandtext:=commandtext+' where t.med_id=a.med_id';
            commandtext:=commandtext+'  and t.sta_id='+user.fieldbyname('sta_id').asstring;
            open;
            tag:=user.fieldbyname('sta_id').asinteger;
        end;
        TabSheet5.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 授权品种';
    end;
end;
if PageControl1.ActivePage=TabSheet6 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        with trustdistrict do
        begin
            if tag=user.fieldbyname('sta_id').asinteger then exit;
            if active then close;
            commandtext:='select *,zname=dbo.fn_staff_name(sta_id),cdistrict=dbo.fn_getdistrict(dist_id)';
            commandtext:=commandtext+' from tb_trustdistrict';
            commandtext:=commandtext+' where sta_id='+user.fieldbyname('sta_id').asstring;
            open;
            tag:=user.fieldbyname('sta_id').asinteger;
        end;
        TabSheet6.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 授权地区';
    end;
end;
if PageControl1.ActivePage=TabSheet7 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        with trustlog do
        begin
            if active then close;
            commandtext:='select top 1000 *,zname=dbo.fn_staff_name(sta_id),creater=dbo.fn_staff_name(l.creat_by),';
            commandtext:=commandtext+' copt=case opt_id when 1 then ''授权'' when 2 then ''取消'' end,';
            commandtext:=commandtext+' ctype=case type_id when 1 then ''权限'' when 2 then ''配送商'' when 3 then ''客户'' when 4 then ''品种'' when 5 then ''地区'' when 6 then ''代理人'' when 7 then ''绑定设备'' end,';
            commandtext:=commandtext+' trust_name=case type_id when 1 then s.sf_title when 2 then dbo.fn_mate_name(trust_id) when 3 then dbo.fn_mate_name(trust_id)';
            commandtext:=commandtext+'     when 4 then m.med_code+'' ''+m.med_name+'' ''+m.specifi+'' ''+m.pdt_place';
            commandtext:=commandtext+'     when 5 then dbo.fn_getdistrict(trust_id)	end';
            commandtext:=commandtext+' from tb_trustlog l';  //,tb_sysframe s,tb_medicine m
            commandtext:=commandtext+' left join tb_sysframe s on l.trust_id=s.sf_id';
            commandtext:=commandtext+' left join tb_medicine m on l.trust_id=m.med_id';
            commandtext:=commandtext+' where l.sta_id='+user.fieldbyname('sta_id').asstring;
            commandtext:=commandtext+' order by l.rec_id desc';
//            commandtext:=commandtext+' order by l.creat_dt desc';
//edit1.text:=commandtext;
            try
                setprogress(1);
                open;
            finally
                setprogress(0);
            end;
        end;
        TabSheet7.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 授权记录';
    end;
end;
if PageControl1.ActivePage=TabSheet8 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if useright.active then useright.close;
    end
    else
    begin
        TabSheet8.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 查询时段';
        with periodlimit do
        begin
            if active then close;
            commandtext:='select *,creater=dbo.fn_staff_name(creat_by) from tb_sysright where type_id=1 and sta_id='+user.fieldbyname('sta_id').asstring;
            open;
        end
    end;
end;
if PageControl1.ActivePage=TabSheet9 then
begin
    if (user.active=false) or (user.recordcount=0) then
    begin
        if trustdevice.active then trustdevice.close;
        if pickdevice.active then pickdevice.close;
    end
    else
    begin
        with trustdevice do
        begin
            if tag<>user.fieldbyname('sta_id').asinteger then
            begin
                if active then close;
                commandtext:='select * from tb_trustdevice h left join (select a.mac_addr,a.hostname,a.hostip';
                commandtext:=commandtext+' from tb_clientlog a,(';
                commandtext:=commandtext+'select mac_addr,lastid=max(rec_id) from tb_clientlog where log_id='+user.fieldbyname('sta_id').asstring;
                commandtext:=commandtext+' and log_dt>dateadd(day,-90,cast(convert(char(10),getdate(),20) as datetime)) group by mac_addr';
                commandtext:=commandtext+') b where a.rec_id=b.lastid) y on h.mac_addr =y.mac_addr';
                commandtext:=commandtext+' where h.sta_id='+user.fieldbyname('sta_id').asstring;

{
                commandtext:='select * from tb_trustdevice h,(select a.mac_addr,a.hostname,a.hostip';
                commandtext:=commandtext+' from tb_clientlog a,(';
                commandtext:=commandtext+'select mac_addr,lastid=max(rec_id) from tb_clientlog where log_id='+user.fieldbyname('sta_id').asstring;
                commandtext:=commandtext+' and log_dt>dateadd(day,-90,cast(convert(char(10),getdate(),20) as datetime)) group by mac_addr';
                commandtext:=commandtext+') b where a.rec_id=b.lastid) y';
                commandtext:=commandtext+' where h.sta_id='+user.fieldbyname('sta_id').asstring+' and h.mac_addr*=y.mac_addr';
}
                open;
                tag:=user.fieldbyname('sta_id').asinteger;
            end;
        end;
        with pickdevice do
        begin
            if tag<>user.fieldbyname('sta_id').asinteger then
            begin
                if active then close;
                commandtext:='select a.mac_addr,a.hostname,a.hostip from tb_clientlog a,';
                commandtext:=commandtext+'(select mac_addr,lastid=max(rec_id) from tb_clientlog where log_id='+user.fieldbyname('sta_id').asstring;
                commandtext:=commandtext+'   and log_dt>dateadd(day,-30,cast(convert(char(10),getdate(),20) as datetime)) group by mac_addr) b';
                commandtext:=commandtext+' where a.rec_id=b.lastid';
                open;
                tag:=user.fieldbyname('sta_id').asinteger;
            end;
        end;
        TabSheet9.Caption:=trim(user.fieldbyname('dept').asstring)+' '+trim(user.fieldbyname('zname').asstring)+' 绑定电脑设备';
    end;
end;
end;

procedure Tsetuser.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDBGrid).datasource;
end;

procedure Tsetuser.SpeedButton3Click(Sender: TObject);
begin
with supplier do
begin
    if active then close;
    commandtext:='select a.mate_id,a.mate_name,cdistrict=dbo.fn_getdistrict(district) ';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' where a.mate_type_id=0 and a.comp_id='+inttostr(compid);
    if dxLookupTreeView1.text<>'' then commandtext:=commandtext+' and district='+dm.district.fieldbyname('rec_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetuser.dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetuser.BitBtn1Click(Sender: TObject);
begin
with user do
    if (active=false) or (recordcount=0) then raise Exception.Create('请先选择需要授权的用户');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_trustmate where sta_id='+user.fieldbyname('sta_id').asstring+' and mate_id='+supplier.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('已授权该配送商，不可再次授权');
    close;
    if MessageBox(0,Pchar('确定将所选择配送商授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    commandtext:='insert into tb_trustmate (sta_id,mate_id) values (';
    commandtext:=commandtext+user.fieldbyname('sta_id').asstring+','+supplier.fieldbyname('mate_id').asstring+')';
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',2,'+supplier.fieldbyname('mate_id').asstring+')';
    execute;
end;
with trustmate1 do
begin
    if active then close;
    open;
    locate('mate_id',supplier.fieldbyname('mate_id').asinteger,[]);
end;
//MessageBox(0,PChar('所选择配送商已成功授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetuser.SpeedButton5Click(Sender: TObject);
begin
with customer do
begin
    if active then close;
    commandtext:='select a.mate_id,a.mate_name,cdistrict=dbo.fn_getdistrict(district) from tb_busimate a';
    commandtext:=commandtext+' where a.mate_type_id=1 and a.comp_id='+inttostr(compid);
    if dxLookupTreeView2.text<>'' then commandtext:=commandtext+' and district='+dm.district.fieldbyname('rec_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetuser.BitBtn6Click(Sender: TObject);
begin
with user do
    if (active=false) or (recordcount=0) then raise Exception.Create('请先选择需要授权的用户');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_trustmate where sta_id='+user.fieldbyname('sta_id').asstring+' and mate_id='+customer.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('已授权该客户，不可再次授权');
    close;
    if MessageBox(0,Pchar('确定将所选择客户授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    commandtext:='insert into tb_trustmate (sta_id,mate_id) values (';
    commandtext:=commandtext+user.fieldbyname('sta_id').asstring+','+customer.fieldbyname('mate_id').asstring+')';
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',3,'+customer.fieldbyname('mate_id').asstring+')';
    execute;
end;
with trustmate2 do
begin
    if active then close;
    open;
    locate('mate_id',customer.fieldbyname('mate_id').asinteger,[]);
end;
//MessageBox(0,PChar('所选客户已成功授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetuser.N1Click(Sender: TObject);
begin
setpassword:=Tsetpassword.create(application);
with setpassword do
begin
    caption:='修改'+user.fieldbyname('zname').asstring+'的登录密码';
    tag:=user.fieldbyname('sta_id').asinteger;
    showmodal;
    caption:='设置密码';
    free;
end;
end;

procedure Tsetuser.DSuserDataChange(Sender: TObject; Field: TField);
begin
with user do
begin
    SpeedButton2.Enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetuser.SpeedButton2Click(Sender: TObject);
begin
//if not hasexportright(2,curuserid,self.tag)
//    then raise Exception.Create('抱歉，你无权导出本报表');
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', '用户表1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'权限表1.xls', dxDBGrid2.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet3 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'授权配送商表1.xls', dxDBGrid4.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet4 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'授权客户表1.xls', dxDBGrid6.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet5 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'授权品种表1.xls', dxDBGrid7.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet6 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'授权地区表1.xls', dxDBGrid8.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet7 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', user.fieldbyname('dept').asstring+user.fieldbyname('zname').asstring+'授权记录表1.xls', dxDBGrid9.SaveToXLS, self.tag);
end;

procedure Tsetuser.BitBtn4Click(Sender: TObject);
begin
with trustmate1 do
    if (active=false) or (recordcount=0) then exit;
trustmate1.delete;
with dm.pubqry do
begin
{
    if active then close;
    commandtext:='delete from tb_trustmate where rec_id='+trustmate1.fieldbyname('rec_id').asstring;
    execute;
}
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',2,'+trustmate1.fieldbyname('mate_id').asstring+')';
    execute;
end;
end;

procedure Tsetuser.BitBtn7Click(Sender: TObject);
begin
with trustmate2 do
    if (active=false) or (recordcount=0) then exit;
trustmate2.delete;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',3,'+trustmate2.fieldbyname('mate_id').asstring+')';
    execute;
end;
//trustmate2.refresh;
end;

procedure Tsetuser.trustmate2ReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('trustmate2:'+e.Message)
end;

procedure Tsetuser.SpeedButton6Click(Sender: TObject);
var sk,sc: string;
    mi: integer;
    fwid: Boolean;
begin
if (dxedit1.text='') and not (dxCheckEdit3.Checked) and not (dxCheckEdit4.Checked) then raise Exception.Create('请先输入药品简码或品名');

dxedit1.selectall;
sk:=dxedit1.text;

//if sk='' then exit;
fwid:=false;
for mi:=1 to length(sk) do
begin
    sc:=sk[mi];
    if length(sc)>1 then begin fwid:=true; break; end;
end;
with pickmed do
begin
    if active then close;
    commandtext:='select a.pick_ord,a.med_id,a.med_code,a.med_name,a.chm_name,specifi,pdt_place,appv_docu,';
    commandtext:=commandtext+' med_type='''',func_type=dbo.fn_obj_desc(a.med_type_id),';//a.stop_yn,dbo.fn_med_type(a.med_id)
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(a.unit_id),qtyperpack,qtyperbox,qry_code';
    commandtext:=commandtext+' from tb_medicine a ';
    commandtext:=commandtext+' where 1=1'; //isnull(a.stop_yn,0)=0 ';
    if dxCheckEdit4.Checked then commandtext:=commandtext+' and otc_rx=1';
    if dxCheckEdit3.Checked then commandtext:=commandtext+' and GMP=1'; //处方药
    if sk<>'' then
    begin
        commandtext:=commandtext+' and (med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'' or qry_code like''%'+sk+'%'')';
{
        if fwid
            then commandtext:=commandtext+' and (med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
            else commandtext:=commandtext+' and qry_code like''%'+sk+'%''';
}            
    end;
    commandtext:=commandtext+' order by a.med_name,a.pdt_place,a.specifi';
edit3.text:=commandtext;    
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
end;
end;

procedure Tsetuser.BitBtn9Click(Sender: TObject);
var i,mi: integer;
    t: string;
begin
with user do
    if (active=false) or (recordcount=0) then raise Exception.Create('请先选择需要授权的用户');
if (pickmed.active=false) or (pickmed.recordcount=0) then raise Exception.Create('请查找并选定要授权的品种');
t:='';   mi:=0;
if DBGrid1.SelectedCount=0 then t:=pickmed.fieldbyname('med_id').asstring
else
begin
    for i:= 0 to DBGrid1.SelectedCount - 1 do
    begin
        t:= t +','+ DBGrid1.SelectedNodes[i].Strings[10];  // 记录 bod_id 字符串
        mi := mi+1;
    end;
    if mi=0 then raise Exception.Create('所选品种中，无可授权的品种');
    delete(t,1,1);
end;
if MessageBox(0,Pchar('确定将所选择品种授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;

    commandtext:='insert into tb_trustmed (sta_id,med_id)';
    commandtext:=commandtext+' select '+user.fieldbyname('sta_id').asstring+',med_id from tb_medicine';
    commandtext:=commandtext+' where med_id in ('+t+')';
    commandtext:=commandtext+'   and med_id not in (select med_id from tb_trustmed where sta_id='+user.fieldbyname('sta_id').asstring+')';
    commandtext:=commandtext+' select @@identity';
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
    finally
        close;
        setprogress(0);
    end;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' select getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',4,med_id';
    commandtext:=commandtext+'   from tb_medicine where med_id in ('+t+')';
    execute;
end;
trustmed.tag:=0; //can refresh;
PageControl1Change(nil); //refresh
if mi>0 then trustmed.locate('rec_id',mi,[]);
end;

procedure Tsetuser.BitBtn5Click(Sender: TObject);
begin
with trustmed do
    if (active=false) or (recordcount=0) then exit;
if MessageBox(0,pchar('确定取消'+user.fieldbyname('zname').asstring+'的此品种授权'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='delete from tb_trustmed where rec_id='+trustmed.fieldbyname('rec_id').asstring;
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',4,'+trustmed.fieldbyname('med_id').asstring+')';
    execute;
end;
trustmed.Delete;
end;

procedure Tsetuser.dxDBCheckEdit1Click(Sender: TObject);
begin
    wwDBNavigator1.DataSource:=DSuser;
end;

procedure Tsetuser.BitBtn10Click(Sender: TObject);
begin
with user do
    if (active=false) or (recordcount=0) then raise Exception.Create('请先选择需要授权的用户');
with dm.pubqry do
begin
    close;
    if MessageBox(0,Pchar('确定将所选择地区及其下级地区授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    commandtext:='insert into tb_trustdistrict (sta_id,dist_id) ';
    commandtext:=commandtext+'select '+user.fieldbyname('sta_id').asstring+',rec_id from tb_treedata a where dbo.fn_treeischild(rec_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    commandtext:=commandtext+' and not exists (select 1 from tb_trustdistrict b where b.sta_id='+user.fieldbyname('sta_id').asstring+' and a.rec_id=b.dist_id)';
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' select getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',5,rec_id from tb_treedata a where dbo.fn_treeischild(rec_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    commandtext:=commandtext+' and not exists (select 1 from tb_trustlog b where b.opt_id=1 and b.type_id=5 and b.sta_id='+user.fieldbyname('sta_id').asstring+' and a.rec_id=b.trust_id)';
    execute;
end;
with trustdistrict do
begin
    if active then close;
    open;
    locate('dist_id',dm.district.fieldbyname('rec_id').asinteger,[]);
end;
//MessageBox(0,PChar('所选地区已成功授权给用户'+user.fieldbyname('zname').asstring),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetuser.BitBtn11Click(Sender: TObject);
begin
with trustdistrict do
    if (active=false) or (recordcount=0) then exit;
trustdistrict.delete;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',5,'+dm.district.fieldbyname('rec_id').asstring+')';
    execute;
end;
//trustdistrict.refresh;
end;

procedure Tsetuser.DSpickdeviceDataChange(Sender: TObject; Field: TField);
begin
with pickdevice do
    BitBtn14.enabled:=(active) and (recordcount>0);
end;

procedure Tsetuser.DStrustdeviceDataChange(Sender: TObject; Field: TField);
begin
with trustdevice do
    BitBtn15.enabled:=(active) and (recordcount>0);
end;

procedure Tsetuser.BitBtn14Click(Sender: TObject);
var mi: integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 * from tb_trustdevice where sta_id='+user.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' and mac_addr='''+trustdevice.fieldbyname('mac_addr').asstring+'''';
    open;
    if recordcount>0 then raise Exception.Create('该用户已加入该设备，不可再次加入');
end;
if MessageBox(0,Pchar('确定用户'+user.fieldbyname('zname').asstring+'加入绑定设备'+pickdevice.fieldbyname('hostname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_trustdevice (sta_id,mac_addr) values (';
    commandtext:=commandtext+user.fieldbyname('sta_id').asstring+','''+pickdevice.fieldbyname('mac_addr').asstring+''')';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',1,'+user.fieldbyname('sta_id').asstring+',7,0)';
    execute;
end;
with trustdevice do
begin
    if active then close;
    open;
    locate('rec_id',mi,[]);
end;
setprogress(0);
end;

procedure Tsetuser.BitBtn15Click(Sender: TObject);
begin
if MessageBox(0,Pchar('确定用户'+user.fieldbyname('zname').asstring+'取消绑定设备'+trustdevice.fieldbyname('hostname').asstring),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='delete from tb_trustdevice where sta_id='+user.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' and mac_addr='''+trustdevice.fieldbyname('mac_addr').asstring+'''';
    execute;
    if active then close;
    commandtext:='insert into tb_trustlog (creat_dt,creat_by,opt_id,sta_id,type_id,trust_id)';
    commandtext:=commandtext+' values (getdate(),'+inttostr(curuserid)+',2,'+user.fieldbyname('sta_id').asstring+',7,0)';
    execute;
end;
with trustdevice do
begin
    if active then close;
    open;
end;
setprogress(0);
end;

procedure Tsetuser.dxLookupTreeView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView2.text:='';
end;

procedure Tsetuser.BitBtn16Click(Sender: TObject);
begin
if MessageBox(0,Pchar('确定取消用户'+user.fieldbyname('zname').asstring+'最近登录记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_clientlog set log_type_id=101';
    commandtext:=commandtext+' where rec_id=(select top 1 rec_id from tb_clientlog where log_type_id=1 and log_id='+user.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+'      order by rec_id desc)';
    execute;
end;
setprogress(0);
end;

procedure Tsetuser.SpeedButton8Click(Sender: TObject);
var mi: integer;
begin
with user do
begin
    if active then
    begin
        mi:=fieldbyname('sta_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select sta_id,zname,sex,dept_id,dept=dbo.fn_obj_desc(dept_id),';
    commandtext:=commandtext+' degree,title,zpost,password,stop_yn,stop_by,stoper=dbo.fn_staff_name(stop_by),stop_dt,stop_for,';
    commandtext:=commandtext+' use_priority,Cuse_priority=case isnull(use_priority,0) when 0 then ''普通用户'' when 1 then ''超级用户'' when 2 then ''系统管理员'' end,';
    commandtext:=commandtext+' purchase,storage,account,supervisor,confidential,checkable,credit_level,hiredate,firedate,';
    commandtext:=commandtext+' fuser,fallsupplier,fallcustomer,fallmed,falldistrict,falldevice,ftrustright,periodlimit'; //,periodtypeid';
    commandtext:=commandtext+' from tb_staff where fuser=1 and comp_id='+inttostr(compid); // and firedate is null
    if not dxCheckEdit2.Checked then commandtext:=commandtext+' and isnull(stop_yn,0)=0';
    if Trim(dxedit3.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and qry_code ';
            1:  commandtext:=commandtext+' and zname ';
        end;
        commandtext:=commandtext+' like ''%'+trim(dxedit3.text)+'%''';
    end;
//edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if mi>0 then locate('sta_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetuser.N2Click(Sender: TObject);
begin
if MessageBox(0,pchar('确定重置'+user.fieldbyname('zname').asstring+'的登录密码(设置为''666666'')?'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_staff set password=''666666'' where sta_id='+user.fieldbyname('sta_id').asstring;
//    commandtext:='update tb_staff set enc_pass='''+MD5String(Trim(user.fieldbyname('sta_id').asstring)+'666666')+''' where sta_id='+user.fieldbyname('sta_id').asstring;
//showmessage(commandtext);
    execute;
    MessageBox(0,pchar(user.fieldbyname('zname').asstring+'的登录密码已修改为''666666'''),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetuser.dxDBTreeList3Click(Sender: TObject);
begin
if useright.fieldbyname('rec_id').asinteger=0 then exit;
with dxDBTreeList3 do
begin
    if VisibleColumns[focusedcolumn].fieldname='exportable' then
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='update tb_useright set exportable=1-isnull(exportable,0) where rec_id='+useright.fieldbyname('rec_id').asstring;
            execute;
            pickuseright;
        end;
    end;
    if VisibleColumns[focusedcolumn].fieldname='printable' then
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='update tb_useright set printable=1-isnull(printable,0) where rec_id='+useright.fieldbyname('rec_id').asstring;
            execute;
            pickuseright;
        end;
    end;
end;
end;

procedure Tsetuser.dxDBTreeList3CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxDBTreeList3sf_parent.Index] =-1)   // 由于上语句在分组时有 invalid variant type conversion 异常； 用string类型字段判断可避免
    then Acolor := $00F5F5F5; //$00E6E3E4; //clRed; //clFuchsia;     variant
end;

procedure Tsetuser.Button1Click(Sender: TObject);
begin
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='select sta_id,password from tb_staff';
    open;
    first;
    while not eof do
    begin
        if pubqry.active then pubqry.close;
        commandtext:='update tb_staff set enc_pass='''+MD5String(Trim(fieldbyname('sta_id').asstring)+Trim(fieldbyname('password').asstring))+''' where sta_id='+fieldbyname('sta_id').asstring;
        execute;
        next;
    end;
end;
setprogress(0);
end;

procedure Tsetuser.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Lusepriority) then
begin
    if (ANode.Strings[dxDBGrid1Lusepriority.Index] = '超级用户') or (ANode.Strings[dxDBGrid1Lusepriority.Index] = '系统管理员') then
    begin
//        AColor := clgreen;  //clLime;
        AFont.Color := clgreen; //clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetuser.dxEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton8Click(nil);
    dxedit3.SelectAll;
    dxedit3.SetFocus;
end;
end;

procedure Tsetuser.userightAfterPost(DataSet: TDataSet);
begin
if useright.ChangeCount>0 then myupdaterefresh(useright,'tb_useright','rec_id','');
end;

procedure Tsetuser.userAfterPost(DataSet: TDataSet);
begin
if user.ChangeCount>0 then myupdaterefresh(user,'tb_staff','sta_id','');
end;

procedure Tsetuser.dxDBTreeList1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDBTreeList).datasource;
end;

procedure Tsetuser.trustmate1AfterDelete(DataSet: TDataSet);
begin
if trustmate1.ChangeCount>0 then myupdaterefresh(trustmate1,'tb_trustmate','rec_id','');
end;

procedure Tsetuser.trustmate2AfterDelete(DataSet: TDataSet);
begin
if trustmate2.ChangeCount>0 then myupdaterefresh(trustmate2,'tb_trustmate','rec_id','');
end;

procedure Tsetuser.trustdistrictAfterDelete(DataSet: TDataSet);
begin
if trustdistrict.ChangeCount>0 then myupdaterefresh(trustdistrict,'tb_trustdistrict','rec_id','');
end;

procedure Tsetuser.N3Click(Sender: TObject);
begin
frightid:= user.fieldbyname('sta_id').asinteger;
end;

procedure Tsetuser.N4Click(Sender: TObject);
begin
if MessageBox(0,'确定粘贴权限','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_useright (sta_id,sf_id)';
    commandtext:=commandtext+' select '+ user.fieldbyname('sta_id').asstring+',sf_id from tb_useright a';
	commandtext:=commandtext+' where sta_id='+inttostr(frightid)+' and not exists (select 1 from tb_useright b where b.sta_id='+ user.fieldbyname('sta_id').asstring+' and a.sf_id=b.sf_id)';
    execute;
    if active then close;
end;
end;

procedure Tsetuser.SpeedButton1Click(Sender: TObject);
var mi: integer;
begin
with user do if (active=False) or (recordcount=0) then exit;
if MessageBox(0,'确定取业务结构中的该用户(区域经理)的品种','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_trustmed (sta_id,med_id)';
    commandtext:=commandtext+' select sta_id,med_id from tb_busiframe a';
    commandtext:=commandtext+' where sta_id='+user.fieldbyname('sta_id').asstring+' and not exists (select 1 from tb_trustmed b where a.sta_id=b.sta_id and a.med_id=b.med_id)';
    commandtext:=commandtext+' select @@ROWCOUNT';
//edit3.text:=commandtext;
//exit;
    open;
    mi:=fields[0].asinteger;
    if active then close;
end;
MessageBox(0,pchar('已加入该用户'+inttostr(mi)+'个授权品种'),'请注意',MB_OK+MB_ICONInformation);
trustmed.tag:=0;
PageControl1Change(nil);
end;

procedure Tsetuser.SpeedButton7Click(Sender: TObject);
var mi: integer;
begin
with user do if (active=False) or (recordcount=0) then exit;
if MessageBox(0,'确定取业务结构中的该用户(区域经理)的地区','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into  tb_trustdistrict (sta_id,dist_id)';
    commandtext:=commandtext+' select sta_id,district_id from tb_busiframe a';
    commandtext:=commandtext+' where sta_id='+user.fieldbyname('sta_id').asstring+' and not exists (select 1 from  tb_trustdistrict b where a.sta_id=b.sta_id and a.district_id=b.dist_id)';
    commandtext:=commandtext+' select @@ROWCOUNT';
//edit3.text:=commandtext;
//exit;
    open;
    mi:=fields[0].asinteger;
    if active then close;
end;
MessageBox(0,pchar('已加入该用户'+inttostr(mi)+'个授权地区'),'请注意',MB_OK+MB_ICONInformation);
trustdistrict.tag:=0;
PageControl1Change(nil);
end;

procedure Tsetuser.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton6Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetuser.SpeedButton9Click(Sender: TObject);
var mi: integer;
begin
if dxLookupEdit1.text='' then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_sysright where type_id=1 and sta_id='+user.fieldbyname('sta_id').asstring+' and obj_id='+periodtype.fieldbyname('obj_id').asstring;
    open;
    if recordcount>0 then raise exception.create('该用户已授权此时段');
    MessageBox(0,pchar('确定加入该用户此授权时段'),'请注意',MB_OK+MB_ICONInformation);
    if active then close;
    commandtext:='if not exists (select 1 from tb_sysright where type_id=1 and sta_id='+user.fieldbyname('sta_id').asstring+' and obj_id='+periodtype.fieldbyname('obj_id').asstring+')';
    commandtext:=commandtext+' insert into tb_sysright (type_id,sta_id,obj_id,creat_by,creat_dt) values (1,'+user.fieldbyname('sta_id').asstring+','+periodtype.fieldbyname('obj_id').asstring+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
PageControl1Change(nil);
if mi>0 then periodlimit.locate('rec_id',mi,[]);
end;

procedure Tsetuser.periodlimitBeforeDelete(DataSet: TDataSet);
begin
MessageBox(0,pchar('确定删除该用户此授权年度'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetuser.periodlimitAfterDelete(DataSet: TDataSet);
begin
if periodlimit.ChangeCount>0 then myupdaterefresh(periodlimit,'tb_sysright','rec_id','');
end;

procedure Tsetuser.FormCreate(Sender: TObject);
begin
{
TabSheet3.tabvisible:=False;
TabSheet4.tabvisible:=False;
TabSheet5.tabvisible:=False;
TabSheet6.tabvisible:=False;
TabSheet7.tabvisible:=False;
TabSheet9.tabvisible:=False;
}
end;

end.
