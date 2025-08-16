unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, db,
  dxExEdtr, ADODB, dxEdLib, wwSpeedButton, wwDBNavigator, wwclearpanel,
  dxDBELib, dxDBEdtr, dxCntner, dxEditor, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, Comobj, DBClient, mycds;

type
  Tsetstaff = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    dxDBGrid1department: TdxDBGridMaskColumn;
    dxDBGrid1zname: TdxDBGridMaskColumn;
    dxDBGrid1zcode: TdxDBGridMaskColumn;
    dxDBGrid1personalID: TdxDBGridMaskColumn;
    dxDBGrid1birthdate: TdxDBGridDateColumn;
    dxDBGrid1origin: TdxDBGridMaskColumn;
    dxDBGrid1degree: TdxDBGridMaskColumn;
    dxDBGrid1hiredate: TdxDBGridDateColumn;
    dxDBGrid1zpost: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1title: TdxDBGridMaskColumn;
    Label10: TLabel;
    dxDBGrid1sex: TdxDBGridColumn;
    DSstaff: TDataSource;
    Label13: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBDateEdit3: TdxDBDateEdit;
    Label15: TLabel;
    Label16: TLabel;
    dxEdit1: TdxEdit;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dxDBGrid1qry_code: TdxDBGridColumn;
    Label26: TLabel;
    DBText6: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    DBText3: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1creater: TStringField;
    ADOQuery1modifier: TStringField;
    Label1: TLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBEdit3: TdxDBEdit;
    Label18: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBPickEdit2: TdxDBPickEdit;
    dxDBPickEdit3: TdxDBPickEdit;
    SpeedButton6: TSpeedButton;
    dxDBGrid1sta_id: TdxDBGridColumn;
    Label32: TLabel;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    staff: TClientDataSet;
    staffsta_id: TAutoIncField;
    staffcomp_id: TAutoIncField;
    staffdepartment: TStringField;
    staffdept_id: TIntegerField;
    staffsta_type_id: TIntegerField;
    staffzname: TStringField;
    staffqry_code: TStringField;
    staffzcode: TStringField;
    staffsex: TBooleanField;
    staffpersonalID: TStringField;
    staffbirthdate: TDateTimeField;
    stafforigin: TStringField;
    staffdegree: TStringField;
    stafftitle: TStringField;
    staffhiredate: TDateTimeField;
    stafffiredate: TDateTimeField;
    staffzpost: TStringField;
    staffphone: TStringField;
    stafffax: TStringField;
    staffnotes: TMemoField;
    staffpassword: TStringField;
    staffzright: TMemoField;
    staffoperative: TBooleanField;
    staffstop_yn: TBooleanField;
    staffstop_by: TIntegerField;
    staffstop_for: TStringField;
    staffstop_dt: TDateTimeField;
    staffresidence: TStringField;
    staffreceipt: TBooleanField;
    staffbroker: TBooleanField;
    staffstorage: TBooleanField;
    staffmanager: TBooleanField;
    staffcustservice: TBooleanField;
    staffuse_priority: TIntegerField;
    staffcreat_dt: TDateTimeField;
    staffcreat_by: TIntegerField;
    staffmodify_dt: TDateTimeField;
    staffmodify_by: TIntegerField;
    staffaccount: TBooleanField;
    staffpurchase: TBooleanField;
    staffsupervisor: TBooleanField;
    staffexportable: TBooleanField;
    staffbiller: TBooleanField;
    staffcreater: TStringField;
    staffmodifier: TStringField;
    Label11: TLabel;
    DBText1: TDBText;
    Label19: TLabel;
    DBText2: TDBText;
    Label20: TLabel;
    DBText4: TDBText;
    Label21: TLabel;
    DBText5: TDBText;
    staffstoper: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DSstaffDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxEdit1Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxDBEdit3Change(Sender: TObject);
    procedure dxDBCheckEdit1Click(Sender: TObject);
    procedure dxDBCheckEdit2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure staffAfterPost(DataSet: TDataSet);
    procedure staffBeforeDelete(DataSet: TDataSet);
    procedure staffBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setstaff: Tsetstaff;

implementation

uses datamodu;

{$R *.DFM}

procedure Tsetstaff.FormActivate(Sender: TObject);
begin
with dm.department do
    if active=false then
    begin
        commandtext:='select * from tb_object where obj_type_id=1 and comp_id='+inttostr(compid);
        open;
    end;
end;

procedure Tsetstaff.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with dm.department do
    if active then close;
with staff do
    if active then close;
end;

procedure Tsetstaff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetstaff.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetstaff.DBEdit2Exit(Sender: TObject);
begin
if dm.customer.State in [dsinsert,dsedit] then dm.customer.post;
end;

procedure Tsetstaff.DSstaffDataChange(Sender: TObject; Field: TField);
begin
with dxDBCheckEdit2 do
    if checked then caption:='男' else caption:='女';
speedbutton2.enabled:=(staff.active) and (staff.recordcount>0);
end;

procedure Tsetstaff.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with staff do
begin
    if active then
    begin
        mi:=fieldbyname('sta_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,department=b.zdesc,creater=c.zname,modifier=d.zname,stoper=e.zname from tb_staff a';
    commandtext:=commandtext+' left join tb_object b on a.dept_id = b.obj_id ';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by = c.sta_id ';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by = d.sta_id ';
    commandtext:=commandtext+' left join tb_staff e on a.stop_by = e.sta_id ';
    commandtext:=commandtext+' where a.sta_type_id=0 ';
    if trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (a.zname like ''%'+trim(dxEdit1.text)+'%'' or a.qry_code like ''%'+trim(dxEdit1.text)+'%'')';
    try
        setprogress(1);
        open;
        if mi>0 then locate('sta_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetstaff.dxEdit1Click(Sender: TObject);
begin
dxedit1.SelectAll;
dxedit1.SetFocus;
end;

procedure Tsetstaff.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetstaff.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetstaff.dxDBEdit3Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
sw:=trim(dxDBEdit3.text);     spy:='';
for i:=1 to length(sw) do
begin
    c:=sw[i];
    if length(c)>1
     then spy:=spy+getpyindexchar(c)
     else spy:=spy+uppercase(c);
end;
staff.fieldbyname('qry_code').asstring:=spy;
end;

procedure Tsetstaff.dxDBCheckEdit1Click(Sender: TObject);
begin
with staff do
begin
    if state in [dsedit,dsinsert] then
    begin
        if dxDBCheckEdit1.checked then
        begin
            fieldbyname('stop_dt').asdatetime:=now;
            fieldbyname('stop_by').asinteger:=curuserid;
            fieldbyname('stoper').asstring:=curuser;
        end
        else
        begin
            fieldbyname('stop_dt').asstring:='';
            fieldbyname('stop_by').asinteger:=0;
            fieldbyname('stoper').asstring:='';
        end
    end;
end;
end;

procedure Tsetstaff.dxDBCheckEdit2Click(Sender: TObject);
begin
with dxDBCheckEdit2 do
    if checked then caption:='男' else caption:='女';
end;

procedure Tsetstaff.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
    s1,s2: string;
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
    setprogress(1);
//从第2行开始导入,格式：员工编码，员工姓名
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 1 from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and zname='''+s2+'''';
            open;
            if recordcount=0 then// continue; //已有该编码员工，不再加入
            begin
                if active then close;
                commandtext:='insert into tb_staff (zcode,zname,qry_code,comp_id,sta_type_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''','''+s2+''',dbo.fn_getpy('''+s2+'''),'+inttostr(compid)+',0,'+inttostr(curuserid)+',getdate())';
                try
                    execute;
                    mi:=mi+1;
                except

                end;
            end;
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'个员工,已有姓名员工不再导入)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetstaff.wwDBNavigator1InsertClick(Sender: TObject);
begin
if PageControl1.ActivePage=Tabsheet1 then PageControl1.ActivePage:=Tabsheet2;
end;

procedure Tsetstaff.staffAfterPost(DataSet: TDataSet);
begin
with staff do
begin
    if ChangeCount>0 then myupdaterefresh(staff,'tb_staff','sta_id','');
//    refreshmyrecord(staff,dm.Refreshcds,0,'a.sta_id',fieldbyname('sta_id').asinteger);
end;
end;

procedure Tsetstaff.staffBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where broker_id='+staff.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' or creat_by= '+staff.fieldbyname('sta_id').asstring+' or check_by='+staff.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise exception.create('本员工已发生业务，不可删除');
end;
if MessageBox(0,'确定删除本员工','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetstaff.staffBeforePost(DataSet: TDataSet);
begin
with staff do
begin
    if fieldbyname('zname').asstring='' then raise exception.create('请输入员工姓名');
    if fieldbyname('dept_id').asinteger=0 then raise exception.create('请输入员工所属部门');
    if fieldbyname('zcode').asstring='' then raise exception.create('请输入员工编码');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 zname from tb_staff where zcode='''+ staff.fieldbyname('zcode').asstring+'''';
    if staff.fieldbyname('sta_id').asinteger<>0 then commandtext:=commandtext+' and sta_id<>'+staff.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create(fieldbyname('zname').asstring+'已使用此员工编码，不可重复编码');
end;
with staff do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('sta_type_id').asinteger:=0;  // 0: 员工
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

end.
