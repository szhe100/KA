unit Unit120;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport23 = class(TForm)
    DSdrawlog: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
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
    ImageList1: TImageList;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1district: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1ord: TLargeintField;
    ADOQuery1profit: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1rate: TBCDField;
    Edit1: TEdit;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxPickEdit1: TdxPickEdit;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    qrybod_id: TIntegerField;
    qrybod_cd: TStringField;
    qrycreat_dt: TDateTimeField;
    qrycheck_dt: TDateTimeField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    dxDBGrid1bat_cd1: TdxDBGridColumn;
    dxDBGrid1bat_cd2: TdxDBGridColumn;
    dxDBGrid1bat_cd3: TdxDBGridColumn;
    dxDBGrid1zdesc1: TdxDBGridColumn;
    dxDBGrid1zdesc2: TdxDBGridColumn;
    dxDBGrid1zdesc3: TdxDBGridColumn;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    qrybat_cd4: TStringField;
    qrybat_cd5: TStringField;
    qryzdesc4: TStringField;
    qryzdesc5: TStringField;
    dxDBGrid1bat_cd4: TdxDBGridColumn;
    dxDBGrid1bat_cd5: TdxDBGridColumn;
    dxDBGrid1zdesc4: TdxDBGridColumn;
    dxDBGrid1zdesc5: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport23: Tqryreport23;
  a0,a1,a2,a3,a4,a5,a6: real;

implementation

uses datamodu, Unit16c;

{$R *.DFM}

procedure Tqryreport23.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
end;

procedure Tqryreport23.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport23.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport23.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport23.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport23.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active=true then
    begin
    	mi:=fieldbyname('bod_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:=' select a.bod_id,a.bod_cd,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
	commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),';
	commandtext:=commandtext+' check_dt=cast(convert(char(10),a.check_dt,20) as datetime),';
    commandtext:=commandtext+' a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.agent_id,agent=dbo.fn_mate_name(a.agent_id),';
    commandtext:=commandtext+' bat_cd1=b.bat_cd,bat_cd2=c.bat_cd,bat_cd3=d.bat_cd,bat_cd4=e.bat_cd,bat_cd5=f.bat_cd,zdesc1=b.zdesc,zdesc2=c.zdesc,zdesc3=d.zdesc,zdesc4=e.zdesc,zdesc5=f.zdesc';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_bill_dtl b on a.bod_id=b.bod_id and b.med_id=1';
    commandtext:=commandtext+' left join tb_bill_dtl c on a.bod_id=c.bod_id and c.med_id=2';
    commandtext:=commandtext+' left join tb_bill_dtl d on a.bod_id=d.bod_id and d.med_id=3';
    commandtext:=commandtext+' left join tb_bill_dtl e on a.bod_id=e.bod_id and e.med_id=4';
    commandtext:=commandtext+' left join tb_bill_dtl f on a.bod_id=f.bod_id and f.med_id=5';
    commandtext:=commandtext+' where a.bod_type_id=14 and a.bod_status_id=1';
    if dxPickEdit1.itemindex=0
        then commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+'  and a.check_dt>= '''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit4.tag);
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('bod_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport23.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqryreport23.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

end.
