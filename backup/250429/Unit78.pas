unit Unit78;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ADODB, ImgList, Menus, DB, DBClient, StdCtrls, dxEdLib, Comobj,
  ExtCtrls, dxdbtrel, dxEditor, wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  Tsetreport02 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    report02: TClientDataSet;
    DSbrokermed: TDataSource;
    SpeedButton3: TSpeedButton;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
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
    dxCheckEdit1: TdxCheckEdit;
    Edit1: TEdit;
    SpeedButton6: TSpeedButton;
    Label13: TLabel;
    report02rec_id: TIntegerField;
    report02fyear: TIntegerField;
    report02fmonth: TWordField;
    report02district_id: TIntegerField;
    report02med_id: TIntegerField;
    report02qty1: TBCDField;
    report02zdesc: TStringField;
    report02creat_dt: TDateTimeField;
    report02creat_by: TIntegerField;
    report02modify_dt: TDateTimeField;
    report02modify_by: TIntegerField;
    report02modifier: TStringField;
    report02creater: TStringField;
    report02level1: TStringField;
    report02level2: TStringField;
    report02level3: TStringField;
    report02med_code: TStringField;
    report02med_name: TStringField;
    report02specifi: TStringField;
    report02pdt_place: TStringField;
    report02med_unit: TStringField;
    report02price: TBCDField;
    dxDBGrid1Cyearmonth: TdxDBGridColumn;
    report02Cyearmonth: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    report02leader: TStringField;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    SpeedButton5: TSpeedButton;
    report02dist1: TStringField;
    report02dist2: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1Camot1: TdxDBGridColumn;
    report02Camot1: TFloatField;
    Shape4: TShape;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dxSpinEdit2: TdxSpinEdit;
    dxSpinEdit1: TdxSpinEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1qty2: TBCDField;
    report02qty2: TBCDField;
    report02Camot2: TFloatField;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1Camot2: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbrokermedDataChange(Sender: TObject; Field: TField);
    procedure report02BeforeDelete(DataSet: TDataSet);
    procedure report02AfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure medataReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure report02CalcFields(DataSet: TDataSet);
    procedure report02BeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport02: Tsetreport02;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a;

{$R *.DFM}

procedure Tsetreport02.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport02.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport02.DSbrokermedDataChange(Sender: TObject;
  Field: TField);
begin
with report02 do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetreport02.report02BeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport02.report02AfterPost(DataSet: TDataSet);
begin
if report02.ChangeCount>0 then myupdaterefresh(report02,'tb_report02','rec_id','');
end;

procedure Tsetreport02.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with report02 do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,b.med_code,b.med_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),b.qtyperpack,b.qtyperbox,';
    commandtext:=commandtext+'  qty2=d.f'+dxSpinEdit2.text+','; //case a.fmonth when 1 then d.f1 when 2 then ,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(c.level_id1),level2=dbo.fn_obj_desc(c.level_id2),level3=dbo.fn_obj_desc(c.level_id3),leader=dbo.fn_staff_name (c.sta_id),';
    commandtext:=commandtext+' b.chm_name,med_type=dbo.fn_med_type(b.med_id),creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' from tb_report02 a';
    commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
    commandtext:=commandtext+' left join tb_busiframe c on a.med_id=c.med_id and dbo.fn_treeischild(a.district_id,c.district_id)=1';
    commandtext:=commandtext+' left join tb_report01 d on d.valid=1 and a.district_id=d.district_id and a.med_id=d.med_id and a.fyear=d.fyear';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' where a.fyear='+dxSpinEdit1.text+' and a.fmonth='+dxSpinEdit2.text;
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and (b.qry_code like''%'+trim(dxedit1.text)+'%'' or b.chm_name like''%'+trim(dxedit1.text)+'%'')';
            1:  commandtext:=commandtext+' and med_name ';
            2:  commandtext:=commandtext+' and pdt_place ';
            3:  commandtext:=commandtext+' and med_code ';
        end;
        if radiogroup1.itemindex>0 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
{
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.id1,t.dist_id)=1)';
}
//    commandtext:=commandtext+' order by b.med_name,b.specifi,b.pdt_place,dbo.fn_getdistrict(a.id1)';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport02.medataReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetreport02.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with report02 do if active=True then close;
end;

procedure Tsetreport02.FormCreate(Sender: TObject);
var year,month,day: word;
begin
decodedate(dt0,year,month,day);
dxSpinEdit1.value:=year;
dxSpinEdit2.value:=month;

dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport02.N3Click(Sender: TObject);
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

procedure Tsetreport02.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport02.N2Click(Sender: TObject);
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

procedure Tsetreport02.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport02.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tsetreport02.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport02.report02CalcFields(DataSet: TDataSet);
begin
with report02 do
begin
    if fieldbyname('fmonth').asinteger<10
        then fieldbyname('Cyearmonth').asstring:=fieldbyname('fyear').asstring+'-0'+fieldbyname('fmonth').asstring
        else fieldbyname('Cyearmonth').asstring:=fieldbyname('fyear').asstring+'-'+fieldbyname('fmonth').asstring;
    fieldbyname('Camot1').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('Camot2').asfloat:=fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
end;
end;

procedure Tsetreport02.report02BeforePost(DataSet: TDataSet);
begin
with report02 do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

procedure Tsetreport02.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
//    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
    with dm.OpenDialog1 do
    begin
        defaultext := 'xls';
        Filter := 'Microsoft Excel Worksheet (*.xls)|*.xls';
        FileName:='';
        if Execute then
        begin
            SFileName:= FileName;
            XL.WorkBooks.Open(SFileName);
            Sheet := XL.WorkBooks[XL.WorkBooks.Count].WorkSheets[1];
        end
        else exit;
    end;
    setprogress(1);
    serror:='';
    j:=2;  //第2行开始 每行一单
//导入格式: 地区,药品编码,中标,费用政策
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;

            if active=true then close;
            commandtext:='if not exists (select 1 from tb_medata where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2)+')';
            commandtext:=commandtext+' insert into tb_medata (type_id,comp_id,id1,med_id,price,rate,creat_by,creat_dt)';
            commandtext:=commandtext+' values (1,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+',';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text)+',';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+' else update tb_medata set price=';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text);
            commandtext:=commandtext+' ,rate=';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text);
            commandtext:=commandtext+' where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2);
//edit2.text:=commandtext;            
            execute;
        end;
        j:=j+1;
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport02.SpeedButton5Click(Sender: TObject);
begin
if MessageBox(0,'确定从业务结构中导入','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_report02 (fyear,fmonth,district_id,med_id,price,creat_by,creat_dt)';
    commandtext:=commandtext+' select fyear='+dxSpinEdit1.text+',fmonth='+dxSpinEdit2.text+',a.district_id,a.med_id,price=dbo.fn_getprice2a(a.district_id,a.med_id,cast('''+dxSpinEdit1.text+'-'+dxSpinEdit2.text+'-01'' as smalldatetime)),';
    commandtext:=commandtext+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_busiframe a where not exists (select 1 from tb_report02 b where b.fyear='+dxSpinEdit1.text+' and b.fmonth='+dxSpinEdit2.text;
    commandtext:=commandtext+'  and a.district_id=b.district_id and a.med_id=b.med_id)';
edit1.text:=commandtext;
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
SpeedButton3Click(nil);
end;

end.
