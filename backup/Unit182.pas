unit Unit182;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, dxCntner, DB, DBClient, dxEditor, dxEdLib, dxDBCtrl,
  dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, StdCtrls, Buttons;

type
  Tqryclassexpense = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
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
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    ADOQuery1: TADOQuery;
    ADOQuery1bod_id: TAutoIncField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1check_dt: TDateTimeField;
    ADOQuery1zdesc: TStringField;
    ADOQuery1dtl_id: TAutoIncField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1acc_cd: TStringField;
    ADOQuery1acc_title: TStringField;
    ADOQuery1Ltitle: TStringField;
    ADOQuery1ptitle: TStringField;
    ADOQuery1comptitle: TStringField;
    ADOQuery1expensesup: TStringField;
    ADOQuery1cost: TBCDField;
    ADOQuery1price: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1checker: TStringField;
    qrybod_id: TAutoIncField;
    qrybod_cd: TStringField;
    qryzdesc: TStringField;
    qrydtl_id: TAutoIncField;
    qrymed_id: TIntegerField;
    qryacc_cd: TStringField;
    qryacc_title: TStringField;
    qryLtitle: TStringField;
    qryptitle: TStringField;
    qrycomptitle: TStringField;
    qryexpensesup: TStringField;
    qrycost: TBCDField;
    qryprice: TBCDField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1zdesc: TdxDBGridMaskColumn;
    dxDBGrid1acc_cd: TdxDBGridMaskColumn;
    dxDBGrid1acc_title: TdxDBGridMaskColumn;
    dxDBGrid1ptitle: TdxDBGridMaskColumn;
    dxDBGrid1comptitle: TdxDBGridMaskColumn;
    dxDBGrid1expensesup: TdxDBGridMaskColumn;
    dxDBGrid1cost: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    Edit1: TEdit;
    dxPickEdit1: TdxPickEdit;
    qrycarry_dt: TDateTimeField;
    qrycreat_dt: TDateTimeField;
    qrycheck_dt: TDateTimeField;
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
  qryclassexpense: Tqryclassexpense;

implementation

uses datamodu;

{$R *.DFM}

procedure Tqryclassexpense.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.broker do
//    if active=true then close;
end;

procedure Tqryclassexpense.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassexpense.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassexpense.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqryclassexpense.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqryclassexpense.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqryclassexpense.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('ÈÕÆÚÉèÖÃ´íÎó');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 10000 a.bod_id,a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),check_dt=cast(convert(char(10),a.check_dt,20) as datetime),carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),';
//    commandtext:='select top 10000 a.bod_id,a.bod_cd,check_dt=cast(convert(char(10),a.check_dt,20) as datetime),';
    commandtext:=commandtext+' zdesc=rtrim(isnull(a.bod_desc,'' ''))+'' ''+isnull(b.zdesc,'' ''),';
    commandtext:=commandtext+' b.dtl_id,b.med_id,c.acc_cd,acc_title,Ltitle=dbo.fn_getacctitle0(b.med_id),';
    commandtext:=commandtext+' ptitle=dbo.fn_getacctitle0(c.parent_id),comptitle=dbo.fn_comptitle0(b.rela_id),expensesup=m.mate_name,'; //t.title
    commandtext:=commandtext+' b.cost,b.price,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by) ';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_accounts c on b.med_id=c.acc_id';
    commandtext:=commandtext+' left join tb_busimate m on b.rela_value=m.mate_id';     //,tb_comptree t
    commandtext:=commandtext+' where a.bod_type_id=80 and a.bod_status_id=1';
//    commandtext:=commandtext+'  and ';  //and b.rela_id*=t.rec_id
    commandtext:=commandtext+'  and a.comp_id='+inttostr(compid);
//    commandtext:=commandtext+'  and a.check_dt>='''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if dxPickEdit1.itemindex=0
        then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
        else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and b.med_id in (select acc_id from tb_accounts where comp_id='+inttostr(compid)+' and (dbo.fn_accischild(acc_id,250)=1 or dbo.fn_accischild(acc_id,251)=1 or dbo.fn_accischild(acc_id,252)=1))';
    commandtext:=commandtext+'  order by a.check_dt,a.bod_id';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

end.
