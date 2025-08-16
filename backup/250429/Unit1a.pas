unit Unit1a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, DB, DBClient, ComCtrls, ToolWin, dxDBTL, ExtCtrls,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, mycds, ADODB;

type
  Tsethomebank = class(TForm)
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
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    homebankbalance: TBCDField;
    DShomebank: TDataSource;
    ImageList1: TImageList;
    Images: TImageList;
    homebankcomp_id: TAutoIncField;
    ADOQuery1: TADOQuery;
    ADOQuery1sta_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1dept_id: TIntegerField;
    ADOQuery1team_id: TIntegerField;
    ADOQuery1zname: TStringField;
    ADOQuery1zcode: TStringField;
    ADOQuery1sex: TBooleanField;
    ADOQuery1personalID: TStringField;
    ADOQuery1birthdate: TDateTimeField;
    ADOQuery1hiredate: TDateTimeField;
    ADOQuery1firedate: TDateTimeField;
    ADOQuery1origin: TStringField;
    ADOQuery1degree: TStringField;
    ADOQuery1title: TStringField;
    ADOQuery1zpost: TStringField;
    ADOQuery1phone: TStringField;
    ADOQuery1fax: TStringField;
    ADOQuery1residence: TStringField;
    ADOQuery1notes: TMemoField;
    ADOQuery1password: TStringField;
    ADOQuery1enc_pass: TStringField;
    ADOQuery1zright: TMemoField;
    ADOQuery1operative: TBooleanField;
    ADOQuery1stop_yn: TBooleanField;
    ADOQuery1stop_by: TIntegerField;
    ADOQuery1stop_for: TStringField;
    ADOQuery1stop_dt: TDateTimeField;
    ADOQuery1use_priority: TIntegerField;
    ADOQuery1receipt: TBooleanField;
    ADOQuery1broker: TBooleanField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    ADOQuery1merchant: TBooleanField;
    ADOQuery1manager: TBooleanField;
    ADOQuery1custservice: TBooleanField;
    ADOQuery1storage: TBooleanField;
    ADOQuery1account: TBooleanField;
    ADOQuery1supervisor: TBooleanField;
    ADOQuery1purchase: TBooleanField;
    ADOQuery1biller: TBooleanField;
    ADOQuery1printable: TBooleanField;
    ADOQuery1exportable: TBooleanField;
    ADOQuery1sta_type_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1qry_code: TStringField;
    ADOQuery1pick_ord: TIntegerField;
    ADOQuery1opr_scale: TWordField;
    ADOQuery1med_scale: TWordField;
    ADOQuery1depo_bank: TIntegerField;
    ADOQuery1bank_name: TStringField;
    ADOQuery1depo_acco: TStringField;
    ADOQuery1district: TIntegerField;
    ADOQuery1receiver: TStringField;
    ADOQuery1Email: TStringField;
    ADOQuery1mobile_no: TStringField;
    ADOQuery1credit_level: TStringField;
    ADOQuery1fuser: TBooleanField;
    ADOQuery1confidential: TBooleanField;
    ADOQuery1checkable: TBooleanField;
    ADOQuery1fallsupplier: TBooleanField;
    ADOQuery1fallcustomer: TBooleanField;
    ADOQuery1fallmed: TBooleanField;
    ADOQuery1falldistrict: TBooleanField;
    ADOQuery1falldevice: TBooleanField;
    ADOQuery1ftrustright: TBooleanField;
    Label15: TLabel;
    homebankstop_by: TIntegerField;
    homebankstop_dt: TDateTimeField;
    homebankstop_yn: TBooleanField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2bank_name: TdxDBGridColumn;
    dxDBGrid2bank_acnt: TdxDBGridColumn;
    dxDBGrid2stop_yn: TdxDBGridCheckColumn;
    homebankmanagered: TBooleanField;
    dxDBGrid2managered: TdxDBGridCheckColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure homebankAfterPost(DataSet: TDataSet);
    procedure homebankBeforePost(DataSet: TDataSet);
    procedure homebankBeforeDelete(DataSet: TDataSet);
    procedure homebankstop_ynChange(Sender: TField);
  private
    { Private declarations }
    FParentValue: Variant;
  public
    { Public declarations }
  end;

var
  sethomebank: Tsethomebank;
  settle_way,settle_day: integer;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsethomebank.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with homebank do if active=true then close;
end;

procedure Tsethomebank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsethomebank.FormActivate(Sender: TObject);
begin
with homebank do
begin
    if active=true then close;
    commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
    open;
end;
end;

procedure Tsethomebank.homebankAfterPost(DataSet: TDataSet);
begin
if homebank.ChangeCount>0 then myupdaterefresh(homebank,'tb_bank','bank_id','');
end;

procedure Tsethomebank.homebankBeforePost(DataSet: TDataSet);
begin
with homebank do
begin
    if fieldbyname('bank_name').asstring='' then raise exception.create('科目名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
    end;
end;
end;

procedure Tsethomebank.homebankBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where bank_id='+ homebank.fieldbyname('bank_id').asstring;
    open;
    if recordcount>0 then raise exception.create('本账户已发生业务，不可删除');
end;
if MessageBox(0,'确定删除本账户','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsethomebank.homebankstop_ynChange(Sender: TField);
begin
with homebank do
begin
	fieldbyname('stop_by').asinteger:=curuserid;
	fieldbyname('stop_dt').asdatetime:=srv_date;
end;
end;

end.
