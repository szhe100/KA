unit Unit69b;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEditor, dxEdLib,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, Animate, GIFCtrl,
  dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms;

type
  Tsettrustfeeapply2 = class(TForm)
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
    N2: TMenuItem;
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
    DBText15: TDBText;
    Label9: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBText18: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    GIFimage1: TRxGIFAnimator;
    Label12: TLabel;
    Label13: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    cdsbill_dtlamot: TBCDField;
    cdsbill_dtlbod_cd: TStringField;
    ADOQuery1carry_dt1: TDateTimeField;
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
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label15: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2carry_dt1: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2med_name: TdxDBGridColumn;
    dxDBGrid2specifi: TdxDBGridColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2price: TdxDBGridMaskColumn;
    dxDBGrid2amot: TdxDBGridColumn;
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
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  settrustfeeapply2: Tsettrustfeeapply2;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure Tsettrustfeeapply2.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;    // delete disable
GIFimage1.visible:=false;
end;

procedure Tsettrustfeeapply2.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure Tsettrustfeeapply2.FormActivate(Sender: TObject);
begin
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure Tsettrustfeeapply2.FormCloseQuery(Sender: TObject;
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

procedure Tsettrustfeeapply2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsettrustfeeapply2.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure Tsettrustfeeapply2.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsettrustfeeapply2.SpeedButton8Click(Sender: TObject);
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

procedure Tsettrustfeeapply2.SpeedButton9Click(Sender: TObject);
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

procedure Tsettrustfeeapply2.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,b.mate_name,mate_name1=c.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_busimate b on a.src_id =b.mate_id';
    commandtext:=commandtext+' inner join tb_busimate c on a.dst_id =c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
    commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id=16 and a.bod_status_id in (1,3,4)';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and c.mate_id=t.mate_id and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
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

procedure Tsettrustfeeapply2.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure Tsettrustfeeapply2.DSbillDataChange(Sender: TObject; Field: TField);
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
                commandtext:='select b.bod_id,b.dtl_id,b.med_id,b.price,b.amot,carry_dt1=c.carry_dt,c.bod_cd,';
                commandtext:=commandtext+' med_code,med_name,chm_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id)';
                commandtext:=commandtext+' from tb_bill_dtl b,tb_bill c,tb_bill_dtl d,tb_medicine m';
                commandtext:=commandtext+' where b.med_id=d.dtl_id and c.bod_id=d.bod_id and d.med_id=m.med_id and b.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
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

procedure Tsettrustfeeapply2.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsettrustfeeapply2.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsettrustfeeapply2.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure Tsettrustfeeapply2.cdsbillCalcFields(DataSet: TDataSet);
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

procedure Tsettrustfeeapply2.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsettrustfeeapply2.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('������������������ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ������޸�');
end;

procedure Tsettrustfeeapply2.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure Tsettrustfeeapply2.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure Tsettrustfeeapply2.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure Tsettrustfeeapply2.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsettrustfeeapply2.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsettrustfeeapply2.N1Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=3))
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
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=3))
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
//SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active=true then close;
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
                    if active=true then close;
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
        if active=true then close;
        setprogress(0);
    end;
end;
end;

procedure Tsettrustfeeapply2.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
try
    if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
except

end;
end;

procedure Tsettrustfeeapply2.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure Tsettrustfeeapply2.cdsbill_dtlCalcFields(DataSet: TDataSet);
begin
{
with cdsbill_dtl do
begin
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
end;
}
end;

procedure Tsettrustfeeapply2.SpeedButton6Click(Sender: TObject);
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
end;

procedure Tsettrustfeeapply2.SpeedButton2Click(Sender: TObject);
begin
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

end.
