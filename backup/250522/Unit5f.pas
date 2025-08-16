unit Unit5f;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DBClient, ImgList, DB, ADODB, dxEdLib, StdCtrls, ExtCtrls, mycds,
  dxdbtrel, wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, dxDBEdtr, Variants,
  dxEditor, dxCntner, DBCtrls, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, Buttons, Comobj,
  dxDBTLCl, dxGrClms, wwclearbuttongroup, wwradiogroup;

type
  Tsetbusimate10 = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    DSbusimate: TDataSource;
    Label24: TLabel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    ADOQuery1: TADOQuery;
    SpeedButton5: TSpeedButton;
    ImageList1: TImageList;
    Label11: TLabel;
    Label15: TLabel;
    dxDBGrid1mate_id: TdxDBGridColumn;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    DBText4: TDBText;
    Label3: TLabel;
    busimate: TClientDataSet;
    busimatemate_id: TIntegerField;
    busimatecomp_id: TAutoIncField;
    busimatemate_code: TStringField;
    busimatemate_name: TStringField;
    busimatelegalman: TStringField;
    busimatedeputy: TStringField;
    busimatedeputy_title: TStringField;
    busimatephone: TStringField;
    busimatefax: TStringField;
    busimateaddress: TStringField;
    busimatedistrict: TIntegerField;
    busimatecdistrict: TStringField;
    busimatepostalcode: TStringField;
    busimateacnt_bank: TStringField;
    busimatebank_account: TStringField;
    busimatetax_code: TStringField;
    busimatemate_type_id: TIntegerField;
    busimateprice_type: TIntegerField;
    busimateprice_cent: TBCDField;
    busimateqry_code: TStringField;
    busimatesettle_type: TIntegerField;
    busimatepick_ord: TIntegerField;
    busimatecredit_amot: TIntegerField;
    busimateremark: TMemoField;
    busimatestop_by: TIntegerField;
    busimatestop_for: TStringField;
    busimatestop_dt: TDateTimeField;
    busimatestop_yn: TBooleanField;
    busimatetax_rate: TBCDField;
    busimatebroker_id: TIntegerField;
    busimatedue_limit: TIntegerField;
    busimatedescription: TStringField;
    busimatecreat_dt: TDateTimeField;
    busimatecreat_by: TIntegerField;
    busimatemodify_dt: TDateTimeField;
    busimatemodify_by: TIntegerField;
    busimateEmail: TStringField;
    busimatewebsite: TStringField;
    SpeedButton6: TSpeedButton;
    busimatecreater: TStringField;
    busimatemodifier: TStringField;
    ADOQuery1rate: TBCDField;
    ADOQuery1rate1: TBCDField;
    busimaterate: TBCDField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label22: TLabel;
    busimatestoper: TStringField;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label98: TLabel;
    Label99: TLabel;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    DBText11: TDBText;
    DBText10: TDBText;
    Label16: TLabel;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    dxDBEdit12: TdxDBEdit;
    Label17: TLabel;
    Label19: TLabel;
    dxDBEdit13: TdxDBEdit;
    Label20: TLabel;
    dxDBEdit14: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    busimatezname1: TStringField;
    busimateaddress1: TStringField;
    busimatephone1: TStringField;
    busimatezname2: TStringField;
    busimateaddress2: TStringField;
    busimatephone2: TStringField;
    Label30: TLabel;
    busimatetax_type_id: TIntegerField;
    busimatestatus_id: TIntegerField;
    busimatestatus_id1: TIntegerField;
    wwRadioGroup1: TwwRadioGroup;
    Label25: TLabel;
    Label32: TLabel;
    wwRadioGroup2: TwwRadioGroup;
    wwRadioGroup3: TwwRadioGroup;
    Label33: TLabel;
    Label37: TLabel;
    Label34: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    busimatelink_id: TIntegerField;
    busimatelink_id1: TIntegerField;
    busimatebroker: TStringField;
    busimateagent: TStringField;
    dxDBGrid1Ctaxtype: TdxDBGridColumn;
    dxDBGrid1Cstatus: TdxDBGridColumn;
    dxDBGrid1Cstatus1: TdxDBGridColumn;
    busimateCtaxtype: TStringField;
    busimateCstatus: TStringField;
    busimateCstatus1: TStringField;
    busimatecustomer: TStringField;
    dxDBGrid1confirm_dt: TdxDBGridColumn;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    linkdata: TClientDataSet;
    IntegerField1: TIntegerField;
    AutoIncField1: TAutoIncField;
    IntegerField2: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField11: TIntegerField;
    StringField20: TStringField;
    IntegerField16: TIntegerField;
    StringField28: TStringField;
    DSlinkdata: TDataSource;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2broker: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridColumn;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    dxDBGrid1mate_code: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    SpeedButton1: TSpeedButton;
    linkdata1: TClientDataSet;
    IntegerField3: TIntegerField;
    AutoIncField2: TAutoIncField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    StringField2: TStringField;
    DSlinkdata1: TDataSource;
    DBText6: TDBText;
    DBText7: TDBText;
    Label38: TLabel;
    Label39: TLabel;
    SpeedButton3: TSpeedButton;
    Label31: TLabel;
    Label40: TLabel;
    busimateconfirm_dt: TDateTimeField;
    dxDBDateEdit1: TdxDBDateEdit;
    Edit1: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3agent: TdxDBGridColumn;
    dxDBGrid3creater: TdxDBGridColumn;
    dxDBGrid3creat_dt: TdxDBGridColumn;
    linkdataCtype: TStringField;
    dxDBGrid2Ctype: TdxDBGridColumn;
    linkdatacode: TStringField;
    dxDBGrid2code: TdxDBGridColumn;
    linkdatadist1: TStringField;
    linkdatadist2: TStringField;
    dxDBGrid2dist1: TdxDBGridColumn;
    dxDBGrid2dist2: TdxDBGridColumn;
    dxDBGrid2Cstatus: TdxDBGridColumn;
    dxDBGrid2Cstatus1: TdxDBGridColumn;
    dxDBGrid2confirm_dt: TdxDBGridColumn;
    linkdatamate_name: TStringField;
    linkdataCstatus: TStringField;
    linkdataCstatus1: TStringField;
    linkdataconfirm_dt: TDateTimeField;
    linkdatastatus_id: TIntegerField;
    linkdatadelete_yn: TBooleanField;
    dxDBGrid2mate_name: TdxDBGridColumn;
    Label35: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DSbusimateDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DSbusimateStateChange(Sender: TObject);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure busimateAfterPost(DataSet: TDataSet);
    procedure busimateBeforeDelete(DataSet: TDataSet);
    procedure busimateBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure busiframeAfterPost(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure busimateAfterDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure busimateCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure linkdataAfterPost(DataSet: TDataSet);
    procedure linkdata1AfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure linkdata1BeforeDelete(DataSet: TDataSet);
    procedure linkdataBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure linkdataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusimate10: Tsetbusimate10;

implementation

uses datamodu, Unit61, Unit28, Unit16c, Unit16;

{$R *.DFM}

procedure Tsetbusimate10.FormActivate(Sender: TObject);
begin
with dm.staff do
    if active=false then
    begin
        commandtext:='select a.*,department=b.zdesc from tb_staff a,tb_object b ';
        commandtext:=commandtext+' where a.dept_id=b.obj_id and a.sta_type_id=0 ';
        open;
    end;
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
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

procedure Tsetbusimate10.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with busimate do
    if active then close;
{
with dm.staff do
    if active then close;
with dm.settle_type do
    if active then close;
}
with linkdata do
    if active then close;
with linkdata1 do
    if active then close;
end;

procedure Tsetbusimate10.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusimate10.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetbusimate10.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetbusimate10.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetbusimate10.DSbusimateDataChange(Sender: TObject;
  Field: TField);
begin
with busimate do
    speedbutton2.enabled:=(active) and (recordcount>0);
end;

procedure Tsetbusimate10.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetbusimate10.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetbusimate10.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
if pagecontrol1.activepage=tabsheet1 then
begin
    with busimate do
    begin
        if active then
        begin
            mi:=fieldbyname('mate_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select broker=f.zname,agent=g.mate_name,customer=g.mate_name,*,cdistrict=dbo.fn_getdistrict(a.district),';
        commandtext:=commandtext+' stoper=e.zname,creater=c.zname,modifier=d.zname';
        commandtext:=commandtext+' from tb_busimate a';
        commandtext:=commandtext+' left join tb_staff c on a.creat_by =c.sta_id';
        commandtext:=commandtext+' left join tb_staff d on a.modify_by =d.sta_id';
        commandtext:=commandtext+' left join tb_staff e on a.stop_by=e.sta_id';
        commandtext:=commandtext+' left join tb_staff f on a.link_id=f.sta_id';
        commandtext:=commandtext+' left join tb_busimate g on a.link_id1=g.mate_id';
        commandtext:=commandtext+' left join tb_busimate h on a.link_id2=g.mate_id';
        commandtext:=commandtext+' where a.mate_type_id=10';
        if Trim(dxedit1.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and dbo.fn_getpy(a.mate_name) ';
//                0:  commandtext:=commandtext+' and a.qry_code ';
                1:  commandtext:=commandtext+' and a.mate_name ';
                2:  commandtext:=commandtext+' and a.address ';
            end;
            commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
        end;
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
        try
            setprogress(1);
            open;
            if mi>0 then locate('mate_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end
else
begin
    with linkdata do
    begin
        if active then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end;
//        if (busimate.active=false) or (busimate.recordcount=0) then exit;
        commandtext:='select d.mate_name,a.*,code=case type_id when 1 then b.zcode when 2 then c.mate_code end,name=case type_id when 1 then b.zname when 2 then c.mate_name end,';
        commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,1),';
        commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (case type_id when 1 then b.district when 2 then c.district end,2),';
        commandtext:=commandtext+' delete_yn,status_id,confirm_dt,creater=dbo.fn_staff_name(creat_by)';
        commandtext:=commandtext+' from tb_linkdata a';
        commandtext:=commandtext+' left join (select sta_id,zname,zcode,district from tb_staff where sta_type_id=1) b on a.link_id=b.sta_id';
        commandtext:=commandtext+' left join (select mate_id,mate_name,mate_code,district from tb_busimate where mate_type_id=4) c on a.link_id=c.mate_id';
        commandtext:=commandtext+' inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) d on a.id=d.mate_id';
        commandtext:=commandtext+' where type_id in (1,2)'; // and id='+busimate.fieldbyname('mate_id').asstring;
edit1.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('rec_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
    wwDBNavigator1.datasource:=DSlinkdata;
end;
end;

procedure Tsetbusimate10.DSbusimateStateChange(Sender: TObject);
begin
{
with busimate do
    if active then label25.caption:=formatfloat('[###,###]',recordcount);
}
end;

procedure Tsetbusimate10.dxDBEdit5Change(Sender: TObject);
var sw: widestring;
    c,spy:string;
    i:integer;
begin
sw:=trim(dxDBEdit5.text);     spy:='';
for i:=1 to length(sw) do
begin
    c:=sw[i];
    if length(c)>1
     then spy:=spy+getpyindexchar(c)
     else spy:=spy+uppercase(c);
end;
with busimate do
    if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
end;

procedure Tsetbusimate10.busimateAfterPost(DataSet: TDataSet);
//var i: integer;
begin
with busimate do
begin
{
    for i := 0 to FieldCount-1 do
    begin
        if Fields[i].newValue<>Fields[i].OldValue
            then updatelog(self.caption, 'tb_busimate', Fields[i].FieldName, Fields[i].displaylabel, fieldbyname('mate_id').asinteger, updatetype, VarToStr(Fields[i].OldValue), VarToStr(Fields[i].NewValue), curuserid);
    end;
}
    if ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
end;
//if busimate.ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
{
with busimate do
begin
    if ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
    refreshmyrecord(busimate,dm.Refreshcds,0,'a.mate_id',fieldbyname('mate_id').asinteger)
end;
}
end;

procedure Tsetbusimate10.busimateBeforeDelete(DataSet: TDataSet);
begin
with busimate do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+busimate.fieldbyname('mate_id').asstring+' or dst_id='+busimate.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该商业公司已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本商业公司'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate10.busimateBeforePost(DataSet: TDataSet);
begin
with busimate do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('公司名称不可为空');
//    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置推广服务商所属地区');
end;
if (busimate.state=dsinsert) or (busimate.fieldbyname('mate_name').newvalue<>busimate.fieldbyname('mate_name').oldvalue) then
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_busimate where mate_type_id=10 and mate_name='''+busimate.fieldbyname('mate_name').asstring+'''';
        if busimate.fieldbyname('mate_id').asinteger>0 then commandtext:=commandtext+' and mate_id<>'+busimate.fieldbyname('mate_id').asstring;
        open;
        if recordcount>0 then raise Exception.Create('已有相同名称的推广服务商，不可重复录入');
    end;
end;
with busimate do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=10; // 推广服务商
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        updatetype:=1;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
        updatetype:=2;
    end;
end;
end;

procedure Tsetbusimate10.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
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
    m1:=0; m2:=0; j:=2;
//从第2行开始导入，格式: 1推广服务商名称, 2纳税类型, 3准入状态, 4使用状态, 5确认时间, 6编码
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100))'; //,f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text)+''','''+Trim(sheet.cells[j,6].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入，格式: 1推广服务商名称, 2纳税类型, 3准入状态, 4使用状态, 5确认时间, 6编码
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+'select top 5 * from ( select top 5 info=line_no+''行无推广服务商名称'' from @tab where f1=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无纳税类型或无效(小规模纳税人/一般纳税人)'' from @tab where f2='''' or (f2<>''小规模纳税人'' and f2<>''一般纳税人'')';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无准入状态或无效(准入/终止)'' from @tab where f3='''' or (f3<>''准入'' and f3<>''终止'')';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无使用状态或无效(正常/暂停/终止)'' from @tab where f4='''' or (f4<>''正常'' and f4<>''暂停'' and f4<>''终止'')';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无确认时间或数据无效'' from @tab where f5='''' or try_cast(f5 as datetime) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无编码'' from @tab where f6=''''';
    sql:=sql+' ) a';
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        setprogress(0);
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//comp_id,mate_type_id,agent_id,district_id,mate_name,tax_type,Admission_status,use_status,edit_type,confirm_dt,creat_by,creat_dt
//从第2行开始导入，格式: 1推广服务商名称, 2纳税类型, 3准入状态, 4使用状态, 5确认时间, 6编码
        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';

        sql:=sql+' update a set tax_type_id=case f2 when ''小规模纳税人'' then 1 when ''一般纳税人'' then 2 end,';
        sql:=sql+'  status_id=case f3 when ''准入'' then 1 when ''终止'' then 2 end,';
        sql:=sql+'  status_id1=case f4 when ''正常'' then 1 when ''暂停'' then 2 when ''终止'' then 3 end,';
        sql:=sql+'  confirm_dt=f5,mate_code=f6,modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from tb_busimate a,@tab b';
//        sql:=sql+' where a.mate_type_id=10 and a.mate_name=b.f1';
        sql:=sql+' where a.mate_type_id=10 and a.mate_code=b.f6';
        sql:=sql+' select @cnt1=@@ROWCOUNT';
//从第2行开始导入，格式: 1推广服务商名称, 2纳税类型, 3准入状态, 4使用状态, 5确认时间
        sql:=sql+' insert into tb_busimate (comp_id,mate_type_id,mate_name,tax_type_id,status_id,status_id1,confirm_dt,mate_code,creat_by,creat_dt)';
        sql:=sql+'  select comp_id='+inttostr(compid)+',mate_type_id=10,mate_name=f1,';
        sql:=sql+'  tax_type_id=case f2 when ''小规模纳税人'' then 1 when ''一般纳税人'' then 2 end,';
        sql:=sql+'  status_id=case f3 when ''准入'' then 1 when ''终止'' then 2 end,';
        sql:=sql+'  status_id1=case f4 when ''正常'' then 1 when ''暂停'' then 2 when ''终止'' then 3 end,';
        sql:=sql+'  confirm_dt=f5,mate_code=f6,creat_by='+inttostr(curuserid)+',creat_dt=getdate()'; //mate_type_id=10 推广服务商
        sql:=sql+' from @tab a';
//        sql:=sql+' where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f1=b.mate_name)';
        sql:=sql+' where not exists (select 1 from tb_busimate b where b.mate_type_id=10 and a.f6=b.mate_code)';
        sql:=sql+' select @cnt2=@@ROWCOUNT  select @cnt1,@cnt2';
edit1.text:=sql;        
        try
            setprogress(1);
            commandtext:=sql;
            open;
            //showmessage(inttostr(recordcount));
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
    if m1+m2>0 then SpeedButton5Click(nil);
    MessageBox(0,pchar('已成功新增'+inttostr(m2)+'条记录,更新'+inttostr(m1)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
{
    if (m1>0) or (m2>0) then
    begin
        MessageBox(0,pchar('已成功修改'+inttostr(m1)+'条记录, 新增'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
        busimate.Last;
    end;
}
end;

procedure Tsetbusimate10.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet1 then
begin
    wwDBNavigator1.datasource:=DSbusimate;
end;
if pagecontrol1.activepage=tabsheet2 then
begin
    wwDBNavigator1.datasource:=DSbusimate;
end;
if pagecontrol1.activepage=tabsheet3
    then wwDBNavigator1.datasource:=DSlinkdata
    else wwDBNavigator1.datasource:=DSbusimate;
if pagecontrol1.activepage=tabsheet4 then
begin
    with linkdata1 do
    begin
        if active then close;
        if (busimate.active=false) or (busimate.recordcount=0) then exit;
        commandtext:='select *,agent=dbo.fn_mate_name(link_id),creater=dbo.fn_staff_name(creat_by) from tb_linkdata where type_id=2 and id='+busimate.fieldbyname('mate_id').asstring;
edit1.text:=commandtext;        
        open;
    end;
    wwDBNavigator1.datasource:=DSlinkdata1;
end;
end;

procedure Tsetbusimate10.busiframeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate10.busiframeAfterPost(DataSet: TDataSet);
begin
//if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_agentdata','rec_id','');
end;

procedure Tsetbusimate10.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusimate10.busimateAfterDelete(DataSet: TDataSet);
begin
with busimate do
begin
    updatelog(self.caption, 'tb_busimate', '', '', fieldbyname('mate_id').asinteger, 3, fieldbyname('mate_name').asstring, '', curuserid);
    if ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
end;
end;

procedure Tsetbusimate10.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with busimate do
begin
    if (active=false) or (recordcount=0) then exit;
    if not (state in [dsinsert,dsedit]) then edit;
    if pickbroker.showmodal= mrOK then
    begin
        fieldbyname('link_id').asinteger:= pickbroker.query1.fieldbyname('sta_id').asinteger;
        fieldbyname('broker').asstring:= pickbroker.query1.fieldbyname('zname').asstring;
    end
    else
    begin
        fieldbyname('link_id').asinteger:=0;
        fieldbyname('broker').asstring:='';
    end;
end;
end;

procedure Tsetbusimate10.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with busimate do
begin
    if (active=false) or (recordcount=0) then exit;
    if not (state in [dsinsert,dsedit]) then edit;
    if pickagent.showmodal= mrOK then
    begin
        fieldbyname('link_id1').asinteger:= pickagent.query1.fieldbyname('mate_id').asinteger;
        fieldbyname('agent').asstring:= pickagent.query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        fieldbyname('link_id1').asinteger:=0;
        fieldbyname('agent').asstring:='';
    end;
end;
end;

procedure Tsetbusimate10.busimateCalcFields(DataSet: TDataSet);
begin
with busimate do
begin
    case fieldbyname('tax_type_id').asinteger of
        1: fieldbyname('Ctaxtype').asstring:='小规模纳税人';
        2: fieldbyname('Ctaxtype').asstring:='一般纳税人';
    end;
    case fieldbyname('status_id').asinteger of
        1: fieldbyname('Cstatus').asstring:='准入';
        2: fieldbyname('Cstatus').asstring:='终止';
    end;
    case fieldbyname('status_id1').asinteger of
        1: fieldbyname('Cstatus1').asstring:='正常';
        2: fieldbyname('Cstatus1').asstring:='暂停';
        3: fieldbyname('Cstatus1').asstring:='终止';
    end;
end;
end;

procedure Tsetbusimate10.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
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
    m1:=0; m2:=0; j:=2;
//从第2行开始导入，格式: 1推广服务商名称, 2业务员或业务负责人编码, 3类型(新增/删除), 4使用状态(正常/暂停/终止), 5确认时间
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),type_id tinyint,id int,link_id int)'; //,f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入，格式: 1推广服务商名称, 2业务员或业务负责人编码, 3类型(新增/删除), 4使用状态(正常/暂停/终止), 5确认时间
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+' select top 5 * from ( select top 5 info=line_no+''行推广服务商名称不存在'' from @tab a where f1='''' or not exists (select 1 from tb_busimate b where mate_type_id=10 and b.mate_name=a.f1)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无业务员/业务负责人编码或不存在'' from @tab a where f2='''' or (not exists (select 1 from tb_staff b where sta_type_id=1 and b.zcode=a.f2)';
    sql:=sql+'      and not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_code=a.f2))';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无类型或无效(新增/删除)'' from @tab where f3='''' or (f3<>''新增'' and f3<>''删除'')';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无使用状态或无效(正常/暂停/终止)'' from @tab where f4='''' or (f4<>''正常'' and f4<>''暂停'' and f4<>''终止'')';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无确认时间或数据无效'' from @tab where f5='''' or try_cast(f5 as datetime) is null';
    sql:=sql+' ) a';
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit1.text:=sql;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//从第2行开始导入，格式: 1推广服务商名称, 2业务员或业务负责人编码, 3类型(新增/删除), 4使用状态(正常/暂停/终止), 5确认时间
        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';
        sql:=sql+' update a set type_id=case when c.sta_id>0 then 1 when d.mate_id>0 then 2 end,';
        sql:=sql+' id=b.mate_id,link_id=case when c.sta_id>0 then c.sta_id when d.mate_id>0 then d.mate_id end';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) b on b.mate_name=a.f1';
        sql:=sql+' left join (select sta_id,zcode,zname from tb_staff where sta_type_id=1) c on c.zcode=a.f2';
        sql:=sql+' left join (select mate_id,mate_code,mate_name from tb_busimate where mate_type_id=4) d on d.mate_code=a.f2';
        
// 如先 insert , 其后的update 对刚insert的记录还会update, 故先update
        sql:=sql+' update b set delete_yn=case a.f3 when ''新增'' then 0 when ''删除'' then 1 end,';
        sql:=sql+' status_id=case a.f4 when ''正常'' then 1 when ''暂停'' then 2 when ''终止'' then 3 end,confirm_dt=f5';
        sql:=sql+' from @tab a,tb_linkdata b';
        sql:=sql+' where a.type_id=b.type_id and a.id=b.id and a.link_id=a.link_id';
        sql:=sql+' set @cnt2=@@ROWCOUNT';

        sql:=sql+' insert into tb_linkdata (type_id,id,link_id,delete_yn,status_id,confirm_dt,creat_by,creat_dt)';
        sql:=sql+' select type_id,id,link_id,delete_yn=case a.f3 when ''新增'' then 0 when ''删除'' then 1 end,';
        sql:=sql+' status_id=case a.f4 when ''正常'' then 1 when ''暂停'' then 2 when ''终止'' then 3 end,';
        sql:=sql+' confirm_dt=f5,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' where not exists (select 1 from tb_linkdata l where l.type_id=a.type_id and l.id=a.id and l.link_id=a.link_id)';
{
        sql:=sql+' where not exists (select 1 from tb_linkdata l where l.type_id=1 and l.type_id=a.type_id and l.id=a.id and l.link_id=a.link_id)';
        sql:=sql+'      and not exists (select 1 from tb_linkdata k where k.type_id=2 and k.type_id=a.type_id and k.id=a.id and k.link_id=a.link_id)';
}
        sql:=sql+' set @cnt1=@@ROWCOUNT select @cnt1,@cnt2';

        edit1.text:=sql;
        commandtext:=sql;
        try
            setprogress(1);
            open;
            //showmessage(inttostr(recordcount));
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
//    PageControl1Change(nil);
    if m1+m2>0 then SpeedButton5Click(nil);
    MessageBox(0,pchar('已成功新增'+inttostr(m1)+'条记录,更新'+inttostr(m2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
    with linkdata do if active then Last;
end;

procedure Tsetbusimate10.dxDBGrid2Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetbusimate10.linkdataAfterPost(DataSet: TDataSet);
begin
if linkdata.ChangeCount>0 then myupdaterefresh(linkdata,'tb_linkdata','rec_id','');
end;

procedure Tsetbusimate10.linkdata1AfterPost(DataSet: TDataSet);
begin
if linkdata1.ChangeCount>0 then myupdaterefresh(linkdata1,'tb_linkdata','rec_id','');
end;

procedure Tsetbusimate10.SpeedButton3Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
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
    m1:=0; m2:=0; j:=2;
//从第2行开始导入，格式: 1推广服务商名称, 2业务负责人姓名
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100))'; //,f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),agent_id int,district_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//从第2行开始导入，格式: 1推广服务商名称, 2业务负责人姓名
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+' select top 5 * from ( select top 5 info=line_no+''行推广服务商名称不存在'' from @tab a where f1='''' or not exists (select 1 from tb_busimate b where mate_type_id=10 and b.mate_name=a.f1)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行无业务负责人姓名或不存在'' from @tab a where f2='''' or not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_name=a.f2)';
    sql:=sql+' ) a';
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit1.text:=sql;
        open;
        setprogress(0);
        if recordcount>0 then
        begin
            s:='导入数据存在以下问题，请先修正'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;
//从第2行开始导入，格式: 1推广服务商名称, 2业务负责人姓名
        sql:=sql1;
        sql:=sql+' insert into tb_linkdata (type_id,id,link_id,creat_by,creat_dt)';
        sql:=sql+'  select type_id=2,id=b.mate_id,link_id=c.mate_id,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join (select mate_id,mate_name from tb_busimate where mate_type_id=10) b on b.mate_name=a.f1';
        sql:=sql+' inner join (select mate_id,mate_name from tb_busimate where mate_type_id=4) c on c.mate_name=a.f2';
        sql:=sql+' where not exists (select 1 from tb_linkdata l where type_id=2 and id=b.mate_id and link_id=c.mate_id)';
        sql:=sql+' select @@ROWCOUNT';
edit1.text:=sql;
        try
            setprogress(1);
            commandtext:=sql;
            open;
            //showmessage(inttostr(recordcount));
            if recordcount>0 then m1:=fields[0].asinteger;
        finally
            setprogress(0);
        end;
    end;
    PageControl1Change(nil);
    if m1>0 then
    begin
        MessageBox(0,pchar('已成功导入'+inttostr(m1)+'条记录(已有的关联业务负责人不再重复导入)'),'请注意',MB_OK+MB_ICONInformation);
    end;
    with linkdata do if active then Last;
end;

procedure Tsetbusimate10.linkdata1BeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,pchar('确定删除本关联业务负责人'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate10.linkdataBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,pchar('确定删除本关联业务员或业务负责人'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate10.FormCreate(Sender: TObject);
begin
TabSheet4.TabVisible:=False;
end;

procedure Tsetbusimate10.linkdataCalcFields(DataSet: TDataSet);
begin
with linkdata do
begin
    case fieldbyname('type_id').asinteger of
        1: fieldbyname('ctype').asstring:='业务员';
        2: fieldbyname('ctype').asstring:='业务负责人';
    end;
    case fieldbyname('status_id').asinteger of
        1: fieldbyname('Cstatus1').asstring:='正常';
        2: fieldbyname('Cstatus1').asstring:='暂停';
        3: fieldbyname('Cstatus1').asstring:='终止';
    end;
    if fieldbyname('delete_yn').asboolean then fieldbyname('Cstatus').asstring:='删除' else fieldbyname('Cstatus').asstring:='新增';
end;
end;

end.
