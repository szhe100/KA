unit Unit100;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBClient, ADODB;

type
  Trepimplan = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand4: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText2: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel40: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel38: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRShape21: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape22: TQRShape;
    busi_label: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel13: TQRLabel;
    cdsbill: TClientDataSet;
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
    cdsbill_dtlsite_code: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlretailprice: TBCDField;
    cdsbill_dtlqtyperpack: TBCDField;
    cdsbill_dtlappv_docu: TStringField;
    DSbill_dtl: TDataSource;
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
    cdsbillreceipt_by: TIntegerField;
    cdsbillbod_desc: TStringField;
    cdsbillrelative_id: TIntegerField;
    cdsbillprncount: TIntegerField;
    cdsbillsettle_type: TIntegerField;
    cdsbillallo_desc: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillbusimate: TStringField;
    cdsbilldeputy: TStringField;
    cdsbilldeputy_title: TStringField;
    cdsbillphone: TStringField;
    cdsbillfax: TStringField;
    cdsbilladdress: TStringField;
    QRDBText1: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText9: TQRDBText;
    cdsbillbroker_id: TIntegerField;
    cdsbillbod_settle: TIntegerField;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText20: TQRDBText;
    cdsbillbrk_phone: TStringField;
    cdsbillbrk_fax: TStringField;
    cdsbillbod_broker: TStringField;
    cdsbill_dtlwholeprice: TBCDField;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape13: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel23: TQRLabel;
    QRShape12: TQRShape;
    QRLabel31: TQRLabel;
    cdsbillcash_dt: TDateTimeField;
    QRLabel32: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText22: TQRDBText;
    cdsbill_dtlinfo: TStringField;
    QRLabel37: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel57: TQRLabel;
    ChildBand2: TQRChildBand;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repimplan: Trepimplan;
  mline,npage,mt:integer;

implementation

{$R *.DFM}

uses datamodu;

procedure Trepimplan.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if ent_title<>'' then busi_label.caption:=ent_title;
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select * from tb_home where home_id='+cdsbill.fieldbyname('home_id').asstring;
    open;
    busi_label.caption:=fieldbyname('home_name').asstring;
    qrlabel22.Caption:=fieldbyname('forn_name').asstring;
end;
}
  Sender.AllDataSets.Add(cdsbill);

  mline:=0; mt:=0;
  qrlabel7.caption:=saydigit(cdsbill.fieldbyname('bod_amot').asfloat);
end;

procedure Trepimplan.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
inc(mline);
if (mline>=cdsbill_dtl.recordcount) and (mline<npage*20-3) then // 每页20行  最后减少3行用于打印summaryband
begin
    cdsbill_dtl.prior;
    QrDbtext2.enabled:=false;
    QrDbtext5.enabled:=false;
    QrDbtext6.enabled:=false;
    QrDbtext7.enabled:=false;
    QrDbtext8.enabled:=false;
    QrDbtext12.enabled:=false;
    QrDbtext15.enabled:=false;
    QrDbtext22.enabled:=false;
end;
ChildBand2.Enabled:=cdsbill_dtl.recordcount=1;   //cdsbill_dtl.recordcount=1时 childband2 打印空表 
end;

procedure Trepimplan.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
with cdsbill_dtl do
begin
    if bof then mline:=0;
    if mline<recordcount
        then qrlabel20.caption:=fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring
        else qrlabel20.caption:='';
    qrlabel8.caption:='';
    if fieldbyname('qtyperpack').asinteger > 0 then
    begin
        qrlabel8.caption:=formatfloat('####',int(fieldbyname('qty').asinteger/fieldbyname('qtyperpack').asinteger));
        qrlabel25.caption:=formatfloat('####',fieldbyname('qty').asinteger mod fieldbyname('qtyperpack').asinteger);
        mt:=mt+fieldbyname('qty').asinteger div fieldbyname('qtyperpack').asinteger;
    end
    else
    begin
        qrlabel8.caption:='';
        qrlabel25.caption:='';
    end;
    if fieldbyname('wholeprice').asfloat<>0
     then qrlabel26.caption:=formatfloat('###0.00%',fieldbyname('price').asfloat/fieldbyname('wholeprice').asfloat*100)
     else qrlabel26.caption:='';
end;
end;

procedure Trepimplan.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlabel23.caption:=formatfloat('###,###,##0.00;; ',cdsbill.fieldbyname('bod_amot').asfloat);
  qrlabel24.caption:=formatfloat('##,###',mt);
end;

procedure Trepimplan.DSbillDataChange(Sender: TObject; Field: TField);
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
            commandtext:='select a.bat_cd,a.price,a.qty,a.amot,a.bod_id,b.med_name,b.specifi,b.pdt_place,b.med_code,b.site_code,b.qtyperpack,b.appv_docu,med_unit=c.zdesc,';
            commandtext:=commandtext+' d.retailprice,d.wholeprice,e.valid_dt,info=dbo.fn_getinideal(a.dtl_id,a.med_id)';
            commandtext:=commandtext+' from tb_bill_dtl a,tb_medicine b,tb_object c,tb_medinfo d,tb_medstock_bat e';
            commandtext:=commandtext+' where a.med_id=b.med_id and b.unit_id*=c.obj_id and a.med_id=d.med_id and a.sta_id*=e.sta_id';
            commandtext:=commandtext+'   and a.med_id*=e.med_id and a.bat_cd*=e.bat_cd and bod_id='+cdsbill.fieldbyname('bod_id').asstring;
            commandtext:=commandtext+' order by a.dtl_id';
            open;
            tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
end;

procedure Trepimplan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trepimplan.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if cdsbill_dtl.Bof then
begin
    QrDbtext2.enabled:=true;
    QrDbtext5.enabled:=true;
    QrDbtext6.enabled:=true;
    QrDbtext7.enabled:=true;
    QrDbtext8.enabled:=true;
    QrDbtext12.enabled:=true;
    QrDbtext15.enabled:=true;
    QrDbtext22.enabled:=true;

    npage:=trunc((cdsbill_dtl.recordcount-1)/20)+1;  //22
    mline:=0;
end;

end;

end.
