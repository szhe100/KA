unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel, Menus;  //tcEdit,TreeComboBox,

type
  Tsetdrawrate = class(TForm)
    DSdrawlog: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    drawlog: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
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
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1customer: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1rate: TdxDBGridMaskColumn;
    SpeedButton1: TSpeedButton;
    Shape3: TShape;
    Label1: TLabel;
    dxSpinEdit1: TdxSpinEdit;
    dxSpinEdit2: TdxSpinEdit;
    SpeedButton3: TSpeedButton;
    drawlogrec_id: TAutoIncField;
    drawlogsta_id: TIntegerField;
    drawlogmate_id: TIntegerField;
    drawlogmed_id: TIntegerField;
    drawlogfyear: TIntegerField;
    drawlogfmonth: TWordField;
    drawlogqty: TBCDField;
    drawlograte: TBCDField;
    drawlogbroker: TStringField;
    drawlogcustomer: TStringField;
    drawlogmed_code: TStringField;
    drawlogmed_name: TStringField;
    drawlogchm_name: TStringField;
    drawlogspecifi: TStringField;
    drawlogmed_unit: TStringField;
    drawlogpdt_place: TStringField;
    drawlogqtyperpack: TBCDField;
    dxDBGrid1chm_name: TdxDBGridColumn;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1fyear: TIntegerField;
    ADOQuery1fmonth: TWordField;
    ADOQuery1qty: TBCDField;
    ADOQuery1rate: TBCDField;
    ADOQuery1broker: TStringField;
    ADOQuery1customer: TStringField;
    ADOQuery1district: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    drawlogdistrict: TStringField;
    dxDBGrid1district: TdxDBGridColumn;
    ADOQuery1dist_id: TIntegerField;
    drawlogdist_id: TIntegerField;
    pickdist: TClientDataSet;
    ImageList: TImageList;
    Label2: TLabel;
    Shape1: TShape;
    SpeedButton7: TSpeedButton;
    CheckBox1: TdxCheckEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    dxDBGrid1Camot: TdxDBGridColumn;
    drawlogCamot: TFloatField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure drawlogAfterPost(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure drawlogCalcFields(DataSet: TDataSet);
    procedure drawlogBeforeEdit(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setdrawrate: Tsetdrawrate;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetdrawrate.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with drawlog do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetdrawrate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetdrawrate.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetdrawrate.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
with drawlog do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    speedbutton4.enabled:=(active=true) and (recordcount>0);
    speedbutton6.enabled:=(active=true) and (recordcount>0);
    speedbutton7.enabled:=(active=true) and (recordcount>0);
    dxDBGrid1rate.DisableEditor :=(active=false) or (recordcount=0) or (fieldbyname('qty').asfloat>=0);
end;
end;

procedure Tsetdrawrate.FormCreate(Sender: TObject);
var yar,mon,day: word;
begin
screen.cursor:=crhourglass;
decodedate(srv_date,yar,mon,day);
dxSpinEdit1.value:=yar;
dxSpinEdit2.value:=mon;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetdrawrate.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', '投资款计算表1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetdrawrate.SpeedButton5Click(Sender: TObject);
var ri: integer;   //si,mi,
begin
screen.Cursor:=crhourglass;
with drawlog do
begin
    if active=true then
    begin
        ri:=fieldbyname('rec_id').asinteger;
        close;
    end
    else ri:=0;
    commandtext:='select a.*,broker=dbo.fn_staff_name(a.sta_id),customer=e.mate_name,dist_id=e.district,district=dbo.fn_getreetitle(e.district),';
    commandtext:=commandtext+'b.med_code,b.med_name,b.chm_name,b.specifi,med_unit=dbo.fn_obj_desc(b.unit_id),b.pdt_place,b.qtyperpack';
    commandtext:=commandtext+' from tb_drawlog a,tb_medicine b,tb_busimate e';
    commandtext:=commandtext+' where a.med_id=b.med_id and a.mate_id=e.mate_id and dbo.fn_inmate(a.mate_id,'+inttostr(curuserid)+')=1';
    commandtext:=commandtext+'  and fyear='+dxSpinEdit1.text+' and fmonth='+dxSpinEdit2.text;
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+inttostr(getidbytitle(dxLookupTreeView1.text))+')>0 ';
    open;
    if ri>0 then locate('rec_id',ri,[]);
end;
screen.Cursor:=crdefault;
end;

procedure Tsetdrawrate.SpeedButton3Click(Sender: TObject);
begin
if MessageBox(0,'确定计算投资款','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
with dm.pubqry do
begin
    if active=true then close;
    if dxLookupTreeView1.text=''
        then commandtext:='sp_setdrawrate '+dxSpinEdit1.text+','+dxSpinEdit2.text+',0'
        else commandtext:='sp_setdrawrate '+dxSpinEdit1.text+','+dxSpinEdit2.text+','+dm.district.fieldbyname('rec_id').asstring;
    if CheckBox1.Checked then commandtext:=commandtext+',0'
                         else commandtext:=commandtext+',1';
    execute;
    close;
end;
SpeedButton5Click(nil);
screen.cursor:=crdefault;
MessageBox(0,PChar('计算投资款成功完成'),'请注意',MB_OK);
end;

procedure Tsetdrawrate.SpeedButton6Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
with drawlog do
begin
    cancelUpdates;
    refresh;
end;
screen.cursor:=crdefault;
end;

procedure Tsetdrawrate.SpeedButton4Click(Sender: TObject);
begin
screen.cursor:=crhourglass;
with drawlog do
begin
    ApplyUpdates(-1);
    refresh;
end;
screen.cursor:=crdefault;
end;

procedure Tsetdrawrate.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tsetdrawrate.drawlogAfterPost(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
end;

procedure Tsetdrawrate.SpeedButton7Click(Sender: TObject);
var ss: string;
begin
if application.messagebox('确定计算当前记录的投资款','注意',mb_okcancel+mb_iconexclamation)<>idOK then abort;
with drawlog do
    ss:='select dbo.fn_drawrate('+fieldbyname('sta_id').asstring+','+fieldbyname('mate_id').asstring+','+fieldbyname('med_id').asstring+','+fieldbyname('qty').asstring+')';
with dm.pubqry do
begin
    if active=true then close;
    commandtext:=ss;
    open;
    if not (drawlog.state in [dsinsert,dsedit]) then drawlog.edit; 
    drawlog.fieldbyname('rate').asfloat:=fields[0].asfloat;
    drawlog.post;
end;
end;

procedure Tsetdrawrate.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetdrawrate.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1rate) then
begin
    if (ANode.Values[dxDBGrid1qty.Index] < 0 ) then AColor := $00ACF9F4;
end;
end;

procedure Tsetdrawrate.drawlogCalcFields(DataSet: TDataSet);
begin
with drawlog do
    fieldbyname('camot').asfloat:=fieldbyname('qty').asfloat*fieldbyname('rate').asfloat
end;

procedure Tsetdrawrate.drawlogBeforeEdit(DataSet: TDataSet);
var dt:TDatetime;
//    yy,mm: word;
begin
    dt:=StrToDate(formatfloat('####',dxSpinEdit1.value)+'-'+formatfloat('##',dxSpinEdit2.value)+'-1');
//    yy:=dxSpinEdit1.value;
//    mm:=dxSpinEdit2.value;
//    dt:=encodedate(yy;mm;1)
//    dt:=encodedate(dxSpinEdit1.value;dxSpinEdit2;1)
    if dt<=lastsetday then raise Exception.Create('已结账数据不可修改');
end;

procedure Tsetdrawrate.N3Click(Sender: TObject);
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

procedure Tsetdrawrate.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetdrawrate.N2Click(Sender: TObject);
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

procedure Tsetdrawrate.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
