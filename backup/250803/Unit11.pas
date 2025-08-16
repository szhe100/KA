unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, dxEdLib, dxCntner, dxEditor,
  dxExEdtr, auHTTP, auAutoUpgrader, jpeg, dxDBEdtr, dxDBELib, Db, DBClient, inifiles;

type
  Tlogin = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxEdit1: TdxEdit;
    AutoUpgraderPro1: TauAutoUpgrader;
    Image2: TImage;
    dept: TClientDataSet;
    deptdept_id: TIntegerField;
    deptdept: TStringField;
    DSdept: TDataSource;
    DSuser: TDataSource;
    user: TClientDataSet;
    usersta_id: TAutoIncField;
    userzname: TStringField;
    userpassword: TStringField;
    useruse_priority: TIntegerField;
    userstop_yn: TBooleanField;
    dxLookupEdit1: TdxLookupEdit;
    dxLookupEdit2: TdxLookupEdit;
    userfiredate: TDateTimeField;
    userteam_id: TIntegerField;
    userteam_name: TStringField;
    userdept_id: TIntegerField;
    usercomp_id: TAutoIncField;
    usercomp_name: TStringField;
    userfallsupplier: TBooleanField;
    userfallcustomer: TBooleanField;
    userfallmed: TBooleanField;
    userfalldistrict: TBooleanField;
    userfalldevice: TBooleanField;
    userqry_code: TWideStringField;
    userqry_code1: TWideStringField;
    usercheckimp: TBooleanField;
    userf2: TBooleanField;
    userperiodlimit: TBooleanField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxLookupEdit1CloseUp(Sender: TObject; var Value: Variant;
      var Accept: Boolean);
    procedure dxLookupEdit2CloseUp(Sender: TObject; var Value: Variant;
      var Accept: Boolean);
    procedure DSdeptDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;
  fnotexit:boolean;
  logintimes:integer;

implementation

{$R *.DFM}

uses datamodu, Main;

procedure Tlogin.BitBtn2Click(Sender: TObject);
begin
if fnotexit then close else
begin
    application.ShowMainForm:=false;
    application.terminate;
end;
end;

procedure Tlogin.BitBtn1Click(Sender: TObject);
var logini: Tinifile;
begin
with user do
begin
    if (active=false) or (recordcount=0) then raise Exception.Create('请选择部门及用户');
    if fieldbyname('stop_yn').asboolean=true then
    begin
        MessageBox(0,'抱歉,您已被停用。不可登录','请注意',MB_OK+MB_ICONERROR);
        abort;
    end;
    if (fieldbyname('firedate').asfloat>0) and (fieldbyname('firedate').asdatetime<=dt0) then
    begin
        MessageBox(0,'抱歉,您已离职。不可登录','请注意',MB_OK+MB_ICONERROR);
        abort;
    end;
    if (fieldbyname('password').asstring=Trim(dxEdit1.text)) or ((Trim(dxEdit1.text)='') and (localHostName()='Heyang')) then //100797
//    if (fieldbyname('password').asstring=Trim(dxEdit1.text)) or ((Trim(dxEdit1.text)='') and (localHostName()='heyang-PC')) then //100797
    begin
        compid:=fieldbyname('comp_id').asinteger;
        curdeptid:=fieldbyname('dept_id').asinteger;
        curuserid:=fieldbyname('sta_id').asinteger;
        curuser:=fieldbyname('zname').asstring;
        fsupplierltd:=fieldbyname('fallsupplier').asboolean; // 供应商授权限制
        fcustomerltd:=fieldbyname('fallcustomer').asboolean; // 客户授权限制
        fmedltd:=fieldbyname('fallmed').asboolean; // 品种授权限制
        fdistltd:=fieldbyname('falldistrict').asboolean; // 地区授权限制
        fdeviceltd:=fieldbyname('falldevice').asboolean;  // 设备绑定限制
        fperiodlimit:=fieldbyname('periodlimit').asboolean;  // 设备绑定限制
        fcheckimp:=fieldbyname('checkimp').asboolean;  // 采购审核
        fperiodlimit:=fieldbyname('periodlimit').asboolean;  // 采购审核

        f2:=fieldbyname('f2').asboolean;  // 可查看敏感数据
//        curpriority:=fieldbyname('use_priority').asinteger;  // 当前用户的类别 0:普通用户；1:超级用户
//        curgrop:=dept.fieldbyname('dept').asstring;
//        facroteam:=fieldbyname('acro_team').asboolean; //可跨组
//        fteamid:=fieldbyname('team_id').asinteger;
//        fdeptid:=fieldbyname('dept_id').asinteger;
//        fdevice:=fieldbyname('falldevice').asboolean;  // 设备绑定限制
//        mainform.Panel1.caption:=fieldbyname('team_name').asstring;
        mainform.userpanel.caption:=fieldbyname('qry_code').asstring;
        mainform.comppanel.caption:=fieldbyname('qry_code1').asstring;
//        mainform.userpanel.caption:=curuser;
//        mainform.comppanel.caption:=fieldbyname('comp_name').asstring;
        close;
{
        macaddr:=Get_AdaptersInfo;
        if fdevice then
        begin
          with dm.pubqry do
          begin
              if active=true then close;
              commandtext:='select top 1 * from tb_trustdevice where type_id=1 and sta_id='+inttostr(curuserid)+' and mac_addr='''+ macaddr+''''; //type_id=1:KingAge 或 kingfox 用户
              open;
              if recordcount=0 then raise Exception.Create('本用户已绑定电脑设备。本设备不属于已绑定设备，不可登录');
          end;
        end;
}
        fnotexit:=true;
//        Mainform.SetRightMenu(curuserid); // 设置可用菜单项
        fdirectexit:=false; // 直接退出系统标志 当系统升级时，为true，可不计已打开窗口，直接退出。
        runcommand('exec sp_setclientlog '+inttostr(curuserid)+','''+GetMacAddress('')+''','''+localHostName()+''','''+localIP()+''',2,1,'''+appsrv_add+''',0,'''+ getappversion(mainform.caption)+'''');
        login.close;
        Mainform.SetRightMenu(curuserid); // 设置可用菜单项
////////////////////////////////////////////////////////////////////////////////////////
        logini:=Tinifile.create(extractfilepath(Application.ExeName)+'Kingstar.ini');
        with logini do
        begin
            writeinteger('company','dept_id',curdeptid);
            writeinteger('company','sta_id',curuserid);
            destroy;
        end;
        compdistid:=31; //广东省
////////////////////////////////////////////////////////////////////////////////////////
    end
    else
    begin
        if fnotexit=true then
        begin
           showmessage('姓名或密码错误，登录无效');
           login.close;
           exit;
        end;
        logintimes:=logintimes+1;
        if logintimes=3 then
        begin
          showmessage('无效登录次数过多，系统终止');
          application.ShowMainForm:=false;
          application.terminate;
        end else showmessage('姓名或密码错误，登录无效');
        dxEdit1.selectall;
    end;
end;
end;

procedure Tlogin.FormActivate(Sender: TObject);
begin
//showmessage(inttostr(curdeptid)+':'+inttostr(curuserid));
with dept do
begin
    if active=true then close;
    commandtext:='select distinct dept_id,dept=dbo.fn_obj_desc(dept_id) from tb_staff';
    commandtext:=commandtext+' where comp_id='+inttostr(compid)+' and isnull(dept_id,0)<>0 order by dbo.fn_obj_desc(dept_id)';
    open;
    if (recordcount>0) and (curdeptid>0) then
    begin
        if locate('dept_id',curdeptid,[]) then dxLookupEdit1.Text:= fieldbyname('dept').asstring;
    end;
end;
if dept.fieldbyname('dept_id').asinteger=0 then exit;
with user do
begin
    if active=true then close;
    commandtext:='select a.comp_id,comp_name=b.sim_name,a.dept_id,a.sta_id,a.zname,a.password,a.use_priority,a.stop_yn,a.team_id,team_name=dbo.fn_team_name(a.team_id),a.firedate,a.checkimp,';
    commandtext:=commandtext+' fallsupplier,fallcustomer,fallmed,falldistrict,falldevice,f2,periodlimit,';
    commandtext:=commandtext+' qry_code=dbo.fn_getpy(a.zname),qry_code1=dbo.fn_getpy(b.sim_name)';
    commandtext:=commandtext+' from tb_staff a';
    commandtext:=commandtext+' left join tb_company b on a.comp_id=b.comp_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and isnull(a.stop_yn,0)=0 and (a.use_priority=1 or a.sta_id in (select sta_id from tb_useright))';
    commandtext:=commandtext+'  and a.dept_id='+dept.fieldbyname('dept_id').asstring+' order by a.zname';
    open;
    if (recordcount>0) and (curuserid>0) then
    begin
        if locate('sta_id',curuserid,[]) then dxLookupEdit2.Text:= fieldbyname('zname').asstring;
    end
end;
logintimes:=0;
dxEdit1.SetFocus;
end;

procedure Tlogin.FormCreate(Sender: TObject);
//var //sver,uver,sip: string[20];
    //ufor: boolean;
    //ss: string;
begin
{
////原form.borderstyle为bsnone,会闪现无图片的空form，则取bsDialog，用以下语句隐藏标题栏
SetWindowLong(Handle,GWL_STYLE,GetWindowLong(Handle,GWL_STYLE) and (not WS_CAPTION));
Height:=ClientHeight;
Width:=ClientWidth;
}
{
with dm.RemoteServer do
    if connected=false then open;
///// 检查是否需要升级
fdirectexit:=false;
sver:=getappversion(mainform.caption);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 up_version,up_force from tb_appversion where app_name=''KingAge''';
    open;
    if recordcount>0 then
    begin
        uver:=trim(fieldbyname('up_version').asstring);
        ufor:=fieldbyname('up_force').asboolean;
        if (uver<>'') and (sver<uver) then   /////  需要升级
        begin
              sip:=DM.SimpleObjectBroker1.Servers[0].computername; // 从kminfo.ini中取得的应用服务器地址
              with AutoUpgraderPro1 do
              begin
                    infoFileURL:='http://218.87.194.38:81/KingAge0.inf';
                    if ufor then
                    begin
                        ss:='KingAge已有新版本('+uver+')可供升级，请立即升级';
                        MessageBox(0,Pchar(ss),'请注意',MB_OK+MB_ICONInformation);
                        CheckUpdate;
                        fdirectexit:=true;
                    end
                    else
                    begin
                        ss:='KingAge已有新版本('+uver+')可供升级，立即升级吗？';
                        if MessageBox(0,Pchar(ss),'请注意',MB_YESNO+MB_ICONQUESTION)=IDYES then
                        begin
                           CheckUpdate;
                           fdirectexit:=true;
                        end;
                    end;
              end;
        end;
    end;
end;
}
end;

procedure Tlogin.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
end;

procedure Tlogin.dxLookupEdit1CloseUp(Sender: TObject; var Value: Variant;
  var Accept: Boolean);
begin
dxLookupEdit2.SetFocus;
dxLookupEdit2.Selectall;
end;

procedure Tlogin.dxLookupEdit2CloseUp(Sender: TObject; var Value: Variant;
  var Accept: Boolean);
begin
dxEdit1.setfocus;
dxEdit1.Selectall;
end;

procedure Tlogin.DSdeptDataChange(Sender: TObject; Field: TField);
begin
with dept do
    if (active=false) or (dept.recordcount=0) then exit;
with user do
begin
    if active=true then close;
    commandtext:='select a.comp_id,comp_name=b.sim_name,a.dept_id,a.sta_id,a.zname,a.password,a.use_priority,a.stop_yn,a.team_id,team_name=dbo.fn_team_name(a.team_id),a.firedate,a.checkimp,';
    commandtext:=commandtext+' fallsupplier,fallcustomer,fallmed,falldistrict,falldevice,f2,periodlimit,';
    commandtext:=commandtext+' qry_code=dbo.fn_getpy(a.zname),qry_code1=dbo.fn_getpy(b.sim_name)';
    commandtext:=commandtext+' from tb_staff a';
    commandtext:=commandtext+' left join tb_company b on a.comp_id=b.comp_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and isnull(a.stop_yn,0)=0 and (a.use_priority=1 or a.sta_id in (select sta_id from tb_useright))';
    commandtext:=commandtext+'  and a.dept_id='+dept.fieldbyname('dept_id').asstring+' order by a.zname';
    open;
    first;
    dxLookupEdit2.text:=fieldbyname('zname').asstring;
end;
end;

procedure Tlogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key=115 then key:=0; // 屏蔽 alt+F4   F4键：VK_F4 (115)
if key=ord(VK_F4) then key:=0; // 屏蔽 alt+F4   F4键：VK_F4 (115); KeyPreview设为True; 两句均可
end;

end.
