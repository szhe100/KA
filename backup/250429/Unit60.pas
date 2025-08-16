unit Unit60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds;

type
  Tsetvisitlog = class(TForm)
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    DSqry: TDataSource;
    ADOQuery1: TADOQuery;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1occur_dt: TDateTimeField;
    ADOQuery1broker: TStringField;
    ADOQuery1district: TStringField;
    ADOQuery1zcontent: TStringField;
    ADOQuery1evaluate: TStringField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creater: TStringField;
    qryrec_id: TAutoIncField;
    qrycomp_id: TWordField;
    qryoccur_dt: TDateTimeField;
    qrybroker: TStringField;
    qrydistrict: TStringField;
    qryzcontent: TStringField;
    qryevaluate: TStringField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrycreater: TStringField;
    dxDBGrid1occur_dt: TdxDBGridDateColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1district: TdxDBGridMaskColumn;
    dxDBGrid1zcontent: TdxDBGridMaskColumn;
    dxDBGrid1evaluate: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    ADOQuery1hospital: TStringField;
    ADOQuery1medicine: TStringField;
    qryhospital: TStringField;
    qrymedicine: TStringField;
    dxDBGrid1hospital: TdxDBGridColumn;
    dxDBGrid1medicine: TdxDBGridColumn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dxDateEdit1: TdxDateEdit;
    Label3: TLabel;
    dxDateEdit2: TdxDateEdit;
    Label1: TLabel;
    Shape4: TShape;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
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
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setvisitlog: Tsetvisitlog;

implementation

uses datamodu, Unit7, Unit16, Unit28a;

{$R *.DFM}

procedure Tsetvisitlog.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetvisitlog.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active=true) and (qry.recordcount>0);
end;

procedure Tsetvisitlog.qryBeforeDelete(DataSet: TDataSet);
begin
qryBeforeEdit(nil);
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetvisitlog.qryAfterPost(DataSet: TDataSet);
begin
with qry do
    if ChangeCount>0 then myupdaterefresh(qry,'tb_visitlog','rec_id','');
end;

procedure Tsetvisitlog.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select top 100 a.*,creater=b.zname from tb_visitlog a,tb_staff b';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.creat_by*=b.sta_id';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
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

procedure Tsetvisitlog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetvisitlog.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetvisitlog.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (qry.state in [dsinsert,dsedit]) then qry.edit;
    if showmodal= mrOK then
    begin
        qry.fieldbyname('lead_id').asinteger:=pickstaff.query1.fieldbyname('sta_id').asinteger;
        qry.fieldbyname('lead_name').asstring:=pickstaff.query1.fieldbyname('zname').asstring;
    end
    else
    begin
        qry.fieldbyname('lead_id').asinteger:=0;
        qry.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tsetvisitlog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
//with dm.district do
//    if active=True then close;
end;

procedure Tsetvisitlog.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetvisitlog.N3Click(Sender: TObject);
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

procedure Tsetvisitlog.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetvisitlog.N2Click(Sender: TObject);
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

procedure Tsetvisitlog.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetvisitlog.dxDBGrid1mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (qry.state in [dsinsert,dsedit]) then qry.edit;
    if showmodal= mrOK then
    begin
        qry.FieldByName('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
        qry.FieldByName('mate_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        qry.FieldByName('mate_name').asstring:='';
        qry.FieldByName('mate_id').asinteger:=0;
    end;
end;
end;

procedure Tsetvisitlog.dxDBGrid1med_codeButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if not (qry.state in [dsinsert,dsedit]) then qry.edit;
    if showmodal= mrOK then
    begin
        qry.FieldByName('med_id').asinteger:= query1.fieldbyname('med_id').asinteger;
        qry.FieldByName('med_code').asstring:= query1.fieldbyname('med_code').asstring;
        qry.FieldByName('med_name').asstring:= query1.fieldbyname('med_name').asstring;
        qry.FieldByName('specifi').asstring:= query1.fieldbyname('specifi').asstring;
        qry.FieldByName('pdt_place').asstring:= query1.fieldbyname('pdt_place').asstring;
//        qry.FieldByName('med_type').asstring:= query1.fieldbyname('med_type').asstring;
//        qry.FieldByName('med_unit').asstring:= query1.fieldbyname('med_unit').asstring;
    end
    else
    begin
        qry.FieldByName('med_id').asinteger:= 0;
        qry.FieldByName('med_code').asstring:= '';
        qry.FieldByName('med_name').asstring:= '';
        qry.FieldByName('specifi').asstring:= '';
        qry.FieldByName('pdt_place').asstring:= '';
//        qry.FieldByName('med_type').asstring:= '';
//        qry.FieldByName('med_unit').asstring:= '';
    end;
end;
end;

procedure Tsetvisitlog.dxDBGrid1Enter(Sender: TObject);
begin
with qry do
    if (active=true) and (recordcount=0) then append;
end;

procedure Tsetvisitlog.qryBeforePost(DataSet: TDataSet);
begin
with qry do
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
    end;
end;
end;

procedure Tsetvisitlog.qryAfterInsert(DataSet: TDataSet);
begin
with qry do
    fieldbyname('occur_dt').asdatetime:=dt0;
end;

procedure Tsetvisitlog.qryBeforeEdit(DataSet: TDataSet);
begin
if qry.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人数据，不可更改');
end;

end.
