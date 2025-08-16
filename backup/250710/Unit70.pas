unit Unit70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, QRCtrls, Db, DBClient, ADODB;

type
  Treport11 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape12: TQRShape;
    QRLabel58: TQRLabel;
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
  report11: Treport11;

implementation

{$R *.DFM}

uses datamodu;

procedure Treport11.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
with dm.exgqry do
begin     // imp_qty 与 exp_qty 中必有一个为0
//    qrlabel36.caption:=formatfloat('###,###,##0;; ',fieldbyname('imp_qty').asfloat+fieldbyname('exp_qty').asfloat);
    qrlabel37.caption:=formatfloat('###,###,##0.00;; ',fieldbyname('imp_amt').asfloat+fieldbyname('exp_amt').asfloat);
{
    if report11.tag=0 then
    begin
        qrlabel40.caption:='';
        qrlabel41.caption:='';
    end
    else
    begin
        qrlabel40.caption:=formatfloat('###,###,##0;; ',(fieldbyname('imp_qty').asinteger+fieldbyname('exp_qty').asinteger) div report11.tag);
        qrlabel41.caption:=formatfloat('###,###,##0;; ',(fieldbyname('imp_qty').asinteger+fieldbyname('exp_qty').asinteger) mod report11.tag);
    end;
}
    if fieldbyname('bod_cd').asstring='期初数'
        then qrlabel56.caption:='期初数'
        else qrlabel56.caption:=trim(copy(fieldbyname('bod_cd').asstring,4,16));
    qrlabel57.caption:=trim(copy(fieldbyname('carry_dt').asstring,3,8));
end;
end;

procedure Treport11.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Treport11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
