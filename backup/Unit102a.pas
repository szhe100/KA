unit Unit102a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib;

type
  Tsetreport28 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
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
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryrec_id: TAutoIncField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ADOQuery1mate_id1: TAutoIncField;
    ADOQuery1mate_id2: TAutoIncField;
    ADOQuery1mate_id3: TAutoIncField;
    ADOQuery1mate_id4: TAutoIncField;
    ADOQuery1mate_id5: TAutoIncField;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1mate_name2: TStringField;
    ADOQuery1mate_name3: TStringField;
    ADOQuery1mate_name4: TStringField;
    ADOQuery1mate_name5: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    ImageList: TImageList;
    Label13: TLabel;
    Timer1: TTimer;
    Edit1: TEdit;
    qryfyear: TIntegerField;
    qrycomp_id: TIntegerField;
    qrymed_id: TIntegerField;
    qrybal0: TBCDField;
    qryf01a: TBCDField;
    qryf01b: TBCDField;
    qryCbal01: TBCDField;
    dxDBGrid1bal0: TdxDBGridColumn;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1f01a: TdxDBGridColumn;
    dxDBGrid1f01b: TdxDBGridColumn;
    dxDBGrid1Cbal01: TdxDBGridColumn;
    dxDBGrid1f02a: TdxDBGridColumn;
    dxDBGrid1f02b: TdxDBGridColumn;
    dxDBGrid1Cbal02: TdxDBGridColumn;
    dxDBGrid1f03a: TdxDBGridColumn;
    dxDBGrid1f03b: TdxDBGridColumn;
    dxDBGrid1Cbal03: TdxDBGridColumn;
    dxDBGrid1f04a: TdxDBGridColumn;
    dxDBGrid1f04b: TdxDBGridColumn;
    dxDBGrid1Cbal04: TdxDBGridColumn;
    dxDBGrid1f05a: TdxDBGridColumn;
    dxDBGrid1f05b: TdxDBGridColumn;
    dxDBGrid1Cbal05: TdxDBGridColumn;
    dxDBGrid1f06a: TdxDBGridColumn;
    dxDBGrid1f06b: TdxDBGridColumn;
    dxDBGrid1Cbal06: TdxDBGridColumn;
    dxDBGrid1f07a: TdxDBGridColumn;
    dxDBGrid1f07b: TdxDBGridColumn;
    dxDBGrid1Cbal07: TdxDBGridColumn;
    dxDBGrid1f08a: TdxDBGridColumn;
    dxDBGrid1f08b: TdxDBGridColumn;
    dxDBGrid1Cbal08: TdxDBGridColumn;
    dxDBGrid1f09a: TdxDBGridColumn;
    dxDBGrid1f09b: TdxDBGridColumn;
    dxDBGrid1Cbal09: TdxDBGridColumn;
    dxDBGrid1f10a: TdxDBGridColumn;
    dxDBGrid1f10b: TdxDBGridColumn;
    dxDBGrid1Cbal10: TdxDBGridColumn;
    dxDBGrid1f11a: TdxDBGridColumn;
    dxDBGrid1f11b: TdxDBGridColumn;
    dxDBGrid1Cbal11: TdxDBGridColumn;
    dxDBGrid1f12a: TdxDBGridColumn;
    dxDBGrid1f12b: TdxDBGridColumn;
    dxDBGrid1Cbal12: TdxDBGridColumn;
    dxDBGrid1CCbal12: TdxDBGridColumn;
    qryC00a: TBCDField;
    qryC00b: TBCDField;
    dxDBGrid1C00a: TdxDBGridColumn;
    dxDBGrid1C00b: TdxDBGridColumn;
    Shape4: TShape;
    Label2: TLabel;
    dxSpinEdit1: TdxSpinEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport28: Tsetreport28;
  m1,m2: real;

implementation

uses datamodu, Unit7; //, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetreport28.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
//if fmateid>0 then fmateid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tsetreport28.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport28.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetreport28.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport28.FormCreate(Sender: TObject);
var year,month,day: word;
begin
decodedate(srv_date,year,month,day);
dxSpinEdit1.value:=year;
//dxSpinEdit2.value:=month;

dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport28.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport28.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
with qry do
begin
    if active=true then
    begin
        si:=fieldbyname('rec_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select a.*,m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id)';
    commandtext:=commandtext+' from tb_report20 a,tb_medicine m';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.fyear='+dxSpinEdit1.text+' and a.med_id=m.med_id';
	if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit2.tag);
    commandtext:=commandtext+'  order by m.med_name,m.specifi,m.pdt_place';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if si>0 then locate('rec_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport28.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetreport28.N3Click(Sender: TObject);
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

procedure Tsetreport28.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
//dxDBGrid1src_id.Visible:=False;
//dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tsetreport28.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
//dxDBGrid1src_id.Visible:=False;
//dxDBGrid1dtl_id.Visible:=False;
setprogress(0);
end;

procedure Tsetreport28.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport28.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
	fieldbyname('cbal01').asfloat:=fieldbyname('bal0').asfloat+fieldbyname('f01a').asfloat-fieldbyname('f01b').asfloat;
	fieldbyname('cbal02').asfloat:=fieldbyname('cbal01').asfloat+fieldbyname('f02a').asfloat-fieldbyname('f02b').asfloat;
	fieldbyname('cbal03').asfloat:=fieldbyname('cbal02').asfloat+fieldbyname('f03a').asfloat-fieldbyname('f03b').asfloat;
	fieldbyname('cbal04').asfloat:=fieldbyname('cbal03').asfloat+fieldbyname('f04a').asfloat-fieldbyname('f04b').asfloat;
	fieldbyname('cbal05').asfloat:=fieldbyname('cbal04').asfloat+fieldbyname('f05a').asfloat-fieldbyname('f05b').asfloat;
	fieldbyname('cbal06').asfloat:=fieldbyname('cbal05').asfloat+fieldbyname('f06a').asfloat-fieldbyname('f06b').asfloat;
	fieldbyname('cbal07').asfloat:=fieldbyname('cbal06').asfloat+fieldbyname('f07a').asfloat-fieldbyname('f07b').asfloat;
	fieldbyname('cbal08').asfloat:=fieldbyname('cbal07').asfloat+fieldbyname('f08a').asfloat-fieldbyname('f08b').asfloat;
	fieldbyname('cbal09').asfloat:=fieldbyname('cbal08').asfloat+fieldbyname('f09a').asfloat-fieldbyname('f09b').asfloat;
	fieldbyname('cbal10').asfloat:=fieldbyname('cbal09').asfloat+fieldbyname('f10a').asfloat-fieldbyname('f10b').asfloat;
	fieldbyname('cbal11').asfloat:=fieldbyname('cbal10').asfloat+fieldbyname('f11a').asfloat-fieldbyname('f11b').asfloat;
	fieldbyname('cbal12').asfloat:=fieldbyname('cbal11').asfloat+fieldbyname('f12a').asfloat-fieldbyname('f12b').asfloat;
	fieldbyname('c00a').asfloat:=fieldbyname('f01a').asfloat+fieldbyname('f02a').asfloat+fieldbyname('f03a').asfloat+fieldbyname('f04a').asfloat+fieldbyname('f05a').asfloat+fieldbyname('f06a').asfloat
    	                        +fieldbyname('f07a').asfloat+fieldbyname('f08a').asfloat+fieldbyname('f09a').asfloat+fieldbyname('f10a').asfloat+fieldbyname('f11a').asfloat+fieldbyname('f12a').asfloat;
	fieldbyname('c00b').asfloat:=fieldbyname('f01b').asfloat+fieldbyname('f02b').asfloat+fieldbyname('f03b').asfloat+fieldbyname('f04b').asfloat+fieldbyname('f05b').asfloat+fieldbyname('f06b').asfloat
    	                        +fieldbyname('f07b').asfloat+fieldbyname('f08b').asfloat+fieldbyname('f09b').asfloat+fieldbyname('f10b').asfloat+fieldbyname('f11b').asfloat+fieldbyname('f12b').asfloat;
end;
end;

end.
