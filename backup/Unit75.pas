unit Unit75;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tsetreport03 = class(TForm)
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    qry: TClientDataSet;
    DSqry: TDataSource;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Shape2: TShape;
    Label3: TLabel;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    ADOQuery1: TADOQuery;
    type1: TClientDataSet;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxLookupEdit1: TdxLookupEdit;
    Label6: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    Shape7: TShape;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    DSbroker: TDataSource;
    Button1: TButton;
    SpeedButton6: TSpeedButton;
    DSqrydtl: TDataSource;
    qrydtl: TClientDataSet;
    qrydtldtl_id: TAutoIncField;
    qrydtlrec_id: TAutoIncField;
    qrydtlmate_id1: TIntegerField;
    qrydtlmate_name1: TStringField;
    qrydtlcreat_by: TIntegerField;
    qrydtlcreat_dt: TDateTimeField;
    qrydtlcreater: TStringField;
    qrydtlmodify_by: TIntegerField;
    qrydtlmodify_dt: TDateTimeField;
    qrydtlqty2: TBCDField;
    qrydtlfmonth: TStringField;
    dxButtonEdit5: TdxButtonEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem9: TMenuItem;
    dxLookupEdit2: TdxLookupEdit;
    dxButtonEdit6: TdxButtonEdit;
    Label13: TLabel;
    Label14: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1Cqty1: TdxDBGridColumn;
    dxDBGrid1Cqty2: TdxDBGridColumn;
    dxDBGrid1Cqty3: TdxDBGridColumn;
    dxDBGrid1Cqty4: TdxDBGridColumn;
    dxDBGrid1Cqty5: TdxDBGridColumn;
    dxDBGrid1Cqty6: TdxDBGridColumn;
    dxDBGrid1Cqty7: TdxDBGridColumn;
    dxDBGrid1Cqty8: TdxDBGridColumn;
    dxDBGrid1Cqty9: TdxDBGridColumn;
    dxDBGrid1Cqty10: TdxDBGridColumn;
    dxDBGrid1Cqty11: TdxDBGridColumn;
    dxDBGrid1Cqty0: TdxDBGridColumn;
    dxDBGrid1Cqty: TdxDBGridColumn;
    dxDBGrid1Cqty12: TdxDBGridColumn;
    qrymed_id: TIntegerField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qryleader: TStringField;
    qryfyear: TSmallintField;
    qrylevel_id1: TSmallintField;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    qrylead_id: TIntegerField;
    qrydistrict_id: TIntegerField;
    qrytype_id: TWordField;
    qryagent_id: TIntegerField;
    qryqty: TBCDField;
    qryqty0: TBCDField;
    qryqty1: TBCDField;
    qryqty2: TBCDField;
    qryqty3: TBCDField;
    qryqty4: TBCDField;
    qryqty5: TBCDField;
    qryqty6: TBCDField;
    qryqty7: TBCDField;
    qryqty8: TBCDField;
    qryqty9: TBCDField;
    qryqty10: TBCDField;
    qryqty11: TBCDField;
    qryqty12: TBCDField;
    qryagent: TStringField;
    qrylevel_id2: TIntegerField;
    qrylevel_id3: TIntegerField;
    qryCtype: TStringField;
    dxDBGrid1Ctype: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    SpeedButton5: TSpeedButton;
    Shape3: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    Label4: TLabel;
    Shape4: TShape;
    dxSpinEdit1: TdxSpinEdit;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1dist1: TStringField;
    ADOQuery1dist2: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1leader: TStringField;
    ADOQuery1fyear: TSmallintField;
    ADOQuery1level_id1: TSmallintField;
    ADOQuery1level_id2: TIntegerField;
    ADOQuery1level_id3: TIntegerField;
    ADOQuery1level1: TStringField;
    ADOQuery1level2: TStringField;
    ADOQuery1level3: TStringField;
    ADOQuery1lead_id: TIntegerField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1type_id: TWordField;
    ADOQuery1Ctype: TStringField;
    ADOQuery1agent_id: TIntegerField;
    ADOQuery1agent: TStringField;
    ADOQuery1qty: TBCDField;
    ADOQuery1qty0: TBCDField;
    ADOQuery1qty1: TBCDField;
    ADOQuery1qty2: TBCDField;
    ADOQuery1qty3: TBCDField;
    ADOQuery1qty4: TBCDField;
    ADOQuery1qty5: TBCDField;
    ADOQuery1qty6: TBCDField;
    ADOQuery1qty7: TBCDField;
    ADOQuery1qty8: TBCDField;
    ADOQuery1qty9: TBCDField;
    ADOQuery1qty10: TBCDField;
    ADOQuery1qty11: TBCDField;
    ADOQuery1qty12: TBCDField;
    dxDBGrid1type_id: TdxDBGridColumn;
    Edit1: TEdit;
    qryCqty1: TStringField;
    qryCqty: TStringField;
    qryCqty0: TStringField;
    qryCqty2: TStringField;
    qryCqty3: TStringField;
    qryCqty4: TStringField;
    qryCqty5: TStringField;
    qryCqty6: TStringField;
    qryCqty7: TStringField;
    qryCqty8: TStringField;
    qryCqty9: TStringField;
    qryCqty10: TStringField;
    qryCqty11: TStringField;
    qryCqty12: TStringField;
    qrycc1: TFloatField;
    qrycc2: TFloatField;
    dxDBGrid1cc1: TdxDBGridColumn;
    dxDBGrid1cc2: TdxDBGridColumn;
    Label15: TLabel;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure dxDBGrid2mate_name1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid1signerButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
  setreport03: Tsetreport03;
  fmonth: integer;
  m1,m2: real;

implementation

uses datamodu, Unit7, Unit16c, Unit16, Unit28c, Unit28d;

{$R *.DFM}

procedure Tsetreport03.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
    speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxLookupTreeView1.text<>'');
end;
end;

procedure Tsetreport03.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport03.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
{
with qry do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
    if (active=False) or (recordcount=0) or (fieldbyname('rec_id').asinteger=0) then
    begin
        if qrydtl.active then qrydtl.Close;
        tag:=0;
        exit;
    end;
end;
with qrydtl do
begin
    if tag=qry.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_report01dtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
}
with qry do
begin
    if fieldbyname('type_id').asinteger=3 then qryqty.DisplayFormat:='##0.##%;; ' else qryqty.DisplayFormat:='###,###,##0.##;; '
end;
end;

procedure Tsetreport03.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
// @compid tinyint,@levelid1 int,@levelid2 int,@levelid3 int,@districtid int,@leadid int,@agentid int,@medid int,@year smallint)
    commandtext:='exec sp_report003 1,';
//    commandtext:='exec sp_report003 1,0,0,0,';
    if Trim(dxLookupEdit1.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+level1.fieldbyname('obj_id').asstring+',';
    if Trim(dxLookupEdit2.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+level2.fieldbyname('obj_id').asstring+',';
    if Trim(dxButtonEdit6.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit6.tag)+',';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit5.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit5.tag)+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if Trim(dxButtonEdit2.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+dxSpinEdit1.text+','+inttostr(curuserid);
{
    commandtext:='select rec_id,a.type_id,a.med_id,a.creat_by,a.creat_dt,creater=dbo.fn_staff_name(a.creat_by),';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
	commandtext:=commandtext+' m.med_code,m.med_name,specifi,pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),';
    commandtext:=commandtext+' lead_id,leader=dbo.fn_staff_name(a.lead_id),fyear,agent_id,agent=dbo.fn_mate_name(a.agent_id),';
    commandtext:=commandtext+' district_id,level_id1,a.level_id2,a.level_id3,';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(a.level_id1),';
    commandtext:=commandtext+' level2=dbo.fn_obj_desc(a.level_id2),';
	commandtext:=commandtext+' level3=dbo.fn_obj_desc(a.level_id3),';
    commandtext:=commandtext+' qty,qty0,qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12';
    commandtext:=commandtext+' from vi_report03 a';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' where a.fyear='+dxSpinEdit1.text;
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit5.tag);
    if Trim(dxButtonEdit6.text)<>'' then commandtext:=commandtext+' and e.level_id3='+inttostr(dxButtonEdit6.Tag);
    if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
    if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and e.level_id2='+level2.fieldbyname('obj_id').asstring;
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and (qry_code like''%'+trim(dxedit1.text)+'%'' or chm_name like''%'+trim(dxedit1.text)+'%'')';
            1:  commandtext:=commandtext+' and med_name ';
            2:  commandtext:=commandtext+' and pdt_place ';
            3:  commandtext:=commandtext+' and med_code ';
        end;
        if radiogroup1.itemindex>0 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
    commandtext:=commandtext+' order by a.district_id,a.med_id,a.agent_id,a.type_id';
}
edit1.text:=commandtext;
//abort;
    try
        setprogress(1);
        dxDBGrid1cc1.Visible:=True;
        dxDBGrid1cc2.Visible:=True;
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport03.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport03.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetreport03.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with type1 do if active then close;
with type2 do if active then close;
with qry do if active then close;
with qrydtl do if active then close;
end;

procedure Tsetreport03.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
with dm.pubqry do
begin
    if active then close;
    commandtext:='select year(getdate()),month(getdate())';
    open;
    dxSpinEdit1.Value:=fields[0].asinteger;
    fmonth:=fields[1].asinteger;
end;
end;

procedure Tsetreport03.N3Click(Sender: TObject);
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

procedure Tsetreport03.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport03.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1type_id.Visible:=False;
dxDBGrid1cc1.Visible:=False;
dxDBGrid1cc2.Visible:=False;
setprogress(0);
end;

procedure Tsetreport03.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1type_id.Visible:=False;
dxDBGrid1cc1.Visible:=False;
dxDBGrid1cc2.Visible:=False;
dxDBGrid1type_id.Visible:=False;
end;

procedure Tsetreport03.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with level1 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''新签'' union select obj_id=2,zdesc=''续签''';
        open;
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''GD'' union select obj_id=2,zdesc=''GZ'' union select obj_id=3,zdesc=''HC''';
        open;
    end;
end;
end;

procedure Tsetreport03.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxLookupTreeView1.text<>'');
end;

procedure Tsetreport03.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport03.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
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

procedure Tsetreport03.Button1Click(Sender: TObject);
begin
showmessage('指标:'+formatfloat('###,##0.##%;; ',9999)+#13#10+'完成:'+formatfloat('###,##0.##%;; ',9999)+#13#10+'完成率:'+formatfloat('###,##0.##%;; ',9999));
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_report01 set creat_by='+inttostr(curuserid);
    execute;
end;
}
end;

procedure Tsetreport03.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,id2,id4,id5,id6,id8,id9,id10,id11: integer;
    sbodcd: string; //s1,s2,
    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter  := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:=FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    screen.cursor:=crhourglass;
    sbodcd:='';
    j:=2; mi:=0;  //第2行开始 每行一单
//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务负责人id8,9客户id9,10目标医院id10,
//  11药品编码id11,12供货价,13推广服务费,14 1月,15 2月,16 3月,17 4月,18 5月,19 6月,20 7月,21 8月,22 9月,23 10月,24 11月,25 12月,
//  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金

    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id4:=0;id5:=0;id6:=0;id8:=0;id9:=0;id10:=0; id11:=0;
        with dm.pubqry do
        begin
            if active then close;
            if sheet.cells[j,4].text<>'' then
            begin
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
//edit1.text:=commandtext;
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,11].text)+'''';
                open;
                if recordcount>0 then id11:=fieldbyname('med_id').asinteger; //品种
            end;

//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,10目标医院id10,
//  11药品编码id11
            if (id4=0) or (id5=0) or (id6=0) or (id8=0) or (id9=0) or (id11=0) then  // or (id10=0)
            begin
                sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
                if id4=0 then sbodcd:=sbodcd+',未取得事业部';
                if id5=0 then sbodcd:=sbodcd+',未取得区域经理';
                if id6=0 then sbodcd:=sbodcd+',未取得省份城市';
                if id8=0 then sbodcd:=sbodcd+',未取得业务员';
                if id9=0 then sbodcd:=sbodcd+',未取得客户';
//                if id10=0 then sbodcd:=sbodcd+',未取得目标医院';
                if id11=0 then sbodcd:=sbodcd+',未取得品种';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    if sbodcd<>'' then
    begin
        setprogress(0);
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'-----------------------------------'+sbodcd),'请注意',MB_OK+MB_IconError);
        XL.Quit;
        abort;
    end;
    setprogress(1);
//从第2行开始导入，导入格式: 1配送商编码,2配送商名称
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id2:=0;id4:=0;id5:=0;id6:=0;id8:=0;id9:=0;id10:=0; id11:=0;
        with dm.pubqry do
        begin
            if sheet.cells[j,2].text='' then id2:=0
            else if Trim(sheet.cells[j,2].text)='GD' then id2:=1
            else if Trim(sheet.cells[j,2].text)='GZ' then id2:=2
            else if Trim(sheet.cells[j,2].text)='HC' then id2:=3
            else id2:=0;
            if sheet.cells[j,4].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,11].text)+'''';
                open;
                if recordcount>0 then id11:=fieldbyname('med_id').asinteger; //品种
            end;

//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,10目标医院id10,
//  11药品编码id11,12供货价,13推广服务费,14 1月,15 2月,16 3月,17 4月,18 5月,19 6月,20 7月,21 8月,22 9月,23 10月,24 11月,25 12月,
//  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金

//1年度,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,11药品编码id11

            if active then close;
            commandtext:='select top 1 rec_id from tb_report01 where comp_id= '+inttostr(compid)+' and fyear='+sheet.cells[j,1].text;
            commandtext:=commandtext+' and level_id1='+inttostr(id4)+' and lead_id='+inttostr(id5)+' and district_id='+inttostr(id6);
            commandtext:=commandtext+' and broker_id='+inttostr(id8)+' and mate_id='+inttostr(id9)+' and med_id='+inttostr(id11);
//edit2.text:=commandtext;            
            open;
            if recordcount=0 then
            begin
                if active then close;
                commandtext:='insert into tb_report01 (comp_id,fyear,type_id2,sign_dt,level_id1,lead_id,district_id,broker_id,mate_id,mate_id1,med_id,';
                commandtext:=commandtext+'price,amot1,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,qty1,qty2,';
                commandtext:=commandtext+'fmonth,dt1,dt2,appoint,insure_amot,creat_by,creat_dt)';
                if sheet.cells[j,1].text='' then commandtext:=commandtext+'values ('+inttostr(compid)+',null,'
                    else commandtext:=commandtext+' values ('+inttostr(compid)+','+sheet.cells[j,1].text+',';
                commandtext:=commandtext+inttostr(id2)+',';
    //showmessage(sheet.cells[j,3].text);
                if sheet.cells[j,3].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,3].text));
                except
                    dt:=0;
                end;
    //showmessage(datetimetostr(dt));
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+inttostr(id4)+',';
                commandtext:=commandtext+inttostr(id5)+',';
                commandtext:=commandtext+inttostr(id6)+',';
                commandtext:=commandtext+inttostr(id8)+',';  // 业务员
                commandtext:=commandtext+inttostr(id9)+',';
                commandtext:=commandtext+inttostr(id10)+',';
                commandtext:=commandtext+inttostr(id11)+','; //药品

                if sheet.cells[j,12].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,12].text)+',';
                if sheet.cells[j,13].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,13].text)+',';
                if sheet.cells[j,14].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,14].text)+',';
                if sheet.cells[j,15].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,15].text)+',';
                if sheet.cells[j,16].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,16].text)+',';
                if sheet.cells[j,17].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,17].text)+',';
                if sheet.cells[j,18].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,18].text)+',';
                if sheet.cells[j,19].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,19].text)+',';
                if sheet.cells[j,20].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,20].text)+',';
                if sheet.cells[j,21].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,21].text)+',';
                if sheet.cells[j,22].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,22].text)+',';
                if sheet.cells[j,23].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,23].text)+',';
                if sheet.cells[j,24].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,24].text)+',';
                if sheet.cells[j,25].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,25].text)+',';

                if sheet.cells[j,26].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,26].text)+',';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';

    //  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金
                commandtext:=commandtext+''''+Trim(sheet.cells[j,28].text)+''','; //预计开发月份
                if sheet.cells[j,29].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,29].text));
                except
                    dt:=0;
                end;
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                if sheet.cells[j,30].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,30].text));
                except
                    dt:=0;
                end;
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+''''+Trim(sheet.cells[j,31].text)+''','; //预计开发月份
                if sheet.cells[j,32].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,32].text)+',';
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    //exit;
                open;
                mi:=fields[0].asinteger;
            end
            else mi:=fields[0].asinteger;
            if id10>0 then // 取得目标医院
            begin
                if active then close;
                commandtext:='if not exists (select 1 from tb_report01dtl where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10)+')';
                commandtext:=commandtext+' insert into tb_report01dtl (rec_id,mate_id1,qty2,creat_dt,creat_by)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id10)+',';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' getdate(),'+inttostr(curuserid)+')';
                commandtext:=commandtext+' else update tb_report01dtl set qty2=';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' modify_dt=getdate(),modify_by='+inttostr(curuserid);
                commandtext:=commandtext+' where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10);
//edit3.text:=commandtext;
                execute;
            end;
//10目标医院id10,   27目标销量
        end;
        inc(j);
    end;
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then qry.locate('rec_id',mi,[]);
end;

procedure Tsetreport03.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_report01dtl','dtl_id','');
end;

procedure Tsetreport03.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport03.qrydtlBeforePost(DataSet: TDataSet);
begin
with qrydtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('rec_id').asinteger:= qry.fieldbyname('rec_id').asinteger;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport03.dxDBGrid2mate_name1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (qrydtl.state in [dsinsert,dsedit]) then qrydtl.edit;
    if showmodal= mrOK then
    begin
        qrydtl.fieldbyname('mate_id1').asinteger:= query1.fieldbyname('mate_id').asinteger;
        qrydtl.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        qrydtl.fieldbyname('mate_id1').asinteger:= 0;
        qrydtl.fieldbyname('mate_name1').asstring:= '';
    end;
end;
end;

procedure Tsetreport03.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tsetreport03.wwDBNavigator1PostClick(Sender: TObject);
begin
//if qrydtl.ChangeCount>0 then qrydtl.post;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
//if not (qry.State in [dsinsert]) and (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tsetreport03.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tsetreport03.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tsetreport03.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag :=0;
    end;
end;
end;

procedure Tsetreport03.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var fapp: boolean;
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
{
    if shift=[ssctrl] then
    begin
        dxDBGrid2DblClick(self);  // ctrl+enter : 再次进入最近 pickmed_bat
        exit;
    end;
    with Tdxdbgrid(activecontrol) do
    begin
        if VisibleColumns[focusedcolumn].fieldname='destination' then // 输入完最后的字段的cursor控制
        begin
            with qry do
            begin
                if state in [dsinsert,dsedit] then post;
                disablecontrols;
                next;
//                if eof then prior;
                enablecontrols;
            end;
       end;
    end;
}
end;
end;

procedure Tsetreport03.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
{
if Key=Chr(VK_RETURN) then
begin
    with dxDBGrid1 do
    begin
//        if Columns[focusedcolumn].Index< Columns.Count-1 then focusedcolumn := focusedcolumn+1;
        if VisibleColumns[focusedcolumn].fieldname='destination' then
        begin
            if qry.RecNo<qry.RecordCount then next;
            focusedcolumn:=0;
        end
        else focusedcolumn := focusedcolumn+1;
    end;
    Abort;
end;
}
end;

procedure Tsetreport03.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol is Tdxdbgrid then

    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;
end;

procedure Tsetreport03.dxDBGrid1signerButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if not (qry.state in [dsinsert,dsedit]) then qry.edit;
    if showmodal= mrOK then
    begin
        qry.fieldbyname('sign_by').asinteger:= query1.fieldbyname('sta_id').asinteger;
        qry.fieldbyname('signer').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        qry.fieldbyname('sign_by').asinteger:= 0;
        qry.fieldbyname('signer').asstring:= '';
    end;
end;
end;

procedure Tsetreport03.dxButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit6.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit6.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit6.text:='';
        dxbuttonedit6.tag :=0;
    end;
end;
end;

procedure Tsetreport03.qryCalcFields(DataSet: TDataSet);
var mi: integer;
begin
with qry do
begin
    case fieldbyname('type_id').asinteger of
        1:  begin
            fieldbyname('ctype').asstring:='指标';
            fieldbyname('cc1').asfloat:=fieldbyname('qty').asfloat;
            end;
        2:  begin
            fieldbyname('ctype').asstring:='实际完成';
            fieldbyname('cc2').asfloat:=fieldbyname('qty').asfloat;
            end;
        3:  fieldbyname('ctype').asstring:='完成率%';
    end;
    if fieldbyname('type_id').asinteger=3 then
    begin
        fieldbyname('cqty').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty').asfloat);
        fieldbyname('cqty0').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty0').asfloat);
        fieldbyname('cqty1').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty1').asfloat);
        fieldbyname('cqty2').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty2').asfloat);
        fieldbyname('cqty3').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty3').asfloat);
        fieldbyname('cqty4').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty4').asfloat);
        fieldbyname('cqty5').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty5').asfloat);
        fieldbyname('cqty6').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty6').asfloat);
        fieldbyname('cqty7').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty7').asfloat);
        fieldbyname('cqty8').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty8').asfloat);
        fieldbyname('cqty9').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty9').asfloat);
        fieldbyname('cqty10').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty10').asfloat);
        fieldbyname('cqty11').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty11').asfloat);
        fieldbyname('cqty12').asstring:=formatfloat('###,##0.##%;; ',fieldbyname('qty12').asfloat);
    end
    else
    begin
        fieldbyname('cqty').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty').asfloat);
        fieldbyname('cqty0').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty0').asfloat);
        fieldbyname('cqty1').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty1').asfloat);
        fieldbyname('cqty2').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty2').asfloat);
        fieldbyname('cqty3').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty3').asfloat);
        fieldbyname('cqty4').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty4').asfloat);
        fieldbyname('cqty5').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty5').asfloat);
        fieldbyname('cqty6').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty6').asfloat);
        fieldbyname('cqty7').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty7').asfloat);
        fieldbyname('cqty8').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty8').asfloat);
        fieldbyname('cqty9').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty9').asfloat);
        fieldbyname('cqty10').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty10').asfloat);
        fieldbyname('cqty11').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty11').asfloat);
        fieldbyname('cqty12').asstring:=formatfloat('###,###,##0.##;; ',fieldbyname('qty12').asfloat);
    end;
{
    fieldbyname('cqty0').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat+fieldbyname('qty5').asfloat
        +fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat+fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    case fmonth of
        1:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat;
        2:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat;
        3:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat;
        4:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat;
        5:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat+fieldbyname('qty5').asfloat;
        6:  fieldbyname('cqty').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat+fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat;
        7:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat-fieldbyname('qty8').asfloat -fieldbyname('qty9').asfloat -fieldbyname('qty10').asfloat -fieldbyname('qty11').asfloat -fieldbyname('qty12').asfloat;
        8:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat-fieldbyname('qty9').asfloat -fieldbyname('qty10').asfloat -fieldbyname('qty11').asfloat -fieldbyname('qty12').asfloat;
        9:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat-fieldbyname('qty10').asfloat -fieldbyname('qty11').asfloat -fieldbyname('qty12').asfloat;
        10:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat-fieldbyname('qty11').asfloat -fieldbyname('qty12').asfloat;
        11:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat-fieldbyname('qty12').asfloat;
        12:  fieldbyname('cqty').asfloat:=fieldbyname('cqty0').asfloat;
    end;
}
{
    fieldbyname('cqty').asfloat:=0;
    for mi:=1 to fmonth do
    begin
        case mi of
            1:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty1').asfloat;
            2:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty2').asfloat;
            3:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty3').asfloat;
            4:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty4').asfloat;
            5:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty5').asfloat;
            6:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty6').asfloat;
            7:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty7').asfloat;
            8:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty8').asfloat;
            9:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty9').asfloat;
            10:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty10').asfloat;
            11:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty11').asfloat;
            12:  fieldbyname('cqty').asfloat:=fieldbyname('cqty').asfloat+fieldbyname('qty12').asfloat;
        end;
//        mi:=mi+1;
    end;
}
end;
end;

procedure Tsetreport03.SpeedButton5Click(Sender: TObject);
begin
if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_report03 (rela_id,type_id,level_id1,level_id2,level_id3,lead_id,district_id,agent_id,med_id,fyear,qty1,qty2,qty3,qty4,qty5,qty6,qty7,qty8,qty9,qty10,qty11,qty12,creat_by,creat_dt)';
    commandtext:=commandtext+' select a.rec_id,type_id=1,e.level_id1,e.level_id2,e.level_id3,e.sta_id,a.district_id,a.broker_id,a.med_id,a.fyear,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'	 from tb_report01 a  left join tb_busiframe e on a.med_id=e.med_id and dbo.fn_treeischild(a.district_id,e.district_id)=1';
    commandtext:=commandtext+'	 where not exists (select 1 from tb_report03 b where a.rec_id=b.rela_id)';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;

    if active then close;
    commandtext:='insert into tb_report03 (rela_id,type_id,level_id1,level_id2,level_id3,lead_id,district_id,agent_id,med_id,fyear,creat_by,creat_dt)';
    commandtext:=commandtext+' select distinct 0,type_id=2,k.level_id1,k.level_id2,k.level_id3,b.lead_id,a.district_id,a.agent_id,b.med_id,year(a.carry_dt),'+inttostr(curuserid)+',getdate()';
	commandtext:=commandtext+' from tb_bill a ';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_busiframe k on b.med_id=k.med_id and a.district_id =k.district_id';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2';
    commandtext:=commandtext+'  and not exists (select 1 from tb_report03 r where r.type_id=3 and a.district_id=r.district_id and b.med_id=r.med_id and r.fyear=year(a.carry_dt))';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
    
    if active then close;
    commandtext:='update r set qty1=h.qty1,qty2=h.qty2,qty3=h.qty3,qty4=h.qty4,qty5=h.qty5,qty6=h.qty6,qty7=h.qty7,qty8=h.qty8,qty9=h.qty9,qty10=h.qty10,qty11=h.qty11,qty12=h.qty12';
    commandtext:=commandtext+' from tb_report03 r,(select rela_id=0,type_id=2,k.level_id1,k.level_id2,k.level_id3,b.lead_id,a.district_id,a.agent_id,b.med_id,fyear=year(a.carry_dt),';
    commandtext:=commandtext+' qty1=sum(case when month(a.carry_dt)=1 then b.qty end),';
    commandtext:=commandtext+' qty2=sum(case when month(a.carry_dt)=2 then b.qty end),';
    commandtext:=commandtext+' qty3=sum(case when month(a.carry_dt)=3 then b.qty end),';
    commandtext:=commandtext+' qty4=sum(case when month(a.carry_dt)=4 then b.qty end),';
    commandtext:=commandtext+' qty5=sum(case when month(a.carry_dt)=5 then b.qty end),';
    commandtext:=commandtext+' qty6=sum(case when month(a.carry_dt)=6 then b.qty end),';
    commandtext:=commandtext+' qty7=sum(case when month(a.carry_dt)=7 then b.qty end),';
    commandtext:=commandtext+' qty8=sum(case when month(a.carry_dt)=8 then b.qty end),';
    commandtext:=commandtext+' qty9=sum(case when month(a.carry_dt)=9 then b.qty end),';
    commandtext:=commandtext+' qty10=sum(case when month(a.carry_dt)=10 then b.qty end),';
    commandtext:=commandtext+' qty11=sum(case when month(a.carry_dt)=11 then b.qty end),';
    commandtext:=commandtext+' qty12=sum(case when month(a.carry_dt)=12 then b.qty end)';
	commandtext:=commandtext+' from tb_bill a inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' 	left join tb_busiframe k on b.med_id=k.med_id and a.district_id =k.district_id';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.bod_status_id=1 and a.cate_id=2';
    commandtext:=commandtext+' group by k.level_id1,k.level_id2,k.level_id3,b.lead_id,a.district_id,a.agent_id,b.med_id,year(a.carry_dt)) h';
    commandtext:=commandtext+' where r.type_id=2 and r.district_id=h.district_id and r.med_id=h.med_id';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
SpeedButton3Click(nil); //refresh
end;

procedure Tsetreport03.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
//if (ANode.Values[dxDBGrid1type_id.Index] = 2) then AColor := $00FEFDE2;
if (ANode.Values[dxDBGrid1type_id.Index] = 3) then AColor := $00FFDDBB; //$00F6F6F6;
{
if (AColumn = dxDBGrid1Ctype) then
begin
    if (ANode.Strings[dxDBGrid1Ctype.Index] = '完成率') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tsetreport03.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport03.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
{
if AColumn.Name='dxDBGrid1Cqty' then
begin
    atext:='指标:'+formatfloat('###,##0.##%;; ',9999)+#13#10+'完成:'+formatfloat('###,##0.##%;; ',9999)+#13#10+'完成率:'+formatfloat('###,##0.##%;; ',9999);
end;
}
if AColumn.Name='dxDBGrid1cc1' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1cc2' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1Cqty' then
begin
    atext:='指标:'+formatfloat('###,###,##0;; ',m1)+' 完成:'+formatfloat('###,###,##0;; ',m2);
    if m1<>0 then atext:=atext+' 完成率:'+formatfloat('###,##0.##%;; ',m2/m1*100);
end;
dxDBGrid1cc1.Visible:=False;
dxDBGrid1cc2.Visible:=False;
end;

end.
