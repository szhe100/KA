unit Unit266c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, StdCtrls, Buttons, dxdbtrel, ImgList, dxDBEdtr,
  dxDBELib, Comobj, mycds, Menus;

type
  Tsetbusiframe3 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
    Shape3: TShape;
    Label4: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    busiframerec_id: TAutoIncField;
    busiframecomp_id: TWordField;
    busiframedistrict_id: TIntegerField;
    busiframemed_id: TIntegerField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1remark: TdxDBGridColumn;
    busiframedist1: TStringField;
    busiframedist2: TStringField;
    busiframedist3: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    busiframemed_code: TStringField;
    busiframemed_name: TStringField;
    busiframespecifi: TStringField;
    busiframemed_unit: TStringField;
    busiframepdt_place: TStringField;
    busiframeqtyperpack: TBCDField;
    Shape6: TShape;
    Label6: TLabel;
    dxDateEdit1: TdxDateEdit;
    Label7: TLabel;
    Shape7: TShape;
    dxCheckEdit1: TdxCheckEdit;
    busiframevalid_dt: TDateTimeField;
    dxButtonEdit2: TdxButtonEdit;
    Label2: TLabel;
    Shape2: TShape;
    dxButtonEdit3: TdxButtonEdit;
    Shape4: TShape;
    Label3: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    busiframeagent_id: TIntegerField;
    busiframeagent: TStringField;
    busiframebroker_id: TIntegerField;
    busiframebroker: TStringField;
    busiframemate_id: TIntegerField;
    busiframemate_name: TStringField;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    busiframemodify_dt: TDateTimeField;
    busiframemodify_by: TIntegerField;
    busiframemodifier: TStringField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframecreater: TStringField;
    busiframeprice: TBCDField;
    busiframerate: TBCDField;
    busiframeprice1: TBCDField;
    busiframeprice2: TBCDField;
    busiframeprice3: TBCDField;
    dxDBGrid1rate1: TdxDBGridColumn;
    busiframeremark: TStringField;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    Label5: TLabel;
    ADOQuery1modify_dt1: TDateTimeField;
    ADOQuery1creat_dt1: TDateTimeField;
    busiframemodify_dt1: TDateTimeField;
    busiframecreat_dt1: TDateTimeField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    type1: TClientDataSet;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    busiframetype_id: TIntegerField;
    busiframetype_id1: TIntegerField;
    busiframeamot: TBCDField;
    busiframerate1: TBCDField;
    busiframefee: TBCDField;
    dxDBGrid1fee: TdxDBGridColumn;
    busiframeCfee: TBCDField;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    busiframevalid: TBooleanField;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dxDBGrid1Cfee: TdxDBGridColumn;
    busiframecheck_by: TIntegerField;
    busiframecheck_dt: TDateTimeField;
    busiframechecker: TStringField;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxCheckEdit2: TdxCheckEdit;
    busiframebod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dtl: TClientDataSet;
    dtlrec_id: TAutoIncField;
    dtlmate_id: TIntegerField;
    dtlmate_name: TStringField;
    dtlfee_type_id: TIntegerField;
    dtlLfee_type: TStringField;
    dtlrate: TBCDField;
    dtlCrate: TFloatField;
    dtlrela_id: TIntegerField;
    dtlcreat_by: TIntegerField;
    dtlcreat_dt: TDateTimeField;
    dtlcreater: TStringField;
    dtlmodify_by: TIntegerField;
    dtlmodifier: TStringField;
    dtlmodify_dt: TDateTimeField;
    DSdtl: TDataSource;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2agent: TdxDBGridColumn;
    dxDBGrid2Lfee_type: TdxDBGridLookupColumn;
    dxDBGrid2amot: TdxDBGridColumn;
    dxDBGrid2rate: TdxDBGridColumn;
    dxDBGrid2creat_dt: TdxDBGridDateColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    dxDBGrid2modify_dt: TdxDBGridColumn;
    dxDBGrid2modifier: TdxDBGridColumn;
    SpeedButton5: TSpeedButton;
    dxButtonEdit5: TdxButtonEdit;
    Label10: TLabel;
    Shape5: TShape;
    fee_type: TClientDataSet;
    AutoIncField4: TAutoIncField;
    StringField2: TStringField;
    DSfee_type: TDataSource;
    dtlagent_id: TIntegerField;
    dtlagent: TStringField;
    dtlamot: TBCDField;
    dtlfee: TBCDField;
    dxDBGrid2fee: TdxDBGridColumn;
    type3: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    DStype3: TDataSource;
    busiframetype_id2: TIntegerField;
    N9: TMenuItem;
    N10: TMenuItem;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit4: TdxCheckEdit;
    busiframechannel_id: TIntegerField;
    busiframechannel_dtl_id: TIntegerField;
    busiframechannel: TStringField;
    busiframechannel_dtl: TStringField;
    busiframeLchannel: TStringField;
    busiframeLchannel_dtl: TStringField;
    busiframebod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    busiframematerial_code1: TStringField;
    busiframeprice10: TBCDField;
    dxDBGrid1price10: TdxDBGridColumn;
    Label12: TLabel;
    dxDBGrid1agent: TdxDBGridColumn;
    Edit3: TEdit;
    busiframematerial_code: TStringField;
    dxDBGrid1material_code1: TdxDBGridColumn;
    Label11: TLabel;
    dxDBGrid1rec_id: TdxDBGridColumn;
    Label13: TLabel;
    busiframeagent_code: TStringField;
    dxDBGrid1agent_code: TdxDBGridColumn;
    dtlagent_code: TStringField;
    dxDBGrid2agent_code: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbusiframeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure busiframeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure busiframeAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure busiframeCalcFields(DataSet: TDataSet);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dtlCalcFields(DataSet: TDataSet);
    procedure dtlBeforePost(DataSet: TDataSet);
    procedure dtlBeforeDelete(DataSet: TDataSet);
    procedure dtlAfterPost(DataSet: TDataSet);
    procedure N9Click(Sender: TObject);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe3: Tsetbusiframe3;

implementation

uses datamodu, Unit7, Unit28, Unit16a, Unit16c;

{$R *.DFM}

procedure Tsetbusiframe3.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetbusiframe3.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe3.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
with busiframe do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
    speedbutton5.enabled:=(active) and (recordcount>0);
    if (active) and (recordcount>0) then
    begin
        dxButtonEdit5.text:=fieldbyname('agent').asstring;
        dxButtonEdit5.tag:=fieldbyname('agent_id').asinteger;
    end
    else
    begin
        dxButtonEdit5.text:='';
        dxButtonEdit5.tag:=0;
        if dtl.active then close;
        exit;
    end;
	if (active=false) or (recordcount=0) or (fieldbyname('rec_id').asinteger=0) then exit;
end;
with dtl do
begin
    if tag=busiframe.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    if busiframe.fieldbyname('rec_id').asinteger=0 then exit;
    commandtext:='select a.rec_id,a.agent_id,agent=b.mate_name,agent_code=b.mate_code,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id,';
    commandtext:=commandtext+' a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+' from tb_busiframe3_dtl a';
    commandtext:=commandtext+' left join tb_busimate b on a.agent_id=b.mate_id';
    commandtext:=commandtext+' left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+' where a.rela_id='+busiframe.fieldbyname('rec_id').asstring;
edit2.text:=commandtext;    
    open;
    tag:=busiframe.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetbusiframe3.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择药品');
//if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择业务员');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择业务负责人');
if Trim(dxButtonEdit4.text)='' then raise Exception.Create('请选择客户');
//if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择城市');
if dxDateEdit1.Text='' then raise Exception.Create('请输入生效日期');

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate where mate_id='+inttostr(dxButtonEdit4.Tag)+') b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+dxDateEdit1.text+''')';
    commandtext:=commandtext+' 	and month=month('''+dxDateEdit1.text+''')';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本商业公司所在区域生效日期年月已结账，不可加入规则');

    if active then close;
    commandtext:='select top 1 1 from tb_busiframe3'; // where broker_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' where agent_id='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit4.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.Text+'''';
    open;
//    if recordcount>0 then raise Exception.Create('已有该记录，不可重复设置');
    if recordcount>0 then
    begin
        if MessageBox(0,pchar('已有相同规则，确定加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    end
    else
    begin
        if MessageBox(0,pchar('确定加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    end;
{
    if active then close;
    commandtext:='select top 1 district from tb_busimate where mate_id='+inttostr(dxButtonEdit3.tag);
    open;
    id1:=fieldbyname('district').asinteger;
}
    if active then close;
    commandtext:='insert into tb_busiframe3 (agent_id,mate_id,med_id,valid_dt,creat_by,creat_dt)'; //district_id,
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit3.tag)+','+inttostr(dxButtonEdit4.tag)+',';
//    commandtext:=commandtext+inttostr(id1)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','''+dxDateEdit1.Text+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    busiframe.locate('rec_id',mi,[]);
end;
end;

procedure Tsetbusiframe3.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with busiframe do if active then close;
with type1 do if active then close;
with type2 do if active then close;
with type3 do if active then close;
with fee_type do if active then close;
end;

procedure Tsetbusiframe3.busiframeBeforeDelete(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=35'; // and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id='+busiframe.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单,请先删除');
//    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe3.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with dtl do if active then
begin
    tag:=0;
    close;
end;
with busiframe do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select creat_dt1=cast(convert(char(10),a.creat_dt,20) as datetime),modify_dt1=cast(convert(char(10),a.modify_dt,20) as datetime),';
//    commandtext:=commandtext+' a.*,h.price10,broker='''',c.mate_name,agent=d.mate_name,m.med_code,m.material_code1,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,'; //pdt_place=dbo.fn_mate_name(m.pdt_id),
    commandtext:=commandtext+' a.*,broker='''',c.mate_name,agent=d.mate_name,agent_code=d.mate_code,m.med_code,m.material_code,m.material_code1,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,'; //pdt_place=dbo.fn_mate_name(m.pdt_id),
//    commandtext:=commandtext+' price10=dbo.fn_getprice1a(c.prov_code,c.city_code,m.material_code,a.valid_dt),'; //dbo.fn_getprice1(c.district,a.med_id,a.valid_dt),
    commandtext:=commandtext+' price10=dbo.fn_getprice1(c.district,a.med_id,a.valid_dt),'; //
    commandtext:=commandtext+' m.pdt_place,bod_cd=dbo.fn_getbodcdbyrecid(a.rec_id),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=g.zname,';
    commandtext:=commandtext+' dist1=c.prov_name,';
    commandtext:=commandtext+' dist2=c.city_name,';
//    commandtext:=commandtext+' dist1=dbo.fn_getdistrictname (c.district,1),';
//    commandtext:=commandtext+' dist2=dbo.fn_getdistrictname (c.district,2),';
    commandtext:=commandtext+' dist3='''',';
	commandtext:=commandtext+' creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_busiframe3 a';
//    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
//    commandtext:=commandtext+' left join (select x.mate_id,x.mate_name,x.district,prov_code,prov_name=BEZEI,city_code,city_name=CITY1 from tb_busimate x left join tb_district y on x.district=y.rec_id) c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join (select mate_id,mate_name,district,prov_code='''',prov_name=BEZEI,city_code='''',city_name=CITY1 from tb_busimate where mate_type_id=2) c on a.mate_id=c.mate_id';
//    commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';
//    commandtext:=commandtext+' left join (select distinct prov_code,prov_name,city_code,city_name from tb_district) h on (a.district_id=h.city_code or a.district_id=h.prov_code)';
//    commandtext:=commandtext+' left join (select ZREGIO,med_id,price10=price from tb_medprice where type_id=1) h on ZREGIO=dbo.fn_getdistrictlevel(c.district,1) and a.med_id=h.med_id';
    commandtext:=commandtext+' where 1=1';
    if dxCheckEdit3.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    if dxCheckEdit4.Checked then commandtext:=commandtext+' and a.valid=1';
    if dxCheckEdit1.Checked then
    begin
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_ischildnode(a.district_id,'+dm.district.fieldbyname('obj_id').asstring+')=1';
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and c.district like '''+dm.district.fieldbyname('code').asstring+'%''';
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (c.prov_code='''+dm.district.fieldbyname('code').asstring+''' or c.city_code='''+dm.district.fieldbyname('code').asstring+''')';
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (c.prov_name like '''+dm.district.fieldbyname('name0').asstring+'%'' or c.city_name like '''+dm.district.fieldbyname('name0').asstring+'%'')';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (c.prov_name like '''+dm.district.fieldbyname('name0').asstring+'%'' or c.city_name like '''+dm.district.fieldbyname('name0').asstring+'%'')';

        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit4.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
    end;
    if dxCheckEdit2.Checked then
    begin
        commandtext:=commandtext+' and exists (select 1 from (select agent_id,mate_id,med_id,check_dt=max(check_dt)';
        commandtext:=commandtext+'  from tb_busiframe3 group by agent_id,mate_id,med_id) y';
        commandtext:=commandtext+'  where a.agent_id=y.agent_id and a.mate_id=y.mate_id and a.med_id=y.med_id and a.check_dt=y.check_dt)';
    end;
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if (mi>0) and (active) then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe3.busiframeBeforePost(DataSet: TDataSet);
begin
with busiframe do
begin
	if (fieldbyname('valid_dt').asfloat>0) and (fieldbyname('mate_id').asinteger>0) then
    begin
        with dm.pubqry do
        begin
            if active then close;
            commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate where mate_id='+busiframe.fieldbyname('mate_id').asstring+') b';
            commandtext:=commandtext+' where a.settled=1 and year=year('''+busiframe.fieldbyname('valid_dt').asstring+''')';
            commandtext:=commandtext+' 	and month=month('''+busiframe.fieldbyname('valid_dt').asstring+''')';
            commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
//edit5.Text:=commandtext;
            open;
            if recordcount>0 then raise Exception.Create('本商业公司所在区域,生效日期所在年月已结账，不可设置');
{
            if active then close;
            commandtext:='select sum(amot) from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring;
//edit5.Text:=commandtext;
            open;
            if (recordcount=0) or (busiframe.fieldbyname('amot').asfloat<>fields[0].asfloat)
                then raise Exception.Create('主表的 应付金额/盒 与明细表中 应付金额/盒 合计金额不符，不可保存');
}
        end;
    end;
    if state=dsinsert then
    begin
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe3.FormActivate(Sender: TObject);
begin
{
with type1 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''全额返款'' union select obj_id=2,zdesc=''部分返款'' union select obj_id=3,zdesc=''终端基层''';
        open;
    end;
with type2 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''差额比例'' union select obj_id=2,zdesc=''全额比例''';
        open;
    end;
with type3 do
    if active=False then   //不办个户、②不交资料、③不办个户+不交资料
    begin
//        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''不办个户'' union select obj_id=2,zdesc=''不交资料'' union select obj_id=3,zdesc=''不办个户+不交资料''';
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''已办个户'' union select obj_id=2,zdesc=''不办个户'' union select obj_id=3,zdesc=''已办个户不交资料'' union select obj_id=4,zdesc=''不办个户不交资料''';
        open;
    end;
}
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
with fee_type do
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''推广费(主)''';
        commandtext:=commandtext+'union all select obj_id=2,zdesc=''推广费(次)''';
        open;
    end;
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tsetbusiframe3.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbusiframe3.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsetbusiframe3.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe3.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetbusiframe3.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetbusiframe3.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe3','rec_id','');
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select sum(amot) from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring;
//edit5.Text:=commandtext;
    open;
    if (recordcount=0) or (busiframe.fieldbyname('amot').asfloat<>fields[0].asfloat)
        then raise Exception.Create('主表的 应付金额/盒 与明细表中 应付金额/盒 合计金额不符，不可保存');
end;
}
end;

procedure Tsetbusiframe3.SpeedButton1Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='update a set district_id=b.district from tb_busiframe3 a,tb_busimate b';
    commandtext:=commandtext+' where a.agent_id=b.mate_id';
    commandtext:=commandtext+'  and b.district<>isnull(a.district_id,0)';
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
SpeedButton3Click(nil);
end;

procedure Tsetbusiframe3.SpeedButton6Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    mi,J,m1,m2: integer;
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
//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
    mi:=0;j:=2;  //第1行开始 每行一单
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),f5 varchar(100),f6 varchar(100),f7 varchar(100),f8 varchar(100),f9 varchar(100),f10 varchar(100),';
    sql:=sql+' f11 varchar(100),f12 varchar(100),f13 varchar(100),f14 varchar(100),f15 varchar(100),';
    sql:=sql+' channel_id int,channel_dtl_id int,mate_id int,mate_id1 int,mate_id2 int,med_id int)';
//    sql:=sql+' channel_id int,channel_dtl_id int,sta_id int,sta_id1 int,mate_id int,mate_id1 int,med_id int)';
//    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15)';
    sql:=sql+' insert @tab (line_no,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15)';
    while (sheet.cells[j,2].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+''','''+Trim(sheet.cells[j,5].text);  //replace('123%','%','')
        sql:=sql+''','''+Trim(sheet.cells[j,6].text)+''',replace('''+Trim(sheet.cells[j,7].text)+''',''%'',''''),replace('''+Trim(sheet.cells[j,8].text)+''','','',''''),replace('''+Trim(sheet.cells[j,9].text)+''','','',''''),replace('''+Trim(sheet.cells[j,10].text)+''','','',''''),';
        sql:=sql+'replace('''+Trim(sheet.cells[j,11].text)+''',''%'',''''),replace('''+Trim(sheet.cells[j,12].text)+''','','',''''),'''+Trim(sheet.cells[j,13].text)+''','''+Trim(sheet.cells[j,14].text)+''','''+Trim(sheet.cells[j,15].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
    sql1:=sql;  //导入数据无错误时，用sql1 插入数据
//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
    sql:=sql+' select top 10 * from ( select top 5 info=''第''+line_no+''行 无商业公司或数据无效'' from @tab a where f1='''' or not exists (select 1 from tb_busimate b where mate_type_id=2 and b.mate_name =a.f1)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无业务负责人编码或数据无效'' from @tab a where f2='''' or not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_code =a.f2)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无关联编码或数据无效'' from @tab a where f3='''' or not exists (select 1 from tb_medicine m where m.material_code=a.f3)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无启用日期或数据无效'' from @tab where f4='''' or try_cast(f4 as datetime) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无渠道名称或数据无效'' from @tab a where a.f5='''' or not exists (select 1 from tb_object b where b.obj_type_id=11 and b.zdesc=a.f5)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无子渠道名称或数据无效'' from @tab a where a.f6='''' or not exists (select 1 from tb_object b where b.obj_type_id=12 and b.zdesc=a.f6)';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 比率数据无效'' from @tab where f7<>'''' and try_cast(f7 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无销售单价或数据无效'' from @tab where f8='''' or try_cast(f8 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无考核单价或数据无效'' from @tab where f9='''' or try_cast(f9 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 无应付金额/盒或数据无效'' from @tab a where f10='''' or try_cast(f10 as decimal(15,4)) is null';
//    sql:=sql+' union all select top 5 ''第''+line_no+''行促销率数据无效'' from @tab where f11<>'''' and try_cast(f11 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 促销费/盒数据无效'' from @tab where f12='''' or try_cast(f12 as decimal(15,4)) is null';
    sql:=sql+' union all select top 5 ''第''+line_no+''行 明细业务负责人编码数据无效'' from @tab a where f13<>'''' and not exists (select 1 from tb_busimate b where mate_type_id=4 and b.mate_code =a.f13)';
    sql:=sql+' ) a order by info';
//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
edit1.text:=commandtext;        
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
        if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
        if active then close;
//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
        sql:=sql1;  //取前脚本
        sql:=sql+' update a set channel_id=b.obj_code,channel_dtl_id=c.obj_code,mate_id=d.mate_id,mate_id1=e.mate_id,mate_id2=case when f.mate_id>0 then f.mate_id else e.mate_id end,med_id=m.med_id';
        sql:=sql+' from @tab a';
        sql:=sql+' left join tb_object b on b.obj_type_id=11 and b.zdesc=a.f5';
        sql:=sql+' left join tb_object c on c.obj_type_id=12 and c.zdesc=a.f6';
        sql:=sql+' left join tb_busimate d on d.mate_type_id=2 and d.mate_name =a.f1';
        sql:=sql+' left join tb_busimate e on e.mate_type_id=4 and e.mate_code =a.f2';
        sql:=sql+' left join tb_busimate f on f.mate_type_id=4 and f.mate_code =a.f13';
        sql:=sql+' left join tb_medicine m on m.material_code =a.f3';

        sql:=sql+' declare @cnt1 int,@cnt2 int,@cnt3 int,@cnt4 int';

        sql:=sql+' insert tb_busiframe3 (comp_id,channel_id,channel_dtl_id,mate_id,agent_id,med_id,valid_dt,creat_by,creat_dt)';
        sql:=sql+' select distinct comp_id=1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.mate_id,agent_id=a.mate_id1,a.med_id,valid_dt=cast(a.f4 as datetime), creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a '; // distinct 排除 导入数据中 重复记录 
//        sql:=sql+' where not exists (select 1 from tb_busiframe3 k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0)';
        sql:=sql+' where not exists (select 1 from tb_busiframe3 k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0)';
        sql:=sql+' set @cnt2=@@ROWCOUNT';
       
// 以下为 有主要数据 的 update tb_busiframe3 价格类数据
        sql:=sql+' update k set rate=case when f7='''' then 0 else cast(a.f7 as decimal(15,4)) end,price1=cast(a.f8 as decimal(15,4)),price2=cast(a.f9 as decimal(15,4)),'; //amot,fee 由 tb_busiframe_dtl 触发器汇总 =cast(a.f10 as decimal(15,4)),';
        sql:=sql+'  rate1=case when a.f11='''' then 0 else cast(a.f11 as decimal(15,4)) end,bod_desc=a.f14,remark=a.f15';
        sql:=sql+' from tb_busiframe3 k';
        sql:=sql+' inner join @tab a on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.med_id=a.med_id';
        sql:=sql+'    and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0'; // and rate1=cast(f11 as decimal(15,4))';
        sql:=sql+' set @cnt1=@@ROWCOUNT';

//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
{
// 以下为 无主要数据 的 insert tb_brokermed
        sql:=sql+' insert tb_busiframe3 (comp_id,channel_id,channel_dtl_id,mate_id,agent_id,med_id,price1,price2,rate,rate1,bod_desc,valid_dt,creat_by,creat_dt)'; //remark, rate, amot,fee,rate1,
        sql:=sql+' select distinct comp_id=1,channel_id=a.channel_id,channel_dtl_id=a.channel_dtl_id,a.mate_id,agent_id=a.mate_id1,a.med_id,';
        sql:=sql+' price1=cast(a.f8 as decimal(15,4)),price2=cast(a.f9 as decimal(15,4)),';
        sql:=sql+' rate=case when f7='''' then 0 else cast(a.f7 as decimal(15,4)) end, rate1=case when f11='''' then 0 else cast(a.f11 as decimal(15,4)) end,';  // tb_busiframe3.amot,fee 由tb_busiframe3_dtl.amot,fee 经触发器汇入
        sql:=sql+' bod_desc=f14, valid_dt=cast(a.f4 as datetime), creat_by='+inttostr(curuserid)+',creat_dt=getdate()'; //remark=a.f13,
        sql:=sql+' from @tab a';
        sql:=sql+' where not exists (select 1 from tb_busiframe3 k where k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime))';
        sql:=sql+' set @cnt2=@@ROWCOUNT';
}
{ 此处导入的是单据摘要，不是备注，导入的单据摘要 在上面语句已存入 tb_busiframe3.bod_desc
//维护 备注
        sql:=sql+' update k set remark=f14 from tb_busiframe3 k';
        sql:=sql+' inner join @tab a on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime)';
        sql:=sql+' where a.f14<>''''';
}
        // 以下为 有明细数据 的 update tb_busiframe3_dtl 价格类数据
        sql:=sql+' update b set rate=cast(f7 as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)),modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0';
        sql:=sql+' inner join tb_busiframe3_dtl b on k.rec_id=b.rela_id and b.agent_id=a.mate_id2';
        sql:=sql+' where (isnull(b.amot,0)<>cast(f10 as decimal(15,4)) or isnull(b.fee,0)<>cast(f12 as decimal(15,4)))';
        sql:=sql+' set @cnt3=@@ROWCOUNT';
//导入 格式: 1商业公司,2业务负责人编码,3关联编码,4生效日期,5渠道名称,6子渠道名称,7比率,8销售单价,9考核单价,10应付金额/盒,11促销率,12促销费/盒,13明细业务负责人编码(选填), 14单据摘要, 15备注
// 以下为 无明细数据 的 insert tb_busiframe3_dtl
        sql:=sql+' insert tb_busiframe3_dtl (rela_id,agent_id,rate,amot,fee,fee_type_id,creat_by,creat_dt)';
        sql:=sql+' select rela_id=k.rec_id,agent_id=a.mate_id2,';
//        sql:=sql+' rate=cast(case when f7='''' then 0 else f7 end as decimal(15,4)),amot=cast(case when f10='''' then 0 else f10 end as decimal(15,4)),fee=cast(case when f12='''' then 0 else f12 end as decimal(15,4)),';
        sql:=sql+' rate=cast(case when f7='''' then ''0.0000'' else f7 end as decimal(15,4)),amot=cast(f10 as decimal(15,4)),fee=cast(f12 as decimal(15,4)),';
        sql:=sql+' fee_type_id=case when mate_id1=mate_id2 then 1 else 2 end,';
        sql:=sql+' creat_by='+inttostr(curuserid)+',creat_dt=getdate()';
        sql:=sql+' from @tab a';
        sql:=sql+' inner join tb_busiframe3 k on k.channel_id=a.channel_id and k.channel_dtl_id=a.channel_dtl_id and k.mate_id=a.mate_id and k.agent_id=a.mate_id1 and k.med_id=a.med_id and k.valid_dt=cast(a.f4 as datetime) and isnull(k.valid,0)=0';
        sql:=sql+' where not exists (select 1 from tb_busiframe3_dtl b where k.rec_id=b.rela_id and b.agent_id=a.mate_id2)';
        sql:=sql+' set @cnt4=@@ROWCOUNT';
        sql:=sql+' select isnull(@cnt1,0)+isnull(@cnt3,0),isnull(@cnt2,0)+isnull(@cnt4,0)';

        commandtext:=sql;
edit3.text:=commandtext;
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
        if m1+m2=0 then MessageBox(0,pchar('导入数据与主表及明细表数据一致'),'请注意',MB_OK+MB_ICONInformation)
        else
        begin
            SpeedButton3Click(nil);
            MessageBox(0,pchar('主表及明细表合计新增'+inttostr(m2)+'条记录, 更新'+inttostr(m1)+'条记录'),'请注意',MB_OK+MB_ICONInformation);
            if (m2>0) and (busiframe.active) then busiframe.Last;  //如有新增，locate到最后记录
        end;
    end;
end;

procedure Tsetbusiframe3.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1valid) then
begin
    if (ANode.Values[dxDBGrid1valid.Index] = True) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetbusiframe3.N3Click(Sender: TObject);
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

procedure Tsetbusiframe3.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe3.N2Click(Sender: TObject);
var i,mi: integer;
begin
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
//dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe3.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
//dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe3.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,i3,i4,i5,i6,m1,m2,m3 : integer;
    s,t,boddesc: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:=''; boddesc:='';
mi:=0;
o := dxDBGrid1.ColumnByFieldName('agent').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
l := dxDBGrid1.ColumnByFieldName('bod_desc').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    if dxDBGrid1.SelectedNodes[i].Strings[l]<>'' then boddesc:=dxDBGrid1.SelectedNodes[i].Strings[l];
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计: '+formatfloat('###,##0笔',mi);

with dm.pubqry do
begin

    if active then close;
    commandtext:='select distinct mate_id,agent_id,med_id from tb_busiframe3 where rec_id in ('+t+')';
    open;
    if recordcount>1 then raise Exception.Create('同一申请单中，商业公司、业务负责人、品种须唯一');

    if active then close;
    commandtext:='select 1 from tb_busiframe3 where rec_id in ('+t+') and (isnull(channel_id,0)=0 or isnull(channel_dtl_id,0)=0';
    commandtext:=commandtext+' or not exists(select 1 from tb_object where obj_type_id=11 and obj_code=channel_id) or not exists(select 1 from tb_object where obj_type_id=12 and obj_code=channel_dtl_id))';
    open;
    if recordcount>0 then raise Exception.Create('请正确设置渠道及子渠道');

    if active then close;
{
    commandtext:='select top 3 b.mate_name,b.valid_dt from tb_settlelist a,(select b.district,b.mate_name,f.valid_dt from tb_busiframe3 f,tb_busimate b where f.rec_id in ('+t+') and f.mate_id=b.mate_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year(b.valid_dt) and month=month(b.valid_dt)';
    commandtext:=commandtext+' 	and dbo.fn_treeischild(b.district,a.district_id)=1';
}
    commandtext:='select top 3 b.district,b.mate_name,f.valid_dt';
    commandtext:=commandtext+' from tb_busiframe3 f,tb_busimate b';
    commandtext:=commandtext+' where f.rec_id in ('+t+') and f.mate_id=b.mate_id';
    commandtext:=commandtext+' and exists (select 1 from tb_settlelist a where a.settled=1 and year=year(f.valid_dt) and month=month(f.valid_dt) and dbo.fn_treeischild(b.district,a.district_id)=1)';
edit1.text:=commandtext;    
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列商业公司所在区域生效日期年月已结账，不可申请'+ #13#10;
        s:=s+'-----------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('mate_name').asstring+' '+fieldbyname('valid_dt').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;

    commandtext:='select creat_dt1=cast(convert(char(10),a.creat_dt,20) as datetime),modify_dt1=cast(convert(char(10),a.modify_dt,20) as datetime),';
    commandtext:=commandtext+' a.*,broker='''',c.mate_name,agent=d.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,'; //pdt_place=dbo.fn_mate_name(m.pdt_id),
    commandtext:=commandtext+' m.pdt_place,bod_cd=dbo.fn_getbodcdbyrecid(a.rec_id),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=g.zname,';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictname(c.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictname(c.district,2),';
    commandtext:=commandtext+' dist3=dbo.fn_getdistrictname(c.district,3),';
	commandtext:=commandtext+' creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' from tb_busiframe3 a';
//    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';

    commandtext:='select top 3 b.district,b.mate_name,m.med_code,m.material_code,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_busiframe3 f';
    commandtext:=commandtext+' left join tb_busimate b on f.mate_id=b.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on f.med_id=m.med_id';
    commandtext:=commandtext+' left join (select rela_id,amot=sum(isnull(amot,0)) tb_busiframe3_dtl where rela_id in ('+t+')) c on f.rec_id=c.rela_id';
    commandtext:=commandtext+' where f.rec_id in ('+t+') and f.amot<>isnull(c.amot,0)';
edit2.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列商业公司品种主表的 应付金额/盒 与明细表中 应付金额/盒 合计金额不符，不可申请'+ #13#10;
        s:=s+'--------------------------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('mate_name').asstring+' '+fieldbyname('material_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;

    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=35 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,35)); //bod_type_id=35: 分销销售促销规则申请单
with dm.pubqry do
begin
    setprogress(1);
    if active then close;

    commandtext:='insert tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,bod_desc,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',35,0,'''+boddesc+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert tb_bill_dtl (bod_id,med_id)';  //,price,price1,qty,valid_dt,remark
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id';
    commandtext:=commandtext+' from tb_busiframe3 where rec_id in ('+t+')';
    execute;
    if active then close;
    setprogress(0);
    s:='已生成'+mcd+'号分销销售促销规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbusiframe3.busiframeCalcFields(DataSet: TDataSet);
begin
with busiframe do
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price2').asfloat-fieldbyname('amot').asfloat-fieldbyname('fee').asfloat;
end;

procedure Tsetbusiframe3.busiframeBeforeEdit(DataSet: TDataSet);
begin
//if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可修改');
if busiframe.fieldbyname('valid').asboolean then raise Exception.Create('本记录已启用，不可修改');
if busiframe.state in [dsEdit,dsInsert] then busiframe.post;
end;

procedure Tsetbusiframe3.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:=query1.fieldbyname('mate_code').asstring+' '+query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag :=0;
    end;
end;

procedure Tsetbusiframe3.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if (active=false) or (recordcount=0) then exit;
    if fieldbyname('valid').asboolean then raise Exception.Create('本规则已启用，不可加入');
end;
if dxButtonEdit5.tag=0 then raise Exception.Create('请选择成员业务负责人');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring+' and agent_id='+inttostr(dxButtonEdit5.tag);
{
    commandtext:='select top 1 1 from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring+' and mate_id='+busiframe.fieldbyname('mate_id').asstring;
    commandtext:=commandtext+' and agent_id='+inttostr(dxButtonEdit5.tag)+' and med_id='+busiframe.fieldbyname('med_id').asstring;
}
edit2.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本规则已有该成员业务负责人，不可重复设置');
    if active then close;
    commandtext:='insert tb_busiframe3_dtl (agent_id,mate_id,med_id,rela_id,fee_type_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit5.tag)+','+busiframe.fieldbyname('mate_id').asstring+','+busiframe.fieldbyname('med_id').asstring+',';
    commandtext:=commandtext+busiframe.fieldbyname('rec_id').asstring+',';
    if dxButtonEdit5.tag=busiframe.fieldbyname('agent_id').asinteger then commandtext:=commandtext+'1,' else commandtext:=commandtext+'2,';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
edit2.text:=commandtext;    
    open;
    mi:=fields[0].asinteger;
    dtl.tag:=0; // can refresh
    DSbusiframeDataChange(nil,nil);
    if mi>0 then dtl.locate('rec_id',mi,[]);
end;
end;

procedure Tsetbusiframe3.dtlCalcFields(DataSet: TDataSet);
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then
begin
    dtl.fieldbyname('crate').asfloat:=0;
    exit;
end;
with dtl do
begin
    if busiframe.fieldbyname('price1').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('amot').asfloat/busiframe.fieldbyname('price1').asfloat;
end;
end;

procedure Tsetbusiframe3.dtlBeforePost(DataSet: TDataSet);
begin
with dtl do
begin
    if fieldbyname('fee_type_id').asinteger=0 then raise Exception.Create('请选择费用类别');
//    if fieldbyname('rate').asfloat=0 then raise Exception.Create('请输入费用');
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

procedure Tsetbusiframe3.dtlBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 a.bod_cd from tb_bill a,tb_bill_stadtl c where a.bod_type_id<100 and a.bod_id=c.bod_id';
    commandtext:=commandtext+' and c.rule_id='+ dtl.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本成员规则已发生交易('+fieldbyname('bod_cd').asstring+'号单)，不可删除');
end;
if MessageBox(0,'确定删除本成员业务负责人规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe3.dtlAfterPost(DataSet: TDataSet);
begin
if dtl.ChangeCount>0 then myupdaterefresh(dtl,'tb_busiframe3_dtl','rec_id','');
with busiframe do
    if (active) and (recordcount>0)
        then refreshmyrecord(busiframe,dm.Refreshcds,0,'a.rec_id',busiframe.fieldbyname('rec_id').asinteger);
end;

procedure Tsetbusiframe3.N9Click(Sender: TObject);
var i,mi,o,p,q,k,l,m,n : integer;
    s,t: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='确定删除下列规则:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
o := dxDBGrid1.ColumnByFieldName('agent').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m] then raise Exception.Create('所选记录中有已启用规则，不可删除');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计: '+formatfloat('###,##0笔',mi);

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=35'; // and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单,请先删除');
//    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可删除');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

with dm.pubqry do
begin
    if active then close;
    commandtext:='delete from tb_busiframe3 where rec_id in ('+t+')';
    open;
end;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    busiframe.locate('rec_id',dxDBGrid1.SelectedNodes[i].Values[n],[]);
    busiframe.delete;
end;
end;

procedure Tsetbusiframe3.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetbusiframe3.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

end.
