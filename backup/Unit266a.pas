unit Unit266a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor, ImgList,
  StdCtrls, ComCtrls, ToolWin, dxDBTL, dxDBEdtr, dxDBELib, dxdbtrel,
  dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, ExtCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Buttons, Comobj, mycds, Menus;

type
  Tsetbusiframe1 = class(TForm)
    SpeedButton2: TSpeedButton;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
    level1: TClientDataSet;
    DSlevel1: TDataSource;
    level2: TClientDataSet;
    DSlevel2: TDataSource;
    broker: TClientDataSet;
    DSbroker: TDataSource;
    busiframerec_id: TAutoIncField;
    busiframelevel_id1: TIntegerField;
    busiframelevel_id2: TIntegerField;
    busiframedistrict_id: TIntegerField;
    busiframesta_id: TIntegerField;
    busiframemed_id: TIntegerField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframedist1: TStringField;
    busiframedist2: TStringField;
    busiframedist3: TStringField;
    busiframecreater: TStringField;
    busiframevalid_dt: TDateTimeField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Shape7: TShape;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Shape3: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Label5: TLabel;
    Shape6: TShape;
    Label6: TLabel;
    Label7: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    dxLookupEdit1: TdxLookupEdit;
    dxLookupEdit2: TdxLookupEdit;
    dxLookupEdit4: TdxLookupEdit;
    dxDateEdit1: TdxDateEdit;
    dxCheckEdit1: TdxCheckEdit;
    treedata: TClientDataSet;
    DStreedata: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1rec_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1zdesc: TdxDBTreeListMaskColumn;
    treedataparent: TIntegerField;
    treedatarec_id: TIntegerField;
    treedatasta_id: TIntegerField;
    treedatazdesc: TStringField;
    Images: TImageList;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    dxLookupEdit3: TdxLookupEdit;
    level3: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DSlevel3: TDataSource;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    busiframelevel_id3: TAutoIncField;
    busiframelevel3: TStringField;
    busiframelevel1: TStringField;
    busiframelevel2: TStringField;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    SpeedButton1: TSpeedButton;
    busiframemed_code: TStringField;
    busiframemed_name: TStringField;
    busiframespecifi: TStringField;
    busiframepdt_place: TStringField;
    busiframemed_unit: TStringField;
    busiframemed_type: TStringField;
    busiframeqtyperpack: TBCDField;
    busiframeleader: TStringField;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    busiframezname1: TStringField;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit3: TdxButtonEdit;
    busiframezname2: TStringField;
    busiframezname3: TStringField;
    Label8: TLabel;
    ADOQuery1modifier: TStringField;
    ADOQuery1modify_by: TAutoIncField;
    ADOQuery1modify_dt: TDateTimeField;
    busiframemodifier: TStringField;
    busiframemodify_by: TAutoIncField;
    busiframemodify_dt: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dxButtonEdit4: TdxButtonEdit;
    N10: TMenuItem;
    N11: TMenuItem;
    busiframe_dtl: TClientDataSet;
    AutoIncField2: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    AutoIncField3: TAutoIncField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField15: TStringField;
    StringField16: TStringField;
    AutoIncField4: TAutoIncField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DSbusiframe_dtl: TDataSource;
    Panel1: TPanel;
    Splitter1: TSplitter;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1level1: TdxDBGridMaskColumn;
    dxDBGrid1zname1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1zname2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2zname1: TdxDBGridColumn;
    dxDBGrid2zname2: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridColumn;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    dxDBGrid2modifier: TdxDBGridColumn;
    dxDBGrid2modify_dt: TdxDBGridColumn;
    dxDBGridColumn15: TdxDBGridColumn;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    dxDBGrid2valid_dt: TdxDBGridDateColumn;
    dxDBGrid2level2: TdxDBGridButtonColumn;
    dxDBGrid2level3: TdxDBGridButtonColumn;
    dxDBGrid2leader: TdxDBGridButtonColumn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    busiframe_dtlLlevel1: TStringField;
    dxDBGrid2Llevel1: TdxDBGridLookupColumn;
    Edit1: TEdit;
    dxDBGrid1zname3: TdxDBGridColumn;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbusiframeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure busiframeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
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
    procedure N10Click(Sender: TObject);
    procedure busiframe_dtlBeforeDelete(DataSet: TDataSet);
    procedure busiframe_dtlBeforePost(DataSet: TDataSet);
    procedure busiframe_dtlAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid2level2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2level3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2leaderButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure busiframeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe1: Tsetbusiframe1;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit28c, Unit28d, Unit28e;

{$R *.DFM}

procedure Tsetbusiframe1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe1.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
with busiframe do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    speedbutton5.enabled:=(active=true) and (recordcount>0);
    if (active=False) or (recordcount=0) then
    begin
        busiframe_dtl.Tag:=0;
        if busiframe_dtl.Active=True then busiframe_dtl.Close;
        exit;
    end;
end;
with busiframe_dtl do
begin
    if tag=busiframe.fieldbyname('rec_id').asinteger then exit;
    if active=True then close;
    commandtext:='select a.*,level1=b.zdesc,zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),';
    commandtext:=commandtext+'  level2=c.zdesc,level3=d.zdesc,leader=e.zname,';
    commandtext:=commandtext+'  creater=f.zname,modifier=g.zname';
    commandtext:=commandtext+' from tb_busiframe1_dtl a';
    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_staff e on a.sta_id=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.creat_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.modify_by=g.sta_id';
    commandtext:=commandtext+' where a.rela_id='+busiframe.fieldbyname('rec_id').asstring;
//edit2.text:=commandtext;
    try
        setprogress(1);
        open;
        tag:=busiframe.fieldbyname('rec_id').asinteger;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe1.SpeedButton4Click(Sender: TObject);
var mi,ni: integer;
begin
if Trim(dxLookupEdit1.text)='' then raise Exception.Create('请选择事业部');
if Trim(dxButtonEdit4.text)='' then raise Exception.Create('请选择大区');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择小区');
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择区域经理');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择城市');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if dxDateEdit1.Text='' then raise Exception.Create('请输入生效日期');

with dm.pubqry do
begin
{
    if active=true then close;
    commandtext:='select top 1 1 from tb_busiframe1 where comp_id='+inttostr(compid);
    commandtext:=commandtext+' and level_id1='+level1.fieldbyname('obj_id').asstring;
    commandtext:=commandtext+' and level_id2='+level2.fieldbyname('obj_id').asstring;
    commandtext:=commandtext+' and level_id3='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and sta_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and district_id='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('已有该业务结构记录，不可重复设置');
}
{
    if active=true then close;
    commandtext:='select top 1 1 from tb_busiframe1 where med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and district_id='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('已有该业务结构记录，不可重复设置');
}
    if MessageBox(0,pchar('确定加入本业务结构记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='select top 1 rec_id from tb_busiframe1 where med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and district_id='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount=0 then
    begin
        if active=true then close;
        commandtext:='insert into tb_busiframe1 (comp_id,med_id,district_id,creat_by,creat_dt)';
        commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(dxButtonEdit1.tag)+',';
        commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+','+inttostr(curuserid)+',getdate())';
        commandtext:=commandtext+'select @@identity';
        open;
        mi:=fields[0].asinteger;
    end
    else mi:=fields[0].asinteger;
    if active=true then close;
    commandtext:='insert into tb_busiframe1_dtl ( rela_id,level_id1,level_id2,level_id3,sta_id,med_id,district_id,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' values ( '+inttostr(mi)+','+level1.fieldbyname('obj_id').asstring+',';
    commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+','+inttostr(dxButtonEdit3.tag)+','+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    commandtext:=commandtext+''''+dxDateEdit1.Text+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then ni:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    busiframe.locate('rec_id',mi,[]);
end;
if ni>0 then busiframe_dtl.locate('rec_id',ni,[]);
end;

procedure Tsetbusiframe1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with busiframe do if active=true then close;
with treedata do if active=true then close;
with level1 do if active=true then close;
with level2 do if active=true then close;
with level3 do if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetbusiframe1.busiframeBeforeDelete(DataSet: TDataSet);
begin
with busiframe do
begin
    if (active=False) or (recordcount=0) then exit;
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置，不可删除');
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_busiframe_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本记录有明细记录，不可删除');
end;
//if busiframe.fieldbyname('creat_dt').asdatetime<dt0 then raise Exception.Create('非当天设置，不可删除');
if MessageBox(0,'确定删除本主记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe1.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,level1=b.zdesc,zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),';
    commandtext:=commandtext+'  level2=c.zdesc,level3=d.zdesc,leader=e.zname,';
    commandtext:=commandtext+'  m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  creater=dbo.fn_staff_name(a.creat_by),';
    commandtext:=commandtext+'  modifier=dbo.fn_staff_name(a.modify_by),';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	dist3=''''';
//    commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
    commandtext:=commandtext+' from tb_busiframe1 a';
    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_staff e on a.sta_id=e.sta_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' where 1=1'; //a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.level_id2='+inttostr(dxButtonEdit4.Tag);
//        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.level_id2='+level2.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.level_id3='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.sta_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
//        if Trim(dxDateEdit1.text)<>'' then commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.text+'''';
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
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

procedure Tsetbusiframe1.busiframeBeforePost(DataSet: TDataSet);
begin
with busiframe do
begin
    if state=dsinsert then
    begin
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe1.FormActivate(Sender: TObject);
begin
with level1 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
{
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
}
{
with level3 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=23 order by zdesc';
        open;
    end;
end;
with broker do
begin
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and isnull(stop_yn,0)=0 order by zname';
        open;
    end;
end;
}
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetbusiframe1.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbusiframe1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe1.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet2 then
begin
    if treedata.Active=False then SpeedButton1Click(nil);
end;
end;

procedure Tsetbusiframe1.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 2 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tsetbusiframe1.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tsetbusiframe1.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

procedure Tsetbusiframe1.SpeedButton1Click(Sender: TObject);
var mi: integer;
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    with treedata do
    begin
        if active=True then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:=' select distinct parent=-1,rec_id=level_id1,sta_id=level_id1,zdesc=b.zdesc+'' ''+case when b.sta_id>0 then dbo.fn_staff_name(b.sta_id) else '''' end ';
        commandtext:=commandtext+' from tb_busiframe1 a,tb_object b';
        commandtext:=commandtext+' where a.level_id1=b.obj_id and a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        commandtext:=commandtext+' union select distinct parent=level_id1,rec_id=level_id2+100000,sta_id=level_id2,b.zdesc';
        commandtext:=commandtext+' from tb_busiframe1 a,tb_object b';
        commandtext:=commandtext+' where a.level_id2=b.obj_id and a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        commandtext:=commandtext+' union select distinct parent=level_id2+100000,rec_id=a.level_id3+200000,sta_id=a.level_id3,b.zdesc';
        commandtext:=commandtext+' from tb_busiframe1 a,tb_object b';
        commandtext:=commandtext+' where a.level_id3=b.obj_id and a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        commandtext:=commandtext+' union select distinct parent=level_id3+200000,rec_id=a.sta_id+300000,sta_id=a.sta_id,zdesc=b.zname';
        commandtext:=commandtext+' from tb_busiframe1 a,tb_staff b';
        commandtext:=commandtext+' where a.sta_id=b.sta_id and a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        commandtext:=commandtext+' union select parent=a.sta_id+300000,rec_id=a.sta_id*100+a.district_id+400000,sta_id=0,zdesc=dbo.fn_getdistrict(a.district_id)';
        commandtext:=commandtext+' from tb_busiframe1 a where a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        commandtext:=commandtext+' union select distinct parent=a.sta_id*100+a.district_id+400000,rec_id=a.med_id,sta_id=a.med_id,zdesc=m.med_name+'' ''+m.specifi+'' ''+m.pdt_place';
        commandtext:=commandtext+' from tb_busiframe1 a,tb_medicine m';
        commandtext:=commandtext+' where a.med_id=m.med_id and a.comp_id='+inttostr(compid);
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
//edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
            if mi>0 then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tsetbusiframe1.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe1.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,sb: string;
    J,id1,id2,id3,id4,id5,id6,mi,ni: integer;
    dt: TDatetime;
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
//导入Excel文件生成单据(格式: 1事业部,2大区,3小区,4区域,5区域经理,6品种,7生效日期)
    while (sheet.cells[j,1].text<>'') do
    begin
//        showmessage(sheet.cells[j,1].text+'-'+sheet.cells[j,2].text+'-'+sheet.cells[j,3].text);
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无事业部数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 事业部数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无大区数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 大区数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无小区数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 小区数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域经理数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域经理数据有误';
            end;
            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,7].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
                else dt:=strtodatetime(sheet.cells[j,7].text);
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//导入Excel文件生成单据(格式: 1事业部,2大区,3小区,4区域,5区域经理,6品种,7生效日期)
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无事业部数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 事业部数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无大区数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 大区数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无小区数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 小区数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域经理数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域经理数据有误';
            end;
            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,6].text+'''';  //comp_id='+inttostr(compid)+' and 
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,7].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
                else dt:=strtodatetime(sheet.cells[j,7].text);
{
            if active=true then close;
            commandtext:='if not exists (select 1 from tb_busiframe1 where comp_id='+inttostr(compid);
            commandtext:=commandtext+' and level_id1='+inttostr(id1);
            commandtext:=commandtext+' and level_id2='+inttostr(id2);
            commandtext:=commandtext+' and level_id3='+inttostr(id3);
            commandtext:=commandtext+' and district_id='+inttostr(id4);
            commandtext:=commandtext+' and sta_id='+inttostr(id5);
            commandtext:=commandtext+' and med_id='+inttostr(id6);
            commandtext:=commandtext+' and valid_dt='''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' insert into tb_busiframe1 (comp_id,level_id1,level_id2,level_id3,district_id,sta_id,med_id,valid_dt,creat_by,creat_dt)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+','+inttostr(id5)+','+inttostr(id6)+','''+datetimetostr(dt)+''',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            execute;
}
            if active=true then close;
            commandtext:='select top 1 rec_id from tb_busiframe1 where med_id='+inttostr(id6);
            commandtext:=commandtext+' and district_id='+inttostr(id4);
            open;
            if recordcount=0 then
            begin
                if active=true then close;
                commandtext:='insert into tb_busiframe1 (comp_id,med_id,district_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(id6)+','+inttostr(id4)+','+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+'select @@identity';
                open;
                mi:=fields[0].asinteger;
            end
            else mi:=fields[0].asinteger;
            if active=true then close;
            commandtext:='insert into tb_busiframe1_dtl (rela_id,level_id1,level_id2,level_id3,sta_id,med_id,district_id,valid_dt,creat_by,creat_dt)';  //comp_id,
            commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+',';  //'+inttostr(compid)+',
            commandtext:=commandtext+inttostr(id5)+','+inttostr(id6)+','+inttostr(id4)+','''+datetimetostr(dt)+''','+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+'select @@identity';
            open;
            if recordcount>0 then ni:=fields[0].asinteger;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then busiframe.locate('rec_id',mi,[]);
    if ni>0 then busiframe_dtl.locate('rec_id',ni,[]);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetbusiframe1.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if (active=False) or (recordcount=0) then exit;
//    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置的业务结构，不可修改');
end;

if (Trim(dxLookupEdit1.text)='') and (Trim(dxButtonEdit3.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxLookupEdit4.text)='')
    and (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit2.text)='') and (Trim(dxLookupTreeView1.text)='') and (dxDateEdit1.Text='')
    then raise Exception.Create('请设置修改数据');

if MessageBox(0,'确定修改记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_busiframe1 set modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
    if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' ,level_id1='+level1.fieldbyname('obj_id').asstring;
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' ,level_id2='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' ,level_id3='+inttostr(dxButtonEdit3.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' ,district_id='+dm.district.fieldbyname('rec_id').asstring;
//    if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' ,level_id2='+level2.fieldbyname('obj_id').asstring;
//    if Trim(dxLookupEdit3.text)<>'' then commandtext:=commandtext+' ,level_id3='+level3.fieldbyname('obj_id').asstring;
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' ,sta_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' ,med_id='+inttostr(dxButtonEdit1.tag);
    if dxDateEdit1.Text<>'' then commandtext:=commandtext+' ,valid_dt= '''+dxDateEdit1.Text+''' ';
    commandtext:=commandtext+' where rec_id='+ busiframe.fieldbyname('rec_id').asstring;
//edit1.Text:=commandtext;
//exit;
    execute;
end;
refreshmyrecord(busiframe,dm.Refreshcds,0,'a.rec_id',busiframe.fieldbyname('rec_id').asinteger);
end;

procedure Tsetbusiframe1.busiframeBeforeEdit(DataSet: TDataSet);
begin
//if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置的业务结构，不可修改');
end;

procedure Tsetbusiframe1.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tsetbusiframe1.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe1.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tsetbusiframe1.N3Click(Sender: TObject);
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

procedure Tsetbusiframe1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe1.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
setprogress(0);
end;

procedure Tsetbusiframe1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetbusiframe1.N10Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    t:= t + busiframe.fieldbyname('rec_id').asstring;
    mi:=1;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('rec_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[j];
        mi := mi+1;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('未选择记录');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_busiframe1 where rec_id in ('+t+') and creat_by<>'+inttostr(curuserid);
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选记录中有非本人记录，不可删除'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
end;
if MessageBox(0,'确定删除所选记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='delete from tb_busiframe1 where rec_id in ('+t+')';
    execute;
end;
SpeedButton3Click(nil);  //刷新
end;

procedure Tsetbusiframe1.busiframe_dtlBeforeDelete(DataSet: TDataSet);
begin
if busiframe_dtl.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置，不可删除');
//if busiframe.fieldbyname('creat_dt').asdatetime<dt0 then raise Exception.Create('非当天设置，不可删除');
if MessageBox(0,'确定删除本明细记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe1.busiframe_dtlBeforePost(DataSet: TDataSet);
begin
with busiframe_dtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe1.busiframe_dtlAfterPost(DataSet: TDataSet);
begin
if busiframe_dtl.ChangeCount>0 then myupdaterefresh(busiframe_dtl,'tb_busiframe1_dtl','rec_id','');
if dxCheckEdit1.Checked then SpeedButton3Click(nil)
    else refreshmyrecord(busiframe,dm.Refreshcds,0,'rec_id',busiframe.fieldbyname('rec_id').asinteger);
//因trigger同步主表tb_busiframe,故刷新busiframe
end;

procedure Tsetbusiframe1.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetbusiframe1.dxDBGrid2level2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel2 do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('level_id2').asinteger:= query1.fieldbyname('obj_id').asinteger;
        busiframe_dtl.fieldbyname('level2').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('level_id2').asinteger:= 0;
        busiframe_dtl.fieldbyname('level2').asstring:= '';
    end;
end;
end;

procedure Tsetbusiframe1.dxDBGrid2level3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('level_id3').asinteger:= query1.fieldbyname('obj_id').asinteger;
        busiframe_dtl.fieldbyname('level3').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('level_id3').asinteger:= 0;
        busiframe_dtl.fieldbyname('level3').asstring:= '';
    end;
end;
end;

procedure Tsetbusiframe1.dxDBGrid2leaderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('sta_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        busiframe_dtl.fieldbyname('leader').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('sta_id').asinteger:= 0;
        busiframe_dtl.fieldbyname('leader').asstring:= '';
    end;
end;
end;

procedure Tsetbusiframe1.MenuItem1Click(Sender: TObject);
begin
with busiframe_dtl do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetbusiframe1.MenuItem2Click(Sender: TObject);
var mi: integer;
begin
with busiframe_dtl do
begin
    if (active=False) or (recordcount=0) then exit;
end;
if frecid=0 then raise Exception.Create('请先复制记录');
if MessageBox(0,'确定粘贴记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_busiframe1_dtl (rela_id,level_id1,level_id2,level_id3,sta_id,district_id,med_id,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 rela_id,level_id1,level_id2,level_id3,sta_id,district_id,med_id,valid_dt,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'   from tb_busiframe1_dtl where rec_id='+inttostr(frecid);
    commandtext:=commandtext+' select @@identity';
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
        busiframe_dtl.tag:=0;
        DSbusiframeDataChange(nil,nil);
        if mi>0 then busiframe_dtl.locate('rec_id',mi,[]);
        refreshmyrecord(busiframe,dm.Refreshcds,0,'rec_id',busiframe.fieldbyname('rec_id').asinteger);
        //因trigger同步主表tb_busiframe,故刷新busiframe
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe1.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe1','rec_id','');
end;

end.
