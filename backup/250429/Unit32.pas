unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB,
  ImgList, dxdbtrel;

type
  Tqryrecpay = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1busi_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1bod_type: TdxDBGridColumn;
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit4: TdxButtonEdit;
    qrybod_id: TAutoIncField;
    qrybod_cd: TStringField;
    qrysrc_id: TIntegerField;
    qrydst_id: TIntegerField;
    qrybod_status_id: TIntegerField;
    qrybod_type_id: TIntegerField;
    qrybod_amot: TBCDField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrycarry_dt: TDateTimeField;
    qrycheck_by: TIntegerField;
    qrycheck_dt: TDateTimeField;
    qryreceipt_by: TIntegerField;
    qrybod_desc: TStringField;
    qryrelative_id: TIntegerField;
    qrysettle_type: TIntegerField;
    qrybroker_id: TIntegerField;
    qrystorage_by: TIntegerField;
    qrybod_type: TStringField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    qrybroker: TStringField;
    qrybank_name: TStringField;
    RadioGroup1: TRadioGroup;
    qrydistrict: TStringField;
    dxDBGrid1district: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList1: TImageList;
    Shape1: TShape;
    Label2: TLabel;
    ADOQuery1bank_name: TStringField;
    qrybusi_type: TStringField;
    dxDBGrid1bank_name: TdxDBGridColumn;
    Edit1: TEdit;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    Shape2: TShape;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
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
  qryrecpay: Tqryrecpay;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tqryrecpay.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryrecpay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryrecpay.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryrecpay.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryrecpay.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
end;

procedure Tqryrecpay.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryrecpay.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('bod_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),busi_type=dbo.fn_obj_desc(a.busi_type),district=dbo.fn_getdistrict(f.district),a.*,bod_type=case bod_type_id when 8 then ''收款'' when 9 then ''付款'' end,';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),broker=dbo.fn_staff_name(a.broker_id),';
    commandtext:=commandtext+' bank_name=dbo.fn_bank_name(a.relative_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_type_id in (8,9) and a.bod_status_id=1';
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxbuttonedit4.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and a.broker_id in (select sta_id from tb_staff where dbo.fn_treeischild (district,'+DM.district.fieldbyname('rec_id').asstring+')=1)';
    case radiogroup1.itemindex of
        1:  commandtext:=commandtext+' and a.bod_type_id=8';
        2:  commandtext:=commandtext+' and a.bod_type_id=9';
    end;
    commandtext:=commandtext+' order by a.carry_dt';
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if mi>0 then locate('bod_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryrecpay.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryrecpay.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryrecpay.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqryrecpay.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付款') then
    begin
        AColor := $00BBFFFC; //clYellow;
        AFont.Color := clBlack;
    end;
end;
if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '收款') then
    begin
        AColor := $00FFFED7; //clgreen;  //clLime;
        AFont.Color := clBlack;
    end;
end;
end;

end.
