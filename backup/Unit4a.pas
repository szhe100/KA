unit Unit4a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ADODB, ImgList, dxEdLib, wwSpeedButton,mycds, Jpeg,
  wwDBNavigator, ExtCtrls, wwclearpanel, dxDBELib, StdCtrls, dxdbtrel,
  DBCtrls, dxDBTL, dxCntner, dxEditor, Mask, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj;

type
  Tsetbroker1 = class(TForm)
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
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    Label2: TLabel;
    dxDBGrid1zname: TdxDBGridMaskColumn;
    dxDBGrid1zcode: TdxDBGridMaskColumn;
    dxDBGrid1personalID: TdxDBGridMaskColumn;
    dxDBGrid1birthdate: TdxDBGridDateColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBCheckBox1: TDBCheckBox;
    dxDBGrid1sex: TdxDBGridColumn;
    DSbroker: TDataSource;
    dxDBDateEdit1: TdxDBDateEdit;
    Label3: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label16: TLabel;
    dxEdit1: TdxEdit;
    Label18: TLabel;
    dxDBGrid1depo_acco: TdxDBGridColumn;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1qry_code: TdxDBGridColumn;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1zdesc: TdxDBTreeListMaskColumn;
    Label20: TLabel;
    DBText4: TDBText;
    ImageList1: TImageList;
    ADOQuery1: TADOQuery;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label8: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBGrid1receiver: TdxDBGridColumn;
    dxDBGrid1sta_id: TdxDBGridColumn;
    dxDBGrid1bank_name: TdxDBGridColumn;
    Label13: TLabel;
    Label21: TLabel;
    DBText10: TDBText;
    Label22: TLabel;
    DBText11: TDBText;
    Label23: TLabel;
    DBText1: TDBText;
    Label24: TLabel;
    DBText2: TDBText;
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
    dxDBMaskEdit1: TdxDBMaskEdit;
    Edit1: TEdit;
    Label26: TLabel;
    dxDBMaskEdit2: TdxDBMaskEdit;
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
    Label27: TLabel;
    Label28: TLabel;
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
    procedure DBCheckBox1Click(Sender: TObject);
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
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbroker1: Tsetbroker1;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetbroker1.FormActivate(Sender: TObject);
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
}
end;

procedure Tsetbroker1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with broker do
    if active then close;
//with dm.team do
//    if active=true then close;
with dm.staff do
    if active then close;
with broker do
    if active then close;
end;

procedure Tsetbroker1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbroker1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
PageControl1Change(nil);
end;

procedure Tsetbroker1.DBCheckBox1Click(Sender: TObject);
begin
with dbcheckbox1 do
    if checked then caption:='男' else caption:='女';
end;

procedure Tsetbroker1.DSbrokerDataChange(Sender: TObject; Field: TField);
begin
with broker do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
if (broker.active=false) or (pagecontrol1.activepage=tabsheet1) then exit;  // 两句均可
with dbcheckbox1 do
    if checked then caption:='男' else caption:='女';
end;

procedure Tsetbroker1.PageControl1Change(Sender: TObject);
begin
DSbrokerDataChange(nil,nil);
if PageControl1.ActivePage=TabSheet3 then
begin
    with broker do
        if (active=false) or (recordcount=0) then
        begin
            if qryimage.active=true then qryimage.close;
            exit;
        end;
    if (broker.fieldbyname('sta_id').asstring<>'') and (qryimage.tag<>broker.fieldbyname('sta_id').asinteger) then
    begin
        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='if not exists (select 1 from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring+')';  //type_id=4:医药代表图片
            commandtext:=commandtext+' insert into tb_image (type_id,id) values (4,'+broker.fieldbyname('sta_id').asstring+')';
            execute;
        end;
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select * from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
            open;
            qryimage.tag:=broker.fieldbyname('sta_id').asinteger;
        end;
        with imagecreater do
        begin
            if active=true then close;
            commandtext:='select top 1 rec_id,id,creat_by,creater=dbo.fn_staff_name(creat_by),creat_dt,creat_dt1,creat_dt2,creat_dt3,creat_dt4,creat_dt5';
            commandtext:=commandtext+' from tb_image where type_id=4 and id='+broker.fieldbyname('sta_id').asstring;
            open;
        end;
    end;
end;
end;

procedure Tsetbroker1.DBEdit1Change(Sender: TObject);
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

procedure Tsetbroker1.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with broker do
begin
    if active=true then
    begin
        mi:=fieldbyname('sta_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,d.mate_name,cdistrict=dbo.fn_getdistrict(a.district),creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_staff a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by =b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by =c.sta_id';
    commandtext:=commandtext+' left join tb_busimate d on a.mate_id =d.mate_id';
    commandtext:=commandtext+' where a.sta_type_id=1 and a.comp_id='+inttostr(compid);
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (a.qry_code like ''%'+trim(dxEdit1.text)+'%'' or a.zname like ''%'+trim(dxEdit1.text)+'%'')';
    if fdistltd then commandtext:=commandtext+'  and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1';
    try
        setprogress(1);
        open;
        if mi>0 then locate('sta_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbroker1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetbroker1.dxEdit1Click(Sender: TObject);
begin
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;

procedure Tsetbroker1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetbroker1.dxDBTreeList1DblClick(Sender: TObject);
begin
with broker do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    fieldbyname('district').asinteger:=dm.district.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetbroker1.dxDBTreeList1Enter(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetbroker1.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 2 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tsetbroker1.brokerAfterPost(DataSet: TDataSet);
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
            if active=true then close;
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
                if active=true then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''姓名'','''+a[1,1]+''','''+a[1,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[2,2]<>'' then
            begin
                if active=true then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''收款人'','''+a[2,1]+''','''+a[2,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[3,2]<>'' then
            begin
                if active=true then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''开户银行'','''+a[3,1]+''','''+a[3,2]+''','+inttostr(curuserid);
                execute;
            end;
            if a[4,2]<>'' then
            begin
                if active=true then close;
                commandtext:='exec sp_updatelog 2,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'',''银行账号'','''+a[4,1]+''','''+a[4,2]+''','+inttostr(curuserid);
                execute;
            end;
        end;
    end;
finally
    FreeAndNil(TempDataSet);
end;
with broker do
    if ChangeCount>0 then myupdaterefresh(broker,'tb_staff','sta_id','');
end;

procedure Tsetbroker1.brokerBeforePost(DataSet: TDataSet);
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

procedure Tsetbroker1.brokerAfterDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='exec sp_updatelog 3,'+broker.fieldbyname('sta_id').asstring+',''设置医药代表'','''','''+broker.fieldbyname('zname').asstring+''','''','+inttostr(curuserid);
    execute;
end;
with broker do
    if ChangeCount>0 then myupdaterefresh(broker,'tb_staff','sta_id','');
end;

procedure Tsetbroker1.wwDBNavigator1InsertClick(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then PageControl1.ActivePage:=TabSheet2;
end;

procedure Tsetbroker1.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetbroker1.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetbroker1.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetbroker1.dxDBGraphicEdit4AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass4').asstring:=''
    else qryimage.fieldbyname('graphclass4').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetbroker1.dxDBGraphicEdit5AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass5').asstring:=''
    else qryimage.fieldbyname('graphclass5').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetbroker1.dxDBGraphicEdit1Change(Sender: TObject);
begin
with broker do if not (state=dsedit) then edit;
end;

procedure Tsetbroker1.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetbroker1.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetbroker1.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetbroker1.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetbroker1.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetbroker1.qryimageAfterPost(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
end;

procedure Tsetbroker1.wwDBNavigator1PostClick(Sender: TObject);
begin
if qryimage.state=dsedit then qryimage.post;
end;

procedure Tsetbroker1.dxDBGraphicEdit1KeyDown(Sender: TObject;
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

initialization
  RegisterClasses([TIcon, TMetafile, TBitmap, TJPEGImage]);

end.
