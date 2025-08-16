unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ADODB, IniFiles, Db;

type
  TMainForm = class(TForm)
    AppIcon: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    QueryCount: TLabel;
    ClientCount: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pubcom: TADOQuery;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FQueryCount: Integer;
    FClientCount: Integer;
  public
    { Public declarations }
    procedure UpdateClientCount(Incr: Integer);
    procedure IncQueryCount;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.UpdateClientCount(Incr: Integer);
begin
  FClientCount := FClientCount + Incr;
  ClientCount.Caption := IntToStr(FClientCount);
end;

procedure TMainForm.IncQueryCount;
begin
  Inc(FQueryCount);
  QueryCount.Caption := IntToStr(FQueryCount);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var Fname,str1,str2: string;
    logini: Tinifile;
begin

    Fname:=extractfilepath(Application.ExeName)+'Appinfo.ini';
    if not FileExists(Fname) then
    begin
        application.messagebox('应用服务器缺少AppInfo.INI文件，系统终止','注意',mb_ok+MB_ICONSTOP);
        halt;
    end;
    logini:=Tinifile.create(fname);
    str1:=trim(logini.readstring('login','host',''));
    str2:=trim(logini.readstring('login','database',''));
    logini.destroy;
    pubcom.ConnectionString:='Provider=SQLOLEDB.1;Password=easyway190304;Persist Security Info=False;User ID=easyway;Initial Catalog='+str2+';Data Source='+str1;
edit1.text:=pubcom.ConnectionString;    
//    pubcom.ConnectionString:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=easyway;Initial Catalog='+str2+';Data Source='+str1;

//    pubcom.ConnectionString:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog='+str2+';Data Source='+str1;
//    pubcom.ConnectionString:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=KingageYPH;Data Source='+str1;
//showmessage(pubcom.ConnectionString);
//                              Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=KingageYPH;Data Source=localhost
    with pubcom do
    begin
        if active=true then close;
        sql.add('select top 1 1 from tb_object');
        try
            open;
        except
            application.messagebox('应用服务器无法连接数据库，请检查AppInfo.ini文件或网络','注意',mb_ok+MB_ICONSTOP);
            halt;
        end;
        close;
    end;
    label5.caption:=extractfilepath(Application.ExeName)+'KAserver2.exe';
    label5.hint:=extractfilepath(Application.ExeName)+'KAserver2.exe';
end;

end.
