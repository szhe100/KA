unit Unit58;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, dxCntner, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxdbtrel, dxEdLib, dxDBELib, dxEditor, DBCtrls,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, StdCtrls, Buttons, mycds;

type
  Tsetcompany = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    DScompany: TDataSource;
    Label16: TLabel;
    DBText10: TDBText;
    Label26: TLabel;
    DBText11: TDBText;
    Label27: TLabel;
    DBText1: TDBText;
    Label28: TLabel;
    DBText2: TDBText;
    Bevel2: TBevel;
    dxEditStyleController1: TdxEditStyleController;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBGrid1comp_cd: TdxDBGridMaskColumn;
    dxDBGrid1comp_name: TdxDBGridMaskColumn;
    dxDBGrid1sim_name: TdxDBGridMaskColumn;
    dxDBGrid1legalman: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1fax: TdxDBGridMaskColumn;
    dxDBGrid1address: TdxDBGridMaskColumn;
    dxDBGrid1qry_code: TdxDBGridMaskColumn;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    dxDBGrid1stop_dt: TdxDBGridDateColumn;
    dxDBGrid1creat_dt: TdxDBGridMaskColumn;
    dxDBGrid1modify_dt: TdxDBGridDateColumn;
    dxDBGrid1Email: TdxDBGridMaskColumn;
    dxDBGrid1website: TdxDBGridMaskColumn;
    dxDBEdit5: TdxDBEdit;
    Label4: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label5: TLabel;
    Label6: TLabel;
    dxDBEdit9: TdxDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBText3: TDBText;
    dxDBGrid1creater: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    Label15: TLabel;
    dxDBEdit10: TdxDBEdit;
    Label17: TLabel;
    dxDBEdit11: TdxDBEdit;
    SpeedButton5: TSpeedButton;
    Label18: TLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    Label19: TLabel;
    ImageList1: TImageList;
    dxDBEdit13: TdxDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    dxDBEdit14: TdxDBEdit;
    Label22: TLabel;
    dxDBEdit15: TdxDBEdit;
    ImageList: TImageList;
    ImageList2: TImageList;
    dxDBGrid1comp_id: TdxDBGridColumn;
    company: TClientDataSet;
    companycomp_id: TAutoIncField;
    companycomp_cd: TStringField;
    companycomp_name: TStringField;
    companysim_name: TStringField;
    companycomp_type_id: TIntegerField;
    companylegalman: TStringField;
    companydeputy: TStringField;
    companydeputy_title: TStringField;
    companyphone: TStringField;
    companypurchase_phone: TStringField;
    companysale_phone: TStringField;
    companyquality_phone: TStringField;
    companyfax: TStringField;
    companyaddress: TStringField;
    companypostalcode: TStringField;
    companyacnt_bank: TStringField;
    companybank_account: TStringField;
    companytax_code: TStringField;
    companyqry_code: TStringField;
    companysettle_type_id: TIntegerField;
    companypick_ord: TIntegerField;
    companycredit_amot: TIntegerField;
    companyremark: TMemoField;
    companydescription: TStringField;
    companystop_yn: TBooleanField;
    companystop_by: TIntegerField;
    companystop_for: TStringField;
    companystop_dt: TDateTimeField;
    companytax_rate: TBCDField;
    companydue_limit: TIntegerField;
    companycreat_dt: TDateTimeField;
    companycreat_by: TIntegerField;
    companymodify_dt: TDateTimeField;
    companymodify_by: TIntegerField;
    companycreater: TStringField;
    companymodifier: TStringField;
    companycertify_level: TIntegerField;
    companyEmail: TStringField;
    companywebsite: TStringField;
    companylicense_cd: TStringField;
    companypermit_cd: TStringField;
    companyarchive_cd: TStringField;
    companycredit_level: TStringField;
    companyquit_dt: TDateTimeField;
    companylicen_valid: TDateTimeField;
    companydeliverarea_id: TIntegerField;
    DBText4: TDBText;
    companydistrict: TIntegerField;
    companycdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DScompanyDataChange(Sender: TObject; Field: TField);
    procedure dxDBEdit2Change(Sender: TObject);
    procedure dxDBCheckEdit1Click(Sender: TObject);
    procedure dxDBGrid4Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure companyBeforePost(DataSet: TDataSet);
    procedure companyAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setcompany: Tsetcompany;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetcompany.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
SpeedButton5Click(nil);
end;

procedure Tsetcompany.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with company do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tsetcompany.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcompany.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetcompany.SpeedButton1Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1
    then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetcompany.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetcompany.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetcompany.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetcompany.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then key:=chr(ord(key)-32);  // turn lower charactor to upper
end;

procedure Tsetcompany.DScompanyDataChange(Sender: TObject; Field: TField);
begin
with company do
begin
    speedbutton1.Enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetcompany.dxDBEdit2Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
    sw:=dxdbedit2.text;     spy:='';
    for i:=1 to length(sw) do
    begin
        c:=sw[i];
        if length(c)>1
         then spy:=spy+getpyindexchar(c)
         else spy:=spy+uppercase(c);
    end;
    with company do
        if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
    dxdbedit3.text:=spy;
end;

procedure Tsetcompany.dxDBCheckEdit1Click(Sender: TObject);
begin
with company do
begin
    if state in [dsedit,dsinsert] then
    begin
        if dxDBCheckEdit1.checked then
        begin
            fieldbyname('stop_dt').asdatetime:=now;
            fieldbyname('stop_by').asinteger:=curuserid;
        end
        else
        begin
            fieldbyname('stop_dt').asstring:='';
            fieldbyname('stop_by').asinteger:=0;
        end
    end;
end;
end;

procedure Tsetcompany.dxDBGrid4Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetcompany.SpeedButton5Click(Sender: TObject);
begin
with company do
begin
    if active=true then close;
    commandtext:='select *,cdistrict=dbo.fn_getdistrict(district),creater=dbo.fn_staff_name(creat_by),modifier=dbo.fn_staff_name(modify_by)';
    commandtext:=commandtext+' from tb_company where comp_id='+inttostr(compid);
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetcompany.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxdbgrid1comp_id.Index] = compid ) then AColor := $00DDFFCE;//light green
end;

procedure Tsetcompany.companyBeforePost(DataSet: TDataSet);
begin
with company do
begin
    if fieldbyname('comp_name').asstring=''
        then raise Exception.Create('请填写公司名称');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetcompany.companyAfterPost(DataSet: TDataSet);
begin
with company do
    if ChangeCount>0 then myupdaterefresh(company,'tb_company','comp_id','');
end;

end.
