unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, QRCtrls, Db, DBClient, ADODB;

type
  Treport05b = class(TForm)
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
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    ADOQuery1: TADOQuery;
    QRSysData2: TQRSysData;
    QRLabel57: TQRLabel;
    qry: TClientDataSet;
    QRExpr7: TQRExpr;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1bank: TStringField;
    ADOQuery1depo_acco: TStringField;
    ADOQuery1bal0: TBCDField;
    ADOQuery1drawamot: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1bal1: TBCDField;
    QRLabel4: TQRLabel;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qrybank: TStringField;
    qrydepo_acco: TStringField;
    qrybal0: TBCDField;
    qrydrawamot: TBCDField;
    qryrec: TBCDField;
    qrypay: TBCDField;
    qrybal1: TBCDField;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRExpr2: TQRExpr;
    qrycdistrict: TStringField;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr9: TQRExpr;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    qryreceiver: TStringField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report05b: Treport05b;

implementation

{$R *.DFM}

uses datamodu, unit21;

procedure Treport05b.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Treport05b.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
