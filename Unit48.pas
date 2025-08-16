unit Unit48;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib, Buttons;

type
  Tsetpassword = class(TForm)
    dxEdit2: TdxEdit;
    dxEdit1: TdxEdit;
    Shape1: TShape;
    Label10: TLabel;
    Label11: TLabel;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    dxEdit3: TdxEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setpassword: Tsetpassword;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetpassword.BitBtn2Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='if (select isnull(password,'''') from tb_staff where sta_id='+inttostr(curuserid)+')<>'''+dxedit1.text+''' select 0 else select 1';
    open;
    if fields[0].asinteger=0
        then raise Exception.Create('原密码错误，修改密码失败');
end;

if (dxedit2.text='') or (dxedit3.text='')
    then raise Exception.Create('新密码或验证密码不可为空，修改密码失败');

if dxedit2.text<>dxedit3.text
    then raise Exception.Create('新密码与验证密码不符，修改密码失败');

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_staff set password='''+dxedit2.text+''' where sta_id='+inttostr(curuserid);
    execute;
    close;
end;
MessageBox(0,pchar('已成功修改密码'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetpassword.BitBtn3Click(Sender: TObject);
begin
close;
end;

end.
