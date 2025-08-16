unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, Menus,
  dxdbtrel, ImgList;

type
  Tsetreport05 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
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
    SpeedButton1: TSpeedButton;
    dxButtonEdit4: TdxButtonEdit;
    ADOQuery1broker: TStringField;
    ADOQuery1depo_acco: TStringField;
    qrybroker: TStringField;
    qrydepo_acco: TStringField;
    qrydrawamot: TBCDField;
    ADOQuery1broker_id: TIntegerField;
    ADOQuery1bank: TStringField;
    ADOQuery1bal0: TBCDField;
    ADOQuery1drawamot: TBCDField;
    ADOQuery1rec: TBCDField;
    ADOQuery1pay: TBCDField;
    ADOQuery1bal1: TBCDField;
    qryIntegerField: TIntegerField;
    qrybal0: TBCDField;
    qryrec: TBCDField;
    qrypay: TBCDField;
    qrybank: TStringField;
    ADOQuery1cdistrict: TStringField;
    qrycdistrict: TStringField;
    SpeedButton3: TSpeedButton;
    Shape1: TShape;
    Label2: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    qryreceiver: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Edit1: TEdit;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1bal0: TdxDBGridColumn;
    dxDBGrid1rec_amot: TdxDBGridColumn;
    dxDBGrid1pay_amot: TdxDBGridColumn;
    dxDBGrid1bal: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2bal0: TdxDBGridColumn;
    dxDBGrid2rec_amot: TdxDBGridColumn;
    dxDBGrid2pay_amot: TdxDBGridColumn;
    dxDBGrid2notamot: TdxDBGridColumn;
    qry1: TClientDataSet;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    DSqry1: TDataSource;
    dxDBGrid2med_code: TdxDBGridColumn;
    dxDBGrid2drawamot: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1drawamot: TdxDBGridColumn;
    qry1med_id: TIntegerField;
    qry1med_code: TStringField;
    qry1med_name: TStringField;
    qry1specifi: TStringField;
    qry1pdt_place: TStringField;
    qry1med_unit: TStringField;
    qry1Cbal: TBCDField;
    dxCheckEdit1: TdxCheckEdit;
    qryCbal: TBCDField;
    qry1rec_amot: TBCDField;
    qry1pay_amot: TBCDField;
    Label4: TLabel;
    Shape2: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label5: TLabel;
    Shape3: TShape;
    RadioGroup3: TRadioGroup;
    qry1type_id1: TWordField;
    qry1Ctypeid1: TStringField;
    dxDBGrid2Ctypeid1: TdxDBGridColumn;
    qry1Cbal0: TBCDField;
    qrybal: TBCDField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DSqry1DataChange(Sender: TObject; Field: TField);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qry1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport05: Tsetreport05;

implementation

uses datamodu, Unit28, Unit31, Unit41, Unit7;

{$R *.DFM}

procedure Tsetreport05.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.edistrict do
//with dm.district do
//    if active=true then close;
//dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetreport05.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport05.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport05.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
speedbutton3.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetreport05.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}    
end;

procedure Tsetreport05.SpeedButton2Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(业务员汇总)1.xls', dxDBGrid1.SaveToXLS, self.tag)
	else if PageControl1.ActivePage=TabSheet2 then dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'(品种汇总)1.xls', dxDBGrid2.SaveToXLS, self.tag)
end;

procedure Tsetreport05.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if PageControl1.ActivePage=TabSheet1 then   //业务员汇总
begin
    with qry do
    begin
        if active then close;
        commandtext:='sp_brokerexgbal3a '+inttostr(compid)+',';
//        commandtext:='sp_brokerexgbal3 '+inttostr(compid)+',';
        if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,'
                                       else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
        if Trim(dxbuttonedit4.text)='' then commandtext:=commandtext+'0,'
                                       else commandtext:=commandtext+inttostr(dxbuttonedit4.tag)+',';
//        commandtext:=commandtext+'1,'; // 避免有人与其他表核对时引起误会，一律包含所有发生数据
        if dxCheckEdit1.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
        commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end
else if PageControl1.ActivePage=TabSheet2 then  //品种汇总
begin
    with qry1 do
    begin
        if active then close;
        commandtext:='sp_brokerexgbal2a '+inttostr(compid)+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
//        commandtext:='sp_brokerexgbal2 '+inttostr(compid)+','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
        if Trim(dxbuttonedit4.text)='' then commandtext:=commandtext+',0'
                                       else commandtext:=commandtext+','+inttostr(dxbuttonedit4.tag);
        if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+',0'
                                       else commandtext:=commandtext+','+dm.district.fieldbyname('rec_id').asstring;
        if dxCheckEdit1.Checked then commandtext:=commandtext+',1' else commandtext:=commandtext+',0';
        commandtext:=commandtext+','+inttostr(RadioGroup3.ItemIndex);
        if dxButtonEdit2.Text='' then commandtext:=commandtext+',0' else commandtext:=commandtext+','+inttostr(dxButtonEdit2.Tag);
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end
end;

procedure Tsetreport05.SpeedButton1Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
report05a:=Treport05a.create(Application);
with report05a do
begin
    qry.CommandText:=self.qry.CommandText;
    qry.open;
    screen.cursor:=crdefault;
    quickrep1.Prepare;
    QRLabel6.Caption:='统计范围:'+datetostr(dxdateedit1.date)+'至'+datetostr(dxdateedit2.date);
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
end;

procedure Tsetreport05.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetreport05.SpeedButton3Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
report05b:=Treport05b.create(Application);
with report05b do
begin
    qry.CommandText:=self.qry.CommandText;
    qry.open;
    screen.cursor:=crdefault;
    quickrep1.Prepare;
    QRLabel6.Caption:='统计范围:'+datetostr(dxdateedit1.date)+'至'+datetostr(dxdateedit2.date);
    qrlabel57.caption:='/'+inttostr(QuickRep1.QrPrinter.PageCount)+' 页';
    quickrep1.preview;
    free;
end;
end;

procedure Tsetreport05.FormActivate(Sender: TObject);
begin
//with dm.edistrict do
//    if active=false then open;
with dm.district do
    if active=false then open;
end;

procedure Tsetreport05.N3Click(Sender: TObject);
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

procedure Tsetreport05.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport05.N2Click(Sender: TObject);
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

procedure Tsetreport05.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport05.PageControl1Change(Sender: TObject);
begin
speedbutton2.enabled:=(PageControl1.ActivePage=TabSheet1) and (qry.active=true) and (qry.recordcount>0)
                   or (PageControl1.ActivePage=TabSheet2) and (qry1.active=true) and (qry1.recordcount>0);
Label4.Visible:=PageControl1.ActivePage=TabSheet2;
Shape2.Visible:=PageControl1.ActivePage=TabSheet2;
dxButtonEdit2.Visible:=PageControl1.ActivePage=TabSheet2;
end;

procedure Tsetreport05.DSqry1DataChange(Sender: TObject; Field: TField);
begin
speedbutton2.enabled:=(qry1.active=true) and (qry1.recordcount>0);
end;

procedure Tsetreport05.qryCalcFields(DataSet: TDataSet);
begin
{
with qry do
begin
	fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('drawamot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
end;
}
end;

procedure Tsetreport05.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport05.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport05.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid2Ctypeid1) then
begin
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '代理') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid2Ctypeid1.Index] = '自有') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tsetreport05.qry1CalcFields(DataSet: TDataSet);
begin
with qry1 do
begin
    fieldbyname('cbal').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('drawamot').asfloat+fieldbyname('rec_amot').asfloat-fieldbyname('pay_amot').asfloat;
    // 2022.9.13 品种汇总\应付余额 栏 由 cbal 改为 原 notamot 字段

    //由存储过程取得正确的应付余额notamot, 反向计算 应付期初金额 cbal0
//	fieldbyname('cbal0').asfloat:=fieldbyname('notamot').asfloat-fieldbyname('drawamot').asfloat-fieldbyname('rec_amot').asfloat+fieldbyname('pay_amot').asfloat;
    case fieldbyname('type_id1').asinteger of
        1:  fieldbyname('ctypeid1').asstring:='代理';
        2:  fieldbyname('ctypeid1').asstring:='自有';
    end;
end;
end;

end.
