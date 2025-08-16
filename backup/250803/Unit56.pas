unit Unit56;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  dxExEdtr, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdBaseComponent, IdMessage, Menus, ADODB, dxCntner, DBClient,
  dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, dxDBCtrl,
  dxDBGrid, dxTL, dxDBTLCl, dxGrClms, Comobj, ActiveX;

type
  TQrybrokerexg1 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit1: TdxButtonEdit;
    RadioGroup1: TRadioGroup;
    qrycarry_dt: TDateTimeField;
    qrybod_type_id: TIntegerField;
    qrybod_type: TStringField;
    qrybod_cd: TStringField;
    qrybusi_type: TStringField;
    qrybod_desc: TStringField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qryamot: TBCDField;
    qrypay: TBCDField;
    qryrec: TBCDField;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1pay: TdxDBGridMaskColumn;
    dxDBGrid1rec: TdxDBGridMaskColumn;
    dxDBGrid1due: TdxDBGridMaskColumn;
    qrycreater: TStringField;
    qrycreat_dt: TDateTimeField;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    SpeedButton1: TSpeedButton;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    ADOQuery1bod_id: TStringField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1amot: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1bal: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qty: TBCDField;
    qrymate_name: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqty: TBCDField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    qryCprice: TFloatField;
    dxDBGrid1Cprice: TdxDBGridColumn;
    qrybod_id: TIntegerField;
    qrydue: TBCDField;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1bod_type: TdxDBGridColumn;
    Edit1: TEdit;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    Shape1: TShape;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDateEdit1DblClick(Sender: TObject);
    procedure dxDateEdit2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
{ 定义到datamodu中，可供其他form使用
  Function SendMSN(Topic: string;  //主题
                   Content: string; //内容
                   MailAddr: string; //收件人地址
                   CCMailAddr: string; //抄送地址
                   AttachFiles: string; //附件
                   SmtpMailName: string;//发件人
                   SmtpServer: string;   //发件服务器
                   SmtpUser: string;     //发件帐户
                   SmtpPass: string;     //发件密码
                   SmtpPort: string = '25';     //端口
                   TestMail: Boolean =true):Boolean;Stdcall; external 'SendDLL.dll';
}
var
  Qrybrokerexg1: TQrybrokerexg1;
  bal : real;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure TQrybrokerexg1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure TQrybrokerexg1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQrybrokerexg1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure TQrybrokerexg1.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure TQrybrokerexg1.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure TQrybrokerexg1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure TQrybrokerexg1.SpeedButton5Click(Sender: TObject);
begin
if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择业务员');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active then close;
    commandtext:='sp_qrybrokerexg1 '+inttostr(compid)+','+inttostr(dxButtonEdit1.tag)+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+''','+inttostr(RadioGroup1.itemindex)+','+inttostr(curuserid);
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        disablecontrols;
        //open;
        last;
        bal:=fieldbyname('due').asfloat;
//        label9.caption:= formatfloat('###,###,##0.00;; ',bal);
        first;
        enablecontrols;
    finally
        setprogress(0);
    end;
end;
end;

procedure TQrybrokerexg1.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('sta_id').asinteger;
//        SpeedButton5Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure TQrybrokerexg1.N3Click(Sender: TObject);
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

procedure TQrybrokerexg1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure TQrybrokerexg1.N2Click(Sender: TObject);
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

procedure TQrybrokerexg1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure TQrybrokerexg1.SpeedButton1Click(Sender: TObject);
var Guid:TGUID;
    st,ss,sm: string;
begin
with qry do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无权限发电子邮件');
    if active=true then close;
    commandtext:='select top 1 email from tb_staff where sta_id='+inttostr(dxButtonEdit1.tag);
    open;
    if (recordcount=0) or (fieldbyname('email').asstring='') or (pos('@',fieldbyname('email').asstring)=0)
        then raise Exception.Create('无法取得该业务员电子邮箱或邮箱无效');
    sm:=fieldbyname('email').asstring;
end;
//sm:='szhe100@163.com';
CoCreateGuid(Guid); //需uses ComObj,ActiveX;
ss:=GuidToString(Guid);
Delete(ss,Pos('{', ss),1);
Delete(ss,Pos('}', ss),1);
//st:=extractfilepath(Application.ExeName)+'.xls';
st:=extractfilepath(Application.ExeName)+ss+'.xls';
dm.Save2(st,dxDBGrid1.SaveToXLS);
//g1011@gdyph.com,密码 ：y1234567
//smtp:mail.gdyph.com
try
    IdSMTP1.Username:='extrady'; //edit1.Text;//登陆帐号
    IdSMTP1.Password:='123456*'; //Edit2.Text;//登陆密码。
    IdSMTP1.Host:='smtp.163.com'; //edit3.Text; //SMTP地址。
    IdSMTP1.Port:=25; //strtoint(edit4.Text);//端口号必须转换为整形。

    IdSMTP1.Connect;
    if(IdSMTP1.AuthSchemesSupported.IndexOf('LOGIN')<>-1)then
    begin
        IdSMTP1.AuthenticationType:=atLogin;
    end
    else
    begin
        IdSMTP1.AuthenticationType:=atNone;
    end;
//    IdSMTP1.Connect; 该语句放在此处第一次发送失败
except
    MessageBox(0,'连接失败,请重试','请注意',MB_OK+MB_ICONERROR);
    exit;
end;

IdMessage1.Clear;//清楚上次文本内容.
IdMessage1.Subject:=st; //ss+'.xls'; //edit5.Text;//发送标题.
//IdMessage1.Body.Assign(Memo1.Lines);//发送内容
IdMessage1.From.Address:='extrady@163.com'; //edit6.Text;// 发送者地址.
IdMessage1.Recipients.EMailAddresses:=sm; //'szhe100@163.com'; //edit7.Text;// 收件人地址
TIdAttachment.Create(IdMessage1.MessageParts, st);
//st:=extractfilepath(Application.ExeName)+'2.doc';
//TIdAttachment.Create(IdMessage1.MessageParts, st);
try
    if IdSMTP1.Authenticate then
    begin
        IdSMTP1.Send(idMessage1);
        MessageBox(0,pchar(st+':邮件已成功发送给'+sm),'请注意',MB_OK+MB_ICONInformation);
//        MessageBox(0,pchar(ss+'.xls:发送成功'),'请注意',MB_OK+MB_ICONInformation);
    end;
except
    MessageBox(0,'连接失败,请重试','请注意',MB_OK+MB_ICONERROR);
end;
IdSMTP1.Disconnect;
end;

procedure TQrybrokerexg1.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    if fieldbyname('qty').asfloat=0 then fieldbyname('cprice').asfloat:=0
        else fieldbyname('cprice').asfloat:=fieldbyname('amot').asfloat/fieldbyname('qty').asfloat;
end;
end;

procedure TQrybrokerexg1.SpeedButton3Click(Sender: TObject);
var Guid:TGUID;
    st,ss,sm: string;
begin
with qry do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 f1 from tb_staff where sta_id='+inttostr(curuserid);
    open;
    if (recordcount=0) or (fields[0].asboolean=False) then raise Exception.Create('无权限发电子邮件');
    if active=true then close;
    commandtext:='select top 1 email from tb_staff where sta_id='+inttostr(dxButtonEdit1.tag);
    open;
    if (recordcount=0) or (fieldbyname('email').asstring='') or (pos('@',fieldbyname('email').asstring)=0)
        then raise Exception.Create('无法取得该业务员电子邮箱或邮箱无效');
    sm:=fieldbyname('email').asstring;
end;

//sm:='szhe100@163.com';   //临时接收邮箱
if MessageBox(0,pchar('确定将本次查询数据发邮件给:'+dxButtonEdit1.text),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
CoCreateGuid(Guid); //需uses ComObj,ActiveX;
ss:=GuidToString(Guid);
Delete(ss,Pos('{', ss),1);
Delete(ss,Pos('}', ss),1);
st:=extractfilepath(Application.ExeName)+ss+'.xls';
dm.Save2(st,dxDBGrid1.SaveToXLS);
try
{
  Function SendMSN(Topic: string;  //主题
                   Content: string; //内容
                   MailAddr: string; //收件人地址
                   CCMailAddr: string; //抄送地址
                   AttachFiles: string; //附件
                   SmtpMailName: string;//发件人
                   SmtpServer: string;   //发件服务器
                   SmtpUser: string;     //发件帐户
                   SmtpPass: string;     //发件密码
                   SmtpPort: string = '25';     //端口
                   TestMail: Boolean =true):Boolean;Stdcall; external 'SendDLL.dll';
}
    SendMSN(ss,'',sm,'',st,'extrady@163.com','SMTP.163.com','extrady','123456*','25');
    //ss:文件名; st:文件路径
except
    MessageBox(0,'连接失败,请重试','请注意',MB_OK+MB_ICONERROR);
end;
end;

procedure TQrybrokerexg1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (AColumn = dxDBGrid1bod_type) then    //推广费,收款,付款,付费用,期初数
if (AColumn = dxDBGrid1bod_type) or (AColumn = dxDBGrid1due) then  //dxDBGrid1due
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '期初数') then
    begin
        AColor := clPurple; //clblack;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '推广费') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '应付记账') then  //????
    begin
        AColor := $0044A2FF; //clPurple; //$00EE00EE;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '收款') then
    begin
        AColor := $00D6D5FF;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付款') then
    begin
        AColor := $00FFFED7;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付费用') then
    begin
        AColor := $0094FA96; //$00D7FDD8;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure TQrybrokerexg1.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1due' then
begin
    if bal=0 then atext:='' else atext:=formatfloat('###,###,##0.00;; ',bal);
end;
end;

procedure TQrybrokerexg1.dxDateEdit1DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit1.date,year,month,day);
dxDateEdit1.date:=encodedate(year,1,1);
end;

procedure TQrybrokerexg1.dxDateEdit2DblClick(Sender: TObject);
var Year, Month, Day: Word;
begin
//showmessage(datetostr(dxDateEdit1.date));
decodedate(dxDateEdit2.date,year,month,day);
dxDateEdit2.date:=encodedate(year,12,31);
end;

end.
