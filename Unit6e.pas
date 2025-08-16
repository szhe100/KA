unit Unit6e;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, Menus, DB, ADODB, dxEdLib, ExtCtrls, wwSpeedButton,
  DBClient, wwDBNavigator, wwclearpanel, dxDBELib, dxDBTL, dxEditor,
  dxDBEdtr, dxCntner, StdCtrls, Buttons, wwclearbuttongroup, wwradiogroup,
  DBCtrls, dxDBGrid, dxTL, dxDBCtrl, ComCtrls, Comobj, mycds, dxdbtrel,
  dxDBTLCl, dxGrClms;

type
  Tsetmedprice3 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList1: TImageList;
    medprice: TClientDataSet;
    medpricemed_code: TStringField;
    medpricemed_name: TStringField;
    medpricespecifi: TStringField;
    medpricepdt_place: TStringField;
    medpriceunit_id: TIntegerField;
    medpricemed_unit: TStringField;
    medpriceqtyperbox: TBCDField;
    medpriceqtyperpack: TBCDField;
    medpriceappv_docu: TStringField;
    medpricecreat_dt: TDateTimeField;
    medpricecreat_by: TIntegerField;
    medpricecreater: TStringField;
    SpeedButton6: TSpeedButton;
    Label7: TLabel;
    ADOQuery1type_id1: TWordField;
    Button1: TButton;
    medpricematerial_code: TStringField;
    medpricematerial_code1: TStringField;
    Label32: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    medpricerec_id: TAutoIncField;
    medpricedist1: TStringField;
    medpricedist2: TStringField;
    medpriceprice: TBCDField;
    Label33: TLabel;
    Shape6: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1material_code1: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1price_unit: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    DSmedprice: TDataSource;
    Edit1: TEdit;
    dxDBGrid1valid_from: TdxDBGridDateColumn;
    medpricevalid_from: TDateTimeField;
    medpricevalid_to: TDateTimeField;
    medpricechannel_id: TIntegerField;
    medpricechannel_dtl_id: TIntegerField;
    medpricecust_group_id: TIntegerField;
    medpriceLchannel: TStringField;
    medpriceLchannel_dtl: TStringField;
    dxDBGrid1Lchannel: TdxDBGridLookupColumn;
    dxDBGrid1Lchannel_dtl: TdxDBGridLookupColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    medpriceprice1: TBCDField;
    medpriceCrate: TBCDField;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    medpriceprice2: TBCDField;
    medpricerate: TBCDField;
    medpricerate1: TBCDField;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1rate1: TdxDBGridColumn;
    Label1: TLabel;
    dxDBGrid1zdesc: TdxDBGridColumn;
    medpricezdesc: TStringField;
    medpriceprice_unit: TStringField;
    Edit2: TEdit;
    dxCheckEdit2: TdxCheckEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure medpriceAfterPost(DataSet: TDataSet);
    procedure medpriceBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSmedpriceDataChange(Sender: TObject; Field: TField);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure medpriceBeforeDelete(DataSet: TDataSet);
    procedure medpriceCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure medpriceBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmedprice3: Tsetmedprice3;

implementation

uses datamodu, Unit7;

{$R *.DFM}

procedure Tsetmedprice3.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11 and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12 and a.comp_id='+inttostr(compid);
        open;
    end;
{
with dm.cust_group do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=13';
        open;
    end;
with company do
    if active=false then
    begin
        commandtext:='select comp_id,comp_name,sim_name from tb_company order by comp_name ';
        open;
    end;
with dm.cdsunit do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=0';
        open;
    end;
with dm.func_type do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,zdesc from tb_object where obj_type_id=10';
        open;
    end;
with dm.medcatlog do
    if active=false then
    begin
        commandtext:='select * from tb_medcatlog';
        open;
    end;
}
end;

procedure Tsetmedprice3.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with medprice do if active then close;
with dm.cust_group do if active then close;
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;

dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmedprice3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedprice3.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with medprice do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 20000 med_unit=dbo.fn_obj_desc(m.unit_id),a.*,m.*,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictname (a.district_id,1),dist2=dbo.fn_getdistrictname (a.district_id,2),';
    commandtext:=commandtext+'  creater=f.zname';
//    commandtext:=commandtext+' channel=b.zdesc,channel_dtl=c.zdesc,cust_group=e.zdesc,creater=f.zname';
    commandtext:=commandtext+' from tb_medprice a';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id =m.med_id';
//    commandtext:=commandtext+' left join tb_object b on a.channel_id =b.obj_id';
    commandtext:=commandtext+' left join tb_staff f on a.creat_by =f.sta_id';
    if dxCheckEdit2.Checked then
    begin
        commandtext:=commandtext+' inner join (select channel_id,channel_dtl_id,district_id,med_id,rec_id=max(rec_id) from tb_medprice where type_id=4 group by channel_id,channel_dtl_id,district_id,med_id) h on a.rec_id=h.rec_id';
    end;
    commandtext:=commandtext+' where type_id=4'; //设置分销标准政策 a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
//        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id='+inttostr(dxButtonEdit1.tag)+' and m.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+''%'')';
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and a.district_id like '''+dm.district.fieldbyname('code').asstring+'%'''; //='+dm.district.fieldbyname('code').asstring;
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

procedure Tsetmedprice3.FormCreate(Sender: TObject);
begin
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tsetmedprice3.N3Click(Sender: TObject);
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

procedure Tsetmedprice3.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmedprice3.N2Click(Sender: TObject);
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

procedure Tsetmedprice3.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmedprice3.medpriceAfterPost(DataSet: TDataSet);
begin
if medprice.ChangeCount>0 then myupdaterefresh(medprice,'tb_medprice','rec_id','');
end;

procedure Tsetmedprice3.medpriceBeforePost(DataSet: TDataSet);
begin
{
with medprice do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
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
}
end;

procedure Tsetmedprice3.SpeedButton6Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    mi,J: integer;
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
//从第2行开始导入，格式: 1渠道名称,2子渠道名称,3业务省份,4业务城市,5物料编码,6中标价/终端开票价,7开票扣率,8考核价,9推广比率,10金额,11定价单位,12启用日期, 13备注
    mi:=0;j:=2;  //第1行开始 每行一单
    sql:=' declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),';
    sql:=sql+' f10 varchar(100),f11 varchar(100),f12 varchar(100),f13 varchar(100))';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text)+''','''+Trim(sheet.cells[j,6].text)+''','''+Trim(sheet.cells[j,7].text);
        sql:=sql+''','''+Trim(sheet.cells[j,8].text)+''','''+Trim(sheet.cells[j,9].text)+''','''+Trim(sheet.cells[j,10].text)+''','''+Trim(sheet.cells[j,11].text)+''','''+Trim(sheet.cells[j,12].text)+''','''+Trim(sheet.cells[j,13].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
    sql:=sql+'select top 10 * from ( select top 5 info=''第''+line_no+''行 无渠道名称或数据无效'' from @tab a where f1='''' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.zdesc=a.f1)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无子渠道名称或数据无效'' from @tab a where f2='''' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.zdesc=a.f2)';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行 无业务省份或数据无效'' from @tab a where f3='''' or not exists (select 1 from tb_district b where b.prov_name=f3 )';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无省份城市或数据无效'' from @tab a where f3='''' or not exists (select 1 from tb_district b where (b.prov_name=f3 and (b.city_name=f4 or b.county_name=f4)))';

//    sql:=sql+' union all select top 5 ''第''+line_no+''行无业务省份'' from @tab where f3=''''';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无业务城市'' from @tab where f4=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无物料编码'' from @tab a where f5='''' or not exists (select 1 from tb_medicine b where b.material_code=a.f5)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无中标价/终端开票价或数据无效'' from @tab where f6='''' or try_cast(f6 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无开票扣率或数据无效'' from @tab where f7='''' or try_cast(f7 as decimal(15,4)) is null';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行 无考核价或数据无效'' from @tab where f8='''' or try_cast(f8 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 考核价数据无效'' from @tab where f8<>'''' and try_cast(f8 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无推广比率或数据无效'' from @tab where f9='''' or try_cast(f9 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无金额或数据无效'' from @tab where f10='''' or try_cast(f10 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无定价单位'' from @tab where f11=''''';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无启用日期或数据无效'' from @tab where f12='''' or try_cast(f12 as datetime) is null';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行无有效到或数据无效'' from @tab where f13='''' or try_cast(f13 as datetime) is null';

//    sql:=sql+' union all select top 5 cast(line_no as varchar(3))+''行未取得渠道'' from @tab a where not exists (select 1 from tb_object b where b.obj_type_id=11 and b.zdesc=a.f1)';
//    sql:=sql+' union all select top 5 cast(line_no as varchar(3))+''行未取得子渠道'' from @tab a where not exists (select 1 from tb_object b where b.obj_type_id=12 and b.zdesc=a.f2)';
//    sql:=sql+' union all select top 5 cast(line_no as varchar(3))+''行未取得业务省份+业务城市'' from @tab a where not exists (select 1 from tb_treedata b where b.district=a.f3+'' ''+a.f4)';
//    sql:=sql+' union all select top 5 cast(line_no as varchar(3))+''行未取得物料编号'' from @tab a where not exists (select 1 from tb_medicine b where b.material_code=f5)';
    sql:=sql+' order by line_no) a';
//从第2行开始导入，格式: 1渠道名称,2子渠道名称,3业务省份,4业务城市,5物料编码,6中标价/终端开票价,7开票扣率,8考核价,9推广比率,10金额,11定价单位,12启用日期, 13备注
edit2.text:=sql;
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
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

//从第2行开始导入，格式: 1渠道编码,2子渠道编码,3业务省份,4业务城市,5物料编码,6中标价/终端开票价,7开票扣率,8考核价,9推广比率,10金额,11定价单位,12启用日期, 13备注
//rec_id,comp_id,type_id,channel_id,channel_dtl_id,cust_group_id,district_id,med_id,price,price_unit,price1,price2,rate,rate1,valid_from,valid_to,creat_by,creat_dt
        sql:=sql1+' insert into tb_medprice (comp_id,type_id,channel_id,channel_dtl_id,district_id,med_id,price,price_unit,price1,price2,rate,rate1,valid_from,zdesc,creat_by,creat_dt)';  //valid_to,
//        sql:=sql+'  select comp_id='+inttostr(compid)+',type_id=4,channel_id=b.obj_id,channel_dtl_id=c.obj_id,district_id=case when e.city_code<>'''' then e.city_code else d.prov_code end,'; //type_id=4 设置分销标准政策
        sql:=sql+'  select comp_id='+inttostr(compid)+',type_id=4,channel_id=b.obj_code,channel_dtl_id=c.obj_code,district_id=case when e.city_code<>'''' then e.city_code else d.prov_code end,'; //type_id=4 设置分销标准政策
        sql:=sql+'      m.med_id,price=cast(f10 as decimal(15,4)),price_unit=f11,price1=f6,price2=case when f8='''' then 0 else cast(f8 as decimal(15,2)) end,rate=f7,rate1=f9, valid_from=cast(f12 as datetime),f13,';  //valid_to=cast(f13 as datetime),
//        sql:=sql+'      m.med_id,price=f10,price_unit=f11,price1=f6,price2=case when f8='''' then 0 else cast(f8 as decimal(15,2)) end,rate=f7,rate1=f9, valid_from=cast(f12 as datetime),f13,';  //valid_to=cast(f13 as datetime),
        sql:=sql+'      creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' left join tb_object b on b.obj_type_id=11 and b.zdesc= a.f1';
        sql:=sql+' left join tb_object c on c.obj_type_id=12 and c.zdesc= a.f2';
//        sql:=sql+' left join tb_treedata d on d.district=trim(a.f3)+'' ''+trim(a.f4)';
//        sql:=sql+' left join (select distinct city_code,city_name=prov_name+'' ''+city_name from tb_district) d on d.city_name= a.f3+'' ''+a.f4';
        sql:=sql+' left join (select distinct prov_code,prov_name from tb_district where prov_name<>'''') d on d.prov_name= a.f3';
        sql:=sql+' left join (select distinct city_code,city_name from tb_district where city_name<>'''') e on e.city_name= a.f4';
        sql:=sql+' left join tb_medicine m on m.material_code=a.f5';
        sql:=sql+' select @@ROWCOUNT'; //@@identity';
edit2.text:=sql;
        try
            setprogress(1);
            commandtext:=sql;
            open;
            if recordcount>0 then mi:=fields[0].asinteger;
        finally
            setprogress(0);
        end;
    end;
    if mi>0 then
    begin
        SpeedButton3Click(nil);
        medprice.Last;
        MessageBox(0,pchar('已导入'+inttostr(mi)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
    end;
end;

procedure Tsetmedprice3.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetmedprice3.DSmedpriceDataChange(Sender: TObject;
  Field: TField);
begin
with medprice do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetmedprice3.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetmedprice3.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择省市');
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_medata where type_id=1 and med_id='+inttostr(dxbuttonedit1.tag)+' and id1='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该品种在该地区已有记录,不可重复加入');
//    if recordcount>0 then MessageBox(0,pchar('该品种在该地区已有记录'),'请注意',MB_OK+MB_ICONInformation);
end;
}
if MessageBox(0,'确定加入新的分销标准政策记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_medprice (type_id,district_id,med_id,creat_by,creat_dt) values';
    commandtext:=commandtext+' (4,'+dm.district.fieldbyname('code').asstring+','+inttostr(dxbuttonedit1.tag)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
if mi>0 then medprice.locate('rec_id',mi,[]);
end;

procedure Tsetmedprice3.medpriceBeforeDelete(DataSet: TDataSet);
begin
if medprice.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if datetostr(medprice.fieldbyname('creat_dt').asdatetime)<>datetostr(dt0) then raise Exception.Create('非当天设置记录，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedprice3.medpriceCalcFields(DataSet: TDataSet);
begin
with medprice do
begin
    if fieldbyname('price1').asfloat=0 then fieldbyname('crate').asfloat:=0 else fieldbyname('crate').asfloat:=fieldbyname('price').asfloat/fieldbyname('price1').asfloat*100;
end;
end;

procedure Tsetmedprice3.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetmedprice3.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetmedprice3.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetmedprice3.medpriceBeforeEdit(DataSet: TDataSet);
begin
with medprice do
begin
    if curuserid<>fieldbyname('creat_by').asinteger then raise Exception.Create('非本人设置记录，不可更改');
    if datetostr(medprice.fieldbyname('creat_dt').asdatetime)<>datetostr(dt0) then raise Exception.Create('非当日设置记录，不可更改');
end;
end;

end.
