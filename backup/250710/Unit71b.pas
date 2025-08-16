unit Unit71b;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEditor, dxEdLib,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, dxdbtrel, ImgList;

type
  Tsetbrokerfeeapply1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
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
    cdsbillbroker: TStringField;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Edit1: TEdit;
    cdsbill_dtlprice: TBCDField;
    cdsbillcarry_by: TIntegerField;
    cdsbillcarryer: TStringField;
    cdsbillcarry_dt: TDateTimeField;
    GIFimage1: TRxGIFAnimator;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlbod_cd: TStringField;
    cdsbill_dtlcarry_dt1: TDateTimeField;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    cdsbillmate_name: TStringField;
    cdsbillmate_name1: TStringField;
    cdsbill_dtlmed_code: TStringField;
    cdsbill_dtlmed_name: TStringField;
    cdsbill_dtlchm_name: TStringField;
    cdsbill_dtlspecifi: TStringField;
    cdsbill_dtlmed_type: TStringField;
    cdsbill_dtlpdt_place: TStringField;
    cdsbill_dtlmed_unit: TStringField;
    Label15: TLabel;
    Label7: TLabel;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1dtl_id: TIntegerField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rule_id: TIntegerField;
    ADOQuery1ckd_amot: TBCDField;
    cdsbill_dtlrec_id: TAutoIncField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlsta_id: TIntegerField;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsbillstorage_by: TIntegerField;
    cdsbillstorage_dt: TDateTimeField;
    cdsbillstorager: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbill_dtlmate_name: TStringField;
    ImageList: TImageList;
    Shape7: TShape;
    Shape1: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    dxEdit2: TdxEdit;
    Label20: TLabel;
    Label21: TLabel;
    cdsbill_dtlqty: TBCDField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt1: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2material_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    N2: TMenuItem;
    cdsbill_dtltype_id2: TIntegerField;
    cdsbill_dtlctype2: TStringField;
    DBText12: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText3: TDBText;
    DBText15: TDBText;
    Label9: TLabel;
    Label6: TLabel;
    cdsbill_dtlmaterial_code: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure DSbill_dtlStateChange(Sender: TObject);
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setbrokerfeeapply1: Tsetbrokerfeeapply1;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsetbrokerfeeapply1.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
GIFimage1.visible:=false;
end;

procedure Tsetbrokerfeeapply1.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsetbrokerfeeapply1.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsetbrokerfeeapply1.FormCloseQuery(Sender: TObject;
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
end;

procedure Tsetbrokerfeeapply1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbrokerfeeapply1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsetbrokerfeeapply1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetbrokerfeeapply1.SpeedButton8Click(Sender: TObject);
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

procedure Tsetbrokerfeeapply1.SpeedButton9Click(Sender: TObject);
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

procedure Tsetbrokerfeeapply1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill_dtl do
    if active=True then close;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=17 and a.bod_status_id in (1,3,4,5)';  // a.comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxedit2.text)<>'' then commandtext:=commandtext+'  and a.bod_cd='''+Trim(dxedit2.text)+'''';
    if Trim(dxLookupTreeView1.text)<>'' then
    begin
        commandtext:=commandtext+' and (exists (select 1 from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_busimate j';
        commandtext:=commandtext+'  where a.bod_id=b.bod_id and b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and c.dst_id=j.mate_id and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')=1)';
	    commandtext:=commandtext+'  or (exists (select 1 from tb_bill_dtl b,tb_bill c,tb_staff d where a.bod_id=b.bod_id and b.sta_id=c.bod_id and c.broker_id=d.sta_id and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')=1) ) )';
    end;
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

procedure Tsetbrokerfeeapply1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsetbrokerfeeapply1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=3);
        SpeedButton6.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=3);
        gifimage1.visible:=fieldbyname('bod_status_id').asinteger=1;  //��� ͼ����ʾ
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
{
                commandtext:='select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id),';
                commandtext:=commandtext+' med_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),o.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_bill_stadtl h,tb_medicine m';
                commandtext:=commandtext+' left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (d.sta_id,c.dst_id,d.med_id,c.carry_dt)';
                commandtext:=commandtext+' where b.med_id=h.rec_id and c.bod_id=d.bod_id and d.dtl_id=h.dtl_id and d.med_id=m.med_id and b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
                commandtext:='select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id),';
}
                commandtext:='select c.bod_id,b.dtl_id,h.rec_id,b.med_id,d.qty,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,d.sta_id,broker=dbo.fn_staff_name(case when h.sta_id is null then d.sta_id else h.sta_id end),mate_name=dbo.fn_mate_name(c.dst_id),';
                commandtext:=commandtext+' med_code,m.material_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),o.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b';
                commandtext:=commandtext+' inner join tb_bill_stadtl h on b.med_id=h.rec_id';
                commandtext:=commandtext+' inner join tb_bill_dtl d on d.dtl_id=h.dtl_id';
                commandtext:=commandtext+' inner join tb_bill c on c.bod_id=d.bod_id';
                commandtext:=commandtext+' left join tb_medicine m on d.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (d.sta_id,c.dst_id,d.med_id,c.carry_dt)';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;

                commandtext:=commandtext+' union all select c.bod_id,dtl_id=0,rec_id=0,med_id=0,qty=0,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,c.broker_id,broker=dbo.fn_staff_name(c.broker_id),mate_name=dbo.fn_mate_name(c.dst_id),';
                commandtext:=commandtext+' m.med_code,m.material_code,med_name=case when m.med_name is null then ''Ӧ������'' else m.med_name end,m.chm_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type='''',o.type_id2';
                commandtext:=commandtext+' from tb_bill_dtl b';
                commandtext:=commandtext+' inner join tb_bill c on b.sta_id=c.bod_id';
                commandtext:=commandtext+' left join tb_medicine m on c.med_id=m.med_id';
                commandtext:=commandtext+' left join tb_brokermed o on o.rec_id=dbo.fn_ruleid (c.broker_id,c.dst_id,c.med_id,c.carry_dt)';
                commandtext:=commandtext+' where b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
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

procedure Tsetbrokerfeeapply1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetbrokerfeeapply1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetbrokerfeeapply1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure Tsetbrokerfeeapply1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='ҵ������'; //'�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='���'; //'���';
//        2: fieldbyname('cbod_status').asstring:='ҵ�����'; //'����';
        3: fieldbyname('cbod_status').asstring:='���񸴺�'; //'����';
        4: fieldbyname('cbod_status').asstring:='�������'; //'����';
//        5: fieldbyname('cbod_status').asstring:='�ܾ�����׼'; //'����';
    end;
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('������������������ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ������޸�');
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsetbrokerfeeapply1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetbrokerfeeapply1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxdbgrid1cbod_status.Index] ='�Ƶ�') then Acolor := $00A3FEFC;
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '���') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetbrokerfeeapply1.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
//    if (sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
//    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
//    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//        if (sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
//        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
//        end;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('ѡ�񵥾���Ч');
if sender= N1 then
begin
    with dm.pubqry do
    begin
        if active=True then close;
        commandtext:='select top 5 c.zname from tb_bill a,tb_staff c ';
        commandtext:=commandtext+' where a.bod_id in ('+t+') and a.broker_id=c.sta_id and c.stoppay=1';
        open;
        if recordcount>0 then
        begin
            s:='����ҵ��Ա('+fieldbyname('zname').asstring+')����ͣ����������ȷ��'+#13+#10+'------------------------------------------------';
            MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONInformation);
    //        abort;
        end;
    end;
    if MessageBox(0,'ȷ����ѡ���������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;
setprogress(1);
//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=4,receipt_by='+inttostr(curuserid)+',receipt_dt=getdate() where bod_id in ('+t+') and bod_status_id=3';
    execute;
end;
SpeedButton5Click(nil); //bill.refresh;
MessageBox(0,pchar('��ѡ�����ѳɹ������'),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetbrokerfeeapply1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure Tsetbrokerfeeapply1.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure Tsetbrokerfeeapply1.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
{
with cdsbill_dtl do
begin
    case fieldbyname('type_id2').asinteger of  //1�Ѱ������2���������3�Ѱ�����������ϡ�4���������������
        1: fieldbyname('ctype2').asstring:='�Ѱ����';
        2: fieldbyname('ctype2').asstring:='�������';
        3: fieldbyname('ctype2').asstring:='�Ѱ������������';
        4: fieldbyname('ctype2').asstring:='���������������';
    end;
end;
with cdsbill_dtl do
begin
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
end;
}
end;

procedure Tsetbrokerfeeapply1.SpeedButton2Click(Sender: TObject);
var s: string;
begin
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 c.zname from tb_bill a,tb_staff c ';
    commandtext:=commandtext+' where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.broker_id=c.sta_id and c.stoppay=1';
    open;
    if recordcount>0 then
    begin
        s:='����ҵ��Ա('+fieldbyname('zname').asstring+')����ͣ����������ȷ��'+#13+#10+'------------------------------------------------';
        MessageBox(0, pchar(s),'��ע��',MB_OK+MB_ICONInformation);
//        abort;
    end;
end;
if MessageBox(0,'ȷ������ͨ�����񸴺�,����׼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_bill set bod_status_id=4,receipt_by='+inttostr(curuserid)+',receipt_dt=getdate() where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure Tsetbrokerfeeapply1.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'ȷ���������ͻ��Ƶ���','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
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
    tag:=0; //����ˢ��
end;
cdsbill.delete; // ���ͻغ�cdsbill�в�Ӧ�����˼�¼���ʴ�cdsbill��delete�������¼��δɾ��
setunupdatestatus;
setprogress(0);
MessageBox(0,'���ͻ�����״̬','��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetbrokerfeeapply1.dxEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tsetbrokerfeeapply1.N2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

end.
