unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, QRCtrls, Db, DBClient, ADODB;

type
  Treport01 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    DSqry: TDataSource;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText20: TQRDBText;
    ADOQuery1: TADOQuery;
    ADOQuery1agent: TStringField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1mate_code: TStringField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creater: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1bod_amot: TBCDField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1phone: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    ADOQuery1cost: TBCDField;
    QRGroup3: TQRGroup;
    QRLabel25: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel57: TQRLabel;
    QRGroup4: TQRGroup;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    qry: TClientDataSet;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRLabel11: TQRLabel;
    QRExpr16: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr8: TQRExpr;
    qrybod_id: TAutoIncField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrybusi_type: TStringField;
    qrybod_desc: TStringField;
    qrydtl_id: TAutoIncField;
    qrydistrict: TStringField;
    qrysta_id: TAutoIncField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryqty: TBCDField;
    qrycreater: TStringField;
    qryagent: TStringField;
    qrybroker: TStringField;
    qrycustomer: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrydrawrate: TBCDField;
    qrydrawamot: TBCDField;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText7: TQRDBText;
    QRShape19: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report01: Treport01;
  ms: string;
  mt: integer;

implementation

{$R *.DFM}

uses datamodu;  //, unit21

procedure Treport01.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
//ms:=''; mt:=0;
ms:=qry.fieldbyname('sta_id').asstring; mt:=0;
end;

procedure Treport01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Treport01.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrband4.enabled:=mt>0;
end;

procedure Treport01.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if ms=qry.fieldbyname('sta_id').asstring then mt:=mt+1 else
begin
    ms:=qry.fieldbyname('sta_id').asstring;
    mt:=0;
    QRExpr16.reset;
end;
end;

end.
