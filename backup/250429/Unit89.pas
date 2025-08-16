unit Unit89;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, dxEditor,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, wwclearbuttongroup,
  wwradiogroup;

type
  Tsetreceive1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2price: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlmed_id: TIntegerField;
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
    dxDateEdit4: TdxDateEdit;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GIFimage2: TRxGIFAnimator;
    Edit1: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarry_dt: TDateTimeField;
    DBText15: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText18: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    GIFimage1: TRxGIFAnimator;
    cdsbillreceipt_by: TIntegerField;
    ADOQuery1carry_dt1: TDateTimeField;
    Label14: TLabel;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    Label16: TLabel;
    Edit2: TEdit;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlprice1: TBCDField;
    cdsbill_dtlprice2: TBCDField;
    dxDBGrid2amot: TdxDBGridColumn;
    cdsbill_dtlamot: TBCDField;
    Label17: TLabel;
    Label5: TLabel;
    cdsbillmate_name1: TStringField;
    cdsbillmate_name2: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    Label8: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    cdsbillCbusitype: TStringField;
    cdsbillagent_id: TAutoIncField;
    cdsbillagent: TStringField;
    TabSheet3: TTabSheet;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    dxDBGraphicEdit4: TdxDBGraphicEdit;
    dxDBGraphicEdit5: TdxDBGraphicEdit;
    Label84: TLabel;
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
    cdsbillorder_id: TIntegerField;
    dxDBDateEdit1: TdxDBDateEdit;
    SpeedButton6: TSpeedButton;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    dxDBGrid1creat_by: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
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
    procedure cdsbill_dtlAfterPost(DataSet: TDataSet);
    procedure dxDBGrid2mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cdsbill_dtlCalcFields(DataSet: TDataSet);
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
    procedure N1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2Enter(Sender: TObject);
    procedure dxDBButtonEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setreceive1: Tsetreceive1;

implementation

uses datamodu, Unit16, Unit9, Unit16a, Unit7, Unit16c;

{$R *.DFM}

procedure Tsetreceive1.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
speedbutton7.enabled:=false;    // delete disable
speedbutton8.enabled:=true;    // save enable
speedbutton9.enabled:=true;    // cancel enable
GIFimage1.visible:=false;
end;

procedure Tsetreceive1.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
speedbutton6.enabled:=true;   // insert disable
speedbutton8.enabled:=false;    // save disable
speedbutton9.enabled:=false;    // cancel disable
end;

procedure Tsetreceive1.FormActivate(Sender: TObject);
begin
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetreceive1.FormCloseQuery(Sender: TObject;
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
with cdsbill do if active=true then close;
with cdsbill_dtl do if active=true then close;
with qryimage do if active=true then close;
end;

procedure Tsetreceive1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreceive1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetreceive1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetreceive1.SpeedButton8Click(Sender: TObject);
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

procedure Tsetreceive1.SpeedButton9Click(Sender: TObject);
begin
// cancel speedbutton
if MessageBox(0,'ȷ��ȡ�������ı༭','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
if cdsbill.recordcount<>0 then
begin
    with cdsbill_dtl do
    begin
        if active=true then cancelUpdates;
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

procedure Tsetreceive1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,mate_name1=c.mate_name,mate_name2=f.mate_name,agent=g.mate_name,creater=d.zname,checker=e.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate c on a.src_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_busimate f on a.dst_id=f.mate_id';
    commandtext:=commandtext+' left join tb_busimate g on a.agent_id=g.mate_id';
    commandtext:=commandtext+' where a.bod_type_id=40';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxcheckedit1.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and c.mate_id=t.mate_id and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreceive1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetreceive1.SpeedButton7Click(Sender: TObject);
begin
if cdsbill.recordcount=0
    then raise Exception.Create('��ָ����ɾ���ĵ���');
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('��������ˣ�����ɾ����'+#13#10+'ȷ��ɾ����Ӧ�ȷ����');
if MessageBox(0,'ȷ��ɾ������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete;
with cdsbill_dtl do
begin
    if active=true then close;
    tag:=0; //����ˢ��
end;
DSbillDataChange(nil,nil);  //ˢ��cdsbill_dtl
//SpeedButton5Click(nil);
setprogress(0);
end;

procedure Tsetreceive1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit2.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit4.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        wwRadioGroup1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and (fieldbyname('creat_by').asinteger=curuserid);
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        SpeedButton7.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=0)
            and (fieldbyname('creat_by').asinteger=curuserid);
//            and ((fieldbyname('creat_by').asinteger=curuserid) or (fieldbyname('check_by').asinteger=curuserid));
        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //��� ͼ����ʾ
        gifimage2.visible:=fieldbyname('bod_status_id').asinteger=2;  //����� ͼ����ʾ
        if state=dsbrowse then setunupdatestatus;
    end;
    if (PageControl1.activepage=TabSheet1) or (cdsbill.fieldbyname('bod_id').asinteger=0) then exit; // �鿴���б�ʱ��������ʾ��ϸ����
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
                commandtext:='select b.*,med_code,med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id)';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_medicine m';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
                commandtext:=commandtext+'  and b.med_id=m.med_id';
//                commandtext:=commandtext+'  and b.rela_id1=d.dtl_id and d.med_id=m.med_id';
//                commandtext:=commandtext+'  and b.med_id=d.dtl_id and d.med_id=m.med_id';
edit1.text:=commandtext;
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

procedure Tsetreceive1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetreceive1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetreceive1.SpeedButton2Click(Sender: TObject);
begin
with cdsbill do
begin
    if fieldbyname('carry_dt').asfloat=0 then raise Exception.Create('�����뷢������');
end;
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ����������');
if MessageBox(0,'ȷ�������Ͳ������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetreceive1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure Tsetreceive1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='��������';
        1: fieldbyname('cbod_status').asstring:='���';
        2: fieldbyname('cbod_status').asstring:='�ɹ����';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='�ɹ�';
        2: fieldbyname('cbusitype').asstring:='�˻�';
    end;
end;
end;

procedure Tsetreceive1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreceive1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('������������������ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ������޸�');
end;

procedure Tsetreceive1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetreceive1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetreceive1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetreceive1.PageControl1Change(Sender: TObject);
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
    if (qryimage.tag<>cdsbill.fieldbyname('bod_id').asinteger) then
    begin
        with qryimage do
        begin
            if active=true then close;
            commandtext:='select top 1 * from tb_image where type_id=1 and id='+cdsbill.fieldbyname('order_id').asstring;
//edit3.text:=commandtext;
            open;
            if recordcount>0 then tag:=cdsbill.fieldbyname('bod_id').asinteger;
        end;
    end;
end;
end;

procedure Tsetreceive1.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetreceive1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetreceive1.dxDBGrid2mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (cdsbill_dtl.state in [dsinsert,dsedit]) then cdsbill_dtl.edit;
    if showmodal= mrOK then
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill_dtl.fieldbyname('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        cdsbill_dtl.fieldbyname('sta_id').asinteger:=0;
        cdsbill_dtl.fieldbyname('mate_name').asstring:='';
    end;
end;
end;

procedure Tsetreceive1.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
with cdsbill_dtl do
begin
    case fieldbyname('type_id').asinteger of
        1: fieldbyname('ctype').asstring:='ȫ���';
        2: fieldbyname('ctype').asstring:='���ַ���';
        3: fieldbyname('ctype').asstring:='�ն˻���';
    end;
    case fieldbyname('type_id1').asinteger of
        1: fieldbyname('ctype1').asstring:='������';
        2: fieldbyname('ctype1').asstring:='ȫ�����';
    end;
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price2').asfloat-fieldbyname('amot').asfloat-fieldbyname('fee').asfloat;
end;
end;

procedure Tsetreceive1.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass1').asstring));
end;

procedure Tsetreceive1.dxDBGraphicEdit2GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass2').asstring));
end;

procedure Tsetreceive1.dxDBGraphicEdit3GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass3').asstring));
end;

procedure Tsetreceive1.dxDBGraphicEdit4GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass4').asstring));
end;

procedure Tsetreceive1.dxDBGraphicEdit5GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
GraphicClass := TGraphicClass(GetClass(qryimage.fieldbyname('graphclass5').asstring));
end;

procedure Tsetreceive1.dxDBGraphicEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (ssCtrl in Shift) AND (Key=Ord('D')) then showpic((Sender as TdxDBGraphicEdit),qryimage); // difined in datamodu
end;

procedure Tsetreceive1.N1Click(Sender: TObject);
var mi,j,k,l,m,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) and (cdsbill.fieldbyname('creat_by').asinteger=curuserid) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    m := dxDBGrid1.ColumnByFieldName('creat_by').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) and (dxDBGrid1.SelectedNodes[i].Values[m]=curuserid) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч(������״̬�ı��˵���)');
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 5 a.bod_cd,c.mate_name from tb_bill a,tb_busimate c where a.bod_id in ('+t+') and a.dst_id=c.mate_id';
    commandtext:=commandtext+' and (isnull(c.zname1,'''')='''' or isnull(c.address1,'''')='''' or isnull(c.phone1,'''')=''''';
    commandtext:=commandtext+'      or isnull(c.zname2,'''')='''' or isnull(c.address2,'''')='''' or isnull(c.phone2,'''')='''')';
    open;
    if recordcount>0 then
    begin
        first;
        s:='���е�����ҵ��˾�ջ��˻���Ʊ������(������ַ�绰)�����������������'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('med_code').asstring+' '+fieldbyname('mate_name').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
end;
}
if MessageBox(0,'ȷ����ѡ���������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=2 where bod_id in ('+t+')';
    execute;
    SpeedButton5Click(nil);
    MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetreceive1.SpeedButton6Click(Sender: TObject);
var mid :integer;
begin
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_bill (comp_id,bod_type_id,bod_status_id,creat_by,creat_dt,carry_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+',40,0,'+inttostr(curuserid)+',getdate(),cast(convert(char(10),getdate(),20) as datetime))';
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
dxDBButtonEdit2.SetFocus;
setupdatestatus;
setprogress(0);
end;

procedure Tsetreceive1.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreceive1.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        if (query1.fieldbyname('zname1').asstring='') or (query1.fieldbyname('address1').asstring='') or (query1.fieldbyname('phone1').asstring='')
            then raise Exception.Create('����ҵ��˾�ջ������ݲ�����������ѡ��');
        if (query1.fieldbyname('zname2').asstring='') or (query1.fieldbyname('address2').asstring='') or (query1.fieldbyname('phone2').asstring='')
            then raise Exception.Create('����ҵ��˾��Ʊ�����ݲ�����������ѡ��');
        cdsbill.fieldbyname('dst_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        cdsbill.fieldbyname('mate_name2').asstring:= query1.fieldbyname('mate_name').asstring;
{
        cdsbill.fieldbyname('zname1').asstring:= query1.fieldbyname('zname1').asstring;
        cdsbill.fieldbyname('address1').asstring:= query1.fieldbyname('address1').asstring;
        cdsbill.fieldbyname('phone1').asstring:= query1.fieldbyname('phone1').asstring;
        cdsbill.fieldbyname('zname2').asstring:= query1.fieldbyname('zname2').asstring;
        cdsbill.fieldbyname('address2').asstring:= query1.fieldbyname('address2').asstring;
        cdsbill.fieldbyname('phone2').asstring:= query1.fieldbyname('phone2').asstring;
}
    end
    else
    begin
        cdsbill.fieldbyname('dst_id').asinteger:= 0;
        cdsbill.fieldbyname('mate_name2').asstring:= '';
    end;
end;
end;

procedure Tsetreceive1.dxDBButtonEdit2Enter(Sender: TObject);
begin
(Sender as TdxDBButtonEdit).SelectAll;
end;

procedure Tsetreceive1.dxDBButtonEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) and (Shift=[ssCtrl]) then (Sender as TdxDBButtonEdit).OnButtonClick(nil,0);
end;

procedure Tsetreceive1.dxDBGrid2Enter(Sender: TObject);
begin
with cdsbill_dtl do
    if (active=true) and (recordcount=0) then begin cdsbill.edit; append; end;
end;

procedure Tsetreceive1.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
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
       if focusedcolumn=0 then
       begin
            focusedcolumn := focusedcolumn+1;
            focusedcolumn := focusedcolumn-1;

            if cdsbill_dtl.fieldbyname('med_code').asstring='' then raise Exception.Create('��ѡ��Ʒ��');

       end;
       if focusedcolumn=5 then  // �����������ֶε�cursor����
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

procedure Tsetreceive1.dxDBGrid2KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  �������� ���ַ� (2bytes)
begin
if (ord(key) >=97) and (ord(key) <=122) then begin key:=chr(ord(key)-32); exit end;
// revert from lowercase to uppercase
if key=#32 then  // <space> key is pressed
begin
    if cdsbill.fieldbyname('dst_id').asinteger=0 then raise Exception.Create('��ѡ����ҵ��˾');
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
        if fwid  // ���ַ���
         then commandtext:=commandtext+' and (a.med_name like''%'+sk+'%'' or a.chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and a.qry_code like''%'+sk+'%''';
edit2.text:=commandtext;
        open;
        if recordcount=0 then begin beep; raise Exception.Create('������ѯƷ��'); end;
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
        if (cdsbill.fieldbyname('dst_id').asinteger>0) and (cdsbill.fieldbyname('agent_id').asinteger>0) and (cdsbill_dtl.fieldbyname('med_id').asinteger>0) then
        begin
            with dm.pubqry do
            begin
                if active=True then close;
                commandtext:='select top 1 price1,price2 from tb_busiframe5 where valid=1 and valid_dt<='''+cdsbill.fieldbyname('carry_dt').asstring+'''';
                commandtext:=commandtext+' and mate_id='+cdsbill.fieldbyname('dst_id').asstring+' and agent_id='+cdsbill.fieldbyname('agent_id').asstring+' and med_id='+cdsbill_dtl.fieldbyname('med_id').asstring;
                commandtext:=commandtext+' order by valid_dt desc';
//edit1.text:=commandtext;                
                open;
                if recordcount>0 then
                begin
                    cdsbill_dtl.fieldbyname('price1').asfloat:=fieldbyname('price1').asfloat;
                    cdsbill_dtl.fieldbyname('price2').asfloat:=fieldbyname('price2').asfloat;
                end;
            end;
        end;
    end;
end;
end;

procedure Tsetreceive1.dxDBGrid2DblClick(Sender: TObject);
begin
{
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
}
end;

procedure Tsetreceive1.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetreceive1.dxDBButtonEdit1KeyPress(Sender: TObject;
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

procedure Tsetreceive1.N3Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'�б�1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

end.
