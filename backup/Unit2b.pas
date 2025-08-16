unit Unit2b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, ADODB, dxEdLib, ExtCtrls, wwSpeedButton, mycds,
  dxdbtrel, StdCtrls, wwDBNavigator, wwclearpanel, wwclearbuttongroup,
  wwradiogroup, dxDBELib, dxCntner, dxEditor, dxDBEdtr, DBCtrls, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj, dxDBTLCl, dxGrClms;

type
  Tsetcustomer1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1mate_code: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1legalman: TdxDBGridMaskColumn;
    dxDBGrid1deputy: TdxDBGridMaskColumn;
    dxDBGrid1deputy_title: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1fax: TdxDBGridMaskColumn;
    dxDBGrid1address: TdxDBGridMaskColumn;
    dxDBGrid1qry_code: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    DScustomer: TDataSource;
    Label24: TLabel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    SpeedButton2: TSpeedButton;
    dxDBLookupEdit3: TdxDBLookupEdit;
    ADOQuery1: TADOQuery;
    DBText4: TDBText;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    ImageList1: TImageList;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    dxDBGrid1Cbusi_type: TdxDBGridColumn;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBEdit11: TdxDBEdit;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    customer: TClientDataSet;
    customermate_id: TIntegerField;
    customercomp_id: TAutoIncField;
    customermate_code: TStringField;
    customermate_name: TStringField;
    customerlegalman: TStringField;
    customerdeputy: TStringField;
    customerdeputy_title: TStringField;
    customerphone: TStringField;
    customerfax: TStringField;
    customeraddress: TStringField;
    customerdistrict: TIntegerField;
    customercdistrict: TStringField;
    customerpostalcode: TStringField;
    customeracnt_bank: TStringField;
    customerbank_account: TStringField;
    customertax_code: TStringField;
    customermate_type_id: TIntegerField;
    customerprice_type: TIntegerField;
    customerprice_cent: TBCDField;
    customerqry_code: TStringField;
    customersettle_type: TIntegerField;
    customerpick_ord: TIntegerField;
    customercredit_amot: TIntegerField;
    customerremark: TMemoField;
    customerstop_by: TIntegerField;
    customerstop_for: TStringField;
    customerstop_dt: TDateTimeField;
    customerstop_yn: TBooleanField;
    customertax_rate: TBCDField;
    customerbroker_id: TIntegerField;
    customerdue_limit: TIntegerField;
    customerdescription: TStringField;
    customercreat_dt: TDateTimeField;
    customercreat_by: TIntegerField;
    customermodify_dt: TDateTimeField;
    customermodify_by: TIntegerField;
    customercreater: TStringField;
    customermodifier: TStringField;
    customerEmail: TStringField;
    customerwebsite: TStringField;
    customerbusi_type_id: TWordField;
    customerCbusi_type: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label19: TLabel;
    Shape3: TShape;
    wwRadioGroup2: TwwRadioGroup;
    Label20: TLabel;
    customerkind_id: TWordField;
    customerCkind: TStringField;
    dxDBGrid1Ckind: TdxDBGridColumn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    customerdist1: TStringField;
    customerdist2: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    BitBtn1: TBitBtn;
    ADOQuery1remark1: TMemoField;
    customerremark1: TMemoField;
    customerCremark1: TStringField;
    dxDBGrid1Cremark1: TdxDBGridColumn;
    dxDBMemo2: TdxDBMemo;
    Label34: TLabel;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    customerstoper: TStringField;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    customeronfocus: TBooleanField;
    dxDBGrid1onfocus: TdxDBGridCheckColumn;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    customertrusted: TBooleanField;
    dxDBGrid1trusted: TdxDBGridCheckColumn;
    dxPickEdit1: TdxPickEdit;
    Shape1: TShape;
    Label35: TLabel;
    Shape2: TShape;
    Label32: TLabel;
    dxPickEdit2: TdxPickEdit;
    Bevel2: TBevel;
    DBText10: TDBText;
    Label16: TLabel;
    Label26: TLabel;
    DBText11: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label98: TLabel;
    DBText25: TDBText;
    DBText24: TDBText;
    Label99: TLabel;
    Label33: TLabel;
    customerlink_id: TIntegerField;
    customerlink_mate: TStringField;
    DBText3: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DScustomerDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure customerBeforePost(DataSet: TDataSet);
    procedure customerBeforeDelete(DataSet: TDataSet);
    procedure customerAfterPost(DataSet: TDataSet);
    procedure customerCalcFields(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setcustomer1: Tsetcustomer1;

implementation

uses datamodu, Unit61;

{$R *.DFM}

procedure Tsetcustomer1.FormActivate(Sender: TObject);
begin
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetcustomer1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with customer do
    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetcustomer1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcustomer1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetcustomer1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetcustomer1.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetcustomer1.DScustomerDataChange(Sender: TObject;
  Field: TField);
begin
with customer do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    BitBtn1.enabled:=(active=true) and (recordcount>0) and (length(fieldbyname('mate_code').asstring)<>8);
end;
end;

procedure Tsetcustomer1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetcustomer1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetcustomer1.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with customer do
begin
    if active=true then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,cdistrict=dbo.fn_getdistrict(a.district),';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (a.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (a.district,2),';
    commandtext:=commandtext+' link_mate=e.mate_name,stoper=d.zname,creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.stop_by=d.sta_id';
    commandtext:=commandtext+' left join tb_busimate e on a.link_id=e.mate_id';
    commandtext:=commandtext+' where a.mate_type_id=1'; // and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1 ';
    if dxCheckEdit1.checked then commandtext:=commandtext+' and isnull(a.mate_code,'''')=''''';
    if dxCheckEdit2.checked then commandtext:=commandtext+' and isnull(a.district,0)=0';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.mate_name ';
            2:  commandtext:=commandtext+' and a.mate_code='''+trim(dxedit1.text)+'''';
            3:  commandtext:=commandtext+' and a.address ';
        end;
        if radiogroup1.itemindex<>2 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
    if dxPickEdit1.Text<>'' then commandtext:=commandtext+' and a.busi_type_id='+inttostr(dxPickEdit1.ItemIndex+1);
    if dxPickEdit2.Text<>'' then commandtext:=commandtext+' and a.kind_id='+inttostr(dxPickEdit2.ItemIndex+1);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+inttostr(dxLookupTreeView1.Tag)+')=1';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=a.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetcustomer1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    if dm.district.active=false then dm.district.open;
end;
end;

procedure Tsetcustomer1.dxDBEdit5Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=trim(dxDBEdit5.text);     spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with customer do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
//    dxDBEdit3.text:=spy;
end;

procedure Tsetcustomer1.customerBeforePost(DataSet: TDataSet);
begin
with customer do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('医院名称不可为空');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置医院所属地区');
    if fieldbyname('busi_type_id').asinteger=0 then raise Exception.Create('请设置医院等级');
    if fieldbyname('kind_id').asinteger=0 then raise Exception.Create('请选择医院性质');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=1; // 销售医院
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

procedure Tsetcustomer1.customerBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0
    then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该医院已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本医院'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetcustomer1.customerAfterPost(DataSet: TDataSet);
begin
if customer.ChangeCount>0 then myupdaterefresh(customer,'tb_busimate','mate_id','');
refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',customer.fieldbyname('mate_id').asinteger)
end;

procedure Tsetcustomer1.customerCalcFields(DataSet: TDataSet);
begin
with customer do
begin
    case fieldbyname('busi_type_id').asinteger of
        1:  fieldbyname('cbusi_type').asstring:='一级';
        2:  fieldbyname('cbusi_type').asstring:='二级';
        3:  fieldbyname('cbusi_type').asstring:='三级';
        4:  fieldbyname('cbusi_type').asstring:='特三甲';
        5:  fieldbyname('cbusi_type').asstring:='社区';
        6:  fieldbyname('cbusi_type').asstring:='基层';
        7:  fieldbyname('cbusi_type').asstring:='诊所';
        8:  fieldbyname('cbusi_type').asstring:='药店';
    end;
    case fieldbyname('kind_id').asinteger of
        1:  fieldbyname('ckind').asstring:='公立';
        2:  fieldbyname('ckind').asstring:='民营';
        3:  fieldbyname('ckind').asstring:='厂矿职工';
        4:  fieldbyname('ckind').asstring:='调拨';
    end;
    fieldbyname('cremark1').asstring:=fieldbyname('remark1').asstring;
end;
end;

procedure Tsetcustomer1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetcustomer1.BitBtn1Click(Sender: TObject);
begin
with customer do
begin
    if state in [dsinsert,dsedit] then post;
    if (fieldbyname('mate_id').asinteger=0) then raise Exception.Create('请先保存本记录');
end;
with dm.pubqry do
begin
    if active=False then close;
    commandtext:='exec sp_setmatecode '+customer.fieldbyname('mate_id').asstring;
//edit1.text:=commandtext;
    execute;
end;
refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',customer.fieldbyname('mate_id').asinteger);
end;

procedure Tsetcustomer1.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
dxLookupTreeView1.Tag:=dm.district.fieldbyname('rec_id').asinteger;
end;

procedure Tsetcustomer1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1trusted) then
begin
    if (ANode.Strings[dxDBGrid1trusted.Index] = 'True') then AColor := $00FFCEFF;
end;
end;

end.
