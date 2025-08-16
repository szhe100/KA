unit Unit121;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, dxCntner, ADODB, dxEdLib, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, dxDBELib, StdCtrls, dxEditor,
  dxDBEdtr, dxdbtrel, DBCtrls, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, Buttons;

type
  TSetexpensesup = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1fax: TdxDBGridMaskColumn;
    dxDBGrid1address: TdxDBGridMaskColumn;
    dxDBGrid1qry_code: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DSexpensesup: TDataSource;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    Label25: TLabel;
    Label16: TLabel;
    DBText10: TDBText;
    Label26: TLabel;
    DBText11: TDBText;
    Label27: TLabel;
    DBText1: TDBText;
    Label28: TLabel;
    DBText2: TDBText;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    ADOQuery1: TADOQuery;
    Label32: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1mate_id: TdxDBGridColumn;
    SpeedButton5: TSpeedButton;
    dxDBGrid1archive_cd: TdxDBGridColumn;
    dxEditStyleController1: TdxEditStyleController;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    Label11: TLabel;
    ImageList1: TImageList;
    TabSheet3: TTabSheet;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Bevel3: TBevel;
    DSqryimage: TDataSource;
    qryimage: TClientDataSet;
    qryimagerec_id: TAutoIncField;
    qryimagetype_id: TIntegerField;
    qryimageid: TIntegerField;
    qryimagezimage1: TBlobField;
    qryimagegraphclass1: TStringField;
    qryimagezimage2: TBlobField;
    qryimagegraphclass2: TStringField;
    qryimagezimage3: TBlobField;
    qryimagegraphclass3: TStringField;
    ADOQuery1rec_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1title: TStringField;
    ADOQuery1phone: TStringField;
    ADOQuery1fax: TStringField;
    ADOQuery1postalcode: TStringField;
    ADOQuery1address: TStringField;
    ADOQuery1Email: TStringField;
    ADOQuery1creater: TStringField;
    ADOQuery1zname: TStringField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    dxDBEdit5: TdxDBEdit;
    Label5: TLabel;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label18: TLabel;
    Label15: TLabel;
    RadioGroup2: TRadioGroup;
    Label6: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    Shape2: TShape;
    SpeedButton4: TSpeedButton;
    Bevel4: TBevel;
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
    expensesup: TClientDataSet;
    IntegerField94: TIntegerField;
    StringField143: TStringField;
    StringField144: TStringField;
    IntegerField95: TIntegerField;
    StringField146: TStringField;
    IntegerField96: TIntegerField;
    IntegerField98: TIntegerField;
    StringField147: TStringField;
    StringField148: TStringField;
    StringField149: TStringField;
    StringField150: TStringField;
    StringField151: TStringField;
    StringField152: TStringField;
    IntegerField99: TIntegerField;
    StringField153: TStringField;
    StringField154: TStringField;
    StringField155: TStringField;
    StringField156: TStringField;
    StringField157: TStringField;
    IntegerField100: TIntegerField;
    BCDField22: TBCDField;
    StringField158: TStringField;
    IntegerField101: TIntegerField;
    IntegerField102: TIntegerField;
    MemoField5: TMemoField;
    IntegerField103: TIntegerField;
    StringField159: TStringField;
    DateTimeField37: TDateTimeField;
    BooleanField18: TBooleanField;
    StringField160: TStringField;
    BCDField25: TBCDField;
    IntegerField106: TIntegerField;
    IntegerField108: TIntegerField;
    StringField161: TStringField;
    DateTimeField39: TDateTimeField;
    IntegerField109: TIntegerField;
    DateTimeField40: TDateTimeField;
    IntegerField110: TIntegerField;
    StringField162: TStringField;
    StringField163: TStringField;
    StringField164: TStringField;
    StringField165: TStringField;
    IntegerField114: TIntegerField;
    Label82: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    Edit1: TEdit;
    expensesuplicense_cd: TStringField;
    expensesuparchive_cd: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DSexpensesupDataChange(Sender: TObject; Field: TField);
    procedure cdsbusi_bankReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBRadioGroup4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit2AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit3AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryimageAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure contactlistReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure expensesupBeforePost(DataSet: TDataSet);
    procedure expensesupAfterPost(DataSet: TDataSet);
    procedure expensesupBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setexpensesup: TSetexpensesup;

implementation

uses datamodu, Unit35, Unit16c, mycds; //, Unit35, Unit103, Unit16c;

{$R *.DFM}

procedure TSetexpensesup.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
end;

procedure TSetexpensesup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with expensesup do
    if active then close;
with dm.district do
    if active then close;
with dm.settle_type do
    if active then close;
end;

procedure TSetexpensesup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSetexpensesup.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure TSetexpensesup.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    if activecontrol.name='dxDBGrid2' then

    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;
end;

procedure TSetexpensesup.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if (activepageindex in [0,2]) then activepage:=TabSheet2;
end;

procedure TSetexpensesup.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure TSetexpensesup.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
//if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure TSetexpensesup.DSexpensesupDataChange(Sender: TObject;
  Field: TField);
begin
with expensesup do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure TSetexpensesup.cdsbusi_bankReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(e.message); 
end;

procedure TSetexpensesup.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure TSetexpensesup.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure TSetexpensesup.DBRadioGroup4Click(Sender: TObject);
begin
//DBRadioGroup5.Enabled:=DBRadioGroup4.itemindex>0;
end;

procedure TSetexpensesup.SpeedButton5Click(Sender: TObject);
var ri: integer;
begin
with expensesup do
begin
    if active then
    begin
        ri:=fieldbyname('mate_id').asinteger;
        close;
    end
    else ri:=0;
    commandtext:='select top 10000 a.*,comp_name=dbo.fn_comp_simname(comp_id),developer=dbo.fn_staff_name(a.develop_by),stoper=dbo.fn_staff_name(a.stop_by),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),modifier=dbo.fn_staff_name(a.modify_by),';
    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(district)';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' where a.mate_type_id=9 and comp_id='+inttostr(compid); // 设置费用科目供应方
    if dxedit1.text<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.mate_name ';
            2:  commandtext:=commandtext+' and a.address ';
        end;
        commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if ri>0 then locate('mate_id',ri,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure TSetexpensesup.wwDBNavigator1PostClick(Sender: TObject);
begin
if qryimage.state in [dsedit,dsinsert] then qryimage.post;
end;

procedure TSetexpensesup.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure TSetexpensesup.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure TSetexpensesup.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure TSetexpensesup.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
end;

procedure TSetexpensesup.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
end;

procedure TSetexpensesup.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
end;

procedure TSetexpensesup.dxDBGraphicEdit1Change(Sender: TObject);
begin
with expensesup do if not (state=dsedit) then edit;
end;

procedure TSetexpensesup.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet3 then
begin
    with expensesup do
        if ((active=false) or (recordcount=0)) and (qryimage.active) then qryimage.close;
    if (expensesup.fieldbyname('mate_id').asstring<>'') and (qryimage.tag<>expensesup.fieldbyname('mate_id').asinteger) then
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='if not exists (select 1 from tb_image where type_id=6 and id='+expensesup.fieldbyname('mate_id').asstring+')';
            commandtext:=commandtext+' insert into tb_image (type_id,id) values (6,'+expensesup.fieldbyname('mate_id').asstring+')';
            execute;
        end;
        with qryimage do
        begin
            if active then close;
            commandtext:='select * from tb_image where type_id=6 and id='+expensesup.fieldbyname('mate_id').asstring;
            open;
            qryimage.tag:=expensesup.fieldbyname('mate_id').asinteger;
        end;
    end;
end;
end;

procedure TSetexpensesup.qryimageAfterPost(DataSet: TDataSet);
begin
with (dataset as TClientdataset) do
begin
    ApplyUpdates(-1);
    refresh;
end;
end;

procedure TSetexpensesup.dxDBGrid1Enter(Sender: TObject);
begin
//wwDBNavigator1.datasource:=(sender as TdxDBGrid).datasource;
end;

procedure TSetexpensesup.contactlistReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('contactlist:'+e.message);
end;

procedure TSetexpensesup.dxDBEdit5Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=trim(dxDBEdit5.text);     spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with expensesup do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
    dxDBEdit4.text:=spy;
end;

procedure TSetexpensesup.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
if RadioGroup2.ItemIndex=0 then
begin
    with pickbusimate do
        if showmodal= mrOK then
        begin
            dxbuttonedit1.text:=query1.fieldbyname('mate_name').asstring;
            dxbuttonedit1.tag :=query1.fieldbyname('mate_id').asinteger;
        end
        else
        begin
            dxbuttonedit1.text:='';
            dxbuttonedit1.tag :=0;
        end;
end;
if RadioGroup2.ItemIndex=1 then
begin
    with pickagent do
        if showmodal= mrOK then
        begin
            dxbuttonedit1.text:=query1.fieldbyname('mate_name').asstring;
            dxbuttonedit1.tag :=query1.fieldbyname('mate_id').asinteger;
        end
        else
        begin
            dxbuttonedit1.text:='';
            dxbuttonedit1.tag :=0;
        end;
end;
end;

procedure TSetexpensesup.SpeedButton4Click(Sender: TObject);
var ss: string;
    mi: integer;
begin
if dxButtonEdit1.text='' then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='if exists (select 1 from tb_busimate where mate_type_id=9 and refer_id='+inttostr(dxButtonEdit1.tag)+' and comp_id='+inttostr(compid)+' and refer_id='+inttostr(dxButtonEdit1.tag)+')'
      +'select 1 else select 0';
    open;
    if fields[0].asinteger=1 then raise Exception.Create('已引用了该供应方，不可再次加入');
    close;
    ss:=dxbuttonedit1.text;
//    if Application.MessageBox(strtopchar('确定引用 '+ss+' 为本公司费用供应方'),'请注意',MB_OKCANCEL + MB_ICONINFORMATION) <> IDOK then Abort;
	if messagedlg('确定引用 '+ss+' 为本公司费用供应方',mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

    commandtext:='insert into tb_busimate (comp_id,mate_name,mate_type_id,qry_code,phone,fax,address,creat_by,creat_dt,refer_id)';
    commandtext:=commandtext+' select '+inttostr(compid)+',mate_name,9,qry_code,phone,fax,address,'+inttostr(curuserid)+',getdate(),mate_id';
    commandtext:=commandtext+'  from tb_busimate where mate_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].AsInteger;
end;
SpeedButton5Click(nil);
with expensesup do locate('mate_id',mi,[]);
//Application.MessageBox(strtopchar(ss+' 已成功加为费用供应方'),'请注意',MB_OK + MB_ICONINFORMATION);
MessageBox(0,pchar(ss+' 已成功加为费用供应方'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure TSetexpensesup.dxDBGraphicEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) AND (Key=Ord('V')) then (Sender as TdxDBGraphicEdit).PasteFromClipboard;
if (ssCtrl in Shift) AND (Key=Ord('D')) then showpic((Sender as TdxDBGraphicEdit),qryimage); // difined in datamodu
if (ssCtrl in Shift) AND (Key=Ord('C')) then (Sender as TdxDBGraphicEdit).CopyToClipboard;
if (ssCtrl in Shift) AND (Key=Ord('S')) then (Sender as TdxDBGraphicEdit).DataSource.DataSet.AfterPost(nil);
if (ssCtrl in Shift) AND (Key=Ord('X')) then
begin
    (Sender as TdxDBGraphicEdit).CopyToClipboard;
    (Sender as TdxDBGraphicEdit).ClearPicture;
end;
end;

procedure TSetexpensesup.expensesupBeforePost(DataSet: TDataSet);
begin
with expensesup do
begin
    if fieldbyname('mate_name').asstring='' then raise Exception.Create('名称不可为空');

    if (state=dsinsert) or (fieldbyname('mate_name').newvalue<>fieldbyname('mate_name').oldvalue) then
    begin
        if dm.pubqry.active then dm.pubqry.close;
        dm.pubqry.commandtext:='select top 1 1 from tb_busimate where mate_type_id=9 and comp_id='+inttostr(compid)+' and mate_name='''+ fieldbyname('mate_name').asstring+'''';
        if fieldbyname('mate_id').asinteger>0 then dm.pubqry.commandtext:=dm.pubqry.commandtext+' and mate_id<>'+ fieldbyname('mate_id').asstring;
        dm.pubqry.open;
        if dm.pubqry.recordcount>0 then raise Exception.Create('已有相同名称的费用科目供应方，不可重复录入');
    end;
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;  // 公司compid
        fieldbyname('mate_type_id').asinteger:=9;  // 费用供应方
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

procedure TSetexpensesup.expensesupAfterPost(DataSet: TDataSet);
begin
if expensesup.ChangeCount>0 then myupdaterefresh(expensesup,'tb_busimate','mate_id','');
end;

procedure TSetexpensesup.expensesupBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill a,tb_bill_dtl b where a.bod_type_id=80 and a.bod_id=b.bod_id and b.rela_value='+expensesup.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then Exception.Create('该费用科目供应方已发生业务，不可删除');
    close;
end;
if MessageBox(0,'确定删除本费用科目供应方','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

end.
