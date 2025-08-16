unit Unit10e;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, wwclearbuttongroup, wwradiogroup,
  dxEditor, dxDBEdtr, Animate, GIFCtrl, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, Comobj;

type
  Tsetmedimport4a = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    dxDBGrid2specifi: TdxDBGridColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbillbod_status_id: TIntegerField;
    cdsbillbod_type_id: TIntegerField;
    cdsbillbusi_type: TIntegerField;
    cdsbillbod_amot: TBCDField;
    cdsbillcreat_by: TIntegerField;
    cdsbillcreat_dt: TDateTimeField;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillrelative_id: TIntegerField;
    cdsbillCbod_status: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillsettle_type: TIntegerField;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlqty: TBCDField;
    cdsbill_dtldiscount: TBCDField;
    cdsbill_dtlcost: TBCDField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbillprncount: TIntegerField;
    dxDateEdit1: TdxDateEdit;
    cdsbillbod_desc: TStringField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillbroker_id: TIntegerField;
    DBText14: TDBText;
    cdsbilldst_id: TIntegerField;
    cdsbill_dtlbat_cd: TStringField;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    Label13: TLabel;
    cdsbillcarry_dt: TDateTimeField;
    dxDBDateEdit1: TdxDBDateEdit;
    ADOQuery1: TADOQuery;
    dxDateEdit4: TdxDateEdit;
    cdsbillagent: TStringField;
    dxDBGrid2price1: TdxDBGridColumn;
    pickmedinfo: TClientDataSet;
    pickmedinfoqtyperbox: TBCDField;
    pickmedinfoqtyperpack: TBCDField;
    pickmedinfosite_code: TStringField;
    pickmedinfoprice: TBCDField;
    pickmedinfoqty: TBCDField;
    pickmedinfocontractprice: TBCDField;
    pickmedinfowholeprice: TBCDField;
    pickmedinfoquotaprice: TBCDField;
    pickmedinfobidprice: TBCDField;
    pickmedinfoagentprice: TBCDField;
    pickmedinfomemberprice: TBCDField;
    pickmedinfolow_limit_price: TBCDField;
    pickmedinfozstop_yn: TBooleanField;
    pickmedinfoprice1: TBCDField;
    DSpickmedinfo: TDataSource;
    Label23: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pubqry: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BCDField1: TBCDField;
    IntegerField7: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField8: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField9: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField10: TIntegerField;
    StringField7: TStringField;
    IntegerField11: TIntegerField;
    StringField8: TStringField;
    IntegerField12: TIntegerField;
    StringField9: TStringField;
    IntegerField13: TIntegerField;
    DateTimeField3: TDateTimeField;
    Label27: TLabel;
    pickmedinfoprice2: TBCDField;
    pickmedinfoprice3: TBCDField;
    cdsbilllevel_id1: TIntegerField;
    cdsbilllevel_id2: TIntegerField;
    cdsbilllevel_id3: TAutoIncField;
    cdsbillagent_id: TAutoIncField;
    cdsbillbroker: TStringField;
    Label20: TLabel;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    cdsbill_dtlvalid_dt: TDateTimeField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    cdsbill_dtllead_id: TAutoIncField;
    cdsbill_dtlleader: TStringField;
    cdsbill_dtlsta_id: TAutoIncField;
    cdsbill_dtlbroker: TStringField;
    cdsbillcate_id: TWordField;
    dxEdit1: TdxEdit;
    cdsbill_dtlbod_cd1: TStringField;
    cdsbillCcate: TStringField;
    Label16: TLabel;
    cdsbillcdistrict: TStringField;
    cdsbilldistrict_id: TIntegerField;
    DBText1: TDBText;
    Label17: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1mate_name2: TStringField;
    cdsbillmate_name1: TStringField;
    cdsbillmate_name2: TStringField;
    Label21: TLabel;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlprice2: TBCDField;
    dxDBGrid2price2: TdxDBGridColumn;
    TabSheet3: TTabSheet;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
    qryimage: TClientDataSet;
    qryimagerec_id: TAutoIncField;
    qryimagetype_id: TIntegerField;
    qryimageid: TIntegerField;
    qryimagezimage1: TBlobField;
    qryimagegraphclass1: TStringField;
    qryimagezimage2: TBlobField;
    qryimagegraphclass2: TStringField;
    qryimagezimage3: TBlobField;
    qryimagegraphclass3: TStringField;
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    DSqryimage: TDataSource;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    cdsbill_dtlCamot: TBCDField;
    dxDBGrid2Camot: TdxDBGridColumn;
    cdsbill_dtlamot1: TBCDField;
    dxDBGrid2amot1: TdxDBGridColumn;
    cdsbillzname1: TStringField;
    cdsbilladdress1: TStringField;
    cdsbillphone1: TStringField;
    cdsbillzname2: TStringField;
    cdsbilladdress2: TStringField;
    cdsbillphone2: TStringField;
    Label9: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    Label10: TLabel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label18: TLabel;
    DBText8: TDBText;
    cdsbillbod_cd1: TStringField;
    cdsbillbod_amot1: TBCDField;
    cdsbillfinished: TBooleanField;
    cdsbillbod_cd2: TStringField;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1finished: TdxDBGridCheckColumn;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
    dxDBGrid1bod_cd2: TdxDBGridColumn;
    Label82: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
    procedure cdsbill_dtlBeforePost(DataSet: TDataSet);
    procedure cdsbillBeforePost(DataSet: TDataSet);
    procedure cdsbillReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsbill_dtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsbill_dtlAfterInsert(DataSet: TDataSet);
    procedure cdsbill_dtlpriceChange(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit3Enter(Sender: TObject);
    procedure dxDBButtonEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBButtonEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit2AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit3AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit4AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit5AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1Change(Sender: TObject);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBGraphicEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryimageAfterPost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedimport4a: Tsetmedimport4a;

implementation

uses datamodu, Unit7, Unit28b, Unit16c, Unit16a, Unit9;

{$R *.DFM}

procedure Tsetmedimport4a.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
end;

procedure Tsetmedimport4a.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetmedimport4a.FormActivate(Sender: TObject);
begin
if (cdsbill.Active=True) and (fbodid>0) then cdsbill.Active:=False;
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetmedimport4a.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with cdsbill     do if active=true then close;
with cdsbill_dtl do if active=true then close;
with pickmedinfo do if active=true then close;
with dm.picmedinfoc do if active=true then close;
with qryimage do if active=true then close;
end;

procedure Tsetmedimport4a.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedimport4a.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedimport4a.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
    fmateid:=cdsbill.fieldbyname('dst_id').asinteger;
    with dxdbgrid2 do
    begin
        focusedcolumn := focusedcolumn+1;
        focusedcolumn := focusedcolumn-1;
    end;
    sk:=cdsbill_dtl.fieldbyname('Med_code').asstring;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickmedicine.query1 do
    begin
        if active=true then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY a.med_name,a.pdt_place,a.specifi,a.qtyperpack) as int),';
        commandtext:=commandtext+'  a.med_id,med_code,med_name,specifi,appv_docu,pdt_place,qtyperpack,qtyperbox,';
        commandtext:=commandtext+'  med_unit=dbo.fn_obj_desc(a.unit_id),med_type=dbo.fn_med_type(a.med_id),qty=0.0000,price=0.000000,qry_code';
        commandtext:=commandtext+' from tb_medicine a where 1=1';
//        commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
//        commandtext:=commandtext+' and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
//        if pickmedicine.tag=0 then commandtext:=commandtext+' and b.qty<>0';
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and (a.med_name like''%'+sk+'%'' or a.chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and a.qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by a.med_name,a.pdt_place,a.specifi,a.qtyperpack';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
        if recordcount=1 then
        begin
            with cdsbill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('med_id').asinteger:=pickmedicine.query1.FieldByName('med_id').asinteger;
                fieldbyname('med_code').asstring:=pickmedicine.query1.FieldByName('med_code').asstring;
                fieldbyname('med_name').asstring:=pickmedicine.query1.FieldByName('med_name').asstring;
                fieldbyname('specifi').asstring:=pickmedicine.query1.FieldByName('specifi').asstring;
                fieldbyname('pdt_place').asstring:=pickmedicine.query1.FieldByName('pdt_place').asstring;
                fieldbyname('med_unit').asstring:=pickmedicine.query1.FieldByName('med_unit').asstring;
            end;
        end
        else
        begin
            pickmedicine.edit1.text:= cdsbill_dtl.fieldbyname('med_code').asstring;
//            pickmedicine.label1.caption:= formatfloat('[#,###]',pickmedicine.query1.recordcount);
            if pickmedicine.showmodal= mrOK then
            begin
                if pickmedicine.query1.Active=true then
                begin
                    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
                    cdsbill_dtl.fieldbyname('med_id').asinteger:=pickmedicine.query1.FieldByName('med_id').asinteger;
                    cdsbill_dtl.fieldbyname('med_code').asstring:=pickmedicine.query1.FieldByName('med_code').asstring;
                    cdsbill_dtl.fieldbyname('med_name').asstring:=pickmedicine.query1.FieldByName('med_name').asstring;
                    cdsbill_dtl.fieldbyname('specifi').asstring:=pickmedicine.query1.FieldByName('specifi').asstring;
                    cdsbill_dtl.fieldbyname('pdt_place').asstring:=pickmedicine.query1.FieldByName('pdt_place').asstring;
                    cdsbill_dtl.fieldbyname('med_unit').asstring:=pickmedicine.query1.FieldByName('med_unit').asstring;
                end;
            end;
        end;
{
        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='sp_getleadbroker '+inttostr(compid)+','+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+','''+cdsbill.fieldbyname('carry_dt').asstring+'''';
edit2.text:=commandtext;            
            open;
            if (recordcount=0) or (Fields[0].asinteger=0) then raise Exception.Create('该商业公司与品种尚未设置业务规则');
            cdsbill_dtl.fieldbyname('sta_id').asinteger:=fieldbyname('broker_id').asinteger;
            cdsbill_dtl.fieldbyname('broker').asstring:=fieldbyname('broker').asstring;
            cdsbill_dtl.fieldbyname('lead_id').asinteger:=fieldbyname('lead_id').asinteger;
            cdsbill_dtl.fieldbyname('leader').asstring:=fieldbyname('leader').asstring;
        end;
}
    end;
end;
end;

procedure Tsetmedimport4a.dxDBGrid2Enter(Sender: TObject);
begin
//if cdsbill.fieldbyname('src_id').asinteger=0
// then raise Exception.Create('请先选择供应供应单位');
if cdsbill.fieldbyname('dst_id').asinteger=0
    then raise Exception.Create('请先选择商业公司');
with cdsbill_dtl do
    if (active=true) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetmedimport4a.FormKeyPress(Sender: TObject; var Key: Char);
//var fapp: boolean;
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol is Tdxdbgrid then
    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end;

procedure Tsetmedimport4a.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //可刷新
end;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,mate_name1=k.mate_name,mate_name2=c.mate_name,agent=f.mate_name,broker=g.zname,creater=d.zname,checker=e.zname,';
    commandtext:=commandtext+' c.zname1,c.address1,c.phone1,c.zname2,c.address2,c.phone2,cdistrict=dbo.fn_getdistrict(a.district_id),finished=dbo.fn_orderisfinished(a.bod_id),';
    commandtext:=commandtext+' bod_cd1=dbo.fn_getbodcdbyorderid(a.bod_id,42),bod_cd2=dbo.fn_getbodcdbyorderid(a.bod_id,40),bod_amot1=dbo.fn_getbodamotbyprice1(a.bod_id)';
//    commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(a.district_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate k on a.src_id =k.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.agent_id =f.mate_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id =g.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=39 and a.bod_status_id in (1,2)';
    if fbodid>0 then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
    begin
        commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd='''+Trim(dxEdit1.text)+'''';
//        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+Trim(dxEdit1.text)+'''';
    end;
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedimport4a.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedimport4a.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        dxDBEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        wwRadioGroup1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBLookupEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBButtonEdit3.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit4.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger in [1,2]);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid);
            //and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // 审核当天可反审
        SpeedButton6.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //审核 图章显示
        if state=dsbrowse then setunupdatestatus;
    end;
    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('bod_id').asinteger=0) then exit; // 查看”列表“时，不需显示明细数据
    with cdsbill_dtl do
        if tag<>cdsbill.fieldbyname('bod_id').asinteger then
            if cdsbill.RecordCount=0 then
            begin
                if active then close;
                tag:=0;
            end
            else
            begin
                if active then close;
                commandtext:='select amot1=cast(a.amot as decimal(15,2)),a.*,broker=d.zname,leader=e.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.qtyperpack,med_unit=c.zdesc,f.amot1';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
                commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id =d.sta_id';
                commandtext:=commandtext+' left join tb_staff e on a.lead_id =e.sta_id';
                commandtext:=commandtext+' left join (select b.rela_id1,amot1=cast(sum(amot) as decimal(15,2)) from tb_bill a,tb_bill_dtl b';
                commandtext:=commandtext+'      where a.bod_type_id=40 and a.bod_status_id=1 and a.bod_id=b.bod_id and a.order_id='+cdsbill.fieldbyname('bod_id').asstring+' group by b.rela_id1) f on a.dtl_id =f.rela_id1';
                commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
//                commandtext:=commandtext+' order by a.dtl_id';
                try
                    setprogress(1);
                    open;
                finally
                    setprogress(0);
                end;
                tag:=cdsbill.fieldbyname('bod_id').asinteger;
            end;
end;
end;

procedure Tsetmedimport4a.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var fapp: boolean;
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
{
    if shift=[ssctrl] then
    begin
        dxDBGrid2DblClick(self);  // ctrl+enter : 再次进入最近 pickmed_bat
        exit;
    end;
}
    with Tdxdbgrid(activecontrol) do
    begin
       if focusedcolumn=0 then
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('请选择品种');

       end;
       if focusedcolumn=7 then  // 输入完最后的字段的cursor控制
       begin
            fapp:=false;
            with cdsbill_dtl do
            begin
                if state in [dsinsert,dsedit] then post;
                disablecontrols;
                next;
                if eof then fapp:=true;
                prior;
                enablecontrols;
                if fapp then begin  cdsbill.edit; append; focusedcolumn := 0; key:=0; end // else next;
            end;
       end;
    end;
end;
end;

procedure Tsetmedimport4a.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport4a.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedimport4a.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('非本人新增单据，请勿更改');
end;
end;

procedure Tsetmedimport4a.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='部门申请';
        1: fieldbyname('cbod_status').asstring:='完成';
        2: fieldbyname('cbod_status').asstring:='采购审核';
    end;
{
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
        3: fieldbyname('ccate').asstring:='终端(战略)';
        4: fieldbyname('ccate').asstring:='终端(普通)';
    end;
}
end;
end;

procedure Tsetmedimport4a.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedimport4a.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('非本人制单或已审核单据，请勿更改');
end;

procedure Tsetmedimport4a.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('qty').asfloat=0)
        then raise Exception.Create('采购数量不可为零');
//    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
//        then raise Exception.Create('货品单价或数量不可为零');
end;
end;

procedure Tsetmedimport4a.cdsbillBeforePost(DataSet: TDataSet);
begin
with cdsbill do
begin
//    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('请选择供货单位');
//    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('请选择商业公司');
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('单据日期超出应结帐日期'+datetostr(settleday)+'，请核查');
end;
end;

procedure Tsetmedimport4a.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill:'+e.message);
end;

procedure Tsetmedimport4a.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('选择品种错误，错误品种记录已取消，请核查');
end;

procedure Tsetmedimport4a.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetmedimport4a.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetmedimport4a.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
if PageControl1.ActivePage=TabSheet3 then
begin
    with cdsbill do
        if (active=false) or (recordcount=0) then
        begin
            if qryimage.Active=True then qryimage.close;
            exit;
        end;
    with dm.pubqry do
    begin
        if active=true then close;
        commandtext:='if not exists (select 1 from tb_image where type_id=1 and id='+cdsbill.fieldbyname('bod_id').asstring+')';  //type_id=1:单据附带图片
        commandtext:=commandtext+' insert into tb_image (type_id,id) values (1,'+cdsbill.fieldbyname('bod_id').asstring+')';
        execute;
    end;
    if (qryimage.tag<>cdsbill.fieldbyname('bod_id').asinteger) then
    begin
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select top 1 * from tb_image where type_id=1 and id='+cdsbill.fieldbyname('bod_id').asstring;
            try
                setprogress(1);
                open;
            finally
                setprogress(0);
            end;
            if recordcount>0 then tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
    end;
end;
end;

procedure Tsetmedimport4a.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '完成') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetmedimport4a.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=2))
     or ((sender=N2) and (cdsbill.fieldbyname('bod_status_id').asinteger=1)) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=2))
         or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1)) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(已审核单据不可再审)');

//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id in ('+t+') and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('所选单据购货单位所在区域与年月已结账，不可审核或反审核');

    if sender= N1 then
    begin
        if not fcheckimp then //无审核他人单据权限
        begin
            if active=True then close;
            commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
            commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
            open;
            if recordcount>0 then
            begin
                MessageBox(0,pchar('所选单据中有非本人单据，不可审核'),'请注意',MB_OK+MB_IconError);
                abort;
            end;
        end;
        if active=True then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(dst_id,0)=0 or isnull(cate_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            first;
            s:='下列单据未选择商业公司或业务类别、发生日期，不可审核'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'单';
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active=true then close;
        commandtext:='select distinct top 5 a.bod_cd from tb_bill a,tb_bill_dtl b';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id';
        commandtext:=commandtext+'  and (a.busi_type=1 and b.qty<0 or a.busi_type=2 and b.qty>0)';
    //edit3.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='下列单据入库类别与品种数量正负不符，本单不可审核'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'单';
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
    if sender= N2 then //反审
    begin
{
        if active=True then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        if not fcheckimp then commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
        commandtext:=commandtext+' and creat_dt>='''+datetimetostr(curuserid)+''' and creat_dt<dateadd(day,1,'''+datetimetostr(dt0)+''')';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('所选单据中有非本人或非当日单据，不可反审核'),'请注意',MB_OK+MB_IconError);
            abort;
        end;
}
        if active=true then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_type_id=40 and order_id in ('+t+')';
        open;
        if recordcount>0 then raise Exception.Create('所选单据已生成了'+fieldbyname('bod_cd').asstring+'号收款单，不可反审');
        if active=True then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_type_id=42 and order_id in ('+t+')';
        open;
        if recordcount>0 then
        begin
            s:='所选单据已生成了下列两票销售/退货单，不可反审'+#13+#10+'------------------------------------------------';
            first;
            while not eof do
            begin
                s:=s+#13+#10+' '+fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
            abort;
        end;
    end;
    if sender= N1 then
        if MessageBox(0,'确定所选单据审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    if sender= N2 then
        if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    if active=true then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    open;
    if recordcount=0 then abort;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active=true then close;
                    if sender= N1 then commandtext:='sp_updatestock1 1,' +dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock1 -1,'+dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                next;
            end;
            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('所选单据已成功审核'),'请注意',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('所选单据已成功反审核'),'请注意',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'单据审核失败','请注意',MB_OK+MB_ICONERROR);
            if sender= N2 then MessageBox(0,'单据反审核失败','请注意',MB_OK+MB_ICONERROR);
        end;
    finally
        if active=true then close;
        setprogress(0);
    end;
end;
end;

procedure Tsetmedimport4a.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetmedimport4a.dxDBButtonEdit3Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetmedimport4a.dxDBButtonEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetmedimport4a.dxDBButtonEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickbroker1.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickbroker1.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedimport4a.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('agent_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('agent').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('agent_id').asinteger:= 0;
        cdsbill.fieldbyname('agent').asstring:= '';
    end;
end;
end;

procedure Tsetmedimport4a.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickagent.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickagent.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedimport4a.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxEdit1.SelectAll;
    dxEdit1.SetFocus;
end;
end;

procedure Tsetmedimport4a.dxEdit1Click(Sender: TObject);
begin
dxEdit1.SelectAll;
dxEdit1.SetFocus;
end;

procedure Tsetmedimport4a.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('src_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('src_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name1').asstring:= '';
    end;
end;
end;

procedure Tsetmedimport4a.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name2').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name2').asstring:= '';
    end;
end;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass1').asstring:=''
    else qryimage.fieldbyname('graphclass1').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass2').asstring:=''
    else qryimage.fieldbyname('graphclass2').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit3AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass3').asstring:=''
    else qryimage.fieldbyname('graphclass3').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit4AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass4').asstring:=''
    else qryimage.fieldbyname('graphclass4').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit5AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
if Picture.Graphic=nil then qryimage.fieldbyname('graphclass5').asstring:=''
    else qryimage.fieldbyname('graphclass5').asstring := Picture.Graphic.ClassName;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit1Change(Sender: TObject);
begin
setupdatestatus;
//cdsbill.edit;
end;

procedure Tsetmedimport4a.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetmedimport4a.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetmedimport4a.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetmedimport4a.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetmedimport4a.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetmedimport4a.dxDBGraphicEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) AND (Key=Ord('V')) then (Sender as TdxDBGraphicEdit).PasteFromClipboard;
if (ssCtrl in Shift) AND (Key=Ord('D')) then showpic((Sender as TdxDBGraphicEdit),qryimage); // difined in datamodu
if (ssCtrl in Shift) AND (Key=Ord('C')) then (Sender as TdxDBGraphicEdit).CopyToClipboard;
if (ssCtrl in Shift) AND (Key=Ord('S')) then (Sender as TdxDBGraphicEdit).DataSource.DataSet.AfterPost(nil);
if (ssCtrl in Shift) AND (Key=Ord('X')) then
begin
    (Sender as TdxDBGraphicEdit).CopyToClipboard;
    (Sender as TdxDBGraphicEdit).ClearPicture;
end;
end;

procedure Tsetmedimport4a.qryimageAfterPost(DataSet: TDataSet);
begin
qryimage.ApplyUpdates(-1);
end;

procedure Tsetmedimport4a.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'确定将本单送回制单人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //可以刷新
end;
cdsbill.delete; // 因送回后，cdsbill中不应包含此记录，故从cdsbill中delete，物理记录并未删除
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport4a.SpeedButton2Click(Sender: TObject);
begin
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where bod_type_id=40 and order_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount=0 then raise Exception.Create('本单尚未生成分销采购收款单，请先生成');
end;
}
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('无明细数据，不可送审核');
if MessageBox(0,'确定本单通过审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock39 39,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport4a.SpeedButton3Click(Sender: TObject);
var s: string;
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_type_id=40 and order_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本单已生成了'+fieldbyname('bod_cd').asstring+'号收款单，不可反审');
    if active=True then close;
    commandtext:='select top 5 bod_cd from tb_bill where bod_type_id=42 and order_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount>0 then
    begin
        s:='本单已生成了下列两票销售/退货单，不可反审'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+' '+fieldbyname('bod_cd').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定取消本单审核','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton3.enabled:=false; // 避免连续按两次
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock39 -39,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedimport4a.SpeedButton1Click(Sender: TObject);
var mcd: string;
    mi: integer;
begin
//注意判断 已收完单据不可再收款
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_type_id=40 and bod_status_id in (0,2) and order_id='+cdsbill.fieldbyname('bod_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本单已生成了'+fieldbyname('bod_cd').asstring+'号分销采购收款单，尚未完成审核，不可再次生成');
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill_dtl d left join (select b.rela_id1,amot1=sum(b.amot) from tb_bill a,tb_bill_dtl b where bod_type_id=40 and bod_status_id=1 and a.order_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.bod_id=b.bod_id group by b.rela_id1) c';
    commandtext:=commandtext+' on d.dtl_id=c.rela_id1 where d.price2*d.qty<isnull(c.amot1,0)';
    open;
    if (recordcount=0) then raise Exception.Create('本单已完成收款，不可再次生成');
end;
if MessageBox(0,Pchar('确定生成收款单'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
mcd:=formatfloat('00000000',getbillid(compid,40));
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,order_id,src_id,dst_id,broker_id,agent_id,district_id,busi_type,allo_desc,bod_desc,carry_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',40,0,bod_id,src_id,dst_id,broker_id,agent_id,district_id,busi_type,allo_desc,''由'+cdsbill.fieldbyname('bod_cd').asstring+'号分销采购计划单生成'',carry_dt,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_bill where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;    
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,qty,price,amot,rela_id1)';
    commandtext:=commandtext+' select '+inttostr(mi)+',d.med_id,d.qty,d.price1*d.qty-isnull(c.amot1,0),price1*qty-isnull(c.amot1,0),d.dtl_id';
    commandtext:=commandtext+' from tb_bill_dtl d left join (select b.rela_id1,amot1=sum(b.amot) from tb_bill a,tb_bill_dtl b where bod_type_id=40 and bod_status_id=1 and a.order_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.bod_id=b.bod_id group by b.rela_id1) c';
    commandtext:=commandtext+' on d.dtl_id=c.rela_id1 where d.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and d.price2*d.qty>isnull(c.amot1,0)';
//edit1.text:=commandtext;    
    execute;
    setprogress(0);
    MessageBox(0,pchar('已成功生成'+mcd+'号收款单'),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetmedimport4a.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('camot').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
end;

procedure Tsetmedimport4a.N4Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t,mcd: string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=1) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=1) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(未完成审核单据不可生成)');
with dm.pubqry do
begin
{
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中不得有非本人单据'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and dbo.fn_orderisfinished(bod_id)=1';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中不得有已完成销售单据'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=39 and a.bod_id in ('+t+') and c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.order_id';
    open;
    if recordcount>0 then
    begin
//        s:='下列单据已生成了未完成审核的两票销售单，请先审核'+#13+#10+'------------------------------------------------';
        s:='下列单据已生成了未完成审核的两票销售单，不可再次生成'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'分销采购计划单:'+fieldbyname('bod_cd').asstring+' 两票销售单:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定所选单据生成两票销售单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry1 do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill a where a.bod_id in ('+t+')';
    commandtext:=commandtext+' and not exists (select 1 from tb_bill c where c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.order_id)';
    open;
    if recordcount=0 then
    begin
        MessageBox(0, '无可生成的单据','请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    first;
    while not eof do
    begin
        mcd:=formatfloat('00000000',getbillid(compid,42));
        if dm.pubqry.active=True then dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,cate_id,busi_type,src_id,dst_id,agent_id,district_id,broker_id,order_id,bod_desc,creat_by,creat_dt)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',42,0,2,1,src_id,dst_id,agent_id,district_id,broker_id,bod_id,''由''+bod_cd+''号分销采购计划单生成'','+inttostr(curuserid)+',getdate()';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill where bod_id='+fieldbyname('bod_id').asstring;
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select @@identity';
//edit1.text:=dm.pubqry.commandtext;
        dm.pubqry.open;
        mi:=dm.pubqry.fields[0].asinteger;
        dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price1,price2,qty,qty1,qty2,rela_id1)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select '+inttostr(mi)+',med_id,price,price1,price2,qty-isnull(qty2,0),qty-isnull(qty2,0),qty-isnull(qty2,0),dtl_id';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill_dtl where bod_id='+fieldbyname('bod_id').asstring;
//edit1.text:=dm.pubqry.commandtext;
//edit2.text:=dm.pubqry.commandtext;
        dm.pubqry.execute;
        next;
    end;
end;
setprogress(0);
MessageBox(0,pchar('已成功生成两票销售出库单'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedimport4a.N5Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t,mcd: string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=1) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=1) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(未完成审核单据不可生成)');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_id in ('+t+')';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and isnull(b.qty2,0)=0';
//    commandtext:=commandtext+' and dbo.fn_orderisfinished(bod_id)=1';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('所选单据中不得有无销售数单据'),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if active=True then close;
    commandtext:='select top 5 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill c';
    commandtext:=commandtext+' where a.bod_type_id=39 and a.bod_id in ('+t+') and c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.order_id';
    open;
    if recordcount>0 then
    begin
        s:='下列单据已生成了未完成审核的两票销售/退货单，不可再次生成'+#13+#10+'------------------------------------------------';
        first;
        while not eof do
        begin
            s:=s+#13+#10+'分销采购计划单:'+fieldbyname('bod_cd').asstring+' 两票销售/退货单:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0, pchar(s),'请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
end;
if MessageBox(0,'确定所选单据生成两票销售退货单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry1 do
begin
    if active=true then close;
    commandtext:='select bod_id from tb_bill a where a.bod_id in ('+t+')';
    commandtext:=commandtext+' and not exists (select 1 from tb_bill c where c.bod_type_id=42 and c.bod_status_id in (0,2) and a.bod_id=c.order_id)';
    open;
    if recordcount=0 then
    begin
        MessageBox(0, '无可生成的单据','请注意',MB_OK+MB_ICONInformation);
        abort;
    end;
    first;
    while not eof do
    begin
        mcd:=formatfloat('00000000',getbillid(compid,42));
        if dm.pubqry.active=True then dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,cate_id,busi_type,src_id,dst_id,agent_id,broker_id,district_id,order_id,bod_desc,creat_by,creat_dt)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select top 1 '+inttostr(compid)+','''+mcd+''',42,0,2,2,src_id,dst_id,agent_id,broker_id,district_id,bod_id,''由''+bod_cd+''号分销采购计划单生成'','+inttostr(curuserid)+',getdate()';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill where bod_id='+fieldbyname('bod_id').asstring;
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select @@identity';
//edit1.text:=dm.pubqry.commandtext;
        dm.pubqry.open;
        mi:=dm.pubqry.fields[0].asinteger;
        dm.pubqry.close;
        dm.pubqry.commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price1,price2,qty,qty1,rela_id1)';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' select '+inttostr(mi)+',med_id,price,price1,price2,-qty2,qty,dtl_id';
        dm.pubqry.commandtext:=dm.pubqry.commandtext+' from tb_bill_dtl where bod_id='+fieldbyname('bod_id').asstring;
//edit1.text:=dm.pubqry.commandtext;
//edit2.text:=dm.pubqry.commandtext;
        dm.pubqry.execute;
        next;
    end;
end;
setprogress(0);
MessageBox(0,pchar('已成功生成两票销售退货单'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedimport4a.N7Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'列表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

end.
