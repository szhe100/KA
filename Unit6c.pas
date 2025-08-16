unit Unit6c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ImgList, Menus, DB, ADODB, dxEdLib, ExtCtrls, wwSpeedButton,
  DBClient, wwDBNavigator, wwclearpanel, dxDBELib, dxDBTL, dxEditor,
  dxDBEdtr, dxCntner, StdCtrls, Buttons, wwclearbuttongroup, wwradiogroup,
  DBCtrls, dxDBGrid, dxTL, dxDBCtrl, ComCtrls, Comobj, mycds, dxdbtrel,
  dxDBTLCl, dxGrClms;

type
  Tsetmedprice1 = class(TForm)
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
    Label19: TLabel;
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
    Label8: TLabel;
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
    dxDBGrid1MATNR: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1KMEIN: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1KPEIN: TdxDBGridColumn;
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
    medpricesale_team_id: TIntegerField;
    medpriceMATNR: TStringField;
    medpriceKONDA: TStringField;
    dxCheckEdit2: TdxCheckEdit;
    dxDBGrid1Lcustgroup: TdxDBGridLookupColumn;
    medpriceLcustgroup: TStringField;
    medpriceKPEIN: TIntegerField;
    medpriceKMEIN: TStringField;
    SpeedButton2: TSpeedButton;
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
  setmedprice1: Tsetmedprice1;

implementation

uses datamodu, Unit7;

{$R *.DFM}

procedure Tsetmedprice1.FormActivate(Sender: TObject);
begin
{
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
}
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
with dm.cust_group do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=13';
        open;
    end;
{
with dm.sale_team do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=16';
        open;
    end;
}
{
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

procedure Tsetmedprice1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with medprice do if active then close;
with dm.cust_group do if active then close;
with dm.sale_team do if active then close;
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;

dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmedprice1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedprice1.SpeedButton3Click(Sender: TObject);
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
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictname (a.district_id,1),dist2=dbo.fn_getdistrictname (a.district_id,2),';  //[dbo].[fn_getdistrictname] (@code varchar(20),@levelid tinyint)
    commandtext:=commandtext+'  creater=f.zname';
    commandtext:=commandtext+' from tb_medprice a';
//    commandtext:=commandtext+' inner join tb_medicine m on a.med_id =m.med_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.MATNR =m.material_code';
    commandtext:=commandtext+' left join tb_staff f on a.creat_by =f.sta_id';
//    commandtext:=commandtext+' left join (select prov_code,prov_name,city_name from tb_district where level_id=1) d on ZREGIO=d.prov_code '; //a.district_id =d.rec_id';
    if dxCheckEdit2.Checked then
    begin
//        commandtext:=commandtext+' inner join (select channel_id,channel_dtl_id,district_id,MATNR,rec_id=max(rec_id) from tb_medprice where type_id=2 group by channel_id,channel_dtl_id,district_id,MATNR) h on a.rec_id=h.rec_id';
        commandtext:=commandtext+' inner join (select channel_id,channel_dtl_id,district_id,MATNR,valid_from=max(valid_from) from tb_medprice where type_id=2 group by channel_id,channel_dtl_id,district_id,MATNR) h';
        commandtext:=commandtext+'  on a.channel_id=h.channel_id and a.channel_dtl_id=h.channel_dtl_id and a.district_id=h.district_id and a.MATNR=h.MATNR and a.valid_from=h.valid_from';
    end;
    commandtext:=commandtext+' where type_id=2'; //a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
//        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine n where n.med_id='+inttostr(dxButtonEdit1.tag)+' and m.material_code1 like substring(n.material_code1,1,len(n.material_code1)-1)+''%'')';
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and a.ZREGIO like '''+dm.district.fieldbyname('code').asstring+'%''';
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

procedure Tsetmedprice1.FormCreate(Sender: TObject);
begin
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tsetmedprice1.N3Click(Sender: TObject);
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

procedure Tsetmedprice1.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmedprice1.N2Click(Sender: TObject);
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

procedure Tsetmedprice1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmedprice1.medpriceAfterPost(DataSet: TDataSet);
begin
if medprice.ChangeCount>0 then myupdaterefresh(medprice,'tb_medprice','rec_id','');
end;

procedure Tsetmedprice1.medpriceBeforePost(DataSet: TDataSet);
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

procedure Tsetmedprice1.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,unitid: integer;
    s1,s2,s3,s4,s5,s6,s7: string;
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
//从第2行开始导入，导入格式: 1药品编码,2通用名,3商品名,4规格,5生产企业,6计量单位,7整件内装数
//    sbodcd:='导入数据已生成下列单据'+#13#10+'---------------------------';
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        s1:=Trim(sheet.cells[j,1].text);
        s2:=Trim(sheet.cells[j,2].text);
        s3:=Trim(sheet.cells[j,3].text);
        s4:=Trim(sheet.cells[j,4].text);
        s5:=Trim(sheet.cells[j,5].text);
        s6:=Trim(sheet.cells[j,6].text);
        s7:=Trim(sheet.cells[j,7].text);
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 1 from tb_medicine where material_code='''+s1+'''';
            open;
            if recordcount=0 then// continue; //已有该编码品种，不再加入
            begin

                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=0 and zdesc='''+Trim(s6)+'''';
                open;
                if recordcount=0 then unitid:=0 else unitid:=fields[0].asinteger;

                if active then close;
                commandtext:='insert into tb_medicine (material_code,med_name,chm_name,qry_code,specifi,pdt_place,unit_id,qtyperpack,comp_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('''+s1+''','''+s2+''','''+s3+''',dbo.fn_getpy('''+s2+s3+'''),'''+s4+''','''+s5+''','''+inttostr(unitid)+''','''+s7+''','+inttostr(compid)+','+inttostr(curuserid)+',getdate())';
    //showmessage(commandtext);
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
//    SpeedButton3Click(nil);
    setprogress(0);
    MessageBox(0,pchar('数据已导入(共导入'+inttostr(mi)+'个品种,药品编码重复品种未导入。可刷新查询)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedprice1.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetmedprice1.DSmedpriceDataChange(Sender: TObject;
  Field: TField);
begin
with medprice do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
end;
end;

procedure Tsetmedprice1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetmedprice1.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择省市');
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_medata where type_id=1 and med_id='+inttostr(dxbuttonedit1.tag)+' and id1='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该品种在该地区已有记录,不可重复加入');
//    if recordcount>0 then MessageBox(0,pchar('该品种在该地区已有记录'),'请注意',MB_OK+MB_ICONInformation);
end;
}
if MessageBox(0,'确定加入新的区域品种考核价记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
{
    commandtext:='insert into tb_medprice (type_id,comp_id,district_id,med_id,creat_by,creat_dt) values';
    commandtext:=commandtext+' (2,'+inttostr(compid)+','+dm.district.fieldbyname('code').asstring+','+inttostr(dxbuttonedit1.tag)+','+inttostr(curuserid)+',getdate())';
}
    commandtext:='insert into tb_medprice (type_id,comp_id,district_id,ZREGIO,ZCITYNUM,prov_name,med_id,MATNR,creat_by,creat_dt) ';
    commandtext:=commandtext+' select top 1 type_id=2,comp_id='+inttostr(compid)+',district_id=case when b.city_name='''' then b.prov_code else b.city_code end,ZREGIO=b.prov_code,ZCITYNUM=case when b.city_name='''' then '''' else b.city_code end,b.prov_name,';
    commandtext:=commandtext+' med_id,MATNR=a.material_code,creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
    commandtext:=commandtext+' from tb_medicine a left join tb_district b on 1=1';
    commandtext:=commandtext+' where med_id='+inttostr(dxbuttonedit1.tag)+' and (b.prov_code='+dm.district.fieldbyname('code').asstring+' and b.city_name='''' or city_code='+dm.district.fieldbyname('code').asstring+')';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
if mi>0 then medprice.locate('rec_id',mi,[]);
end;

procedure Tsetmedprice1.medpriceBeforeDelete(DataSet: TDataSet);
begin
if medprice.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if datetostr(medprice.fieldbyname('creat_dt').asdatetime)<>datetostr(dt0) then raise Exception.Create('非当天设置记录，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedprice1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetmedprice1.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetmedprice1.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetmedprice1.medpriceBeforeEdit(DataSet: TDataSet);
begin
with medprice do
begin
    if curuserid<>fieldbyname('creat_by').asinteger then raise Exception.Create('非本人设置记录，不可更改');
    if datetostr(medprice.fieldbyname('creat_dt').asdatetime)<>datetostr(dt0) then raise Exception.Create('非当日设置记录，不可更改');
end;
end;

end.
