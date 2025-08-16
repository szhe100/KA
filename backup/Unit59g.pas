unit Unit59g;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds, Comobj;

type
  Tsetshoprxmed = class(TForm)
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    sysrule: TClientDataSet;
    DSsysrule: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    sysrulerec_id: TAutoIncField;
    sysrulemed_id: TIntegerField;
    sysrulecreat_by: TIntegerField;
    sysrulecreat_dt: TDateTimeField;
    sysrulemed_code: TStringField;
    sysrulemed_name: TStringField;
    sysrulespecifi: TStringField;
    sysrulepdt_place: TStringField;
    sysrulemed_unit: TStringField;
    sysrulemed_type: TStringField;
    sysruleqtyperpack: TBCDField;
    sysrulecreater: TStringField;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    sysrulemate_name: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    sysruletype_id: TWordField;
    sysrulecomp_id: TWordField;
    sysrulemodify_by: TIntegerField;
    sysrulemodify_dt: TDateTimeField;
    sysrulemate_id: TIntegerField;
    ADOQuery1modifier: TStringField;
    sysrulemodifier: TStringField;
    dxDBGrid1med_code: TdxDBGridButtonColumn;
    Edit1: TEdit;
    dxDBGrid1mate_name: TdxDBGridColumn;
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    SpeedButton6: TSpeedButton;
    Label32: TLabel;
    dxDBGrid1stop_dt: TdxDBGridMaskColumn;
    dxDBGrid1stoper: TdxDBGridColumn;
    sysrulestop_dt: TDateTimeField;
    sysrulestop_by: TIntegerField;
    sysrulestoper: TStringField;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSsysruleDataChange(Sender: TObject; Field: TField);
    procedure sysruleBeforeDelete(DataSet: TDataSet);
    procedure sysruleAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1lead_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure sysruleBeforePost(DataSet: TDataSet);
    procedure sysruleCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure sysrulestop_dtChange(Sender: TField);
    procedure sysruleBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setshoprxmed: Tsetshoprxmed;

implementation

uses datamodu, Unit7, Unit16d, Unit28a;

{$R *.DFM}

procedure Tsetshoprxmed.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
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
end;

procedure Tsetshoprxmed.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetshoprxmed.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(sysrule.active=true) and (sysrule.recordcount>0);
end;

procedure Tsetshoprxmed.sysruleBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetshoprxmed.sysruleAfterPost(DataSet: TDataSet);
begin
if sysrule.ChangeCount>0 then myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
end;

procedure Tsetshoprxmed.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with sysrule do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.mate_id,b.mate_name,a.med_id,a.stop_dt,a.stop_by,stoper=e.zname,';
    commandtext:=commandtext+'	m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'	a.creat_dt,a.creat_by,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+'	from tb_sysrule a';
	commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
	commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
	commandtext:=commandtext+'	left join tb_staff c on a.creat_by=c.sta_id';
	commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
	commandtext:=commandtext+'	left join tb_staff e on a.stop_by=e.sta_id';
    commandtext:=commandtext+'	where a.type_id=8 and a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (m.med_name like ''%'+Trim(dxEdit1.text)+'%'' or m.chm_name like ''%'+Trim(dxEdit1.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit1.text)+'%'')';
    end;
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

procedure Tsetshoprxmed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetshoprxmed.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetshoprxmed.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickshop do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tsetshoprxmed.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (sysrule.state in [dsinsert,dsedit]) then sysrule.edit;
    if showmodal= mrOK then
    begin
        sysrule.fieldbyname('lead_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        sysrule.fieldbyname('lead_name').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        sysrule.fieldbyname('lead_id').asinteger:=0;
        sysrule.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsetshoprxmed.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetshoprxmed.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetshoprxmed.N3Click(Sender: TObject);
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

procedure Tsetshoprxmed.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetshoprxmed.N2Click(Sender: TObject);
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

procedure Tsetshoprxmed.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetshoprxmed.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetshoprxmed.sysruleBeforePost(DataSet: TDataSet);
begin
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择医院及品种');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=1 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+sysrule.fieldbyname('mate_id').asstring+' and med_id='+sysrule.fieldbyname('med_id').asstring;
    commandtext:=commandtext+' and rec_id<>'+inttostr(sysrule.fieldbyname('rec_id').asinteger);
//edit1.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('已有此药店品种品种的记录，不可再次加入');
end;
with sysrule do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=8;
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

procedure Tsetshoprxmed.sysruleCalcFields(DataSet: TDataSet);
begin
with sysrule do
    fieldbyname('camot').asfloat:=fieldbyname('f1').asfloat+fieldbyname('f2').asfloat+fieldbyname('f3').asfloat+fieldbyname('f4').asfloat;
end;

procedure Tsetshoprxmed.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择药店诊所');

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=8 and mate_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('已有该药店品种记录，不可重复设置');
    if MessageBox(0,pchar('确定加入本药店品种记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,med_id,mate_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values (8,'+inttostr(compid)+','+inttostr(dxButtonEdit1.tag)+','+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    sysrule.locate('rec_id',mi,[]);
end;
end;

procedure Tsetshoprxmed.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
    dt: TDatetime;
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
//导入格式:1药店诊所名称，2药品编码
    while (sheet.cells[j,1].text<>'') and (length(serror)<300)  do
    begin
        id1:=0; id2:=0;
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药店诊所名称'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and busi_type_id in (7,8) and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药店诊所名称有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药品编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药品编码有误';
            end;
            if active=true then close;
            commandtext:='select top 1 1 from tb_sysrule where type_id=8 and mate_id='+inttostr(id1)+' and med_id='+inttostr(id2);
            open;
            if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 已有该药店品种记录，不可重复导入';
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        XL.Quit;
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0; id2:=0;
//导入格式:1药店诊所名称，2药品编码
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药店诊所名称'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and busi_type_id in (7,8) and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药店诊所名称有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药品编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药品编码有误';
            end;
{
            if active=true then close;
            commandtext:='select top 1 1 from tb_sysrule where type_id=8 and mate_id='+inttostr(id1)+' and med_id='+inttostr(id2);
            open;
            if recordcount>0 then raise Exception.Create('已有该药店品种记录，不可重复设置');
            if MessageBox(0,pchar('确定加入本药店品种记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
}
            if active=true then close;
            commandtext:='insert into tb_sysrule (type_id,comp_id,mate_id,med_id,creat_by,creat_dt)';
            commandtext:=commandtext+' values (8,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+'select @@identity';
            open;
        end;
        inc(j);
    end;
    XL.Quit;
    setprogress(0);
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'已成功导入'+inttostr(j-2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetshoprxmed.sysrulestop_dtChange(Sender: TField);
begin
with sysrule do
begin
    fieldbyname('stop_by').asinteger:=curuserid;
    fieldbyname('stoper').asstring:=curuser;
end;
end;

procedure Tsetshoprxmed.sysruleBeforeEdit(DataSet: TDataSet);
begin
if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置，不可更改');
end;

end.
