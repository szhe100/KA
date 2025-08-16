unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBClient;

type
  Trepreceivebill = class(TForm)
    QuickRep1: TQuickRep;
    QRBand5: TQRBand;
    cdsbill: TClientDataSet;
    DSbill: TDataSource;
    cdsbillbod_id: TAutoIncField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbilldst_id: TIntegerField;
    cdsbillbod_status_id: TIntegerField;
    cdsbillbod_type_id: TIntegerField;
    cdsbillbusi_type: TIntegerField;
    cdsbillbod_amot: TBCDField;
    cdsbillcreat_by: TIntegerField;
    cdsbillcreat_dt: TDateTimeField;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillprncount: TIntegerField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape7: TQRShape;
    cdsbillbod_desc: TStringField;
    cdsbillbroker_id: TIntegerField;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    cdsbillrelative_id: TIntegerField;
    cdsbillLpaybank: TStringField;
    QRLabel40: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel57: TQRLabel;
    cdsbillbroker: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure Setfpriwhole(fp: boolean);
  public
    { Public declarations }
    property fpriwhole:boolean write setfpriwhole;
  end;

var
  repreceivebill: Trepreceivebill;
  mtot,bsum:real;
  mline:integer;
  npage:integer;

implementation

{$R *.DFM}

uses datamodu;

procedure Trepreceivebill.Setfpriwhole(fp: boolean);
begin
end;

procedure Trepreceivebill.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel5.caption:=saydigit(cdsbill.fieldbyname('bod_amot').asfloat)+formatfloat('(##,###,##0.00)',cdsbill.fieldbyname('bod_amot').asfloat);
end;

procedure Trepreceivebill.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel5.caption:=saydigit(cdsbill.fieldbyname('bod_amot').asfloat)+formatfloat('(##,###,##0.00)',cdsbill.fieldbyname('bod_amot').asfloat);
end;

procedure Trepreceivebill.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Trepreceivebill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trepreceivebill.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel28.caption:=FormatdateTime('''收款日期:''yyyy''年''mm''月''dd''日''',cdsbill.fieldbyname('carry_dt').asdatetime);
end;

end.
