unit Unit45;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ImgList, DB, ADODB, dxCntner, dxdbtrel, dxEdLib,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxEditor, Buttons, StdCtrls,
  ExtCtrls, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, DBClient;

type
  Tqrymateexg = class(TForm)
    dxDBGrid1: TdxDBGrid;
    StyleController: TdxEditStyleController;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    dxButtonEdit1: TdxButtonEdit;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit4: TdxCheckEdit;
    Label5: TLabel;
    Shape5: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSexgqry: TDataSource;
    Shape6: TShape;
    SpeedButton1: TSpeedButton;
    ADOQuery1: TADOQuery;
    Label7: TLabel;
    Shape7: TShape;
    dxButtonEdit3: TdxButtonEdit;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1src_mate: TStringField;
    ADOQuery1dst_mate: TStringField;
    ADOQuery1creater: TStringField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1imp_qty: TBCDField;
    ADOQuery1imp_amt: TBCDField;
    ADOQuery1exp_qty: TBCDField;
    ADOQuery1exp_amt: TBCDField;
    dxButtonEdit4: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    dxDateEdit1: TdxDateEdit;
    Label9: TLabel;
    dxDateEdit2: TdxDateEdit;
    dxLookupTreeView1: TdxLookupTreeView;
    Label10: TLabel;
    Shape8: TShape;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qry: TClientDataSet;
    qryrec_id: TAutoIncField;
    qrysrc_mate: TStringField;
    qrydst_mate: TStringField;
    qrybroker: TStringField;
    qrycarry_dt: TDateTimeField;
    qrybod_cd: TStringField;
    qrycreater: TStringField;
    qrybod_type_id: TIntegerField;
    qrybod_type: TStringField;
    qrybusi_type: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qrychm_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryqtyperpack: TBCDField;
    qrybat_cd: TStringField;
    qryprice: TBCDField;
    qryimp_qty: TBCDField;
    qryimp_amt: TBCDField;
    qryexp_qty: TBCDField;
    qryexp_amt: TBCDField;
    qrybod_desc: TStringField;
    qryCmate_name: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    dxDBGrid1bod_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1src_mate: TdxDBGridColumn;
    dxDBGrid1dst_mate: TdxDBGridColumn;
    dxDBGrid1busi_type: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1imp_qty: TdxDBGridColumn;
    dxDBGrid1imp_amt: TdxDBGridColumn;
    dxDBGrid1exp_qty: TdxDBGridColumn;
    dxDBGrid1exp_amt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxCheckEdit2Change(Sender: TObject);
    procedure dxCheckEdit3Change(Sender: TObject);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSexgqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  qrymateexg: Tqrymateexg;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit70, Unit16a;

{$R *.DFM}

procedure Tqrymateexg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrymateexg.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqrymateexg.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqrymateexg.SpeedButton5Click(Sender: TObject);
var ss: string[1];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if fdistltd then
begin
    if dxLookupTreeView1.Text='' then raise Exception.Create('请选择所在地区');
    with dm.pubqry do
    begin
        if active=True then close;
        commandtext:='select top 1 1 from tb_trustdistrict where sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode('+DM.district.fieldbyname('rec_id').asstring+',dist_id)=1';
        open;
        if recordcount=0 then raise Exception.Create('所在地区不属于本人授权地区');
    end;
end;
with qry do
begin
    if active=true then close;
    if dxcheckedit2.checked then ss:='0';
    if dxcheckedit3.checked then ss:='1';
    if dxcheckedit4.checked then ss:='2';
    commandtext:='sp_qryagentexg '+inttostr(compid)+','+inttostr(dxbuttonedit1.tag)+','' '','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+''',';
    if trim(dxbuttonedit3.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit3.tag)+',';
    if trim(dxbuttonedit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit4.tag)+',';
    if trim(dxbuttonedit2.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit2.tag)+',';
    commandtext:=commandtext+ss;
    if trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+',0'
        else commandtext:=commandtext+','+dm.district.fieldbyname('rec_id').asstring;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
dxDBGrid1med_code.visible:=trim(dxButtonEdit1.text)='';
dxDBGrid1med_name.visible:=trim(dxButtonEdit1.text)='';
dxDBGrid1specifi.visible:=trim(dxButtonEdit1.text)='';
dxDBGrid1pdt_place.visible:=trim(dxButtonEdit1.text)='';
dxDBGrid1med_unit.visible:=trim(dxButtonEdit1.text)='';
end;

procedure Tqrymateexg.dxCheckEdit2Change(Sender: TObject);
begin
if dxcheckedit2.checked then
begin
    dxcheckedit3.checked:=false;
    dxcheckedit4.checked:=false;
end;
end;

procedure Tqrymateexg.dxCheckEdit3Change(Sender: TObject);
begin
if dxcheckedit3.checked then
begin
    dxcheckedit2.checked:=false;
    dxcheckedit4.checked:=false;
end;
end;

procedure Tqrymateexg.dxCheckEdit4Change(Sender: TObject);
begin
if dxcheckedit4.checked then
begin
    dxcheckedit3.checked:=false;
    dxcheckedit2.checked:=false;
end;
end;

procedure Tqrymateexg.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=pickcustomer.query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag :=pickcustomer.query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tqrymateexg.DSexgqryDataChange(Sender: TObject; Field: TField);
begin
speedbutton1.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tqrymateexg.SpeedButton1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqrymateexg.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;
end;

procedure Tqrymateexg.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqrymateexg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrymateexg.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
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
end;

procedure Tqrymateexg.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqrymateexg.N3Click(Sender: TObject);
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

procedure Tqrymateexg.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrymateexg.N2Click(Sender: TObject);
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

procedure Tqrymateexg.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
