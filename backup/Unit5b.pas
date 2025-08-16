unit Unit5b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, ImgList, ADODB, dxEdLib, ExtCtrls, wwSpeedButton, mycds,
  dxdbtrel, StdCtrls, wwDBNavigator, wwclearpanel, wwclearbuttongroup,
  wwradiogroup, dxDBELib, dxCntner, dxEditor, dxDBEdtr, DBCtrls, dxDBCtrl,
  dxDBGrid, dxTL, ComCtrls, Buttons, Comobj, dxDBTLCl, dxGrClms;

type
  Tsetstore = class(TForm)
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
    customerkind_id: TWordField;
    customerCkind: TStringField;
    dxDBGrid1Ckind: TdxDBGridColumn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    customerdist1: TStringField;
    customerdist2: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    BitBtn1: TBitBtn;
    Label32: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setstore: Tsetstore;

implementation

uses datamodu, Unit61;

{$R *.DFM}

procedure Tsetstore.FormActivate(Sender: TObject);
begin
with dm.settle_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=2';
        open;
    end;
with dm.district do
    if active=false then open;
end;

procedure Tsetstore.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with customer do
    if active=true then close;
//with dm.district do
//    if active=true then close;
with dm.settle_type do
    if active=true then close;
end;

procedure Tsetstore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetstore.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetstore.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tsetstore.wwDBNavigator1InsertClick(Sender: TObject);
begin
with pagecontrol1 do
    if activepage=tabsheet1 then activepage:=tabsheet2;
end;

procedure Tsetstore.DScustomerDataChange(Sender: TObject;
  Field: TField);
begin
with customer do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    BitBtn1.enabled:=(active=true) and (recordcount>0) and (length(fieldbyname('mate_code').asstring)<>8);
end;
end;

procedure Tsetstore.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetstore.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetstore.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with customer do
begin
    if active=true then
    begin
        mi:=fieldbyname('mate_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,cdistrict=dbo.fn_getdistrict(a.district),';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (a.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (a.district,2),';
    commandtext:=commandtext+' stoper=d.zname,creater=b.zname,modifier=c.zname';
    commandtext:=commandtext+' from tb_busimate a';
    commandtext:=commandtext+' left join tb_staff b on a.creat_by=b.sta_id';
    commandtext:=commandtext+' left join tb_staff c on a.modify_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.stop_by=d.sta_id';
    commandtext:=commandtext+' where a.mate_type_id=6'; // and dbo.fn_indist(a.district,'+inttostr(curuserid)+')=1 ';
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
//    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district,'+inttostr(dxLookupTreeView1.Tag)+')=1';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('mate_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetstore.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=tabsheet2 then
begin
    if dm.district.active=false then dm.district.open;
end;
end;

procedure Tsetstore.dxDBEdit5Change(Sender: TObject);
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

procedure Tsetstore.customerBeforePost(DataSet: TDataSet);
begin
with customer do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('药店名称不可为空');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置药店所属地区');
    if fieldbyname('busi_type_id').asinteger=0 then raise Exception.Create('请设置药店等级');
//    if fieldbyname('kind_id').asinteger=0 then raise Exception.Create('请选择药店性质');
end;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_busimate where mate_type_id=6 and mate_name='''+customer.fieldbyname('mate_name').asstring+'''';
    open;
    if recordcount>0 then raise Exception.Create('已有相同名称的医院，不可重复录入');
end;
with customer do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=6; // 销售药店
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

procedure Tsetstore.customerBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0
    then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该药店已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本药店'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetstore.customerAfterPost(DataSet: TDataSet);
begin
with customer do
begin
    if ChangeCount>0 then myupdaterefresh(customer,'tb_busimate','mate_id','');
    refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',fieldbyname('mate_id').asinteger)
end;
end;

procedure Tsetstore.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,ri,J: integer;
    s1,s2,s3,s4,s5 : string;
    id2,id3 : integer;
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
//从第2行开始导入，导入格式: 1药店名称, 2类别, 3所在地区, 4地址, 5电话
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        while Pos('?', s4) > 0 do Delete(s4, Pos('?', s4), 1);
        s5:=Trim(sheet.cells[j,5].text);
        
        if (s2='连锁药店') or (s2='连锁') then id2:=1
        else if (s2='单体药店') or (s2='单体') then id2:=2
        else if (s2='第3终端') then id2:=3
        else id2:=0;

        with dm.pubqry do
        begin
            if active=true then close;
//showmessage(s4);
            commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+s3+'''';
//edit1.text:=commandtext;
            open;
            if recordcount=0 then id3:=0 else id3:=fieldbyname('rec_id').asinteger;
            
            if active=true then close;
            commandtext:='select top 1 mate_id from tb_busimate where comp_id='+inttostr(compid)+' and mate_type_id=6 and mate_name='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码药店，不再加入
            begin
//从第2行开始导入，导入格式: 1药店名称, 2类别, 3所在地区, 4地址, 5电话
                if active=true then close;
                ri:=0;
                commandtext:='insert into tb_busimate (mate_name,qry_code,comp_id,mate_type_id,busi_type_id,district,address,phone,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''',dbo.fn_getpy('''+s1+'''),'+inttostr(compid)+',6,'+inttostr(id2)+','+inttostr(id3)+','''+s4+''','''+s5+''','+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
                try
                    open;
                    ri:=fields[0].asinteger;
                except

                end;
                if id3>0 then
                begin
                    if active=False then close;
                    commandtext:='exec sp_setmatecode1 '+inttostr(ri); //写入药店编码
                    execute;
                end;
//                mi:=mi+1;
            end
            else
            begin
                ri:=fields[0].asinteger;
                if active=True then close;
                commandtext:='update tb_busimate set busi_type_id='+inttostr(id2);
                commandtext:=commandtext+',district='+inttostr(id3);
                commandtext:=commandtext+',address='''+s4+'''';
                commandtext:=commandtext+',phone='''+s5+'''';
                commandtext:=commandtext+',modify_by='+inttostr(curuserid);
                commandtext:=commandtext+',modify_dt=getdate()';
                commandtext:=commandtext+' where mate_id='+ inttostr(ri);
                execute;
            end;
//edit1.text:=commandtext;                
        end;
        j:=j+1;
    end;
    XL.Quit;
    SpeedButton5Click(nil);
    if ri>0 then customer.Locate('mate_id',ri,[]);
    MessageBox(0,pchar('Excel数据已导入(共导入'+inttostr(j-2)+'个药店)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetstore.customerCalcFields(DataSet: TDataSet);
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
    end;
    fieldbyname('cremark1').asstring:=fieldbyname('remark1').asstring;
end;
end;

procedure Tsetstore.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetstore.BitBtn1Click(Sender: TObject);
begin
with customer do
begin
    if state in [dsinsert,dsedit] then post;
    if (fieldbyname('mate_id').asinteger=0) then raise Exception.Create('请先保存本记录');
end;
with dm.pubqry do
begin
    if active=False then close;
    commandtext:='exec sp_setmatecode1 '+customer.fieldbyname('mate_id').asstring;
//edit1.text:=commandtext;
    execute;
end;
refreshmyrecord(customer,dm.Refreshcds,0,'a.mate_id',customer.fieldbyname('mate_id').asinteger);
end;

procedure Tsetstore.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
dxLookupTreeView1.Tag:=dm.district.fieldbyname('rec_id').asinteger;
end;

procedure Tsetstore.SpeedButton1Click(Sender: TObject);
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
            if dm.pubqry.active=True then dm.pubqry.close;
            dm.pubqry.commandtext:='exec sp_setmatecode1 '+fieldbyname('mate_id').asstring;
            dm.pubqry.execute;
        end;
        next;
    end;
    setprogress(0);
end;
SpeedButton5Click(nil); // refresh customer
end;

end.
