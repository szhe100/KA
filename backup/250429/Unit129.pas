unit Unit129;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, dxCntner, DB, DBClient, StdCtrls, dxEdLib, dxDBEdtr,
  dxDBELib, dxEditor, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Buttons;

type
  Tqryclassdocument = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    Shape1: TShape;
    Label4: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    Shape6: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    dxLookupEdit3: TdxLookupEdit;
    ADOQuery1: TADOQuery;
    qrybod_id: TAutoIncField;
    qrybod_cd: TStringField;
    qrycreat_dt: TDateTimeField;
    qrybod_type_id: TIntegerField;
    qrybod_desc: TStringField;
    qrybod_amot: TBCDField;
    qrydtl_id: TAutoIncField;
    qrymed_id: TIntegerField;
    qryLtitle: TStringField;
    qryacc_cd: TStringField;
    qrystock_id: TIntegerField;
    qrybankacc: TStringField;
    qryrela_value: TBCDField;
    qryexpensesup: TStringField;
    qryrela_id: TIntegerField;
    qrycomptitle: TStringField;
    qryzdesc: TStringField;
    qrycost: TBCDField;
    qryprice: TBCDField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrycash_by: TIntegerField;
    qrycasher: TStringField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrycheck_dt: TDateTimeField;
    Shape5: TShape;
    Label7: TLabel;
    dxEdit1: TdxEdit;
    Label8: TLabel;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1acc_id: TIntegerField;
    ADOQuery1debitbal: TBCDField;
    ADOQuery1creditbal: TBCDField;
    qrydebitbal: TBCDField;
    qrycreditbal: TBCDField;
    Edit1: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1comptitle: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1casher: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    dxDBGrid1Ltitle: TdxDBGridColumn;
    dxDBGrid1cost: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1creditbal: TdxDBGridColumn;
    dxDBGrid1debitbal: TdxDBGridColumn;
    dxDBGrid1expensesup: TdxDBGridColumn;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    DShomebank: TDataSource;
    qrycarry_dt: TDateTimeField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxPickEdit1: TdxPickEdit;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1acc_cd: TdxDBGridColumn;
    dxDBGrid1bankacc: TdxDBGridColumn;
    dxDBGrid1zdesc: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassdocument: Tqryclassdocument;

implementation

uses datamodu, Unit90b, Unit125a, Unit124a, Main;

{$R *.DFM}

procedure Tqryclassdocument.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.broker do
with homebank do
    if active=true then close;
end;

procedure Tqryclassdocument.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassdocument.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassdocument.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqryclassdocument.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqryclassdocument.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqryclassdocument.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 10000 a.bod_id,a.bod_cd,creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),';
    commandtext:=commandtext+' a.bod_type_id,a.bod_desc,a.bod_amot,';
    commandtext:=commandtext+' b.dtl_id,b.med_id,Ltitle=dbo.fn_getacctitle0(b.med_id),c.acc_cd,';
    commandtext:=commandtext+' b.stock_id,bankacc=dbo.fn_bank_name(b.stock_id),debitbal,creditbal,';
//    commandtext:=commandtext+' b.stock_id,bankacc=dbo.fn_obj_desc(b.stock_id),debitbal,creditbal,';
    commandtext:=commandtext+' b.rela_value,expensesup=dbo.fn_mate_name(b.rela_value),b.rela_id,comptitle=t.title,';
    commandtext:=commandtext+' b.zdesc,cost,price,a.broker_id,broker=dbo.fn_staff_name(a.broker_id),a.cash_by,casher=dbo.fn_staff_name(a.cash_by),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),a.check_dt';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' 	left join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' 	left join tb_accounts c on b.med_id=c.acc_id';
    commandtext:=commandtext+' 	left join tb_comptree t on b.rela_id=t.rec_id';
    commandtext:=commandtext+' 	left join tb_ledger l on b.med_id=l.acc_id';
    commandtext:=commandtext+' where a.bod_type_id=80 and a.bod_status_id=1 and a.comp_id='+inttostr(compid);  //
    if Trim(dxEdit1.text)='' then
    begin
    //    commandtext:=commandtext+'   and a.check_dt>='''+datetostr(dxdateedit1.date)+''' and a.check_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')'
            else commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    //    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and dbo.fn_accischild(b.med_id,'+inttostr(dxButtonEdit1.tag)+')=1';
        if Trim(dxLookupEdit3.text)<>'' then commandtext:=commandtext+' and b.stock_id='+homebank.fieldbyname('bank_id').asstring;
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and b.rela_id='+inttostr(dxButtonEdit3.tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and b.rela_value='+inttostr(dxButtonEdit4.tag);
    end
    else commandtext:=commandtext+' and a.bod_cd='''+trim(dxEdit1.text)+'''';
    commandtext:=commandtext+'  order by a.creat_dt,b.dtl_id';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('dtl_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryclassdocument.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickaccountall do
    if showmodal= mrOK then
    begin
        if qryacc.fieldbyname('Ltitle').asstring=''
            then dxbuttonedit1.text:=qryacc.fieldbyname('acc_title').asstring
            else dxbuttonedit1.text:=qryacc.fieldbyname('Ltitle').asstring;
        dxbuttonedit1.tag :=qryacc.fieldbyname('acc_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
{
with pickaccounts do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= qryacc.FieldByName('acc_cd').asstring+' '+pickaccounts.qryacc.FieldByName('acc_title').asstring;
        dxbuttonedit1.tag := qryacc.fieldbyname('acc_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;
}
end;

procedure Tqryclassdocument.FormActivate(Sender: TObject);
begin
with homebank do
    if active=false then
    begin
	    commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
    	open;
	end;
end;

procedure Tqryclassdocument.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcompobjall do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= qry.FieldByName('comptitle').asstring;
        dxbuttonedit3.tag := qry.FieldByName('rec_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tqryclassdocument.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickexpensesup do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;

procedure Tqryclassdocument.dxDBGrid1DblClick(Sender: TObject);
begin
fbodid:= qry.fieldbyname('bod_id').asinteger;
if fbodid=0 then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_id,bod_type_id from tb_bill where bod_id='+inttostr(fbodid);
    open;
    fbodtypeid:=fieldbyname('bod_type_id').asinteger;
end;
if (fbodtypeid=80) then (Sender as TComponent).Tag:=272; //制作会计凭证/制单
MainForm.View(Sender);
end;

procedure Tqryclassdocument.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit1.selectall;
    dxEdit1.setfocus;
end;
end;

end.
