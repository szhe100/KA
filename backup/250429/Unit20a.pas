unit Unit20a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ImgList, DB, ADODB, dxCntner, dxdbtrel, dxEditor,
  dxEdLib, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, StdCtrls,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBClient;

type
  Tqrystock1 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSpubqry: TDataSource;
    SpeedButton3: TSpeedButton;
    StyleController: TdxEditStyleController;
    ADOQuery1: TADOQuery;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit2: TdxEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1qtyperpack: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    SpeedButton1: TSpeedButton;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1agent: TStringField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1qtyperbox: TBCDField;
    ADOQuery1stock_amot: TBCDField;
    ADOQuery1med_type: TStringField;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1stock_amot: TdxDBGridColumn;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    Label2: TLabel;
    Shape3: TShape;
    ImageList: TImageList;
    dxDBGrid1district: TdxDBGridColumn;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    stockqry: TClientDataSet;
    stockqryrec_id: TAutoIncField;
    stockqrydistrict: TStringField;
    stockqrymate_id: TIntegerField;
    stockqryagent: TStringField;
    stockqrymed_code: TStringField;
    stockqrymed_name: TStringField;
    stockqrychm_name: TStringField;
    stockqryspecifi: TStringField;
    stockqrypdt_place: TStringField;
    stockqrymed_unit: TStringField;
    stockqrymed_type: TStringField;
    stockqryqtyperpack: TBCDField;
    stockqryqty: TBCDField;
    stockqryprice: TBCDField;
    stockqryGMP: TBooleanField;
    stockqryotc_rx: TBooleanField;
    stockqrybat_cd: TStringField;
    stockqrymed_id: TAutoIncField;
    stockqrystock_amot: TBCDField;
    stockqryvalid_dt: TDateTimeField;
    Label13: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSpubqryDataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  qrystock1: Tqrystock1;

implementation

uses datamodu, Unit16, Unit7;

{$R *.DFM}

procedure Tqrystock1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with stockqry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrystock1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrystock1.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with stockqry do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.rec_id,a.mate_id,agent=c.mate_name,a.med_id,a.bat_cd,a.price,a.qty,stock_amot=price*qty,a.valid_dt,b.gmp,b.otc_rx,'; //substring(convert(char(10),a.valid_dt,102),1,7)
    commandtext:=commandtext+' district=dbo.fn_getdistrictbymate_id(a.mate_id),b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),med_type=dbo.fn_med_type(b.med_id),qtyperpack,qtyperbox';
    commandtext:=commandtext+' from tb_medstock_bat a,tb_medicine b,tb_busimate c';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.med_id=b.med_id and a.mate_id=c.mate_id and c.mate_type_id=1 and a.qty<>0'; //and dbo.fn_inmed(a.med_id,'+inttostr(curuserid)+')=1';
    if trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
    if trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    if trim(dxedit2.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and b.qry_code ';
            1:  commandtext:=commandtext+' and b.med_name ';
            2:  commandtext:=commandtext+' and b.pdt_place ';
            3:  commandtext:=commandtext+' and b.med_code ';
        end;
        commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    commandtext:=commandtext+' order by dbo.fn_mate_name(a.mate_id),b.med_type_id,b.med_name,b.specifi,b.pdt_place';
    try
        setprogress(1);
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrystock1.dxEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqrystock1.SpeedButton1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqrystock1.dxEdit2Click(Sender: TObject);
begin
dxedit2.SelectAll;
dxedit2.SetFocus;
end;

procedure Tqrystock1.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
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
end;

procedure Tqrystock1.DSpubqryDataChange(Sender: TObject; Field: TField);
begin
with stockqry do
begin
    speedbutton1.enabled:= (active=true) and (recordcount>0);
end;
end;

procedure Tqrystock1.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqrystock1.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqrystock1.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqrystock1.N3Click(Sender: TObject);
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

procedure Tqrystock1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrystock1.N2Click(Sender: TObject);
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

procedure Tqrystock1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

end.
