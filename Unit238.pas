unit Unit238;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls, Math, Buttons,
//  Wwdbigrd, Wwdbgrid, Wwdatsrc, Wwquery, wwSpeedButton, wwDBNavigator,
//  wwclearpanel, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Wwkeycb,
  auHTTP, auAutoUpgrader, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBClient;

type
  Tsetsysupdate = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    AutoUpgraderPro1: TauAutoUpgrader;
    Image1: TImage;
    dxDBMemo1: TdxDBMemo;
    qrymessage: TClientDataSet;
    DSmessage: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    qrymessagerec_id: TAutoIncField;
    qrymessagetype_id: TIntegerField;
    qrymessagemsg_title: TStringField;
    qrymessagemsg_content: TMemoField;
    qrymessagestatus_id: TIntegerField;
    qrymessagecreat_dt: TDateTimeField;
    qrymessagecreat_by: TIntegerField;
    qrymessageCtype: TStringField;
    qrymessageCscape: TStringField;
    qrymessageCstatus: TStringField;
    qrymessageLcreat_by: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setsysupdate: Tsetsysupdate;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetsysupdate.BitBtn1Click(Sender: TObject);
var sip: string[20];
begin
fdirectexit:=true; // 直接退出系统标志 当系统升级时，为true，可不计已打开窗口，直接退出。
sip:=DM.SimpleObjectBroker1.Servers[0].computername; // 从kminfo.ini中取得的应用服务器地址
with AutoUpgraderPro1 do
begin
    infoFileURL:='http://vankin.gdyph.com:88/kingage.inf';
    CheckUpdate;
end;
end;

procedure Tsetsysupdate.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tsetsysupdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetsysupdate.FormActivate(Sender: TObject);
begin
{
with qrymessage do
begin
    if active=true then close;
    commandtext:='select top 1 * ';  //,creater=dbo.fn_staff_name(creat_by)
    commandtext:=commandtext+' from tb_message where type_id=3 order by rec_id desc';
    open;
end;
}
end;

procedure Tsetsysupdate.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//with qrymessage do if active=true then close;
end;

end.
