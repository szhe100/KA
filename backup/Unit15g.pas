unit Unit15g;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,  mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, wwclearbuttongroup, wwradiogroup,
  dxEditor, dxDBEdtr, Animate, GIFCtrl, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl,
  dxGrClms, Comobj, ImgList, dxdbtrel;

type
  Tsetmedexport9 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carry_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1mate_name2: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    dxDBGrid2amot: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
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
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    DBText7: TDBText;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Panel3: TPanel;
    Label19: TLabel;
    Label21: TLabel;
    DBText8: TDBText;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    Edit1: TEdit;
    Shape1: TShape;
    DBText11: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
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
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlsite_code: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    dxDateEdit1: TdxDateEdit;
    DBText14: TDBText;
    DBText15: TDBText;
    pickmedinfo: TClientDataSet;
    DSpickmedinfo: TDataSource;
    DBText18: TDBText;
    dxDBGrid1bod_id: TdxDBGridColumn;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    ADOQuery1: TADOQuery;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Shape2: TShape;
    Edit2: TEdit;
    Label25: TLabel;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbilldst_id: TIntegerField;
    cdsbillagent: TStringField;
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
    cdsbillbroker_id: TIntegerField;
    cdsbillprncount: TIntegerField;
    cdsbillbod_desc: TStringField;
    cdsbillreceipt_by: TIntegerField;
    cdsbillcarry_dt: TDateTimeField;
    dxDateEdit4: TdxDateEdit;
    cdsbillbroker: TStringField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlsta_id: TAutoIncField;
    dxDBGrid2broker: TdxDBGridColumn;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    N3: TMenuItem;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    cdsbill_dtllead_id: TAutoIncField;
    cdsbill_dtlleader: TStringField;
    dxDBGrid2leader: TdxDBGridColumn;
    Label27: TLabel;
    Label20: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label6: TLabel;
    DBText4: TDBText;
    cdsbilldistrict_id: TIntegerField;
    cdsbilllevel_id1: TIntegerField;
    cdsbilllevel_id2: TIntegerField;
    cdsbilllevel_id3: TAutoIncField;
    cdsbilllevel1: TStringField;
    cdsbilllevel2: TStringField;
    cdsbilllevel3: TStringField;
    cdsbillagent_id: TAutoIncField;
    cdsbillmate_name1: TStringField;
    cdsbillmate_name2: TStringField;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    cdsbill_dtlrela_id: TIntegerField;
    cdsbill_dtlrela_id1: TIntegerField;
    cdsbill_dtlqtyperpack: TBCDField;
    cdsbill_dtlqtyperbox: TBCDField;
    Label12: TLabel;
    DBText1: TDBText;
    pickmedinforate: TBCDField;
    pickmedinfoprice1: TBCDField;
    pickmedinfof1: TBCDField;
    pickmedinfof2: TBCDField;
    pickmedinfof3: TBCDField;
    Label13: TLabel;
    DBText2: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    Label16: TLabel;
    DBText6: TDBText;
    pickmedinfoprice: TBCDField;
    cdsbillCbusitype: TStringField;
    Button1: TButton;
    N4: TMenuItem;
    N5: TMenuItem;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    dxDBGrid2valid_dt: TdxDBGridMaskColumn;
    cdsbill_dtlprice2: TBCDField;
    dxDBGrid2price2: TdxDBGridColumn;
    ADOQuery1cate_id: TWordField;
    cdsbillcate_id: TWordField;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    cdsbillCcate: TStringField;
    cdsbill_dtlprice3: TBCDField;
    dxDBGrid2price3: TdxDBGridColumn;
    Edit3: TEdit;
    cdsbillcdistrict: TStringField;
    Label17: TLabel;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    Panel4: TPanel;
    DBText12: TDBText;
    N6: TMenuItem;
    N7: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    cdsbill_dtlcate_id: TIntegerField;
    cdsbill_dtlcplatform: TStringField;
    dxDBGrid2cplatform: TdxDBGridColumn;
    cdsbillcplatform: TStringField;
    cdsbillmed_id: TIntegerField;
    N8: TMenuItem;
    N9: TMenuItem;
    cdsbillplatform_id: TIntegerField;
    Edit4: TEdit;
    dxDBGrid1check_dt: TdxDBGridColumn;
    cdsbillCtype: TStringField;
    cdsbillmate_type_id: TIntegerField;
    dxDBGrid1Ctype: TdxDBGridColumn;
    cdsbillchannel_id: TIntegerField;
    cdsbillchannel_dtl_id: TIntegerField;
    cdsbillchannel: TStringField;
    cdsbillchannel_dtl: TStringField;
    Shape3: TShape;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
    procedure cdsbill_dtlBeforePost(DataSet: TDataSet);
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
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3Enter(Sender: TObject);
    procedure dxDBButtonEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBButtonEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N6Click(Sender: TObject);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setmedexport9: Tsetmedexport9;
  ptype: string[20];
  pcent: real;

implementation

uses datamodu, Unit14, Unit16a, Unit18, Unit16b, Unit61;

{$R *.DFM}

procedure Tsetmedexport9.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton4.enabled:=false;    // print disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
GIFimage1.visible:=false;
end;

procedure Tsetmedexport9.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetmedexport9.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
if (cdsbill.active) and (fbodid>0) then cdsbill.Active:=False;
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetmedexport9.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IF (cdsbill.state in [dsinsert,dsedit]) or (cdsbill_dtl.state in [dsinsert,dsedit]) then
begin
    case messagebox(0,'����δ�������ݣ������˳�?','��ע��',MB_YESNOCANCEL+mb_iconexclamation) of
        IDYES:  SpeedButton8Click(nil); // save
        IDNO:   SpeedButton9Click(nil); // cancel
        IDCANCEL: abort;
    end;
end;
with dm.picmedinfo  do if active then close;
with dm.picmedinfoc do if active then close;
with dm.broker   do if active then close;
//with dm.exp_type do if active then close;
with cdsbill     do if active then close;
with cdsbill_dtl do if active then close;
end;

procedure Tsetmedexport9.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedexport9.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedexport9.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('src_id').asinteger=0 then raise Exception.Create('����ѡ�񹩻���λ');
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('����ѡ�񹺻���λ');
    if cdsbill.fieldbyname('cate_id').asinteger=0 then raise Exception.Create('����ѡ��ҵ�����');
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
    with pickmed_bat.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY b.med_name,b.pdt_place,b.specifi,b.qtyperpack) as int),';  //,a.bat_cd
        commandtext:=commandtext+' a.rec_id,a.parent_id,a.comp_id,a.mate_id,agent=dbo.fn_mate_name(a.mate_id),a.cate_id,a.med_id,a.bat_cd,a.qty,a.price,b.med_code,b.material_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,';
        commandtext:=commandtext+' b.qtyperpack,b.qtyperbox,b.qry_code,med_unit=dbo.fn_obj_desc(b.unit_id),a.valid_dt,b.otc_rx,b.gmp'; //,b.discount
        commandtext:=commandtext+' from tb_medstock_bat a,tb_medicine b ';
        commandtext:=commandtext+' where a.med_id=b.med_id and a.mate_id='+cdsbill.fieldbyname('src_id').asstring+' and a.cate_id='+cdsbill.fieldbyname('cate_id').asstring; 
        if fwid  // ���ַ���
         then commandtext:=commandtext+' and (b.med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and b.qry_code like''%'+sk+'%''';
//        commandtext:=commandtext+' order by b.med_name,b.pdt_place,b.specifi,b.qtyperpack';  //,a.bat_cd
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯƷ��'); end;
        if recordcount=1 then
        begin
//            if fmatetypeid=2 then //��ҵ��˾
            if pickmed_bat.query1.FieldByName('cate_id').asinteger<>cdsbill.fieldbyname('cate_id').asinteger then raise Exception.Create('��ѡƷ��ҵ������뱾������');
            checkmatemed(cdsbill.fieldbyname('src_id').asinteger,cdsbill.fieldbyname('dst_id').asinteger,pickmed_bat.query1.FieldByName('med_id').asinteger);
{
������λ@srcid��������λ@dstid��Ʒ��@medid
1�������� 1����2����ҽԺ;2�������� 2����3����ҽԺ;��������
}
            with cdsbill_dtl do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('med_id').asinteger:=pickmed_bat.query1.FieldByName('med_id').asinteger;
                fieldbyname('med_code').asstring:=pickmed_bat.query1.FieldByName('med_code').asstring;
                fieldbyname('med_name').asstring:=pickmed_bat.query1.FieldByName('med_name').asstring;
                fieldbyname('specifi').asstring:=pickmed_bat.query1.FieldByName('specifi').asstring;
                fieldbyname('pdt_place').asstring:=pickmed_bat.query1.FieldByName('pdt_place').asstring;
                fieldbyname('med_unit').asstring:=pickmed_bat.query1.FieldByName('med_unit').asstring;
                fieldbyname('cost').asfloat:=pickmed_bat.query1.fieldbyname('price').asfloat;
                fieldbyname('price').asfloat:=0;
                fieldbyname('rela_id').asinteger:=pickmed_bat.query1.FieldByName('rec_id').asinteger;
            end;
        end
        else
        begin
            pickmed_bat.edit1.text:= cdsbill_dtl.fieldbyname('med_code').asstring;
//            pickmed_bat.label1.caption:= formatfloat('[#,###]',pickmed_bat.query1.recordcount);
            if pickmed_bat.showmodal= mrOK then
            begin
                if pickmed_bat.query1.active then
                begin
//                    if fmatetypeid=2 then //��ҵ��˾
                    if pickmed_bat.query1.FieldByName('cate_id').asinteger<>cdsbill.fieldbyname('cate_id').asinteger then raise Exception.Create('��ѡƷ��ҵ������뱾������');
                    checkmatemed(cdsbill.fieldbyname('src_id').asinteger,cdsbill.fieldbyname('dst_id').asinteger,pickmed_bat.query1.FieldByName('med_id').asinteger);
                    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
                    cdsbill_dtl.fieldbyname('med_id').asinteger:=pickmed_bat.query1.FieldByName('med_id').asinteger;
                    cdsbill_dtl.fieldbyname('med_code').asstring:=pickmed_bat.query1.FieldByName('med_code').asstring;
                    cdsbill_dtl.fieldbyname('med_name').asstring:=pickmed_bat.query1.FieldByName('med_name').asstring;
                    cdsbill_dtl.fieldbyname('specifi').asstring:=pickmed_bat.query1.FieldByName('specifi').asstring;
                    cdsbill_dtl.fieldbyname('pdt_place').asstring:=pickmed_bat.query1.FieldByName('pdt_place').asstring;
                    cdsbill_dtl.fieldbyname('med_unit').asstring:=pickmed_bat.query1.FieldByName('med_unit').asstring;
                    cdsbill_dtl.fieldbyname('cost').asfloat:=pickmed_bat.query1.fieldbyname('price').asfloat;
                    cdsbill_dtl.fieldbyname('price').asfloat:=0;
                    cdsbill_dtl.fieldbyname('rela_id').asinteger:=pickmed_bat.query1.FieldByName('rec_id').asinteger;
                end;
            end else exit;
        end;

        if fmatetypeid=1 then //ҽԺ
            with dm.pubqry do
            begin
                if active then close;
                commandtext:='sp_getleadbroker '+inttostr(compid)+','+cdsbill.fieldbyname('dst_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+','''+cdsbill.fieldbyname('carry_dt').asstring+'''';
                open;
                if (recordcount=0) or (Fields[0].asinteger=0) then raise Exception.Create('�ÿͻ���Ʒ����δ����ҵ��Ա(��ע����Ч����)����������ҵ��Ա��ӪƷ�ּ���ɹ���');
                cdsbill_dtl.fieldbyname('sta_id').asinteger:=fieldbyname('broker_id').asinteger;
                cdsbill_dtl.fieldbyname('broker').asstring:=fieldbyname('broker').asstring;
                cdsbill_dtl.fieldbyname('lead_id').asinteger:=fieldbyname('lead_id').asinteger;
                cdsbill_dtl.fieldbyname('leader').asstring:=fieldbyname('leader').asstring;
            end;
		if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
		cdsbill.fieldbyname('med_id').asinteger:=pickmed_bat.query1.FieldByName('med_id').asinteger;
{
        with pickmedinfo do
        begin
            if active then close;
            commandtext:='sp_getmedinfo_bat '+cdsbill_dtl.fieldbyname('med_id').asstring
               +','''','+cdsbill.fieldbyname('dst_id').asstring;
            open;
            if FieldByName('zstop_yn').asboolean=true then raise Exception.Create('��Ʒ�ֻ�������ͣ�ã������Ƶ�');
        end;
}        
    end;
end;
end;

procedure Tsetmedexport9.DSbill_dtlDataChange(Sender: TObject;
  Field: TField);
begin
exit;
if pagecontrol1.activepage=tabsheet1 then exit;
if (cdsbill.fieldbyname('src_id').asstring='') or (cdsbill.fieldbyname('dst_id').asstring='')
    or (cdsbill_dtl.fieldbyname('lead_id').asstring='') or (cdsbill_dtl.fieldbyname('sta_id').asstring='') or (cdsbill_dtl.fieldbyname('med_id').asstring='')
    or (cdsbill.fieldbyname('carry_dt').asfloat=0) then
begin
    if pickmedinfo.active then pickmedinfo.Close;
    exit;
end;

with pickmedinfo do
begin
    if tag=cdsbill_dtl.fieldbyname('med_id').asinteger then exit; // ͬһƷ��������ȡҩƷ����
    if active then close;
    commandtext:='sp_getmedinfo_bat2 '+inttostr(compid)+','+cdsbill.fieldbyname('src_id').asstring+','+cdsbill.fieldbyname('dst_id').asstring+','
        +cdsbill_dtl.fieldbyname('lead_id').asstring+','+cdsbill_dtl.fieldbyname('sta_id').asstring+','+cdsbill_dtl.fieldbyname('med_id').asstring+','
        +''''+cdsbill.fieldbyname('carry_dt').asstring+'''';
//edit3.text:=commandtext;
//exit;  
    try
        setprogress(1);
        open;
        tag:=cdsbill_dtl.fieldbyname('med_id').asinteger;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport9.dxDBGrid2Enter(Sender: TObject);
begin
if cdsbill.fieldbyname('src_id').asinteger=0
    then raise Exception.Create('����ѡ�񹩻���λ');
if cdsbill.fieldbyname('dst_id').asinteger=0
    then raise Exception.Create('����ѡ�񹺻���λ');
with cdsbill_dtl do
    if (active) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetmedexport9.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetmedexport9.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin

if (edit1.text='') or (cdsbill.fieldbyname('dst_id').asinteger=0)
    then raise Exception.Create('��ѡ�񹺻���λ');

//  UpdateApply speedbutton
setprogress(1);
with cdsbill do
begin
    mid:=fieldbyname('bod_id').asinteger;
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;
    if not (state in [dsinsert,dsedit]) then edit;
    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
      //ApplyUpdates(-1);
end;
if (cdsbill.FieldByName('bod_id').asinteger>0) then // and (cdsbill_dtl.RecordCount>0) and (cdsbill_dtl.FieldByName('med_id').asinteger>0) then
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='sp_updatebod2mate '+cdsbill.FieldByName('bod_id').asstring;  //д�뵥�����ҵ������
        execute;
    end;
end;
with cdsbill_dtl do
begin
    if state = dsinsert then cancel;
    try
        if state in [dsinsert,dsedit] then post;
    except
        cancelUpdates;
    end;              
end;
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport9.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'ȷ��ȡ�������ı༭','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
pickmedinfo.tag:=-1; // ��ʱ��ִ��sp_getmedinfo_bat
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active then cancelUpdates;
        tag:=0; //����ˢ��
        close;
    end;
    with cdsbill do
    begin
        if (fieldbyname('bod_cd').asstring='') and (fieldbyname('bod_amot').asfloat=0) then
        begin
            delete;
            myapplyupdate(cdsbill,'tb_bill','bod_id');
        end
        else cancelUpdates;
    end;
end;
pickmedinfo.tag:=0; // ��ʱ����ִ��sp_getmedinfo_bat
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport9.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //��ˢ��
end;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,mate_name1=b.mate_name,mate_name2=c.mate_name,c.mate_type_id,creater=d.zname,checker=e.zname,broker=f.zname,';
    commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
    commandtext:=commandtext+' agent=j.zname,level1=g.zdesc,level2=h.zdesc,level3=i.zdesc,cdistrict=dbo.fn_getdistrict(c.district)';
//    commandtext:=commandtext+' platform_id=dbo.fn_getdtlplatformid(a.bod_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_object g on a.level_id1 =g.obj_id';
    commandtext:=commandtext+' left join tb_object h on a.level_id2 =h.obj_id';
    commandtext:=commandtext+' left join tb_object i on a.level_id3 =i.obj_id';
    commandtext:=commandtext+' left join tb_staff j on a.agent_id =j.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=2 and a.cate_id=6';  // cate_id 1:��ҵ 2:���� 3:�ն�ս�� 4:�ն���ͨ 5:��Ʊ��ҵ 6:�����ն����۳��ⵥ 7:�������۳��ⵥ
//    if fbodid>0 then commandtext:=commandtext+' and a.bod_id='+inttostr(fbodid) else
//    begin
//��ѯ���������� �� setmedexport3
        commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+Trim(dxEdit1.text)+'''';
        if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
//    end;
edit3.text:=commandtext;
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport9.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetmedexport9.SpeedButton6Click(Sender: TObject);
var mid : integer;
begin
//if srv_date>=settleday+1 then  // ��ǰ����srv_date������������settleday ��ʾ
//  raise Exception.Create('���Ƚ�'+datetostr(settleday)+'ǰ�����ݽ���');
// insert speedbutton
screen.cursor:=crhourglass;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,cate_id,busi_type,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',2,0,6,1,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
    commandtext:=commandtext+'select @@identity';
    open;
    mid:=fields[0].asinteger;
    close;
end;
with cdsbill do
begin
    append;
    post;
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid);
end;
if pagecontrol1.activepage=tabsheet1 then pagecontrol1.activepage:=tabsheet2;
setupdatestatus;
edit1.Text:='';
edit1.setfocus;
edit2.Text:='';
screen.cursor:=crdefault;
end;

procedure Tsetmedexport9.SpeedButton7Click(Sender: TObject);
begin
if cdsbill.recordcount=0
    then raise Exception.Create('��ָ����ɾ���ĵ���');
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ�����ɾ����'+#13#10+'ȷ��ɾ����Ӧ�ȷ����');
if MessageBox(0,'ȷ��ɾ������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete;
with cdsbill_dtl do
begin
    if active then close;
    tag:=0; //����ˢ��
end;
DSbillDataChange(nil,nil);  //ˢ��cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetmedexport9.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        edit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        edit2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        edit1.text:=fieldbyname('mate_name1').asstring;
        edit2.text:=fieldbyname('mate_name2').asstring;
        dxDBedit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        wwRadioGroup1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        wwRadioGroup2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateedit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0);
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton3.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid)
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid))
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // ��˵���ɷ���
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        speedbutton4.enabled:=(active) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);

        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //��� ͼ����ʾ
        if state=dsbrowse then setunupdatestatus;
    end;
    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('bod_id').asinteger=0) then exit; // �鿴���б�ʱ��������ʾ��ϸ����
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
                commandtext:='select a.*,leader=e.zname,broker=d.zname,b.med_name,b.specifi,b.pdt_place,b.med_code,b.site_code,b.qtyperpack,b.qtyperbox,med_unit=c.zdesc';
//                commandtext:=commandtext+' cate_id=dbo.fn_getmatemedcateid('+inttostr(compid)+','+cdsbill.fieldbyname('src_id').asstring+',a.med_id)';
                commandtext:=commandtext+' from tb_bill_dtl a';
                commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
                commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id =d.sta_id';
                commandtext:=commandtext+' left join tb_staff e on a.lead_id =e.sta_id';
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

procedure Tsetmedexport9.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then setupdatestatus;

    sk:=edit1.text;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickbusimate2.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,deputy,phone,address,broker=dbo.fn_staff_name(broker_id),broker_id,zname1,address1,phone1,zname2,address2,phone2,settle_type,stop_yn,qry_code';
        commandtext:=commandtext+' from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and qry_code like ''%'+sk+'%''';
//        commandtext:=commandtext+' order by mate_name';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯ��ҵ��˾'); end;
        pickbusimate2.edit1.text:= edit1.text;
        if pickbusimate2.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean then raise Exception.Create('����ҵ��˾��ͣ�ã������Ƶ�');
            with cdsbill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('src_id').asinteger:=pickbusimate2.query1.FieldByName('mate_id').asinteger;
                if pickbusimate2.query1.FieldByName('broker').asstring<>'' then fieldbyname('broker_id').asinteger:=pickbusimate2.query1.FieldByName('broker').asinteger;
                fieldbyname('settle_type').asinteger:=pickbusimate2.query1.FieldByName('settle_type').asinteger;
                Edit1.text:=pickbusimate2.query1.FieldByName('mate_name').asstring;
            end;
        end;
    end;
end;
end;

procedure Tsetmedexport9.Edit1Click(Sender: TObject);
begin
(sender as TEdit).selectall;
end;

procedure Tsetmedexport9.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var fapp: boolean;
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
    if shift=[ssctrl] then
    begin
        dxDBGrid2DblClick(self);  // ctrl+enter : �ٴν������ pickmed_bat
        exit;
    end;

    with Tdxdbgrid(activecontrol) do
    begin
       if focusedcolumn= 0 then
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('��ѡ��ҩƷ');
       end;
       if focusedcolumn= 5 then  // ���뵥��
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;
            if cdsbill_dtl.fieldbyname('price').asfloat<cdsbill_dtl.fieldbyname('cost').asfloat //pickmedinfo.fieldbyname('price').asfloat
                then showmessage('���۵��ڳɱ��ۣ���˲�');
{
            if (pickmedinfo.fieldbyname('low_limit_price').asfloat<>0)
              and (cdsbill_dtl.fieldbyname('price').asfloat<pickmedinfo.fieldbyname('low_limit_price').asfloat)
                then raise Exception.Create('���۵�������޼ۣ������Ƶ�');
}                
       end;
       if focusedcolumn= 12 then  // �����������ֶε�cursor����
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
                if fapp then begin  cdsbill.edit; append; key:=0;  focusedcolumn := 0  end // else next;
            end;
       end;
    end;
end;
end;

procedure Tsetmedexport9.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport9.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetmedexport9.SpeedButton2Click(Sender: TObject);
var s: string;
begin
with cdsbill do
begin
    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('��ѡ�񹩻���λ');
    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ�񹺻���λ');
    if fieldbyname('cate_id').asinteger=0 then raise Exception.Create('��ѡ��ҵ�����');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('�����뷢������');
end;
//if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ��������');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_bill a,tb_busimate c where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.dst_id=c.mate_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('����������λ�������������������ѽ��ˣ��������');

    if active then close;
    commandtext:='select top 1 1 from tb_bill_dtl where bod_id='+inttostr(cdsbill.fieldbyname('bod_id').asinteger);
    open;
    if recordcount=0 then raise Exception.Create('��������ϸ���ݣ��������');

    if active then close;
    if cdsbill.fieldbyname('busi_type').asinteger=1 then // ���۳���
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty<0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('�������Ϊ���۳��⣬��������Ϊ����');
    end;
    if cdsbill.fieldbyname('busi_type').asinteger=2 then // �����˻�
    begin
        commandtext:='select top 1 1 from tb_bill_dtl where qty>0 and bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('�������Ϊ�����˻�������ӦΪ����');
    end;

    if active then close;
    commandtext:='select top 3 b.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place from tb_bill a,tb_bill_dtl b,tb_medicine m where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id=m.med_id';
    commandtext:=commandtext+' and not exists (select 1 from tb_sysrule c where c.type_id=2 and c.comp_id='+inttostr(compid);
    commandtext:=commandtext+' and c.mate_id=a.src_id and b.med_id=c.med_id)';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='������λ����Ʒ����δ������ҵ���𣬱����������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
    commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring+' and a.bod_id=b.bod_id and b.med_id=m.med_id';
	commandtext:=commandtext+'  and not exists (select 1 from tb_brokermed c where c.valid=1 and a.dst_id=c.mate_id and b.med_id=c.med_id and c.valid_dt<=a.carry_dt)';
	commandtext:=commandtext+'  and exists (select 1 from tb_busimate c where a.dst_id=c.mate_id and c.mate_type_id=1)'; //��������λΪҽԺʱ�����ҵ��Ա
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
        s:='����Ʒ����δ����ҵ��Ա���ù������ͣ��(ע����Ч����)����������'+ #13#10;
        s:=s+'-------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
{
    commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id and isnull(b.sta_id,0)=0';
}
    commandtext:='select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id=m.med_id and isnull(b.sta_id,0)=0';
    commandtext:=commandtext+'  and exists (select 1 from tb_busimate c where a.dst_id=c.mate_id and c.mate_type_id=1)'; //��������λΪҽԺʱ�����ҵ��Ա
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
        s:='����Ʒ��δȡ��ҵ��Ա�������������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
    commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id';
    commandtext:=commandtext+'  and not exists (select 1 from tb_medstock_bat f where f.mate_id='+cdsbill.fieldbyname('src_id').asstring+' and f.cate_id='+cdsbill.fieldbyname('cate_id').asstring+' and f.med_id=b.med_id and f.qty>=b.qty)';
{
    commandtext:=commandtext+'  and not exists (select 1 from tb_medstock_bat f where f.comp_id='+inttostr(compid);
    commandtext:=commandtext+'  and f.mate_id='+cdsbill.fieldbyname('src_id').asstring+' and f.cate_id='+cdsbill.fieldbyname('cate_id').asstring+' and f.med_id=b.med_id and f.qty>=b.qty)';
}    
edit3.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='����Ʒ���޿����治�㣬�����������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
{  //////////////////����ȡ�б��
    if active then close;
    commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id and isnull(b.price2,0)=0';
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
        s:='����Ʒ�����б�ۣ������������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
}
    if fmatetypeid=1 then //ҽԺ
    begin
        if active then close;
        commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_busimate c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and a.dst_id=c.mate_id and b.med_id=m.med_id';
        commandtext:=commandtext+'  and not exists (select 1 from tb_busiframe_dtl f where b.med_id=f.med_id';    // f.comp_id='+inttostr(compid)+' and
        commandtext:=commandtext+'  and valid_dt<='''+cdsbill.fieldbyname('carry_dt').asstring+'''';
        commandtext:=commandtext+'  and dbo.fn_treeischild(c.district,f.district_id)=1)';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='����Ʒ����δ����ҵ��ṹ(��ע����Ч����)����������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
{ //ȡҵ��Ա�������� ����
select top 1 lead_id,broker_id=sta_id,med_id,price1,
	broker=dbo.fn_staff_name(sta_id),leader=dbo.fn_staff_name(lead_id)
	from tb_brokermed
	where comp_id=@compid and mate_id=@mateid and med_id=@medid and valid=1 and valid_dt<=@dt
	order by rec_id desc
}

{
        if active then close;
        commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id=m.med_id';
        commandtext:=commandtext+'  and (isnull(b.lead_id,0)=0 or isnull(b.sta_id,0)=0 ';
        commandtext:=commandtext+'  or not exists (select 1 from tb_brokermed f where f.comp_id='+inttostr(compid)+' and a.dst_id=f.mate_id and b.med_id=f.med_id';
        commandtext:=commandtext+'  and f.valid=1 and valid_dt<='''+cdsbill.fieldbyname('carry_dt').asstring+''') )';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='����Ʒ�������ܼ�ҵ��Ա����(������δ����ҵ�����)�������������'+ #13#10;
            s:=s+'--------------------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
}
{       //�� sp_updatebod2mate �����д����˶�ע��
        if active then close;  //��ҵ����� ҵ��Ա�������� ����
        commandtext:='update b set lead_id=d.lead_id,sta_id=d.sta_id';
        commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed d,(select b.bod_id,b.med_id,rec_id=max(rec_id) ';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_brokermed c';
        commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.bod_id=b.bod_id and c.valid=1';
        commandtext:=commandtext+'  and a.dst_id=c.mate_id and b.med_id=c.med_id and c.valid_dt<=a.carry_dt group by b.bod_id,b.med_id) h';
        commandtext:=commandtext+' where b.bod_id=h.bod_id and b.med_id=h.med_id and d.rec_id=h.rec_id and (isnull(b.sta_id,0)=0 or isnull(b.lead_id,0)=0)';
        try
            setprogress(1);
            execute;
        finally
            setprogress(0);
        end;
}
    end;
    if active then close;
    commandtext:='sp_updatebod2mate '+cdsbill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
{
    if active then close;
    commandtext:='select top 1 1 from tb_bill_dtl where bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' and isnull(sta_id,0)=0';
    open;
    if recordcount>0 then raise Exception.Create('������δȡ��ҵ��Ա��¼���������');
}
    if active then close;  //����б��
{
    commandtext:='select top 5 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tB_bill a,tb_bill_dtl b,tb_busimate c,tb_medicine m';
    commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring+' and a.bod_id=b.bod_id and a.dst_id=c.mate_id and b.med_id=m.med_id';
    commandtext:=commandtext+'   and (c.mate_type_id=1 and not exists (select 1 from tb_brokermed d where d.mate_id=a.dst_id and d.med_id=b.med_id and d.valid_dt<=a.carry_dt)';
    commandtext:=commandtext+'		or c.mate_type_id=2 and not exists (select 1 from tb_medata e where e.type_id=1 and e.med_id=b.med_id and e.valid_dt<=a.carry_dt and dbo.fn_treeischild(c.district,e.id1)>0))';
}
    commandtext:='select top 3 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tB_bill a,tb_bill_dtl b,tb_medicine m ';
    commandtext:=commandtext+' where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id=m.med_id and dbo.fn_getbidprice9 (a.dst_id,b.med_id,a.carry_dt)=0';
//edit4.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='����Ʒ���޷�ȡ���б�ۣ������������'+#13#10+'(ҽԺ��ҵ��Ա�������ҵ������Ʒ����۱��У���ע�������Ч����)'+ #13#10;   //
        s:=s+'---------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��:'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;  //ȡ�б��
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����   //�б��,11
    commandtext:='update b set price2= dbo.fn_getbidprice9 (a.dst_id,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and a.bod_id=b.bod_id';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
if MessageBox(0,'ȷ���������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock2 2,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid); // 2: ���۳��� , ���ݺ�
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
cdsbill_dtl.tag:=0;
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) ��refreshʱ������pickmedinfo.tag�Ƿ���ͬ��ִ��refresh
DSbill_dtlDataChange(nil,nil);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport9.SpeedButton4Click(Sender: TObject);
begin
repexportbill:=Trepexportbill.create(Application);
with repexportbill.cdsbill do
begin
    if active then close;
    commandtext:='select top 1 a.*,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
    commandtext:=commandtext+' broker=dbo.fn_staff_name(a.broker_id),agent=dbo.fn_mate_name(a.src_id),customer= b.mate_name,b.address,b.phone ';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.dst_id=b.mate_id';
    commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount=0 then raise Exception.Create('�޿ɴ�ӡ���������');
end;
with repexportbill do
begin
//    qrlabel1.caption:=trim(cdsbill.fieldbyname('stock_name').asstring)+' ��ҵ��˾���ⵥ';
    qrlabel8.caption:='[��ӡʱ��:'+copy(datetimetostr(now),3,14)+']';
    quickrep1.Prepare;
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' ҳ';
    quickrep1.Preview;
//    free;
end;
end;

procedure Tsetmedexport9.SpeedButton3Click(Sender: TObject);
var s: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select distinct top 5 a.bod_cd from tb_bill a,tb_bill_dtl b';
    commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_id=b.bod_id';    // and a.bod_status_id in (0,1,2,3,4,5)
    commandtext:=commandtext+'  and exists (select 1 from tb_bill_dtl d,tb_bill_stadtl e where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and b.dtl_id=e.dtl_id and b.med_id=e.rec_id)';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='���������������з������뵥�����ɷ����'+ #13#10;
        s:=s+'-----------------------------------------------';  //+ #13#10
        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;

    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('����������λ���������������ѽ��ˣ����ɷ����');
end;
if MessageBox(0,'ȷ������˱���','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton3.enabled:=false; // ��������������
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock2 -2,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) ��refreshʱ������pickmedinfo.tag�Ƿ���ͬ��ִ��refresh
DSbill_dtlDataChange(nil,nil);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetmedexport9.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ��������');
end;
end;

procedure Tsetmedexport9.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='���';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='����';
        2: fieldbyname('cbusitype').asstring:='�˻�';
        3: fieldbyname('cbusitype').asstring:='����';
        4: fieldbyname('cbusitype').asstring:='����';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='��ҵ';
        2: fieldbyname('ccate').asstring:='����';
    end;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='ʡƽ̨';
		2: fieldbyname('cplatform').asstring:='����GPO';
		3: fieldbyname('cplatform').asstring:='����GPO';
    end;
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='ʡƽ̨';
		2: fieldbyname('cplatform').asstring:='����GPO';
		3: fieldbyname('cplatform').asstring:='����GPO';
    end;
	case fieldbyname('mate_type_id').asinteger of  // mate_type_id=1: ҽԺ     mate_type_id=2: ������
		1: fieldbyname('ctype').asstring:='����';
		2: fieldbyname('ctype').asstring:='����';
    end;
end;
end;

procedure Tsetmedexport9.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedexport9.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ��������');
end;

procedure Tsetmedexport9.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    checkmatemed(cdsbill.fieldbyname('src_id').asinteger,cdsbill.fieldbyname('dst_id').asinteger,FieldByName('med_id').asinteger);
    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
        then raise Exception.Create('ҩƷ���ۻ���������Ϊ��');
//    if (pickmedinfo.fieldbyname('qty').asfloat<fieldbyname('qty').asfloat)
//        then MessageBox(0,'��ҵ��˾����������㡣�뼰ʱ������','��ע��',MB_OK+MB_ICONInformation);
//        then application.messagebox('��ҵ��˾����������㡣�뼰ʱ������','ע��',mb_ok+mb_iconexclamation);
//    if (pickmedinfo.fieldbyname('low_limit_price').asfloat<>0) and (fieldbyname('price').asfloat<pickmedinfo.fieldbyname('low_limit_price').asfloat)
//        then raise Exception.Create('ҩƷ���۵��۲��ɵ�������޼�');
end;
end;

procedure Tsetmedexport9.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetmedexport9.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetmedexport9.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetmedexport9.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetmedexport9.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='�Ƶ�') then Acolor := $00A3FEFC;
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '���') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '�˻�') then
    begin
        AFont.Color := clred;
{
        AColor := clred;
        AFont.Color := clwhite;
}
    end;
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '����') then
    begin
        AFont.Color := clMaroon;
//        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '����') then
    begin
        AFont.Color := clPurple;
//        AFont.Color := clblack;
    end;
end;
if (AColumn = dxDBGrid1Ctype) then
begin
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '����') then
    begin
        AColor := $00FFFEDF;
    end;
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '����') then
    begin
        AColor := $00D2FFFD;
    end;
end;
{
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '����') then
    begin
        AColor := $00FDFCC1;
        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '��ҵ') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tsetmedexport9.dxDBGrid2DblClick(Sender: TObject);
var key:char;
begin
exit;
key:=#32;
dxDBGrid2KeyPress(self,key);
end;

procedure Tsetmedexport9.Edit2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then setupdatestatus;

    sk:=edit2.text;

    if sk='' then exit;
    key:=char(0);
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with pickbusimate3.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,mate_type_id,deputy,phone,address,broker=dbo.fn_staff_name(broker_id),broker_id,settle_type,stop_yn,qry_code';
        commandtext:=commandtext+' from tb_busimate where mate_type_id in (1,2) and isnull(stop_yn,0)=0 and comp_id='+inttostr(compid);
        // mate_type_id=1: ҽԺ     mate_type_id=2: ������
        if fwid  // ���ַ���
         then commandtext:=commandtext+' and mate_name like''%'+sk+'%'''
         else commandtext:=commandtext+' and qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by mate_name';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯ��ҵ��˾��ҽԺ'); end;
        pickbusimate3.edit1.text:= edit2.text;
        if pickbusimate3.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean=true
                then raise Exception.Create('����ҵ��˾��ҽԺ��ͣ�ã������Ƶ�');
            with cdsbill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('dst_id').asinteger:=pickbusimate3.query1.FieldByName('mate_id').asinteger;
                Edit2.text:=pickbusimate3.query1.FieldByName('mate_name').asstring;
                fmateid:=pickbusimate3.query1.FieldByName('mate_id').asinteger;
                fmatetypeid:=pickbusimate3.query1.FieldByName('mate_type_id').asinteger;
            end;
        end;
    end;
end;
end;

procedure Tsetmedexport9.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,mi,mid,id1,id2,id3,id4,id5,id6,id10,matetypeid,pid: integer;
    rate: single;
    dt: TDatetime;
    price,price1: real;
begin
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL := CreateOleObject('Excel.Application');
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    sbodcd:='';
    j:=2; mi:=0;  //��2�п�ʼ ÿ��һ��
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0; id10:=0; matetypeid:=0;  price:=0;  price1:=0; pid:=0;
        with dm.pubqry do
        begin
            if active then close;
            if sheet.cells[j,1].text<>'' then
            begin
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and isnull(stop_yn,0)=0 and mate_name ='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else id1:=0; //������˾(��ҵ��˾)
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id,mate_type_id from tb_busimate where mate_type_id in (1,2) and isnull(stop_yn,0)=0 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then
                begin
                    id2:=fieldbyname('mate_id').asinteger;
                    matetypeid:=fieldbyname('mate_type_id').asinteger;
                end
                else
                begin
                    if active then close;
                    commandtext:='select top 1 a.mate_id,b.mate_type_id from tb_linkword a,tb_busimate b';
                    commandtext:=commandtext+' where a.type_id=2 and a.mate_id=b.mate_id and isnull(b.stop_yn,0)=0';      // and a.comp_id=1
                    commandtext:=commandtext+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
edit3.text:=commandtext;                    
                    open;
                    if recordcount>0 then
                    begin
                        id2:=fieldbyname('mate_id').asinteger; //�ͻ�/ҽԺ
                        matetypeid:=fieldbyname('mate_type_id').asinteger;
                    end;
                end;
            end;
            if sheet.cells[j,4].text='' then dt:=dt0 else
            try
                dt:=strtodatetime(Trim(sheet.cells[j,4].text));
            except
                dt:=dt0;
            end;
            if (sheet.cells[j,5].text='') or (sheet.cells[j,5].text='���۳���') or (sheet.cells[j,5].text='����') then id3:= 1
            else if (sheet.cells[j,5].text='�����˻�') or (sheet.cells[j,5].text='�˻�') then id3:= 2
            else if (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='�����˻�') then id3:=3
            else if (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='��������') then id3:=4;
//            if id3=0 then id3:= 1;
            if (sheet.cells[j,10].text='����') then id10:= 2 else id10:= 1;
            if sheet.cells[j,6].text<>'' then
            begin
{
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger;
}  //������ҩƷ����Ϊ �Է�(��ҵ��˾)����
                if id10= 2 then //����  ��ȡ����˾Ʒ��
                begin
                    if active then close;
                    commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';
                    open;
                    if recordcount>0 then id4:=fieldbyname('med_id').asinteger;
                    rate:=1;
                end
                else //��ҵ
                begin
                    if active then close;
                    commandtext:='select top 1 a.med_id,a.rate,a.platform_id from tb_linkword a,tb_medicine b';
                    commandtext:=commandtext+' where a.type_id=1 and a.comp_id='+inttostr(compid);
                    commandtext:=commandtext+'  and a.med_id=b.med_id and (a.zdesc='''+Trim(sheet.cells[j,6].text)+''' or b.med_code='''+Trim(sheet.cells[j,6].text)+''')';
                    commandtext:=commandtext+'  and a.mate_id1='+inttostr(id1);
                    open;
                    if recordcount>0 then
                    begin
                        if id4=0 then id4:=fieldbyname('med_id').asinteger;
                        if fieldbyname('rate').asfloat=0 then rate:=1 else rate:=fieldbyname('rate').asfloat;
                        pid:=fieldbyname('platform_id').asinteger;
                    end
                    else rate:=1;
                end;
            end;
            if rate=0 then rate:=1;
            if matetypeid=1 then //�ͻ�ΪҽԺ������ ������ҵ��Ա
            begin
                if active then close;
                commandtext:='sp_getleadbroker '+inttostr(compid)+','+inttostr(id2)+','+inttostr(id4)+','''+datetimetostr(dt)+'''';
                open;
                if (recordcount>0) then // raise Exception.Create('�ÿͻ���Ʒ����δ����ҵ��Ա����������ҵ��Ա��ӪƷ�ּ���ɹ���');
                begin
                    id5:=fieldbyname('broker_id').asinteger; // ҵ��Ա
                    id6:=fieldbyname('lead_id').asinteger; // ������
                end;
            end;
            if active then close;
            commandtext:='select dbo.fn_getbidprice9 ('+inttostr(id2)+','+inttostr(id4)+','''+datetimetostr(dt)+''')';
//edit3.text:=commandtext;
            open;
            if recordcount>0 then price1:=fields[0].asfloat;
{
            if (id2>0) and (sheet.cells[j,10].text<>'') then //����д���б��,�������б��׼ȷ��
            begin
                if active then close;
                commandtext:='select top 1 1 from tb_brokermed where mate_id='+inttostr(id2)+' and med_id='+inttostr(id4);
                commandtext:=commandtext+' and (price1='+cleardeli(sheet.cells[j,10].text)+' or price4='+cleardeli(sheet.cells[j,10].text)+' or price5='+cleardeli(sheet.cells[j,10].text)+' or price6='+cleardeli(sheet.cells[j,10].text)+' or price7='+cleardeli(sheet.cells[j,10].text)+')';
                open;
                if recordcount=0 then price1:=-1 else price1:=strtofloat(cleardeli(sheet.cells[j,10].text));
            end;
}
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
            if (id1=0) or (id2=0) or (id3=3) or (id4=0) or (sheet.cells[j,7].text='')
                or ((id3=1) and (strtofloat(cleardeli(sheet.cells[j,7].text))<0)) or ((id3=2) and (strtofloat(cleardeli(sheet.cells[j,7].text))>0))
             then  //  or (price1<=0) or (sheet.cells[j,8].text='')
//            if (id1=0) or (id2=0) or (id4=0) or ((matetypeid=1) and ((id5=0) or (id6=0))) or (sheet.cells[j,7].text='') or (price1<=0) then  // or (sheet.cells[j,8].text='')
            begin
                sbodcd:=sbodcd+#13#10+'��'+inttostr(j)+'��:';
                if id1=0 then sbodcd:=sbodcd+',δȡ�ù�����λ����ͣ��';
                if id2=0 then sbodcd:=sbodcd+',δȡ�ù�����λ����ͣ��';
                if id3=3 then sbodcd:=sbodcd+',���ɵ������';
                if id4=0 then sbodcd:=sbodcd+',δȡ��ҩƷ';
                if sheet.cells[j,7].text='' then sbodcd:=sbodcd+',������';
                if ((id3=1) and (strtofloat(cleardeli(sheet.cells[j,7].text))<0)) or ((id3=2) and (strtofloat(cleardeli(sheet.cells[j,7].text))>0)) then sbodcd:=sbodcd+',�������������������һ��';
{ ///�����ʱ��飬�����Ч��
                if matetypeid=1 then
                begin
                    if id5=0 then sbodcd:=sbodcd+',δȡ��ҵ��Ա';
                    if id6=0 then sbodcd:=sbodcd+',δȡ��������';
                end;
}
//                if price1<=0 then sbodcd:=sbodcd+',���б�ۻ��б�۴���';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if sbodcd<>'' then
    begin
        MessageBox(0,pchar('�����ļ������������⣬��������'+#13#10+'-----------------------------------'+sbodcd),'��ע��',MB_OK+MB_IconError);
        XL.Quit;
        abort;
    end;
//exit;
//��ʼ����    
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
    if MessageBox(0,'ȷ����������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    sbodcd:='�����������������е���'+#13#10+'---------------------------';
    j:=2;  //��2�п�ʼ ÿ��һ��
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0;id10:=0;rate:=0; matetypeid:=0; price:=0;
        with dm.pubqry do
        begin
            if active then close;
            if sheet.cells[j,1].text<>'' then
            begin
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and isnull(stop_yn,0)=0 and mate_name ='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger; //������˾(��ҵ��˾)
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id,mate_type_id from tb_busimate where mate_type_id in (1,2) and isnull(stop_yn,0)=0 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
//edit3.text:=commandtext;
                open;
                if recordcount>0 then
                begin
                    id2:=fieldbyname('mate_id').asinteger;
                    matetypeid:=fieldbyname('mate_type_id').asinteger;
                end
                else
                begin
                    if active then close;
                    commandtext:='select top 1 a.mate_id,b.mate_type_id from tb_linkword a,tb_busimate b';
                    commandtext:=commandtext+' where a.type_id=2 and a.comp_id=1 and a.mate_id=b.mate_id and isnull(b.stop_yn,0)=0 ';
                    commandtext:=commandtext+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
//edit4.text:=commandtext;
                    open;
                    if recordcount>0 then
                    begin
                        id2:=fieldbyname('mate_id').asinteger; //�ͻ�/ҽԺ
                        matetypeid:=fieldbyname('mate_type_id').asinteger;
                    end;
                end;
            end;
            if sheet.cells[j,4].text='' then dt:=dt0 else
            try
                dt:=strtodatetime(Trim(sheet.cells[j,4].text));
            except
                dt:=dt0;
            end;
            if (sheet.cells[j,5].text='') or (sheet.cells[j,5].text='���۳���') or (sheet.cells[j,5].text='����') then id3:= 1
            else if (sheet.cells[j,5].text='�����˻�') or (sheet.cells[j,5].text='�˻�') then id3:= 2
//            else if (sheet.cells[j,5].text='�����˻�') or (sheet.cells[j,5].text='�˻�') or (strtofloat(cleardeli(sheet.cells[j,7].text))<0) then id3:= 2
            else if (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='�����˻�') then id3:=3
            else if (sheet.cells[j,5].text='����') or (sheet.cells[j,5].text='��������') then id3:=4;
//            if id3=0 then id3:= 1;
            if (sheet.cells[j,10].text='����') then id10:= 2 else id10:= 1;
            if sheet.cells[j,6].text<>'' then
            begin
{
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger;
}
                if active then close;
                commandtext:='select top 1 a.med_id,a.rate,a.platform_id from tb_linkword a,tb_medicine b';
                commandtext:=commandtext+' where a.type_id=1 and a.comp_id='+inttostr(compid);
                commandtext:=commandtext+'  and a.med_id=b.med_id and (a.zdesc='''+Trim(sheet.cells[j,6].text)+''' or b.med_code='''+Trim(sheet.cells[j,6].text)+''')';
                commandtext:=commandtext+'  and a.mate_id1='+inttostr(id1);
                open;
                if recordcount>0 then
                begin
                    id4:=fieldbyname('med_id').asinteger;
                    if fieldbyname('rate').asfloat=0 then rate:=1 else rate:=fieldbyname('rate').asfloat;
                    pid:=fieldbyname('platform_id').asinteger;
                end
                else rate:=1;
            end;
            if rate=0 then rate:=1;

            if matetypeid=1 then //�ͻ�ΪҽԺ������ȡ�� ������ҵ��Ա
            begin
                if active then close;
                commandtext:='sp_getleadbroker '+inttostr(compid)+','+inttostr(id2)+','+inttostr(id4)+','''+datetimetostr(dt)+'''';
                open;
                if (recordcount>0) then // raise Exception.Create('�ÿͻ���Ʒ����δ����ҵ��Ա����������ҵ��Ա��ӪƷ�ּ���ɹ���');
                begin
                    id5:=fieldbyname('broker_id').asinteger; // ҵ��Ա
                    id6:=fieldbyname('lead_id').asinteger; // ������
                end;
            end;
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
            if matetypeid=1 then //�ͻ�ΪҽԺ ȡ������λ���ڵ����б�ۣ��� ȡ�� ���ۼ�Ϊ������λ ���۸�
            begin
                if active then close;
                commandtext:='select top 1 price=round(dbo.fn_getbidprice(mate_id,'+inttostr(id4)+','''+datetimetostr(dt)+''')*(100-isnull(rate,0))/100,3) from tb_busimate where mate_id= '+inttostr(id1); //+' and med_id='+inttostr(id4);
//                commandtext:='select top 1 price=round(dbo.fn_getbidprice9 ('+inttostr(id2)+','+inttostr(id4)+','''+datetimetostr(dt)+''')*(100-isnull(rate,0))/100,3) from tb_busimate where mate_id= '+inttostr(id1); //+' and med_id='+inttostr(id4);
                open;
                if recordcount>0 then price:=fieldbyname('price').asfloat;
//���"������λ"����ҽԺ��λ�������"���ۼ�"="������λ"���ڵص�Ʒ���б��*��1-������λ�������ʣ�
            end
            else  //�ͻ�Ϊ��ҵ��˾(mate_type_id=2)�� ȡ������λ���ڵ����б��
            begin
                if active then close;
                commandtext:='select top 1 price=round(dbo.fn_getbidprice(mate_id,'+inttostr(id4)+','''+datetimetostr(dt)+''')*(100-isnull(rate,0))/100,3) from tb_busimate where mate_id= '+inttostr(id2); //+' and med_id='+inttostr(id4);
                open;
                if recordcount>0 then price:=fieldbyname('price').asfloat;
//���"������λ"������ҵ��˾�������"���ۼ�"="������λ"���ڵص�Ʒ���б��*��1-������λ�������ʣ�
            end;
//showmessage(floattostr(price));
//exit;
{
            if (sheet.cells[j,10].text<>'') then //����д���б��,�������б��׼ȷ��
            begin
                try
                    price1:=strtofloat(cleardeli(sheet.cells[j,10].text));
                except
                    price1:=0;
                end;
            end;
}
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
            if active then close;
            commandtext:='select dbo.fn_getbidprice9 ('+inttostr(id2)+','+inttostr(id4)+','''+datetimetostr(dt)+''')';
            open;
            if recordcount=0 then price1:=0 else price1:=fields[0].asfloat;
//showmessage(inttostr(id1)+','+ inttostr(id2));

            sb:=formatfloat('00000000',getbillid(compid,1));
            sbodcd:=sbodcd+#13#10+sb;
            if active then close;
            commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,cate_id,busi_type,creat_by,creat_dt,src_id,dst_id,bod_desc,carry_dt,med_id,platform_id)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','''+sb+''',2,0,'+inttostr(id10)+','+inttostr(id3)+','+inttostr(curuserid)+',getdate(),';
            commandtext:=commandtext+inttostr(id1)+','+ inttostr(id2)+','''+ Trim(sheet.cells[j,3].text)+''','''+datetimetostr(dt)+''','+inttostr(id4)+','+inttostr(pid)+')';
            commandtext:=commandtext+' select @@identity';
            open;
            mid:=fields[0].asinteger;
//showmessage(floattostr(rate));            
//�����ʽ: 1������λid1,2������λid2,3����ժҪ,4��������,5�������id3,6��ҵ��˾ҩƷ����id4,7����,8����,9��Ч����,10ҵ�����,11��ҵ����
            if active then close;
            commandtext:='insert into tb_bill_dtl (bod_id,med_id,price,price2,price3,qty,amot,sta_id,lead_id,bat_cd,valid_dt,platform_id)';
            commandtext:=commandtext+' values ('+inttostr(mid)+','+inttostr(id4)+',';

            commandtext:=commandtext+'round('+floattostr(price)+',3),'; //ȡ3λС��
            commandtext:=commandtext+floattostr(price1)+','; //�б��
            if sheet.cells[j,11].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+'cast('+cleardeli(sheet.cells[j,11].text)+'*1.00/'+floattostr(rate)+' as decimal(15,4)),'; //price3 ��ҵ���� *1.00 ����2�����������ȥ��С��
            if sheet.cells[j,7].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,7].text)+'*'+floattostr(rate)+',';
            if (sheet.cells[j,7].text='')
                then commandtext:=commandtext+'0,'
                else commandtext:=commandtext+'cast('+floattostr(price)+'*'+cleardeli(sheet.cells[j,7].text)+'*'+floattostr(rate)+' as decimal(15,2)),';
//            commandtext:=commandtext+'90,';
            if id5=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+inttostr(id5)+',';  //ҵ��Ա
            if id6=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+inttostr(id6)+',';  //������
            commandtext:=commandtext+''''+sheet.cells[j,8].text+''',';
            if sheet.cells[j,9].text='' then commandtext:=commandtext+'null' else commandtext:=commandtext+''''+ Trim(sheet.cells[j,9].text)+'''';
            commandtext:=commandtext+','+inttostr(pid)+')';
//edit5.text:=commandtext;
            execute;
            ///������дtb_bill.mate_id1,mate_id2,mate_id3,mate_id4,mate_id5 ��ҵ��˾�㼶����
            if active then close;
            commandtext:='sp_updatebod2mate '+inttostr(mid); //д�뵥�����ҵ������
            execute;
{
            if id5=0 then //δȡ��ҵ��Աʱ�������ʱȡҵ��Ա���������˴�
            begin
                if active then close;  //��ҵ����� ҵ��Ա�������� ����
                commandtext:='update b set lead_id=d.lead_id,sta_id=d.sta_id';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed d,(select b.bod_id,b.med_id,rec_id=max(rec_id) ';
                commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_brokermed c';
                commandtext:=commandtext+' where a.bod_id='+inttostr(mid)+' and a.bod_id=b.bod_id and c.valid=1';
                commandtext:=commandtext+'  and a.dst_id=c.mate_id and b.med_id=c.med_id and c.valid_dt<=a.carry_dt group by b.bod_id,b.med_id) h';
                commandtext:=commandtext+' where b.bod_id=h.bod_id and b.med_id=h.med_id and d.rec_id=h.rec_id and (isnull(b.sta_id,0)=0 or isnull(b.lead_id,0)=0)';
                execute;
            end;
}
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar(sbodcd),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedexport9.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0))
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
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=0))
         or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1)) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч');

//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id in ('+t+') and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('��ѡ���ݹ�����λ���������������ѽ��ˣ�������˻����');
    if sender= N1 then
    begin
{
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˵��ݣ��������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
}
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(src_id,0)=0 or isnull(cate_id,0)=0 or isnull(dst_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ��������δѡ�񹩻���λ�򹺻���λ��ҵ����𡢷������ڣ��������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;

        if active then close;
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
            s:='���е��ݳ��������Ʒ���������������������������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��';
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;

        if active then close;
{
    commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
    commandtext:=commandtext+' where b.bod_id='+ cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and b.med_id=m.med_id';
    commandtext:=commandtext+'  and not exists (select 1 from tb_medstock_bat f where f.mate_id='+cdsbill.fieldbyname('src_id').asstring+' and f.cate_id='+cdsbill.fieldbyname('cate_id').asstring+' and f.med_id=b.med_id and f.qty>=b.qty)';
}
        commandtext:='select top 5 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and b.med_id=m.med_id';
        commandtext:=commandtext+'  and not exists (select 1 from tb_medstock_bat f where f.mate_id=a.src_id and b.med_id=f.med_id and f.qty>=b.qty)'; // f.comp_id='+inttostr(compid)+' and
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
            s:='���е���Ʒ���޿����治�㣬�����������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'�� ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
{       ///����ȡ�б��
        if active then close;
        commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where b.bod_id in ('+t+') and b.med_id=m.med_id and isnull(b.price2,0)=0';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='���е���Ʒ�����б�ۣ������������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'�� ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
}
        if active then close;
        commandtext:='select top 5 a.bod_cd,b.med_id,m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+')';
        commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id=m.med_id';
        commandtext:=commandtext+' and not exists (select 1 from tb_sysrule c where c.type_id=2 and c.comp_id='+inttostr(compid);
        commandtext:=commandtext+' and c.mate_id=a.src_id and b.med_id=c.med_id)';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='������λ����Ʒ����δ������ҵ���𣬱����������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'�� ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;

        if active then close;
        commandtext:='select top 5 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_busimate c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+')';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and a.dst_id=c.mate_id and c.mate_type_id=1 and b.med_id=m.med_id';
        commandtext:=commandtext+'  and not exists (select 1 from tb_busiframe_dtl f where b.med_id=f.med_id';  // f.comp_id='+inttostr(compid)+' and
        commandtext:=commandtext+'  and valid_dt<='''+cdsbill.fieldbyname('carry_dt').asstring+'''';
        commandtext:=commandtext+'  and dbo.fn_treeischild(c.district,f.district_id)=1)';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='����Ʒ����δ����ҵ��ṹ(��ע����Ч����)�������������'+ #13#10;
            s:=s+'-------------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'�� ['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        commandtext:='select top 5 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+')';
        commandtext:=commandtext+'  and a.bod_id=b.bod_id and b.med_id=m.med_id and isnull(b.sta_id,0)=0';
    	commandtext:=commandtext+'  and exists (select 1 from tb_busimate c where a.dst_id=c.mate_id and c.mate_type_id=1)'; //��������λΪҽԺʱ�����ҵ��Ա
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
            s:='���е��ݼ�Ʒ��δȡ��ҵ��Ա�������������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
{
        if active then close;  //��ҵ����� ҵ��Ա�������� ����
        commandtext:='update b set lead_id=d.lead_id,sta_id=d.sta_id';
        commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed d,(select b.bod_id,b.med_id,rec_id=max(rec_id) ';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_brokermed c';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and c.valid=1';
        commandtext:=commandtext+'  and a.dst_id=c.mate_id and b.med_id=c.med_id and c.valid_dt<=a.carry_dt group by b.bod_id,b.med_id) h';
        commandtext:=commandtext+' where b.bod_id=h.bod_id and b.med_id=h.med_id and d.rec_id=h.rec_id and (isnull(b.sta_id,0)=0 or isnull(b.lead_id,0)=0)';
        try
            setprogress(1);
            execute;
        finally
            setprogress(0);
        end;
}
        if active then close;
        commandtext:='select top 5 m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and b.med_id=m.med_id';
        commandtext:=commandtext+'  and not exists (select 1 from tb_brokermed c where c.valid=1 and a.dst_id=c.mate_id and b.med_id=c.med_id and c.valid_dt<=a.carry_dt)';
        commandtext:=commandtext+'  and exists (select 1 from tb_busimate c where a.dst_id=c.mate_id and c.mate_type_id=1)'; //��������λΪҽԺʱ�����ҵ��Ա
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
            s:='����Ʒ����δ����ҵ��Ա���ù������ͣ��(ע����Ч����)'+ #13#10;
            s:=s+'-------------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;

        if active then close;  //����б��
        commandtext:='select top 5 a.bod_cd,m.med_code,m.med_name,m.specifi,m.pdt_place';
        commandtext:=commandtext+' from tB_bill a,tb_bill_dtl b,tb_busimate c,tb_medicine m';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and a.dst_id=c.mate_id and b.med_id=m.med_id';
        commandtext:=commandtext+'   and (c.mate_type_id=1 and not exists (select 1 from tb_brokermed d where d.mate_id=a.dst_id and d.med_id=b.med_id and d.valid_dt<=a.carry_dt)';
        commandtext:=commandtext+'		or c.mate_type_id=2 and not exists (select 1 from tb_medata e where e.type_id=1 and e.med_id=b.med_id and e.valid_dt<=a.carry_dt and dbo.fn_treeischild(c.district,e.id1)>0))';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            first;
            s:='����Ʒ���޷�ȡ���б��(ҽԺ��ҵ��Ա������ҵ������Ʒ����۱���)�������������'+ #13#10;
            s:=s+'------------------------------------------------------------------------------';  //+ #13#10

            while not eof do
            begin
                s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��:'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
    end;
    
    if sender= N2 then //����
    begin
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (creat_by<>'+inttostr(curuserid);
        commandtext:=commandtext+' or check_dt<'''+datetimetostr(dt0)+''' or check_dt>=dateadd(day,1,'''+datetimetostr(dt0)+''') )';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˻�ǵ��յ���(��'+fieldbyname('bod_cd').asstring+'��)�����ɷ����'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
{ ǰ�����иü��
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(src_id,0)=0 or isnull(dst_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ��������δѡ�񹩻���λ��������λ���������ڣ��������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
}
    end;
    if sender= N1 then
        if MessageBox(0,'ȷ����ѡ�������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    if sender= N2 then
        if MessageBox(0,'ȷ���������ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    cdsbill.DisableControls;
    if active then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    if sender= N1 then commandtext:=commandtext+' and bod_status_id=0';
    if sender= N2 then commandtext:=commandtext+' and bod_status_id=1';
    open;
    if recordcount=0 then abort;
    first;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active then close;
                    if sender= N1 then commandtext:='sp_updatestock2 2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock2 -2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                cdsbill.Locate('bod_id',dm.pubqry.fieldbyname('bod_id').asinteger,[]);
				refreshmyrecord(cdsbill,dm.Refreshcds,0,'a.bod_id',cdsbill.fieldbyname('bod_id').asinteger);
                next;
            end;
            if sender= N1 then
            begin
                if active then close;  //ȡ�б��
                commandtext:='update b set price2= dbo.fn_getbidprice9 (a.dst_id,b.med_id,a.carry_dt)';
                commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b where a.bod_id in ('+t+')';
                commandtext:=commandtext+'  and a.bod_id=b.bod_id';
                try
                    setprogress(1);
                    execute;
                finally
                    setprogress(0);
                end;

                if active then close;  //��ҵ����� ҵ��Ա�������� ����
                commandtext:='update b set lead_id=d.lead_id,sta_id=d.sta_id';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed d,(select b.bod_id,b.med_id,rec_id=max(rec_id) ';
                commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_brokermed c,tb_busimate d';
                commandtext:=commandtext+' where a.bod_id in ('+t+') and a.bod_id=b.bod_id and c.valid=1';
                commandtext:=commandtext+'  and a.dst_id=c.mate_id and d.dst_id=d.mate_id and d.mate_type_id=1 and b.med_id=c.med_id and c.valid_dt<=a.carry_dt group by b.bod_id,b.med_id) h';
                commandtext:=commandtext+' where b.bod_id=h.bod_id and b.med_id=h.med_id and d.rec_id=h.rec_id and (isnull(b.sta_id,0)=0 or isnull(b.lead_id,0)=0)';
                try
                    setprogress(1);
                    execute;
                finally
                    setprogress(0);
                end;

            end;

//            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('��ѡ�����ѳɹ����'),'��ע��',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
        except
//            if sender= N1 then MessageBox(0,'�������ʧ��','��ע��',MB_OK+MB_ICONERROR);
//            if sender= N2 then MessageBox(0,'���ݷ����ʧ��','��ע��',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
	    cdsbill.EnableControls;
        setprogress(0);
    end;
end;
end;

procedure Tsetmedexport9.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetmedexport9.N3Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
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
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч(ֻ��ɾ���Ƶ�״̬����)');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
    commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
//    commandtext:=commandtext+' and creat_dt>='''+datetimetostr(curuserid)+''' and creat_dt<dateadd(day,1,'''+datetimetostr(dt0)+''')';
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('��ѡ�������зǱ��˵��ݣ�����ɾ��'),'��ע��',MB_OK+MB_IconError); //��ǵ���
        abort;
    end;
end;
if MessageBox(0,'ȷ��ɾ����ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //ˢ��
end;

procedure Tsetmedexport9.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusiframe do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('level_id1').asinteger:= query1.fieldbyname('level_id1').asinteger;
        cdsbill.fieldbyname('level_id2').asinteger:= query1.fieldbyname('level_id2').asinteger;
        cdsbill.fieldbyname('level_id3').asinteger:= query1.fieldbyname('level_id3').asinteger;
        cdsbill.fieldbyname('agent_id').asinteger:= query1.fieldbyname('agent_id').asinteger;
        cdsbill.fieldbyname('agent').asstring:= query1.fieldbyname('agent').asstring;
        cdsbill.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= query1.fieldbyname('broker').asstring;
        cdsbill.fieldbyname('district_id').asinteger:= query1.fieldbyname('district_id').asinteger;
    end
    else
    begin
        cdsbill.fieldbyname('level_id1').asinteger:= 0;
        cdsbill.fieldbyname('level_id2').asinteger:= 0;
        cdsbill.fieldbyname('level_id3').asinteger:= 0;
        cdsbill.fieldbyname('agent_id').asinteger:= 0;
        cdsbill.fieldbyname('agent').asstring:= '';
        cdsbill.fieldbyname('broker_id').asinteger:=0;
        cdsbill.fieldbyname('broker').asstring:='';
        cdsbill.fieldbyname('district_id').asinteger:= 0;
    end;
end;
end;

procedure Tsetmedexport9.dxDBButtonEdit3Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetmedexport9.dxDBButtonEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetmedexport9.dxDBButtonEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#32) and ((Sender as TdxDBButtonEdit).Text<>'') then //
begin
    pickbusiframe.Edit1.Text:=(Sender as TdxDBButtonEdit).Text;
    pickbusiframe.Edit1.OnKeyPress(Sender,Key);
    (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
    (Sender as TdxDBButtonEdit).SelectAll;
end
end;

procedure Tsetmedexport9.Button1Click(Sender: TObject);
begin
if pubqry.active then pubqry.close;
pubqry.commandtext:='select bod_id from tb_bill where bod_type_id=2 and isnull(mate_id1,0)=0 and isnull(mate_id2,0)=0 and isnull(mate_id3,0)=0 and isnull(mate_id4,0)=0 and isnull(mate_id5,0)=0';
pubqry.open;
while not pubqry.eof do
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='sp_updatebod2mate '+pubqry.fieldbyname('bod_id').asstring;
        execute;
    end;
    pubqry.next;
end;
end;

procedure Tsetmedexport9.N5Click(Sender: TObject);
begin
if MessageBox(0,'ȷ������������ҵ�㼶','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatebod2mate '+cdsbill.fieldbyname('bod_id').asstring;
    execute;
end;
MessageBox(0,pchar('�ѳɹ�������ҵ�㼶'),'��ע��',MB_OK+MB_ICONInformation);
{
if pubqry.active then pubqry.close;
pubqry.commandtext:='select bod_id from tb_bill where bod_type_id=2 and isnull(mate_id1,0)=0 and isnull(mate_id2,0)=0 and isnull(mate_id3,0)=0 and isnull(mate_id4,0)=0 and isnull(mate_id5,0)=0';
pubqry.open;
while not pubqry.eof do
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='sp_updatebod2mate '+pubqry.fieldbyname('bod_id').asstring;
        execute;
    end;
    pubqry.next;
end;
}
end;

procedure Tsetmedexport9.dxEdit1Click(Sender: TObject);
begin
dxEdit1.SelectAll;
dxEdit1.SetFocus;
end;

procedure Tsetmedexport9.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedexport9.N6Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'�б�1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmedexport9.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
	case fieldbyname('platform_id').asinteger of
		1: fieldbyname('cplatform').asstring:='ʡƽ̨';
		2: fieldbyname('cplatform').asstring:='����GPO';
		3: fieldbyname('cplatform').asstring:='����GPO';
    end;
end
end;

procedure Tsetmedexport9.N9Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=#13#10 +'----------------------';  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if cdsbill.fieldbyname('bod_status_id').asinteger=1 then
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
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч(����˵��ݿɵ���)');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 3 bod_cd from tb_bill where bod_id in ('+t+') and (bod_status_id<>1 or busi_type=3)';
    open;
    if recordcount>0 then
    begin
        first;
        s:='���е���δ��˻�Ϊ�������������ɵ���'+ #13#10;
        s:=s+'-------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+'��';
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
    commandtext:='select top 3 a.bod_cd,bod_cd1=c.bod_cd from tb_bill a,tb_bill c where a.bod_id in ('+t+') and c.bod_type_id=2 and c.busi_type=3 and c.relative_id=a.bod_id';
    open;
    if recordcount>0 then
    begin
        first;
        s:='���е������е����������ٴ�����'+ #13#10;
        s:=s+'--------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+' ����:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
    if active then close;
    commandtext:='select top 3 a.bod_cd from tb_bill where a.bod_id in ('+t+') and year(carry_dt)=year(getdate()) and month(carry_dt)=month(getdate())';
    open;
    if recordcount>0 then
    begin
        first;
        s:='���е���Ϊ���µ��ݣ����ɵ����˻�'+ #13#10;
        s:=s+'--------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('bod_cd').asstring+' ����:'+fieldbyname('bod_cd1').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;

	if messagedlg('�����е������ɵ���:'+s,mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_cd,src_id,dst_id,bod_type_id,bod_status_id,busi_type,cate_id,stock_id,carry_dt,bod_desc,mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,med_id,platform_id,relative_id,order_id,creat_by,creat_dt)';
    commandtext:=commandtext+' select comp_id,bod_cd+''-A'',src_id,dst_id,bod_type_id,bod_status_id=0,busi_type=3,cate_id,stock_id,carry_dt=DATEADD(mm, DATEDIFF(mm,0,getdate()), 0),'; //ȡ����1��
    commandtext:=commandtext+' bod_desc+case when carry_dt is null then '''' else '' ԭ��������:''+convert(char(10),carry_dt,20) end,';
    commandtext:=commandtext+' mate_id1,mate_id2,mate_id3,mate_id4,mate_id5,med_id,platform_id,bod_id,order_id,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_bill where bod_id in ('+t+')';
//    commandtext:=commandtext+' go';
    commandtext:=commandtext+' insert into tb_bill_dtl (bod_id,level_id1,level_id2,level_id3,lead_id,sta_id,med_id,bat_cd,price,price1,price2,price3,qty,amot,valid_dt,rule_id,rate,sta_id1,rate0,drawprice,costprice,busiframe_id,platform_id)';
    commandtext:=commandtext+' select c.bod_id,level_id1,level_id2,level_id3,lead_id,sta_id,med_id,bat_cd,price,price1,price2,price3,qty=-qty,amot=-amot,valid_dt,rule_id,rate,sta_id1,rate0,drawprice,costprice,busiframe_id,platform_id';
    commandtext:=commandtext+' from tb_bill_dtl b,(select relative_id,bod_id=max(bod_id) from tb_bill where bod_type_id=2 and busi_type=3 group by relative_id) c';
    commandtext:=commandtext+' where b.bod_id in ('+t+') and b.bod_id=c.relative_id';
edit3.text:=commandtext;    
    execute;
end;
//SpeedButton5Click(nil);
MessageBox(0,pchar('�ѳɹ����ɵ���'),'��ע��',MB_OK+MB_ICONInformation);
end;

end.
