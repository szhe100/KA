unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBClient, StdCtrls, ADODB;

type
  Trepexportbill = class(TForm)
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
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlamot: TBCDField;
    DSbill_dtl: TDataSource;
    cdsbill_dtlsite_code: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRShape26: TQRShape;
    QRShape11: TQRShape;
    QRDBText9: TQRDBText;
    QRShape27: TQRShape;
    QRDBText15: TQRDBText;
    QRShape28: TQRShape;
    QRDBText17: TQRDBText;
    QRShape32: TQRShape;
    QRDBText19: TQRDBText;
    QRShape25: TQRShape;
    QRDBText2: TQRDBText;
    QRShape24: TQRShape;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel11: TQRLabel;
    ChildBand2: TQRChildBand;
    QRShape22: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRShape12: TQRShape;
    QRShape4: TQRShape;
    QRShape23: TQRShape;
    QRShape6: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    cdsbill_dtlqtyperpack: TBCDField;
    QRLabel15: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel48: TQRLabel;
    pubqry: TClientDataSet;
    QRLabel49: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    cdsbill_dtlappv_docu: TStringField;
    QRDBText6: TQRDBText;
    cdsbill_dtlretailprice: TBCDField;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel50: TQRLabel;
    cdsbill_dtlwholeprice: TBCDField;
    QRDBText8: TQRDBText;
    cdsbill_dtlmarketprice: TBCDField;
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
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillbroker: TStringField;
    cdsbillagent: TStringField;
    cdsbillcustomer: TStringField;
    cdsbilladdress: TStringField;
    cdsbillphone: TStringField;
    QRDBText5: TQRDBText;
//    cdsbillLbod_broker: TStringField;
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  repexportbill: Trepexportbill;
  mtot,bsum:real;
  mline,npage:integer;
  mt: real;

implementation

{$R *.DFM}

uses datamodu, Unit17;

procedure Trepexportbill.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel5.caption:=saydigit(mtot)+formatfloat('(##,###,##0.00)',mtot);
qrlabel15.caption:=formatfloat('￥###,###,##0.00',bsum);
if mt=0 then qrlabel48.caption:='本单无整件' else qrlabel48.caption:=formatfloat('本单整件合计:###件',mt);
mtot:=0;
end;

procedure Trepexportbill.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var year,month,day: word;
begin

if cdsbill_dtl.bof then  mline:=0;
with cdsbill_dtl do
    if mline<recordcount then
    begin
//        QrDbtext1.enabled:=true;
        QrDbtext2.enabled:=true;
        if fieldbyname('qty').asfloat<100000 then QrDbtext2.font.size:=11 else QrDbtext2.font.size:=10;
        QrDbtext7.enabled:=true;
        QrDbtext9.enabled:=true;
        with QrDbtext6 do if tag=0 then enabled:=false else enabled:=true;
        with QrDbtext15 do
            if tag=0 then enabled:=true else enabled:=false;
        QrDbtext17.enabled:=true;
        QrDbtext19.enabled:=true;
        qrlabel9.caption:=copy(fieldbyname('med_name').asstring + ' ' + fieldbyname('specifi').asstring,1,26);
        if fieldbyname('valid_dt').asstring='' then qrlabel50.Caption:='' else
        begin
            decodedate(fieldbyname('valid_dt').asdatetime,year,month,day);
            qrlabel50.caption:=inttostr(year)+'-'+inttostr(month);
        end;
        qrlabel10.caption:=formatfloat('#,###,###,##0.00;;',fieldbyname('amot').asfloat);
        if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger mod fieldbyname('qtyperpack').asinteger=0)
         then qrlabel4.caption:=formatfloat('*###,###件',fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger)
         else qrlabel4.caption:='';
//        with cdsbill_dtl do
//            if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger>=fieldbyname('qtyperpack').asinteger)
//             then mt:=mt+int(fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger);
    end
    else
    begin
        qrlabel9.caption:='      /     /';
        qrlabel10.caption:=' /  /   ';
        qrlabel4.caption:='';
        qrlabel50.Caption:='';
    end;
end;

procedure Trepexportbill.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
inc(mline);

if mline<=cdsbill_dtl.recordcount then mtot:=mtot+cdsbill_dtl.fieldbyname('amot').asfloat;

if (mline>=cdsbill_dtl.recordcount) and (mline<npage*8) then
begin
    cdsbill_dtl.prior;
    QrDbtext1.enabled:=false;
    QrDbtext2.enabled:=false;
    QrDbtext6.enabled:=false;
    QrDbtext7.enabled:=false;
    QrDbtext9.enabled:=false;
    QrDbtext15.enabled:=false;
    QrDbtext17.enabled:=false;
    QrDbtext19.enabled:=false;
end
else
begin
    with cdsbill_dtl do
        if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger>=fieldbyname('qtyperpack').asinteger)
         then mt:=mt+int(fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger);
end;
end;

procedure Trepexportbill.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var m1,m2: word; // m3: real;
begin
if cdsbill_dtl.Bof then
begin
    QrDbtext1.enabled:=true;
    QrDbtext2.enabled:=true;
    with QrDbtext6 do if tag=0 then enabled:=false else enabled:=true;
    QrDbtext7.enabled:=true;
    QrDbtext9.enabled:=true;
    with QrDbtext15 do
        if tag=0 then enabled:=true else enabled:=false;
    QrDbtext17.enabled:=true;
    QrDbtext19.enabled:=true;

    bsum:=cdsbill.fieldbyname('bod_amot').asfloat;
    npage:=trunc((cdsbill_dtl.recordcount-1)/8)+1;
    mline:=0;
end;

if cdsbill.fieldbyname('bod_status_id').asinteger=0 then qrlabel49.caption:='[未审核]'
   else qrlabel49.caption:='';

   if trim(cdsbill.fieldbyname('bod_desc').asstring)=''
    then qrlabel11.caption:=''
    else qrlabel11.caption:='单据摘要:'+cdsbill.fieldbyname('bod_desc').asstring;

qrlabel13.caption:='';
if cdsbill.fieldbyname('broker').asstring<>''
   then qrlabel13.caption:='业务员:'+cdsbill.fieldbyname('broker').asstring;

mtot:=0;       mt:=0;
//qrlabel22.caption:=inttostr(trunc((mline+1)/8)+1)+'/'+inttostr(npage);

if cdsbill_dtl.recordcount=1 then
    with cdsbill_dtl do
        if (fieldbyname('qtyperpack').asinteger<>0) and (fieldbyname('qty').asinteger>=fieldbyname('qtyperpack').asinteger)
         then mt:=mt+int(fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger);

childband1.enabled:=cdsbill_dtl.recordcount=1;
end;

procedure Trepexportbill.DSbillDataChange(Sender: TObject; Field: TField);
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
            commandtext:='select a.bat_cd,a.price,a.qty,a.amot,a.bod_id,b.med_code,b.med_name,b.specifi,b.pdt_place,b.site_code,b.qtyperpack,b.appv_docu,';
            commandtext:=commandtext+'med_unit=dbo.fn_obj_desc(b.unit_id),d.retailprice,d.wholeprice,d.marketprice,e.valid_dt';
            commandtext:=commandtext+' from tb_bill_dtl a,tb_medicine b,tb_medinfo d,tb_medstock_bat e';
            commandtext:=commandtext+' where a.med_id=b.med_id and a.med_id*=d.med_id';
            commandtext:=commandtext+'   and a.med_id*=e.med_id and a.bat_cd*=e.bat_cd and e.mate_id='+cdsbill.fieldbyname('src_id').asstring+' and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
            commandtext:=commandtext+' order by a.dtl_id';
            open;
            tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
end;

procedure Trepexportbill.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then qrlabel20.caption:=ent_title;
end;

procedure Trepexportbill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
