unit Unit85;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tsetreport21 = class(TForm)
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    qry: TClientDataSet;
    DSqry: TDataSource;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    dxLookupTreeView1: TdxLookupTreeView;
    Shape2: TShape;
    Label3: TLabel;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    ADOQuery1: TADOQuery;
    type1: TClientDataSet;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    Edit1: TEdit;
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
    qryrec_id: TAutoIncField;
    qrymed_id: TIntegerField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrymed_type: TStringField;
    qrycreater: TStringField;
    qrycomp_id: TWordField;
    qrybroker_id: TIntegerField;
    qrydistrict_id: TIntegerField;
    qrymate_id: TIntegerField;
    qryinsure_amot: TBCDField;
    qrychm_name: TStringField;
    qryqtyperpack: TBCDField;
    qryqtyperbox: TBCDField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrymate_name: TStringField;
    SpeedButton5: TSpeedButton;
    Shape3: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    Shape4: TShape;
    Label4: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    DSbroker: TDataSource;
    Button1: TButton;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SpeedButton6: TSpeedButton;
    DSqrydtl: TDataSource;
    qrydtl: TClientDataSet;
    qrydtldtl_id: TAutoIncField;
    qrydtlrec_id: TAutoIncField;
    qrydtlmate_id1: TIntegerField;
    qrydtlmate_name1: TStringField;
    qrydtlcreat_by: TIntegerField;
    qrydtlcreat_dt: TDateTimeField;
    qrydtlcreater: TStringField;
    qrydtlmodify_by: TIntegerField;
    qrydtlmodify_dt: TDateTimeField;
    Panel1: TPanel;
    Splitter1: TSplitter;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Ltype: TdxDBGridLookupColumn;
    dxDBGrid1Lcusttype: TdxDBGridLookupColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1insure_amot: TdxDBGridColumn;
    dxDBGrid1receipt_cd: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2insure_amot: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    dxDBGrid2creat_dt: TdxDBGridDateColumn;
    dxDBGrid2mate_name: TdxDBGridButtonColumn;
    qrymodify_dt: TDateTimeField;
    qrymodify_by: TIntegerField;
    PopupMenu2: TPopupMenu;
    MenuItem9: TMenuItem;
    ADOQuery1sign_by: TIntegerField;
    ADOQuery1signer: TStringField;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    Label15: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery2type_id3: TWordField;
    ADOQuery2task_amot: TBCDField;
    ADOQuery2flow_cd: TStringField;
    qryflow_cd: TStringField;
    type3: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField2: TStringField;
    dxDBGrid1flow_cd: TdxDBGridColumn;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDateEdit3: TdxDateEdit;
    Label16: TLabel;
    Shape11: TShape;
    Label17: TLabel;
    dxDateEdit4: TdxDateEdit;
    qryagent: TStringField;
    qrypayer: TStringField;
    qryfreceipt: TBooleanField;
    qryreceipt_cd: TStringField;
    dxDBGrid1freceipt: TdxDBGridCheckColumn;
    qryoccur_dt: TDateTimeField;
    qrytype_id: TIntegerField;
    qrycust_type_id: TIntegerField;
    qryLtype1: TStringField;
    qryLtype2: TStringField;
    qryinsure_type_id: TIntegerField;
    qryLinsuretype: TStringField;
    dxDBGrid1Linsuretype: TdxDBGridLookupColumn;
    qrydtlinsure_amot: TBCDField;
    dxDBGrid1occur_dt: TdxDBGridDateColumn;
    qrydtlzdesc: TStringField;
    dxDBGrid2zdesc: TdxDBGridColumn;
    dxDBGrid1payer: TdxDBGridColumn;
    Edit2: TEdit;
    dxButtonEdit5: TdxButtonEdit;
    Label10: TLabel;
    Shape9: TShape;
    qrybroker_id2: TIntegerField;
    qrybroker: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    type4: TClientDataSet;
    AutoIncField3: TAutoIncField;
    StringField3: TStringField;
    qrybusi_type_id: TIntegerField;
    qryLbusitype: TStringField;
    dxDBGrid1Lbusitype: TdxDBGridLookupColumn;
    N10: TMenuItem;
    N11: TMenuItem;
    qrycheck_by: TIntegerField;
    qrycheck_dt: TDateTimeField;
    qrychecker: TStringField;
    dxDBGrid1checker: TdxDBGridColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    qryCchecked: TBooleanField;
    dxDBGrid1Cchecked: TdxDBGridCheckColumn;
    qryremark: TStringField;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure qryBeforeEdit(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem9Click(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure dxDBGrid2mate_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N10Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport21: Tsetreport21;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit28, Unit28a, Unit16a, Unit16c, Unit16;

{$R *.DFM}

procedure Tsetreport21.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport21.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport21.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
    speedbutton5.enabled:=(active=true) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
    if (active=False) or (recordcount=0) or (fieldbyname('rec_id').asinteger=0) then
    begin
        if qrydtl.Active=True then qrydtl.Close;
        tag:=0;
        exit;
    end;
end;
with qrydtl do
begin
    if tag=qry.fieldbyname('rec_id').asinteger then exit;
    if active=True then close;
    commandtext:='select a.*,b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_report21dtl a left join tb_busimate b on a.mate_id=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetreport21.qryBeforeDelete(DataSet: TDataSet);
begin
//if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_report21dtl where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本记录有下级记录，不可删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport21.qryAfterPost(DataSet: TDataSet);
begin
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_report21','rec_id','');
end;

procedure Tsetreport21.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,b.mate_name,m.med_code,m.med_name,m.chm_name,med_type=dbo.fn_med_type(m.med_id),m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,m.qtyperbox,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	broker=d.zname,agent=c.mate_name,creater=dbo.fn_staff_name(a.creat_by),checker=e.zname';
    commandtext:=commandtext+' from tb_report21 a';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.agent_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.broker_id=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
{
    if (dxCheckEdit1.Checked) and ((Trim(dxLookupEdit2.text)<>'') or (Trim(dxButtonEdit6.text)<>''))
        then commandtext:=commandtext+' inner join tb_busiframe e on a.level_id1=e.level_id1 and a.lead_id=e.sta_id and a.med_id=e.med_id and dbo.fn_treeischild(a.district_id,e.district_id)=1'
        else commandtext:=commandtext+' left join tb_busiframe e on a.level_id1=e.level_id1 and a.lead_id=e.sta_id and a.med_id=e.med_id and dbo.fn_treeischild(a.district_id,e.district_id)=1';
}
{
    if (dxCheckEdit1.Checked) and ((Trim(dxButtonEdit7.text)<>'') or (Trim(dxButtonEdit6.text)<>''))
        then commandtext:=commandtext+' inner join tb_busiframe2 e on e.rec_id=dbo.fn_getbusiframerecid1(a.broker_id,a.med_id,a.sign_dt)'
        else commandtext:=commandtext+' left join tb_busiframe2 e on e.rec_id=dbo.fn_getbusiframerecid1(a.broker_id,a.med_id,a.sign_dt)';
}        
{
    if (dxCheckEdit1.Checked) and ((Trim(dxLookupEdit2.text)<>'') or (Trim(dxButtonEdit6.text)<>''))
        then commandtext:=commandtext+' inner join tb_busiframe2 e on e.rec_id=dbo.fn_getbusiframerecid2(a.mate_id,a.broker_id,a.med_id,a.sign_dt)'
        else commandtext:=commandtext+' left join tb_busiframe2 e on e.rec_id=dbo.fn_getbusiframerecid2(a.mate_id,a.broker_id,a.med_id,a.sign_dt)';
}
{
    if (dxCheckEdit1.Checked) and ((Trim(dxLookupEdit2.text)<>'') or (Trim(dxButtonEdit6.text)<>''))
        then commandtext:=commandtext+' inner join tb_busiframe e on e.rec_id=dbo.fn_getbusiframerecid(a.district_id,a.med_id,a.sign_dt)'
        else commandtext:=commandtext+' left join tb_busiframe e on e.rec_id=dbo.fn_getbusiframerecid(a.district_id,a.med_id,a.sign_dt)';
}

//    commandtext:=commandtext+' where a.sign_dt>= '''+datetostr(dxdateedit1.date)+''' and a.sign_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  where a.creat_dt>= '''+datetostr(dxdateedit3.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
//        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit3.tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit4.tag);
        if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit5.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
//        commandtext:=commandtext+'  and a.sign_dt>= '''+datetostr(dxdateedit1.date)+''' and a.sign_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if Trim(dxedit1.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and (qry_code like''%'+trim(dxedit1.text)+'%'' or chm_name like''%'+trim(dxedit1.text)+'%'')';
                1:  commandtext:=commandtext+' and med_name ';
                2:  commandtext:=commandtext+' and pdt_place ';
                3:  commandtext:=commandtext+' and med_code ';
            end;
            if radiogroup1.itemindex>0 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
        end;
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
edit1.text:=commandtext;
//    commandtext:=commandtext+' order by b.med_name,b.specifi,b.pdt_place,dbo.fn_getdistrict(a.id1)';
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport21.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport21.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport21.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
//with dm.district do if active=True then close;
with type1 do if active=True then close;
with type2 do if active=True then close;
with type3 do if active=True then close;
with qry do if active=True then close;
with qrydtl do if active=True then close;
end;

procedure Tsetreport21.FormCreate(Sender: TObject);
begin
//dxdateedit1.date:=dt_30;
//dxdateedit2.date:=date;
dxdateedit3.date:=dt_30;
dxdateedit4.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetreport21.N3Click(Sender: TObject);
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

procedure Tsetreport21.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport21.N2Click(Sender: TObject);
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

procedure Tsetreport21.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetreport21.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
{
with level1 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
}
with type1 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''收款'' union select obj_id=2,zdesc=''退款''';
        open;
    end;
with type2 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''省区代理'' union select obj_id=2,zdesc=''区域代理'' union select obj_id=3,zdesc=''医院代理'' union select obj_id=4,zdesc=''学术推广''';
        open;
    end;
with type3 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''开发'' union select obj_id=2,zdesc=''任务量'' union select obj_id=3,zdesc=''市场'' union select obj_id=4,zdesc=''政策事务''';
        open;
    end;
with type4 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''商业'' union select obj_id=2,zdesc=''分销''';
        open;
    end;
end;

procedure Tsetreport21.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
//speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxLookupTreeView1.text<>'');
end;

procedure Tsetreport21.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport21.qryBeforePost(DataSet: TDataSet);
begin
{
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_report21 where med_id='+ inttostr(qry.fieldbyname('med_id').asinteger);
    commandtext:=commandtext+' and broker_id='+ inttostr(qry.fieldbyname('broker_id').asinteger);
    if qry.fieldbyname('rec_id').asinteger<>0 then commandtext:=commandtext+'  and rec_id<>'+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then
    begin
        if MessageBox(0,'重复记录是否确认保存','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
    end;
end;
}
with qry do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport21.SpeedButton5Click(Sender: TObject);
begin
with qry do
begin
    if (active=False) or (recordcount=0) or (fieldbyname('rec_id').asinteger=0) then exit;
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置的业务结构，不可修改');
//    if pickcustomer.query1.fieldbyname('stop_yn').asboolean=True then raise Exception.Create('所选医院已停用');
end;

//if (dxLookupEdit1.text='') and (Trim(dxButtonEdit4.text)='')    // and (dxLookupEdit4.text='')
if (Trim(dxButtonEdit4.text)='')    // and (dxLookupEdit4.text='')
    and (Trim(dxButtonEdit1.text)='') //and (Trim(dxButtonEdit2.text)='')
    and (Trim(dxButtonEdit3.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxButtonEdit5.text)='')and (Trim(dxLookupTreeView1.text)='') // and (Trim(dxButtonEdit5.text)='')
    then raise Exception.Create('请设置修改数据');

if MessageBox(0,'确定修改记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='update tb_report21 set modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' ,med_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' ,mate_id='+inttostr(dxButtonEdit3.tag);
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' ,agent_id='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' ,broker_id='+inttostr(dxButtonEdit5.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' ,district_id='+dm.district.fieldbyname('rec_id').asstring;
    commandtext:=commandtext+' where rec_id='+ qry.fieldbyname('rec_id').asstring;
edit2.Text:=commandtext;
//exit;
    execute;
end;
refreshmyrecord(qry,dm.Refreshcds,0,'a.rec_id',qry.fieldbyname('rec_id').asinteger);
end;

procedure Tsetreport21.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetreport21.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
end;
end;

procedure Tsetreport21.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tsetreport21.Button1Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_report21 set creat_by='+inttostr(curuserid);
    execute;
end;
end;

procedure Tsetreport21.qryBeforeEdit(DataSet: TDataSet);
begin
//if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可修改');

//if qry.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可修改');
if qry.fieldbyname('check_by').asinteger>0 then raise Exception.Create('财务已审核，不可修改');

//if (qry.fieldbyname('valid').asboolean=True) and (dxDBGrid1.FocusedField.FullName<>'valid')
//    then raise Exception.Create('本记录已生效，不可修改');
end;

procedure Tsetreport21.N7Click(Sender: TObject);
begin
with qry do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetreport21.N8Click(Sender: TObject);
var mi: integer;
begin
with qry do
begin
    if (active=False) or (recordcount=0) then exit;
    if frecid=0 then raise Exception.Create('请先复制记录');
end;
if MessageBox(0,'确定粘贴记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_report21 (comp_id,flow_cd,type_id,cust_type_id,district_id,mate_id,agent_id,payer,med_id,occur_dt,insure_type_id,insure_amot,freceipt,receipt_cd,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 comp_id,flow_cd,type_id,cust_type_id,district_id,mate_id,agent_id,payer,med_id,occur_dt,insure_type_id,insure_amot,freceipt,receipt_cd,valid_dt,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_report21 where rec_id='+inttostr(frecid);
    commandtext:=commandtext+' select @@identity';
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
        SpeedButton3Click(nil);
        if mi>0 then qry.locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetreport21.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName: string;
    mi,J,id2,id4,id5,id6,id8,id9,id10,id11: integer;
    sbodcd: string;
    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');
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
    screen.cursor:=crhourglass;
    sbodcd:='';
    j:=2; mi:=0;  //第2行开始 每行一单
//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务负责人id8,9客户id9,10目标医院id10,
//  11药品编码id11,12供货价,13推广服务费,14 1月,15 2月,16 3月,17 4月,18 5月,19 6月,20 7月,21 8月,22 9月,23 10月,24 11月,25 12月,
//  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金

    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id4:=0;id5:=0;id6:=0;id8:=0;id9:=0;id10:=0; id11:=0;
        with dm.pubqry do
        begin
            if active=true then close;
            if sheet.cells[j,4].text<>'' then
            begin
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
//edit1.text:=commandtext;
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and isnull(stop_yn,0)=0 and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,11].text)+'''';
                open;
                if recordcount>0 then id11:=fieldbyname('med_id').asinteger; //品种
            end;

//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,10目标医院id10,
//  11药品编码id11
            if (id4=0) or (id5=0) or (id6=0) or (id8=0) or (id9=0) or (id11=0) then  // or (id10=0)
            begin
                sbodcd:=sbodcd+#13#10+'第'+inttostr(j)+'行:';
                if id4=0 then sbodcd:=sbodcd+',未取得事业部';
                if id5=0 then sbodcd:=sbodcd+',未取得区域经理';
                if id6=0 then sbodcd:=sbodcd+',未取得省份城市';
                if id8=0 then sbodcd:=sbodcd+',未取得业务员';
                if id9=0 then sbodcd:=sbodcd+',未取得客户';
                if id10=0 then sbodcd:=sbodcd+',未取得目标医院或已停用';
                if id11=0 then sbodcd:=sbodcd+',未取得品种';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    if sbodcd<>'' then
    begin
        setprogress(0);
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'-----------------------------------'+sbodcd),'请注意',MB_OK+MB_IconError);
        XL.Quit;
        abort;
    end;
    setprogress(1);
//从第2行开始导入，导入格式: 1配送商编码,2配送商名称
    mi:=0;j:=2;  //第1行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        id2:=0;id4:=0;id5:=0;id6:=0;id8:=0;id9:=0;id10:=0; id11:=0;
        with dm.pubqry do
        begin
            if sheet.cells[j,2].text='' then id2:=0
            else if Trim(sheet.cells[j,2].text)='GD' then id2:=1
            else if Trim(sheet.cells[j,2].text)='GZ' then id2:=2
            else if Trim(sheet.cells[j,2].text)='HC' then id2:=3
            else id2:=0;
            if sheet.cells[j,4].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 and zdesc='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('obj_id').asinteger; //事业部
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger; //区域经理
            end;
            if sheet.cells[j,6].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)=Rtrim('''+Trim(sheet.cells[j,6].text)+' '+Trim(sheet.cells[j,7].text)+''')';
                open;
                if recordcount>0 then id6:=fieldbyname('rec_id').asinteger; //区域
            end;
            if sheet.cells[j,8].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,8].text)+'''';  // and comp_id='+inttostr(compid)+'
                open;
                if recordcount>0 then id8:=fieldbyname('mate_id').asinteger; //业务负责人
            end;
            if sheet.cells[j,9].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,9].text)+'''';
                open;
                if recordcount>0 then id9:=fieldbyname('mate_id').asinteger; //客户(商业公司)
            end;
            if sheet.cells[j,10].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name='''+Trim(sheet.cells[j,10].text)+'''';
                open;
                if recordcount>0 then id10:=fieldbyname('mate_id').asinteger; //医院
            end;
            if sheet.cells[j,11].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,11].text)+'''';
                open;
                if recordcount>0 then id11:=fieldbyname('med_id').asinteger; //品种
            end;

//导入Excel文件生成单据(格式: 1年度,2归属id2,3签订日期,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,10目标医院id10,
//  11药品编码id11,12供货价,13推广服务费,14 1月,15 2月,16 3月,17 4月,18 5月,19 6月,20 7月,21 8月,22 9月,23 10月,24 11月,25 12月,
//  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金

//1年度,4事业部id4,5区域经理id5,6省份id6,7城市,8业务员id8,9客户id9,11药品编码id11

            if active=true then close;
            commandtext:='select top 1 rec_id from tb_report21 where comp_id= '+inttostr(compid)+' and fyear='+sheet.cells[j,1].text;
            commandtext:=commandtext+' and level_id1='+inttostr(id4)+' and lead_id='+inttostr(id5)+' and district_id='+inttostr(id6);
            commandtext:=commandtext+' and broker_id='+inttostr(id8)+' and mate_id='+inttostr(id9)+' and med_id='+inttostr(id11);
            open;
            if recordcount=0 then
            begin
                if active=true then close;
                commandtext:='insert into tb_report21 (comp_id,fyear,type_id2,sign_dt,level_id1,lead_id,district_id,broker_id,mate_id,mate_id1,med_id,';
                commandtext:=commandtext+'price,amot1,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,qty1,qty2,';
                commandtext:=commandtext+'fmonth,dt1,dt2,appoint,insure_amot,creat_by,creat_dt)';
                if sheet.cells[j,1].text='' then commandtext:=commandtext+'values ('+inttostr(compid)+',null,'
                    else commandtext:=commandtext+' values ('+inttostr(compid)+','+sheet.cells[j,1].text+',';
                commandtext:=commandtext+inttostr(id2)+',';
    //showmessage(sheet.cells[j,3].text);
                if sheet.cells[j,3].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,3].text));
                except
                    dt:=0;
                end;
    //showmessage(datetimetostr(dt));
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+inttostr(id4)+',';
                commandtext:=commandtext+inttostr(id5)+',';
                commandtext:=commandtext+inttostr(id6)+',';
                commandtext:=commandtext+inttostr(id8)+',';  // 业务员
                commandtext:=commandtext+inttostr(id9)+',';
                commandtext:=commandtext+inttostr(id10)+',';
                commandtext:=commandtext+inttostr(id11)+','; //药品

                if sheet.cells[j,12].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,12].text)+',';
                if sheet.cells[j,13].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,13].text)+',';
                if sheet.cells[j,14].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,14].text)+',';
                if sheet.cells[j,15].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,15].text)+',';
                if sheet.cells[j,16].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,16].text)+',';
                if sheet.cells[j,17].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,17].text)+',';
                if sheet.cells[j,18].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,18].text)+',';
                if sheet.cells[j,19].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,19].text)+',';
                if sheet.cells[j,20].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,20].text)+',';
                if sheet.cells[j,21].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,21].text)+',';
                if sheet.cells[j,22].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,22].text)+',';
                if sheet.cells[j,23].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,23].text)+',';
                if sheet.cells[j,24].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,24].text)+',';
                if sheet.cells[j,25].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,25].text)+',';

                if sheet.cells[j,26].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,26].text)+',';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';

    //  26首批提货量,27目标销量,28预计开发月份,29起始日期,30结束日期,31其他约定,32保证金
                commandtext:=commandtext+''''+Trim(sheet.cells[j,28].text)+''','; //预计开发月份
                if sheet.cells[j,29].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,29].text));
                except
                    dt:=0;
                end;
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                if sheet.cells[j,30].text='' then dt:=0 else
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,30].text));
                except
                    dt:=0;
                end;
                if dt=0 then commandtext:=commandtext+'null,' else commandtext:=commandtext+''''+datetimetostr(dt)+''',';
                commandtext:=commandtext+''''+Trim(sheet.cells[j,31].text)+''','; //预计开发月份
                if sheet.cells[j,32].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,32].text)+',';
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
    //edit1.text:=commandtext;
    //exit;
                open;
                mi:=fields[0].asinteger;
            end
            else mi:=fields[0].asinteger;
            if id10>0 then // 取得目标医院
            begin
                if active=true then close;
                commandtext:='if not exists (select 1 from tb_report21dtl where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10)+')';
                commandtext:=commandtext+' insert into tb_report21dtl (rec_id,mate_id1,qty2,creat_dt,creat_by)';
                commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id10)+',';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' getdate(),'+inttostr(curuserid)+')';
                commandtext:=commandtext+' else update tb_report21dtl set qty2=';
                if sheet.cells[j,27].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,27].text)+',';
                commandtext:=commandtext+' modify_dt=getdate(),modify_by='+inttostr(curuserid);
                commandtext:=commandtext+' where rec_id='+inttostr(mi)+' and mate_id1='+inttostr(id10);
//edit2.text:=commandtext;
                execute;
            end;
//10目标医院id10,   27目标销量
        end;
        inc(j);
    end;
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then qry.locate('rec_id',mi,[]);
end;

procedure Tsetreport21.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_report21dtl','dtl_id','');
end;

procedure Tsetreport21.qrydtlBeforeDelete(DataSet: TDataSet);
begin
//if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport21.qrydtlBeforePost(DataSet: TDataSet);
begin
with qrydtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('rec_id').asinteger:= qry.fieldbyname('rec_id').asinteger;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport21.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tsetreport21.wwDBNavigator1PostClick(Sender: TObject);
begin
//if qrydtl.ChangeCount>0 then qrydtl.post;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
//if not (qry.State in [dsinsert]) and (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tsetreport21.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tsetreport21.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tsetreport21.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin

end;
end;

procedure Tsetreport21.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol is Tdxdbgrid then

    else
    begin
        key:=#0;
        perform(WM_NEXTDLGCTL,0,0);
    end;
end;
end;

procedure Tsetreport21.MenuItem9Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
end;

procedure Tsetreport21.qryAfterInsert(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
    fieldbyname('creat_by').asinteger:=curuserid;
end;
end;

procedure Tsetreport21.dxDBGrid2mate_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if not (qrydtl.state in [dsinsert,dsedit]) then qrydtl.edit;
    if showmodal= mrOK then
    begin
        qrydtl.fieldbyname('mate_id').asinteger:= query1.fieldbyname('mate_id').asinteger;
        qrydtl.fieldbyname('mate_name').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        qrydtl.fieldbyname('mate_id').asinteger:=0;
        qrydtl.fieldbyname('mate_name').asstring:='';
    end;
end;
end;

procedure Tsetreport21.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

procedure Tsetreport21.N10Click(Sender: TObject);
begin
if (qry.active=False) or (qry.recordcount=0) or (qry.fieldbyname('rec_id').asinteger=0) then exit;
if qry.fieldbyname('creat_by').asinteger=curuserid then raise Exception.Create('不可审核本人记录');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='update tb_report21 set check_by='+inttostr(curuserid)+',check_dt=getdate() where rec_id='+qry.fieldbyname('rec_id').asstring;
    execute;
end;
refreshmyrecord(qry,dm.Refreshcds,0,'rec_id',qry.fieldbyname('rec_id').asinteger);
end;

procedure Tsetreport21.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cchecked) then
begin
    if (ANode.Values[dxDBGrid1cchecked.Index] = True) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetreport21.qryCalcFields(DataSet: TDataSet);
begin
with qry do
    fieldbyname('cchecked').asboolean:=(fieldbyname('check_by').asinteger>0);
end;

end.
