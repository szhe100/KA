unit Unit107a;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db, mycds,
  dxExEdtr, Menus, ADODB, DBClient, dxCntner, dxEdLib, wwSpeedButton,
  wwDBNavigator, wwclearpanel, dxDBEdtr, dxDBELib, dxEditor, Animate,
  GIFCtrl, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms;

type
  TsetexpaycashA1 = class(TForm)
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
    DBText9: TDBText;
    DBText10: TDBText;
    cdsbill: TClientDataSet;
    cdsbill_dtl: TClientDataSet;
    cdsbill_dtldtl_id: TIntegerField;
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
    GIFimage1: TRxGIFAnimator;
    cdsbillreceipt_by: TIntegerField;
    cdsbillreceipt_dt: TDateTimeField;
    cdsbillreceiver: TStringField;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    cdsbillmate_name: TStringField;
    cdsbillmate_name1: TStringField;
    Label15: TLabel;
    Label7: TLabel;
    dxDBGrid1bod_amot: TdxDBGridColumn;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1dtl_id: TIntegerField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rule_id: TIntegerField;
    ADOQuery1ckd_amot: TBCDField;
    cdsbillstorage_by: TIntegerField;
    cdsbillstorage_dt: TDateTimeField;
    cdsbillstorager: TStringField;
    cdsbill_dtlbod_id: TIntegerField;
    cdsbill_dtlbod_cd: TStringField;
    cdsbill_dtlsrc_id: TIntegerField;
    cdsbill_dtldst_id: TIntegerField;
    cdsbill_dtlmate_name: TStringField;
    cdsbill_dtlbod_status_id: TIntegerField;
    cdsbill_dtlbod_type_id: TIntegerField;
    cdsbill_dtlbusi_type: TIntegerField;
    cdsbill_dtlbod_amot: TBCDField;
    cdsbill_dtlcreat_by: TIntegerField;
    cdsbill_dtlcreat_dt: TDateTimeField;
    cdsbill_dtlcheck_by: TIntegerField;
    cdsbill_dtlcheck_dt: TDateTimeField;
    cdsbill_dtlrelative_id: TIntegerField;
    cdsbill_dtlCbod_status: TStringField;
    cdsbill_dtlcreater: TStringField;
    cdsbill_dtlchecker: TStringField;
    cdsbill_dtlsettle_type: TIntegerField;
    cdsbill_dtlbroker_id: TIntegerField;
    cdsbill_dtlbroker: TStringField;
    cdsbill_dtlprncount: TIntegerField;
    cdsbill_dtlbod_desc: TStringField;
    cdsbill_dtlcarry_by: TIntegerField;
    cdsbill_dtlcarry_dt: TDateTimeField;
    cdsbill_dtlcarryer: TStringField;
    cdsbill_dtlreceipt_by: TIntegerField;
    cdsbill_dtlreceipt_dt: TDateTimeField;
    cdsbill_dtlreceiver: TStringField;
    cdsbill_dtlstorage_by: TIntegerField;
    cdsbill_dtlstorage_dt: TDateTimeField;
    cdsbill_dtlstorager: TStringField;
    cdsbill_dtlmed_id: TIntegerField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    homebank: TClientDataSet;
    homebankbank_id: TAutoIncField;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    DShomebank: TDataSource;
    Label13: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    Label5: TLabel;
    cdsbill_dtlprice: TBCDField;
    cdsbill_dtlamot: TBCDField;
    dxDBGrid1bank_name: TdxDBGridColumn;
    cdsbillbank_id: TIntegerField;
    DBText12: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    DBText15: TDBText;
    Label9: TLabel;
    cdsbillbank_name: TStringField;
    SpeedButton6: TSpeedButton;
    cdsbill_dtlagent_id: TIntegerField;
    cdsbill_dtlagent: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    dxDBGrid2bod_cd: TdxDBGridMaskColumn;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2bod_desc: TdxDBGridMaskColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2bod_id: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setexpaycashA1: TsetexpaycashA1;

implementation

uses datamodu, Unit16;

{$R *.DFM}

procedure TsetexpaycashA1.setupdatestatus;    // �༭״̬
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton5.enabled:=false;   // refresh disable
GIFimage1.visible:=false;
end;

procedure TsetexpaycashA1.setunupdatestatus;  // ���״̬
begin
speedbutton5.enabled:=true;   // refresh enable
end;

procedure TsetexpaycashA1.FormActivate(Sender: TObject);
begin
with homebank do
begin
    if active=true then close;
    commandtext:='select * from tb_bank where comp_id='+inttostr(compid);
    open;
end;
if cdsbill.active=False then SpeedButton5Click(nil);
end;

procedure TsetexpaycashA1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with cdsbill do if active=true then close;
with cdsbill_dtl do if active=true then close;
with homebank do if active=true then close;
end;

procedure TsetexpaycashA1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TsetexpaycashA1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2;
DSbillDataChange(PageControl1,nil);
end;

procedure TsetexpaycashA1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TsetexpaycashA1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,c.bank_name,mate_name='''',mate_name1='''',creater=d.zname,checker=e.zname,broker='''',carryer='''',receiver='''',storager=''''';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_bank c on a.bank_id =c.bank_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
    commandtext:=commandtext+' where a.bod_type_id=50'; // a.comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
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

procedure TsetexpaycashA1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
setunupdatestatus;
end;

procedure TsetexpaycashA1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if (field=nil) or (sender.classname='TPageControl') then   // pagecontrol change from tabsheet1 to tabsheet2
begin
    with cdsbill do
    begin
        label22.caption:=formatfloat('[##,###]', recordcount);
        dxDBedit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBLookupEdit2.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        SpeedButton2.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        SpeedButton3.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=1)
            and (fieldbyname('check_by').asinteger=curuserid)
            and (datetostr(fieldbyname('check_dt').asdatetime)=datetostr(dt0)); // ��˵���ɷ���
        SpeedButton6.enabled:=(state=dsbrowse) and (active=true) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
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
                commandtext:='select j.dtl_id,j.med_id,j.price,j.amot,a.*,c.mate_name,agent=b.mate_name,creater=d.zname,checker=e.zname,broker=f.zname,carryer=g.zname,receiver=h.zname,storager=i.zname';
                commandtext:=commandtext+' from tb_bill_dtl j';
                commandtext:=commandtext+' inner join tb_bill a on j.med_id=a.bod_id';
                commandtext:=commandtext+' left join tb_busimate b on a.agent_id =b.mate_id';
                commandtext:=commandtext+' left join tb_busimate c on a.dst_id =c.mate_id';
                commandtext:=commandtext+' left join tb_staff d on a.creat_by =d.sta_id';
                commandtext:=commandtext+' left join tb_staff e on a.check_by =e.sta_id';
                commandtext:=commandtext+' left join tb_staff f on a.broker_id =f.sta_id';
                commandtext:=commandtext+' left join tb_staff g on a.carry_by =g.sta_id';
                commandtext:=commandtext+' left join tb_staff h on a.receipt_by =h.sta_id';
                commandtext:=commandtext+' left join tb_staff i on a.storage_by =i.sta_id';
                commandtext:=commandtext+' where j.bod_id='+cdsbill.fieldbyname('bod_id').asstring;
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

procedure TsetexpaycashA1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure TsetexpaycashA1.DSbill_dtlStateChange(Sender: TObject);
begin
with cdsbill_dtl do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure TsetexpaycashA1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
with cdsbill do
begin
    if fieldbyname('bod_status_id').asinteger=1
        then raise Exception.Create('��������ˣ����ɸ��ġ�'+#13#10+'������ģ����ȷ����');
    if (curuserid<>fieldbyname('creat_by').asinteger) and (fieldbyname('bod_cd').asstring='')
        then raise Exception.Create('�Ǳ����������ݣ������Ƶ�');
end;
end;

procedure TsetexpaycashA1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='�Ƶ�'; //'�Ƶ�';
        1: fieldbyname('cbod_status').asstring:='���'; //'���';
        2: fieldbyname('cbod_status').asstring:='�����'; //'����';
    end;
end;

procedure TsetexpaycashA1.cdsbill_dtlBeforeDelete(DataSet: TDataSet);
begin
cdsbillBeforeEdit(nil);
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TsetexpaycashA1.cdsbill_dtlBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('������������������ɸ��ġ�'+#13#10+'������ģ����ȷ����');
if (curuserid<>cdsbill.fieldbyname('creat_by').asinteger) and (curuserid<>cdsbill.fieldbyname('check_by').asinteger)
    then raise Exception.Create('�Ǳ����Ƶ�����˵��ݣ������޸�');
end;

procedure TsetexpaycashA1.cdsbill_dtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
//if e.errorcode=1 then raise Exception.Create('ѡ��Ʒ�ִ��󣬴���Ʒ�ּ�¼��ȡ������˲�');
end;

procedure TsetexpaycashA1.cdsbill_dtlAfterInsert(DataSet: TDataSet);
begin
with cdsbill_dtl do
    fieldbyname('bod_id').asinteger:=cdsbill.fieldbyname('bod_id').asinteger;
end;

procedure TsetexpaycashA1.cdsbill_dtlpriceChange(Sender: TField);
begin
with cdsbill_dtl do
    if fieldbyname('discount').asfloat=0
     then fieldbyname('amot').asfloat:=round(fieldbyname('price').asfloat*fieldbyname('qty').asfloat*100+0.01)/100
     else fieldbyname('amot').asfloat:=round(fieldbyname('discount').asfloat*fieldbyname('price').asfloat*fieldbyname('qty').asfloat+0.01)/100
end;

procedure TsetexpaycashA1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure TsetexpaycashA1.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TsetexpaycashA1.N1Click(Sender: TObject);
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
                    if sender= N1 then commandtext:='sp_updatestock30 30,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock30 -30,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
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

procedure TsetexpaycashA1.cdsbill_dtlAfterPost(DataSet: TDataSet);
begin
if cdsbill_dtl.ChangeCount>0 then myupdaterefresh(cdsbill_dtl,'tb_bill_dtl','dtl_id','');
end;

procedure TsetexpaycashA1.dxDBGrid2mate_nameButtonClick(Sender: TObject;
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

procedure TsetexpaycashA1.SpeedButton2Click(Sender: TObject);
begin
if cdsbill_dtl.RecordCount=0 then raise Exception.Create('����ϸ���ݣ����������');
if MessageBox(0,'ȷ���������ͨ��','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
SpeedButton2.enabled:=false; // ��������������
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock50 50,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;

refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure TsetexpaycashA1.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'ȷ������˱���','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
SpeedButton3.enabled:=false; // ��������������
setprogress(1);
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='sp_updatestock50 -50,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
setprogress(0);
end;

procedure TsetexpaycashA1.SpeedButton6Click(Sender: TObject);
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

end.
