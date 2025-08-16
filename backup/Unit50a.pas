unit Unit50a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel;  //, tcEdit, TreeComboBox

type
  Tqryreport05 = class(TForm)
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
    qrymate_id1: TStringField;
    qrysta_id: TIntegerField;
    qrymed_id: TIntegerField;
    qrysumamt: TBCDField;
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
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1busi_type: TdxDBGridMaskColumn;
    dxDBGrid1mate_name1: TdxDBGridMaskColumn;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrybroker: TStringField;
    qryphone: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1sumamt: TdxDBGridColumn;
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
    dxDBGrid1cdistrict: TdxDBGridColumn;
    qrycdistrict: TStringField;
    RadioGroup1: TRadioGroup;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    ADOQuery1cyear: TIntegerField;
    qrycyear: TIntegerField;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1cyear: TdxDBGridColumn;
    dxButtonEdit2: TdxButtonEdit;
    Label4: TLabel;
    Shape2: TShape;
    Label13: TLabel;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    qrybod_desc: TStringField;
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
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport05: Tqryreport05;

implementation

uses datamodu, Unit16, Unit7;

{$R *.DFM}

procedure Tqryreport05.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
end;

procedure Tqryreport05.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport05.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport05.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport05.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport05.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then close;
//sp_qrymatesale1](@compid tinyint,@districtid int,@mateid int,@dt1 datetime,@dt2 datetime)
    commandtext:='exec dbo.sp_qrymatesale1 '+inttostr(compid)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+DM.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if Trim(dxButtonEdit2.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(RadioGroup1.ItemIndex+1)+',';   //按金额或数量
    commandtext:=commandtext+inttostr(curuserid)+',';
    commandtext:=commandtext+''''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+'''';
edit1.text:=commandtext;    
    try
        setprogress(1);
        open;
        if RadioGroup1.ItemIndex=0 then
        begin
            dxDBGrid1sumamt.Caption:='总金额';
            qrysumamt.DisplayFormat:='###,###,##0.00;; ';
            qryamt1.DisplayFormat:='###,###,##0.00;; ';
            qryamt2.DisplayFormat:='###,###,##0.00;; ';
            qryamt3.DisplayFormat:='###,###,##0.00;; ';
            qryamt4.DisplayFormat:='###,###,##0.00;; ';
            qryamt5.DisplayFormat:='###,###,##0.00;; ';
            qryamt6.DisplayFormat:='###,###,##0.00;; ';
            qryamt7.DisplayFormat:='###,###,##0.00;; ';
            qryamt8.DisplayFormat:='###,###,##0.00;; ';
            qryamt9.DisplayFormat:='###,###,##0.00;; ';
            qryamt10.DisplayFormat:='###,###,##0.00;; ';
            qryamt11.DisplayFormat:='###,###,##0.00;; ';
            qryamt12.DisplayFormat:='###,###,##0.00;; ';
        end
        else
        begin
            dxDBGrid1sumamt.Caption:='总数量';
            qrysumamt.DisplayFormat:='###,###,##0;; ';
            qryamt1.DisplayFormat:='###,###,##0;; ';
            qryamt2.DisplayFormat:='###,###,##0;; ';
            qryamt3.DisplayFormat:='###,###,##0;; ';
            qryamt4.DisplayFormat:='###,###,##0;; ';
            qryamt5.DisplayFormat:='###,###,##0;; ';
            qryamt6.DisplayFormat:='###,###,##0;; ';
            qryamt7.DisplayFormat:='###,###,##0;; ';
            qryamt8.DisplayFormat:='###,###,##0;; ';
            qryamt9.DisplayFormat:='###,###,##0;; ';
            qryamt10.DisplayFormat:='###,###,##0;; ';
            qryamt11.DisplayFormat:='###,###,##0;; ';
            qryamt12.DisplayFormat:='###,###,##0;; ';
        end
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport05.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
  if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tqryreport05.FormCreate(Sender: TObject);
begin
dxDateEdit1.Date:=dt_30;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport05.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tqryreport05.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryreport05.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport05.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
