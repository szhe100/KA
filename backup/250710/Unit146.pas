unit Unit146;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, QRCtrls, Db, DBClient, ADODB;

type
  Treport33 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel57: TQRLabel;
    procedure cdsqryCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report33: Treport33;

implementation

{$R *.DFM}

uses datamodu;

procedure Treport33.cdsqryCalcFields(DataSet: TDataSet);
begin
{with cdsqry do
begin
    fieldbyname('Cint_qty').asinteger:= fieldbyname('short_qty').asinteger div fieldbyname('qtyperpack').asinteger;
    fieldbyname('Cfra_qty').asinteger:= fieldbyname('short_qty').asinteger mod fieldbyname('qtyperpack').asinteger;
end;  }
end;

procedure Treport33.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
with cdsqry do
    case fieldbyname('mate_type').asinteger of
        0: qrlabel12.caption:='供应商';
        1: qrlabel12.caption:='销售客户';
        2: qrlabel12.caption:='销售或供应商';
    end;   }
end;

procedure Treport33.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Treport33.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
