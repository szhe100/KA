unit Unit2a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, ADODB, dxEdLib, ExtCtrls, wwSpeedButton, mycds,
  dxdbtrel, StdCtrls, wwDBNavigator, wwclearpanel, wwclearbuttongroup,
  wwradiogroup, dxDBELib, dxCntner, dxEditor, dxDBEdtr, DBCtrls, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj, dxDBTLCl, dxGrClms;

type
  Tsetagent = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
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
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBEdit11: TdxDBEdit;
    SpeedButton6: TSpeedButton;
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
    Label21: TLabel;
    Label22: TLabel;
    DBText11: TDBText;
    DBText10: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label98: TLabel;
    Label99: TLabel;
    DBText24: TDBText;
    DBText25: TDBText;
    agentstoper: TStringField;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    dxDBEdit12: TdxDBEdit;
    Label16: TLabel;
    agentmobile_no: TStringField;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    agentbirthdate: TDateTimeField;
    agentreceiver: TStringField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label23: TLabel;
    Label25: TLabel;
    dxDBEdit14: TdxDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    dxDBGrid1receiver: TdxDBGridColumn;
    dxDBGrid1acnt_bank: TdxDBGridColumn;
    dxDBGrid1bank_account: TdxDBGridColumn;
    Label26: TLabel;
    DBText3: TDBText;
    imagecreater: TClientDataSet;
    imagecreaterrec_id: TAutoIncField;
    imagecreaterid: TIntegerField;
    imagecreatercreat_dt: TDateTimeField;
    imagecreatercreat_by: TIntegerField;
    imagecreatercreater: TStringField;
    DSimagecreater: TDataSource;
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
    Label29: TLabel;
    Label30: TLabel;
    DBText6: TDBText;
    imagecreatercreat_dt1: TDateTimeField;
    imagecreatercreat_dt2: TDateTimeField;
    imagecreatercreat_dt3: TDateTimeField;
    imagecreatercreat_dt4: TDateTimeField;
    imagecreatercreat_dt5: TDateTimeField;
    agentindi_acco: TBooleanField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBGrid1indi_acco: TdxDBGridCheckColumn;
    agentstoppay: TBooleanField;
    agentstoppayfor: TStringField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    Label32: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    agentmate_id1: TIntegerField;
    agentmate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    Edit1: TEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Label31: TLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
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
    procedure SpeedButton6Click(Sender: TObject);
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
    procedure dxDBGraphicEdit1Click(Sender: TObject);
    procedure dxDBGraphicEdit2Click(Sender: TObject);
    procedure dxDBGraphicEdit3Click(Sender: TObject);
    procedure dxDBGraphicEdit4Click(Sender: TObject);
    procedure dxDBGraphicEdit5Click(Sender: TObject);
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryimageAfterPost(DataSet: TDataSet);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure agentAfterInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setagent: Tsetagent;

implementation

uses datamodu, Unit61, Unit16c;

{$R *.DFM}

procedure Tsetagent.FormActivate(Sender: TObject);
begin
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
with dm.district do
    if active=false then open;
{
dxDBEdit1.ReadOnly:= not isaccounter(curuserid);
dxDBEdit14.ReadOnly:= not isaccounter(curuserid);
dxDBMaskEdit1.ReadOnly:= not isaccounter(curuserid);
dxDBCheckEdit2.ReadOnly:= not isaccounter(curuserid);
dxDBEdit15.ReadOnly:= not isaccounter(curuserid);
}
end;

procedure Tsetagent.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with agent do
    if active=true then close;
//with dm.district do
//    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetagent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetagent.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetagent.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetagent.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetagent.DSagentDataChange(Sender: TObject;
  Field: TField);
begin
with agent do
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;

procedure Tsetagent.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetagent.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetagent.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with agent do
begin
    if active then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select cdistrict=dbo.fn_getdistrict(a.district),a.*,mate_name1=e.mate_name,';
    commandtext:=commandtext+' stoper=d.zname,creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.stop_by=d.sta_id';
    commandtext:=commandtext+' left join tb_busimate e on a.mate_id1=e.mate_id';
    commandtext:=commandtext+' where a.mate_type_id=4'; // and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1 ';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.mate_name ';
            2:  commandtext:=commandtext+' and a.address ';
            3:  commandtext:=commandtext+' and a.mate_code ';
            4:  commandtext:=commandtext+' and a.mate_id ';
        end;
        if radiogroup1.itemindex<3
            then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%'''
            else if radiogroup1.itemindex=3 then commandtext:=commandtext+' = '''+trim(dxedit1.text)+''''
            else if radiogroup1.itemindex=4 then commandtext:=commandtext+' = '+trim(dxedit1.text);
    end;
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetagent.PageControl1Change(Sender: TObject);
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
            commandtext:='if not exists (select 1 from tb_image where type_id=5 and id='+agent.fieldbyname('mate_id').asstring+')';  //type_id=5:业务负责人图片
            commandtext:=commandtext+' insert into tb_image (type_id,id) values (5,'+agent.fieldbyname('mate_id').asstring+')';
//edit1.text:=commandtext;
            execute;
        end;
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select * from tb_image where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
edit1.text:=commandtext;
            try
                setprogress(1);
                try
                	open;
                except
                	setprogress(0);
                    raise Exception.Create('读取图片失败，可依次清除无效图片后重新存入图片');
                end;
            finally
                setprogress(0);
            end;
{
            try
                setprogress(1);
                try
	                open;
                except
    				raise Exception.Create('读取图片失败');
                end;
            finally
                setprogress(0);
            end;
}
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

procedure Tsetagent.dxDBEdit5Change(Sender: TObject);
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
end;

procedure Tsetagent.agentBeforePost(DataSet: TDataSet);
begin
with agent do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('业务负责人名称不可为空');
//    if fieldbyname('personalID').asstring='' then raise exception.create('请输入身份证号码');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置所属地区');
end;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_busimate where mate_type_id=4';
    commandtext:=commandtext+' and mate_name='''+ agent.fieldbyname('mate_name').asstring+'''';
    if agent.fieldbyname('mate_id').asinteger<>0 then commandtext:=commandtext+'  and mate_id<>'+agent.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('已有此名称业务负责人，不可重复录入');
end;
with agent do
begin
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

procedure Tsetagent.agentBeforeDelete(DataSet: TDataSet);
begin
raise Exception.Create('此表不可删除');
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

procedure Tsetagent.agentAfterPost(DataSet: TDataSet);
begin
with agent do
begin
    if ChangeCount>0 then myupdaterefresh(agent,'tb_busimate','mate_id','');
    refreshmyrecord(agent,dm.Refreshcds,0,'a.mate_id',fieldbyname('mate_id').asinteger)
end;
end;

procedure Tsetagent.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
    s1,s2 : string;
    id2: integer; //id1,
begin
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
//从第2行开始导入，导入格式: 1业务负责人名称,所在地区
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='select top 1 1 from tb_busimate where comp_id='+inttostr(compid)+' and mate_type_id=4 and mate_name='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码医院，不再加入
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s2+'''';
                open;
                if recordcount=0 then id2:=0 else id2:=fieldbyname('rec_id').asinteger;
                if active then close;
                commandtext:='insert into tb_busimate (comp_id,mate_name,qry_code,mate_type_id,district,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(compid)+','''+s1+''',dbo.fn_getpy('''+s2+'''),4,'+inttostr(id2)+','+inttostr(curuserid)+',getdate())';
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
    SpeedButton5Click(nil);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'条,名称重复记录未导入)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetagent.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_agentdata','rec_id','');
end;

procedure Tsetagent.busiframeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetagent.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetagent.dxDBGraphicEdit1Change(Sender: TObject);
begin
with agent do if not (state=dsedit) then edit;
end;

procedure Tsetagent.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
with imagecreater do
begin
    if not (state in [dsedit]) then edit;
    fieldbyname('creat_dt1').asdatetime:=srv_date;
    post;
end;
end;

procedure Tsetagent.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
with imagecreater do
begin
    if not (state in [dsedit]) then edit;
    fieldbyname('creat_dt2').asdatetime:=srv_date;
    post;
end;
end;

procedure Tsetagent.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
with imagecreater do
begin
    if not (state in [dsedit]) then edit;
    fieldbyname('creat_dt3').asdatetime:=srv_date;
    post;
end;
end;

procedure Tsetagent.dxDBGraphicEdit4AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass4').asstring:=''
    else qryimage.fieldbyname('graphclass4').asstring := Picture.Graphic.ClassName;
with imagecreater do
begin
    if not (state in [dsedit]) then edit;
    fieldbyname('creat_dt4').asdatetime:=srv_date;
    post;
end;
end;

procedure Tsetagent.dxDBGraphicEdit5AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass5').asstring:=''
    else qryimage.fieldbyname('graphclass5').asstring := Picture.Graphic.ClassName;
with imagecreater do
begin
    if not (state in [dsedit]) then edit;
    fieldbyname('creat_dt5').asdatetime:=srv_date;
    post;
end;
end;

procedure Tsetagent.dxDBGraphicEdit1Click(Sender: TObject);
begin
with dxDBGraphicEdit1 do
    if align=alNone then
    begin
        align:=alclient;
        bringtofront;
    end
    else
    begin
        align:=alNone;
        top:=95; left:=5; width:=135;  height:=200;
    end;
end;

procedure Tsetagent.dxDBGraphicEdit2Click(Sender: TObject);
begin
with dxDBGraphicEdit2 do
    if align=alNone then
    begin
        align:=alclient;
        bringtofront;
    end
    else
    begin
        align:=alNone;
        top:=95; left:=138; width:=135;  height:=200;
    end;
end;

procedure Tsetagent.dxDBGraphicEdit3Click(Sender: TObject);
begin
with dxDBGraphicEdit3 do
    if align=alNone then
    begin
        align:=alclient;
        bringtofront;
    end
    else
    begin
        align:=alNone;
        top:=95; left:=271; width:=135;  height:=200;
    end;
end;

procedure Tsetagent.dxDBGraphicEdit4Click(Sender: TObject);
begin
with dxDBGraphicEdit4 do
    if align=alNone then
    begin
        align:=alclient;
        bringtofront;
    end
    else
    begin
        align:=alNone;
        top:=95; left:=404; width:=135;  height:=200;
    end;
end;

procedure Tsetagent.dxDBGraphicEdit5Click(Sender: TObject);
begin
with dxDBGraphicEdit5 do
    if align=alNone then
    begin
        align:=alclient;
        bringtofront;
    end
    else
    begin
        align:=alNone;
        top:=95; left:=537; width:=135;  height:=200;
    end;
end;

procedure Tsetagent.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetagent.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetagent.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetagent.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetagent.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetagent.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
    id1: integer;
    s2,s3 : string;
begin
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
//从第2行开始导入,导入格式: 1业务负责人ID,2联系人,3联系人电话
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        try
            id1:=strtoint(sheet.cells[j,1].text);
        except
            id1:=0;
        end;
        if id1=0 then continue; //未取得id,直接进入下一条记录
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='update tb_busimate set deputy='''+s2+''',phone='''+s3+''' where mate_type_id=4 and mate_id='+inttostr(id1);
//edit1.text:=commandtext;            
            try
                execute;
                mi:=mi+1;
            except

            end;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'条)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetagent.SpeedButton3Click(Sender: TObject);
var mi: integer;
    bcd,s: string;
begin
if MessageBox(0,'确定生成本业务负责人收款人及账号申请单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

bcd:= formatfloat('00000000',getbillid(compid,14));
with dm.pubqry do
begin
    setprogress(1);
    if active then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,busi_type,bod_status_id,agent_id,creat_by,creat_dt)';  //为预留相识类型tb_busimate的收款人账户申请，此类型busi_type=1
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+bcd+''',14,1,0,'+agent.fieldbyname('mate_id').asstring+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',1,'''+agent.fieldbyname('receiver').asstring+''','''+agent.fieldbyname('receiver').asstring+''')';
    execute;
    if active then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',2,'''+agent.fieldbyname('acnt_bank').asstring+''','''+agent.fieldbyname('acnt_bank').asstring+''')';
    execute;
    if active then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',3,'''+agent.fieldbyname('bank_account').asstring+''','''+agent.fieldbyname('bank_account').asstring+''')';
//edit2.text:=commandtext;
    execute;
    if active then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',4,';
    if dxDBCheckEdit2.Checked then commandtext:=commandtext+'''是'',' else commandtext:=commandtext+'''否'','; //,'''+agent.fieldbyname('bank_account').asstring+''')';
    if dxDBCheckEdit2.Checked then commandtext:=commandtext+'''是'')' else commandtext:=commandtext+'''否'')'; //,'''+agent.fieldbyname('bank_account').asstring+''')';
//    if agent.fieldbyname('dxDBCheckEdit2').AsBoolean=true then commandtext:=commandtext+'''是'',' else commandtext:=commandtext+'''否'','; //,'''+agent.fieldbyname('bank_account').asstring+''')';
//    if agent.fieldbyname('dxDBCheckEdit2').AsBoolean=true then commandtext:=commandtext+'''是'')' else commandtext:=commandtext+'''否'')'; //,'''+agent.fieldbyname('bank_account').asstring+''')';
//edit2.text:=commandtext;
    execute;
    if active then close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',5,'''+agent.fieldbyname('stoppayfor').asstring+''','''+agent.fieldbyname('stoppayfor').asstring+''')';
//edit2.text:=commandtext;
    execute;
    if active then close;
    setprogress(0);
    beep;
    s:='已成功生成'+bcd+'号业务负责人收款人及账号申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetagent.SpeedButton4Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
    s1,s2,s3,s4 : string;
begin
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
//从第2行开始导入，导入格式: 1业务负责人名称s1, 2收款人s2, 3开户银行s3, 4银行账户s4
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
{
        try
            id1:=strtoint(sheet.cells[j,1].text);
        except
            id1:=0;
        end;
        if id1=0 then continue; //未取得id,直接进入下一条记录
}
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        with dm.pubqry do
        begin
            if active=true then close;
//从第2行开始导入，导入格式: 1业务负责人名称s1, 2收款人s2, 3开户银行s3, 4银行账户s4
            commandtext:='update tb_busimate set receiver='''+s2+''',acnt_bank='''+s3+''',bank_account='''+s4+''' where mate_type_id=4 and mate_name='''+s1+'''';
//edit1.text:=commandtext;            
            try
                execute;
                mi:=mi+1;
            except

            end;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'条)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetagent.qryimageAfterPost(DataSet: TDataSet);
begin
//showmessage(qryimage.fieldbyname('graphclass1').asstring);
//showmessage(qryimage.fieldbyname('zimage1').asstring);
try
	qryimage.ApplyUpdates(-1);
except
    raise Exception.Create('保存图片失败，请选择合格的图片存入');
end;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set creat_by='+inttostr(curuserid)+',creat_dt=getdate() where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    execute;
end;
if imagecreater.ChangeCount>0 then myupdaterefresh(imagecreater,'tb_image','rec_id','');
end;

procedure Tsetagent.wwDBNavigator1PostClick(Sender: TObject);
begin
if qryimage.state=dsedit then
begin
    setprogress(1);
	qryimage.post;
    setprogress(0);
end;
end;

procedure Tsetagent.dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if (ssCtrl in Shift) AND (Key=Ord('V')) then (Sender as TdxDBGraphicEdit).PasteFromClipboard;
if (ssCtrl in Shift) AND (Key=Ord('V')) then //(Sender as TdxDBGraphicEdit).PasteFromClipboard;
begin
    MessageBox(0,pchar('为保证存入成功，请使用右键\load... 方式导入有效的jpg格式图片文件'),'请注意',MB_OK+MB_ICONInformation);
    abort;
end;
if (ssCtrl in Shift) AND (Key=Ord('D')) then showpic((Sender as TdxDBGraphicEdit),qryimage); // difined in datamodu
//if (ssCtrl in Shift) AND (Key=Ord('C')) then (Sender as TdxDBGraphicEdit).CopyToClipboard;
if (ssCtrl in Shift) AND (Key=Ord('S')) then (Sender as TdxDBGraphicEdit).DataSource.DataSet.AfterPost(nil);
if (ssCtrl in Shift) AND (Key=Ord('X')) then
begin
    (Sender as TdxDBGraphicEdit).CopyToClipboard;
    (Sender as TdxDBGraphicEdit).ClearPicture;
end;
end;

procedure Tsetagent.agentAfterInsert(DataSet: TDataSet);
begin
with agent do
begin
	fieldbyname('stoppay').asboolean:=False;
	fieldbyname('indi_acco').asboolean:=False;
	fieldbyname('stop_yn').asboolean:=False;
end;
end;

procedure Tsetagent.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if not (agent.state in [dsinsert,dsedit]) then agent.edit;
    if showmodal= mrOK then
    begin
        agent.fieldbyname('mate_id1').asinteger:= query1.fieldbyname('mate_id').asinteger;
        agent.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        agent.fieldbyname('mate_id1').asinteger:= 0;
        agent.fieldbyname('mate_name1').asstring:= '';
    end;
end;
end;

procedure Tsetagent.SpeedButton7Click(Sender: TObject);
begin
with agent do if (active=false) or (recordcount=0) then exit;
//if agent.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片1','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage1=null where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetagent.SpeedButton8Click(Sender: TObject);
begin
with agent do if (active=false) or (recordcount=0) then exit;
//if agent.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片2','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage2=null where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetagent.SpeedButton9Click(Sender: TObject);
begin
with agent do if (active=false) or (recordcount=0) then exit;
//if agent.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片3','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage3=null where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetagent.SpeedButton10Click(Sender: TObject);
begin
with agent do if (active=false) or (recordcount=0) then exit;
//if agent.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片4','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage4=null where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetagent.SpeedButton11Click(Sender: TObject);
begin
with agent do if (active=false) or (recordcount=0) then exit;
//if agent.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片5','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_image set zimage5=null where type_id=5 and id='+agent.fieldbyname('mate_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

end.
