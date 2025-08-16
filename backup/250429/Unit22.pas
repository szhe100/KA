unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, QRCtrls, Db, DBClient, ADODB;

type
  Treport02 = class(TForm)
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
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRDBText20: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel12: TQRLabel;
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
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText23: TQRDBText;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel31: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel57: TQRLabel;
    qry: TClientDataSet;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryqty: TBCDField;
    qryagent: TStringField;
    qrybroker: TStringField;
    qrycustomer: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrydrawamot: TBCDField;
    qrycost: TBCDField;
    qryamot: TBCDField;
    qrydistrict: TStringField;
    qryprofit: TBCDField;
    QRLabel8: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel25: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrysta_id: TAutoIncField;
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
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
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
  report02: Treport02;
  ms: string;
  mt: integer;

implementation

{$R *.DFM}

uses datamodu, unit21;

procedure Treport02.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Treport02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Treport02.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrband2.enabled:=mt>0;
end;

procedure Treport02.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if ms=qry.fieldbyname('sta_id').asstring then mt:=mt+1 else
begin
    ms:=qry.fieldbyname('sta_id').asstring;
    mt:=0;
    QRExpr1.reset;    QRExpr3.reset;      QRExpr5.reset;    QRExpr6.reset;
end;
end;

end.
