unit Unit1b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, DB, DBClient, ComCtrls, ToolWin, dxDBTL, ExtCtrls,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, mycds, ADODB, Buttons, Comobj;

type
  Tsetchannel = class(TForm)
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
    PageControl1: TPageControl;
    Edit1: TEdit;
    TabSheet5: TTabSheet;
    dxDBGrid7: TdxDBGrid;
    dxDBGrid7obj_code: TdxDBGridColumn;
    dxDBGrid7zdesc: TdxDBGridColumn;
    Label3: TLabel;
    Label7: TLabel;
    dxDBGrid8: TdxDBGrid;
    dxDBGrid8obj_code: TdxDBGridColumn;
    dxDBGrid8zdesc: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid7Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setchannel: Tsetchannel;
  settle_way,settle_day: integer;

implementation

uses datamodu, Unit28a;

{$R *.DFM}

procedure Tsetchannel.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;
end;

procedure Tsetchannel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetchannel.dxDBGrid7Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetchannel.FormActivate(Sender: TObject);
begin
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11 and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12 and a.comp_id='+inttostr(compid);
        open;
    end;
end;

end.
