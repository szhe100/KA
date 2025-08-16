unit Unit38;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, dxDBGrid,
  dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, Buttons;

type
  TQrybrokerexg = class(TForm)
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
    Label7: TLabel;
    Shape6: TShape;
    dxButtonEdit1: TdxButtonEdit;
    RadioGroup1: TRadioGroup;
    qrycarry_dt: TDateTimeField;
    qrybod_type_id: TIntegerField;
    qrybod_type: TStringField;
    qrybod_cd: TStringField;
    qrybusi_type: TStringField;
    qrybod_desc: TStringField;
    qrybroker_id: TIntegerField;
    qrybroker: TStringField;
    qryamot: TBCDField;
    qrypay: TBCDField;
    qryrec: TBCDField;
    dxDBGrid1carry_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_type: TdxDBGridMaskColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1busi_type: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1pay: TdxDBGridMaskColumn;
    dxDBGrid1rec: TdxDBGridMaskColumn;
    dxDBGrid1due: TdxDBGridMaskColumn;
    qrycreater: TStringField;
    qrycreat_dt: TDateTimeField;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qrybod_id: TIntegerField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_id: TIntegerField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1carry_dt_1: TDateTimeField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1amot: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1creater: TStringField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1due: TBCDField;
    qrydue: TBCDField;
    Label13: TLabel;
    qrybank_name: TStringField;
    dxDBGrid1bank_name: TdxDBGridColumn;
    Shape1: TShape;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Qrybrokerexg: TQrybrokerexg;
  bal : real;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure TQrybrokerexg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure TQrybrokerexg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQrybrokerexg.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure TQrybrokerexg.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure TQrybrokerexg.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure TQrybrokerexg.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure TQrybrokerexg.SpeedButton5Click(Sender: TObject);
begin
if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择业务员');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active then close;
    commandtext:='sp_qrybrokerexg1 '+inttostr(compid)+','+inttostr(dxButtonEdit1.tag)+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+''','+inttostr(RadioGroup1.itemindex)+','+inttostr(curuserid);
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        disablecontrols;
//        open;
        last;
        bal:=fieldbyname('due').asfloat;
        first;
        enablecontrols;
    finally
        setprogress(0);
    end;
end;
end;

procedure TQrybrokerexg.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;
end;

procedure TQrybrokerexg.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('查询关键字', '请输入', NewString);
if ClickedOK then
    with dxdbgrid1 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure TQrybrokerexg.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure TQrybrokerexg.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
setprogress(0);
end;

procedure TQrybrokerexg.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure TQrybrokerexg.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1bod_type) then    //推广费,收款,付款,付费用,期初数
//if (AColumn = dxDBGrid1bod_type) or (AColumn = dxDBGrid1due) then  //dxDBGrid1due
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '期初数') then
    begin
        AColor := clPurple; //clblack;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '推广费') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '应付记账') then  //????
    begin
        AColor := $0044A2FF; //clPurple; //$00EE00EE;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '收款') then
    begin
        AColor := $00D6D5FF;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付款') then
    begin
        AColor := $00FFFED7;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付费用') then
    begin
        AColor := $0094FA96; //$00D7FDD8;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1bod_type) or (AColumn = dxDBGrid1due) then  //dxDBGrid1due
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '期初数') then   //
    begin
        AColor := clMaroon;
        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '付费用') then
    begin
        AColor := $00AFF27D;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1bod_type) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '应付记账') then
    begin
        AColor := $00FDA8F7;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure TQrybrokerexg.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1due' then
begin
    if bal=0 then atext:='' else atext:=formatfloat('###,##0.##;; ',bal);
end;
end;

end.
