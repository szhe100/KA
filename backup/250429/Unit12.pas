unit Unit12;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, RxGIF, Animate, GIFCtrl,
  RXCtrls, jpeg;

type
  Tsyscover = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  syscover: Tsyscover;

implementation

{$R *.DFM}

procedure Tsyscover.FormCreate(Sender: TObject);
begin
////ԭform.borderstyleΪbsnone,��������ͼƬ�Ŀ�form����ȡbsDialog��������������ر�����
SetWindowLong(Handle,GWL_STYLE,GetWindowLong(Handle,GWL_STYLE) and (not WS_CAPTION));
Height:=ClientHeight;
Width:=ClientWidth;
end;

end.
