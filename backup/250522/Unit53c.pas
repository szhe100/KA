unit Unit53c;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBTLCl, dxGrClms, dxDBELib,
  Animate, GIFCtrl, dxDBGrid, dxDBCtrl, dxTL, Comobj;

type
  Tsetrulestop = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    dxDBGrid2specifi: TdxDBGridColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    dxDBGrid2med_name: TdxDBGridColumn;
    DSbill_dtl: TDataSource;
    DSbill: TDataSource;
    dxDBEdit1: TdxDBEdit;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    dxDBGrid2med_unit: TdxDBGridColumn;
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
    cdsbill_dtlvalid_dt: TDateTimeField;
    dxDateEdit1: TdxDateEdit;
    DBText14: TDBText;
    dxCheckEdit1: TdxCheckEdit;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    ADOQuery1: TADOQuery;
    cdsbillbod_id: TIntegerField;
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
    cdsbillrelative_id: TIntegerField;
    cdsbillCbod_status: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillsettle_type: TIntegerField;
    cdsbillbroker_id: TIntegerField;
    cdsbillprncount: TIntegerField;
    cdsbillbod_desc: TStringField;
    cdsbillreceipt_by: TIntegerField;
    dxDateEdit4: TdxDateEdit;
    cdsbillbroker: TStringField;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cdsbillleader: TStringField;
    dxDBGrid2mate_name: TdxDBGridButtonColumn;
    dxDBGrid2price1: TdxDBGridColumn;
    dxDBGrid2Crate: TdxDBGridColumn;
    brokermedrec_id: TAutoIncField;
    brokermedlead_id: TIntegerField;
    brokermedleader: TStringField;
    brokermedsta_id: TIntegerField;
    brokermedbroker: TStringField;
    brokermedmate_id: TIntegerField;
    brokermedmate_name: TStringField;
    brokermedqty: TBCDField;
    cdsbill_dtlrate: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlCrate: TFloatField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlqtyperpack: TBCDField;
    dxDBGrid2valid_dt: TdxDBGridDateColumn;
    dxDBGrid2broker: TdxDBGridColumn;
    Edit1: TEdit;
    cdsbill_dtlprice: TBCDField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarryer: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    brokermedtl: TClientDataSet;
    brokermedtlrec_id: TAutoIncField;
    brokermedtlsta_id: TIntegerField;
    brokermedtlbroker: TStringField;
    brokermedtlmate_id: TIntegerField;
    brokermedtlmate_name: TStringField;
    brokermedtlfee_type_id: TIntegerField;
    brokermedtlrate: TBCDField;
    brokermedtlCrate: TFloatField;
    brokermedtlrela_id: TIntegerField;
    brokermedtlcreat_by: TIntegerField;
    brokermedtlcreat_dt: TDateTimeField;
    brokermedtlcreater: TStringField;
    DSbrokermedtl: TDataSource;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3broker: TdxDBGridColumn;
    dxDBGrid3Lfee_type: TdxDBGridLookupColumn;
    dxDBGrid3rate: TdxDBGridColumn;
    dxDBGrid3Crate: TdxDBGridColumn;
    dxDBGrid3creat_dt: TdxDBGridDateColumn;
    dxDBGrid3creater: TdxDBGridMaskColumn;
    brokermedtlfee_type: TStringField;
    Label12: TLabel;
    dxDBEdit2: TdxDBEdit;
    ADOQuery1allo_desc: TStringField;
    cdsbillallo_desc: TStringField;
    GIFimage1: TRxGIFAnimator;
    cdsbillreceiver: TStringField;
    cdsbillreceipt_dt: TDateTimeField;
    Label9: TLabel;
    Label6: TLabel;
    DBText15: TDBText;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    DBText18: TDBText;
    DBText11: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    GIFimage2: TRxGIFAnimator;
    SpeedButton1: TSpeedButton;
    dxDBGrid1allo_desc: TdxDBGridColumn;
    dxDBGrid2med_id: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure DSbill_dtlDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeDelete(DataSet: TDataSet);
    procedure cdsbill_dtlBeforeEdit(DataSet: TDataSet);
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
    procedure dxDBGrid2mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setrulestop: Tsetrulestop;
//  ptype: string[20];
//  pcent: real;

implementation

uses datamodu, Unit16; //, Unit7, Unit28a, Unit28, Unit16;

{$R *.DFM}

procedure Tsetrulestop.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
GIFimage1.visible:=false;
end;

procedure Tsetrulestop.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetrulestop.FormActivate(Sender: TObject);
begin
{
with dm.fee_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=9';
        open;
    end;
}
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetrulestop.FormCloseQuery(Sender: TObject;
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
with cdsbill do if active then close;
with cdsbill_dtl do if active then close;
//with dm.fee_type do if active then close;
end;

procedure Tsetrulestop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetrulestop.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetrulestop.DSbill_dtlDataChange(Sender: TObject;
  Field: TField);
begin
with cdsbill_dtl do
    if (active=False) or (recordcount=0) or (fieldbyname('med_id').asinteger=0) then
    begin
        if brokermedtl.active then brokermedtl.Active:=False;
        exit;
    end;
    
with brokermedtl do
begin
    if tag=cdsbill_dtl.fieldbyname('med_id').asinteger then exit;
    if active then close;
    commandtext:='select a.rec_id,a.sta_id,broker=b.zname,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,fee_type=dbo.fn_obj_desc(a.fee_type_id),a.rate,a.rela_id,a.creat_by,a.creat_dt,creater=c.zname';
    commandtext:=commandtext+' from tb_brokermedtl a';
    commandtext:=commandtext+' left join tb_staff b on a.sta_id=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where a.rela_id='+cdsbill_dtl.fieldbyname('med_id').asstring;
    open;
    tag:=cdsbill_dtl.fieldbyname('med_id').asinteger;
end;
end;

procedure Tsetrulestop.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetrulestop.SpeedButton8Click(Sender: TObject);
var mid: integer;
begin
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

procedure Tsetrulestop.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'ȷ��ȡ�������ı༭','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active then cancelUpdates;
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
setunupdatestatus;
setprogress(0);
end;

procedure Tsetrulestop.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,leader=b.zname,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.src_id =b.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=21';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
//edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetrulestop.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption; //'ҽҩ������ɹ������뵥';
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetrulestop.SpeedButton7Click(Sender: TObject);
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
with brokermedtl do
begin
    if active then close;
    tag:=0; //����ˢ��
end;
DSbillDataChange(nil,nil);  //ˢ��cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetrulestop.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton1.enabled:=(state=dsbrowse);// and (active) and (recordcount>0)
        SpeedButton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton7.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));

        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //��� ͼ����ʾ
        gifimage2.visible:=fieldbyname('bod_status_id').asinteger=2;  //����� ͼ����ʾ
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
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.price1,b.valid_dt,';
                commandtext:=commandtext+' a.*,leader=dbo.fn_staff_name(a.lead_id),m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,med_unit=c.zdesc,m.qtyperpack,m.qtyperbox,';
                commandtext:=commandtext+' stoper=dbo.fn_staff_name(a.stop_by),'; //=dbo.fn_getbidprice1(d.district,a.med_id),';
                commandtext:=commandtext+' med_type=dbo.fn_med_type(m.med_id),broker=d.zname,e.mate_name,creater=g.zname,dist_name=dbo.fn_getdistrict(d.district)';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_brokermed a';
                commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_object c on m.unit_id=c.obj_id';
                commandtext:=commandtext+' left join tb_staff d on a.sta_id=d.sta_id';
                commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
                commandtext:=commandtext+' left join tb_staff g on a.creat_by=g.sta_id';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and b.med_id=a.rec_id';
//edit1.text:=commandtext;
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

procedure Tsetrulestop.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetrulestop.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetrulestop.SpeedButton2Click(Sender: TObject);
//var s: string;
begin
{
with cdsbill do
begin
    if fieldbyname('src_id').asinteger=0 then raise Exception.Create('��ѡ��������');
    if fieldbyname('broker_id').asinteger=0 then raise Exception.Create('��ѡ��ҽҩ����');
end;
}
with cdsbill do
begin
    if fieldbyname('allo_desc').asstring='' then raise Exception.Create('����дͣ��ԭ��');
end;
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ����������');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 5 valid_dt from tb_bill_dtl where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+' and isnull(valid_dt,'''')=''''';
    open;
    if recordcount>0 then raise Exception.Create('������δ����ͣ�����ڼ�¼����������');
end;
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 10 mate_name=dbo.fn_mate_name(c.mate_id),broker=dbo.fn_staff_name(c.sta_id),m.med_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_brokermed c,tb_bill a,tb_bill_dtl b,tb_medicine m ';
    commandtext:=commandtext+' where a.bod_id=b.bod_id and a.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    commandtext:=commandtext+'  and c.valid=1 and b.sta_id=c.mate_id and b.med_id=c.med_id';
    commandtext:=commandtext+'  and c.med_id=m.med_id';
    open;
    if recordcount>0 then
    begin
        first;
        s:='���пͻ�Ʒ����������ɹ�����˺�ȡ��ԭ���򣬼�����?'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('mate_name').asstring+' '+fieldbyname('broker').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        if MessageBox(0,pchar(s),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    end;
end;
}
if MessageBox(0,'ȷ��������ҵ�����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetrulestop.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure Tsetrulestop.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='ҵ������'; //'�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='���'; //'���';
        2: fieldbyname('cbod_status').asstring:='ҵ�����'; //'����';
        3: fieldbyname('cbod_status').asstring:='���񸴺�'; //'����';
        4: fieldbyname('cbod_status').asstring:='��������'; //'����';
    end;
end;

procedure Tsetrulestop.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetrulestop.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('������������������ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ������޸�');
end;

procedure Tsetrulestop.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetrulestop.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetrulestop.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetrulestop.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetrulestop.dxDBGrid1CustomDrawCell(Sender: TObject;
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
end;

procedure Tsetrulestop.N1Click(Sender: TObject);
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
if sender= N1 then
    if MessageBox(0,'ȷ����ѡ�������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
if sender= N2 then
    if MessageBox(0,'ȷ���������ѡ����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if sender= N1 then
    begin
        if active then close;
        commandtext:='update tb_bill set bod_status_id=2 where bod_id in ('+t+')';
//showmessage(commandtext);
        execute;
        SpeedButton5Click(nil);
        MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
    end
    else
    begin
        if active then close;
        commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
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
                        commandtext:='sp_updatestock21 -21,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                        execute;
                    end;
                    next;
                end;
                SpeedButton5Click(nil); //bill.refresh;
                setunupdatestatus;
                if sender= N1 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
                if sender= N2 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
            except
                if sender= N1 then MessageBox(0,'�������ʧ��','��ע��',MB_OK+MB_ICONERROR);
                if sender= N2 then MessageBox(0,'���ݷ����ʧ��','��ע��',MB_OK+MB_ICONERROR);
            end;
        finally
            if active then close;
            setprogress(0);
        end;
    end;
end;
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
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
                    if sender= N1 then commandtext:='sp_updatestock 2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock -2,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                next;
            end;
            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('��ѡ�����ѳɹ����'),'��ע��',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'�������ʧ��','��ע��',MB_OK+MB_ICONERROR);
            if sender= N2 then MessageBox(0,'���ݷ����ʧ��','��ע��',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
        setprogress(0);
    end;
end;
}
end;

procedure Tsetrulestop.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsetrulestop.dxDBGrid2mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
    if showmodal= mrOK then
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=pickcustomer.query1.fieldbyname('mate_id').asinteger;
        cdsbill_dtl.fieldbyname('mate_name').asstring:=pickcustomer.query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=0;
        cdsbill_dtl.fieldbyname('mate_name').asstring:='';
    end;
end;
end;

procedure Tsetrulestop.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
//        else fieldbyname('crate').asfloat:=100*fieldbyname('rate').asfloat/fieldbyname('price1').asfloat;
end;
end;

procedure Tsetrulestop.SpeedButton1Click(Sender: TObject);
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
//�ӵ�2�п�ʼ���룬��ʽ: 1����ID, 2ҵ��Ա, 3��ҵ��˾, 3ҽԺ, 4ҩƷ����, 5��ϸҵ��Ա, 6����ժҪ, 7ͣ��ԭ��, 8ͣ������
    mi:=0;j:=2;  //��1�п�ʼ ÿ��һ��
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100))';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text);
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text)+''','''+Trim(sheet.cells[j,8].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//�ӵ�2�п�ʼ���룬��ʽ: 1����ID, 2ҵ��Ա, 3��ҵ��˾, 3ҽԺ, 4ҩƷ����, 5��ϸҵ��Ա, 6����ժҪ, 7ͣ��ԭ��, 8ͣ������
    sql1:=sql;  //���������޴���ʱ����sql1 ��������
    sql:=sql+' select top 5 * from ( select top 5 ''��''+line_no+''��������ID����Ч'' from @tab where f1='''' or try_cast(f1 as int) is null or not exists (select 1 from tb_brokermed where rec_id=cast(f1 as int))';
    sql:=sql+' union all select top 5 ''��''+line_no+''����ͣ�����ڻ�������Ч'' from @tab where f8='''' or try_cast(f8 as datetime) is null';
    sql:=sql+' ) a';
//�ӵ�2�п�ʼ���룬��ʽ: 1����ID, 2ҵ��Ա, 3��ҵ��˾, 3ҽԺ, 4ҩƷ����, 5��ϸҵ��Ա, 6����ժҪ, 7ͣ��ԭ��, 8ͣ������
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

//�ӵ�2�п�ʼ���룬��ʽ: 1����ID, 2ҵ��Ա, 3��ҵ��˾, 3ҽԺ, 4ҩƷ����, 5��ϸҵ��Ա, 6����ժҪ, 7ͣ��ԭ��, 8ͣ������
        sql:=sql1;
        sql:=sql+' declare @bodcd varchar(20),@bodid int,@lineno varchar(10),@mi int';
        sql:=sql+' exec sp_getbillid2 '+inttostr(compid)+',21,@bodcd output';
        sql:=sql+' insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,bod_desc,allo_desc,creat_by,creat_dt)';
        sql:=sql+'  select top 1 comp_id='+inttostr(compid)+',bod_cd=@bodcd,bod_type_id=21,bod_status_id=0,bod_desc=f6,allo_desc=f7,creat_by='+inttostr(curuserid)+',creat_dt=getdate() from @tab';  //cast(convert(char(10),getdate(),20) as datetime),
        sql:=sql+' select @bodid=@@identity';
        sql:=sql+' insert into tb_bill_dtl (bod_id,med_id,price,price1,valid_dt)';
        sql:=sql+'  select @bodid,med_id=b.rec_id,price=b.rate,b.price1,valid_dt=DATEADD(mm, DATEDIFF(mm,0,getdate()), -1)';
        sql:=sql+'      from @tab a inner join tb_brokermed b on b.rec_id=cast(f1 as int)';
        sql:=sql+' selet @@identity';
//edit1.text:=commandtext;
        open;
        mi:=fields[0].asinteger;
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
        if cdsbill.Locate('bod_id',mi,[]) then MessageBox(0,pchar('�ѳɹ�����'+cdsbill.fieldbyname('bod_cd').asstring+'��ͣ�����뵥'),'��ע��',MB_OK+MB_ICONInformation);
    end;
end;

end.
