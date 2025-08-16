unit Unit80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tqryreport07 = class(TForm)
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
    Edit1: TEdit;
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
    Label15: TLabel;
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
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1qty3: TdxDBGridColumn;
    dxDBGrid1qty4: TdxDBGridColumn;
    dxDBGrid1qty5: TdxDBGridColumn;
    dxDBGrid1qty6: TdxDBGridColumn;
    dxDBGrid1qty7: TdxDBGridColumn;
    dxDBGrid1qty8: TdxDBGridColumn;
    dxDBGrid1qty9: TdxDBGridColumn;
    dxDBGrid1qty10: TdxDBGridColumn;
    dxDBGrid1qty11: TdxDBGridColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1qty12: TdxDBGridColumn;
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
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport07: Tqryreport07;
//  frecid: integer;
  fmonth: integer;

implementation

uses datamodu, Unit7, Unit16c, Unit16, Unit28c, Unit28d;

{$R *.DFM}

procedure Tqryreport07.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
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

procedure Tqryreport07.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport07.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqryreport07.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('med_id').asinteger;
        close;
    end
    else mi:=0;
// @compid tinyint,@levelid1 int,@levelid2 int,@levelid3 int,@districtid int,@leadid int,@agentid int,@medid int,@year smallint)
    commandtext:='exec sp_report002 1,0,0,0,';
    if Trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    if Trim(dxButtonEdit5.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit5.tag)+',';
    if Trim(dxButtonEdit4.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+',';
    if Trim(dxButtonEdit2.text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+dxSpinEdit1.text+','+inttostr(curuserid);
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('med_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport07.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport07.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryreport07.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with type1 do if active=True then close;
with type2 do if active=True then close;
with qry do if active=True then close;
with qrydtl do if active=True then close;
end;

procedure Tqryreport07.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select year(getdate()),month(getdate())';
    open;
    dxSpinEdit1.Value:=fields[0].asinteger;
    fmonth:=fields[1].asinteger;
end;
end;

procedure Tqryreport07.N3Click(Sender: TObject);
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

procedure Tqryreport07.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport07.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1type_id.Visible:=False;
setprogress(0);
end;

procedure Tqryreport07.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1type_id.Visible:=False;
end;

procedure Tqryreport07.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
with level2 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
with type1 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''新签'' union select obj_id=2,zdesc=''续签''';
        open;
    end;
with type2 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''GD'' union select obj_id=2,zdesc=''GZ'' union select obj_id=3,zdesc=''HC''';
        open;
    end;
end;

procedure Tqryreport07.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxLookupTreeView1.text<>'');
end;

procedure Tqryreport07.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport07.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
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

procedure Tqryreport07.Button1Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_report01 set creat_by='+inttostr(curuserid);
    execute;
end;
end;

procedure Tqryreport07.SpeedButton6Click(Sender: TObject);
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
            if active=true then close;
            if sheet.cells[j,4].text<>'' then
            begin
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
//edit1.text:=commandtext;
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active=true then close;
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
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,11].text)+'''';
                open;
                if recordcount>0 then id11:=fieldbyname('med_id').asinteger; //品种
            end;

//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,10目标医院id10,
//  11药品编码id11,12供货价,13推广服务费,14 1月,15 2月,16 3月,17 4月,18 5月,19 6月,20 7月,21 8月,22 9月,23 10月,24 11月,25 12月,
//  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金

//1年度,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,11药品编码id11

            if active=true then close;
            commandtext:='select top 1 rec_id from tb_report01 where comp_id= '+inttostr(compid)+' and fyear='+sheet.cells[j,1].text;
            commandtext:=commandtext+' and level_id1='+inttostr(id4)+' and lead_id='+inttostr(id5)+' and district_id='+inttostr(id6);
            commandtext:=commandtext+' and broker_id='+inttostr(id8)+' and mate_id='+inttostr(id9)+' and med_id='+inttostr(id11);
            open;
            if recordcount=0 then
            begin
                if active=true then close;
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
                if active=true then close;
                commandtext:='if not exists (select 1 from tb_report01dtl where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10)+')';
                commandtext:=commandtext+' insert into tb_report01dtl (rec_id,mate_id1,qty2,creat_dt,creat_by)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id10)+',';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' getdate(),'+inttostr(curuserid)+')';
                commandtext:=commandtext+' else update tb_report01dtl set qty2=';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' modify_dt=getdate(),modify_by='+inttostr(curuserid);
                commandtext:=commandtext+' where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10);
//edit2.text:=commandtext;
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

procedure Tqryreport07.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_report01dtl','dtl_id','');
end;

procedure Tqryreport07.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tqryreport07.qrydtlBeforePost(DataSet: TDataSet);
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

procedure Tqryreport07.dxDBGrid2mate_name1ButtonClick(Sender: TObject;
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

procedure Tqryreport07.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tqryreport07.wwDBNavigator1PostClick(Sender: TObject);
begin
//if qrydtl.ChangeCount>0 then qrydtl.post;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
//if not (qry.State in [dsinsert]) and (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tqryreport07.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tqryreport07.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tqryreport07.dxButtonEdit5ButtonClick(Sender: TObject;
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

procedure Tqryreport07.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryreport07.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tqryreport07.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tqryreport07.dxDBGrid1signerButtonClick(Sender: TObject;
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

procedure Tqryreport07.dxButtonEdit6ButtonClick(Sender: TObject;
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

procedure Tqryreport07.qryCalcFields(DataSet: TDataSet);
var mi: integer;
begin
with qry do
begin
    case fieldbyname('type_id').asinteger of
        1:  fieldbyname('ctype').asstring:='采购';
        2:  fieldbyname('ctype').asstring:='销售';
        3:  fieldbyname('ctype').asstring:='理论库存';
        4:  fieldbyname('ctype').asstring:='动销率%';
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

procedure Tqryreport07.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxDBGrid1type_id.Index] = 3) then AColor := $00FEFDE2;
if (ANode.Values[dxDBGrid1type_id.Index] = 4) then AColor := $00F6F6F6;
end;

procedure Tqryreport07.dxButtonEdit2ButtonClick(Sender: TObject;
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

end.
