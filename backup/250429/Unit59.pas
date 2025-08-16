unit Unit59;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds;

type
  Tsetcustmedrule = class(TForm)
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
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
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    sysrulemate_name: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    sysruletype_id: TWordField;
    sysrulecomp_id: TWordField;
    sysrulef1: TBCDField;
    sysrulef2: TBCDField;
    sysrulef3: TBCDField;
    sysrulef4: TBCDField;
    sysrulemodify_by: TIntegerField;
    sysrulemodify_dt: TDateTimeField;
    sysrulemate_id: TIntegerField;
    ADOQuery1modifier: TStringField;
    sysrulemodifier: TStringField;
    dxDBGrid1f1: TdxDBGridColumn;
    dxDBGrid1f2: TdxDBGridColumn;
    dxDBGrid1f3: TdxDBGridColumn;
    dxDBGrid1f4: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridButtonColumn;
    dxDBGrid1med_code: TdxDBGridButtonColumn;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    sysrulecamot: TFloatField;
    dxDBGrid1camot: TdxDBGridColumn;
    Edit1: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setcustmedrule: Tsetcustmedrule;

implementation

uses datamodu, Unit7, Unit16, Unit28a;

{$R *.DFM}

procedure Tsetcustmedrule.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetcustmedrule.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetcustmedrule.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(sysrule.active=true) and (sysrule.recordcount>0);
end;

procedure Tsetcustmedrule.sysruleBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetcustmedrule.sysruleAfterPost(DataSet: TDataSet);
begin
with sysrule do
    if ChangeCount>0 then
    begin
        myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
        refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsetcustmedrule.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.mate_id,b.mate_name,a.med_id,';
    commandtext:=commandtext+'	m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'	a.f1,a.f2,a.f3,a.f4,a.creat_dt,a.creat_by,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+'	from tb_sysrule a'; //,tb_busimate b,tb_medicine m,tb_staff c,tb_staff d ';
	commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
	commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
	commandtext:=commandtext+'	left join tb_staff c on a.creat_by=c.sta_id';
	commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+'	where a.type_id=1 and a.comp_id='+inttostr(compid);
//    +' and a.mate_id*=b.mate_id and a.med_id*=m.med_id';
//    commandtext:=commandtext+'	    and m.unit_id*=e.obj_id and med_type_id*=f.mc_id';
//    commandtext:=commandtext+'		and a.creat_by*=c.sta_id and a.modify_by*=d.sta_id';
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and (m.med_name like ''%'+Trim(dxEdit1.text)+'%'' or m.chm_name like ''%'+Trim(dxEdit1.text)+'%'' or m.qry_code like ''%'+Trim(dxEdit1.text)+'%'')';
//edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetcustmedrule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetcustmedrule.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetcustmedrule.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=pickcustomer.query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag :=pickcustomer.query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tsetcustmedrule.dxDBGrid1lead_nameButtonClick(Sender: TObject;
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

procedure Tsetcustmedrule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
//with dm.district do
//    if active=True then close;
end;

procedure Tsetcustmedrule.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetcustmedrule.N3Click(Sender: TObject);
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

procedure Tsetcustmedrule.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetcustmedrule.N2Click(Sender: TObject);
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

procedure Tsetcustmedrule.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetcustmedrule.dxDBGrid1mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
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

procedure Tsetcustmedrule.dxDBGrid1med_codeButtonClick(Sender: TObject;
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

procedure Tsetcustmedrule.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetcustmedrule.sysruleBeforePost(DataSet: TDataSet);
begin
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择医院及品种');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=1 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+sysrule.fieldbyname('mate_id').asstring+' and med_id='+sysrule.fieldbyname('med_id').asstring;
    commandtext:=commandtext+' and rec_id<>'+inttostr(sysrule.fieldbyname('rec_id').asinteger);
//edit1.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('已有此医院及品种的记录，不可再次加入');
end;
with sysrule do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=1;
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

procedure Tsetcustmedrule.sysruleCalcFields(DataSet: TDataSet);
begin
with sysrule do
    fieldbyname('camot').asfloat:=fieldbyname('f1').asfloat+fieldbyname('f2').asfloat+fieldbyname('f3').asfloat+fieldbyname('f4').asfloat;
end;

end.
