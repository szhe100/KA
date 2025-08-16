unit Unit266d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, StdCtrls, Buttons, dxdbtrel, ImgList, dxDBEdtr,
  dxDBELib, Comobj, mycds, Menus;

type
  Tsetbusiframe3a = class(TForm)
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    dxDBGrid1material_code1: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
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
    dxDateEdit1: TdxDateEdit;
    Label7: TLabel;
    Shape7: TShape;
    busiframevalid_dt: TDateTimeField;
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
    ADOQuery1modify_dt1: TDateTimeField;
    ADOQuery1creat_dt1: TDateTimeField;
    busiframemodify_dt1: TDateTimeField;
    busiframecreat_dt1: TDateTimeField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    busiframetype_id: TIntegerField;
    busiframetype_id1: TIntegerField;
    busiframeamot: TBCDField;
    busiframerate1: TBCDField;
    busiframefee: TBCDField;
    dxDBGrid1fee: TdxDBGridColumn;
    busiframeCfee: TBCDField;
    busiframevalid: TBooleanField;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    PopupMenu1: TPopupMenu;
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
    busiframetype_id2: TIntegerField;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit4: TdxCheckEdit;
    busiframechannel_id: TIntegerField;
    busiframechannel_dtl_id: TIntegerField;
    busiframechannel: TStringField;
    busiframechannel_dtl: TStringField;
    busiframebod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    busiframefeetype: TStringField;
    busiframeagent1: TStringField;
    busiframeamot1: TBCDField;
    busiframeCrate: TFloatField;
    busiframefee1: TBCDField;
    dxDBGrid1agent1: TdxDBGridColumn;
    dxDBGrid1feetype: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1Crate: TdxDBGridColumn;
    dxDBGrid1fee1: TdxDBGridColumn;
    busiframematerial_code1: TStringField;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbusiframeDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure busiframeCalcFields(DataSet: TDataSet);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
    procedure dtlCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe3a: Tsetbusiframe3a;

implementation

uses datamodu, Unit7, Unit28, Unit16a, Unit16c;

{$R *.DFM}

procedure Tsetbusiframe3a.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe3a.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe3a.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
{
with busiframe do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
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
}
end;

procedure Tsetbusiframe3a.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with busiframe do if active then close;
end;

procedure Tsetbusiframe3a.SpeedButton3Click(Sender: TObject);
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
    commandtext:=commandtext+' m.material_code1,m.pdt_place,bod_cd=dbo.fn_getbodcdbyrecid(a.rec_id),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=g.zname,';
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel(c.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel(c.district,2),';
    commandtext:=commandtext+' dist3=dbo.fn_getdistrictlevel(c.district,3),';
	commandtext:=commandtext+' creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+' ,agent1=dbo.fn_mate_name(b.agent_id),feetype=case b.fee_type_id when 1 then ''推广费(主)'' when 2 then ''推广费(次)'' end';
    commandtext:=commandtext+' ,amot1=b.amot,fee1=b.fee';
    commandtext:=commandtext+' from tb_busiframe3 a';
    commandtext:=commandtext+' left join tb_busiframe3_dtl b on a.rec_id=b.rela_id';
    commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';
    commandtext:=commandtext+' where 1=1';
    if dxCheckEdit3.Checked then commandtext:=commandtext+' and a.creat_by='+inttostr(curuserid);
    if dxCheckEdit4.Checked then commandtext:=commandtext+' and a.valid=1';
//    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_ischildnode(a.district_id,'+dm.district.fieldbyname('obj_id').asstring+')=1';
//    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit2.Tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit3.Tag);
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit4.Tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
    if dxCheckEdit2.Checked then
    begin
        commandtext:=commandtext+' and exists (select 1 from (select agent_id,mate_id,med_id,check_dt=max(check_dt)';
        commandtext:=commandtext+'  from tb_busiframe3 group by agent_id,mate_id,med_id) y';
        commandtext:=commandtext+'  where a.agent_id=y.agent_id and a.mate_id=y.mate_id and a.med_id=y.med_id and a.check_dt=y.check_dt)';
    end;
//edit5.text:=commandtext;
    try
        setprogress(1);
        open;
        if (mi>0) and (active) then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe3a.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe3a.FormActivate(Sender: TObject);
begin
{
with fee_type do
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''推广费(主)''';
        commandtext:=commandtext+'union all select obj_id=2,zdesc=''推广费(次)''';
        open;
    end;
}
end;

procedure Tsetbusiframe3a.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbusiframe3a.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe3a.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe3a.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe3a.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetbusiframe3a.N3Click(Sender: TObject);
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

procedure Tsetbusiframe3a.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe3a.N2Click(Sender: TObject);
var i,mi: integer;
begin
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe3a.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe3a.busiframeCalcFields(DataSet: TDataSet);
begin
with busiframe do
begin
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price2').asfloat-fieldbyname('amot').asfloat-fieldbyname('fee').asfloat;

    if fieldbyname('price1').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('amot1').asfloat/fieldbyname('price1').asfloat;
end;
{
with dtl do
begin
    if busiframe.fieldbyname('price1').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('amot').asfloat/busiframe.fieldbyname('price1').asfloat;
end;
}
end;

procedure Tsetbusiframe3a.busiframeBeforeEdit(DataSet: TDataSet);
begin
//if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可修改');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可修改');
end;

procedure Tsetbusiframe3a.dtlCalcFields(DataSet: TDataSet);
begin
{
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
}
end;

end.
