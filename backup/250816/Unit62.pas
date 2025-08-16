unit Unit62;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds;

type
  Tsetmatemedfee = class(TForm)
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    matemedfee: TClientDataSet;
    DSmatemedfee: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    matemedfeerec_id: TAutoIncField;
    matemedfeemed_id: TIntegerField;
    matemedfeecreat_by: TIntegerField;
    matemedfeecreat_dt: TDateTimeField;
    matemedfeemed_code: TStringField;
    matemedfeemed_name: TStringField;
    matemedfeespecifi: TStringField;
    matemedfeepdt_place: TStringField;
    matemedfeemed_unit: TStringField;
    matemedfeemed_type: TStringField;
    matemedfeeqtyperpack: TBCDField;
    matemedfeecreater: TStringField;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    matemedfeemate_name: TStringField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    matemedfeecomp_id: TWordField;
    matemedfeemate_id: TIntegerField;
    dxDBGrid1mate_name: TdxDBGridButtonColumn;
    dxDBGrid1med_code: TdxDBGridButtonColumn;
    Edit1: TEdit;
    matemedfeechm_name: TStringField;
    dxDBGrid1qtyperpack: TdxDBGridColumn;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1med_type: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creater: TStringField;
    ADOQuery1fee_amot1: TBCDField;
    ADOQuery1sta_id1: TIntegerField;
    ADOQuery1fee_amot2: TBCDField;
    ADOQuery1sta_id2: TIntegerField;
    ADOQuery1fee_amot3: TBCDField;
    ADOQuery1sta_id3: TIntegerField;
    ADOQuery1fee_amot4: TBCDField;
    ADOQuery1sta_id4: TIntegerField;
    ADOQuery1fee_amot5: TBCDField;
    ADOQuery1sta_id5: TIntegerField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    ADOQuery1zname1: TStringField;
    ADOQuery1zname2: TStringField;
    ADOQuery1zname3: TStringField;
    ADOQuery1zname4: TStringField;
    ADOQuery1zname5: TStringField;
    ADOQuery1modifier: TStringField;
    matemedfeefee_amot1: TBCDField;
    matemedfeesta_id1: TIntegerField;
    matemedfeefee_amot2: TBCDField;
    matemedfeesta_id2: TIntegerField;
    matemedfeefee_amot3: TBCDField;
    matemedfeesta_id3: TIntegerField;
    matemedfeefee_amot4: TBCDField;
    matemedfeesta_id4: TIntegerField;
    matemedfeefee_amot5: TBCDField;
    matemedfeesta_id5: TIntegerField;
    matemedfeemodify_by: TIntegerField;
    matemedfeemodify_dt: TDateTimeField;
    matemedfeezname1: TStringField;
    matemedfeezname2: TStringField;
    matemedfeezname3: TStringField;
    matemedfeezname4: TStringField;
    matemedfeezname5: TStringField;
    matemedfeemodifier: TStringField;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    dxDBGrid1fee_amot1: TdxDBGridColumn;
    dxDBGrid1fee_amot2: TdxDBGridColumn;
    dxDBGrid1fee_amot3: TdxDBGridColumn;
    dxDBGrid1fee_amot4: TdxDBGridColumn;
    dxDBGrid1fee_amot5: TdxDBGridColumn;
    dxDBGrid1zname1: TdxDBGridButtonColumn;
    dxDBGrid1zname2: TdxDBGridButtonColumn;
    dxDBGrid1zname3: TdxDBGridButtonColumn;
    dxDBGrid1zname4: TdxDBGridButtonColumn;
    dxDBGrid1zname5: TdxDBGridButtonColumn;
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
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSmatemedfeeDataChange(Sender: TObject; Field: TField);
    procedure matemedfeeBeforeDelete(DataSet: TDataSet);
    procedure matemedfeeAfterPost(DataSet: TDataSet);
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
    procedure matemedfeeBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1zname1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1zname2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1zname3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1zname4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1zname5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmatemedfee: Tsetmatemedfee;

implementation

uses datamodu, Unit7, Unit16, Unit28a, Unit28;

{$R *.DFM}

procedure Tsetmatemedfee.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('med_code').asstring+'] '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring +' '+ query1.fieldbyname('pdt_place').asstring +' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag := query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetmatemedfee.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmatemedfee.DSmatemedfeeDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(matemedfee.active=true) and (matemedfee.recordcount>0);
end;

procedure Tsetmatemedfee.matemedfeeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmatemedfee.matemedfeeAfterPost(DataSet: TDataSet);
begin
with matemedfee do
    if ChangeCount>0 then
    begin
        myupdaterefresh(matemedfee,'tb_matemedfee','rec_id','');
        refreshmyrecord(matemedfee,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsetmatemedfee.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with matemedfee do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,b.mate_name,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,';
    commandtext:=commandtext+'zname1=c.zname,zname2=d.zname,zname3=e.zname,zname4=f.zname,zname5=g.zname,creater=h.zname,modifier=i.zname';
	commandtext:=commandtext+' from tb_matemedfee a';
	commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
	commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
	commandtext:=commandtext+' left join tb_staff c on a.sta_id1=c.sta_id';
	commandtext:=commandtext+' left join tb_staff d on a.sta_id2=d.sta_id';
	commandtext:=commandtext+' left join tb_staff e on a.sta_id3=e.sta_id';
	commandtext:=commandtext+' left join tb_staff f on a.sta_id4=f.sta_id';
	commandtext:=commandtext+' left join tb_staff g on a.sta_id5=g.sta_id';
	commandtext:=commandtext+' left join tb_staff h on a.creat_by=h.sta_id';
	commandtext:=commandtext+' left join tb_staff i on a.modify_by=i.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
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

procedure Tsetmatemedfee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmatemedfee.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmatemedfee.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
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

procedure Tsetmatemedfee.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.fieldbyname('lead_id').asinteger:=pickstaff.query1.fieldbyname('sta_id').asinteger;
        matemedfee.fieldbyname('lead_name').asstring:=pickstaff.query1.fieldbyname('zname').asstring;
    end
    else
    begin
        matemedfee.fieldbyname('lead_id').asinteger:=0;
        matemedfee.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsetmatemedfee.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmatemedfee.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetmatemedfee.N3Click(Sender: TObject);
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

procedure Tsetmatemedfee.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmatemedfee.N2Click(Sender: TObject);
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

procedure Tsetmatemedfee.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmatemedfee.dxDBGrid1mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
        matemedfee.FieldByName('mate_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('mate_name').asstring:='';
        matemedfee.FieldByName('mate_id').asinteger:=0;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1med_codeButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        matemedfee.FieldByName('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        matemedfee.FieldByName('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        matemedfee.FieldByName('specifi').asstring:= query1.fieldbyname('specifi').asstring;
        matemedfee.FieldByName('pdt_place').asstring:= query1.fieldbyname('pdt_place').asstring;
//        matemedfee.FieldByName('med_type').asstring:= query1.fieldbyname('med_type').asstring;
//        matemedfee.FieldByName('med_unit').asstring:= query1.fieldbyname('med_unit').asstring;
    end
    else
    begin
        matemedfee.FieldByName('med_id').asinteger:= 0;
        matemedfee.FieldByName('med_code').asstring:= '';
        matemedfee.FieldByName('med_name').asstring:= '';
        matemedfee.FieldByName('specifi').asstring:= '';
        matemedfee.FieldByName('pdt_place').asstring:= '';
//        matemedfee.FieldByName('med_type').asstring:= '';
//        matemedfee.FieldByName('med_unit').asstring:= '';
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1Enter(Sender: TObject);
begin
with matemedfee do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetmatemedfee.matemedfeeBeforePost(DataSet: TDataSet);
begin
with matemedfee do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('请选择医院与品种');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_matemedfee where comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+matemedfee.fieldbyname('mate_id').asstring+' and med_id='+matemedfee.fieldbyname('med_id').asstring;
    if matemedfee.fieldbyname('rec_id').asinteger>0 then commandtext:=commandtext+' and rec_id<>'+matemedfee.fieldbyname('rec_id').asstring;
//edit1.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('已有此医院及品种的记录，不可重复录入');
end;
with matemedfee do
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
end;

procedure Tsetmatemedfee.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('请选择医院');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_matemedfee where comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    open;
    if recordcount>0 then raise Exception.Create('已有该医院品种费用记录，不可重复设置');

    if MessageBox(0,pchar('确定加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_matemedfee (comp_id,mate_id,med_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    matemedfee.locate('rec_id',mi,[]);
end;
end;

procedure Tsetmatemedfee.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin
    with Tdxdbgrid(activecontrol) do
    begin
            focusedcolumn := focusedcolumn+1;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1zname1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('zname1').asstring:= query1.fieldbyname('zname').asstring;
        matemedfee.FieldByName('sta_id1').asinteger:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('zname1').asstring:= '';
        matemedfee.FieldByName('sta_id1').asinteger:= 0;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1zname2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('zname2').asstring:= query1.fieldbyname('zname').asstring;
        matemedfee.FieldByName('sta_id2').asinteger:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('zname2').asstring:= '';
        matemedfee.FieldByName('sta_id2').asinteger:= 0;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1zname3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('zname3').asstring:= query1.fieldbyname('zname').asstring;
        matemedfee.FieldByName('sta_id3').asinteger:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('zname3').asstring:= '';
        matemedfee.FieldByName('sta_id3').asinteger:= 0;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1zname4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('zname4').asstring:= query1.fieldbyname('zname').asstring;
        matemedfee.FieldByName('sta_id4').asinteger:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('zname4').asstring:= '';
        matemedfee.FieldByName('sta_id4').asinteger:= 0;
    end;
end;
end;

procedure Tsetmatemedfee.dxDBGrid1zname5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (matemedfee.state in [dsinsert,dsedit]) then matemedfee.edit;
    if showmodal= mrOK then
    begin
        matemedfee.FieldByName('zname5').asstring:= query1.fieldbyname('zname').asstring;
        matemedfee.FieldByName('sta_id5').asinteger:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        matemedfee.FieldByName('zname5').asstring:= '';
        matemedfee.FieldByName('sta_id5').asinteger:= 0;
    end;
end;
end;

end.
