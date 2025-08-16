unit Unit59f;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds;

type
  Tsetallotrule1 = class(TForm)
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
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
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
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    sysrulechm_name: TStringField;
    sysrulelevel_id: TWordField;
    dxDBGrid1qtyperpack: TdxDBGridColumn;
    sysruledistrict: TIntegerField;
    sysrulecdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    ADOQuery1f1: TBCDField;
    ADOQuery1f2: TBCDField;
    ADOQuery1f3: TBCDField;
    ADOQuery1f4: TBCDField;
    sysrulef1: TBCDField;
    sysrulef2: TBCDField;
    sysrulef3: TBCDField;
    sysrulef4: TBCDField;
    dxDBGrid1f4: TdxDBGridColumn;
    dxDBGrid1f1: TdxDBGridColumn;
    dxDBGrid1f2: TdxDBGridColumn;
    dxDBGrid1f3: TdxDBGridColumn;
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
    Shape3: TShape;
    Label4: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    sysrulemate_id1: TIntegerField;
    sysrulemate_name1: TStringField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1valid_dt: TdxDBGridDateColumn;
    ADOQuery1f7: TBCDField;
    sysrulef7: TBCDField;
    dxDBGrid1f7: TdxDBGridColumn;
    N1: TMenuItem;
    SpeedButton5: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    dxPickEdit1: TdxPickEdit;
    price_type: TClientDataSet;
    price_typeobj_id: TAutoIncField;
    price_typezdesc: TStringField;
    DSlevel1: TDataSource;
    sysruleprice_type_id: TWordField;
    sysruleLpricetype: TStringField;
    dxDBGrid1Lpricetype: TdxDBGridColumn;
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
    procedure dxDBGrid1med_codeButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure sysruleBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure sysruleBeforeEdit(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure sysrulef4Change(Sender: TField);
    procedure MenuItem3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setallotrule1: Tsetallotrule1;

implementation

uses datamodu, Unit7, Unit16a, Unit28a;

{$R *.DFM}

procedure Tsetallotrule1.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring +' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag := query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetallotrule1.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetallotrule1.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(sysrule.active=true) and (sysrule.recordcount>0);
end;

procedure Tsetallotrule1.sysruleBeforeDelete(DataSet: TDataSet);
begin
if sysrule.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可删除');
//if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人规则，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetallotrule1.sysruleAfterPost(DataSet: TDataSet);
begin
with sysrule do
    if ChangeCount>0 then
    begin
        myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
        refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsetallotrule1.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.mate_id,a.med_id,b.mate_name,a.mate_id1,mate_name1=e.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+'	b.district,cdistrict=dbo.fn_getdistrict(e.district),med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'	a.level_id,a.f1,a.f2,a.f3,a.f4,a.f7,a.price_type_id,valid,valid_dt,a.creat_by,a.creat_dt,creater=c.zname,a.modify_dt,a.modify_by,modifier=d.zname';
    commandtext:=commandtext+'	from tb_sysrule a ';
    commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_busimate e on a.mate_id1=e.mate_id';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'	left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+'	where a.type_id=7 and a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit3.tag);
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (m.med_name like ''%'+Trim(dxEdit1.text)+'%'' or m.chm_name like ''%'+Trim(dxEdit1.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit1.text)+'%'')';
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

procedure Tsetallotrule1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetallotrule1.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetallotrule1.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
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
end;

procedure Tsetallotrule1.dxDBGrid1lead_nameButtonClick(Sender: TObject;
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

procedure Tsetallotrule1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with sysrule do
    if active=True then close;
//with dm.district do
//    if active=True then close;
with price_type do
    if active=True then close;
end;

procedure Tsetallotrule1.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetallotrule1.N3Click(Sender: TObject);
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

procedure Tsetallotrule1.N2Click(Sender: TObject);
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

procedure Tsetallotrule1.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetallotrule1.dxDBGrid1mate_nameButtonClick(Sender: TObject;
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

procedure Tsetallotrule1.dxDBGrid1med_codeButtonClick(Sender: TObject;
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

procedure Tsetallotrule1.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetallotrule1.sysruleBeforePost(DataSet: TDataSet);
begin
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择商业公司及品种');
with sysrule do
begin
//  1级：商业公司、品种、当地中标价、供货价(需4位小数)
//  2级：商业公司、品种、当地中标价、调拨率、调拨价(需4位小数)
    if (fieldbyname('f1').asfloat=0) then raise Exception.Create('请输入供货价');
//    if (fieldbyname('f2').asfloat=0) then raise Exception.Create('请输入调拨率');
    if (fieldbyname('f3').asfloat=0) then raise Exception.Create('请输入调拨价');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=7;
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

procedure Tsetallotrule1.SpeedButton4Click(Sender: TObject);
var mi: integer;
    price,price1,rate: real;
begin
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择一级商业公司');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择二级商业公司');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=7 and valid=1 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and mate_id1='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('已有该调拨规则，不可重复设置');

    if active=true then close;
    commandtext:='select top 1 a.price,b.rate from tb_medata a,tb_busimate b ';
    commandtext:=commandtext+' where a.med_id='+inttostr(dxButtonEdit1.tag)+' and a.comp_id='+inttostr(compid)+' and a.type_id=1';
    commandtext:=commandtext+'  and b.mate_id='+inttostr(dxButtonEdit3.tag)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
    open;
    if recordcount=0 then raise Exception.Create('该品种在二级商业所在地区尚未设置中标价，请先设置');
    price:=fieldbyname('price').asfloat;
    rate:=fieldbyname('rate').asfloat;
    price1:=round(fieldbyname('price').asfloat*(100-fieldbyname('rate').asfloat)+0.01)/100;
//    price1:=fieldbyname('price').asfloat*(100-fieldbyname('rate').asfloat)/100;

    if MessageBox(0,pchar('确定加入本调拨规则'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,mate_id,mate_id1,med_id,f4,f7,f3,creat_by,creat_dt)'; //f3:调拨价
    commandtext:=commandtext+' values (3,'+inttostr(compid)+','+inttostr(dxButtonEdit2.tag)+','+inttostr(dxButtonEdit3.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','+floattostr(price)+','+floattostr(rate)+','+floattostr(price1)+',';   // fieldbyname('f3').AsFloat:=fieldbyname('f4').asfloat*(100-fieldbyname('f7').asfloat)/100;

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

procedure Tsetallotrule1.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,m1,m2,m3: integer;
    s,t: string;
    mcd: string[20];
begin
if (sysrule.active=false) or (sysrule.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
//l := dxDBGrid1.ColumnByFieldName('level_id').Index;
k := dxDBGrid1.ColumnByFieldName('creat_by').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
//o := dxDBGrid1.ColumnByFieldName('broker').Index;
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
//    if dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid then raise Exception.Create('所选记录中有非本人设置规则，不可启用');
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
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=22 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,22)); //bod_type_id=22: 调拨规则申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',22,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price,rate,rela_value)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,f4,f1,f2,f3';
    commandtext:=commandtext+' from tb_sysrule where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号调拨规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetallotrule1.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
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
end;

procedure Tsetallotrule1.sysruleBeforeEdit(DataSet: TDataSet);
begin
if sysrule.fieldbyname('valid').asboolean=True then raise Exception.Create('本规则已启用，不可更改');
end;

procedure Tsetallotrule1.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetallotrule1.sysrulef4Change(Sender: TField);
begin
with sysrule do
begin
    fieldbyname('f3').AsFloat:=round(fieldbyname('f4').asfloat*(100-fieldbyname('f7').asfloat))/100;
end;
end;

procedure Tsetallotrule1.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetallotrule1.N1Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,m1,m2,m3: integer;
    s,t: string;
    mcd: string[20];
begin
if (sysrule.active=false) or (sysrule.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由下列规则生成停用申请单:'+ #13#10+'------------------------------------';
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
//    if dxDBGrid1.SelectedNodes[i].Values[k]<>curuserid then raise Exception.Create('所选记录中有非本人设置规则，不可停用');
    if dxDBGrid1.SelectedNodes[i].Values[m]=False then raise Exception.Create('所选记录中有已停用规则，不可再次停用');
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
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=25 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号停用申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,25)); //bod_type_id=25: 调拨规则停用申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',25,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id,price1,price,rate,rela_value)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id,f4,f1,f2,f3';
    commandtext:=commandtext+' from tb_sysrule where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号调拨规则停用申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetallotrule1.SpeedButton5Click(Sender: TObject);
begin
with sysrule do
    if (active=False) or (recordcount=0) then exit;
if (dxPickEdit1.Text='') or (dxPickEdit1.ItemIndex=-1) then raise Exception.Create('请选择中标价类别');
if MessageBox(0,Pchar('确定更新本表当前记录的中标价'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//if MessageBox(0,Pchar('确定更新本表中记录的"'+dxPickEdit1.Text+'"'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_sysrule ';
    commandtext:=commandtext+' set f4=dbo.fn_getbidprice8(mate_id1,med_id,'+inttostr(dxPickEdit1.itemindex+1)+'),price_type_id='+inttostr(dxPickEdit1.itemindex+1);
    commandtext:=commandtext+' where rec_id='+sysrule.fieldbyname('rec_id').asstring;
    try
        setprogress(1);
        execute;
    finally
        setprogress(0);
    end;
end;
refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id',sysrule.fieldbyname('rec_id').asinteger);
//SpeedButton3Click(nil);
end;

procedure Tsetallotrule1.FormActivate(Sender: TObject);
begin
with price_type do
begin
    if active=false then
    begin
        commandtext:='select obj_id=1,zdesc=''原省中标价'' union select obj_id=2,zdesc=''现省中标价'' union select obj_id=3,zdesc=''全军统筹中标价'' union select obj_id=4,zdesc=''地方军区中标价'' union select obj_id=5,zdesc=''新农合中标价''';
        open;
    end;
end;
end;

end.
