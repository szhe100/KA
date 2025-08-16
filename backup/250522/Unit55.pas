unit Unit55;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  ImgList, dxdbtrel;

type
  Tqryupdbrokerlog = class(TForm)
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
    qryrec_id: TAutoIncField;
    qrytablename: TStringField;
    qrytype_id: TWordField;
    qryfieldname: TStringField;
    qryold_val: TStringField;
    qrynew_val: TStringField;
    qrycreat_dt: TDateTimeField;
    qrycreat_by: TIntegerField;
    qryupd_type: TStringField;
    qrycreater: TStringField;
    dxDBGrid1fieldname: TdxDBGridMaskColumn;
    dxDBGrid1old_val: TdxDBGridMaskColumn;
    dxDBGrid1new_val: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1upd_type: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    qrysta_id: TAutoIncField;
    ADOQuery1broker: TStringField;
    qrybroker: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryupdbrokerlog: Tqryupdbrokerlog;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tqryupdbrokerlog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
end;

procedure Tqryupdbrokerlog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryupdbrokerlog.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryupdbrokerlog.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryupdbrokerlog.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqryupdbrokerlog.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryupdbrokerlog.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select *,broker=dbo.fn_staff_name(sta_id),upd_type=case type_id when 1 then ''新增'' when 2 then ''修改'' when 3 then ''删除'' end,'; //
    commandtext:=commandtext+' creater=dbo.fn_staff_name(creat_by) from tb_updatelog ';
    commandtext:=commandtext+' where creat_dt>= '''+datetostr(dxdateedit1.date)+''' and creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+' order by creat_dt';
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

end.
