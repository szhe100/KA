unit Unit266a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, StdCtrls, Buttons, dxdbtrel, ImgList, dxDBEdtr,
  dxDBELib, Comobj, mycds, Menus;

type
  Tsetbusiframe9 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
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
    dxDBGrid1rec_id: TdxDBGridColumn;
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
    dxDBGrid2Crate: TdxDBGridColumn;
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
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe9: Tsetbusiframe9;

implementation

uses datamodu, Unit7, Unit28, Unit16a, Unit16c;

{$R *.DFM}

procedure Tsetbusiframe9.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe9.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe9.DSbusiframeDataChange(Sender: TObject;
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
    commandtext:='select a.rec_id,a.agent_id,agent=b.mate_name,a.mate_id,mate_name=dbo.fn_mate_name(a.mate_id),a.fee_type_id,a.amot,a.fee,a.rate,a.rela_id,';
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

procedure Tsetbusiframe9.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择药品');
//if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择业务员');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择代理人');
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
    if recordcount>0 then raise Exception.Create('已有该记录，不可重复设置');

    if MessageBox(0,pchar('确定加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
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

procedure Tsetbusiframe9.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with busiframe do if active then close;
with type1 do if active then close;
with type2 do if active then close;
with type3 do if active then close;
with fee_type do if active then close;
end;

procedure Tsetbusiframe9.busiframeBeforeDelete(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe9.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select creat_dt1=cast(convert(char(10),a.creat_dt,20) as datetime),modify_dt1=cast(convert(char(10),a.modify_dt,20) as datetime),';
    commandtext:=commandtext+' a.*,broker='''',c.mate_name,agent=d.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,'; //pdt_place=dbo.fn_mate_name(m.pdt_id),
    commandtext:=commandtext+' m.pdt_place,bod_cd=dbo.fn_getbodcdbyrecid(a.rec_id),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=g.zname,';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel(c.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel(c.district,2),';
    commandtext:=commandtext+' dist3=dbo.fn_getdistrictlevel(c.district,3),';
	commandtext:=commandtext+' creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_busiframe3 a';
//    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';
    commandtext:=commandtext+' where 1=1';
    if dxCheckEdit3.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    if dxCheckEdit4.Checked then commandtext:=commandtext+' and a.valid=1';
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_ischildnode(a.district_id,'+dm.district.fieldbyname('obj_id').asstring+')=1';
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
edit5.text:=commandtext;
    try
        setprogress(1);
        open;
        if (mi>0) and (active) then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe9.busiframeBeforePost(DataSet: TDataSet);
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
            if active then close;
            commandtext:='select sum(amot) from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring;
//edit5.Text:=commandtext;
            open;
            if (recordcount=0) or (busiframe.fieldbyname('amot').asfloat<>fields[0].asfloat)
                then raise Exception.Create('主表的 应付金额/盒 与明细表中 应付金额/盒 合计金额不符，不可保存');
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

procedure Tsetbusiframe9.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe9.FormActivate(Sender: TObject);
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
end;

procedure Tsetbusiframe9.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbusiframe9.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe9.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe9.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe9.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetbusiframe9.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe3','rec_id','');
end;

procedure Tsetbusiframe9.SpeedButton1Click(Sender: TObject);
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

procedure Tsetbusiframe9.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,sb: string;
    J,id1,id2,id3,id4,id5,id6,id14,mi,ni: integer;
    dt: TDatetime;
    rate,price1,price2,amot,rate1,fee: real;
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
//导入 格式: 1商业公司,2代理人,3产品编码,4生效日期,5客户类别,6促销类别,7税率,8销售单价,9结算单价,10应付金额/盒,11促销率,12促销费/盒,13备注,14合规类型)
    while (sheet.cells[j,1].text<>'') and (length(serror)<300) do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,4].text);
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 生效日期有误';
                end;
            end;

            if (id1>0) and (dt>0) then
            begin
                if active then close;
                commandtext:='select top 1 1'; // b.district,b.mate_name,f.valid_dt';
                commandtext:=commandtext+' from tb_busimate b';
                commandtext:=commandtext+' where b.mate_id='+inttostr(id1);
                commandtext:=commandtext+' and exists (select 1 from tb_settlelist a where a.settled=1 and year=year('''+datetostr(dt)+''') and month=month('''+datetostr(dt)+''') and dbo.fn_treeischild(b.district,a.district_id)=1)';
                open;
                if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司所在区域生效日期年月已结账，不可加入规则';
            end;

            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无客户类别'
            else if (sheet.cells[j,5].text<>'全额返款') and (sheet.cells[j,5].text<>'部份返款') and (sheet.cells[j,5].text<>'部分返款') then serror:=serror+#13#10+'第'+inttostr(j)+'行 客户类别有误';

            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销类别'
            else if (sheet.cells[j,6].text<>'差额比例') and (sheet.cells[j,6].text<>'全额比例') then serror:=serror+#13#10+'第'+inttostr(j)+'行 促销类别有误';
{
            if sheet.cells[j,14].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无合规类别'
            else if (sheet.cells[j,14].text<>'已办个户') and (sheet.cells[j,14].text<>'不办个户') and (sheet.cells[j,14].text<>'已办个户不交资料') and (sheet.cells[j,14].text<>'不办个户不交资料') then serror:=serror+#13#10+'第'+inttostr(j)+'行 促销类别有误';
            // 1已办个户、2不办个户、3已办个户不交资料、4不办个户不交资料
}            
            if (sheet.cells[j,7].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无税率'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,7].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 税率有误';
                end;
            end;
            if (sheet.cells[j,8].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无销售单价'
            else
            begin
                try
                    price1:=strtofloat(cleardeli(sheet.cells[j,8].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 销售单价有误';
                end;
            end;
            if (sheet.cells[j,9].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无结算单价'
            else
            begin
                try
                    price2:=strtofloat(cleardeli(sheet.cells[j,9].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 结算单价有误';
                end;
            end;
            if (sheet.cells[j,10].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无应付金额'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,10].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 应付金额有误';
                end;
            end;
            if (sheet.cells[j,11].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销率'
            else
            begin
                try
                    rate1:=strtofloat(cleardeli(sheet.cells[j,11].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 促销率有误';
                end;
            end;
            if (sheet.cells[j,12].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销费'
            else
            begin
                try
                    fee:=strtofloat(cleardeli(sheet.cells[j,12].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 促销费有误';
                end;
            end;
{           //因有明细表，可能有多个明细记录，此处不检查主记录重复
            if (id1>0) and (id2>0) and (id3>0) and (dt>0) then
            begin
                if active then close;
                commandtext:='select top 1 1 from tb_busiframe3 where mate_id='+inttostr(id1)+' and agent_id='+inttostr(id2);
                commandtext:=commandtext+' and med_id='+inttostr(id3)+' and valid_dt='''+datetimetostr(dt)+'''';
//if j=2 then edit1.text:=commandtext;
//if j=3 then edit2.text:=commandtext;
                open;
                if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 与已有记录重复';
            end;
}
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//导入 格式: 1商业公司,2代理人,3产品编码,4生效日期,5客户类别,6促销类别,7税率,8销售单价,9结算单价,10应付金额/盒,11促销率,12促销费/盒,13备注,14合规类型)
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    id1:=0;id2:=0;id3:=0;id4:=0;id5:=0;id6:=0;id14:=0;
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,4].text);
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 生效日期有误';
                end;
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司类别'
            else if (sheet.cells[j,5].text='全额返款') then id5:=1
            else if (sheet.cells[j,5].text='部份返款') or (sheet.cells[j,5].text='部分返款') then id5:=2
            else serror:=serror+#13#10+'第'+inttostr(j)+'行 客户类别有误';
            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销类别'
            else if (sheet.cells[j,6].text='差额比例') then id6:=1
            else if (sheet.cells[j,6].text='全额比例') then id6:=2
            else serror:=serror+#13#10+'第'+inttostr(j)+'行 促销类别有误';
{
            if (sheet.cells[j,14].text='不办个户') then id14:=1 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,14].text='不交资料') then id14:=2 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,14].text='不办个户+不交资料') then id14:=3; //、②不交资料、③不办个户+不交资料') then id6:=1
}
            if (sheet.cells[j,14].text='已办个户') then id14:=1 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,14].text='不办个户') then id14:=2 //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,14].text='已办个户不交资料') then id14:=3  //、②不交资料、③不办个户+不交资料') then id6:=1
            else if (sheet.cells[j,14].text='不办个户不交资料') then id14:=4; //、②不交资料、③不办个户+不交资料') then id6:=1

            if (sheet.cells[j,7].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无税率'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,7].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 税率有误';
                end;
            end;
            if (sheet.cells[j,8].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无销售单价'
            else
            begin
                try
                    price1:=strtofloat(cleardeli(sheet.cells[j,8].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 销售单价有误';
                end;
            end;
            if (sheet.cells[j,9].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无结算单价'
            else
            begin
                try
                    price2:=strtofloat(cleardeli(sheet.cells[j,9].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 结算单价有误';
                end;
            end;
            if (sheet.cells[j,10].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无应付金额'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,10].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 应付金额有误';
                end;
            end;
            if (sheet.cells[j,11].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销率'
            else
            begin
                try
                    rate1:=strtofloat(cleardeli(sheet.cells[j,11].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 促销率有误';
                end;
            end;
            if (sheet.cells[j,12].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无促销费'
            else
            begin
                try
                    fee:=strtofloat(cleardeli(sheet.cells[j,12].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 促销费有误';
                end;
            end;
            if active then close;
            commandtext:='select top 1 rec_id from tb_busiframe3 where mate_id='+inttostr(id1)+' and agent_id='+inttostr(id2);
            commandtext:=commandtext+' and med_id='+inttostr(id3)+' and valid_dt='''+datetimetostr(dt)+'''';
//if j=2 then edit1.text:=commandtext;
//if j=3 then edit2.text:=commandtext;
            open;
//            if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 与已有记录重复';
            if (recordcount=0) then
            begin

//导入 格式: 1商业公司,2代理人,3产品编码,4生效日期,5客户类别,6促销类别,7税率,8销售单价,9结算单价,10应付金额/盒,11促销率,12促销费/盒,13备注)
                if active then close;
                commandtext:='insert into tb_busiframe3 (mate_id,agent_id,med_id,valid_dt,type_id,type_id1,type_id2,rate,price1,price2,amot,rate1,fee,remark,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','''+datetimetostr(dt)+''','+inttostr(id5)+','+inttostr(id6)+','+inttostr(id14)+',';
                commandtext:=commandtext+floattostr(rate)+','+floattostr(price1)+','+floattostr(price2)+','+floattostr(amot)+','+floattostr(rate1)+','+floattostr(fee)+','''+sheet.cells[j,13].text+''',';
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
                open;
                mi:=fields[0].asinteger;
                if active then close;
                commandtext:='insert into tb_busiframe3_dtl (rela_id,agent_id,mate_id,med_id,amot,fee,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id2)+','+inttostr(id1)+','+inttostr(id3)+','+floattostr(amot)+','+floattostr(fee)+','+inttostr(curuserid)+',getdate())';
edit4.text:=commandtext;
                execute;
			end
            else
            begin
                mi:=fields[0].asinteger;
                if active then close;
                commandtext:='if not exists (select 1 from tb_busiframe3_dtl where rela_id='+inttostr(mi);
                commandtext:=commandtext+' and agent_id='+inttostr(id2)+' and mate_id='+inttostr(id1)+' and med_id='+inttostr(id3)+')';
                commandtext:=commandtext+' insert into tb_busiframe3_dtl (rela_id,agent_id,mate_id,med_id,amot,fee,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id2)+','+inttostr(id1)+','+inttostr(id3)+','+floattostr(amot)+','+floattostr(fee)+','+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' else update tb_busiframe3_dtl set amot='+floattostr(amot)+',fee='+floattostr(fee)+',modify_by='+inttostr(curuserid)+',modify_dt=getdate() where rela_id='+inttostr(mi);
                commandtext:=commandtext+' 	and agent_id='+inttostr(id2)+' and mate_id='+inttostr(id1)+' and med_id='+inttostr(id3); //+')';
edit3.text:=commandtext;
                execute;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
//    SpeedButton3Click(nil);
//    if mi>0 then busiframe.locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'已成功导入(可刷新查看)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetbusiframe9.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetbusiframe9.N3Click(Sender: TObject);
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

procedure Tsetbusiframe9.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe9.N2Click(Sender: TObject);
var i,mi: integer;
begin
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe9.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe9.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,i3,i4,i5,i6,m1,m2,m3 : integer;
    s,t: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
o := dxDBGrid1.ColumnByFieldName('agent').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
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
edit5.text:=commandtext;    
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
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel(c.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel(c.district,2),';
    commandtext:=commandtext+' dist3=dbo.fn_getdistrictlevel(c.district,3),';
	commandtext:=commandtext+' creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' from tb_busiframe3 a';
//    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';

    commandtext:='select top 3 b.district,b.mate_name,m.med_code,m.material_code1,m.med_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_busiframe3 f';
    commandtext:=commandtext+' left join tb_busimate b on f.mate_id=b.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on f.med_id=m.med_id';
    commandtext:=commandtext+' left join (select rela_id,amot=sum(isnull(amot,0)) tb_busiframe3_dtl where rela_id in ('+t+')) c on f.rec_id=c.rela_id';
    commandtext:=commandtext+' where f.rec_id in ('+t+') and f.amot<>isnull(c.amot,0)';
edit5.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:='下列商业公司品种主表的 应付金额/盒 与明细表中 应付金额/盒 合计金额不符，不可申请'+ #13#10;
        s:=s+'--------------------------------------------------------------------------------';  //+ #13#10

        while not eof do
        begin
            s := s+ #13#10 +fieldbyname('mate_name').asstring+' '+fieldbyname('material_code1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
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

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',35,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id)';  //,price,price1,qty,valid_dt
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id';
    commandtext:=commandtext+' from tb_busiframe3 where rec_id in ('+t+')';
    execute;
    if active then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号分销销售促销规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbusiframe9.busiframeCalcFields(DataSet: TDataSet);
begin
with busiframe do
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price2').asfloat-fieldbyname('amot').asfloat-fieldbyname('fee').asfloat;
end;

procedure Tsetbusiframe9.busiframeBeforeEdit(DataSet: TDataSet);
begin
//if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可修改');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可修改');
end;

procedure Tsetbusiframe9.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag :=0;
    end;
end;

procedure Tsetbusiframe9.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if (active=false) or (recordcount=0) then exit;
    if fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可加入');
end;
if dxButtonEdit5.tag=0 then raise Exception.Create('请选择代理人');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_busiframe3_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring+' and mate_id='+busiframe.fieldbyname('mate_id').asstring;
    commandtext:=commandtext+' and agent_id='+inttostr(dxButtonEdit5.tag)+' and med_id='+busiframe.fieldbyname('med_id').asstring;
edit2.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本组已有该代理人，不可重复设置');
    if active then close;
    commandtext:='insert into tb_busiframe3_dtl (agent_id,mate_id,med_id,rela_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit5.tag)+','+busiframe.fieldbyname('mate_id').asstring+','+busiframe.fieldbyname('med_id').asstring+',';
    commandtext:=commandtext+busiframe.fieldbyname('rec_id').asstring+',';
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

procedure Tsetbusiframe9.dtlCalcFields(DataSet: TDataSet);
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

procedure Tsetbusiframe9.dtlBeforePost(DataSet: TDataSet);
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

procedure Tsetbusiframe9.dtlBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 a.bod_cd from tb_bill a,tb_bill_stadtl c where a.bod_type_id<100 and a.bod_id=c.bod_id';
    commandtext:=commandtext+' and c.rule_id='+ dtl.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本成员规则已发生交易('+fieldbyname('bod_cd').asstring+'号单)，不可删除');
end;
if MessageBox(0,'确定删除本代理人成员规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe9.dtlAfterPost(DataSet: TDataSet);
begin
if dtl.ChangeCount>0 then myupdaterefresh(dtl,'tb_busiframe3_dtl','rec_id','');
with busiframe do
    if (active) and (recordcount>0)
        then refreshmyrecord(busiframe,dm.Refreshcds,0,'a.rec_id',busiframe.fieldbyname('rec_id').asinteger);
end;

procedure Tsetbusiframe9.N9Click(Sender: TObject);
var i,mi,o,p,q,k,l,m,n : integer; //  ,i1,i2,i3,i4,i5,i6,m1,m2,m3
    s,t: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='确定删除下列规则:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
//o := dxDBGrid1.ColumnByFieldName('agent').Index;
//p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
//q := dxDBGrid1.ColumnByFieldName('med_name').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，请重新选择');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=35 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可删除');
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

end.
