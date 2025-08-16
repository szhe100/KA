unit Unit67;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, Menus, DB, ADODB, dxEdLib, ExtCtrls, wwSpeedButton,
  mycds, DBClient, wwDBNavigator, wwclearpanel, dxCntner, dxEditor, Comobj,
  dxDBGrid, dxTL, dxDBCtrl, ComCtrls, Buttons, StdCtrls, dxDBTLCl, dxGrClms;

type
  Tsetlinkword = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    Bevel1: TBevel;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    Label18: TLabel;
    DSlink1: TDataSource;
    SpeedButton2: TSpeedButton;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList1: TImageList;
    link1: TClientDataSet;
    SpeedButton6: TSpeedButton;
    dxButtonEdit1: TdxButtonEdit;
    Label4: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    dxEdit1: TdxEdit;
    SpeedButton4: TSpeedButton;
    link1rec_id: TAutoIncField;
    link1type_id: TWordField;
    link1med_id: TIntegerField;
    link1mate_id: TIntegerField;
    link1zdesc: TStringField;
    link1med_name: TStringField;
    link1specifi: TStringField;
    link1med_unit: TStringField;
    link1med_type: TStringField;
    link1qtyperpack: TBCDField;
    link1creat_dt: TDateTimeField;
    link1creat_by: TIntegerField;
    link1creater: TStringField;
    link1med_code: TStringField;
    dxDBGrid1zdesc: TdxDBGridColumn;
    link1chm_name: TStringField;
    Label2: TLabel;
    Shape3: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    dxEdit2: TdxEdit;
    SpeedButton1: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2mate_name: TdxDBGridMaskColumn;
    dxDBGrid2zdesc: TdxDBGridMaskColumn;
    dxDBGrid2creater: TdxDBGridColumn;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    link2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    WordField1: TWordField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField3: TIntegerField;
    StringField8: TStringField;
    DSlink2: TDataSource;
    link2mate_name: TStringField;
    dxEdit3: TdxEdit;
    Label5: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Label6: TLabel;
    link1rate: TBCDField;
    dxDBGrid1rate: TdxDBGridColumn;
    Label7: TLabel;
    dxDBGrid1creater: TdxDBGridColumn;
    Label8: TLabel;
    dxEdit4: TdxEdit;
    link1pdt_place: TStringField;
    ADOQuery1mate_id1: TIntegerField;
    ADOQuery1mate_name1: TStringField;
    link1mate_id1: TIntegerField;
    link1mate_name1: TStringField;
    link2mate_id1: TIntegerField;
    link2mate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridButtonColumn;
    dxDBGrid2mate_name1: TdxDBGridButtonColumn;
    dxButtonEdit3: TdxButtonEdit;
    Label9: TLabel;
    Shape5: TShape;
    link1cate_id: TIntegerField;
    platform: TClientDataSet;
    platformobj_id: TAutoIncField;
    platformzdesc: TStringField;
    DSlevel1: TDataSource;
    link1Lplatform: TStringField;
    dxDBGrid1Lplatform: TdxDBGridLookupColumn;
    link1platform_id: TIntegerField;
    Label10: TLabel;
    Shape6: TShape;
    dxButtonEdit4: TdxButtonEdit;
    SpeedButton5: TSpeedButton;
    Label30: TLabel;
    SpeedButton7: TSpeedButton;
    Label11: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
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
    procedure link1AfterPost(DataSet: TDataSet);
    procedure link1BeforeDelete(DataSet: TDataSet);
    procedure link1BeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit3Click(Sender: TObject);
    procedure link2AfterPost(DataSet: TDataSet);
    procedure link1BeforeEdit(DataSet: TDataSet);
    procedure link2BeforeEdit(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure dxEdit4Click(Sender: TObject);
    procedure dxDBGrid1mate_name1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2mate_name1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure link2BeforePost(DataSet: TDataSet);
    procedure dxEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSlink1DataChange(Sender: TObject; Field: TField);
    procedure DSlink2DataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setlinkword: Tsetlinkword;

implementation

uses datamodu, Unit7, Unit16, Unit16a;

{$R *.DFM}

procedure Tsetlinkword.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with link1 do if active=true then close;
with link2 do if active=true then close;
with platform do if active=true then close;
//with dm.staff do if active=true then close;
//with dm.med_type do if active=true then close;
//with dm.cdsunit do if active=true then close;
//with dm.func_type do if active=true then close;
//with dm.medcatlog do if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetlinkword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetlinkword.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetlinkword.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetlinkword.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetlinkword.SpeedButton2Click(Sender: TObject);
begin
{
if PageControl1.ActivePage=TabSheet1
    then dm.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS)
    else dm.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS);
}
if PageControl1.ActivePage=TabSheet1
    then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
    else dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tsetlinkword.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetlinkword.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetlinkword.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
if PageControl1.ActivePage=TabSheet1 then
begin
    with link1 do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select a.*,mate_name1=d.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,qtyperpack,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),creater=c.zname';
        commandtext:=commandtext+' from tb_linkword a';
        commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
        commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
        commandtext:=commandtext+' left join tb_busimate d on a.mate_id1=d.mate_id';
        commandtext:=commandtext+' where a.type_id=1 and a.comp_id='+inttostr(compid);
        if Trim(dxEdit3.text)<>'' then commandtext:=commandtext+' and a.zdesc like ''%'+Trim(dxEdit3.text)+'%''';
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and m.med_name like ''%'+Trim(dxEdit4.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit4.text)+'%''';
        try
            setprogress(1);
            open;
            if mi>0 then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=TabSheet2 then
begin
    with link2 do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select a.*,mate_name1=d.mate_name,b.mate_name,creater=c.zname';
        commandtext:=commandtext+' from tb_linkword a';
        commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
        commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
        commandtext:=commandtext+' left join tb_busimate d on a.mate_id1=d.mate_id';
        commandtext:=commandtext+' where a.type_id=2 and a.comp_id='+inttostr(compid)+' and b.mate_type_id=1';
        if Trim(dxEdit3.text)<>'' then commandtext:=commandtext+' and a.zdesc like ''%'+Trim(dxEdit3.text)+'%''';
        if Trim(dxEdit4.text)<>'' then commandtext:=commandtext+' and b.mate_name like ''%'+Trim(dxEdit4.text)+'%'' or b.qry_code like ''%'+Trim(dxEdit4.text)+'%''';
//edit1.text:=commandtext;
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

procedure Tsetlinkword.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetlinkword.N3Click(Sender: TObject);
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

procedure Tsetlinkword.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetlinkword.N2Click(Sender: TObject);
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

procedure Tsetlinkword.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetlinkword.link1AfterPost(DataSet: TDataSet);
begin
if link1.ChangeCount>0 then myupdaterefresh(link1,'tb_linkword','rec_id','');
end;

procedure Tsetlinkword.link1BeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,pchar('确定删除本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetlinkword.link1BeforePost(DataSet: TDataSet);
begin
with link1 do
begin
    if fieldbyname('med_id').asinteger=0 then raise Exception.Create('请设置对照药品');
    if fieldbyname('zdesc').asstring='' then raise Exception.Create('请输入词语');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
end;
end;

procedure Tsetlinkword.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if dxButtonEdit1.text='' then raise Exception.Create('请选择品种');
if dxButtonEdit3.text='' then raise Exception.Create('请选择商业公司');
if dxEdit1.text='' then raise Exception.Create('请输入流向词语');
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_linkword where comp_id='+inttostr(compid)+' and type_id=1';
    commandtext:=commandtext+' and zdesc='''+Trim(dxEdit1.text)+'''';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('已有此药品流向词语对照记录，不可重复设置'),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
end;
}
if MessageBox(0,'确定加入新的药品词语对照记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,creat_by,creat_dt) values';
    commandtext:=commandtext+' (1,'+inttostr(compid)+','+inttostr(dxbuttonedit3.tag)+','+inttostr(dxbuttonedit1.tag)+','''+Trim(dxEdit1.text)+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
link1.Locate('rec_id',mi,[]);
end;

procedure Tsetlinkword.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetlinkword.SpeedButton1Click(Sender: TObject);
var mi: integer;
begin
if dxButtonEdit4.text='' then raise Exception.Create('请选择商业公司');
if dxButtonEdit2.text='' then raise Exception.Create('请选择客户');
if dxEdit2.text='' then raise Exception.Create('请输入流向词语');
with dm.pubqry do
begin
    if active then close;
//    commandtext:='select top 1 1 from tb_linkword where comp_id='+inttostr(compid)+' and type_id=2';
//    commandtext:='select top 1 1 from tb_linkword where comp_id='+inttostr(compid)+' and type_id=2';
    commandtext:='select top 1 1 from tb_linkword where type_id=2 and mate_id1='+inttostr(dxbuttonedit4.tag)+' and zdesc='''+Trim(dxEdit2.text)+'''';
    open;
    if recordcount>0 then MessageBox(0,pchar('该商业公司已有此流向词语对照记录，不可重复设置'),'请注意',MB_OK+MB_ICONInformation);
end;
if MessageBox(0,'确定加入新的客户词语对照记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_linkword (type_id,comp_id,mate_id1,mate_id,zdesc,creat_by,creat_dt) values';
    commandtext:=commandtext+' (2,'+inttostr(compid)+','+inttostr(dxbuttonedit4.tag)+','+inttostr(dxbuttonedit2.tag)+','''+Trim(dxEdit2.text)+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
link2.Locate('rec_id',mi,[]);
end;

procedure Tsetlinkword.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetlinkword.dxEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit3.SelectAll;
    dxedit3.SetFocus;
end;
end;

procedure Tsetlinkword.dxEdit3Click(Sender: TObject);
begin
dxedit3.SelectAll;
dxedit3.SetFocus;
end;

procedure Tsetlinkword.link2AfterPost(DataSet: TDataSet);
begin
if link2.ChangeCount>0 then myupdaterefresh(link2,'tb_linkword','rec_id','');
end;

procedure Tsetlinkword.link1BeforeEdit(DataSet: TDataSet);
begin
with link1 do
begin
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人记录，不可修改');
end;
end;

procedure Tsetlinkword.link2BeforeEdit(DataSet: TDataSet);
begin
with link2 do
begin
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人记录，不可修改');
end;
end;

procedure Tsetlinkword.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
    then wwDBNavigator1.DataSource:=DSlink1
    else wwDBNavigator1.DataSource:=DSlink2;
end;

procedure Tsetlinkword.dxEdit4Click(Sender: TObject);
begin
dxedit4.SelectAll;
dxedit4.SetFocus;
end;

procedure Tsetlinkword.dxDBGrid1mate_name1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (link1.State in [dsinsert,dsedit]) then link1.Edit;
    if showmodal= mrOK then
    begin
        link1.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
        link1.fieldbyname('mate_id1').asinteger:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        link1.fieldbyname('mate_name1').asstring:= '';
        link1.fieldbyname('mate_id1').asinteger:= 0;
    end;
end;
end;

procedure Tsetlinkword.dxDBGrid2mate_name1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (link2.State in [dsinsert,dsedit]) then link2.Edit;
    if showmodal= mrOK then
    begin
        link2.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
        link2.fieldbyname('mate_id1').asinteger:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        link2.fieldbyname('mate_name1').asstring:= '';
        link2.fieldbyname('mate_id1').asinteger:= 0;
    end;
end;
end;

procedure Tsetlinkword.link2BeforePost(DataSet: TDataSet);
begin
with link2 do
begin
    if fieldbyname('mate_id').asinteger=0 then raise Exception.Create('请设置对照医院名称');
    if fieldbyname('zdesc').asstring='' then raise Exception.Create('请输入词语');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
end;
end;

procedure Tsetlinkword.dxEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit4.SelectAll;
    dxedit4.SetFocus;
end;
end;

procedure Tsetlinkword.DSlink1DataChange(Sender: TObject; Field: TField);
begin
with link1 do
    SpeedButton2.Enabled:=(active=True) and (recordcount>0);
end;

procedure Tsetlinkword.DSlink2DataChange(Sender: TObject; Field: TField);
begin
with link2 do
    SpeedButton2.Enabled:=(active=True) and (recordcount>0);
end;

procedure Tsetlinkword.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetlinkword.FormActivate(Sender: TObject);
begin
with platform do
	if active=False then
    begin
    	commandtext:=' select cate_id=1,zdesc=''省平台''';
        commandtext:=commandtext+' union all select cate_id=2,zdesc=''广州GPO''';
        commandtext:=commandtext+' union all select cate_id=3,zdesc=''深圳GPO''';
        open;
    end;
end;

procedure Tsetlinkword.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;

procedure Tsetlinkword.SpeedButton5Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
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
    m1:=0; m2:=0; j:=2;  
//从第2行开始导入,导入格式: 1商业公司, 2客户名称, 3流向词语
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),mate_id1 int,mate_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入,导入格式: 1商业公司, 2客户名称, 3流向词语
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+'select top 5 * from ( select top 5 info=line_no+''行无商业公司'' from @tab where f1=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无客户名称'' from @tab where f2=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无流向词语'' from @tab where f3=''''';  // or try_cast(f4 as datetime) is null

    sql:=sql+' union all select top 5 ''第''+line_no+''行未取得商业公司'' from @tab a where not exists (select 1 from tb_busimate b where b.mate_type_id=2 and )';
    sql:=sql+' union all select top 5 ''第''+line_no+''行未取得客户'' from @tab a where not exists (select 1 from tb_busimate b where b.mate_type_id=1 and b.mate_name=a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行商业公司及流向词语与已有记录重复'' from @tab a inner join tb_busimate b on b.mate_type_id=2 and b.mate_name=a.f1';
    sql:=sql+'  where exists (select 1 from tb_sysrule c where c.type_id=2 and c.mate_id1=b.mate_id and c.zdesc=a.f3)';

    sql:=sql+' ) a';
//从第2行开始导入,导入格式: 1商业公司, 2客户名称, 3流向词语
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//从第2行开始导入,导入格式: 1商业公司, 2客户名称, 3流向词语

        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';
        sql:=sql+' update a set mate_id1=b.mate_id from @tab a,tb_medicine b where b.mate_type_id=2 and b.mate_name=a.f1';
        sql:=sql+' update a set mate_id =b.mate_id from @tab a,tb_busimate b where b.mate_type_id=1 and b.mate_name=a.f2';
{ 此处不设修改功能
        sql:=sql+' update a set level_id=cast(b.f3 as int),valid_dt=cast(f4 as datetime),import_log=isnull(import_log,'''')+cast(getdate() as varchar(20))+''导入修改''';
        sql:=sql+' from tb_sysrule a,@tab b';
        sql:=sql+' where a.mate_type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id';
        sql:=sql+' select @cnt1=@@ROWCOUNT';
}
        sql:=sql+' insert into tb_linkword (type_id,comp_id,mate_id1,mate_id,zdesc,creat_by,creat_dt)';
        sql:=sql+'  select type_id=2,comp_id='+inttostr(compid)+',mate_id1=a.mate_id1,mate_id=a.mate_id,zdesc=a.zdesc,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
//        sql:=sql+' where not exists (select 1 from tb_sysrule b where type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id)';
        sql:=sql+' select @cnt2=@@ROWCOUNT  select @cnt1,@cnt2';
        try
            setprogress(1);
            open;
            if recordcount>0 then
            begin
                //m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
    SpeedButton3Click(nil);
    if (m1>0) or (m2>0) then
    begin
//        MessageBox(0,pchar('已成功修改'+inttostr(m1)+'条记录, 新增'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
        MessageBox(0,pchar('已成功新增'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
        link2.Last;
    end;
end;

procedure Tsetlinkword.SpeedButton7Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
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
    m1:=0; m2:=0; j:=2;  
//从第2行开始导入,导入格式: 1商业公司, 2品种编码, 3流向词语, 4单位系数
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id1 int,med_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入,导入格式: 1商业公司, 2品种编码, 3流向词语, 4单位系数
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+'select top 5 * from ( select top 5 info=line_no+''行无商业公司'' from @tab where f1=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无品种编码'' from @tab where f2=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无流向词语'' from @tab where f3='''''; // or try_cast(f4 as datetime) is null
    sql:=sql+' union all select top 5 ''第''+line_no+''行无单位系数或数据无效'' from @tab where f4='''' or try_cast(f4 as decimal(6,2)) is null';

    sql:=sql+' union all select top 5 ''第''+line_no+''行未取得商业公司'' from @tab a where not exists (select 1 from tb_busimate b where b.mate_type_id=2 and )';
    sql:=sql+' union all select top 5 ''第''+line_no+''行未取得品种'' from @tab a where not exists (select 1 from tb_medicine b where b.med_code=a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行商业公司及流向词语与已有记录重复'' from @tab a inner join tb_busimate b on b.mate_type_id=2 and b.mate_name=a.f1';
    sql:=sql+'  where exists (select 1 from tb_sysrule c where c.type_id=1 and c.mate_id1=b.mate_id and c.zdesc=a.f3)';

    sql:=sql+' ) a';
//从第2行开始导入,导入格式: 1商业公司, 2品种编码, 3流向词语, 4单位系数
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//从第2行开始导入,导入格式: 1商业公司, 2品种编码, 3流向词语, 4单位系数

        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';
        sql:=sql+' update a set mate_id1=b.mate_id from @tab a,tb_medicine b where b.mate_type_id=2 and b.mate_name=a.f1';
        sql:=sql+' update a set med_id =b.med_id from @tab a,tb_medicine b where b.med_code=a.f2';
{ 此处不设修改功能
        sql:=sql+' update a set level_id=cast(b.f3 as int),valid_dt=cast(f4 as datetime),import_log=isnull(import_log,'''')+cast(getdate() as varchar(20))+''导入修改''';
        sql:=sql+' from tb_sysrule a,@tab b';
        sql:=sql+' where a.mate_type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id';
        sql:=sql+' select @cnt1=@@ROWCOUNT';
}
        sql:=sql+' insert into tb_linkword (type_id,comp_id,mate_id1,med_id,zdesc,rate,creat_by,creat_dt)';
        sql:=sql+'  select type_id=1,comp_id='+inttostr(compid)+',mate_id1=a.mate_id1,med_id=a.med_id,zdesc=a.zdesc,rate=cast(f4 as decimal(6,2))creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
//        sql:=sql+' where not exists (select 1 from tb_sysrule b where type_id=1 and a.mate_id1=b.mate_id1 and a.med_id=b.med_id)';
        sql:=sql+' select @cnt2=@@ROWCOUNT  select @cnt1,@cnt2';
        try
            setprogress(1);
            open;
            if recordcount>0 then
            begin
                //m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
    SpeedButton3Click(nil);
    if (m1>0) or (m2>0) then
    begin
//        MessageBox(0,pchar('已成功修改'+inttostr(m1)+'条记录, 新增'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
        MessageBox(0,pchar('已成功新增'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
        link2.Last;
    end;
end;

end.
