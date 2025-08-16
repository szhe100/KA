unit Unit13b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ImgList, Menus, ADODB, DB, DBClient, ExtCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, StdCtrls, dxEditor, dxEdLib, dxdbtrel, Comobj,
  ComCtrls;

type
  Tsetbrokermedtl = class(TForm)
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Shape5: TShape;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    brokermed: TClientDataSet;
    DSbrokermed: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    brokermedrec_id: TAutoIncField;
    brokermedsta_id: TIntegerField;
    V: TIntegerField;
    brokermedcreat_by: TIntegerField;
    brokermedcreat_dt: TDateTimeField;
    brokermedmed_code: TStringField;
    brokermedmed_name: TStringField;
    brokermedspecifi: TStringField;
    brokermedpdt_place: TStringField;
    brokermedmed_unit: TStringField;
    brokermedmed_type: TStringField;
    brokermedqtyperpack: TBCDField;
    brokermedcreater: TStringField;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    brokermedqty: TBCDField;
    brokermedbroker: TStringField;
    brokermedmate_name: TStringField;
    brokermedrate: TBCDField;
    brokermedvalid: TBooleanField;
    dxButtonEdit4: TdxButtonEdit;
    brokermeddist_name: TStringField;
    Shape3: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    brokermedlead_id: TIntegerField;
    brokermedrate0: TBCDField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    brokermedmate_id: TIntegerField;
    brokermedstop_dt: TDateTimeField;
    brokermedstop_by: TIntegerField;
    brokermedstop_for: TStringField;
    brokermedleader: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    dxCheckEdit1: TdxCheckEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    dxEdit1: TdxEdit;
    dxCheckEdit2: TdxCheckEdit;
    Label2: TLabel;
    N7: TMenuItem;
    N8: TMenuItem;
    brokermedprice1: TBCDField;
    brokermedvalid_dt: TDateTimeField;
    brokermedstoper: TStringField;
    RadioGroup1: TRadioGroup;
    Label12: TLabel;
    brokermeddistrict: TIntegerField;
    brokermedprice0: TBCDField;
    brokermedfee1: TBCDField;
    brokermedqty1: TIntegerField;
    SpeedButton6: TSpeedButton;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1lead_id: TIntegerField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1qty: TBCDField;
    ADOQuery1qty1: TIntegerField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rate0: TBCDField;
    ADOQuery1price1: TBCDField;
    ADOQuery1price4: TBCDField;
    ADOQuery1price5: TBCDField;
    ADOQuery1price6: TBCDField;
    ADOQuery1price7: TBCDField;
    ADOQuery1start_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1valid: TBooleanField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1stop_dt: TDateTimeField;
    ADOQuery1stop_by: TIntegerField;
    ADOQuery1stop_for: TStringField;
    ADOQuery1dtl_id: TIntegerField;
    brokermedprice4: TBCDField;
    brokermedprice5: TBCDField;
    brokermedprice6: TBCDField;
    brokermedprice7: TBCDField;
    SpeedButton5: TSpeedButton;
    ADOQuery1stop_yn: TBooleanField;
    brokermedstop_yn: TBooleanField;
    Label14: TLabel;
    Label15: TLabel;
    dxPickEdit1: TdxPickEdit;
    Button1: TButton;
    ADOQuery1price_type_id: TWordField;
    brokermedprice_type_id: TWordField;
    price_type: TClientDataSet;
    price_typeobj_id: TAutoIncField;
    price_typezdesc: TStringField;
    DSlevel1: TDataSource;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    brokermedleader1: TStringField;
    dxButtonEdit6: TdxButtonEdit;
    Label20: TLabel;
    brokermedtrusted: TBooleanField;
    brokermedf1: TBCDField;
    brokermedCfee1: TBCDField;
    brokermedbod_desc: TStringField;
    Label21: TLabel;
    dxCheckEdit3: TdxCheckEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SpeedButton4: TSpeedButton;
    Shape4: TShape;
    Label7: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    dxDBGrid1valid_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1leader1: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1dist_name: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1price0: TdxDBGridColumn;
    dxDBGrid1rate1: TdxDBGridColumn;
    dxDBGrid1Cfee1: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1Crate: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDBGrid1med_id: TdxDBGridColumn;
    dxDBGrid1district: TdxDBGridColumn;
    dxDBGrid1sta_id: TdxDBGridColumn;
    dxButtonEdit5: TdxButtonEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2Lfee_type: TdxDBGridLookupColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2Crate: TdxDBGridColumn;
    dxDBGrid2creat_dt: TdxDBGridDateColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    dxDBGrid2modify_dt: TdxDBGridColumn;
    dxDBGrid2modifier: TdxDBGridColumn;
    Edit2: TEdit;
    brokermedtl: TClientDataSet;
    brokermedtlrec_id: TAutoIncField;
    brokermedtlsta_id: TIntegerField;
    brokermedtlbroker: TStringField;
    brokermedtlmate_id: TIntegerField;
    brokermedtlmate_name: TStringField;
    brokermedtlfee_type_id: TIntegerField;
    brokermedtlLfee_type: TStringField;
    brokermedtlrate: TBCDField;
    brokermedtlCrate: TFloatField;
    brokermedtlrela_id: TIntegerField;
    brokermedtlcreat_by: TIntegerField;
    brokermedtlcreat_dt: TDateTimeField;
    brokermedtlcreater: TStringField;
    brokermedtlmodify_by: TIntegerField;
    brokermedtlmodifier: TStringField;
    brokermedtlmodify_dt: TDateTimeField;
    DSbrokermedtl: TDataSource;
    Label8: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3valid: TdxDBGridCheckColumn;
    dxDBGrid3bod_desc: TdxDBGridColumn;
    dxDBGrid3leader1: TdxDBGridColumn;
    dxDBGrid3dist_name: TdxDBGridColumn;
    dxDBGrid3mate_name: TdxDBGridColumn;
    dxDBGrid3price0: TdxDBGridColumn;
    dxDBGrid3f1: TdxDBGridColumn;
    dxDBGrid3Cfee1: TdxDBGridColumn;
    dxDBGrid3rate: TdxDBGridColumn;
    dxDBGrid3price1: TdxDBGridColumn;
    dxDBGrid3Crate: TdxDBGridColumn;
    dxDBGrid3broker1: TdxDBGridColumn;
    dxDBGrid3Lfee_type: TdxDBGridColumn;
    dxDBGrid3rate1: TdxDBGridColumn;
    dxDBGrid3rate2: TdxDBGridColumn;
    qry: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    BooleanField1: TBooleanField;
    IntegerField4: TIntegerField;
    BCDField1: TBCDField;
    IntegerField5: TIntegerField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    WordField1: TWordField;
    FloatField1: TFloatField;
    BooleanField2: TBooleanField;
    DateTimeField1: TDateTimeField;
    BooleanField3: TBooleanField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    DateTimeField2: TDateTimeField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    BCDField13: TBCDField;
    StringField12: TStringField;
    DateTimeField3: TDateTimeField;
    IntegerField8: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DSqry: TDataSource;
    qryIntegerField: TIntegerField;
    qryrate1: TBCDField;
    qryCrate1: TFloatField;
    qrysta_id1: TIntegerField;
    qrybroker1: TStringField;
    dxDBGrid3valid_dt: TdxDBGridColumn;
    dxDBGrid3material_code: TdxDBGridColumn;
    dxDBGrid3med_name: TdxDBGridColumn;
    dxDBGrid3specifi: TdxDBGridColumn;
    dxDBGrid3pdt_place: TdxDBGridColumn;
    dxDBGrid3med_unit: TdxDBGridColumn;
    dxDBGrid3creat_dt: TdxDBGridColumn;
    dxDBGrid3creater: TdxDBGridColumn;
    qryCpricetype: TStringField;
    qryfeetype: TStringField;
    brokermedf2: TBCDField;
    brokermedcheck_dt: TDateTimeField;
    dxDBGrid1check_dt: TdxDBGridColumn;
    brokermedCrate: TBCDField;
    type3: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField5: TStringField;
    DStype3: TDataSource;
    brokermedtype_id2: TIntegerField;
    qrytype_id2: TIntegerField;
    qryctype2: TStringField;
    SpeedButton7: TSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    brokermedchannel_id: TIntegerField;
    brokermedchannel_dtl_id: TIntegerField;
    brokermedchannel: TStringField;
    brokermedchannel_dtl: TStringField;
    brokermedmate_id1: TIntegerField;
    brokermedmate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    brokermedmaterial_code: TStringField;
    dxDBGrid1material_code: TdxDBGridColumn;
    Shape6: TShape;
    Label24: TLabel;
    dxButtonEdit7: TdxButtonEdit;
    brokermedmaterial_code1: TStringField;
    brokermedrate1: TBCDField;
    qrymaterial_code1: TStringField;
    qryrate2: TBCDField;
    brokermedLchannel: TStringField;
    brokermedLchannel_dtl: TStringField;
    dxDBGrid1Lchannel: TdxDBGridLookupColumn;
    dxDBGrid1Lchannel_dtl: TdxDBGridLookupColumn;
    RadioGroup2: TRadioGroup;
    qrymate_id1: TIntegerField;
    qrymate_name1: TStringField;
    dxDBGrid3mate_name1: TdxDBGridColumn;
    qrymaterial_code: TStringField;
    Shape7: TShape;
    Edit4: TEdit;
    Label25: TLabel;
    brokermedCf1: TBooleanField;
    dxDBGrid1Cf1: TdxDBGridCheckColumn;
    qryCf1: TBooleanField;
    dxDBGrid3Cf1: TdxDBGridCheckColumn;
    Edit1: TEdit;
    Edit3: TEdit;
    brokermedmodify_dt: TDateTimeField;
    brokermedmodify_by: TIntegerField;
    brokermedmodifier: TStringField;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbrokermedDataChange(Sender: TObject; Field: TField);
    procedure brokermedBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brokermedReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1leaderButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure brokermedtlAfterPost(DataSet: TDataSet);
    procedure brokermedtlBeforePost(DataSet: TDataSet);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure brokermedAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure brokermedtlBeforeDelete(DataSet: TDataSet);
    procedure brokermedCalcFields(DataSet: TDataSet);
    procedure brokermedtlCalcFields(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure brokermedBeforeEdit(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid3CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dxButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure brokermedBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbrokermedtl: Tsetbrokermedtl;

implementation

uses datamodu, Unit7, Unit28, Unit28a, Unit16, Unit16a;

{$R *.DFM}

procedure Tsetbrokermedtl.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetbrokermedtl.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(主表)1.xls', dxDBGrid1.SaveToXLS, self.tag);
if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(明细)1.xls', dxDBGrid3.SaveToXLS, self.tag);
end;

procedure Tsetbrokermedtl.DSbrokermedDataChange(Sender: TObject;
  Field: TField);
begin
with brokermed do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
    speedbutton4.enabled:=(active) and (recordcount>0);
    if (active) and (recordcount>0) then
    begin
        dxButtonEdit5.text:=fieldbyname('broker').asstring;
        dxButtonEdit5.tag:=fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxButtonEdit5.text:='';
        dxButtonEdit5.tag:=0;
        if brokermedtl.active then close;
        exit;
    end;
end;
if brokermed.fieldbyname('rec_id').asinteger=0 then exit;
with brokermedtl do
begin
    if tag=brokermed.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    commandtext:='select a.rec_id,a.sta_id,broker=b.zname,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.rate,a.rela_id,';
    commandtext:=commandtext+' a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+' from tb_brokermedtl a';
    commandtext:=commandtext+' left join tb_staff b on a.sta_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+' where a.rela_id='+brokermed.fieldbyname('rec_id').asstring;
edit2.text:=commandtext;
    open;
    tag:=brokermed.fieldbyname('rec_id').asinteger;
end;
{
with brokermed do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
    speedbutton4.enabled:=(active) and (recordcount>0);
    if (active) and (recordcount>0) then
    begin
        dxButtonEdit5.text:=fieldbyname('broker').asstring;
        dxButtonEdit5.tag:=fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxButtonEdit5.text:='';
        dxButtonEdit5.tag:=0;
        if brokermedtl.active then close;
        exit;
    end;
end;
if brokermed.fieldbyname('rec_id').asinteger=0 then exit;
with brokermedtl do
begin
    if tag=brokermed.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    commandtext:='select a.rec_id,a.sta_id,broker=b.zname,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.rate,a.rela_id,';
    commandtext:=commandtext+' a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+' from tb_brokermedtl a';
    commandtext:=commandtext+' left join tb_staff b on a.sta_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+' where a.rela_id='+brokermed.fieldbyname('rec_id').asstring;
edit2.text:=commandtext;    
    open;
    tag:=brokermed.fieldbyname('rec_id').asinteger;
end;
}
end;

procedure Tsetbrokermedtl.brokermedBeforeDelete(DataSet: TDataSet);
begin
if brokermed.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置规则，不可删除');
if brokermed.fieldbyname('valid').asboolean then raise Exception.Create('本规则已启用，不可删除');
with dm.pubqry do
begin
    if active then close;
//    commandtext:='select top 1 1 from tb_bill_dtl where rule_id='+brokermed.fieldbyname('rec_id').asstring;
    commandtext:='select top 1 a.bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id<100 and a.bod_id=b.bod_id';
    commandtext:=commandtext+' and b.rule_id='+brokermed.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本成员规则已发生交易('+fieldbyname('bod_cd').asstring+'号单)，不可删除');
{
    if active then close;
    commandtext:='select top 1 1 from tb_brokermedtl where rela_id='+ brokermed.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本规则尚有明细规则，不可删除');
}
end;
if MessageBox(0,'确定删除本业务规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbrokermedtl.SpeedButton3Click(Sender: TObject);
var mi: integer;
    fa: boolean;
begin
fa:=ismanager(curuserid);
if PageControl1.ActivePage=TabSheet1 then
begin
    with brokermed do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end else mi:=0;
        with brokermedtl do
        begin
            if active then close;
            tag:=0;
        end;
//        commandtext:='select price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt), a.*,leader=dbo.fn_staff_name(a.lead_id),leader1=dbo.fn_staff_name(k.sta_id),b.material_code,b.material_code1,';
        commandtext:='select a.*,leader=dbo.fn_staff_name(a.lead_id),leader1=dbo.fn_staff_name(k.sta_id),b.material_code,b.material_code1,';  // 中标价 price1 已有tr_brokermed获取  price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),
        commandtext:=commandtext+' b.med_code,b.med_name,b.specifi,b.pdt_place,med_unit=c.zdesc,b.qtyperpack,b.qtyperbox,';
//        commandtext:=commandtext+' f.check_dt,stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getfeerate1(d.district,a.med_id,a.price1),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),
//        commandtext:=commandtext+' f.check_dt,stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getprice0a(e.district,a.med_id,a.valid_dt),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),
        commandtext:=commandtext+' f.check_dt,stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getrate2(a.channel_id,a.channel_dtl_id,e.district,a.med_id,a.valid_dt),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),
//dbo].[fn_getrate2](@channel_id int,@channel_dtl_id int,@districtid int,@medid int,@dt smalldatetime)
        commandtext:=commandtext+' b.chm_name,med_type=dbo.fn_med_type(b.med_id),broker=d.zname,e.mate_name,e.trusted,creater=g.zname,modifier=i.zname,e.district,dist_name=dbo.fn_getdistrictname (e.district,1)+'' ''+dbo.fn_getdistrictname (e.district,2),'; //dbo.fn_getdistrict(e.district),';
        commandtext:=commandtext+' f1=dbo.fn_getsysrulef1(a.mate_id,a.med_id,a.valid_dt),f2=dbo.fn_getsysrulef1a(a.mate_id,a.med_id)';
        commandtext:=commandtext+' ,mate_name1=h.mate_name,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
        commandtext:=commandtext+' from tb_brokermed a';
        commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
        commandtext:=commandtext+' left join tb_staff d on a.sta_id=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
        commandtext:=commandtext+' left join tb_busimate h on a.mate_id1=h.mate_id';
        commandtext:=commandtext+' left join tb_staff g on a.creat_by=g.sta_id';
        commandtext:=commandtext+' left join tb_staff i on a.modify_by=i.sta_id';
        commandtext:=commandtext+' left join (select b.med_id,check_dt=max(a.check_dt) from tb_bill a,tb_bill_dtl b where a.bod_type_id=20 and a.bod_status_id=1 and a.bod_id=b.bod_id group by b.med_id) f on a.rec_id=f.med_id';
        if Trim(dxButtonEdit6.text)='' then commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt)'
            else commandtext:=commandtext+' inner join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt)';
    {
        if Trim(dxButtonEdit6.text)='' then commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (e.district,a.med_id,getdate())'
            else commandtext:=commandtext+' inner join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (e.district,a.med_id,getdate())';
    }    
        commandtext:=commandtext+' where 1=1'; //a.comp_id='+inttostr(compid);
        if not dxCheckEdit3.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    //    commandtext:=commandtext+'  and form_id='+inttostr(RadioGroup2.ItemIndex+1);
    ////    if fa then commandtext:=commandtext+' and a.lead_id='+inttostr(curuserid); //区域经理 可查看本人规则
        if dxCheckEdit1.Checked then
        begin
            if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
            if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    //        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit3.tag);
            if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.sta_id='+inttostr(dxButtonEdit4.tag);
            if Trim(dxButtonEdit6.text)<>'' then commandtext:=commandtext+' and k.sta_id='+inttostr(dxButtonEdit6.tag);
            if Trim(dxButtonEdit7.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit7.tag);
            if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (b.qry_code like ''%'+trim(dxEdit1.text)+'%'' or b.med_name like ''%'+trim(dxEdit1.text)+'%'' or b.chm_name like ''%'+trim(dxEdit1.text)+'%'')';
            if dxCheckEdit2.Checked then commandtext:=commandtext+' and valid=1';
            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and e.district like '''+dm.district.fieldbyname('code').asstring+'%''';
//            if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and e.district in (select rec_id from tb_treedata where rec_id='+dm.district.fieldbyname('rec_id').asstring+' or parent= '+dm.district.fieldbyname('rec_id').asstring+')';
        end;
//        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=e.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';

        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    //    commandtext:=commandtext+' order by b.med_code,d.zname,e.mate_name';
edit1.text:=commandtext;    
        try
            setprogress(1);
            open;
            if (active) and (mi>0) then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else
begin
    with qry do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
//        commandtext:='select price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),f1=a.rate1,rate1=i.rate,rate2=cast(case when isnull(a.price1,0)=0 then 0 else 100.00*i.rate/a.price1 end as decimal(10,2)),';
        commandtext:='select f1=a.rate1,rate1=i.rate,rate2=cast(case when isnull(a.price1,0)=0 then 0 else 100.00*i.rate/a.price1 end as decimal(10,2)),'; // // 中标价 price1 已有tr_brokermed获取  price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),
//        commandtext:='select f1=a.rate1,rate1=i.rate,rate2=cast(case when isnull(a.rate,0)=0 then 0 else 100.00*i.rate/a.rate end as decimal(10,2)),';
        commandtext:=commandtext+' a.*,leader=dbo.fn_staff_name(a.lead_id),leader1=dbo.fn_staff_name(k.sta_id),b.med_code,b.material_code,b.material_code1,b.med_name,b.specifi,b.pdt_place,med_unit=c.zdesc,b.qtyperpack,b.qtyperbox,';
//        commandtext:=commandtext+' stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getprice0a(e.district,a.med_id,a.valid_dt),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),
        commandtext:=commandtext+' stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getrate2(a.channel_id,a.channel_dtl_id,e.district,a.med_id,a.valid_dt),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),

//        commandtext:=commandtext+' stoper=dbo.fn_staff_name(a.stop_by),price0=dbo.fn_getfeerate1(d.district,a.med_id,a.price1),fee1=0.0000,'; //dbo.fn_gettrustfee1(a.mate_id,a.med_id,a.price1),
        commandtext:=commandtext+' b.chm_name,med_type=dbo.fn_med_type(b.med_id),broker=d.zname,e.mate_name,e.trusted,creater=g.zname,e.district,dist_name=dbo.fn_getdistrictname (e.district,1)+'' ''+dbo.fn_getdistrictname (e.district,2),'; //dist_name=dbo.fn_getdistrict(e.district),';
//        commandtext:=commandtext+' f1=dbo.fn_getsysrulef1(a.mate_id,a.med_id,a.valid_dt),';
        commandtext:=commandtext+' a.mate_id1,mate_name1=h.mate_name,sta_id1=i.sta_id,broker1=dbo.fn_staff_name(i.sta_id),i.fee_type_id,feetype=dbo.fn_obj_desc(i.fee_type_id)';
        commandtext:=commandtext+' from tb_brokermed a';
        commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
        commandtext:=commandtext+' left join tb_staff d on a.sta_id=d.sta_id';
        commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
        commandtext:=commandtext+' left join tb_staff g on a.creat_by=g.sta_id';
        commandtext:=commandtext+' left join tb_busimate h on a.mate_id1=h.mate_id';
        commandtext:=commandtext+' inner join tb_brokermedtl i on a.rec_id=i.rela_id';

        if Trim(dxButtonEdit6.text)='' then commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt)'
            else commandtext:=commandtext+' inner join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid5(e.district,a.med_id,a.mate_id,a.valid_dt)';
    {
        if Trim(dxButtonEdit6.text)='' then commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (e.district,a.med_id,getdate())'
            else commandtext:=commandtext+' inner join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (e.district,a.med_id,getdate())';
    }    
        commandtext:=commandtext+' where 1=1'; //a.comp_id='+inttostr(compid);
        if not dxCheckEdit3.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    //    commandtext:=commandtext+'  and form_id='+inttostr(RadioGroup2.ItemIndex+1);
    ////    if fa then commandtext:=commandtext+' and a.lead_id='+inttostr(curuserid); //区域经理 可查看本人规则
        if dxCheckEdit1.Checked then
        begin
            if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
            if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    //        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit3.tag);
            if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.sta_id='+inttostr(dxButtonEdit4.tag);
            if Trim(dxButtonEdit6.text)<>'' then commandtext:=commandtext+' and k.sta_id='+inttostr(dxButtonEdit6.tag);
            if Trim(dxButtonEdit7.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit7.tag);
            if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (b.qry_code like ''%'+trim(dxEdit1.text)+'%'' or b.med_name like ''%'+trim(dxEdit1.text)+'%'' or b.chm_name like ''%'+trim(dxEdit1.text)+'%'')';
            if dxCheckEdit2.Checked then commandtext:=commandtext+' and valid=1';
            if Trim(dxLookupTreeView1.text)<>'' then
            begin
    {
                if RadioGroup1.ItemIndex=0
                    then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
                    else commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    }                
                commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            end;
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    //    commandtext:=commandtext+' order by b.med_code,d.zname,e.mate_name';
    edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
            if (active) and (mi>0) then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
end;

procedure Tsetbrokermedtl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbrokermedtl.brokermedReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetbrokermedtl.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetbrokermedtl.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetbrokermedtl.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetbrokermedtl.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;

procedure Tsetbrokermedtl.dxDBGrid1leaderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (brokermed.state in [dsinsert,dsedit]) then brokermed.edit;
    if showmodal= mrOK then
    begin
        brokermed.fieldbyname('lead_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        brokermed.fieldbyname('lead_name').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        brokermed.fieldbyname('lead_id').asinteger:=0;
        brokermed.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsetbrokermedtl.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with brokermed do
    if active then close;
with brokermedtl do
    if active then close;
with qry do if active then close;
with type3 do if active then close;
with dm.fee_type do
    if active then
    begin
        if state in [dsinsert,dsedit] then post;
        close;
    end;
with price_type do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetbrokermedtl.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbrokermedtl.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('查询关键字', '请输入', NewString);
if ClickedOK then
    with dxdbgrid1 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure Tsetbrokermedtl.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbrokermedtl.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1creat_by.visible:=False;
//dxDBGrid1rec_id.visible:=False;
dxDBGrid1med_id.visible:=False;
dxDBGrid1sta_id.visible:=False;
dxDBGrid1district.visible:=False;
setprogress(0);
end;

procedure Tsetbrokermedtl.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1creat_by.visible:=False;
//dxDBGrid1rec_id.visible:=False;
dxDBGrid1med_id.visible:=False;
dxDBGrid1district.visible:=False;
end;

procedure Tsetbrokermedtl.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with dm.fee_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=9';
        open;
    end;
{
with price_type do
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''原省中标价'' union select obj_id=2,zdesc=''现省中标价'' union select obj_id=3,zdesc=''全军统筹中标价'' union select obj_id=4,zdesc=''地方军区中标价'' union select obj_id=5,zdesc=''新农合中标价'' union select obj_id=6,';
        commandtext:=commandtext+' zdesc=''自主定价'' union select obj_id=7,zdesc=''集采中标价''';
        open;
    end;
with type3 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''已办个户'' union select obj_id=2,zdesc=''不办个户'' union select obj_id=3,zdesc=''已办个户不交资料'' union select obj_id=4,zdesc=''不办个户不交资料''';
//        1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        open;
    end;
}
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12'; // and a.comp_id='+inttostr(compid);
        open;
    end;
end;

procedure Tsetbrokermedtl.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
with brokermed do
begin
    if (active=false) or (recordcount=0) then exit;
    if fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可加入');
end;
if dxButtonEdit5.tag=0 then raise Exception.Create('请选择业务成员');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_brokermedtl where rela_id='+brokermed.fieldbyname('rec_id').asstring+' and mate_id='+brokermed.fieldbyname('mate_id').asstring;
    commandtext:=commandtext+' and sta_id='+inttostr(dxButtonEdit5.tag)+' and med_id='+brokermed.fieldbyname('med_id').asstring;
//edit2.text:=commandtext;    
    open;
    if recordcount>0 then raise Exception.Create('本组已有该业务成员，不可重复设置');
    if active then close;
    commandtext:='insert into tb_brokermedtl (sta_id,mate_id,med_id,rela_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit5.tag)+','+brokermed.fieldbyname('mate_id').asstring+','+brokermed.fieldbyname('med_id').asstring+',';
    commandtext:=commandtext+brokermed.fieldbyname('rec_id').asstring+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    brokermedtl.tag:=0; // can refresh
    DSbrokermedDataChange(nil,nil);
    if mi>0 then brokermedtl.locate('rec_id',mi,[]);
end;
end;

procedure Tsetbrokermedtl.brokermedtlAfterPost(DataSet: TDataSet);
begin
if brokermedtl.ChangeCount>0 then myupdaterefresh(brokermedtl,'tb_brokermedtl','rec_id','');
with brokermed do
    if (active) and (recordcount>0)
        then refreshmyrecord(brokermed,dm.Refreshcds,0,'a.rec_id',brokermed.fieldbyname('rec_id').asinteger);
//refresh tb_brokermed.rate
end;

procedure Tsetbrokermedtl.brokermedtlBeforePost(DataSet: TDataSet);
begin
with brokermedtl do
begin
    if fieldbyname('fee_type_id').asinteger=0 then raise Exception.Create('请选择费用类别');
//    if fieldbyname('rate').asfloat=0 then raise Exception.Create('请输入费用');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

procedure Tsetbrokermedtl.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;
end;

procedure Tsetbrokermedtl.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.DataSource:=(Sender as TdxDBGrid).DataSource;
end;

procedure Tsetbrokermedtl.brokermedAfterPost(DataSet: TDataSet);
begin
if brokermed.ChangeCount>0 then
begin
    myupdaterefresh(brokermed,'tb_brokermed','rec_id','');
//    refreshmyrecord(brokermed,dm.Refreshcds,0,'a.rec_id',brokermed.fieldbyname('rec_id').asinteger);
end;
end;

procedure Tsetbrokermedtl.SpeedButton1Click(Sender: TObject);
var mi: integer;
begin
//if dxButtonEdit3.tag=0 then raise Exception.Create('请选择业务主管');
if dxButtonEdit7.tag=0 then raise Exception.Create('请选择商业公司');
if dxButtonEdit4.tag=0 then raise Exception.Create('请选择业务员');
if dxButtonEdit1.tag=0 then raise Exception.Create('请选择品种');
if dxButtonEdit2.tag=0 then raise Exception.Create('请选择医院');
//if dxPickEdit1.text='' then raise Exception.Create('请选择中标价类别');
//if brokermed.active then showmessage('open') else showmessage('closed');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 stop_yn,trusted from tb_busimate where mate_id='+inttostr(dxbuttonedit2.tag); //+' and stop_yn=1';
    open;
    if fieldbyname('stop_yn').asboolean then
    begin
        MessageBox(0,pchar('该医院已停用，不可加入费用规则表'),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if fieldbyname('stop_yn').asboolean then MessageBox(0,pchar('该医院为托管医院'),'请注意',MB_OK+MB_ICONInformation);
{
    if recordcount>0 then
    begin
        MessageBox(0,pchar('该医院已停用，不可加入费用规则表'),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
}
{
    if active then close;
    commandtext:='select top 1 1 from tb_brokermed where mate_id='+inttostr(dxbuttonedit2.tag)+' and mate_id1='+inttostr(dxbuttonedit7.tag)+' and med_id='+inttostr(dxbuttonedit1.tag);
//    commandtext:='select top 1 1 from tb_brokermed where comp_id='+inttostr(compid)+' and mate_id='+inttostr(dxbuttonedit2.tag)+' and med_id='+inttostr(dxbuttonedit1.tag);
    commandtext:=commandtext+' and valid=1';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('该规则已设置，不可重复设置'),'请注意',MB_OK+MB_ICONError);
//        MessageBox(0,pchar('该规则已设置，不可再次设置'),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
}
{
    if active then close;
    commandtext:='select dbo.fn_getbidprice8('+inttostr(dxbuttonedit2.tag)+','+inttostr(dxbuttonedit1.tag)+','+inttostr(dxPickEdit1.itemindex+1)+')';
//    commandtext:='select dbo.fn_getbidprice('+inttostr(dxbuttonedit2.tag)+','+inttostr(dxbuttonedit1.tag)+')';
    open;
    if (recordcount=0) or (fields[0].asfloat=0) then
    begin
        MessageBox(0,pchar('该医院品种尚未设置此类中标价，请先设置'),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
}
    if MessageBox(0,'确定加入此业务员规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    if active then close;
    commandtext:='insert into tb_brokermed (valid,comp_id,sta_id,mate_id,mate_id1,med_id,price1,price_type_id,creat_by,creat_dt) values'; // lead_id, price1:中标价
    commandtext:=commandtext+' (0,'+inttostr(compid)+','+inttostr(dxbuttonedit4.tag)+',';  //+inttostr(dxbuttonedit3.tag)+','
    commandtext:=commandtext +inttostr(dxbuttonedit2.tag)+','+inttostr(dxbuttonedit7.tag)+','+inttostr(dxbuttonedit1.tag)+',';
    commandtext:=commandtext +'dbo.fn_getbidprice8('+inttostr(dxbuttonedit2.tag)+','+inttostr(dxbuttonedit1.tag)+','+inttostr(dxPickEdit1.itemindex+1)+'),';
    commandtext:=commandtext +inttostr(dxPickEdit1.itemindex+1)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
end;
with brokermed do
begin
    if PageControl1.ActivePage<>TabSheet1 then PageControl1.ActivePage:=TabSheet1;
    SpeedButton3Click(nil);
    if mi>0 then locate('rec_id',mi,[]);
end;
end;

procedure Tsetbrokermedtl.brokermedtlBeforeDelete(DataSet: TDataSet);
begin
//if brokermedtl.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置规则，不可删除');
//if brokermed.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 a.bod_cd from tb_bill a,tb_bill_stadtl c where a.bod_type_id<100 and a.bod_id=c.bod_id';
    commandtext:=commandtext+' and c.rule_id='+brokermedtl.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本成员规则已发生交易('+fieldbyname('bod_cd').asstring+'号单)，不可删除');
end;
if MessageBox(0,'确定删除本业务成员规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbrokermedtl.brokermedCalcFields(DataSet: TDataSet);
begin
with brokermed do
begin
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
{
    case RadioGroup2.ItemIndex of
        0:  begin
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
            end;
        1:  begin
                if (fieldbyname('price4').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price4').asfloat;
            end;
        2:  begin
                if (fieldbyname('price5').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price5').asfloat;
            end;
        3:  begin
                if (fieldbyname('price6').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price6').asfloat;
            end;
        4:  begin
                if (fieldbyname('price7').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price7').asfloat;
            end;
    end;
}
    fieldbyname('cfee1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('rate1').asfloat/100;
//    fieldbyname('cfee1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('f1').asfloat/100;
//    fieldbyname('cfee1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('f2').asfloat/100;
//    if (ANode.Values[dxDBGrid1rate1.Index] +ANode.Values[dxDBGrid1Crate.Index]>ANode.Values[dxDBGrid1price0.Index]) then
    // 医院托管结算率 + 比率% > 标准政策
    fieldbyname('cf1').asboolean:=fieldbyname('rate1').asfloat+fieldbyname('Crate').asfloat>fieldbyname('price0').asfloat; //用于标识费用栏颜色
end;
end;

procedure Tsetbrokermedtl.brokermedtlCalcFields(DataSet: TDataSet);
begin
if (brokermed.active=false) or (brokermed.recordcount=0) then
begin
    brokermedtl.fieldbyname('crate').asfloat:=0;
    exit;
end;
with brokermedtl do
begin
    if brokermed.fieldbyname('price1').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price1').asfloat;
{
    if brokermed.fieldbyname('rate').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('rate').asfloat;



    case RadioGroup2.ItemIndex of
        0:  begin
                if brokermed.fieldbyname('price1').asfloat=0
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price1').asfloat;
            end;
        1:  begin
                if brokermed.fieldbyname('price4').asfloat=0
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price4').asfloat;
            end;
        2:  begin
                if brokermed.fieldbyname('price5').asfloat=0
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price5').asfloat;
            end;
        3:  begin
                if brokermed.fieldbyname('price6').asfloat=0
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price6').asfloat;
            end;
        4:  begin
                if brokermed.fieldbyname('price7').asfloat=0
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/brokermed.fieldbyname('price7').asfloat;
            end;
    end;
}
end;
end;

procedure Tsetbrokermedtl.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,r,i1,i2,i3,i4,i5,i6,m1,m2,m3 : integer;
    s,t: string;
    mcd: string[20];
begin
if (brokermed.active=false) or (brokermed.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
l := dxDBGrid1.ColumnByFieldName('rate').Index;
k := dxDBGrid1.ColumnByFieldName('creat_by').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
o := dxDBGrid1.ColumnByFieldName('broker').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
r := dxDBGrid1.ColumnByFieldName('price1').Index;
i1:= dxDBGrid1.ColumnByFieldName('med_id').Index;
i2:= dxDBGrid1.ColumnByFieldName('district').Index;
i3:= dxDBGrid1.ColumnByFieldName('price0').Index;
i4:= dxDBGrid1.ColumnByFieldName('rate').Index;
i5:= dxDBGrid1.ColumnByFieldName('Cfee1').Index;
i6:= dxDBGrid1.ColumnByFieldName('med_id').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if (dxDBGrid1.SelectedNodes[i].Values[i3]>0) and (dxDBGrid1.SelectedNodes[i].Values[i4]+dxDBGrid1.SelectedNodes[i].Values[i5]>dxDBGrid1.SelectedNodes[i].Values[i3]) then
    begin
        if isaccounter(curuserid)=False then MessageBox(0,pchar('所选记录中有费用与托管费之和超过费用政策'),'请注意',MB_OK+MB_IconError);
//raise Exception.Create('所选记录中有费用与托管费之和超过费用政策，不可申请启用');
    end;
    if i=0 then
    begin
        m1:=dxDBGrid1.SelectedNodes[i].Values[i1];
//        m2:=dxDBGrid1.SelectedNodes[i].Values[i2];
        if dxDBGrid1.SelectedNodes[i].Strings[i2]='' then m2:=0 else m2:=dxDBGrid1.SelectedNodes[i].Values[i2];
        m3:=dxDBGrid1.SelectedNodes[i].Values[i6];
    end
    else
    begin
        if m1<>dxDBGrid1.SelectedNodes[i].Values[i1] then raise Exception.Create('同一申请中，品种应相同');
//        if m2<>dxDBGrid1.SelectedNodes[i].Values[i2] then raise Exception.Create('同一申请中，区域应相同');
        if m3<>dxDBGrid1.SelectedNodes[i].Values[i6] then raise Exception.Create('同一申请中，业务员应相同');
    end;
    if (isaccounter(curuserid)=False) and (dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid) then raise Exception.Create('所选记录中有非本人设置规则，不可启用');
//    if dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid then raise Exception.Create('所选记录中有非本人设置规则，不可启用');
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    if dxDBGrid1.SelectedNodes[i].Values[r]=0 then raise Exception.Create('所选记录中有无中标价记录，不可申请');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 3 b.valid_dt from (select top 1 dt=dateadd(month,1,cast(str([year],4)+''-''+str([month],2)+''-1'' as datetime)) from tb_settlelist where type_id=2 and settled=1 order by year desc,month desc) a,';
    commandtext:=commandtext+' (select b.valid_dt from tb_brokermed b where b.rec_id in ('+t+')) b';
    commandtext:=commandtext+' where b.valid_dt<a.dt';   //a.type_id=2 商业结算
{
    commandtext:='select top 3 mate_name=dbo.fn_mate_name(b.mate_id) from tb_settlelist a,(select b.mate_id,b.valid_dt,c.district from tb_brokermed b,tb_busimate c where b.rec_id in ('+t+') and b.mate_id=c.mate_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year(b.valid_dt) and month=month(b.valid_dt)';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
}
edit4.Text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列启用日期年月已结账，不可申请'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('valid_dt').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;

    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=20 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,20)); //bod_type_id=20: 业务员规则申请单
with dm.pubqry do
begin
    setprogress(1);
    if active then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,broker_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',20,0,'+inttostr(brokermed.fieldbyname('sta_id').asinteger)+','+inttostr(curuserid)+',getdate())';  //cast(convert(char(10),getdate(),20) as datetime),
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price1,qty,valid_dt)';
//    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,rate,price1,qty,valid_dt';
    commandtext:=commandtext+' select '+inttostr(mi)+',a.rec_id,a.rate,price1=dbo.fn_getprice1(e.district,a.med_id,a.valid_dt),a.qty,a.valid_dt';
    commandtext:=commandtext+' from tb_brokermed a left join tb_busimate e on a.mate_id=e.mate_id where a.rec_id in ('+t+')';
    execute;
    if active then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号业务员规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbrokermedtl.brokermedBeforeEdit(DataSet: TDataSet);
begin
if brokermed.fieldbyname('valid').asboolean then raise Exception.Create('本规则已启用，不可更改');
if brokermed.state in [dsEdit,dsInsert] then brokermed.post;
end;

procedure Tsetbrokermedtl.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1valid) then
begin
    if (ANode.Values[dxDBGrid1valid.Index] = True) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1price0) or (AColumn = dxDBGrid1cfee1) or (AColumn = dxDBGrid1rate) then
begin
//    if (ANode.Strings[dxDBGrid1price0.Index] <>'') and (ANode.Values[dxDBGrid1rate.Index] +ANode.Values[dxDBGrid1fee1.Index]>ANode.Values[dxDBGrid1price0.Index]) then
//    if (ANode.Values[dxDBGrid1price0.Index] <>0) and (ANode.Values[dxDBGrid1rate.Index] +ANode.Values[dxDBGrid1Cfee1.Index]>ANode.Values[dxDBGrid1price0.Index]) then
    if (ANode.Strings[dxDBGrid1price0.Index] <>'') and (ANode.Values[dxDBGrid1rate.Index] +ANode.Values[dxDBGrid1Cfee1.Index]>ANode.Values[dxDBGrid1price0.Index]) then
    begin
        AColor := clred;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1rate) then
begin
//    if (ANode.Values[dxDBGrid1rate1.Index] +ANode.Values[dxDBGrid1Crate.Index]>ANode.Values[dxDBGrid1price0.Index]) then
    if (ANode.Values[dxDBGrid1Cf1.Index]=True) then
    // 医院托管结算率 + 比率% > 标准政策
    begin
        AColor := $00E3E3FF; //clred;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1f1) or (AColumn = dxDBGrid1f2) then
begin
    if (ANode.Values[dxDBGrid1f1.Index] <> ANode.Values[dxDBGrid1f2.Index]) then
    begin
        AColor := clyellow;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1trusted) then
begin
    if (ANode.Strings[dxDBGrid1trusted.Index] = 'True') then AColor := $00FFCEFF;
end;
}
end;

procedure Tsetbrokermedtl.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,mi,id1,id2,id3,id4,id5,id6,id7,id9: integer;
    rate: single;
    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    screen.cursor:=crhourglass;
//    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';
    j:=2; mi:=0;
    id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0;id7:=0;id9:=0; //第2行开始 每行一单
//导入Excel文件生成单据, 格式: 1申请摘要,2业务员(id2),3医院(id3),4药品编码(id4),5明细业务员(id5),6费用金额(rate),7中标价类别id7,8 生效日期,9 合规类型
    while (sheet.cells[j,2].text<>'') do
    begin
        with dm.pubqry do
        begin
{
            if active then close;
            if sheet.cells[j,1].text='' then id1:=0 else
            begin
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=0 and comp_id='+inttostr(compid)+' and zname ='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('sta_id').asinteger else id1:=0; //主管
            end;
}            
            if active then close;
            if sheet.cells[j,2].text='' then id2:=0 else
            begin
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=1 and comp_id='+inttostr(compid)+' and zname ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('sta_id').asinteger else id2:=0; //业务员
            end;
            if active then close;
            if sheet.cells[j,3].text='' then id3:=0 else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger else id3:=0; //客户/医院
            end;
            if active then close;
            if sheet.cells[j,4].text='' then id4:=0 else
            begin
                commandtext:='select top 1 med_id from tb_medicine where med_code ='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else id4:=0; //药品
            end;
            if active then close;
            if sheet.cells[j,5].text='' then id5:=0 else
            begin
                commandtext:='select top 1 sta_id from tb_staff where sta_type_id=1 and comp_id='+inttostr(compid)+' and zname ='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger else id5:=0; //明细业务员
            end;
            if sheet.cells[j,7].text='原省中标价' then id7:=1
            else if sheet.cells[j,7].text='现省中标价' then id7:=2
            else if sheet.cells[j,7].text='全军统筹中标价' then id7:=3
            else if sheet.cells[j,7].text='地方军区中标价' then id7:=4
            else if sheet.cells[j,7].text='新农合中标价' then id7:=5
            else if sheet.cells[j,7].text='自主定价' then id7:=6
            else if sheet.cells[j,7].text='集采中标价' then id7:=7
            else id7:=1;
            //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
            if (sheet.cells[j,9].text='已办个户') then id9:=1 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,9].text='不办个户') then id9:=2 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,9].text='已办个户不交资料') then id9:=3  //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,9].text='不办个户不交资料') then id9:=4; //、②不交资料、③不办个户+不交资料') then id6:=1

//导入Excel文件生成单据, 格式: 1主管(id1),2业务员(id2),3医院(id3),4药品编码(id4),5明细业务员(id5),6费用金额(rate),7中标价类别id7
{
            if id1=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得主管'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
}
            if id2=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得业务员'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
            if id3=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得医院'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
            if id4=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得药品'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
            if id5=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得明细业务员'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
            if cleardeli(sheet.cells[j,6].text)='' then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得费用金额'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
            dt:=0;
            if sheet.cells[j,8].text<>'' then
            try
                dt:=strtodatetime(Trim(sheet.cells[j,8].text));
            except
                dt:=0;
            end;
            if dt=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得启用日期'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
{
            if id9=0 then
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行未取得合规类型'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
            end;
}
            if active then close;
            commandtext:='select top 1 rec_id,valid,stop_yn from tb_brokermed where '; //lead_id='+inttostr(id1);    // comp_id='+inttostr(compid)+' and
            commandtext:=commandtext+' sta_id='+inttostr(id2)+' and mate_id='+inttostr(id3)+' and med_id='+inttostr(id4);
            commandtext:=commandtext+' and valid=1';
//            commandtext:=commandtext+' and isnull(valid,0)=0 and isnull(stop_yn,0)=0';
//edit2.text:=commandtext;
            open;
            if (recordcount=0) then
            begin
                if active then close;
                commandtext:='insert into tb_brokermed (comp_id,bod_desc,sta_id,mate_id,med_id,price1,price_type_id,type_id2,valid_dt,creat_by,creat_dt)'; //lead_id, price1为中标价  '+inttostr(id1)+',
                commandtext:=commandtext+' values ('+inttostr(compid)+','''+sheet.cells[j,1].text+''','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+',dbo.fn_getbidprice8('+inttostr(id3)+','+inttostr(id4)+','+inttostr(id7)+'),'+inttostr(id7)+','+inttostr(id9)+','''+datetimetostr(dt)+''','+inttostr(curuserid)+',getdate())';

                commandtext:=commandtext+' select @@identity';
                
                open;
                mi:=fields[0].asinteger;
                if active then close;
                commandtext:='insert into tb_brokermedtl (rela_id,sta_id,fee_type_id,rate,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id5)+',185,'+cleardeli(sheet.cells[j,6].text)+','+inttostr(curuserid)+',getdate())';
edit1.text:=commandtext;
                execute;
            end
            else
            begin
                MessageBox(0,pchar('第'+inttostr(j)+'行 重复导入(已有此有效规则)'),'请注意',MB_OK+MB_IconError);
                XL.Quit;
                abort;
//                if (fieldbyname('valid').asboolean=False) and (fieldbyname('stop_yn').asboolean=False) then //仅可修改未生效记录
//                begin
                    mi:=fieldbyname('rec_id').asinteger;
                    if active then close;
                    commandtext:='update tb_brokermed set bod_desc='''+sheet.cells[j,1].text+''',price1=dbo.fn_getbidprice8('+inttostr(id3)+','+inttostr(id4)+','+inttostr(id7)+'),price_type_id='+inttostr(id7)+',type_id2='+inttostr(id9)+',valid_dt='''+datetimetostr(dt)+'''';
                    commandtext:=commandtext+' where rec_id='+inttostr(mi);
edit1.text:=commandtext;
                    execute;
                    if active then close;
                    commandtext:='if exists (select 1 from tb_brokermedtl where rela_id='+inttostr(mi)+' and sta_id='+inttostr(id5)+')';
                    commandtext:=commandtext+' update tb_brokermedtl set rate='+cleardeli(sheet.cells[j,6].text)+',modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
                    commandtext:=commandtext+'  where rela_id='+inttostr(mi)+' and sta_id='+inttostr(id5);
                    commandtext:=commandtext+' else insert into tb_brokermedtl (rela_id,sta_id,fee_type_id,rate,creat_by,creat_dt)';
                    commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id5)+',185,'+cleardeli(sheet.cells[j,6].text)+','+inttostr(curuserid)+',getdate())';
    edit1.text:=commandtext;
                    execute;
//                end;
            end;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then brokermed.locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'已导入成功'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetbrokermedtl.SpeedButton5Click(Sender: TObject);
begin
with brokermed do
    if (active=False) or (recordcount=0) then exit;
//if (dxPickEdit1.Text='') or (dxPickEdit1.ItemIndex=-1) then raise Exception.Create('请选择中标价类别');
if MessageBox(0,Pchar('确定更新本表当前记录的中标价'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//if MessageBox(0,Pchar('确定更新本表当前记录的"'+dxPickEdit1.Text+'"'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_brokermed ';
    commandtext:=commandtext+' set price1=dbo.fn_getbidprice8(mate_id,med_id,'+inttostr(dxPickEdit1.itemindex+1)+'),price_type_id='+inttostr(dxPickEdit1.itemindex+1);
    commandtext:=commandtext+' where rec_id='+brokermed.fieldbyname('rec_id').asstring;
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
refreshmyrecord(brokermed,dm.Refreshcds,0,'a.rec_id',brokermed.fieldbyname('rec_id').asinteger);
//SpeedButton3Click(nil);
end;

procedure Tsetbrokermedtl.Button1Click(Sender: TObject);
begin
showmessage(dxPickEdit1.Text+':'+inttostr(dxPickEdit1.ItemIndex));
end;

procedure Tsetbrokermedtl.dxButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit6.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit6.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit6.text:='';
        dxbuttonedit6.tag:=0;
    end;
end;
end;

procedure Tsetbrokermedtl.qryCalcFields(DataSet: TDataSet);
begin
with dataset as TClientDataSet do
begin
    case RadioGroup2.ItemIndex of
        0:  begin
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
{
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate1').asfloat:=0
                    else fieldbyname('crate1').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('price1').asfloat;
}
            end;
        1:  begin
                if (fieldbyname('price4').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price4').asfloat;
{
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate1').asfloat:=0
                    else fieldbyname('crate1').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('price1').asfloat;
}
            end;
        2:  begin
                if (fieldbyname('price5').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price5').asfloat;
{
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate1').asfloat:=0
                    else fieldbyname('crate1').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('price1').asfloat;
}
            end;
        3:  begin
                if (fieldbyname('price6').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price6').asfloat;
{
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate1').asfloat:=0
                    else fieldbyname('crate1').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('price1').asfloat;
}
            end;
        4:  begin
                if (fieldbyname('price7').asfloat=0)
                    then fieldbyname('crate').asfloat:=0
                    else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price7').asfloat;
{
                if (fieldbyname('price1').asfloat=0)
                    then fieldbyname('crate1').asfloat:=0
                    else fieldbyname('crate1').asfloat:=100*fieldbyname('rate1').asfloat/fieldbyname('price1').asfloat;
}
            end;
    end;
    if brokermed.fieldbyname('rate').asfloat=0
        then fieldbyname('crate1').asfloat:=0
        else fieldbyname('crate1').asfloat:=fieldbyname('rate1').asfloat; //100*fieldbyname('rate1').asfloat/brokermed.fieldbyname('rate').asfloat;
    case fieldbyname('price_type_id').asinteger of
        1:  fieldbyname('Cpricetype').asstring:='原省中标价';
        2:  fieldbyname('Cpricetype').asstring:='现省中标价';
        3:  fieldbyname('Cpricetype').asstring:='全军统筹中标价';
        4:  fieldbyname('Cpricetype').asstring:='地方军区中标价';
        5:  fieldbyname('Cpricetype').asstring:='新农合中标价';
        6:  fieldbyname('Cpricetype').asstring:='自主定价';
        7:  fieldbyname('Cpricetype').asstring:='集采中标价';
    end;
    fieldbyname('cfee1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('f1').asfloat/100;
    case fieldbyname('type_id2').asinteger of  //1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
        1: fieldbyname('ctype2').asstring:='已办个户';
        2: fieldbyname('ctype2').asstring:='不办个户';
        3: fieldbyname('ctype2').asstring:='已办个户不交资料';
        4: fieldbyname('ctype2').asstring:='不办个户不交资料';
    end;
    fieldbyname('cf1').asboolean:=fieldbyname('rate1').asfloat+fieldbyname('Crate').asfloat>fieldbyname('price0').asfloat; //用于标识费用栏颜色
end;
end;

procedure Tsetbrokermedtl.dxDBGrid3CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid3valid) then
begin
    if (ANode.Values[dxDBGrid3valid.Index] = True) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
//if (AColumn = dxDBGrid3price0) or (AColumn = dxDBGrid3cfee1) or (AColumn = dxDBGrid3rate) then
if (AColumn = dxDBGrid3rate) then
begin
//    if (ANode.Strings[dxDBGrid1price0.Index] <>'') and (ANode.Values[dxDBGrid1rate.Index] +ANode.Values[dxDBGrid1fee1.Index]>ANode.Values[dxDBGrid1price0.Index]) then
    if (ANode.Values[dxDBGrid3price0.Index] <>0) and (ANode.Values[dxDBGrid3rate.Index] +ANode.Values[dxDBGrid3Cfee1.Index]>ANode.Values[dxDBGrid3price0.Index]) then
    begin
        AColor := $00E3E3FF; //clred;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid3trusted) then
begin
    if (ANode.Strings[dxDBGrid3trusted.Index] = 'True') then AColor := $00FFCEFF;
end;
}
if (AColumn = dxDBGrid3rate) then
begin
    if (ANode.Values[dxDBGrid3Cf1.Index]=True) then // 医院托管结算率 + 比率% > 标准政策
    begin
        AColor := $00E3E3FF;
    end;
end;
end;

procedure Tsetbrokermedtl.DSqryDataChange(Sender: TObject; Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetbrokermedtl.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
	speedbutton2.enabled:=(brokermed.active) and (brokermed.recordcount>0)
else
	speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tsetbrokermedtl.SpeedButton7Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    mi,J,m1,m2: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
//从第2行开始导入，格式: 1申请摘要, 2渠道名称, 3子渠道名称, 4业务员, 5商业公司, 6医院, 7关联编码, 8明细业务员, 9费用金额, 10医院托管结算率, 11启用日期
    mi:=0;j:=2;  //第1行开始 每行一单
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100),f11 varchar(100),';
    sql:=sql+' channel_id int,channel_dtl_id int,sta_id int,sta_id1 int,mate_id int,mate_id1 int,med_id int)';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11)';
    while (sheet.cells[j,2].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text);  //replace('123%','%','')
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text)+''','''+Trim(sheet.cells[j,8].text)+''','''+Trim(sheet.cells[j,9].text)+''',replace('''+Trim(sheet.cells[j,10].text)+''',''%'',''''),'''+Trim(sheet.cells[j,11].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
//从第2行开始导入，格式: 1申请摘要, 2渠道, 3子渠道, 4业务员, 5商业公司, 6医院, 7药品定价参考物料编码, 8明细业务员, 9费用金额, 10中标价, 11医院托管结算率, 12启用日期
//从第2行开始导入，格式: 1申请摘要, 2渠道名称, 3子渠道名称, 4业务员, 5商业公司, 6医院, 7关联编码, 8明细业务员, 9费用金额, 10医院托管结算率, 11启用日期
    sql:=sql+' select top 10 * from ( select top 5 info=''第''+line_no+''行 无渠道名称或数据无效'' from @tab a where a.f2='''' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.zdesc=a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无子渠道名称或数据无效'' from @tab a where a.f3='''' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.zdesc=a.f3)';
{
    sql:=sql+' select top 10 * from ( select top 5 info=''第''+line_no+''行 无渠道名称或数据无效'' from @tab a where a.f2='''' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.obj_code=a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无子渠道名称或数据无效'' from @tab a where a.f3='''' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.obj_code=a.f3)';
}
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无业务员或数据无效'' from @tab a where f4='''' or not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname =a.f4)';

    sql:=sql+' union all select top 5 ''第''+line_no+''行 无商业公司或数据无效'' from @tab a where f5='''' or not exists (select 1 from tb_busimate b where mate_type_id=2 and b.mate_name =a.f5)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无医院或数据无效'' from @tab a where f6='''' or not exists (select 1 from tb_busimate b where mate_type_id=1 and b.mate_name =a.f6)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无定价参考物料编码或数据无效'' from @tab a where f7='''' or not exists (select 1 from tb_medicine m where m.material_code1 =a.f7)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 明细业务员无效'' from @tab a where f8<>'''' and not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname =a.f8)';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无明细业务员或数据无效'' from @tab a where f8='''' or not exists (select 1 from tb_staff b where sta_type_id=1 and b.zname =a.f8)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无费用金额或数据无效'' from @tab a where f9='''' or try_cast(f9 as decimal(15,4)) is null';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行 无中标价或数据无效'' from @tab where f10='''' or try_cast(f10 as decimal(15,4)) is null';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无医院托管结算率或数据无效'' from @tab where f11<>'''' and try_cast(f11 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 医院托管结算率数据无效'' from @tab where f10<>'''' and try_cast(f10 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无启用日期或数据无效'' from @tab where f11='''' or try_cast(f11 as datetime) is null';
    sql:=sql+' ) a order by info';
//从第2行开始导入，格式: 1申请摘要, 2渠道名称, 3子渠道名称, 4业务员, 5商业公司, 6医院, 7关联编码, 8明细业务员, 9费用金额, 10医院托管结算率, 11启用日期
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit1.text:=commandtext;        
        open;
        setprogress(0);
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
        sql:=sql1;  //取前脚本
        sql:=sql+' update a set channel_id=b.obj_code,channel_dtl_id=c.obj_code,sta_id=d.sta_id,sta_id1=case when g.sta_id>0 then g.sta_id else d.sta_id end, mate_id1=e.mate_id,mate_id=f.mate_id,med_id=m.med_id';
        sql:=sql+' from @tab a';
        sql:=sql+' left join tb_object b on b.obj_type_id=11 and b.zdesc=a.f2';
        sql:=sql+' left join tb_object c on c.obj_type_id=12 and c.zdesc=a.f3';
{
        sql:=sql+' left join tb_object b on b.obj_type_id=11 and b.obj_code=a.f2';
        sql:=sql+' left join tb_object c on c.obj_type_id=12 and c.obj_code=a.f3';
}
        sql:=sql+' left join tb_staff d on d.sta_type_id=1 and d.zname =a.f4';
        sql:=sql+' left join tb_staff g on g.sta_type_id=1 and g.zname =a.f8';
        sql:=sql+' left join tb_busimate e on e.mate_type_id=2 and e.mate_name =a.f5';
        sql:=sql+' left join tb_busimate f on f.mate_type_id=1 and f.mate_name =a.f6';
        sql:=sql+' left join tb_medicine m on m.material_code =a.f7';
//        sql:=sql+' left join tb_medicine m on m.material_code1 =a.f7';

        sql:=sql+' declare @cnt1 int,@cnt2 int,@cnt3 int,@cnt4 int';
       
// 以下为 有主要数据 的 update tb_brokermed 价格类数据      2025.6.21 中标价 由设置中标价 中取出，不需导入
{
        sql:=sql+' update a set price1=cast(f10 as decimal(15,4))';
        sql:=sql+' from tb_brokermed a';
        sql:=sql+' inner join @tab k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'    and a.valid_dt=cast(k.f12 as datetime)'; // and rate1=cast(f11 as decimal(15,4))';
//        sql:=sql+'    and isnull(price1,0)<>cast(f10 as decimal(15,4))';
        sql:=sql+' where isnull(a.valid,0)=0 and isnull(price1,0)<>cast(f10 as decimal(15,4))'; //valid=1 已启用的不可更改
        sql:=sql+' set @cnt1=@@ROWCOUNT';
}
//从第2行开始导入，格式: 1申请摘要, 2渠道, 3子渠道, 4业务员, 5商业公司, 6医院, 7药品定价参考物料编码, 8明细业务员, 9费用金额, 10中标价, 11医院托管结算率, 12启用日期
//从第2行开始导入，格式: 1申请摘要, 2渠道名称, 3子渠道名称, 4业务员, 5商业公司, 6医院, 7关联编码, 8明细业务员, 9费用金额, 10医院托管结算率, 11启用日期
// 以下为 无主要数据 的 insert into tb_brokermed
        sql:=sql+' insert into tb_brokermed (comp_id,bod_desc,channel_id,channel_dtl_id,sta_id,mate_id1,mate_id,med_id,rate1,valid_dt,creat_by,creat_dt)';  //price1,
        sql:=sql+' select distinct comp_id=1,bod_desc=f1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.sta_id,';
        sql:=sql+' mate_id1=a.mate_id1,a.mate_id,a.med_id,rate1=case when f10='''' then 0 else cast(f10 as decimal(15,4)) end,valid_dt=cast(f11 as datetime),';   //price1=cast(f10 as decimal(15,4)),
        sql:=sql+' creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' where not exists (select 1 from tb_brokermed k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'       and k.valid_dt=cast(a.f11 as datetime) and isnull(k.valid,0)=0)';
{
        sql:=sql+' where not exists (select 1 from tb_brokermed k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'       and k.valid_dt=cast(a.f11 as datetime) and isnull(k.valid,0)=0)';
}
        sql:=sql+' set @cnt2=@@ROWCOUNT';

        // 以下为 有主数据 的 update tb_brokermed 单据摘要数据
        sql:=sql+' update k set bod_desc=a.f1, modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'       and k.valid_dt=cast(f11 as datetime) and isnull(k.valid,0)=0';
        sql:=sql+' where a.f1<>isnull(k.bod_desc,'''')';
        sql:=sql+' set @cnt3=@@ROWCOUNT';


        // 以下为 有明细数据 的 update tb_brokermedtl 价格类数据
        sql:=sql+' update b set rate=cast(a.f9 as decimal(15,4)), modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'       and k.valid_dt=cast(f11 as datetime) and isnull(k.valid,0)=0';
        sql:=sql+' inner join tb_brokermedtl b on k.rec_id=b.rela_id and b.sta_id=a.sta_id1';
        sql:=sql+' where isnull(b.rate,0)<>cast(a.f9 as decimal(15,4))';
        sql:=sql+' set @cnt3=isnull(@cnt3,0)+@@ROWCOUNT';

// 以下为 无明细数据 的 insert tb_brokermedtl
        sql:=sql+' insert into tb_brokermedtl (rela_id,sta_id,fee_type_id,rate,creat_by,creat_dt)';
        sql:=sql+' select rela_id=k.rec_id,sta_id=a.sta_id1,fee_type_id=185,rate=cast(f9 as decimal(15,4)),creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a inner join tb_brokermed k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.sta_id=a.sta_id and k.mate_id1=a.mate_id1 and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'      and k.valid_dt=cast(f11 as datetime) and isnull(k.valid,0)=0';
        sql:=sql+' where not exists (select 1 from tb_brokermedtl b where k.rec_id=b.rela_id and a.sta_id1=b.sta_id)';
        sql:=sql+' set @cnt4=@@ROWCOUNT';
        sql:=sql+' select isnull(@cnt1,0)+isnull(@cnt3,0),isnull(@cnt2,0)+isnull(@cnt4,0)';

        commandtext:=sql;
edit3.text:=commandtext;
        try
            setprogress(1);
            open;
            //showmessage(inttostr(recordcount));
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
        if m1+m2=0 then MessageBox(0,pchar('导入数据与主表及明细表数据一致'),'请注意',MB_OK+MB_ICONInformation)
        else
        begin
            SpeedButton3Click(nil);
            MessageBox(0,pchar('主表及明细表合计新增'+inttostr(m2)+'条记录,更新'+inttostr(m1)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
            if (m2>0) and (brokermed.active) then brokermed.Last;  //如有新增，locate到最后记录
        end;
{
        try
            setprogress(1);
            execute;
            setprogress(0);
            MessageBox(0,pchar('已导入数据，可刷新查看'),'请注意',MB_OK+MB_ICONInformation);
        finally
            setprogress(0);
        end;
}
    end;
end;

procedure Tsetbrokermedtl.dxButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit7.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit7.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit7.text:='';
        dxbuttonedit7.tag:=0;
    end;
end;

procedure Tsetbrokermedtl.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbrokermedtl.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetbrokermedtl.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetbrokermedtl.brokermedBeforePost(DataSet: TDataSet);
begin
with brokermed do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

end.
