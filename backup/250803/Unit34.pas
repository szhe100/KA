unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  dxdbtrel, ImgList;

type
  Tqrybrokerbal = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1bal: TBCDField;
    qrysta_id: TIntegerField;
    qrybroker: TStringField;
    qrybal: TBCDField;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1bal: TdxDBGridMaskColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape1: TShape;
    ImageList1: TImageList;
    qrydistrict: TIntegerField;
    qrycdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    Label13: TLabel;
    Edit1: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrybrokerbal: Tqrybrokerbal;

implementation

uses datamodu;

{$R *.DFM}

procedure Tqrybrokerbal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
end;

procedure Tqrybrokerbal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrybrokerbal.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqrybrokerbal.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
end;

procedure Tqrybrokerbal.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqrybrokerbal.SpeedButton5Click(Sender: TObject);
begin
with qry do
begin
    if active=true then close;
    if dxdateedit1.text=''
        then commandtext:='exec sp_brokerbal '+inttostr(compid)+',null,'
        else commandtext:='exec sp_brokerbal '+inttostr(compid)+','''+datetostr(dxdateedit1.date)+''',';
    if Trim(dxLookupTreeView1.text)=''
        then commandtext:=commandtext+'0'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring;
    if dxCheckEdit1.Checked then commandtext:=commandtext+',1' else commandtext:=commandtext+',0';
    commandtext:=commandtext+','+inttostr(curuserid);
edit1.Text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrybrokerbal.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

end.
