unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBELib, dxEditor, Animate, GIFCtrl,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, Comobj, mycds,
  wwclearbuttongroup, wwradiogroup;

type
  Tsetcheckstock = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
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
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
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
    DBText15: TDBText;
    cdsbillreceipt_by: TIntegerField;
    DBText16: TDBText;
    dxDBGrid1bod_id: TdxDBGridColumn;
    cdsbillbroker_id: TIntegerField;
    dxCheckEdit1: TdxCheckEdit;
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
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridColumn;
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
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
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
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    N3: TMenuItem;
    Label6: TLabel;
    pickmedinfoprice2: TBCDField;
    pickmedinfoprice3: TBCDField;
    cdsbilldistrict_id: TIntegerField;
    cdsbilllevel_id1: TIntegerField;
    cdsbilllevel_id2: TIntegerField;
    cdsbilllevel_id3: TAutoIncField;
    cdsbilllevel1: TStringField;
    cdsbilllevel2: TStringField;
    cdsbilllevel3: TStringField;
    cdsbillagent_id: TAutoIncField;
    ADOQuery1mate_name: TStringField;
    cdsbillmate_name: TStringField;
    cdsbillbroker: TStringField;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label20: TLabel;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    Shape4: TShape;
    Label29: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    BitBtn1: TBitBtn;
    cdsbill_dtlrela_id: TIntegerField;
    cdsbill_dtlrela_id1: TIntegerField;
    GroupBox2: TGroupBox;
    wwRadioGroup2: TwwRadioGroup;
    Label17: TLabel;
    cdsbillcate_id: TWordField;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    GIFimage2: TRxGIFAnimator;
    cdsbillchannel_id: TIntegerField;
    cdsbillchannel_dtl_id: TIntegerField;
    cdsbillchannel: TStringField;
    cdsbillchannel_dtl: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
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
    procedure dxDBGrid2DblClick(Sender: TObject);
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
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setcheckstock: Tsetcheckstock;

implementation

uses datamodu, Unit7, Unit14, Unit16a, Unit28b;

{$R *.DFM}

procedure Tsetcheckstock.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton4.enabled:=false;    // print disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
end;

procedure Tsetcheckstock.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetcheckstock.FormActivate(Sender: TObject);
begin
if cdsbill.active=false then SpeedButton5Click(nil);
end;

procedure Tsetcheckstock.FormCloseQuery(Sender: TObject;
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
with cdsbill     do if active then close;
with cdsbill_dtl do if active then close;
with pickmedinfo do if active then close;
with dm.picmedinfoc do if active then close;
end;

procedure Tsetcheckstock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcheckstock.BitBtn1Click(Sender: TObject);
begin
with cdsbill do
    if (active=False) or (recordcount=0) or (cdsbill_dtl.Active=False) then abort;
if dxbuttonedit1.tag=0
    then raise Exception.Create('��ѡ���̵�Ʒ��');
with cdsbill_dtl do
begin
    if not (state in [dsinsert,dsedit]) then append;
    fieldbyname('med_code').asstring:=pickmedicine.query1.fieldbyname('med_code').asstring;
    fieldbyname('med_name').asstring:=pickmedicine.query1.fieldbyname('med_name').asstring;
    fieldbyname('specifi').asstring:=pickmedicine.query1.fieldbyname('specifi').asstring;
    fieldbyname('pdt_place').asstring:=pickmedicine.query1.fieldbyname('pdt_place').asstring;
    fieldbyname('med_unit').asstring:=pickmedicine.query1.fieldbyname('med_unit').asstring;
    fieldbyname('med_id').asinteger:=dxbuttonedit1.tag;
    post;
    last;
end;
end;

procedure Tsetcheckstock.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetcheckstock.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('����ѡ����ҵ��˾');
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
    with pickmed_bat.query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY b.med_name,b.pdt_place,b.specifi,b.qtyperpack) as int),';
        commandtext:=commandtext+' a.rec_id,a.parent_id,a.comp_id,a.mate_id,agent=dbo.fn_mate_name(a.mate_id),a.cate_id,a.med_id,a.bat_cd,a.qty,a.price,b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,';
        commandtext:=commandtext+' b.qtyperpack,b.qtyperbox,b.qry_code,med_unit=dbo.fn_obj_desc(b.unit_id),a.valid_dt,b.otc_rx,b.gmp'; //,b.discount
        commandtext:=commandtext+' from tb_medstock_bat a,tb_medicine b ';
        commandtext:=commandtext+' where a.med_id=b.med_id and a.mate_id='+cdsbill.fieldbyname('dst_id').asstring;  // and (a.qty<>0)
        if fwid  // ���ַ���
         then commandtext:=commandtext+' and (b.med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and b.qry_code like''%'+sk+'%''';
        commandtext:=commandtext+' order by b.med_name,b.pdt_place,b.specifi,b.qtyperpack';  //,a.bat_cd
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯƷ��'); end;
        if recordcount=1 then
        begin
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
            fmateid:=cdsbill.fieldbyname('dst_id').asinteger;
            pickmed_bat.edit1.text:= cdsbill_dtl.fieldbyname('med_code').asstring;
//            pickmed_bat.label1.caption:= formatfloat('[#,###]',pickmed_bat.query1.recordcount);
            if pickmed_bat.showmodal= mrOK then
            begin
                if pickmed_bat.query1.active then
                begin
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
            end
            else exit;
        end;
    end;
end;
end;

procedure Tsetcheckstock.dxDBGrid2Enter(Sender: TObject);
begin
//if cdsbill.fieldbyname('src_id').asinteger=0
// then raise Exception.Create('����ѡ��Ӧ��Ӧ��λ');
if cdsbill.fieldbyname('dst_id').asinteger=0
 then raise Exception.Create('����ѡ����ҵ��˾');
with cdsbill_dtl do
    if (active) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetcheckstock.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetcheckstock.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ����ҵ��˾');

//  UpdateApply speedbutton
setprogress(1);
with cdsbill do
begin
    if fieldbyname('bod_cd').asstring='' then
    begin
        if not (state in [dsinsert,dsedit]) then edit;
//        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid('IMP'));
        fieldbyname('bod_cd').asstring:=formatfloat('00000000',getbillid(compid,fieldbyname('bod_type_id').asinteger));
    end;

    mid:=fieldbyname('bod_id').asinteger;

    if state in [dsinsert,dsedit] then post;
    if ChangeCount>0 then myupdaterefresh(cdsbill,'tb_bill','bod_id','');
    refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',mid)
      //ApplyUpdates(-1);
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

procedure Tsetcheckstock.SpeedButton9Click(Sender: TObject);
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

procedure Tsetcheckstock.SpeedButton5Click(Sender: TObject);
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

    commandtext:='select a.*,c.mate_name,agent=f.zname,broker=g.zname,creater=d.zname,checker=e.zname,level1=h.zdesc,level2=i.zdesc,level3=j.zdesc';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.agent_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.broker_id =g.sta_id';
    commandtext:=commandtext+' left join tb_object h on a.level_id1 =h.obj_id';
    commandtext:=commandtext+' left join tb_object i on a.level_id2 =i.obj_id';
    commandtext:=commandtext+' left join tb_object j on a.level_id3 =j.obj_id';
    commandtext:=commandtext+' where a.bod_type_id=10 and a.busi_type=1 and a.comp_id='+inttostr(compid);
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetcheckstock.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetcheckstock.SpeedButton6Click(Sender: TObject);
var mid :integer;
begin
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,busi_type,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',10,0,1,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),102) as datetime))';
    commandtext:=commandtext+'select @@identity';     //busi_type: 1 ��ҵ��˾�̵㵥��2 �ն˿ͻ��̵㵥
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
setprogress(0);
end;

procedure Tsetcheckstock.SpeedButton7Click(Sender: TObject);
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

procedure Tsetcheckstock.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]', recordcount);
        edit1.text:=fieldbyname('mate_name').asstring;
        edit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
//        dxDBLookupEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        wwRadioGroup2.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        speedbutton4.enabled:=(active) and (recordcount>0) and (fieldbyname('bod_status_id').asinteger=1);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);  //��� ͼ����ʾ
        gifimage2.visible:=(fieldbyname('bod_status_id').asinteger=2);  //��� ͼ����ʾ
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
                commandtext:='select a.*,b.med_name,b.specifi,b.pdt_place,b.med_code,b.qtyperpack,med_unit=c.zdesc';
                commandtext:=commandtext+' from tb_bill_dtl a'; //,tb_medicine b,tb_object c ';
                commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
                commandtext:=commandtext+' left join tb_object c on b.unit_id=c.obj_id';
                commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
                commandtext:=commandtext+' order by a.dtl_id';
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

procedure Tsetcheckstock.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin

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
        commandtext:=commandtext+' mate_id,mate_name,deputy,phone,address,broker_id,broker=dbo.fn_staff_name(broker_id),';
        commandtext:=commandtext+' zname1,address1,phone1,zname2,address2,phone2,settle_type,stop_yn,qry_code from tb_busimate';
        commandtext:=commandtext+' where mate_type_id=2 and comp_id='+inttostr(compid);
        if fwid  // ���ַ���
         then commandtext:=commandtext+' and (med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and qry_code like''%'+sk+'%''';
//        commandtext:=commandtext+'  order by mate_name';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯ��ҵ��˾'); end;
        pickbusimate2.edit1.text:= edit1.text;
        if pickbusimate2.showmodal= mrOK then
        begin
            if fieldbyname('stop_yn').asboolean=true
                then raise Exception.Create('����ҵ��˾��ͣ�ã������Ƶ�');
            with cdsbill do
            begin
                if not (state in [dsinsert,dsedit]) then edit;
                fieldbyname('dst_id').asinteger:=pickbusimate2.query1.FieldByName('mate_id').asinteger;
                if pickbusimate2.query1.FieldByName('broker_id').asstring<>'' then fieldbyname('broker_id').asinteger:=pickbusimate2.query1.FieldByName('broker_id').asinteger;
                fieldbyname('settle_type').asinteger:=pickbusimate2.query1.FieldByName('settle_type').asinteger;
                Edit1.text:=pickbusimate2.query1.FieldByName('mate_name').asstring;
            end;
        end;
    end;
end;
end;

procedure Tsetcheckstock.Edit1Click(Sender: TObject);
begin
edit1.selectall;
end;

procedure Tsetcheckstock.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
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

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('��ѡ��Ʒ��');

       end;
       if focusedcolumn= 7 then  // �����������ֶε�cursor����
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

procedure Tsetcheckstock.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetcheckstock.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetcheckstock.SpeedButton2Click(Sender: TObject);
var s: string;
begin
with cdsbill do
begin
    if fieldbyname('dst_id').asstring='' then raise Exception.Create('��ѡ����ҵ��˾');
    if fieldbyname('cate_id').asstring='' then raise Exception.Create('��ѡ��ҵ�����');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('�����뷢������');
end;
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ��������');
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
    commandtext:='select top 3 m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and isnull(b.price,0)=0 and b.med_id=m.med_id';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='����Ʒ�ּ۸�Ϊ0�������������'+ #13#10;
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
    commandtext:=commandtext+' from (select med_id,bat_cd,cnt=count(1) from tb_bill_dtl where bod_id='+cdsbill.fieldbyname('bod_id').asstring+' group by med_id,bat_cd having count(1)>1) b,';
    commandtext:=commandtext+' tb_medicine m where b.med_id=m.med_id';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
    if recordcount>0 then
    begin
        first;
        s:='����Ʒ�������ظ��������������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +'['+fieldbyname('med_code').asstring+']'+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring+' '+fieldbyname('bat_cd').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
end;
if MessageBox(0,'ȷ���������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton2.enabled:=false; // ��������������
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
//    commandtext:='sp_updatestock10 10,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    try
        execute;
    except
        on E: Exception do showmessage(e.Message+#13#10+'������δ���');
    end;
    close;
end;
cdsbill_dtl.tag:=0;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
pickmedinfo.tag:=0;    //  DSbill_dtlDataChange(PageControl1,nil) ��refreshʱ������pickmedinfo.tag�Ƿ���ͬ��ִ��refresh
setunupdatestatus;
setprogress(0);
end;

procedure Tsetcheckstock.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure Tsetcheckstock.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='�����';
        2: fieldbyname('cbod_status').asstring:='�����';
    end;
end;

procedure Tsetcheckstock.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetcheckstock.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�������˵��ݣ������޸�');
end;

procedure Tsetcheckstock.cdsbill_dtlBeforePost(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
//    if (fieldbyname('qty').asfloat=0)
//        then raise Exception.Create('�ɹ���������Ϊ��');
//    if (fieldbyname('price').asfloat=0) or (fieldbyname('qty').asfloat=0)
//        then raise Exception.Create('��Ʒ���ۻ���������Ϊ��');
end;
end;

procedure Tsetcheckstock.cdsbillBeforePost(DataSet: TDataSet);
begin
with cdsbill do
begin
//    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('��ѡ�񹩻���λ');
//    if fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ����ҵ��˾');
//    if (state=dsedit) and (fieldbyname('creat_Dt').asdatetime>=settleday+1)
//     then raise Exception.Create('�������ڳ���Ӧ��������'+datetostr(settleday)+'����˲�');
end;
end;

procedure Tsetcheckstock.cdsbillReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill:'+e.message);
end;

procedure Tsetcheckstock.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetcheckstock.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetcheckstock.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100;
end;

procedure Tsetcheckstock.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetcheckstock.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Values[dxdbgrid1cbod_status.Index] ='�Ƶ�') then Acolor := $00A3FEFC;    // ��ɫ
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '�����') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetcheckstock.dxDBGrid2DblClick(Sender: TObject);
begin
with pickmedicine do
begin
    if showmodal= mrOK then
    begin
        if query1.active then
        begin
            if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
            cdsbill_dtl.fieldbyname('med_id').asinteger:= query1.FieldByName('med_id').asinteger;
            cdsbill_dtl.fieldbyname('med_code').asstring:= query1.FieldByName('med_code').asstring;
            cdsbill_dtl.fieldbyname('med_name').asstring:= query1.FieldByName('med_name').asstring;
            cdsbill_dtl.fieldbyname('specifi').asstring:= query1.FieldByName('specifi').asstring;
            cdsbill_dtl.fieldbyname('pdt_place').asstring:= query1.FieldByName('pdt_place').asstring;
            cdsbill_dtl.fieldbyname('med_unit').asstring:= query1.FieldByName('med_unit').asstring;
        end;
    end;
end;
end;

procedure Tsetcheckstock.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
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
//�ӵ�2�п�ʼ���룬��ʽ: 1��������, 2ҵ�����, 3��ҵ��˾, 4����ժҪ, 5�������, 6ҩƷ����, 7����, 8����, 9����
//    sbodcd:='�����������������е���'+#13#10+'---------------------------';
    mi:=0;j:=2;  //��1�п�ʼ ÿ��һ��
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100) )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text);
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text)+''','''+Trim(sheet.cells[j,8].text)+''','''+Trim(sheet.cells[j,9].text)+''','''+Trim(sheet.cells[j,10].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//�ӵ�2�п�ʼ���룬��ʽ: 1��������, 2ҵ�����, 3��ҵ��˾, 4����ժҪ, 5�������, 6ҩƷ����, 7����, 8����, 9����
    sql1:=sql;  //���������޴���ʱ����sql1 ��������
    sql:=sql+'select top 5 * from ( select top 5 info=''��''+line_no+''���޷������ڻ���Ч'' from @tab where f1='''' or try_cast(f1 as datetime) is null';
    sql:=sql+' union all select top 5 ''��''+line_no+''����ҵ���������'' from @tab where f2='''' or (f2<>''��ҵ'' and f2<>''����'')'; //��ҵ  ����
    sql:=sql+' union all select top 5 ''��''+line_no+''������ҵ��˾�����ƴ���'' from @tab where f3='''' or not exists (select 1 from tb_busimate where mate_type_id=2 and f3=mate_name)';
//    sql:=sql+' union all select top 5 ''��''+line_no+''���޵���ժҪ'' from @tab where f4=''''';
    sql:=sql+' union all select top 5 ''��''+line_no+''�����������'' from @tab where f5='''' or not exists (select 1 from tb_staff where sta_type_id=0 and broker=1 and f5=zname)';//�������
    sql:=sql+' union all select top 5 ''��''+line_no+''����ҩƷ��������ƴ���'' from @tab where f6='''' or not exists (select 1 from tb_medicine where f6=med_name)';
    sql:=sql+' union all select top 5 ''��''+line_no+''��������'' from @tab where f8='''' or try_cast(f8 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''��''+line_no+''�е���'' from @tab where f9='''' or try_cast(f9 as decimal(15,4)) is null';
    sql:=sql+' ) a';
//�ӵ�2�п�ʼ���룬��ʽ: 1��������, 2ҵ�����, 3��ҵ��˾, 4����ժҪ, 5�������, 6ҩƷ����, 7����, 8����, 9����
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        if recordcount>0 then
        begin
            s:='�������ݴ����������⣬��������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//�ӵ�2�п�ʼ���룬��ʽ: 1��������, 2ҵ�����, 3��ҵ��˾, 4����ժҪ, 5�������, 6ҩƷ����, 7����, 8����, 9����
        sql:=sql1;
        sql:=sql+' declare @bodcd varchar(20),@bodid int,@lineno varchar(10),@mi int';
        sql:=sql+' while exists (select 1 from @tab) begin';
        sql:=sql+'  exec sp_getbillid2 '+inttostr(compid)+',10,@bodcd output';
        sql:=sql+'  insert into tb_bill (comp_id,bod_type_id,bod_status_id,bod_cd,busi_type,creat_by,creat_dt,carry_dt,bod_desc,cate_id,dst_id,broker_id)';
        sql:=sql+'      select top 1 '+inttostr(compid)+',bod_type_id=10,bod_status_id=0,bod_cd=''+@bodcd+'',busi_type=1,creat_by='+inttostr(curuserid)+',creat_dt=getdate(),carry_dt=cast(convert(char(10),getdate(),102) as datetime)),';
        sql:=sql+'      bod_desc=a.f6,cate_id=case a.f2 when ''��ҵ'' then 1 when ''����'' then 2 end,dst_id=b.mate_id,broker_id=c.sta_id';
        sql:=sql+'      from @tab a left join tb_busimate b on b.mate_type_id=2 and a.f3=b.mate_name left join tb_staff c on c.sta_type_id=0 and c.broker=1 and a.f5=c.zname';
        sql:=sql+'      order by a.f1,a.f2,a.f3,a.f5';
        sql:=sql+'  select @bodid=@@identity';
        sql:=sql+' select top 1 @lineno=line_no from @tab order by a.f1,a.f2,a.f3,a.f5';
        sql:=sql+'  insert into tb_bill_dtl (bod_id,med_id,bat_cd,price,qty,amot)';
        sql:=sql+'  select @bodid,m.med_id,bat_cd=a.f7,price=cast(f9 as decimal(15,4)),qty=cast(f8 as decimal(15,4)),amot=round(cast(f8 as decimal(15,4))*cast(f9 as decimal(15,4)),2)';
        sql:=sql+'      from @tab a inner join (select top 1 * from @tab b where line_no=@lineno) b on a.f1=b.f2 and a.f2=b.f2 and a.f3=b.f3 and a.f5=b.f5)';
        sql:=sql+'      inner join tb_medicine m on a.f6=m.med_name';
        sql:=sql+'  delete from @tab where line_no in (select b.line_no from @tab b,(select top 1 * from @tab where line_no=@lineno) a where a.f1=b.f2 and a.f2=b.f2 and a.f3=b.f3 and a.f5=b.f5)';
        sql:=sql+'  set @mi=isnull(@mi,0)+1';
        sql:=sql+' end';
        sql:=sql+' select @mi';
        try
            setprogress(1);
            open;
            if recordcount>0 then mi:=fields[0].asinteger;
        finally
            setprogress(0);
        end;
    end;
    if mi>0 then
    begin
        SpeedButton5Click(nil);
//        medprice.Last;
        MessageBox(0,pchar('�ѳɹ�����'+inttostr(mi)+'���̵㵥'),'��ע��',MB_OK+MB_ICONInformation);
    end;
end;

procedure Tsetcheckstock.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0))
//     or ((sender=N2) and (cdsbill.fieldbyname('bod_status_id').asinteger=1))
     then
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
        // or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1))
        then
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
    if sender= N1 then
    begin
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˵��ݣ����������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(dst_id,0)=0 or isnull(broker_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ��������δѡ����ҵ��˾����������������ڣ����������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
    end;
{
    if sender= N2 then //����
    begin
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and creat_by<>'+inttostr(curuserid);
        commandtext:=commandtext+' and creat_dt>='''+datetimetostr(curuserid)+''' and creat_dt<dateadd(day,1,'''+datetimetostr(dt0)+''')';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ�������зǱ��˻�ǵ��յ��ݣ����ɷ����'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
        commandtext:='select top 1 bod_cd from tb_bill where bod_id in ('+t+')';
        commandtext:=commandtext+' and (isnull(src_id,0)=0 or isnull(dst_id,0)=0 or carry_dt is null)';
        open;
        if recordcount>0 then
        begin
            MessageBox(0,pchar('��ѡ��������δѡ�񹩻���λ��������λ���������ڣ��������'),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
    end;
}
    if sender= N1 then
        if MessageBox(0,'ȷ����ѡ���������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//    if sender= N2 then
//        if MessageBox(0,'ȷ���������ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    if active then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    open;
    if recordcount=0 then abort;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active then close;
                    if sender= N1 then commandtext:=' update tb_bill set bod_status_id=2 where bod_id='+ dm.pubqry.fieldbyname('bod_id').asstring;
//                    if sender= N1 then commandtext:='sp_updatestock 1,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
//                    if sender= N2 then commandtext:='sp_updatestock -1,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                next;
            end;
            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
//            if sender= N2 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'���������ʧ��','��ע��',MB_OK+MB_ICONERROR);
//            if sender= N2 then MessageBox(0,'���ݷ����ʧ��','��ע��',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
        setprogress(0);
    end;
end;
end;

procedure Tsetcheckstock.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetcheckstock.N3Click(Sender: TObject);
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

procedure Tsetcheckstock.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker1 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= 0;
        cdsbill.fieldbyname('broker').asstring:= '';
    end;
end;
end;

procedure Tsetcheckstock.dxDBButtonEdit3Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetcheckstock.dxDBButtonEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetcheckstock.dxDBButtonEdit3KeyPress(Sender: TObject;
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

procedure Tsetcheckstock.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.tag := query1.fieldbyname('med_id').asinteger;
        label29.caption:= query1.fieldbyname('med_code').asstring
                        +' '+ query1.fieldbyname('med_name').asstring
                        +' '+ query1.fieldbyname('specifi').asstring
                        +' '+ query1.fieldbyname('pdt_place').asstring;
    end
    else
    begin
        dxbuttonedit1.tag :=0;
        label29.caption:='';
    end;
end;

end.
