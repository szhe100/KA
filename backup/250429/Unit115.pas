unit Unit115;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, StdCtrls, ExtCtrls,
  dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, dxDBGrid,
  dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, Buttons;

type
  Tqryreport18 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    StyleController: TdxEditStyleController;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    qrycarry_dt: TDateTimeField;
    qrybod_type_id: TIntegerField;
    qrybod_cd: TStringField;
    qrybod_desc: TStringField;
    qrybroker: TStringField;
    qryamot: TBCDField;
    dxDBGrid1cbodtype: TdxDBGridMaskColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1amot1: TdxDBGridMaskColumn;
    dxDBGrid1amot2: TdxDBGridMaskColumn;
    qrycreater: TStringField;
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
    Shape1: TShape;
    qrymate_name1: TStringField;
    qrymate_name2: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1mate_name2: TdxDBGridColumn;
    Edit1: TEdit;
    qrycate_id: TWordField;
    Shape3: TShape;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit5: TdxButtonEdit;
    Label1: TLabel;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    Label2: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Label7: TLabel;
    Label5: TLabel;
    Shape7: TShape;
    Label6: TLabel;
    Shape8: TShape;
    qryamot1: TBCDField;
    qryamot2: TBCDField;
    qrybod_cd1: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryinvo_cd: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qrycbodtype: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1invo_cd: TdxDBGridColumn;
    dxDBGrid1due: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport18: Tqryreport18;

implementation

uses datamodu, Unit16a, Unit16c, Unit7, Unit9;

{$R *.DFM}

procedure Tqryreport18.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryreport18.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport18.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport18.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport18.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport18.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport18.SpeedButton5Click(Sender: TObject);
begin
//if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择业务员');
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
//sp_qrymateexg3 0,0,0,0,'2018-9-10','2018-10-1'
    commandtext:='sp_qrymateexg3 ';
    if dxButtonEdit5.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit5.tag)+',';
    if dxButtonEdit1.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    if dxButtonEdit4.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if dxButtonEdit2.text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport18.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure Tqryreport18.N3Click(Sender: TObject);
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

procedure Tqryreport18.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport18.N2Click(Sender: TObject);
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

procedure Tqryreport18.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport18.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbodtype) then
begin
    if (ANode.Strings[dxDBGrid1cbodtype.Index] = '期初数') then   //
    begin
        AColor := clBlack;
//        AColor := clMaroon;
        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1cbodtype.Index] = '收款') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
    if (ANode.Strings[dxDBGrid1cbodtype.Index] = '开票') then
    begin
        AColor := $00FEFEB1; //clAqua; //$00BAFEFB;
        AFont.Color := clBlack;
    end;
end;
end;

procedure Tqryreport18.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('bod_type_id').asinteger of
         0: fieldbyname('cbodtype').asstring:='期初数';
        45: fieldbyname('cbodtype').asstring:='收款';
        46: fieldbyname('cbodtype').asstring:='开票';
    end;
end;
end;

procedure Tqryreport18.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqryreport18.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryreport18.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

end.
