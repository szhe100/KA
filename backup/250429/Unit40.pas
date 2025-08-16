unit Unit40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls, Math, Buttons,
  Wwdbigrd, Wwdbgrid, Wwdatsrc, Wwquery, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Wwkeycb, dxExEdtr,
  DBClient, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl, dxGrClms,
  dxEditor, dxEdLib, Menus;

type
  Tsetsettle = class(TForm)
    dxDBGrid1: TdxDBGrid;
    ADOQuery1: TADOQuery;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1year: TWordField;
    ADOQuery1month: TWordField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creater: TStringField;
    settlelist: TClientDataSet;
    DSsettlelist: TDataSource;
    settlelistrec_id: TAutoIncField;
    settlelistyear: TWordField;
    settlelistmonth: TWordField;
    settlelistdistrict_id: TIntegerField;
    settlelistcreat_by: TIntegerField;
    settlelistcreat_dt: TDateTimeField;
    settlelistcreater: TStringField;
    dxDBGrid1year: TdxDBGridMaskColumn;
    dxDBGrid1month: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    ADOQuery1settled: TBooleanField;
    settlelistsettled: TBooleanField;
    ADOQuery1district: TStringField;
    dxDBGrid1ctype: TdxDBGridColumn;
    dxSpinEdit2: TdxSpinEdit;
    dxSpinEdit1: TdxSpinEdit;
    Shape4: TShape;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    dxDBGrid1rec_id: TdxDBGridColumn;
    Shape1: TShape;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    dxPickEdit1: TdxPickEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label5: TLabel;
    settlelisttype_id: TIntegerField;
    settlelistctype: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSsettlelistDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure settlelistCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setsettle: Tsetsettle;
  firstset: Boolean;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetsettle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetsettle.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with settlelist do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select *,creater=dbo.fn_staff_name(creat_by)';    //,district=dbo.fn_getdistrict(district_id)
    commandtext:=commandtext+' from tb_settlelist';
    commandtext:=commandtext+' where comp_id='+inttostr(compid);
//    commandtext:=commandtext+'  and year='+dxSpinEdit1.text ;
//    commandtext:=commandtext+'  and month='+dxSpinEdit2.text ;
//    commandtext:=commandtext+' order by dbo.fn_getdistrict(district_id)';
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

procedure Tsetsettle.FormCreate(Sender: TObject);
var year,month,day: word;
begin
decodedate(srv_date,year,month,day);
dxSpinEdit1.value:=year;
dxSpinEdit2.value:=month;
end;

procedure Tsetsettle.SpeedButton1Click(Sender: TObject);
begin
with settlelist do
    if (active=False) or (recordcount=0) then exit;
if MessageBox(0,'确定开始结账','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist where dbo.fn_treeischild(district_id,'+settlelist.fieldbyname('district_id').asstring+')=1 and rec_id<>'+settlelist.fieldbyname('rec_id').asstring;
    open;
    if (recordcount>0) and (MessageBox(0,'本结账地区包含下级地区，同时结账吗？','请注意',MB_YESNO+MB_ICONQUESTION)=IDYES) then
    begin
        if active then close;
        commandtext:='update a set settled=1,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        commandtext:=commandtext+' from tb_settlelist a,(select comp_id,year,month,district_id from tb_settlelist where rec_id='+settlelist.fieldbyname('rec_id').asstring+') b';
        commandtext:=commandtext+' where a.comp_id=b.comp_id and a.year=b.year and a.month=b.month and dbo.fn_treeischild(a.district_id,b.district_id)=1';
    end
    else
    begin
        if active then close;
        commandtext:='update tb_settlelist set settled=1,creat_by='+inttostr(curuserid)+',creat_dt=getdate() where rec_id='+settlelist.fieldbyname('rec_id').asstring;
    end;
    execute;
end;
SpeedButton3Click(nil);
end;

procedure Tsetsettle.DSsettlelistDataChange(Sender: TObject;
  Field: TField);
begin
with settlelist do
begin
    SpeedButton1.Enabled:= (active) and (recordcount>0) and (fieldbyname('settled').asboolean=False);
    SpeedButton2.Enabled:= (active) and (recordcount>0) and (fieldbyname('settled').asboolean=True);
//        and (datetostr(fieldbyname('creat_dt').asdatetime)=datetostr(dt0));
end;
end;

procedure Tsetsettle.SpeedButton2Click(Sender: TObject);
begin
with settlelist do
    if (active=False) or (recordcount=0) then exit;
if MessageBox(0,'确定本记录取消结账','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist where dbo.fn_treeischild(district_id,'+settlelist.fieldbyname('district_id').asstring+')=1 and rec_id<>'+settlelist.fieldbyname('rec_id').asstring;
    open;
    if (recordcount>0) and (MessageBox(0,'本结账地区包含下级地区，同时取消结账吗？','请注意',MB_YESNO+MB_ICONQUESTION)=IDYES) then
    begin
        if active then close;
        commandtext:='update a set settled=0,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        commandtext:=commandtext+' from tb_settlelist a,(select comp_id,year,month,district_id from tb_settlelist where rec_id='+settlelist.fieldbyname('rec_id').asstring+') b';
        commandtext:=commandtext+' where a.comp_id=b.comp_id and a.year=b.year and a.month=b.month and dbo.fn_treeischild(a.district_id,b.district_id)=1';
    end
    else
    begin
        if active then close;
        commandtext:='update tb_settlelist set settled=0,creat_by='+inttostr(curuserid)+',creat_dt=getdate() where rec_id='+settlelist.fieldbyname('rec_id').asstring;
    end;
    execute;
end;
SpeedButton3Click(nil);
end;

procedure Tsetsettle.N6Click(Sender: TObject);
//var l,i,mi: integer;
//    t: string;
begin
with settlelist do
begin
    if (active=false) or (recordcount=0) then exit;

    if MessageBox(0,pchar('确定取消'+fieldbyname('ctype').asstring+' '+fieldbyname('year').asstring+'年'+fieldbyname('month').asstring+'月结账'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='delete from tb_settlelist where rec_id='+settlelist.fieldbyname('rec_id').asstring;
    edit1.text:=commandtext;
        setprogress(1);
        execute;
        setprogress(0);
    //    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
    end;
    SpeedButton3Click(nil);
end;
end;

procedure Tsetsettle.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
//if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxPickEdit1.text)='' then raise Exception.Create('请选择结账模块');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 rec_id from tb_settlelist where comp_id='+inttostr(compid)+' and year='+dxSpinEdit1.text+' and month='+dxSpinEdit2.text+' and type_id='+inttostr(dxPickEdit1.ItemIndex+1);
    open;
    if recordcount>0 then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        if settlelist.active then settlelist.locate('rec_id',mi,[]);
        raise Exception.Create('已有该结账记录，不可重复结账');
    end;
end;

if MessageBox(0,pchar('确定 '+dxPickEdit1.text+' '+dxSpinEdit1.text+'年'+dxSpinEdit2.text+'月结账'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_settlelist (comp_id,year,month,type_id,creat_by,creat_dt) values';
    commandtext:=commandtext+' ('+inttostr(compid)+','+dxSpinEdit1.text+','+dxSpinEdit2.text+','+inttostr(dxPickEdit1.ItemIndex+1)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
if mi>0 then settlelist.locate('rec_id',mi,[]);
end;

procedure Tsetsettle.settlelistCalcFields(DataSet: TDataSet);
begin
with settlelist do
begin
    case fieldbyname('type_id').asinteger of
        1: fieldbyname('ctype').asstring:='商业管理';
        2: fieldbyname('ctype').asstring:='商业结算';
        3: fieldbyname('ctype').asstring:='分销管理';
        4: fieldbyname('ctype').asstring:='分销结算';
        5: fieldbyname('ctype').asstring:='新零售管理';
        6: fieldbyname('ctype').asstring:='新零售结算';
    end;
end;
end;

end.
