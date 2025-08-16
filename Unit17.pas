unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBClient, StdCtrls;

type
  Trepimportbill = class(TForm)
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    cdsbill: TClientDataSet;
    DSbill: TDataSource;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtldiscount: TBCDField;
    cdsbill_dtlcost: TBCDField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlCamot: TFloatField;
    cdsbill_dtlamot: TBCDField;
    DSbill_dtl: TDataSource;
    cdsbill_dtlsite_code: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRShape26: TQRShape;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText17: TQRDBText;
    QRShape13: TQRShape;
    QRShape1: TQRShape;
    QRShape32: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape24: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel11: TQRLabel;
    ChildBand2: TQRChildBand;
    QRShape22: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    cdsbill_dtlqtyperpack: TBCDField;
    QRLabel15: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel50: TQRLabel;
    cdsbill_dtlretailprice: TBCDField;
    cdsbill_dtlappv_docu: TStringField;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel57: TQRLabel;
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
    cdsbillcarry_dt: TDateTimeField;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillbod_desc: TStringField;
    cdsbillrelative_id: TIntegerField;
    cdsbillprncount: TIntegerField;
    cdsbillsettle_type: TIntegerField;
    cdsbillallo_desc: TStringField;
    cdsbillbroker_id: TIntegerField;
    cdsbillstorage_by: TIntegerField;
    cdsbillsupplier: TStringField;
    cdsbillagent: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbilladdress: TStringField;
    cdsbillphone: TStringField;
    cdsbillbod_settle: TIntegerField;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape23: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repimportbill: Trepimportbill;
  mtot,mt,bsum:real;
  mline:integer;
  npage:integer;

implementation

{$R *.DFM}

uses datamodu;

procedure Trepimportbill.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel5.caption:=saydigit(mtot)+formatfloat('(##,###,##0.00)',mtot);
qrlabel15.caption:=formatfloat('￥###,###,##0.00',cdsbill.fieldbyname('bod_amot').asfloat);
if mt=0 then qrlabel48.caption:='本单无整件' else qrlabel48.caption:=formatfloat('本单整件合计:###件',mt);
mtot:=0;
end;

procedure Trepimportbill.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
//with cdsbill_dtl do if recordcount=1 then moredata:=mline<8;
end;

procedure Trepimportbill.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

if cdsbill_dtl.bof then mline:=0;
with cdsbill_dtl do
    if mline<recordcount then
    begin
        qrlabel9.caption:=fieldbyname('med_name').asstring;
        qrlabel54.caption:=fieldbyname('specifi').asstring;
        qrlabel50.caption:=formatfloat('###,###,##0.00;; ',fieldbyname('amot').asfloat);
        if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger mod fieldbyname('qtyperpack').asinteger=0)
         then qrlabel3.caption:=formatfloat('*###,###件',fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger)
         else qrlabel3.caption:='';
        if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger>=fieldbyname('qtyperpack').asinteger)
         then mt:=mt+int(fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger);
    end
    else
    begin
        qrlabel9.caption:='      /     /';
        qrlabel54.caption:='';
        qrlabel50.caption:=' /  /   ';
        qrlabel3.caption:='';
    end;
end;

procedure Trepimportbill.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
inc(mline);

if mline<=cdsbill_dtl.recordcount then mtot:=mtot+cdsbill_dtl.fieldbyname('amot').asfloat;

if (mline>=cdsbill_dtl.recordcount) and (mline<npage*8) then
begin
    cdsbill_dtl.prior;
    QrDbtext2.enabled:=false;
    QrDbtext6.enabled:=false;
    QrDbtext7.enabled:=false;
    QrDbtext9.enabled:=false;
    QrDbtext11.enabled:=false;
    QrDbtext15.enabled:=false;
    QrDbtext17.enabled:=false;
    QrDbtext19.enabled:=false;
end
else
begin
end;
end;

procedure Trepimportbill.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if cdsbill_dtl.Bof then
begin
    QrDbtext2.enabled:=true;
    QrDbtext7.enabled:=true;
    QrDbtext9.enabled:=true;
    QrDbtext11.enabled:=true;
    QrDbtext15.enabled:=true;
    QrDbtext17.enabled:=true;
    QrDbtext19.enabled:=true;

    bsum:=cdsbill.fieldbyname('bod_amot').asfloat;
    npage:=trunc((cdsbill_dtl.recordcount-1)/8)+1;
    mline:=0;
end;
if cdsbill.fieldbyname('bod_status_id').asinteger=0 then qrlabel47.caption:='[未审核]'
   else qrlabel47.caption:='';
if cdsbill.fieldbyname('bod_desc').asstring='' then qrlabel11.caption:=''
   else qrlabel11.caption:='单据摘要:'+cdsbill.fieldbyname('bod_desc').asstring;
mtot:=0; mt:=0;

childband1.enabled:=cdsbill_dtl.recordcount=1;

QrDbtext2.enabled:=true;
QrDbtext7.enabled:=true;
QrDbtext9.enabled:=true;
QrDbtext15.enabled:=true;
QrDbtext17.enabled:=true;
QrDbtext19.enabled:=true;
end;

procedure Trepimportbill.DSbillDataChange(Sender: TObject; Field: TField);
begin
with cdsbill_dtl do
    if tag<>cdsbill.fieldbyname('bod_id').asinteger then
        if cdsbill.RecordCount=0 then
        begin
            if active=true then close;
            tag:=0;
        end
        else
        begin
            if active=true then close;
            commandtext:='select a.*,b.med_name,b.specifi,b.pdt_place,b.med_code,b.site_code,b.qtyperpack,b.appv_docu,med_unit=dbo.fn_obj_desc(b.unit_id),d.retailprice,e.valid_dt';
            commandtext:=commandtext+' from tb_bill_dtl a,tb_medicine b,tb_medinfo d,tb_medstock_bat e';
            commandtext:=commandtext+' where a.med_id=b.med_id and a.med_id*=d.med_id';
            commandtext:=commandtext+'  and a.med_id=e.med_id and a.bat_cd=e.bat_cd and e.mate_id='+cdsbill.fieldbyname('dst_id').asstring+' and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
            commandtext:=commandtext+' order by a.dtl_id';
            open;
            tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
end;

procedure Trepimportbill.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Trepimportbill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
