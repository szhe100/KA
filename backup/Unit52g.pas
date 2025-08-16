unit Unit52g;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tqryreport12a = class(TForm)
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
    qryprice: TBCDField;
    qrytype_id1: TWordField;
    qryLtype1: TStringField;
    qrytype_id2: TWordField;
    qryLtype2: TStringField;
    qrycreater: TStringField;
    qrycomp_id: TWordField;
    qryvalid: TBooleanField;
    qryfyear: TSmallintField;
    qrysign_dt: TDateTimeField;
    qrylevel_id1: TSmallintField;
    qrylead_id: TIntegerField;
    qrybroker_id: TIntegerField;
    qrydistrict_id: TIntegerField;
    qrymate_id: TIntegerField;
    qryfyear1: TSmallintField;
    qryf1: TBCDField;
    qryf2: TBCDField;
    qryf3: TBCDField;
    qryf4: TBCDField;
    qryf5: TBCDField;
    qryf6: TBCDField;
    qryf7: TBCDField;
    qryf8: TBCDField;
    qryf9: TBCDField;
    qryf10: TBCDField;
    qryf11: TBCDField;
    qryf12: TBCDField;
    qryqty1: TBCDField;
    qrymate_id1: TIntegerField;
    qryqty2: TBCDField;
    qrydt1: TDateTimeField;
    qrydt2: TDateTimeField;
    qryinsure_amot: TBCDField;
    qryq1: TWordField;
    qryq2: TWordField;
    qryq3: TWordField;
    qryq4: TWordField;
    qryr1: TWordField;
    qryr2: TWordField;
    qryr3: TWordField;
    qryr4: TWordField;
    qryzname1: TStringField;
    qrycontact1: TStringField;
    qryfax1: TStringField;
    qryaddress1: TStringField;
    qryzname2: TStringField;
    qrycontact2: TStringField;
    qryfax2: TStringField;
    qryaddress2: TStringField;
    qrydestination: TStringField;
    qrylevel1: TStringField;
    qrychm_name: TStringField;
    qryqtyperpack: TBCDField;
    qryqtyperbox: TBCDField;
    qryleader: TStringField;
    qrybroker: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    Shape3: TShape;
    Label2: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    Shape4: TShape;
    Label4: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    Shape5: TShape;
    Label5: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxLookupEdit1: TdxLookupEdit;
    Label6: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    Shape7: TShape;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    DSbroker: TDataSource;
    Button1: TButton;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    qryamot1: TBCDField;
    qryappoint: TStringField;
    qryfmonth: TStringField;
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
    qrydtlqty2: TBCDField;
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1amot1: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    qrymodify_dt: TDateTimeField;
    qrymodify_by: TIntegerField;
    qrydtlfmonth: TStringField;
    dxButtonEdit5: TdxButtonEdit;
    Shape8: TShape;
    Label12: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    Label8: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem9: TMenuItem;
    ADOQuery1sign_by: TIntegerField;
    ADOQuery1signer: TStringField;
    qrysign_by: TIntegerField;
    qrysigner: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    dxLookupEdit2: TdxLookupEdit;
    dxButtonEdit6: TdxButtonEdit;
    Label13: TLabel;
    Label14: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    Label15: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery2type_id3: TWordField;
    ADOQuery2task_amot: TBCDField;
    ADOQuery2flow_cd: TStringField;
    qrytype_id3: TWordField;
    qrytask_amot: TBCDField;
    qryflow_cd: TStringField;
    type3: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField2: TStringField;
    qryLtype3: TStringField;
    dxDBGrid1flow_cd: TdxDBGridColumn;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    dxDBGrid1rec_id: TdxDBGridColumn;
    dxDateEdit3: TdxDateEdit;
    Label16: TLabel;
    Shape11: TShape;
    Label17: TLabel;
    dxDateEdit4: TdxDateEdit;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1qty2: TdxDBGridColumn;
    dxDBGrid1fmonth: TdxDBGridColumn;
    dxDBGrid1sign_dt: TdxDBGridColumn;
    dxDBGrid1Ltype1: TdxDBGridColumn;
    dxDBGrid1Ltype2: TdxDBGridColumn;
    dxDBGrid1Ltype3: TdxDBGridColumn;
    dxDBGrid1signer: TdxDBGridColumn;
    qrymate_code: TStringField;
    dxDBGrid1mate_code: TdxDBGridColumn;
    dxDBGrid1dt1: TdxDBGridColumn;
    dxDBGrid1dt2: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure qryBeforeDelete(DataSet: TDataSet);
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
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure dxDBGrid2mate_name1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid1signerButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport12a: Tqryreport12a;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a, Unit16a, Unit16c, Unit28c,
  Unit28d;

{$R *.DFM}

procedure Tqryreport12a.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tqryreport12a.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport12a.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
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
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_report01dtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
end;

procedure Tqryreport12a.qryBeforeDelete(DataSet: TDataSet);
begin
if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_report01dtl where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('本记录有下级记录，不可删除');
end;
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tqryreport12a.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select mate_name1=g.mate_name,g.mate_code,f.qty2,f.fmonth,a.*,signer=d.zname,level1=dbo.fn_obj_desc(e.level_id1),level2=dbo.fn_obj_desc(e.level_id2),level3=dbo.fn_obj_desc(e.level_id3),b.mate_name,mate_name1='''',';
//    commandtext:='select mate_name1=dbo.fn_mate_name(f.mate_id1),f.qty2,f.fmonth,a.*,signer=d.zname,level1=dbo.fn_obj_desc(e.level_id1),level2=dbo.fn_obj_desc(e.level_id2),level3=dbo.fn_obj_desc(e.level_id3),b.mate_name,mate_name1='''',';
    commandtext:=commandtext+'  m.med_code,m.med_name,m.chm_name,med_type=dbo.fn_med_type(m.med_id),m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,m.qtyperbox,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	leader=dbo.fn_staff_name (e.sta_id),';
    commandtext:=commandtext+'	broker=c.mate_name,';
    commandtext:=commandtext+'  creater=dbo.fn_staff_name(a.creat_by)';
    commandtext:=commandtext+' from tb_report01 a';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.broker_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.sign_by=d.sta_id';
    commandtext:=commandtext+' left join tb_report01dtl f on a.rec_id=f.rec_id';
    commandtext:=commandtext+' left join tb_busimate g on f.mate_id1=g.mate_id';
    if (dxCheckEdit1.Checked) and ((Trim(dxLookupEdit2.text)<>'') or (Trim(dxButtonEdit6.text)<>''))
        then commandtext:=commandtext+' inner join tb_busiframe e on e.rec_id=dbo.fn_getbusiframerecid(a.district_id,a.med_id,a.sign_dt)'
        else commandtext:=commandtext+' left join tb_busiframe e on e.rec_id=dbo.fn_getbusiframerecid(a.district_id,a.med_id,a.sign_dt)';
    commandtext:=commandtext+' where a.sign_dt>= '''+datetostr(dxdateedit1.date)+''' and a.sign_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit3.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if dxCheckEdit1.Checked then
    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit3.tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit4.tag);
        if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit5.tag);
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
//        if Trim(dxLookupEdit4.text)<>'' then commandtext:=commandtext+' and a.lead_id='+broker.fieldbyname('sta_id').asstring;
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and e.level_id2='+level2.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit6.text)<>'' then commandtext:=commandtext+' and e.level_id3='+inttostr(dxButtonEdit6.Tag);
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

procedure Tqryreport12a.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport12a.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqryreport12a.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with type1 do if active=True then close;
with type2 do if active=True then close;
with type3 do if active=True then close;
with qry do if active=True then close;
with qrydtl do if active=True then close;
end;

procedure Tqryreport12a.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxdateedit3.date:=dt_30;
dxdateedit4.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport12a.N3Click(Sender: TObject);
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

procedure Tqryreport12a.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryreport12a.N2Click(Sender: TObject);
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

procedure Tqryreport12a.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport12a.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
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
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''新签'' union select obj_id=2,zdesc=''续签''';
        open;
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''GD'' union select obj_id=2,zdesc=''GZ'' union select obj_id=3,zdesc=''HC''';
        open;
    end;
end;
with type3 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''医院代理'' union select obj_id=2,zdesc=''区域代理'' union select obj_id=3,zdesc=''省区代理''';
        open;
    end;
end;
end;

procedure Tqryreport12a.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryreport12a.qryBeforePost(DataSet: TDataSet);
begin
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

procedure Tqryreport12a.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tqryreport12a.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
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

procedure Tqryreport12a.dxButtonEdit4ButtonClick(Sender: TObject;
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

procedure Tqryreport12a.N7Click(Sender: TObject);
begin
with qry do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
end;

procedure Tqryreport12a.N8Click(Sender: TObject);
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
    commandtext:='insert into tb_report01 (comp_id,fyear,type_id1,type_id2,sign_dt,level_id1,lead_id,broker_id,district_id,mate_id,med_id,';
    commandtext:=commandtext+'	price,fyear1,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,qty1,mate_id1,qty2,fmonth,dt1,dt2,appoint,insure_amot,';
    commandtext:=commandtext+'	q1,q2,q3,q4,r1,r2,r3,r4,zname1,contact1,fax1,address1,zname2,contact2,fax2,address2,destination,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 comp_id,fyear,type_id1,type_id2,sign_dt,level_id1,lead_id,broker_id,district_id,mate_id,med_id,';
    commandtext:=commandtext+'	price,fyear1,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,qty1,mate_id1,qty2,fmonth,dt1,dt2,appoint,insure_amot,';
    commandtext:=commandtext+'	q1,q2,q3,q4,r1,r2,r3,r4,zname1,contact1,fax1,address1,zname2,contact2,fax2,address2,destination,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+' from tb_report01 where rec_id='+inttostr(frecid);
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

procedure Tqryreport12a.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tqryreport12a.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_report01dtl','dtl_id','');
end;

procedure Tqryreport12a.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if qry.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已生效，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tqryreport12a.qrydtlBeforePost(DataSet: TDataSet);
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

procedure Tqryreport12a.dxDBGrid2mate_name1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        if query1.fieldbyname('stop_yn').asboolean=True then raise Exception.Create('此医院已停用');
        if not (qrydtl.state in [dsinsert,dsedit]) then qrydtl.edit;
        qrydtl.fieldbyname('mate_id1').asinteger:= query1.fieldbyname('mate_id').asinteger;
        qrydtl.fieldbyname('mate_name1').asstring:= query1.fieldbyname('mate_name').asstring;
    end
    else
    begin
        if not (qrydtl.state in [dsinsert,dsedit]) then qrydtl.edit;
        qrydtl.fieldbyname('mate_id1').asinteger:= 0;
        qrydtl.fieldbyname('mate_name1').asstring:= '';
    end;
end;
end;

procedure Tqryreport12a.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tqryreport12a.wwDBNavigator1PostClick(Sender: TObject);
begin
//if qrydtl.ChangeCount>0 then qrydtl.post;
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
//if not (qry.State in [dsinsert]) and (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tqryreport12a.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tqryreport12a.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

procedure Tqryreport12a.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit5.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag :=0;
    end;
end;
end;

procedure Tqryreport12a.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then //showmessage('enter on dxdbgrid1'); // <Enter> key is pressed
begin

end;
end;

procedure Tqryreport12a.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tqryreport12a.dxDBGrid1signerButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if not (qry.state in [dsinsert,dsedit]) then qry.edit;
    if showmodal= mrOK then
    begin
        qry.fieldbyname('sign_by').asinteger:= query1.fieldbyname('sta_id').asinteger;
        qry.fieldbyname('signer').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        qry.fieldbyname('sign_by').asinteger:= 0;
        qry.fieldbyname('signer').asstring:= '';
    end;
end;
end;

procedure Tqryreport12a.dxButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit6.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit6.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit6.text:='';
        dxbuttonedit6.tag :=0;
    end;
end;
end;

procedure Tqryreport12a.N10Click(Sender: TObject);
var i,mi,n : integer; //l,m,k,o,p,,q,i1,i2,i3,i4,i5,i6,m1,m2,m3
    s,t: string;
    mcd: string[20];
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由所选合同生成合同生效申请单:'; //+ #13#10+'------------------------------------';
t:='';
mi:=0;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计合同笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=28'; // and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选合同已生成'+fieldbyname('bod_cd').asstring+'号合格生效申请单尚未完成审批,不可再次生成');
    if active=true then close;
    commandtext:='select top 1 1 from tb_report01 where rec_id in ('+t+') and valid=1';
    open;
    if recordcount>0 then raise Exception.Create('所选合同中有已生效合同,不可再次申请');
{
    if active=true then close;
    commandtext:='select top 1 1 from tb_report01 where rec_id in ('+t+') and isnull(creat_by,0)<>'+inttostr(curuserid);
    open;
    if recordcount>0 then raise Exception.Create('所选合同中有非本人录入的合同,请选择本人录入合同');
}
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,28)); //bod_type_id=28: 合同申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',28,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id';
    commandtext:=commandtext+' from tb_report01 where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号合同生效申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tqryreport12a.N11Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,i3,i4,i5,i6,m1,m2,m3 : integer;
    s,t: string;
    mcd: string[20];
begin
if (qry.active=false) or (qry.recordcount=0) then exit;
//  生成申请单时，应限制同设置人、同品种、同地区(地区不可包含)
s:='确定由所选合同生成合同生效申请单:'; //+ #13#10+'------------------------------------';
t:='';
mi:=0;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计合同笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=29'; // and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('所选合同已生成'+fieldbyname('bod_cd').asstring+'号合同失效申请单尚未完成审批,不可再次生成');
    if active=true then close;
    commandtext:='select top 1 1 from tb_report01 where rec_id in ('+t+') and isnull(valid,0)=0';
    open;
    if recordcount>0 then raise Exception.Create('所选合同中有未生效合同,不可申请');
{
    if active=true then close;
    commandtext:='select top 1 1 from tb_report01 where rec_id in ('+t+') and isnull(creat_by,0)<>'+inttostr(curuserid);
    open;
    if recordcount>0 then raise Exception.Create('所选合同中有非本人录入的合同,请选择本人录入合同');
}
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,29)); //bod_type_id=28: 合同申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',29,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id';
    commandtext:=commandtext+' from tb_report01 where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号合同失效申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

end.
