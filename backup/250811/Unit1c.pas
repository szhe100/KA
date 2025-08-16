unit Unit1c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, DB, DBClient, ComCtrls, ToolWin, dxDBTL, ExtCtrls,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, mycds, ADODB, Buttons, Comobj;

type
  Tsetcustgroup = class(TForm)
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
  setcustgroup: Tsetcustgroup;
  settle_way,settle_day: integer;

implementation

uses datamodu, Unit28a;

{$R *.DFM}

procedure Tsetcustgroup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with dm.cust_group do if active then close;
end;

procedure Tsetcustgroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcustgroup.dxDBGrid7Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetcustgroup.FormActivate(Sender: TObject);
begin
with dm.cust_group do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=13';
        open;
    end;
end;

end.
