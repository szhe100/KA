unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, Mask, wwdbdatetimepicker, DBClient,
  DBTables, dxEditor, dxEdLib, dxExEdtr, dxDBEdtr, dxDBELib, ADODB, dxDBTL,
  ImgList, dxdbtrel; //, tcEdit, TreeComboBox

type
  Tqryreport02 = class(TForm)
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
    dxDBGrid1leader: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    ADOQuery1sta_id: TIntegerField;
    ADOQuery1broker: TStringField;
    ADOQuery1dst_id: TIntegerField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1qtyperbox: TBCDField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qty: TBCDField;
    ADOQuery1amot: TBCDField;
    qrydst_id: TIntegerField;
    qrymate_name: TStringField;
    qrymed_id: TIntegerField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qryqtyperpack: TBCDField;
    qryqtyperbox: TBCDField;
    qrymed_unit: TStringField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    ImageList1: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape1: TShape;
    Shape6: TShape;
    Label7: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    qrylead_id: TAutoIncField;
    qryleader: TStringField;
    leader: TClientDataSet;
    leadersta_id: TAutoIncField;
    leaderzname: TStringField;
    DSbroker: TDataSource;
    dxLookupEdit4: TdxLookupEdit;
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
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport02: Tqryreport02;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tqryreport02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
with leader do
    if active=true then close;
end;

procedure Tqryreport02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport02.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport02.DSdrawlogDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqryreport02.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport02.SpeedButton5Click(Sender: TObject);
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('ÈÕÆÚÉèÖÃ´íÎó');
with qry do
begin
    if active=true then close;
    commandtext:='select b.lead_id,leader=dbo.fn_staff_name(b.lead_id),a.dst_id,mate_name=dbo.fn_mate_name(a.dst_id),';
    commandtext:=commandtext+' b.med_id,c.med_code,c.med_name,c.chm_name,c.specifi,c.pdt_place,c.qtyperpack,c.qtyperbox,med_unit=dbo.fn_obj_desc(c.unit_id),';
    commandtext:=commandtext+' qty=sum(b.qty),amot=sum(b.amot)';
    commandtext:=commandtext+' from tb_bill a,tb_bill_dtl b,tb_medicine c';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.bod_id=b.bod_id and a.bod_type_id=2 and a.bod_status_id=1 and b.med_id=c.med_id';
    commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and b.sta_id in (select sta_id from tb_staff where dbo.fn_treeischild (district,'+DM.district.fieldbyname('rec_id').asstring+')=1)';
//    if Trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and b.sta_id='+inttostr(dxbuttonedit4.tag);
    if Trim(dxLookupEdit4.text)<>'' then commandtext:=commandtext+' and b.lead_id='+leader.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' group by b.lead_id,dbo.fn_staff_name(b.lead_id),a.dst_id,dbo.fn_mate_name(a.dst_id),';
    commandtext:=commandtext+'  b.med_id,c.med_code,c.med_name,c.chm_name,c.specifi,c.pdt_place,c.qtyperpack,c.qtyperbox,dbo.fn_obj_desc(c.unit_id)';
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport02.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.selected then Index := 2 else
  begin
  if Node.Expanded then Index := 1 else Index := 0;
  end;
end;

procedure Tqryreport02.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxDateEdit2.Date:=date;
end;

procedure Tqryreport02.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=pickbroker.query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=pickbroker.query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;
end;

procedure Tqryreport02.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with leader do
begin
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and broker=1 and isnull(stop_yn,0)=0 order by zname';
        open;
    end;
end;
end;

procedure Tqryreport02.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
