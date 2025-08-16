unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ADODB, ImgList, dxEdLib, wwSpeedButton,mycds, Jpeg,
  wwDBNavigator, ExtCtrls, wwclearpanel, dxDBELib, StdCtrls, dxdbtrel,
  DBCtrls, dxDBTL, dxCntner, dxEditor, Mask, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj, dxDBEdtr;

type
  Tsetbroker = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    dxDBGrid1: TdxDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    Label2: TLabel;
    dxDBGrid1zname: TdxDBGridMaskColumn;
    dxDBGrid1zcode: TdxDBGridMaskColumn;
    dxDBGrid1personalID: TdxDBGridMaskColumn;
    dxDBGrid1birthdate: TdxDBGridDateColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    Label10: TLabel;
    Label11: TLabel;
    dxDBGrid1sex: TdxDBGridColumn;
    DSbroker: TDataSource;
    Label3: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    dxEdit1: TdxEdit;
    dxDBGrid1depo_acco: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    dxDBGrid1qry_code: TdxDBGridColumn;
    DBText4: TDBText;
    ImageList1: TImageList;
    ADOQuery1: TADOQuery;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    Label6: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBGrid1receiver: TdxDBGridColumn;
    dxDBGrid1sta_id: TdxDBGridColumn;
    dxDBGrid1bank_name: TdxDBGridColumn;
    Label13: TLabel;
    broker: TClientDataSet;
    AutoIncField5: TAutoIncField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    StringField77: TStringField;
    brokerqry_code: TStringField;
    StringField78: TStringField;
    BooleanField11: TBooleanField;
    StringField79: TStringField;
    DateTimeField9: TDateTimeField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    MemoField3: TMemoField;
    StringField86: TStringField;
    MemoField4: TMemoField;
    BooleanField12: TBooleanField;
    BooleanField13: TBooleanField;
    IntegerField34: TIntegerField;
    StringField87: TStringField;
    DateTimeField12: TDateTimeField;
    StringField88: TStringField;
    BooleanField14: TBooleanField;
    BooleanField15: TBooleanField;
    BooleanField16: TBooleanField;
    IntegerField35: TIntegerField;
    BooleanField17: TBooleanField;
    BooleanField18: TBooleanField;
    BooleanField19: TBooleanField;
    BooleanField20: TBooleanField;
    brokermate_id: TIntegerField;
    brokerdepo_bank: TIntegerField;
    brokerdepo_acco: TStringField;
    brokerdistrict: TIntegerField;
    brokercdistrict: TStringField;
    brokerbank_name: TStringField;
    brokerreceiver: TStringField;
    brokerEmail: TStringField;
    brokercreat_dt: TDateTimeField;
    brokercreat_by: TIntegerField;
    brokermodify_dt: TDateTimeField;
    brokermodify_by: TIntegerField;
    brokercreater: TStringField;
    brokermodifier: TStringField;
    brokermobile_no: TStringField;
    dxDBGrid1Email: TdxDBGridColumn;
    brokerteam_id: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    DS: TDataSource;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    Label25: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    brokermate_name: TStringField;
    brokercomp_id: TAutoIncField;
    TabSheet3: TTabSheet;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
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
    DSqryimage: TDataSource;
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    ADOQuery1receiver1: TStringField;
    ADOQuery1bank_name: TStringField;
    ADOQuery1depo_acco: TStringField;
    Edit2: TEdit;
    dxDBMaskEdit2: TdxDBMaskEdit;
    dxDBMemo1: TdxDBMemo;
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
    DBText25: TDBText;
    DBText24: TDBText;
    Label99: TLabel;
    brokerstoper: TStringField;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    Label23: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label82: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    imagecreater: TClientDataSet;
    DSimagecreater: TDataSource;
    imagecreatercreat_dt: TDateTimeField;
    imagecreatercreat_by: TIntegerField;
    imagecreatercreater: TStringField;
    imagecreaterrec_id: TAutoIncField;
    imagecreaterid: TIntegerField;
    Label8: TLabel;
    Label24: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    Label29: TLabel;
    Label30: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    imagecreatercreat_dt1: TDateTimeField;
    imagecreatercreat_dt2: TDateTimeField;
    imagecreatercreat_dt3: TDateTimeField;
    imagecreatercreat_dt4: TDateTimeField;
    imagecreatercreat_dt5: TDateTimeField;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    brokerindi_acco: TBooleanField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBGrid1indi_acco: TdxDBGridCheckColumn;
    brokerstoppay: TBooleanField;
    brokerstoppayfor: TStringField;
    dxDBGrid1stoppay: TdxDBGridCheckColumn;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label32: TLabel;
    brokersta_id1: TIntegerField;
    brokerzname1: TStringField;
    dxDBGrid1zname1: TdxDBGridColumn;
    Edit3: TEdit;
    Edit1: TEdit;
    Label33: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton4: TSpeedButton;
    dxDBMaskEdit1: TdxDBMaskEdit;
    Label19: TLabel;
    Label18: TLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit8: TdxDBEdit;
    Label31: TLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    SpeedButton1: TSpeedButton;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label20: TLabel;
    Label34: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label26: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure DSbrokerDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure dxDBTreeList1Enter(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure brokerAfterPost(DataSet: TDataSet);
    procedure brokerBeforePost(DataSet: TDataSet);
    procedure brokerAfterDelete(DataSet: TDataSet);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
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
    procedure dxDBGraphicEdit1Change(Sender: TObject);
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
    procedure qryimageAfterPost(DataSet: TDataSet);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure brokerBeforeDelete(DataSet: TDataSet);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imagecreaterAfterPost(DataSet: TDataSet);
    procedure brokerAfterInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure dxDBEdit10Change(Sender: TObject);
    procedure dxDBCheckEdit3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbroker: Tsetbroker;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tsetbroker.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
{
dxDBEdit2.ReadOnly:= not isaccounter(curuserid);
dxDBEdit5.ReadOnly:= not isaccounter(curuserid);
dxDBMaskEdit1.ReadOnly:= not isaccounter(curuserid);
dxDBCheckEdit2.ReadOnly:= not isaccounter(curuserid);
dxDBEdit8.ReadOnly:= not isaccounter(curuserid);
}
end;

procedure Tsetbroker.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with broker do
    if active then close;
//with dm.team do
//    if active then close;
with dm.staff do
    if active then close;
with broker do
    if active then close;
end;

procedure Tsetbroker.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbroker.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
PageControl1Change(nil);
end;

procedure Tsetbroker.DSbrokerDataChange(Sender: TObject; Field: TField);
begin
with broker do
begin
    speedbutton1.enabled:=(active) and (recordcount>0);
    speedbutton2.enabled:=(active) and (recordcount>0);
    BitBtn1.enabled:=(active) and (recordcount>0) and (fieldbyname('zcode').asstring='');
end;
if (broker.active=false) or (pagecontrol1.activepage=tabsheet1) then exit;  // 两句均可
with dxDBCheckEdit3 do
    if checked then caption:='男' else caption:='女';
end;

procedure Tsetbroker.PageControl1Change(Sender: TObject);
begin
DSbrokerDataChange(nil,nil);
if PageControl1.ActivePage=TabSheet3 then
begin
    with broker do
        if (active=false) or (recordcount=0) then
        begin
            if qryimage.active then qryimage.close;
            exit;
        end;
    if (broker.fieldbyname('sta_id').asstring<>'') and (qryimage.tag<>broker.fieldbyname('sta_id').asinteger) then
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='if not exists (select 1 from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring+')';  //type_id=4:医药代表图片
            commandtext:=commandtext+' insert into tb_image (type_id,id) values (4,'+broker.fieldbyname('sta_id').asstring+')';
edit2.text:=commandtext;
            execute;
        end;
        with qryimage do
        begin
            if active then close;
            commandtext:='select top 1 * from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
//            commandtext:='select top 1 rec_id,type_id,id,zimage1,graphclass1,zimage2,graphclass2,zimage3,graphclass3,zimage4,graphclass4,zimage5,graphclass5';
//            commandtext:=commandtext+' from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
edit3.text:=commandtext;
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
                open;
            finally
                setprogress(0);
            end;
}
            qryimage.tag:=broker.fieldbyname('sta_id').asinteger;
        end;
        with imagecreater do
        begin
            if active then close;
            commandtext:='select top 1 rec_id,id,creat_by,creater=dbo.fn_staff_name(creat_by),creat_dt,creat_dt1,creat_dt2,creat_dt3,creat_dt4,creat_dt5';
            commandtext:=commandtext+' from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
            open;
        end;
    end;
end;
end;

procedure Tsetbroker.DBEdit1Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=trim(dbedit1.text);     spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with broker do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
//    dbedit3.text:=spy;
end;

procedure Tsetbroker.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with broker do
begin
    if active then
    begin
        mi:=fieldbyname('sta_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,zname1=f.zname,d.mate_name,cdistrict=g.prov_name+'' ''+g.city_name,stoper=e.zname,creater=b.zname,modifier=c.zname'; //dbo.fn_getdistrict(a.district)
    commandtext:=commandtext+' from tb_staff a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by =b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by =c.sta_id';
    commandtext:=commandtext+' left join tb_busimate d on a.mate_id =d.mate_id';
    commandtext:=commandtext+' left join tb_staff e on a.stop_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.sta_id1 =f.sta_id';
    commandtext:=commandtext+' left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) g on a.district=g.prov_code or a.district=g.city_code';
//    commandtext:=commandtext+' left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) g on a.district=g.city_code';
    commandtext:=commandtext+' where a.sta_type_id=1'; // and a.comp_id='+inttostr(compid);
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (a.qry_code like ''%'+trim(dxEdit1.text)+'%'' or a.zname like ''%'+trim(dxEdit1.text)+'%'')';
    if fdistltd then commandtext:=commandtext+'  and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1';
edit2.text:=commandtext;    
    try
        setprogress(1);
        open;
        if mi>0 then locate('sta_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbroker.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetbroker.dxEdit1Click(Sender: TObject);
begin
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;

procedure Tsetbroker.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetbroker.dxDBTreeList1DblClick(Sender: TObject);
begin
with broker do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('district').asinteger:=dm.district.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetbroker.dxDBTreeList1Enter(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetbroker.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 2 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tsetbroker.brokerAfterPost(DataSet: TDataSet);
var TempDataSet: TClientDataSet;
    a: array [1..4,1..2] of string;
begin
if TempDataSet = nil then TempDataSet := TClientDataSet.Create(nil);
try
    TempDataSet.Data := broker.Delta;  // pass the delta to another ClientDataSet
    ds.DataSet:= TempDataSet;
    if TempDataSet.RecordCount=1 then  //新增
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='exec sp_updatelog 1,'+inttostr(broker.fieldbyname('sta_id').asinteger)+',''设置医药代表'','''','''','''+broker.fieldbyname('zname').asstring+''','+inttostr(curuserid);
            execute;
        end;
    end;
    if TempDataSet.RecordCount=2 then //修改
    begin
        with TempDataSet do
        begin
            if not IsEmpty then
            begin
                first;
                while not eof do
                begin
                    if (fieldbyname('sta_id').isnull) then
                    begin
                        a[1,2]:=fieldbyname('zname').asstring;
                        a[2,2]:=fieldbyname('receiver').asstring;
                        a[3,2]:=fieldbyname('bank_name').asstring;
                        a[4,2]:=fieldbyname('depo_acco').asstring;
                    end
                    else
                    begin
                        a[1,1]:=fieldbyname('zname').asstring;
                        a[2,1]:=fieldbyname('receiver').asstring;
                        a[3,1]:=fieldbyname('bank_name').asstring;
                        a[4,1]:=fieldbyname('depo_acco').asstring;
                    end;
                    next;
                end;
            end;
        end;
        with dm.pubqry do
        begin
            if a[1,2]<>'' then
            begin
                if active then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''姓名'','''+a[1,1]+''','''+a[1,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[2,2]<>'' then
            begin
                if active then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''收款人'','''+a[2,1]+''','''+a[2,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[3,2]<>'' then
            begin
                if active then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''开户银行'','''+a[3,1]+''','''+a[3,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[4,2]<>'' then
            begin
                if active then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''银行账号'','''+a[4,1]+''','''+a[4,2]+''','+inttostr(curuserid);
                execute;
            end;
        end;
    end;
finally
    FreeAndNil(TempDataSet);
end;
if broker.ChangeCount>0 then myupdaterefresh(broker,'tb_staff','sta_id','');
end;

procedure Tsetbroker.brokerBeforePost(DataSet: TDataSet);
begin
with broker do
begin
    if fieldbyname('zname').asstring='' then raise exception.create('请输入姓名');
//    if fieldbyname('personalID').asstring='' then raise exception.create('请输入身份证号码');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置所属地区');
    if state=dsinsert then
    begin
        fieldbyname('sta_type_id').asinteger:=1;  // 1: 医药代表
        fieldbyname('comp_id').asinteger:=compid;  //
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

procedure Tsetbroker.brokerAfterDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='exec sp_updatelog 3,'+broker.fieldbyname('sta_id').asstring+',''设置业务员'','''','''+broker.fieldbyname('zname').asstring+''','''','+inttostr(curuserid);
    execute;
end;
if broker.ChangeCount>0 then myupdaterefresh(broker,'tb_staff','sta_id','');
end;

procedure Tsetbroker.wwDBNavigator1InsertClick(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then PageControl1.ActivePage:=TabSheet2;
end;

procedure Tsetbroker.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with pickagent do
begin
    if not (broker.state in [dsinsert,dsedit]) then broker.edit;
    if showmodal= mrOK then
    begin
        broker.fieldbyname('mate_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        broker.fieldbyname('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        broker.fieldbyname('mate_id').asinteger:= 0;
        broker.fieldbyname('mate_name').asstring:= '';
    end;
end;
}
end;

procedure Tsetbroker.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,m1,m2: integer; 
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
//从第2行开始导入，导入格式: 格式: 1业务员编码,2业务员名称,3所在地区,4电子邮箱,5联系电话(选填),6收款人,7开户银行,8帐户, 9性别(选填), 10身份证号(选填)
    mi:=0;j:=2;  //第1行开始 每行一单
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100))';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10)';
    while (sheet.cells[j,2].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text);
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text)+''','''+Trim(sheet.cells[j,8].text)+''','''+Trim(sheet.cells[j,9].text)+''','''+Trim(sheet.cells[j,10].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+' select top 5 * from ( select top 5 info=''第''+line_no+''行业务员编码无效'' from @tab a where f1<>'''' and not exists (select 1 from tb_staff b where b.sta_type_id=1 and b.zcode=a.f1)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无业务员名称'' from @tab a where f2=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无所在地区或数据无效'' from @tab a where f3='''' or not exists (select 1 from tb_district b where f3=b.prov_name+'' ''+b.city_name)';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无电子邮箱或数据无效'' from @tab a where f4='''''; // or not exists (select 1 from tb_medicine b where b.material_code1=f5)';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无联系电话'' from @tab where f5=''''';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无收款人'' from @tab where f6=''''';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无开户银行'' from @tab where f7=''''';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无帐户'' from @tab where f8='''''; // or try_cast(f8 as decimal(15,4)) is null';
    sql:=sql+' ) a';
//从第2行开始导入，导入格式: 格式: 1业务员编码,2业务员名称,3所在地区,4电子邮箱,5联系电话(选填),6收款人,7开户银行,8帐户, 9性别(选填), 10身份证号(选填)
edit1.text:=sql;
//    setprogress(0);
//exit;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit1.text:=sql;
        open;
        setprogress(0);
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

//从第2行开始导入，导入格式: 格式: 1业务员编码,2业务员名称,3所在地区,4电子邮箱,5联系电话(选填),6收款人,7开户银行,8帐户, 9性别(选填), 10身份证号(选填)
        sql:=sql1+' declare @cnt1 int,@cnt2 int,@cid int'; //=2000001';
        sql:=sql+' update a set zname=b.f2,district=c.city_code,';
        sql:=sql+'      Email=b.f4,phone=b.f5,receiver=b.f6,bank_name=b.f7,depo_acco=b.f8,sex=case when b.f9=''男'' then 1 when b.f9=''女'' then 0 else null end,';
        sql:=sql+'      personalID=f10,modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from tb_staff a';
        sql:=sql+' inner join @tab b on a.zcode=b.f1 and a.sta_type_id=1';
        sql:=sql+' left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) c on b.f3=c.prov_name+'' ''+c.city_name';
        sql:=sql+' where b.f1<>''''  set @cnt1=@@ROWCOUNT';

        sql:=sql+' select top 1 @cid=cast(zcode as int) from tb_staff where sta_type_id=1 order by zcode desc';

        sql:=sql+' insert into tb_staff (zcode,zname,qry_code,sta_type_id,district,Email,phone,receiver,bank_name,depo_acco,sex,personalID,creat_by,creat_dt)';
        sql:=sql+' select zcode=cast(isnull(@cid,2000000)+row_number() over(order by line_no) as varchar(7)),zname=f2,qry_code=dbo.fn_getpy(f2),';
        sql:=sql+' sta_type_id=1,district=c.city_code,Email=f4,phone=f5,receiver=f6,bank_name=f7,depo_acco=f8,sex=case when f9=''男'' then 1 when f9=''女'' then 0 else null end,';
        sql:=sql+' personalID=f10,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) c on f3=c.prov_name+'' ''+c.city_name';
        sql:=sql+' where not exists (select 1 from tb_staff b where sta_type_id=1 and a.f2=b.zname)';
        sql:=sql+' set @cnt2=@@ROWCOUNT select @cnt1,@cnt2';
edit2.text:=sql;
//exit;
        try
            setprogress(1);
            commandtext:=sql;
            open;
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
        if m1+m2=0 then MessageBox(0,pchar('无可导入数据'),'请注意',MB_OK+MB_ICONInformation)
        else
        begin
            SpeedButton5Click(nil);
            MessageBox(0,pchar('已新增'+inttostr(m2)+'条记录,更新'+inttostr(m1)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
            if (m2>0) and (broker.active) then broker.Last;  //如有新增，locate到最后记录
        end;
    end;
end;

procedure Tsetbroker.dxDBGraphicEdit1AssignPicture(Sender: TObject;
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

procedure Tsetbroker.dxDBGraphicEdit2AssignPicture(Sender: TObject;
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

procedure Tsetbroker.dxDBGraphicEdit3AssignPicture(Sender: TObject;
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

procedure Tsetbroker.dxDBGraphicEdit4AssignPicture(Sender: TObject;
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

procedure Tsetbroker.dxDBGraphicEdit5AssignPicture(Sender: TObject;
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

procedure Tsetbroker.dxDBGraphicEdit1Change(Sender: TObject);
begin
with broker do if not (state=dsedit) then edit;
end;

procedure Tsetbroker.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetbroker.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetbroker.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetbroker.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetbroker.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetbroker.qryimageAfterPost(DataSet: TDataSet);
begin
qryimage.ApplyUpdates(0);
//(dataset as TClientdataset).ApplyUpdates(-1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set creat_by='+inttostr(curuserid)+',creat_dt=getdate() where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    execute;
end;
end;

procedure Tsetbroker.wwDBNavigator1PostClick(Sender: TObject);
begin
if qryimage.state=dsedit then qryimage.post;
end;

procedure Tsetbroker.SpeedButton1Click(Sender: TObject);
var mi: integer;
    bcd,s: string;
begin
if MessageBox(0,'确定生成本业务员收款人及账号申请单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

bcd:= formatfloat('00000000',getbillid(compid,27));
with dm.pubqry do
begin
    setprogress(1);
    if active then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,broker_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+bcd+''',27,0,'+broker.fieldbyname('sta_id').asstring+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',1,'''+broker.fieldbyname('receiver').asstring+''','''+broker.fieldbyname('receiver').asstring+''')';
    execute;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',2,'''+broker.fieldbyname('bank_name').asstring+''','''+broker.fieldbyname('bank_name').asstring+''')';
    execute;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',3,'''+broker.fieldbyname('depo_acco').asstring+''','''+broker.fieldbyname('depo_acco').asstring+''')';
edit2.text:=commandtext;    
    execute;

    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',4,';
    if dxDBCheckEdit2.Checked then commandtext:=commandtext+'''是'',' else commandtext:=commandtext+'''否'','; //,'''+agent.fieldbyname('bank_account').asstring+''')';
    if dxDBCheckEdit2.Checked then commandtext:=commandtext+'''是'')' else commandtext:=commandtext+'''否'')'; //,'''+agent.fieldbyname('bank_account').asstring+''')';
    execute;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,bat_cd,zdesc)';
    commandtext:=commandtext+' values ('+inttostr(mi)+',5,'''+broker.fieldbyname('stoppayfor').asstring+''','''+broker.fieldbyname('stoppayfor').asstring+''')';
//edit2.text:=commandtext;
    execute;

    setprogress(0);
    beep;
    s:='已成功生成'+bcd+'号业务员收款人及账号申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbroker.brokerBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where creat_by='+broker.fieldbyname('sta_id').asstring+' or check_by='+broker.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' or broker_id='+broker.fieldbyname('sta_id').asstring+' or agent_id='+broker.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该业务员已发生业务，不可删除');
    if active then close;
    commandtext:='select top 1 1 from tb_brokermed where sta_id='+broker.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该业务员已有业务规则，不可删除');
    if active then close;
    commandtext:='select top 1 1 from tb_busiframe where sta_id='+broker.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该业务员已有业务结构，不可删除');
end;
if MessageBox(0,'确定删除本业务员','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbroker.dxDBGraphicEdit1KeyDown(Sender: TObject;
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

procedure Tsetbroker.imagecreaterAfterPost(DataSet: TDataSet);
begin
if imagecreater.ChangeCount>0 then myupdaterefresh(imagecreater,'tb_image','rec_id','');
end;

procedure Tsetbroker.brokerAfterInsert(DataSet: TDataSet);
begin
with broker do
begin
	fieldbyname('stoppay').asboolean:=False;
	fieldbyname('indi_acco').asboolean:=False;
	fieldbyname('stop_yn').asboolean:=False;
end;
end;

procedure Tsetbroker.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (broker.state in [dsinsert,dsedit]) then broker.edit;
    if showmodal= mrOK then
    begin
        broker.fieldbyname('sta_id1').asinteger:= query1.fieldbyname('sta_id').asinteger;
        broker.fieldbyname('zname1').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        broker.fieldbyname('sta_id1').asinteger:= 0;
        broker.fieldbyname('zname1').asstring:= '';
    end;
end;
end;

procedure Tsetbroker.SpeedButton7Click(Sender: TObject);
begin
with broker do if (active=false) or (recordcount=0) then exit;
//if broker.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片1','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set zimage1=null where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetbroker.SpeedButton8Click(Sender: TObject);
begin
with broker do if (active=false) or (recordcount=0) then exit;
//if broker.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片2','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set zimage2=null where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetbroker.SpeedButton9Click(Sender: TObject);
begin
with broker do if (active=false) or (recordcount=0) then exit;
//if broker.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片3','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set zimage3=null where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetbroker.SpeedButton10Click(Sender: TObject);
begin
with broker do if (active=false) or (recordcount=0) then exit;
//if broker.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片4','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set zimage4=null where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetbroker.SpeedButton11Click(Sender: TObject);
begin
with broker do if (active=false) or (recordcount=0) then exit;
//if broker.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可清除图片');
if MessageBox(0,'确定清除图片5','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_image set zimage5=null where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
    try
        setprogress(1);
		execute;
    finally
        setprogress(0);
    end;
end;
PageControl1Change(nil); //刷新取图片
end;

procedure Tsetbroker.dxDBEdit10Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=trim(dbedit1.text);     spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with broker do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
//    dbedit3.text:=spy;
end;

procedure Tsetbroker.dxDBCheckEdit3Click(Sender: TObject);
begin
with dxDBCheckEdit3 do
    if checked then caption:='男' else caption:='女';
end;

procedure Tsetbroker.BitBtn1Click(Sender: TObject);
var zcode: string;
begin
{
with customer do
begin
    if (fieldbyname('mate_id').asinteger=0) then raise Exception.Create('请先保存本记录');
end;
}
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 zcode from tb_staff where sta_type_id=1 order by zcode desc';
    open;
    if (recordcount=0) or (fields[0].asstring='') then zcode:='200000' else zcode:=inttostr(fields[0].asinteger+1);
end;
with broker do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('zcode').asstring:= zcode;
end;
end;

initialization
  RegisterClasses([TIcon, TMetafile, TBitmap, TJPEGImage]);

end.
