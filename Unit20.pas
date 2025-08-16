unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ImgList, DB, ADODB, dxCntner, dxdbtrel, dxEditor,
  dxEdLib, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, StdCtrls,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBClient,
  dxDBTL, ComCtrls, ToolWin;

type
  Tqrystock = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    SpeedButton3: TSpeedButton;
    StyleController: TdxEditStyleController;
    ADOQuery1: TADOQuery;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit2: TdxEdit;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    SpeedButton1: TSpeedButton;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape3: TShape;
    ImageList: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    stockqry: TClientDataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField10: TStringField;
    AutoIncField2: TAutoIncField;
    DateTimeField1: TDateTimeField;
    BCDField4: TBCDField;
    DSstockqry: TDataSource;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Images: TImageList;
    Edit1: TEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BEZEI: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1stock_amot: TdxDBGridColumn;
    ADOQuery1cate_id: TWordField;
    dxDBGrid1Ccate: TdxDBGridColumn;
    stockqrycate_id: TWordField;
    stockqryCcate: TStringField;
    Label13: TLabel;
    stockqryagent_id: TAutoIncField;
    stockqryagent: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    Shape4: TShape;
    Label4: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    RadioGroup2: TRadioGroup;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxEdit5: TdxEdit;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    stockqrychannel_id: TIntegerField;
    stockqrychannel_dtl_id: TIntegerField;
    stockqrychannel: TStringField;
    stockqrychannel_dtl: TStringField;
    stockqryBEZEI: TStringField;
    stockqryCITY1: TStringField;
    dxDBGrid1CITY1: TdxDBGridColumn;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    stockqrymaterial_code: TStringField;
    stockqrymaterial_code1: TStringField;
    dxDBGrid1material_code: TdxDBGridColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure stockqryCalcFields(DataSet: TDataSet);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSstockqryDataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrystock: Tqrystock;

implementation

uses datamodu, Unit16a, Unit7, Unit28b;

{$R *.DFM}

procedure Tqrystock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrystock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrystock.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with stockqry do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,stock_amot=cast(a.price*a.qty as decimal(15,2)) from vi_matemedstock a';
//    commandtext:=commandtext+' inner join tb_medicine b on a.med_id=b.med_id';
//    commandtext:=commandtext+' inner join tb_busimate c on a.mate_id=c.mate_id';
//    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
//    commandtext:=commandtext+' where c.mate_type_id=2 and a.qty<>0'; // and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
    commandtext:=commandtext+' where a.qty<>0'; //a.comp_id='+inttostr(compid)+' and c.mate_type_id=2 and  and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
    if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit3.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    if RadioGroup2.ItemIndex>0 then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
    if Trim(dxedit2.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and dbo.fn_getpy(a.med_name) '; //a.qry_code ';
            1:  commandtext:=commandtext+' and a.med_name ';
            2:  commandtext:=commandtext+' and a.pdt_place ';
            3:  commandtext:=commandtext+' and (a.material_code='''+trim(dxedit2.text)+''' or a.material_code1='''+trim(dxedit2.text)+''')';
        end;
        if radiogroup1.itemindex<3 then commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
    end;
    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and (a.material_code='''+Trim(dxEdit5.text)+''' or a.material_code1='''+Trim(dxEdit5.text)+''')';
//    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=b.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrystock.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tqrystock.SpeedButton1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tqrystock.dxEdit2Click(Sender: TObject);
begin
dxedit2.SelectAll;
dxedit2.SetFocus;
end;

procedure Tqrystock.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag:=0;
    end;
end;

procedure Tqrystock.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqrystock.FormActivate(Sender: TObject);
begin
{
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
}
end;

procedure Tqrystock.FormCreate(Sender: TObject);
begin
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tqrystock.N3Click(Sender: TObject);
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

procedure Tqrystock.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrystock.N2Click(Sender: TObject);
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

procedure Tqrystock.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqrystock.stockqryCalcFields(DataSet: TDataSet);
begin
with stockqry do
begin
    case fieldbyname('cate_id').asinteger of
        1:  fieldbyname('ccate').asstring:='商业';
        2:  fieldbyname('ccate').asstring:='分销';
    end;
end;
end;

procedure Tqrystock.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker1 do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;

procedure Tqrystock.DSstockqryDataChange(Sender: TObject; Field: TField);
begin
with stockqry do
begin
    speedbutton1.enabled:= (active=true) and (recordcount>0);
end;
end;

procedure Tqrystock.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqrystock.dxEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(self);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tqrystock.dxEdit5Enter(Sender: TObject);
begin
(Sender as TdxEdit).selectall;
(Sender as TdxEdit).setfocus;
end;

end.
