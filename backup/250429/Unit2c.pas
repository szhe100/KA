unit Unit2c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, ADODB, dxEdLib, ExtCtrls, wwSpeedButton, mycds,
  dxdbtrel, StdCtrls, wwDBNavigator, wwclearpanel, wwclearbuttongroup,
  wwradiogroup, dxDBELib, dxCntner, dxEditor, dxDBEdtr, DBCtrls, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj;

type
  Tsetagent1 = class(TForm)
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
    dxDBGrid1mate_code: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1legalman: TdxDBGridMaskColumn;
    dxDBGrid1deputy: TdxDBGridMaskColumn;
    dxDBGrid1deputy_title: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1fax: TdxDBGridMaskColumn;
    dxDBGrid1address: TdxDBGridMaskColumn;
    dxDBGrid1qry_code: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    DSagent: TDataSource;
    Label24: TLabel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
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
    dxDBLookupEdit3: TdxDBLookupEdit;
    ADOQuery1: TADOQuery;
    DBText4: TDBText;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    ImageList1: TImageList;
    Label11: TLabel;
    Label15: TLabel;
    dxDBGrid1mate_id: TdxDBGridColumn;
    dxDBGrid1Cbusi_type: TdxDBGridColumn;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBEdit11: TdxDBEdit;
    agent: TClientDataSet;
    agentmate_id: TIntegerField;
    agentcomp_id: TAutoIncField;
    agentmate_code: TStringField;
    agentmate_name: TStringField;
    agentlegalman: TStringField;
    agentdeputy: TStringField;
    agentdeputy_title: TStringField;
    agentphone: TStringField;
    agentfax: TStringField;
    agentaddress: TStringField;
    agentdistrict: TIntegerField;
    agentcdistrict: TStringField;
    agentpostalcode: TStringField;
    agentacnt_bank: TStringField;
    agentbank_account: TStringField;
    agenttax_code: TStringField;
    agentmate_type_id: TIntegerField;
    agentprice_type: TIntegerField;
    agentprice_cent: TBCDField;
    agentqry_code: TStringField;
    agentsettle_type: TIntegerField;
    agentpick_ord: TIntegerField;
    agentcredit_amot: TIntegerField;
    agentremark: TMemoField;
    agentstop_by: TIntegerField;
    agentstop_for: TStringField;
    agentstop_dt: TDateTimeField;
    agentstop_yn: TBooleanField;
    agenttax_rate: TBCDField;
    agentbroker_id: TIntegerField;
    agentdue_limit: TIntegerField;
    agentdescription: TStringField;
    agentcreat_dt: TDateTimeField;
    agentcreat_by: TIntegerField;
    agentmodify_dt: TDateTimeField;
    agentmodify_by: TIntegerField;
    agentcreater: TStringField;
    agentmodifier: TStringField;
    agentEmail: TStringField;
    agentwebsite: TStringField;
    agentbusi_type_id: TWordField;
    busiframe: TClientDataSet;
    busiframerec_id: TAutoIncField;
    busiframelevel_id1: TIntegerField;
    busiframelevel_id2: TIntegerField;
    busiframelevel_id3: TAutoIncField;
    busiframelevel1: TStringField;
    busiframelevel2: TStringField;
    busiframelevel3: TStringField;
    busiframedistrict_id: TIntegerField;
    busiframesta_id: TIntegerField;
    busiframebroker: TStringField;
    busiframeagent: TStringField;
    busiframeagent_id: TAutoIncField;
    busiframemed_id: TIntegerField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframecreater: TStringField;
    busiframedist1: TStringField;
    busiframedist2: TStringField;
    busiframedist3: TStringField;
    busiframevalid_dt: TDateTimeField;
    DSbusiframe: TDataSource;
    agentCbusi_type: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label19: TLabel;
    Shape3: TShape;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    TabSheet3: TTabSheet;
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
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    DSqryimage: TDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
    Label17: TLabel;
    dxDBMaskEdit2: TdxDBMaskEdit;
    ADOQuery1personalID: TStringField;
    agentpersonalID: TStringField;
    dxDBGrid1personalID: TdxDBGridColumn;
    Edit1: TEdit;
    Label20: TLabel;
    Label82: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    DBText13: TDBText;
    DBText12: TDBText;
    DBText9: TDBText;
    DBText8: TDBText;
    DBText5: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    DBText3: TDBText;
    imagecreater: TClientDataSet;
    imagecreaterrec_id: TAutoIncField;
    imagecreaterid: TIntegerField;
    imagecreatercreat_dt: TDateTimeField;
    imagecreatercreat_by: TIntegerField;
    imagecreatercreater: TStringField;
    imagecreatercreat_dt1: TDateTimeField;
    imagecreatercreat_dt2: TDateTimeField;
    imagecreatercreat_dt3: TDateTimeField;
    imagecreatercreat_dt4: TDateTimeField;
    imagecreatercreat_dt5: TDateTimeField;
    DSimagecreater: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DSagentDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure agentBeforePost(DataSet: TDataSet);
    procedure agentBeforeDelete(DataSet: TDataSet);
    procedure agentAfterPost(DataSet: TDataSet);
    procedure busiframeAfterPost(DataSet: TDataSet);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGraphicEdit1Change(Sender: TObject);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit2AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit3AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit4AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit5AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setagent1: Tsetagent1;

implementation

uses datamodu, Unit61;

{$R *.DFM}

procedure Tsetagent1.FormActivate(Sender: TObject);
begin
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
with dm.district do
    if active=false then open;
end;

procedure Tsetagent1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with agent do
    if active=true then close;
//with dm.district do
//    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetagent1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetagent1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetagent1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetagent1.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetagent1.DSagentDataChange(Sender: TObject;
  Field: TField);
begin
with agent do
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;

procedure Tsetagent1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetagent1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetagent1.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with agent do
begin
    if active=true then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select cdistrict=dbo.fn_getdistrict(a.district),a.*,';
    commandtext:=commandtext+' creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by=c.sta_id';
    commandtext:=commandtext+' where a.mate_type_id=4'; // and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1 ';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.mate_name ';
            2:  commandtext:=commandtext+' and a.address ';
        end;
        commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district,t.dist_id)=1)';
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetagent1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    if dm.district.active=false then dm.district.open;
end;
if PageControl1.ActivePage=TabSheet3 then
begin
    with agent do
        if (active=false) or (recordcount=0) then
        begin
            if qryimage.active=true then qryimage.close;
            exit;
        end;
    if (agent.fieldbyname('mate_id').asstring<>'') and (qryimage.tag<>agent.fieldbyname('mate_id').asinteger) then
    begin
        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='if not exists (select 1 from tb_image where type_id=5 and id='+agent.fieldbyname('mate_id').asstring+')';  //type_id=5:代理人图片
            commandtext:=commandtext+' insert into tb_image (type_id,id) values (5,'+agent.fieldbyname('mate_id').asstring+')';
            execute;
        end;
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select * from tb_image where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
            open;
            qryimage.tag:=agent.fieldbyname('mate_id').asinteger;
        end;
        with imagecreater do
        begin
            if active=true then close;
            commandtext:='select top 1 rec_id,id,creat_by,creater=dbo.fn_staff_name(creat_by),creat_dt,creat_dt1,creat_dt2,creat_dt3,creat_dt4,creat_dt5';
            commandtext:=commandtext+' from tb_image where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
            open;
        end;
    end;
end;
end;

procedure Tsetagent1.dxDBEdit5Change(Sender: TObject);
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
    with agent do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
//    dxDBEdit3.text:=spy;
end;

procedure Tsetagent1.agentBeforePost(DataSet: TDataSet);
begin
with agent do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('代理人名称不可为空');
//    if fieldbyname('personalID').asstring='' then raise exception.create('请输入身份证号码');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置所属地区');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=4; // 销售医院
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

procedure Tsetagent1.agentBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0
    then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该医院已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本医院'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetagent1.agentAfterPost(DataSet: TDataSet);
begin
with agent do
begin
    if ChangeCount>0 then myupdaterefresh(agent,'tb_busimate','mate_id','');
    refreshmyrecord(agent,dm.Refreshcds,0,'a.mate_id',fieldbyname('mate_id').asinteger)
end;
end;

procedure Tsetagent1.busiframeAfterPost(DataSet: TDataSet);
begin
with busiframe do
    if ChangeCount>0 then myupdaterefresh(busiframe,'tb_agentdata','rec_id','');
end;

procedure Tsetagent1.busiframeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetagent1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetagent1.dxDBGraphicEdit1Change(Sender: TObject);
begin
with agent do if not (state=dsedit) then edit;
end;

procedure Tsetagent1.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetagent1.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetagent1.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetagent1.dxDBGraphicEdit4AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass4').asstring:=''
    else qryimage.fieldbyname('graphclass4').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetagent1.dxDBGraphicEdit5AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass5').asstring:=''
    else qryimage.fieldbyname('graphclass5').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetagent1.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetagent1.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetagent1.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetagent1.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetagent1.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetagent1.dxDBGraphicEdit1KeyDown(Sender: TObject;
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

end.
