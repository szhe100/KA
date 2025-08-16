unit Unit59d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tsetdistrirule = class(TForm)
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    sysrule: TClientDataSet;
    DSsysrule: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    sysrulerec_id: TAutoIncField;
    sysrulemed_id: TIntegerField;
    sysrulecreat_by: TIntegerField;
    sysrulecreat_dt: TDateTimeField;
    sysrulemed_code: TStringField;
    sysrulemed_name: TStringField;
    sysrulespecifi: TStringField;
    sysrulepdt_place: TStringField;
    sysrulemed_unit: TStringField;
    sysrulemed_type: TStringField;
    sysruleqtyperpack: TBCDField;
    sysrulecreater: TStringField;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    sysrulemate_name: TStringField;
    sysruletype_id: TWordField;
    sysrulecomp_id: TWordField;
    sysrulemate_id: TIntegerField;
    dxDBGrid1mate_name: TdxDBGridButtonColumn;
    dxDBGrid1med_code: TdxDBGridButtonColumn;
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
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    sysrulechm_name: TStringField;
    sysruledistrict: TIntegerField;
    sysrulecdistrict: TStringField;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    sysrulemodify_by: TIntegerField;
    sysrulemodify_dt: TDateTimeField;
    sysrulemodifier: TStringField;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    sysrulevalid_dt: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    dxDBGrid1creat_by: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDBGrid1mate_id: TdxDBGridColumn;
    dxDBGrid1med_id: TdxDBGridColumn;
    Shape4: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    pricetype: TClientDataSet;
    DSpricetype: TDataSource;
    pricetypeobj_id: TAutoIncField;
    pricetypezdesc: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    N1: TMenuItem;
    SpeedButton5: TSpeedButton;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Label4: TLabel;
    Shape3: TShape;
    Shape5: TShape;
    Label6: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxButtonEdit5: TdxButtonEdit;
    Label7: TLabel;
    Shape6: TShape;
    sysruleagent_id: TAutoIncField;
    sysruleagent: TStringField;
    sysrulelead_id: TAutoIncField;
    sysruleleader: TStringField;
    sysruledist1: TStringField;
    sysruledist2: TStringField;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    sysrulef10: TBooleanField;
    dxDBGrid1f10: TdxDBGridCheckColumn;
    Shape2: TShape;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Shape8: TShape;
    Label12: TLabel;
    Label3: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    sysrulelevel1: TStringField;
    sysrulelevel2: TStringField;
    sysrulelevel3: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    Edit1: TEdit;
    ADOQuery1fyear: TSmallintField;
    ADOQuery1qty2: TBCDField;
    sysrulefyear: TSmallintField;
    sysruleqty2: TBCDField;
    dxDateEdit3: TdxDateEdit;
    Label9: TLabel;
    Shape7: TShape;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSsysruleDataChange(Sender: TObject; Field: TField);
    procedure sysruleBeforeDelete(DataSet: TDataSet);
    procedure sysruleAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1lead_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1med_codeButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure sysruleBeforePost(DataSet: TDataSet);
    procedure sysruleCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure sysruleBeforeEdit(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sysruleAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setdistrirule: Tsetdistrirule;

implementation

uses datamodu, Unit7, Unit16a, Unit28a, Unit16, Unit16c;

{$R *.DFM}

procedure Tsetdistrirule.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetdistrirule.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetdistrirule.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
with sysrule do
begin
    speedbutton1.enabled:=(active=true) and (recordcount>0); // and (fieldbyname('creat_by').asinteger=curuserid); // and (fieldbyname('f10').asboolean=False);
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetdistrirule.sysruleBeforeDelete(DataSet: TDataSet);
begin
//if sysrule.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可删除');
if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人规则，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetdistrirule.sysruleAfterPost(DataSet: TDataSet);
begin
with sysrule do
    if ChangeCount>0 then
    begin
        myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
        refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsetdistrirule.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with sysrule do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.mate_id,a.med_id,a.agent_id,agent=b.mate_name,lead_id=k.sta_id,leader=dbo.fn_staff_name(k.sta_id),e.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+'	b.district,cdistrict=dbo.fn_getdistrict(e.district),med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  level1=dbo.fn_obj_desc(k.level_id1),';
    commandtext:=commandtext+'  level2=dbo.fn_obj_desc(k.level_id2),';
    commandtext:=commandtext+'  level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (e.district,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (e.district,2),';
    commandtext:=commandtext+'	a.f10,a.fyear,a.qty2,a.valid_dt,a.creat_by,a.creat_dt,creater=f.zname,a.modify_dt,a.modify_by,modifier=d.zname';
    commandtext:=commandtext+'	from tb_sysrule a ';
    commandtext:=commandtext+'	left join tb_busimate b on a.agent_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_busimate e on a.mate_id=e.mate_id';
//    commandtext:=commandtext+'  left join tb_busiframe k on a.med_id=k.med_id and dbo.fn_treeischild1(e.district,k.district_id)=1';
//    commandtext:=commandtext+'  left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (e.district,a.med_id,a.valid_dt)';
    commandtext:=commandtext+'  left join tb_busiframe2 k on k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,a.med_id,a.valid_dt)';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'	left join tb_staff f on a.creat_by=f.sta_id';
    commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+'	where a.type_id=5';
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit5.tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit4.tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit3.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (m.med_name like ''%'+Trim(dxEdit1.text)+'%'' or m.chm_name like ''%'+Trim(dxEdit1.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit1.text)+'%'')';
    end;
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetdistrirule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetdistrirule.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit1.SelectAll;
    dxedit1.SetFocus;
end;
end;

procedure Tsetdistrirule.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (sysrule.state in [dsinsert,dsedit]) then sysrule.edit;
    if showmodal= mrOK then
    begin
        sysrule.fieldbyname('lead_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        sysrule.fieldbyname('lead_name').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        sysrule.fieldbyname('lead_id').asinteger:=0;
        sysrule.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsetdistrirule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with sysrule do
    if active=True then close;
with dm.district do
    if active=True then close;
end;

procedure Tsetdistrirule.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetdistrirule.N3Click(Sender: TObject);
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

procedure Tsetdistrirule.N1Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,m1,m2,m3: integer;
    s,t: string;
    mcd: string[20];
begin
if (sysrule.active=false) or (sysrule.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
k := dxDBGrid1.ColumnByFieldName('creat_by').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
i1:= dxDBGrid1.ColumnByFieldName('med_id').Index;
i2:= dxDBGrid1.ColumnByFieldName('district').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if i=0 then
    begin
        m1:=dxDBGrid1.SelectedNodes[i].Values[i1];
        m2:=dxDBGrid1.SelectedNodes[i].Values[i2];
    end
    else
    begin
        if m1<>dxDBGrid1.SelectedNodes[i].Values[i1] then raise Exception.Create('同一申请中，品种应相同');
        if m2<>dxDBGrid1.SelectedNodes[i].Values[i2] then raise Exception.Create('同一申请中，区域应相同');
    end;
//    if (isaccounter(curuserid)=False) and (dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid) then raise Exception.Create('所选记录中有非本人设置规则，不可停用');
//    if dxDBGrid1.SelectedNodes[i].Values[m]=False then raise Exception.Create('所选记录中有已停用规则，不可再次停用');
    s:= s + #13#10+dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[q]; //+' '+dxDBGrid1.SelectedNodes[i].Strings[l]+'级';
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,26)); //bod_type_id=26: 托管费规则停用申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',26,0,'+inttostr(curuserid)+',getdate())';  //cast(convert(char(10),getdate(),20) as datetime),
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price,valid_dt)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,f4,f1,valid_dt';
    commandtext:=commandtext+' from tb_sysrule where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号托管费规则停用申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetdistrirule.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
{
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1mate_id.Visible:=False;
dxDBGrid1med_id.Visible:=False;
}
setprogress(0);
end;

procedure Tsetdistrirule.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
{
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1mate_id.Visible:=False;
dxDBGrid1med_id.Visible:=False;
}
end;

procedure Tsetdistrirule.dxDBGrid1mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if not (sysrule.state in [dsinsert,dsedit]) then sysrule.edit;
    if showmodal= mrOK then
    begin
        sysrule.FieldByName('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
        sysrule.FieldByName('mate_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        sysrule.FieldByName('mate_name').asstring:='';
        sysrule.FieldByName('mate_id').asinteger:=0;
    end;
end;
end;

procedure Tsetdistrirule.dxDBGrid1med_codeButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (sysrule.state in [dsinsert,dsedit]) then sysrule.edit;
    if showmodal= mrOK then
    begin
        sysrule.FieldByName('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        sysrule.FieldByName('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        sysrule.FieldByName('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        sysrule.FieldByName('specifi').asstring:= query1.fieldbyname('specifi').asstring;
        sysrule.FieldByName('pdt_place').asstring:= query1.fieldbyname('pdt_place').asstring;
    end
    else
    begin
        sysrule.FieldByName('med_id').asinteger:= 0;
        sysrule.FieldByName('med_code').asstring:= '';
        sysrule.FieldByName('med_name').asstring:= '';
        sysrule.FieldByName('specifi').asstring:= '';
        sysrule.FieldByName('pdt_place').asstring:= '';
    end;
end;
end;

procedure Tsetdistrirule.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetdistrirule.sysruleBeforePost(DataSet: TDataSet);
begin
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择商业公司及品种');
with sysrule do
begin
    if (fieldbyname('f1').asfloat=0)
        then raise Exception.Create('请输入托管费率');
{
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=3;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
}
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

procedure Tsetdistrirule.sysruleCalcFields(DataSet: TDataSet);
begin
with sysrule do
begin
    if fieldbyname('level_id').asinteger=1
        then fieldbyname('cfee').asfloat:=fieldbyname('f4').asfloat*fieldbyname('f1').asfloat/100;
    if fieldbyname('level_id').asinteger=2
        then fieldbyname('cfee').asfloat:=fieldbyname('f5').asfloat*fieldbyname('f1').asfloat/100;
//    fieldbyname('cfee').asfloat:=fieldbyname('f4').asfloat*fieldbyname('f1').asfloat/100;
end;
end;

procedure Tsetdistrirule.SpeedButton4Click(Sender: TObject);
var mi: integer;
    price,price1,rate: real;
begin
if Trim(dxButtonEdit5.text)='' then raise Exception.Create('请选择代理人');
if Trim(dxButtonEdit4.text)='' then raise Exception.Create('请选择区域经理');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择医院');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if dxDateEdit3.Text='' then raise Exception.Create('请输入生效日期');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=5 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and agent_id='+inttostr(dxButtonEdit5.tag);
//    commandtext:=commandtext+' and lead_id='+inttostr(dxButtonEdit4.tag);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('已有此分销规则,不可重复加入');
    if MessageBox(0,pchar('确定加入本分销规则'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,agent_id,lead_id,mate_id,med_id,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' values (5,'+inttostr(compid)+','+inttostr(dxButtonEdit5.tag)+','+inttostr(dxButtonEdit4.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit3.tag)+','+inttostr(dxButtonEdit1.tag)+','''+dxDateEdit3.Text+''',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    sysrule.locate('rec_id',mi,[]);
end;
end;

procedure Tsetdistrirule.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetdistrirule.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tsetdistrirule.sysruleBeforeEdit(DataSet: TDataSet);
begin
if sysrule.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可更改');
//if sysrule.fieldbyname('f10').asboolean=True then raise Exception.Create('本规则来自合同，不可更改');
//if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置规则，不可更改');
end;

procedure Tsetdistrirule.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,m1,m2,m3: integer;
    s,t: string;
    mcd: string[20];
begin
if (sysrule.active=false) or (sysrule.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
k := dxDBGrid1.ColumnByFieldName('creat_by').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
i1:= dxDBGrid1.ColumnByFieldName('med_id').Index;
i2:= dxDBGrid1.ColumnByFieldName('district').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if i=0 then
    begin
        m1:=dxDBGrid1.SelectedNodes[i].Values[i1];
        m2:=dxDBGrid1.SelectedNodes[i].Values[i2];
    end
    else
    begin
        if m1<>dxDBGrid1.SelectedNodes[i].Values[i1] then raise Exception.Create('同一申请中，品种应相同');
        if m2<>dxDBGrid1.SelectedNodes[i].Values[i2] then raise Exception.Create('同一申请中，区域应相同');
    end;
//    if (isaccounter(curuserid)=False) and (dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid) then raise Exception.Create('所选记录中有非本人设置规则，不可启用');
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    s:= s + #13#10+dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[q]; //+' '+dxDBGrid1.SelectedNodes[i].Strings[l]+'级';
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 10 b.mate_name,mate_name1=e.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+'	from tb_sysrule a ';
    commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_busimate e on a.mate_id1=e.mate_id';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'  left join (select mate_id,med_id,rate from tb_brokermed where comp_id='+inttostr(compid)+') h on a.mate_id1=h.mate_id and a.med_id=h.med_id';
    commandtext:=commandtext+'	where a.med_id in ('+t+')'+' and a.f1*a.f4/100+h.rate > dbo.fn_getprice0('+inttostr(compid)+',b.district,a.med_id)';
//edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:= '下列规则托管费与业务员费用之和超过费用政策，不可申请' + #13#10 + '-------------------------';
        while not eof do
        begin
            s:=s+#13#10+fieldbyname('mate_name').asstring+' '+fieldbyname('mate_name1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where rec_id in ('+t+') and isnull(level_id,0)=0';
    open;
    if recordcount>0 then raise Exception.Create('所选规则中有未设置价格类别,请先设置');
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where rec_id in ('+t+') and isnull(f4,0)=0';
    open;
    if recordcount>0 then raise Exception.Create('所选规则中有未设置当地中标价,请先设置');
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where rec_id in ('+t+') and isnull(f1,0)=0';
    open;
    if recordcount>0 then raise Exception.Create('所选规则中有未设置托管费率,请先设置');
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=24 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,24)); //bod_type_id=24: 托管费规则申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',24,0,'+inttostr(curuserid)+',getdate())';  //cast(convert(char(10),getdate(),20) as datetime),
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price,valid_dt)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,f4,f1,valid_dt';
    commandtext:=commandtext+' from tb_sysrule where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号托管费规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetdistrirule.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetdistrirule.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetdistrirule.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag :=0;
    end;
end;

procedure Tsetdistrirule.SpeedButton5Click(Sender: TObject);
begin
if MessageBox(0,'确定从销售合同中导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,agent_id,lead_id,mate_id,med_id,valid_dt,f10,fyear,qty2,creat_by,creat_dt)';
    commandtext:=commandtext+' select type_id=5,a.comp_id,agent_id=a.broker_id,a.lead_id,mate_id=b.mate_id1,a.med_id,valid_dt=a.dt1,f10=1,fyare=null,qty2=null,a.creat_by,a.creat_dt'; //a.fyare,b.qty2,
    commandtext:=commandtext+' from tb_report01 a,tb_report01dtl b';
    commandtext:=commandtext+' where valid=1 and a.rec_id=b.rec_id and b.mate_id1>0'; // comp_id='+inttostr(compid)+' and
    commandtext:=commandtext+'  and not exists (select 1 from tb_sysrule s where s.type_id=5 and a.comp_id=s.comp_id and isnull(a.broker_id,0)=isnull(s.agent_id,0) and isnull(b.mate_id1,0)=isnull(s.mate_id,0)';
    // and a.broker_id=s.agent_id and b.mate_id1=s.mate_id';  // and a.lead_id=s.lead_id
    commandtext:=commandtext+'  and a.med_id=s.med_id)';   // and s.valid_dt=a.dt1
//edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
SpeedButton3Click(nil);
end;

procedure Tsetdistrirule.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2,id3,id4 : integer;
    dt: TDatetime;
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
//导入格式:1代理人id1, 2医院id2, 3药品编码id3, 4生效日期dt
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0; id2:=0; id3:=0; id4:=0;
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
//                edit1.text:=commandtext;
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无医院数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and isnull(stop_yn,0)=0 and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 医院数据有误或已停用';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药品数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药品数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期数据'
                else dt:=strtodatetime(sheet.cells[j,4].text);
            //取区域经理
            if active=true then close;
            commandtext:='select top 1 sta_id from tb_busiframe_dtl a,tB_busimate b where a.med_id='+inttostr(id3)+' and b.mate_id='+inttostr(id2)+' and (b.district=a.district_id or dbo.fn_treeischild(b.district,a.district_id)=1)';
            commandtext:=commandtext+'  and valid_dt<='''+datetimetostr(dt)+''' order by valid_dt';
            open;
            if recordcount>0 then id4:=fieldbyname('sta_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 未取得区域经理';
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        XL.Quit;
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0; id2:=0; id3:=0; id4:=0;
//导入格式:1代理人id1, 2医院id2, 3药品编码id3, 4生效日期dt
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无医院数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 医院数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无药品数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,3].text+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 药品数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期数据'
                else dt:=strtodatetime(sheet.cells[j,4].text);
            //取区域经理
            if active=true then close;
            commandtext:='select top 1 sta_id from tb_busiframe_dtl a,tB_busimate b where b.mate_id='+inttostr(id2)+' and b.district=a.district_id and med_id='+inttostr(id3);
            commandtext:=commandtext+'  and valid_dt<='''+datetimetostr(dt)+''' order by valid_dt';
            open;
            if recordcount>0 then id4:=fieldbyname('sta_id').asinteger;

            if active=true then close;
//导入格式:1代理人id1, 2医院id2, 3药品编码id3, 4生效日期dt, id4区域经理id
            commandtext:='if not exists (select 1 from tb_sysrule where comp_id='+inttostr(compid)+' and type_id=5';
            commandtext:=commandtext+' and agent_id='+inttostr(id1);
            commandtext:=commandtext+' and mate_id='+inttostr(id2);
            commandtext:=commandtext+' and med_id='+inttostr(id3);
            commandtext:=commandtext+' and valid_dt='''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' insert into tb_sysrule (type_id,comp_id,agent_id,lead_id,mate_id,med_id,valid_dt,f10,creat_by,creat_dt)';
            commandtext:=commandtext+' values ( 5,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id4)+','+inttostr(id2)+','+inttostr(id3)+','''+datetimetostr(dt)+''',0,';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
//edit1.text:=commandtext;
//exit;
            execute;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'已成功导入(重复记录不再导入)'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetdistrirule.SpeedButton1Click(Sender: TObject);
var mi: integer;
begin
with sysrule do
begin
    if (active=False) or (recordcount=0) then exit;
//    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置的分销规则，不可修改');
end;

if (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit3.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxButtonEdit5.text)='')
    then raise Exception.Create('请设置修改数据');

if MessageBox(0,'确定修改记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_sysrule set modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
    if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+',agent_id='+inttostr(dxButtonEdit5.tag);
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+',lead_id='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+',mate_id='+inttostr(dxButtonEdit3.tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+',med_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxDateEdit3.Text)<>'' then commandtext:=commandtext+',valid_dt='''+dxDateEdit3.Text+'''';
    commandtext:=commandtext+' where rec_id='+ sysrule.fieldbyname('rec_id').asstring;
//edit1.Text:=commandtext;
    execute;
end;
refreshmyrecord(sysrule,dm.Refreshcds,0,'a.rec_id',sysrule.fieldbyname('rec_id').asinteger);
end;

procedure Tsetdistrirule.sysruleAfterInsert(DataSet: TDataSet);
begin
with sysrule do
begin
    fieldbyname('comp_id').asinteger:=compid;
    fieldbyname('type_id').asinteger:=3;
    fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
    fieldbyname('creat_by').asinteger:=curuserid;
    fieldbyname('creater').asstring:=curuser;
end;
end;

end.
