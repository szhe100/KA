unit Unit91a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBClient, StdCtrls, ADODB;

type
  Trepaccdocu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel42: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    bill: TClientDataSet;
    DSbill: TDataSource;
    bill_dtl: TClientDataSet;
    DSbill_dtl: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRShape27: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel1: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel34: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape18: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    pubqry: TClientDataSet;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRLabel43: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRShape38: TQRShape;
    QRShape41: TQRShape;
    QRShape19: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel57: TQRLabel;
    bill_dtlbod_id: TIntegerField;
    bill_dtldtl_id: TAutoIncField;
    bill_dtlmed_id: TIntegerField;
    bill_dtlacc_cd: TStringField;
    bill_dtlzdesc: TStringField;
    bill_dtlcost: TBCDField;
    bill_dtlqty: TBCDField;
    bill_dtlamot: TBCDField;
    bill_dtlrela_value: TBCDField;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    billbod_id: TIntegerField;
    billbod_cd: TStringField;
    billbod_status_id: TIntegerField;
    billbod_type_id: TIntegerField;
    billbod_amot: TBCDField;
    billcreat_by: TIntegerField;
    billcreat_dt: TDateTimeField;
    billcheck_by: TIntegerField;
    billcheck_dt: TDateTimeField;
    billrelative_id: TIntegerField;
    billCbod_status: TStringField;
    billcreater: TStringField;
    billchecker: TStringField;
    billprncount: TIntegerField;
    billbod_desc: TStringField;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    bill_dtlprice: TBCDField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape21: TQRShape;
    QRLabel11: TQRLabel;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    bill_dtlcomptitle: TStringField;
    bill_dtlexpensesup: TStringField;
    QRDBText9: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    bill_dtlstock_id: TIntegerField;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    billbroker: TStringField;
    billcasher: TStringField;
    billbroker_id: TIntegerField;
    billcash_by: TIntegerField;
    bill_dtlbank_name: TStringField;
    bill_dtlLtitle: TStringField;
    billcarry_dt: TDateTimeField;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repaccdocu: Trepaccdocu;
  mline,npage:integer;
  t1,t2: real;

implementation

{$R *.DFM}

uses datamodu;

procedure Trepaccdocu.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
inc(mline);
if (mline>=bill_dtl.recordcount) and (mline<npage*6) then
begin
    bill_dtl.prior;
    QrDbtext1.enabled:=false;
    QrDbtext2.enabled:=false;
    QrDbtext4.enabled:=false;
    QrDbtext5.enabled:=false;
    QrDbtext7.enabled:=false;
    QrDbtext8.enabled:=false;
    QrDbtext9.enabled:=false;
    QrDbtext10.enabled:=false;
    qrlabel6.enabled :=false;
end
else
begin
    t1:=t1+bill_dtl.fieldbyname('cost').asfloat;
    t2:=t2+bill_dtl.fieldbyname('price').asfloat;
    QrDbtext1.enabled:=true;
    QrDbtext2.enabled:=true;
    QrDbtext4.enabled:=true;
    QrDbtext5.enabled:=true;
    QrDbtext7.enabled:=true;
    QrDbtext8.enabled:=true;
    QrDbtext9.enabled:=true;
    QrDbtext10.enabled:=true;
    qrlabel6.enabled :=true;
end;
end;

procedure Trepaccdocu.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if bill_dtl.Bof then
begin
    QrDbtext1.enabled:=true;
    QrDbtext2.enabled:=true;
    QrDbtext4.enabled:=true;
    QrDbtext5.enabled:=true;
    QrDbtext7.enabled:=true;
    QrDbtext8.enabled:=true;
    QrDbtext9.enabled:=true;
    QrDbtext10.enabled:=true;
    npage:=trunc((bill_dtl.recordcount-1)/6)+1;
    mline:=0;
end;

childband1.enabled:=bill_dtl.recordcount=1;
end;

procedure Trepaccdocu.DSbillDataChange(Sender: TObject; Field: TField);
begin
with bill_dtl do
    if tag<>bill.fieldbyname('bod_id').asinteger then
        if bill.RecordCount=0 then
        begin
            if active=true then close;
            tag:=0;
        end
        else
        begin
            if active=true then close;
            commandtext:='select bod_id,dtl_id,stock_id,med_id,b.acc_cd,zdesc,cost,price,qty,amot,rela_value,';
            commandtext:=commandtext+' expensesup=m.mate_name,comptitle=dbo.fn_comptitle(a.rela_id),c.bank_name,Ltitle=dbo.fn_getacctitle0(a.med_id)';
            commandtext:=commandtext+' from tb_bill_dtl a inner join tb_accounts b on a.med_id=b.acc_id left join tb_busimate m on a.rela_value=m.mate_id';
            commandtext:=commandtext+' 	left join tb_bank c on a.stock_id=c.bank_id'; // left join tb_accounts d on a.med_id=d.acc_id';
            commandtext:=commandtext+' where a.bod_id='+bill.fieldbyname('bod_id').asstring;
            commandtext:=commandtext+' order by a.dtl_id';
            open;
            tag:=bill.fieldbyname('bod_id').asinteger;
        end;
end;

procedure Trepaccdocu.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var Hour, Min, Sec, MSec: Word;
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
qrlabel28.caption:=FormatDateTime('''凭证日期:''yyyy''年''mm''月''dd''日''',bill.fieldbyname('carry_dt').asdatetime);
//qrlabel28.caption:=FormatDateTime('''凭证日期:''yyyy''年''mm''月''dd''日''',bill.fieldbyname('creat_dt').asdatetime);
decodetime(time,Hour, Min, Sec, MSec);
qrlabel8.caption:='打印时间:'+datetimetostr(date)+' '+inttostr(Hour)+':'+inttostr(Min); //timetostr(time);
t1:=0;   t2:=0;   mline:=0;
end;

procedure Trepaccdocu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trepaccdocu.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel9.caption:=formatfloat('###,###,##0.00;; ',t1);
qrlabel10.caption:=formatfloat('###,###,##0.00;; ',t2);
qrlabel57.caption:='/'+inttostr(npage)+' 页';
end;

procedure Trepaccdocu.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel6.caption:=inttostr(mline+1);
end;

end.
