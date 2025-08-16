unit Unit5a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DBClient, ImgList, DB, ADODB, dxEdLib, StdCtrls, ExtCtrls, mycds,
  dxdbtrel, wwSpeedButton, wwDBNavigator, wwclearpanel, dxDBELib, dxDBEdtr,
  dxEditor, dxCntner, DBCtrls, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, Buttons, Comobj,
  dxDBTLCl, dxGrClms;

type
  Tsetbusimate1 = class(TForm)
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
    dxDBGrid1mate_code: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridMaskColumn;
    dxDBGrid1legalman: TdxDBGridMaskColumn;
    dxDBGrid1deputy: TdxDBGridMaskColumn;
    dxDBGrid1deputy_title: TdxDBGridMaskColumn;
    dxDBGrid1phone: TdxDBGridMaskColumn;
    dxDBGrid1fax: TdxDBGridMaskColumn;
    dxDBGrid1address: TdxDBGridMaskColumn;
    dxDBGrid1qry_code: TdxDBGridMaskColumn;
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
    Label25: TLabel;
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
    busiframe: TClientDataSet;
    busiframerec_id: TAutoIncField;
    busiframelevel_id1: TIntegerField;
    busiframelevel_id2: TIntegerField;
    busiframelevel_id3: TAutoIncField;
    busiframelevel1: TStringField;
    busiframelevel2: TStringField;
    busiframelevel3: TStringField;
    busiframedistrict_id: TIntegerField;
    busiframesta_id: TIntegerField;
    busiframebroker: TStringField;
    busiframeagent: TStringField;
    busiframeagent_id: TAutoIncField;
    busiframemed_id: TIntegerField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframecreater: TStringField;
    busiframedist1: TStringField;
    busiframedist2: TStringField;
    busiframedist3: TStringField;
    busiframevalid_dt: TDateTimeField;
    DSbusiframe: TDataSource;
    ADOQuery1rate: TBCDField;
    ADOQuery1rate1: TBCDField;
    busimaterate: TBCDField;
    dxDBEdit12: TdxDBEdit;
    Label17: TLabel;
    Label19: TLabel;
    dxDBEdit13: TdxDBEdit;
    Label21: TLabel;
    dxDBGrid1rate: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label22: TLabel;
    Shape3: TShape;
    dxDBGrid1Column12: TdxDBGridColumn;
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
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    Label33: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusimate1: Tsetbusimate1;

implementation

uses datamodu, Unit61;

{$R *.DFM}

procedure Tsetbusimate1.FormActivate(Sender: TObject);
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
with dm.district do
    if active=false then open;
end;

procedure Tsetbusimate1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with busimate do
    if active=true then close;
//with dm.district do
//    if active=true then close;
with dm.staff do
    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetbusimate1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusimate1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetbusimate1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetbusimate1.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetbusimate1.DSbusimateDataChange(Sender: TObject;
  Field: TField);
begin
with busimate do
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;

procedure Tsetbusimate1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetbusimate1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetbusimate1.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with busimate do
begin
    if active=true then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select *,cdistrict=dbo.fn_getdistrict(a.district),';
    commandtext:=commandtext+' stoper=e.zname,creater=c.zname,modifier=d.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by =c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by =d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.stop_by=e.sta_id';
    commandtext:=commandtext+' where a.mate_type_id=5'; // and a.comp_id='+inttostr(compid);
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
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
end;

procedure Tsetbusimate1.DSbusimateStateChange(Sender: TObject);
begin
with busimate do
    if active=true then label25.caption:=formatfloat('[###,###]',recordcount);
end;

procedure Tsetbusimate1.dxDBEdit5Change(Sender: TObject);
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

procedure Tsetbusimate1.busimateAfterPost(DataSet: TDataSet);
begin
if busimate.ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
{
with busimate do
begin
    if ChangeCount>0 then myupdaterefresh(busimate,'tb_busimate','mate_id','');
    refreshmyrecord(busimate,dm.Refreshcds,0,'a.mate_id',fieldbyname('mate_id').asinteger)
end;
}
end;

procedure Tsetbusimate1.busimateBeforeDelete(DataSet: TDataSet);
begin
with busimate do
    if (active=false) or (recordcount=0) then exit;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+busimate.fieldbyname('mate_id').asstring+' or dst_id='+busimate.fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该商业公司已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本商业公司'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate1.busimateBeforePost(DataSet: TDataSet);
begin
with busimate do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('商业公司名称不可为空');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置商业公司所属地区');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=5; // 终端商业公司 代理商
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

procedure Tsetbusimate1.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,id3: integer;
    s1,s2,s3: string;
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
//从第2行开始导入，导入格式: 1商业公司编码,2商业公司名称,3所在地区 id3
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        with dm.pubqry do
        begin
            if active=true then close;
            commandtext:='select top 1 1 from tb_busimate where mate_type_id=5 and (mate_code='''+s1+''' or mate_name='''+s2+''')'; //comp_id='+inttostr(compid)+' and
            open;
            if recordcount=0 then// continue; //已有该编码商业公司，不再加入
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s3+'''';
                open;
                if recordcount=0 then id3:=0 else id3:=fieldbyname('rec_id').asinteger;

                if active=true then close;
                commandtext:='insert into tb_busimate (mate_code,mate_name,district,qry_code,comp_id,mate_type_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''','''+s2+''','+inttostr(id3)+',dbo.fn_getpy('''+s2+'''),'+inttostr(compid)+',5,'+inttostr(curuserid)+',getdate())';
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
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(mi)+'个商业公司,编码或名称重复的商业公司不重复导入)'),'请注意',MB_OK+MB_ICONInformation);  //,编码重复商业公司未导入
end;

procedure Tsetbusimate1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    if dm.district.active=false then dm.district.open;
end;
end;

procedure Tsetbusimate1.busiframeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusimate1.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_agentdata','rec_id','');
end;

procedure Tsetbusimate1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
