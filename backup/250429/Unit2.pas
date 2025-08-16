unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, ADODB, dxEdLib, ExtCtrls, wwSpeedButton, mycds,
  dxdbtrel, StdCtrls, wwDBNavigator, wwclearpanel, wwclearbuttongroup,
  wwradiogroup, dxDBELib, dxCntner, dxEditor, dxDBEdtr, DBCtrls, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj, dxDBTLCl, dxGrClms;

type
  Tsetcustomer = class(TForm)
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
    DScustomer: TDataSource;
    Label24: TLabel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    Label16: TLabel;
    DBText10: TDBText;
    Label26: TLabel;
    DBText11: TDBText;
    Label27: TLabel;
    DBText1: TDBText;
    Label28: TLabel;
    DBText2: TDBText;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    dxDBLookupEdit3: TdxDBLookupEdit;
    ADOQuery1: TADOQuery;
    DBText4: TDBText;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    ImageList1: TImageList;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    dxDBGrid1Cbusi_type: TdxDBGridColumn;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBEdit11: TdxDBEdit;
    GroupBox1: TGroupBox;
    wwRadioGroup1: TwwRadioGroup;
    SpeedButton6: TSpeedButton;
    customer: TClientDataSet;
    customermate_id: TIntegerField;
    customercomp_id: TAutoIncField;
    customermate_code: TStringField;
    customermate_name: TStringField;
    customerlegalman: TStringField;
    customerdeputy: TStringField;
    customerdeputy_title: TStringField;
    customerphone: TStringField;
    customerfax: TStringField;
    customeraddress: TStringField;
    customerdistrict: TIntegerField;
    customercdistrict: TStringField;
    customerpostalcode: TStringField;
    customeracnt_bank: TStringField;
    customerbank_account: TStringField;
    customertax_code: TStringField;
    customermate_type_id: TIntegerField;
    customerprice_type: TIntegerField;
    customerprice_cent: TBCDField;
    customerqry_code: TStringField;
    customersettle_type: TIntegerField;
    customerpick_ord: TIntegerField;
    customercredit_amot: TIntegerField;
    customerremark: TMemoField;
    customerstop_by: TIntegerField;
    customerstop_for: TStringField;
    customerstop_dt: TDateTimeField;
    customerstop_yn: TBooleanField;
    customertax_rate: TBCDField;
    customerbroker_id: TIntegerField;
    customerdue_limit: TIntegerField;
    customerdescription: TStringField;
    customercreat_dt: TDateTimeField;
    customercreat_by: TIntegerField;
    customermodify_dt: TDateTimeField;
    customermodify_by: TIntegerField;
    customercreater: TStringField;
    customermodifier: TStringField;
    customerEmail: TStringField;
    customerwebsite: TStringField;
    customerbusi_type_id: TWordField;
    customerCbusi_type: TStringField;
    dxLookupTreeView1: TdxLookupTreeView;
    Label19: TLabel;
    Shape3: TShape;
    wwRadioGroup2: TwwRadioGroup;
    Label20: TLabel;
    customerkind_id: TWordField;
    customerCkind: TStringField;
    dxDBGrid1Ckind: TdxDBGridColumn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    customerdist1: TStringField;
    customerdist2: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    BitBtn1: TBitBtn;
    Label33: TLabel;
    Edit1: TEdit;
    ADOQuery1remark1: TMemoField;
    customerremark1: TMemoField;
    customerCremark1: TStringField;
    dxDBGrid1Cremark1: TdxDBGridColumn;
    dxDBMemo2: TdxDBMemo;
    Label34: TLabel;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    SpeedButton1: TSpeedButton;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label98: TLabel;
    Label99: TLabel;
    DBText24: TDBText;
    DBText25: TDBText;
    customerstoper: TStringField;
    dxDBGrid1stop_yn: TdxDBGridCheckColumn;
    customeronfocus: TBooleanField;
    dxDBGrid1onfocus: TdxDBGridCheckColumn;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    customertrusted: TBooleanField;
    dxDBGrid1trusted: TdxDBGridCheckColumn;
    dxPickEdit1: TdxPickEdit;
    Shape1: TShape;
    Label35: TLabel;
    Shape2: TShape;
    Label36: TLabel;
    dxPickEdit2: TdxPickEdit;
    dxDBGrid1link_mate: TdxDBGridColumn;
    Label37: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    customerlink_mate: TStringField;
    customerlink_id: TIntegerField;
    dxDBGrid1remark: TdxDBGridColumn;
    customerCremark: TStringField;
    Edit2: TEdit;
    Label32: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    customermate_name1: TStringField;
    customerlink_id1: TIntegerField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DScustomerDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBEdit5Change(Sender: TObject);
    procedure customerBeforePost(DataSet: TDataSet);
    procedure customerBeforeDelete(DataSet: TDataSet);
    procedure customerAfterPost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure customerCalcFields(DataSet: TDataSet);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setcustomer: Tsetcustomer;

implementation

uses datamodu, Unit61, Unit16, Unit16a;

{$R *.DFM}

procedure Tsetcustomer.FormActivate(Sender: TObject);
begin
{
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
}
with dm.district do
    if active=false then open;
end;

procedure Tsetcustomer.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with customer do
    if active=true then close;
//with dm.district do
//    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetcustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcustomer.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetcustomer.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetcustomer.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetcustomer.DScustomerDataChange(Sender: TObject;
  Field: TField);
begin
with customer do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    BitBtn1.enabled:=(active=true) and (recordcount>0) and (length(fieldbyname('mate_code').asstring)<>8);
end;
end;

procedure Tsetcustomer.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetcustomer.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetcustomer.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with customer do
begin
    if active then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,cdistrict=dbo.fn_getdistrict(a.district),';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (a.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (a.district,2),';
    commandtext:=commandtext+' link_mate=e.mate_name,mate_name1=f.mate_name,stoper=d.zname,creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.stop_by=d.sta_id';
    commandtext:=commandtext+' left join tb_busimate e on a.link_id=e.mate_id';
    commandtext:=commandtext+' left join tb_busimate f on a.link_id1=f.mate_id';
    commandtext:=commandtext+' where a.mate_type_id=1'; // and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1 ';
    if dxCheckEdit1.checked then commandtext:=commandtext+' and isnull(a.mate_code,'''')=''''';
    if dxCheckEdit2.checked then commandtext:=commandtext+' and isnull(a.district,0)=0';
    if Trim(dxedit1.text)<>'' then
    begin
        case radiogroup1.itemindex of
            0:  commandtext:=commandtext+' and a.qry_code ';
            1:  commandtext:=commandtext+' and a.mate_name ';
            2:  commandtext:=commandtext+' and a.mate_code='''+trim(dxedit1.text)+'''';
            3:  commandtext:=commandtext+' and a.address ';
        end;
        if radiogroup1.itemindex<>2 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
    end;
    if dxPickEdit1.Text<>'' then commandtext:=commandtext+' and a.busi_type_id='+inttostr(dxPickEdit1.ItemIndex+1);
    if dxPickEdit2.Text<>'' then commandtext:=commandtext+' and a.kind_id='+inttostr(dxPickEdit2.ItemIndex+1);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+inttostr(dxLookupTreeView1.Tag)+')=1';
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fdistltd then commandtext:=commandtext+'  and exists (select 1 from tb_trustdistrict s,tb_treedata t where s.sta_id='+inttostr(curuserid)+' and t.rec_id=a.district and (t.rec_id=s.dist_id or t.parent=s.dist_id))';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetcustomer.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    if dm.district.active=false then dm.district.open;
end;
end;

procedure Tsetcustomer.dxDBEdit5Change(Sender: TObject);
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
with customer do
    if state in [dsinsert,dsedit] then fieldbyname('qry_code').asstring:=spy;
//    dxDBEdit3.text:=spy;
end;

procedure Tsetcustomer.customerBeforePost(DataSet: TDataSet);
begin
with customer do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('医院名称不可为空');
//    if (fieldbyname('mate_code').asstring='') then raise Exception.Create('请获取客户编码');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置医院所属地区');
    if fieldbyname('busi_type_id').asinteger=0 then raise Exception.Create('请设置医院等级');
    if fieldbyname('kind_id').asinteger=0 then raise Exception.Create('请选择医院性质');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=1; // 销售医院
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

procedure Tsetcustomer.customerBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0 then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该医院已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本医院'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetcustomer.customerAfterPost(DataSet: TDataSet);
begin
if customer.ChangeCount>0 then myupdaterefresh(customer,'tb_busimate','mate_id','');
refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',customer.fieldbyname('mate_id').asinteger);
if customer.fieldbyname('mate_code').asstring='' then raise Exception.Create('请获取客户编码');
end;

procedure Tsetcustomer.SpeedButton6Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    mi,ri,J: integer;
    s1,s2,s3,s4,s5,s6,s7,serror: string;
    id2,id3,id4: integer;
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
//从第2行开始导入，导入格式: 1客户名称,2级别,3性质,4所在地区,5地址,6电话,7特色科室
    serror:='';
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        while Pos('?', s4) > 0 do Delete(s4, Pos('?', s4), 1);
        s5:=Trim(sheet.cells[j,5].text);
        s6:=Trim(sheet.cells[j,6].text);
        s7:=Trim(sheet.cells[j,7].text);
        
        if (s2='一级医院') or (s2='一级') then id2:=1
        else if (s2='二级医院') or (s2='二级') then id2:=2
        else if (s2='三级医院') or (s2='三级') then id2:=3
        else if (s2='特三甲医院') or (s2='特三甲') then id2:=4
        else if (s2='社区医院') or (s2='社区') then id2:=5
        else if (s2='基层医院') or (s2='基层') then id2:=6
        else if s2='诊所' then id2:=7
        else if s2='药店' then id2:=8
        else id2:=0;
        if (s3='国营') or (s3='公立') then id3:=1
        else if s3='民营' then id3:=2
        else if s3='厂矿职工' then id3:=3
        else if (s3='调拨') then id3:=4
//        else if (s3='冷链') or (s3='冷链调拨') then id3:=4
        else id3:=0;
//showmessage(s2+' '+s3+' '+inttostr(id2)+' '+inttostr(id3));
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s4+'''';
            open;
            if recordcount=0 then id4:=0 else id4:=fieldbyname('rec_id').asinteger;
        end;
        if (id2=0) or (id3=0) or (id4=0) then
        begin
//从第2行开始导入，导入格式: 1客户名称,2级别,3性质,4所在地区,5地址,6电话,7特色科室
            serror:=serror+#13#10+'第'+inttostr(j)+'行:';
            if id2=0 then serror:=serror+',未取得医院级别';
            if id3=0 then serror:=serror+',未取得医院性质';
            if id4=0 then serror:=serror+',未取得所在地区';
            mi:=mi+1;
            if mi>0 then break;
        end;
        j:=j+1;
    end;
    setprogress(0);
    if serror<>'' then
    begin
        XL.Quit;
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;

    if MessageBox(0,pchar('确定导入数据客户(医院)'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//    if MessageBox(0,pchar('合计有'+inttostr(j-2)+'条可导入医院记录，确定导入数据'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        while Pos('?', s4) > 0 do Delete(s4, Pos('?', s4), 1);
//        showmessage(s4);
        s5:=Trim(sheet.cells[j,5].text);
        s6:=Trim(sheet.cells[j,6].text);
        s7:=Trim(sheet.cells[j,7].text);
        if (s2='一级医院') or (s2='一级') then id2:=1
        else if (s2='二级医院') or (s2='二级') then id2:=2
        else if (s2='三级医院') or (s2='三级') then id2:=3
        else if (s2='特三甲医院') or (s2='特三甲') then id2:=4
        else if (s2='社区医院') or (s2='社区') then id2:=5
        else if (s2='基层医院') or (s2='基层') then id2:=6
        else if s2='诊所' then id2:=7
        else if s2='药店' then id2:=8
        else id2:=0;
        if (s3='国营') or (s3='公立') then id3:=1
        else if s3='民营' then id3:=2
        else if s3='厂矿职工' then id3:=3
//        else if (s3='冷链') or (s3='冷链调拨') then id3:=4
        else if (s3='调拨') then id3:=4
        else id3:=0;
        with dm.pubqry do
        begin
            if active then close;
//showmessage(s4);
            commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s4+'''';
//edit1.text:=commandtext;
            open;
            if recordcount=0 then id4:=0 else id4:=fieldbyname('rec_id').asinteger;
            
            if active=true then close;
            commandtext:='select top 1 mate_id from tb_busimate where comp_id='+inttostr(compid)+' and mate_type_id=1 and mate_name='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码医院，不再加入
            begin
//从第2行开始导入，导入格式: 1客户名称,2级别,3性质,4所在地区,5地址,6电话,7特色科室
                if active then close;
                ri:=0;
                commandtext:='insert into tb_busimate (mate_name,qry_code,comp_id,mate_type_id,busi_type_id,kind_id,district,address,phone,remark1,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''',dbo.fn_getpy('''+s1+'''),'+inttostr(compid)+',1,'+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+','''+s5+''','''+s6+''','''+s7+''','+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
edit2.text:=commandtext;
                try
                    open;
                    ri:=fields[0].asinteger;
                except

                end;
                if id4>0 then
                begin
                    if active=False then close;
                    commandtext:='exec sp_setmatecode '+inttostr(ri); //写入医院编码
                    execute;
                end;
                mi:=mi+1;
            end
            else
            begin
                ri:=fields[0].asinteger;
                if active=True then close;
                commandtext:='update tb_busimate set busi_type_id='+inttostr(id2);
                commandtext:=commandtext+',kind_id='+inttostr(id3);
                commandtext:=commandtext+',district='+inttostr(id4);
                commandtext:=commandtext+',address='''+s5+'''';
                commandtext:=commandtext+',phone='''+s6+'''';
                commandtext:=commandtext+',remark1='''+s7+'''';
                commandtext:=commandtext+',modify_by='+inttostr(curuserid);
                commandtext:=commandtext+',modify_dt=getdate()';
                commandtext:=commandtext+' where mate_id='+ inttostr(ri);
//edit2.text:=commandtext;
                execute;
            end;
//edit1.text:=commandtext;
        end;
        j:=j+1;
    end;
    XL.Quit;
//    SpeedButton5Click(nil);
//    if ri>0 then customer.Locate('mate_id',ri,[]);
    setprogress(0);
    MessageBox(0,pchar('数据已导入(共导入'+inttostr(mi)+'个客户(医院)),可刷新查询'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetcustomer.customerCalcFields(DataSet: TDataSet);
begin
with customer do
begin
    case fieldbyname('busi_type_id').asinteger of
        1:  fieldbyname('cbusi_type').asstring:='一级';
        2:  fieldbyname('cbusi_type').asstring:='二级';
        3:  fieldbyname('cbusi_type').asstring:='三级';
        4:  fieldbyname('cbusi_type').asstring:='特三甲';
        5:  fieldbyname('cbusi_type').asstring:='社区';
        6:  fieldbyname('cbusi_type').asstring:='基层';
        7:  fieldbyname('cbusi_type').asstring:='诊所';
        8:  fieldbyname('cbusi_type').asstring:='药店';
    end;
    case fieldbyname('kind_id').asinteger of
        1:  fieldbyname('ckind').asstring:='公立';
        2:  fieldbyname('ckind').asstring:='民营';
        3:  fieldbyname('ckind').asstring:='厂矿职工';
        4:  fieldbyname('ckind').asstring:='调拨';
    end;
    fieldbyname('cremark').asstring:=fieldbyname('remark').asstring;
    fieldbyname('cremark1').asstring:=fieldbyname('remark1').asstring;
end;
end;

procedure Tsetcustomer.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetcustomer.BitBtn1Click(Sender: TObject);
begin
with customer do
begin
//    if state in [dsinsert,dsedit] then post; //此处如先post,会被拦截提示 录入客户编码，中断本进程
    if (fieldbyname('mate_id').asinteger=0) then raise Exception.Create('请先保存本记录');
end;
with dm.pubqry do
begin
    if active=False then close;
    commandtext:='exec sp_setmatecode '+customer.fieldbyname('mate_id').asstring;
//edit1.text:=commandtext;
    execute;
end;
refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',customer.fieldbyname('mate_id').asinteger);
end;

procedure Tsetcustomer.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
dxLookupTreeView1.Tag:=dm.district.fieldbyname('rec_id').asinteger;
end;

procedure Tsetcustomer.SpeedButton1Click(Sender: TObject);
begin
with customer do
begin
    if (active=False) or (recordcount=0) then exit;
    setprogress(1);
    first;
    while not eof do
    begin
        if (fieldbyname('district').asinteger>0) and (length(fieldbyname('mate_code').asstring)<>8) then
        begin
            if dm.pubqry.active then dm.pubqry.close;
            dm.pubqry.commandtext:='exec sp_setmatecode '+fieldbyname('mate_id').asstring;
            dm.pubqry.execute;
        end;
        next;
    end;
    setprogress(0);
end;
SpeedButton5Click(nil); // refresh customer
end;

procedure Tsetcustomer.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1trusted) then
begin
    if (ANode.Strings[dxDBGrid1trusted.Index] = 'True') then AColor := $00FFCEFF;
end;
end;

procedure Tsetcustomer.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with customer do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    if pickcustomer.showmodal= mrOK then
    begin
        fieldbyname('link_id').asinteger:= pickcustomer.query1.fieldbyname('mate_id').asinteger;
        fieldbyname('link_mate').asstring:= pickcustomer.query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        fieldbyname('link_id').asinteger:=0;
        fieldbyname('link_mate').asstring:='';
    end;
end;
end;

procedure Tsetcustomer.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with customer do
begin
    if not (state in [dsinsert,dsedit]) then edit;
    if pickbusimate2.showmodal= mrOK then
    begin
        fieldbyname('link_id1').asinteger:= pickbusimate2.query1.fieldbyname('mate_id').asinteger;
        fieldbyname('mate_name1').asstring:= pickbusimate2.query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        fieldbyname('link_id1').asinteger:=0;
        fieldbyname('mate_name1').asstring:='';
    end;
end;
end;

end.
