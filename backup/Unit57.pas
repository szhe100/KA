unit Unit57;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, Buttons, StdCtrls;

type
  Tsetreplaceleader = class(TForm)
    GroupBox1: TGroupBox;
    Label7: TLabel;
    dxButtonEdit5: TdxButtonEdit;
    Label8: TLabel;
    dxButtonEdit6: TdxButtonEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreplaceleader: Tsetreplaceleader;

implementation

uses datamodu, Unit28a; //, Unit7, Unit16, Unit28, Unit28a;

{$R *.DFM}

procedure Tsetreplaceleader.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreplaceleader.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;
end;

procedure Tsetreplaceleader.dxButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit6.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit6.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit6.text:='';
        dxbuttonedit6.tag:=0;
    end;
end;
end;

procedure Tsetreplaceleader.SpeedButton1Click(Sender: TObject);
begin
if Trim(dxButtonEdit5.text)='' then raise Exception.Create('请选择原业务主管');
if Trim(dxButtonEdit6.text)='' then raise Exception.Create('请选择新业务主管');
if MessageBox(0,pchar('确定将原业务主管'+dxButtonEdit5.text+'更换为'+dxButtonEdit6.text),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_brokermed set lead_id='+inttostr(dxButtonEdit6.tag)+' where lead_id='+inttostr(dxButtonEdit5.tag);
    try
        setprogress(1);
        execute;
        MessageBox(0,pchar('已成功更换业务主管'),'请注意',MB_OK+MB_ICONInformation);
    finally
        setprogress(0);
    end;
end;
end;

end.
