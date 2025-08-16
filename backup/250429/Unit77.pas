unit Unit77;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;

type
  Tqryreport06 = class(TForm)
    DSdrawlog: TDataSource;
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
    pickdist: TClientDataSet;
    ImageList: TImageList;
    Label3: TLabel;
    Shape4: TShape;
    dxDateEdit2: TdxDateEdit;
    dxDateEdit1: TdxDateEdit;
    ImageList1: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape1: TShape;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    Label1: TLabel;
    Edit1: TEdit;
    qrymate_id: TAutoIncField;
    qrymate_name: TStringField;
    qrybusi_type_id: TWordField;
    qrysta_id: TIntegerField;
    qrymed_id: TIntegerField;
    qryamt1: TBCDField;
    qryamt2: TBCDField;
    qryamt3: TBCDField;
    qryamt4: TBCDField;
    qryamt5: TBCDField;
    qryamt6: TBCDField;
    qryamt7: TBCDField;
    qryamt8: TBCDField;
    qryamt9: TBCDField;
    qryamt10: TBCDField;
    qryamt11: TBCDField;
    qryamt12: TBCDField;
    qrybusi_type: TStringField;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1level2: TdxDBGridMaskColumn;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrybroker: TStringField;
    qryphone: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1Crate: TdxDBGridColumn;
    dxDBGrid1amt1: TdxDBGridColumn;
    dxDBGrid1amt2: TdxDBGridColumn;
    dxDBGrid1amt3: TdxDBGridColumn;
    dxDBGrid1amt4: TdxDBGridColumn;
    dxDBGrid1amt5: TdxDBGridColumn;
    dxDBGrid1amt6: TdxDBGridColumn;
    dxDBGrid1amt7: TdxDBGridColumn;
    dxDBGrid1amt8: TdxDBGridColumn;
    dxDBGrid1amt9: TdxDBGridColumn;
    dxDBGrid1amt10: TdxDBGridColumn;
    dxDBGrid1amt11: TdxDBGridColumn;
    dxDBGrid1amt12: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1qty0: TdxDBGridColumn;
    qrycdistrict: TStringField;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1Cqty1: TdxDBGridColumn;
    dxButtonEdit2: TdxButtonEdit;
    Label4: TLabel;
    Shape2: TShape;
    qrydistrict: TIntegerField;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    qryleader: TStringField;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qryf1: TBooleanField;
    qryqty0: TIntegerField;
    dxDBGrid1f1: TdxDBGridCheckColumn;
    Label5: TLabel;
    dxSpinEdit2: TdxSpinEdit;
    Label6: TLabel;
    Shape3: TShape;
    qryCqty: TFloatField;
    qryCqty1: TFloatField;
    qryCrate: TFloatField;
    dxDBGrid1Cqty: TdxDBGridColumn;
    qryCf1: TBooleanField;
    qryCf2: TBooleanField;
    qryCf3: TBooleanField;
    dxDBGrid1Cf1: TdxDBGridCheckColumn;
    dxDBGrid1Cf2: TdxDBGridCheckColumn;
    dxDBGrid1Cf3: TdxDBGridCheckColumn;
    Label13: TLabel;
    Shape5: TShape;
    dxSpinEdit1: TdxSpinEdit;
    Label8: TLabel;
    ADOQuery1fnew: TBooleanField;
    qryfnew: TBooleanField;
    dxDBGrid1fnew: TdxDBGridCheckColumn;
    Shape7: TShape;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit4: TdxCheckEdit;
    dxDBGrid1Column33: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSdrawlogDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxCheckEdit2Change(Sender: TObject);
    procedure dxCheckEdit3Change(Sender: TObject);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport06: Tqryreport06;
  mm: Word;

implementation

uses datamodu, Unit16, Unit7;

{$R *.DFM}

procedure Tqryreport06.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
end;

procedure Tqryreport06.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport06.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport06.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport06.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport06.SpeedButton5Click(Sender: TObject);
begin
//if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
//sp_qrymatesale3](@compid tinyint,@districtid int,@mateid int,@dt1 datetime,@dt2 datetime)
    commandtext:='exec dbo.sp_qrymatesale3 '+inttostr(compid)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if Trim(dxButtonEdit2.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    if dxCheckEdit1.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
    if dxCheckEdit2.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
    if dxCheckEdit3.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
    if dxCheckEdit4.Checked then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
    commandtext:=commandtext+inttostr(curuserid)+',';
//    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
    commandtext:=commandtext+dxSpinEdit1.text+','+dxSpinEdit2.text;
//    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport06.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
    if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tqryreport06.FormCreate(Sender: TObject);
var year,month,day: word;
begin
decodedate(dt0,year,month,day);
//decodedate(srv_date,year,month,day);
dxSpinEdit1.value:=year;
dxSpinEdit2.value:=month;
dxDateEdit1.Date:=dt_30;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport06.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tqryreport06.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqryreport06.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport06.qryCalcFields(DataSet: TDataSet);
begin
mm:=trunc(dxSpinEdit2.value);
with qry do
begin
    fieldbyname('cqty').asfloat:=fieldbyname('amt1').asfloat+fieldbyname('amt2').asfloat+fieldbyname('amt3').asfloat+
        fieldbyname('amt4').asfloat+fieldbyname('amt5').asfloat+fieldbyname('amt6').asfloat+
        fieldbyname('amt7').asfloat+fieldbyname('amt8').asfloat+fieldbyname('amt9').asfloat+
        fieldbyname('amt10').asfloat+fieldbyname('amt11').asfloat+fieldbyname('amt12').asfloat;
    if fieldbyname('qty0').asfloat=0 then
        fieldbyname('cqty1').asfloat:=0
    else
    begin
        case mm of
            1:  fieldbyname('cqty1').asfloat:=fieldbyname('amt1').asfloat-fieldbyname('qty0').asfloat;
            2:  fieldbyname('cqty1').asfloat:=fieldbyname('amt2').asfloat-fieldbyname('qty0').asfloat;
            3:  fieldbyname('cqty1').asfloat:=fieldbyname('amt3').asfloat-fieldbyname('qty0').asfloat;
            4:  fieldbyname('cqty1').asfloat:=fieldbyname('amt4').asfloat-fieldbyname('qty0').asfloat;
            5:  fieldbyname('cqty1').asfloat:=fieldbyname('amt5').asfloat-fieldbyname('qty0').asfloat;
            6:  fieldbyname('cqty1').asfloat:=fieldbyname('amt6').asfloat-fieldbyname('qty0').asfloat;
            7:  fieldbyname('cqty1').asfloat:=fieldbyname('amt7').asfloat-fieldbyname('qty0').asfloat;
            8:  fieldbyname('cqty1').asfloat:=fieldbyname('amt8').asfloat-fieldbyname('qty0').asfloat;
            9:  fieldbyname('cqty1').asfloat:=fieldbyname('amt9').asfloat-fieldbyname('qty0').asfloat;
           10:  fieldbyname('cqty1').asfloat:=fieldbyname('amt10').asfloat-fieldbyname('qty0').asfloat;
           11:  fieldbyname('cqty1').asfloat:=fieldbyname('amt11').asfloat-fieldbyname('qty0').asfloat;
           12:  fieldbyname('cqty1').asfloat:=fieldbyname('amt12').asfloat-fieldbyname('qty0').asfloat;
        end;
    end;
    case mm of
        1:  fieldbyname('crate').asfloat:=0;
        2:  if fieldbyname('amt1').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt2').asfloat/fieldbyname('amt1').asfloat;
        3:  if fieldbyname('amt2').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt3').asfloat/fieldbyname('amt2').asfloat;
        4:  if fieldbyname('amt3').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt4').asfloat/fieldbyname('amt3').asfloat;
        5:  if fieldbyname('amt4').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt5').asfloat/fieldbyname('amt4').asfloat;
        6:  if fieldbyname('amt5').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt6').asfloat/fieldbyname('amt5').asfloat;
        7:  if fieldbyname('amt6').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt7').asfloat/fieldbyname('amt6').asfloat;
        8:  if fieldbyname('amt7').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt8').asfloat/fieldbyname('amt7').asfloat;
        9:  if fieldbyname('amt8').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt9').asfloat/fieldbyname('amt8').asfloat;
       10:  if fieldbyname('amt9').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt10').asfloat/fieldbyname('amt9').asfloat;
       11:  if fieldbyname('amt10').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt11').asfloat/fieldbyname('amt10').asfloat;
       12:  if fieldbyname('amt11').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=100*fieldbyname('amt12').asfloat/fieldbyname('amt11').asfloat;
    end;
    case mm of
        1:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt1').asfloat=0);
                fieldbyname('cf2').asboolean:=False;
                fieldbyname('cf3').asboolean:=False;
            end;
        2:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt2').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt1').asfloat=0) and (fieldbyname('amt2').asfloat=0);
                fieldbyname('cf3').asboolean:=False;
            end;
        3:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt3').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt3').asfloat=0) and (fieldbyname('amt2').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt3').asfloat=0) and (fieldbyname('amt2').asfloat=0) and (fieldbyname('amt1').asfloat=0);
            end;
        4:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt4').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt4').asfloat=0) and (fieldbyname('amt3').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt4').asfloat=0) and (fieldbyname('amt3').asfloat=0) and (fieldbyname('amt2').asfloat=0);
            end;
        5:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt5').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt5').asfloat=0) and (fieldbyname('amt4').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt5').asfloat=0) and (fieldbyname('amt4').asfloat=0) and (fieldbyname('amt3').asfloat=0);
            end;
        6:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt6').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt6').asfloat=0) and (fieldbyname('amt5').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt6').asfloat=0) and (fieldbyname('amt5').asfloat=0) and (fieldbyname('amt4').asfloat=0);
            end;
        7:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt7').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt7').asfloat=0) and (fieldbyname('amt6').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt7').asfloat=0) and (fieldbyname('amt6').asfloat=0) and (fieldbyname('amt5').asfloat=0);
            end;
        8:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt8').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt8').asfloat=0) and (fieldbyname('amt7').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt8').asfloat=0) and (fieldbyname('amt7').asfloat=0) and (fieldbyname('amt6').asfloat=0);
            end;
        9:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt9').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt9').asfloat=0) and (fieldbyname('amt8').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt9').asfloat=0) and (fieldbyname('amt8').asfloat=0) and (fieldbyname('amt7').asfloat=0);
            end;
       10:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt10').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt10').asfloat=0) and (fieldbyname('amt9').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt10').asfloat=0) and (fieldbyname('amt9').asfloat=0) and (fieldbyname('amt8').asfloat=0);
            end;
       11:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt11').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt11').asfloat=0) and (fieldbyname('amt10').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt11').asfloat=0) and (fieldbyname('amt10').asfloat=0) and (fieldbyname('amt9').asfloat=0);
            end;
       12:  begin
                fieldbyname('cf1').asboolean:=(fieldbyname('amt12').asfloat=0);
                fieldbyname('cf2').asboolean:=(fieldbyname('amt12').asfloat=0) and (fieldbyname('amt11').asfloat=0);
                fieldbyname('cf3').asboolean:=(fieldbyname('amt12').asfloat=0) and (fieldbyname('amt11').asfloat=0) and (fieldbyname('amt10').asfloat=0);
            end;
    end;
end;
end;

procedure Tqryreport06.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cf1) then
begin
    if (ANode.Strings[dxDBGrid1Cf1.Index] = 'True') then AColor := clRed;
end;
if (AColumn = dxDBGrid1Cf2) then
begin
    if (ANode.Strings[dxDBGrid1Cf2.Index] = 'True') then AColor := clRed;
end;
if (AColumn = dxDBGrid1Cf3) then
begin
    if (ANode.Strings[dxDBGrid1Cf3.Index] = 'True') then AColor := clRed;
end;
if (AColumn = dxDBGrid1fnew) then
begin
    if (ANode.Strings[dxDBGrid1fnew.Index] = 'True') then AColor := $00FDA8F7;
end;
end;

procedure Tqryreport06.dxCheckEdit2Change(Sender: TObject);
begin
if dxCheckEdit2.Checked then
begin
    if dxCheckEdit3.Checked then dxCheckEdit3.Checked:=False;
    if dxCheckEdit4.Checked then dxCheckEdit4.Checked:=False;
end;
end;

procedure Tqryreport06.dxCheckEdit3Change(Sender: TObject);
begin
if dxCheckEdit3.Checked then
begin
    if dxCheckEdit2.Checked then dxCheckEdit2.Checked:=False;
    if dxCheckEdit4.Checked then dxCheckEdit4.Checked:=False;
end;
end;

procedure Tqryreport06.dxCheckEdit4Change(Sender: TObject);
begin
if dxCheckEdit4.Checked then
begin
    if dxCheckEdit2.Checked then dxCheckEdit2.Checked:=False;
    if dxCheckEdit3.Checked then dxCheckEdit3.Checked:=False;
end;
end;

procedure Tqryreport06.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
