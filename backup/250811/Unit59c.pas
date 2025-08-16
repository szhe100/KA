unit Unit59c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds, Comobj;

type
  Tsettrustrule = class(TForm)
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
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    sysrulemate_name: TStringField;
    sysruletype_id: TWordField;
    sysrulecomp_id: TWordField;
    sysrulemate_id: TIntegerField;
    dxDBGrid1mate_name: TdxDBGridButtonColumn;
    dxDBGrid1material_code1: TdxDBGridButtonColumn;
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
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    sysrulechm_name: TStringField;
    sysruledistrict: TIntegerField;
    sysrulecdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    sysrulef1: TBCDField;
    sysrulef2: TBCDField;
    sysrulef3: TBCDField;
    sysrulef4: TBCDField;
    dxDBGrid1f1: TdxDBGridColumn;
    sysrulemodify_by: TIntegerField;
    sysrulemodify_dt: TDateTimeField;
    sysrulemodifier: TStringField;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    sysrulevalid: TBooleanField;
    sysrulevalid_dt: TDateTimeField;
    Label13: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    dxDBGrid1creat_by: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDBGrid1mate_id: TdxDBGridColumn;
    dxDBGrid1med_id: TdxDBGridColumn;
    dxDBGrid1district: TdxDBGridColumn;
    Shape4: TShape;
    Label5: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    pricetype: TClientDataSet;
    DSpricetype: TDataSource;
    pricetypeobj_id: TAutoIncField;
    pricetypezdesc: TStringField;
    sysrulemate_name1: TStringField;
    sysrulemate_id1: TIntegerField;
    sysrulelevel_id: TWordField;
    sysruleCfee: TFloatField;
    dxDBGrid1valid_dt: TdxDBGridDateColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    Label8: TLabel;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1type_id: TWordField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1mate_id1: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1level_id: TWordField;
    ADOQuery1f1: TBCDField;
    ADOQuery1f2: TBCDField;
    ADOQuery1f3: TBCDField;
    ADOQuery1f4: TBCDField;
    ADOQuery1f5: TBCDField;
    ADOQuery1f6: TBCDField;
    ADOQuery1valid: TBooleanField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    sysrulef5: TBCDField;
    sysrulef6: TBCDField;
    sysrulerate: TBCDField;
    sysrulestop_dt: TDateTimeField;
    sysrulestop_by: TIntegerField;
    sysrulestop_for: TStringField;
    sysrulestoper: TStringField;
    sysrulestop_yn: TBooleanField;
    dxDBGrid1f2: TdxDBGridColumn;
    SpeedButton6: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    sysrulefee1: TBCDField;
    sysrulefee2: TBCDField;
    sysrulefee3: TBCDField;
    sysruledt1: TDateTimeField;
    sysruledt2: TDateTimeField;
    sysruledt3: TDateTimeField;
    sysruledt4: TDateTimeField;
    dxDBGrid1fee1: TdxDBGridColumn;
    dxDBGrid1fee2: TdxDBGridColumn;
    dxDBGrid1fee3: TdxDBGridColumn;
    dxDBGrid1dt1: TdxDBGridDateColumn;
    dxDBGrid1dt2: TdxDBGridDateColumn;
    dxDBGrid1dt3: TdxDBGridDateColumn;
    dxDBGrid1dt4: TdxDBGridDateColumn;
    Label4: TLabel;
    Label6: TLabel;
    sysrulechannel_id: TIntegerField;
    sysrulechannel_dtl_id: TIntegerField;
    sysrulechannel: TStringField;
    sysrulechannel_dtl: TStringField;
    dxEdit5: TdxEdit;
    sysrulematerial_code1: TStringField;
    Label7: TLabel;
    sysruleLchannel: TStringField;
    sysruleLchannel_dtl: TStringField;
    dxDBGrid1Lchannel: TdxDBGridLookupColumn;
    dxDBGrid1Lchannel_dtl: TdxDBGridLookupColumn;
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
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1lead_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1material_code1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure sysruleBeforePost(DataSet: TDataSet);
    procedure sysruleCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure sysruleBeforeEdit(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N7Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  settrustrule: Tsettrustrule;

implementation

uses datamodu, Unit7, Unit16a, Unit28a, Unit16;

{$R *.DFM}

procedure Tsettrustrule.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsettrustrule.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsettrustrule.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(sysrule.active) and (sysrule.recordcount>0);
end;

procedure Tsettrustrule.sysruleBeforeDelete(DataSet: TDataSet);
begin
if (sysrule.fieldbyname('valid').asboolean) //or (sysrule.fieldbyname('stop_yn').asboolean)
    then raise Exception.Create('本规则已启用，不可删除');
if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置规则，不可删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=24'; // and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id='+sysrule.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本规则已生成'+fieldbyname('bod_cd').asstring+'号申请单,请先删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsettrustrule.sysruleAfterPost(DataSet: TDataSet);
begin
with sysrule do
    if ChangeCount>0 then
    begin
        myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
        refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsettrustrule.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with sysrule do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.med_id,a.mate_id,b.mate_name,b.rate,a.mate_id1,mate_name1=e.mate_name,m.med_code,m.material_code1,m.med_name,m.chm_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+'	b.district,cdistrict=dbo.fn_getdistrict(b.district),med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'	a.level_id,a.f1,a.f2,a.f3,a.f4,a.f5,f6,valid,valid_dt,a.creat_by,a.creat_dt,creater=c.zname,a.modify_dt,a.modify_by,modifier=d.zname,';
    commandtext:=commandtext+'	a.fee1,a.dt1,a.fee2,a.dt2,a.fee3,a.dt3,a.dt4,a.stop_yn,a.stop_by,a.stop_dt,a.stop_for,stoper=f.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id)';
    commandtext:=commandtext+'	from tb_sysrule a ';
    commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_busimate e on a.mate_id1=e.mate_id';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'	left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+'	left join tb_staff f on a.stop_by=f.sta_id';
    commandtext:=commandtext+'	where a.type_id=4';
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit3.tag);
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (m.med_name like ''%'+Trim(dxEdit1.text)+'%'' or m.chm_name like ''%'+Trim(dxEdit1.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit1.text)+'%'')';
        if dxCheckEdit2.Checked then commandtext:=commandtext+' and a.valid=1';
        if not dxCheckEdit3.Checked then commandtext:=commandtext+' and isnull(a.stop_yn,0)=0';
    end;
    if Trim(dxEdit5.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where m.med_id=a.med_id and (m.med_code='''+Trim(dxEdit5.text)+''' or m.material_code='''+Trim(dxEdit5.text)+''' or m.material_code1='''+Trim(dxEdit5.text)+''' or m.med_name like ''%'+Trim(dxEdit5.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit5.text)+'%''))';
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

procedure Tsettrustrule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsettrustrule.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsettrustrule.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tsettrustrule.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (sysrule.state in [dsinsert,dsedit]) then sysrule.edit;
    if showmodal= mrOK then
    begin
        sysrule.fieldbyname('lead_id').asinteger:=pickstaff.query1.fieldbyname('sta_id').asinteger;
        sysrule.fieldbyname('lead_name').asstring:=pickstaff.query1.fieldbyname('zname').asstring;
    end
    else
    begin
        sysrule.fieldbyname('lead_id').asinteger:=0;
        sysrule.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsettrustrule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with sysrule do
    if active then close;
with pricetype do
    if active then close;
end;

procedure Tsettrustrule.FormCreate(Sender: TObject);
begin
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tsettrustrule.N3Click(Sender: TObject);
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

procedure Tsettrustrule.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1mate_id.Visible:=False;
dxDBGrid1med_id.Visible:=False;
dxDBGrid1district.Visible:=False;
setprogress(0);
end;

procedure Tsettrustrule.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1rec_id.Visible:=False;
dxDBGrid1mate_id.Visible:=False;
dxDBGrid1med_id.Visible:=False;
dxDBGrid1district.Visible:=False;
end;

procedure Tsettrustrule.dxDBGrid1mate_nameButtonClick(Sender: TObject;
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

procedure Tsettrustrule.dxDBGrid1material_code1ButtonClick(Sender: TObject;
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
//        sysrule.FieldByName('med_type').asstring:= query1.fieldbyname('med_type').asstring;
//        sysrule.FieldByName('med_unit').asstring:= query1.fieldbyname('med_unit').asstring;
    end
    else
    begin
        sysrule.FieldByName('med_id').asinteger:= 0;
        sysrule.FieldByName('med_code').asstring:= '';
        sysrule.FieldByName('med_name').asstring:= '';
        sysrule.FieldByName('specifi').asstring:= '';
        sysrule.FieldByName('pdt_place').asstring:= '';
//        sysrule.FieldByName('med_type').asstring:= '';
//        sysrule.FieldByName('med_unit').asstring:= '';
    end;
end;
end;

procedure Tsettrustrule.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active) and (recordcount=0) then append;
end;

procedure Tsettrustrule.sysruleBeforePost(DataSet: TDataSet);
begin
{
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择商业公司及品种');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=1 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+sysrule.fieldbyname('mate_id').asstring+' and med_id='+sysrule.fieldbyname('med_id').asstring;
    commandtext:=commandtext+' and rec_id<>'+inttostr(sysrule.fieldbyname('rec_id').asinteger);
//edit1.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('已有此医院及品种的记录，不可再次加入');
end;
}
with sysrule do
begin
    if fieldbyname('mate_id').asinteger=0 then raise Exception.Create('请选择商业公司及品种');
//    if (fieldbyname('f1').asfloat=0) then raise Exception.Create('请输入托管费率');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=3;
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

procedure Tsettrustrule.sysruleCalcFields(DataSet: TDataSet);
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

procedure Tsettrustrule.SpeedButton4Click(Sender: TObject);
var mi: integer;
    price,price1,rate: real;
begin
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择商业公司');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择医院');
//if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
with dm.pubqry do
begin
{
    if active then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=4'; // and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and mate_id1='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('已有该托管费规则，不可重复设置');
}
{
    if active then close;
    commandtext:='select top 1 a.price,a.price1,a.price4,a.price8,b.rate from tb_medata a,tb_busimate b ';
    commandtext:=commandtext+' where a.med_id='+inttostr(dxButtonEdit1.tag)+' and a.comp_id='+inttostr(compid)+' and a.type_id=1';
    commandtext:=commandtext+'  and b.mate_id='+inttostr(dxButtonEdit2.tag)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
    commandtext:=commandtext+'  and (a.price8>0 or a.price4>0)';
    commandtext:=commandtext+' order by a.valid_dt desc';
edit1.text:=commandtext;    
    open;
    if recordcount=0 then raise Exception.Create('该品种在商业所在地区尚未设置中标价或自主定价，请先设置');
    if fieldbyname('price').asfloat=0
        then price:=fieldbyname('price4').asfloat  //省中标价
        else price:=fieldbyname('price').asfloat;  //原省中标价
    if price=0 then price:=fieldbyname('price8').asfloat;  //自主定价
//    price:=fieldbyname('price').asfloat;
//    price1:=fieldbyname('price').asfloat;  //供货价
    rate:=fieldbyname('rate').asfloat;  //配送率
}
    price:=0;
    price1:=0;
    rate:=0;
{
	if dxButtonEdit1.Text<>'' then
    begin
        if active then close;
        commandtext:='select top 1 a.price,a.price1,a.price4,a.price8,b.rate from tb_medata a,tb_busimate b ';
        commandtext:=commandtext+' where a.med_id='+inttostr(dxButtonEdit1.tag)+' and a.comp_id='+inttostr(compid)+' and a.type_id=1';
        commandtext:=commandtext+'  and b.mate_id='+inttostr(dxButtonEdit2.tag)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
        commandtext:=commandtext+'  and (a.price8>0 or a.price4>0)';
        commandtext:=commandtext+' order by a.valid_dt desc';
    edit1.text:=commandtext;
        open;
//        if recordcount=0 then raise Exception.Create('该品种在商业所在地区尚未设置中标价或自主定价，请先设置');  // 2019.12.18 注销
		if recordcount>0 then
        begin
            if fieldbyname('price').asfloat=0
                then price:=fieldbyname('price4').asfloat  //省中标价
                else price:=fieldbyname('price').asfloat;  //原省中标价
            if price=0 then price:=fieldbyname('price8').asfloat;  //自主定价
        //    price:=fieldbyname('price').asfloat;
        //    price1:=fieldbyname('price').asfloat;  //供货价
            rate:=fieldbyname('rate').asfloat;  //配送率

    //        if price=0 then raise Exception.Create('该品种在商业所在地区中标价为0，请先设置');  // 2019.12.18 注销

        //    if price1=0 then raise Exception.Create('该品种在商业所在地区供货价为0，请先设置');
        //    if rate=0 then raise Exception.Create('该商业公司尚未设置配送率，请先设置');
            price1:=price*(100-rate)/100;  //供货价
        end;
	end;
}
    if MessageBox(0,pchar('确定加入本托管费规则'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,mate_id,mate_id1,med_id,f4,f5,f6,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 4,'+inttostr(compid)+',mate_id,'+inttostr(dxButtonEdit3.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+','+floattostr(price1)+',dbo.fn_getfeerate1(district,'+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+'),';
    commandtext:=commandtext+inttostr(curuserid)+',getdate() from tb_busimate where mate_id='+inttostr(dxButtonEdit2.tag);
{
    commandtext:=commandtext+' values (4,'+inttostr(compid)+','+inttostr(dxButtonEdit2.tag)+','+inttostr(dxButtonEdit3.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+','+floattostr(price1)+','+floattostr(rate)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
}
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

procedure Tsettrustrule.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsettrustrule.FormActivate(Sender: TObject);
begin
{
with pricetype do
    if active=False then
    begin
        commandtext:='select obj_id=1,zdesc=''中标价'' union select obj_id=2,zdesc=''供货价''';
        open;
    end;
}
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12'; // and a.comp_id='+inttostr(compid);
        open;
    end;
end;

procedure Tsettrustrule.sysruleBeforeEdit(DataSet: TDataSet);
begin
if sysrule.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可更改');
end;

procedure Tsettrustrule.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsettrustrule.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,r,i1,i2,m1,m2,m3: integer;
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
r := dxDBGrid1.ColumnByFieldName('mate_name1').Index;
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
//        if m1<>dxDBGrid1.SelectedNodes[i].Values[i1] then raise Exception.Create('同一申请中，品种应相同');
        if m2<>dxDBGrid1.SelectedNodes[i].Values[i2] then raise Exception.Create('同一申请中，区域应相同');
    end;
    if (isaccounter(curuserid)=False) and (dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid) then raise Exception.Create('所选记录中有非本人设置规则，不可启用');
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    s:= s + #13#10+dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[r]+' '+dxDBGrid1.SelectedNodes[i].Strings[q]; //+' '+dxDBGrid1.SelectedNodes[i].Strings[l]+'级';
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
    commandtext:='select top 5 b.mate_name,mate_name1=e.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+'	from tb_sysrule a ';
    commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_busimate e on a.mate_id1=e.mate_id';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'  left join (select mate_id,med_id,rate from tb_brokermed where comp_id='+inttostr(compid)+') h on a.mate_id1=h.mate_id and a.med_id=h.med_id';
    commandtext:=commandtext+'	where a.med_id in ('+t+')'+' and a.f1*a.f4/100+h.rate > dbo.fn_getprice0('+inttostr(compid)+',b.district,a.med_id)';
edit1.text:=commandtext;
    open;
    if recordcount>0 then
    begin
        first;
        s:= '下列规则托管费与业务员费用之和超过费用政策，不可申请' + #13#10 + '----------------------------------------------';
        while not eof do
        begin
            s:=s+#13#10+fieldbyname('mate_name1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
//            s:=s+#13#10+fieldbyname('mate_name').asstring+' '+fieldbyname('mate_name1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
{
    if active then close;
    commandtext:='select top 5 mate_name1=b.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place';
    commandtext:=commandtext+' from tb_sysrule s,tb_busimate b,tb_medicine m';
    commandtext:=commandtext+' where s.rec_id in ('+t+') and s.med_id=m.med_id and s.mate_id1=b.mate_id';
    commandtext:=commandtext+' and not exists (select 1 from tb_medata a where a.type_id=1 and a.med_id=s.med_id and dbo.fn_treeischild(b.district,a.id1)=1 and (a.price4>0 or a.price8>0))';
    open;
//    if recordcount>0 then raise Exception.Create('所选规则中未设置当地中标价及自主定价,请先设置');
    if recordcount>0 then
    begin
        first;
        s:= '下列规则未设置当地中标价及自主定价,请先设置' + #13#10 + '----------------------------------------------';
        while not eof do
        begin
//            s:=s+#13#10+fieldbyname('mate_name').asstring+' '+fieldbyname('mate_name1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring;
            s:=s+#13#10+fieldbyname('mate_name1').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
            next;
        end;
        MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
        abort;
    end;
}
    if active then close;
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
    if active then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',24,0,'+inttostr(curuserid)+',getdate())';  //cast(convert(char(10),getdate(),20) as datetime),
    commandtext:=commandtext+' select @@identity';
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price,price2,valid_dt)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,f4,f1,f2,valid_dt';
    commandtext:=commandtext+' from tb_sysrule where rec_id in ('+t+')';
    execute;
    if active then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号托管费规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsettrustrule.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsettrustrule.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,sbodcd,sb: string;
    J,mi,id1,id2,id3,id4,districtid,id14,id15: integer;
    rate5,rate6: real;
    price,price1,rate: real;
    dt,dt1,dt2,dt3,dt4: TDatetime;
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
    screen.cursor:=crhourglass;
    sbodcd:='';
    j:=2; mi:=0; //第2行开始 每行一单
//格式:1启用日,2商业公司,3医院,4药品定价参考物料编码,5医院托管结算率,6商业托管结算率,7医院标准政策,8医院执行日期,9商业标准政策,10商业执行日期,11商业通知政策,12文件执行日期,13商业通知日期,14渠道编码,15子渠道编码
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        price:=0;rate:=0;price1:=0;  //供货价
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=0;
        end;
        with dm.pubqry do
        begin
            if active then close;
            if sheet.cells[j,2].text='' then id2:=0 else
            begin
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else id2:=0; //商业公司
            end;
            if active then close;
            if sheet.cells[j,3].text='' then id3:=0 else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger else id3:=0; //客户/医院
            end;
            if active then close;
            if sheet.cells[j,4].text='' then id4:=0 else
            begin
                commandtext:='select top 1 med_id from tb_medicine where material_code1 ='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else id4:=0; //药品
            end;

            if active then close;
            if sheet.cells[j,14].text='' then id14:=0 else
            begin
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=11 and obj_code ='''+Trim(sheet.cells[j,14].text)+'''';
                open;
                if recordcount>0 then id14:=fieldbyname('obj_id').asinteger else id14:=0; //渠道
            end;
            if active then close;
            if sheet.cells[j,15].text='' then id15:=0 else
            begin
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=12 and obj_code ='''+Trim(sheet.cells[j,15].text)+'''';
                open;
                if recordcount>0 then id15:=fieldbyname('obj_id').asinteger else id15:=0; //子渠道
            end;

            if active then close;
            commandtext:='select top 1 a.price,a.price1,a.price4,b.rate from tb_medata a,tb_busimate b ';
            commandtext:=commandtext+' where a.type_id=1 and a.med_id='+inttostr(id4);
            commandtext:=commandtext+'  and b.mate_id='+inttostr(id2)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
            commandtext:=commandtext+'  and (a.price>0 or a.price4>0)';
            commandtext:=commandtext+' order by a.valid_dt desc';
            open;
            if recordcount>0 then
            begin
                if fieldbyname('price').asfloat=0
                    then price:=fieldbyname('price4').asfloat  //中标价
                    else price:=fieldbyname('price').asfloat;  //中标价
                rate:=fieldbyname('rate').asfloat;  //配送率
            end;
//            if price=0 then raise Exception.Create('该品种在商业所在地区中标价为0，请先设置');
//            if rate=0 then raise Exception.Create('该商业公司尚未设置配送率，请先设置');
            price1:=price*(100-rate)/100;  //供货价
        end;

        if (id2=0) or (id3=0) or (id14=0) or (id15=0) then  // or (id4=0) 品种 为选填
//        if (id3=0) or (id4=0) or (id4=0) then
        begin
            sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
            if id2=0 then sbodcd:=sbodcd+',未取得商业公司';
            if id3=0 then sbodcd:=sbodcd+',未取得医院';
//            if id4=0 then sbodcd:=sbodcd+',未取得药品';
            if id14=0 then sbodcd:=sbodcd+',未取得渠道';
            if id15=0 then sbodcd:=sbodcd+',未取得子渠道';
//            if id4=0 then sbodcd:=sbodcd+',未取得药品';
//            if price=0 then sbodcd:=sbodcd+',该品种在商业所在地区无中标价，请先设置';
//            if rate=0 then sbodcd:=sbodcd+',该商业公司尚未设置配送率，请先设置';
            mi:=mi+1;
        end;
        j:=j+1;
    end;
    if sbodcd<>'' then
    begin
        setprogress(0);
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'-----------------------------------'+sbodcd),'请注意',MB_OK+MB_IconError);
        XL.Quit;
        abort;
    end;
    if MessageBox(0,Pchar('确定导入数据'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    setprogress(1);
    j:=2;  //第2行开始 每行一单
//格式:1启用日,2商业公司,3医院,4药品定价参考物料编码,5医院托管结算率,6商业托管结算率,7医院标准政策,8医院执行日期,9商业标准政策,10商业执行日期,11商业通知政策,12文件执行日期,13商业通知日期,14渠道编码,15子渠道编码
    while (sheet.cells[j,1].text<>'') do
    begin
        price:=0;rate:=0;price1:=0;districtid:=0;
        try
            dt:=strtodatetime(Trim(sheet.cells[j,1].text));
        except
            dt:=0;
        end;
        try
            dt1:=strtodatetime(Trim(sheet.cells[j,8].text));
        except
            dt1:=0;
        end;
        try
            dt2:=strtodatetime(Trim(sheet.cells[j,10].text));
        except
            dt2:=0;
        end;
        try
            dt3:=strtodatetime(Trim(sheet.cells[j,12].text));
        except
            dt3:=0;
        end;
        try
            dt4:=strtodatetime(Trim(sheet.cells[j,13].text));
        except
            dt4:=0;
        end;
        with dm.pubqry do
        begin
            if active then close;
            if sheet.cells[j,2].text='' then id2:=0 else
            begin
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name ='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else id2:=0; //商业公司
            end;
            if active then close;
            if sheet.cells[j,3].text='' then id3:=0 else
            begin
                if active then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger else id3:=0; //客户/医院
            end;
            if active then close;
            if sheet.cells[j,4].text='' then id4:=0 else
            begin
                commandtext:='select top 1 med_id from tb_medicine where material_code1 ='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else id4:=0; //药品
            end;
            if active then close;
            if sheet.cells[j,14].text='' then id14:=0 else
            begin
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=11 and obj_code ='''+Trim(sheet.cells[j,14].text)+'''';
                open;
                if recordcount>0 then id14:=fieldbyname('obj_id').asinteger else id14:=0; //渠道
            end;
            if active then close;
            if sheet.cells[j,15].text='' then id15:=0 else
            begin
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=12 and obj_code ='''+Trim(sheet.cells[j,15].text)+'''';
                open;
                if recordcount>0 then id15:=fieldbyname('obj_id').asinteger else id15:=0; //子渠道
            end;
            if active then close;
            commandtext:='select top 1 a.price,a.price1,a.price4,b.rate,b.district from tb_medata a,tb_busimate b ';
            commandtext:=commandtext+' where a.type_id=1 and a.med_id='+inttostr(id4);
            commandtext:=commandtext+'  and b.mate_id='+inttostr(id2)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
            commandtext:=commandtext+'  and (a.price>0 or a.price4>0)';
            commandtext:=commandtext+' order by a.valid_dt desc';
            open;
            if recordcount>0 then
            begin
                if fieldbyname('price').asfloat=0
                    then price:=fieldbyname('price4').asfloat  //中标价
                    else price:=fieldbyname('price').asfloat;  //中标价
                rate:=fieldbyname('rate').asfloat;  //配送率
                price1:=price*(100-rate)/100;  //供货价
                districtid:=fieldbyname('district').asinteger;
            end;
//格式:1启用日,2商业公司,3医院,4药品定价参考物料编码,5医院托管结算率,6商业托管结算率,7医院标准政策,8医院执行日期,9商业标准政策,10商业执行日期,11商业通知政策,12文件执行日期,13商业通知日期,14渠道编码,15子渠道编码
            if active then close;
            commandtext:='insert into tb_sysrule (type_id,comp_id,channel_id,channel_dtl_id,valid_dt,mate_id,mate_id1,med_id,f1,f2,f4,f5,f6,fee1,dt1,fee2,dt2,fee3,dt3,dt4,creat_by,creat_dt)';
            commandtext:=commandtext+' values (4,'+inttostr(compid)+','+inttostr(id14)+','+inttostr(id15)+','''+datetimetostr(dt)+''','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+',';
            if cleardeli(sheet.cells[j,5].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,5].text)+','; //5医院托管结算率
            if cleardeli(sheet.cells[j,6].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,6].text)+','; //6商业托管结算率
            commandtext:=commandtext+floattostr(price)+','+floattostr(price1)+',dbo.fn_getfeerate1('+inttostr(districtid)+','+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+'),'; //f4当地中标价, f5供货价, f6费用政策
            if cleardeli(sheet.cells[j,7].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,7].text)+','; //医院标准政策
            if dt1=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt1)+''',';
            if cleardeli(sheet.cells[j,9].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,9].text)+','; //商业标准政策
            if dt2=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt2)+''',';
            if cleardeli(sheet.cells[j,11].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,11].text)+','; //商业通知政策
            if dt3=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt3)+''',';
            if dt4=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt4)+''',';
//            commandtext:=commandtext+''''+datetimetostr(dt4)+''',';
//            commandtext:=commandtext+floattostr(price)+','+floattostr(price1)+',dbo.fn_getfeerate1('+inttostr(districtid)+','+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+'),';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
edit1.text:=commandtext;
//abort;
            execute;
{
            if active then close;
            commandtext:='insert into tb_sysrule (type_id,comp_id,valid_dt,mate_id,mate_id1,med_id,f1,f2,f4,f5,f6,fee1,dt1,fee2,dt2,fee3,dt3,dt4,creat_by,creat_dt)';
            commandtext:=commandtext+' values (4,'+inttostr(compid)+','''+datetimetostr(dt)+''','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+',';
            if cleardeli(sheet.cells[j,5].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,5].text)+','; //5医院托管结算率
            if cleardeli(sheet.cells[j,6].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,6].text)+','; //6商业托管结算率
            if cleardeli(sheet.cells[j,7].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,7].text)+','; //6商业托管结算率
            commandtext:=commandtext+''''+datetimetostr(dt1)+''',';
            if cleardeli(sheet.cells[j,9].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,9].text)+','; //6商业托管结算率
            commandtext:=commandtext+''''+datetimetostr(dt2)+''',';

            if cleardeli(sheet.cells[j,11].text)='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,11].text)+','; //6商业托管结算率
            if dt3=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt3)+''',';
            if dt4=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt4)+''',';
//            commandtext:=commandtext+''''+datetimetostr(dt4)+''',';

            commandtext:=commandtext+floattostr(price)+','+floattostr(price1)+',dbo.fn_getfeerate1('+inttostr(districtid)+','+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+'),';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';



            commandtext:='insert into tb_sysrule (type_id,comp_id,mate_id,mate_id1,med_id,f4,f5,f6,creat_by,creat_dt)';
            commandtext:=commandtext+' select top 1 4,'+inttostr(compid)+',mate_id,'+inttostr(dxButtonEdit3.tag)+',';
            commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+','+floattostr(price1)+',dbo.fn_getfeerate1(district,'+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+'),';
            commandtext:=commandtext+inttostr(curuserid)+',getdate() from tb_busimate where mate_id='+inttostr(dxButtonEdit2.tag);
}
        end;
        j:=j+1;
    end;
    setprogress(0);
    XL.Quit;
//    SpeedButton3Click(nil);
//    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
    if j=0 then MessageBox(0,pchar('无可导入数据'),'请注意',MB_OK+MB_ICONInformation)
    else
    begin
        SpeedButton3Click(nil);
        MessageBox(0,pchar('已导入'+inttostr(j-2)+'条记录'),'请注意',MB_OK+MB_ICONInformation);  //从第2行开始导入,导入数为j-2
        if sysrule.active then sysrule.Last;  //如有新增，locate到最后记录
    end;
end;

procedure Tsettrustrule.dxEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(self);
    (Sender as TdxEdit).selectall;
    (Sender as TdxEdit).setfocus;
end;
end;

procedure Tsettrustrule.dxEdit5Enter(Sender: TObject);
begin
with (Sender as TdxEdit) do
begin
    selectall;
    setfocus;
end;
end;

end.
