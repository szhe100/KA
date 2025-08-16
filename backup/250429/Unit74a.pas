unit Unit74a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ADODB, ImgList, Menus, DB, DBClient, StdCtrls, dxEdLib, Comobj,
  ExtCtrls, dxdbtrel, dxEditor, wwSpeedButton, wwDBNavigator, wwclearpanel,
  dxDBEdtr, dxDBELib;

type
  Tsetreport15 = class(TForm)
    SpeedButton4: TSpeedButton;
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
    qry: TClientDataSet;
    DSqry: TDataSource;
    SpeedButton3: TSpeedButton;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrymed_type: TStringField;
    qryqtyperpack: TBCDField;
    qrycreater: TStringField;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
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
    DataSource1: TDataSource;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource2: TDataSource;
    Edit1: TEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    level2: TClientDataSet;
    level2obj_id: TAutoIncField;
    level2zdesc: TStringField;
    DSlevel2: TDataSource;
    DSlevel1: TDataSource;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    dxButtonEdit3: TdxButtonEdit;
    dxLookupEdit2: TdxLookupEdit;
    dxLookupEdit1: TdxLookupEdit;
    Label2: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label6: TLabel;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    qrydist1: TStringField;
    qrydist2: TStringField;
    qrydist3: TStringField;
    qryrec_id: TAutoIncField;
    qrycomp_id: TWordField;
    qrylevel_id1: TIntegerField;
    qrylevel_id2: TIntegerField;
    qrylevel_id3: TIntegerField;
    qrydistrict_id: TIntegerField;
    qrymed_id: TIntegerField;
    qrymate_id: TIntegerField;
    qryqty1: TSmallintField;
    qryqty2: TSmallintField;
    qryqty3: TSmallintField;
    qryqty4: TSmallintField;
    qryqty5: TSmallintField;
    qryqty6: TSmallintField;
    qryqty7: TSmallintField;
    qryqty8: TSmallintField;
    qryqty9: TSmallintField;
    qryqty10: TSmallintField;
    qryqty11: TSmallintField;
    qryqty12: TSmallintField;
    qrycreat_by: TIntegerField;
    qrycreat_dt: TDateTimeField;
    qrymate_name: TStringField;
    qryCqty: TIntegerField;
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1qty0: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    qrydtl: TClientDataSet;
    DSqrydtl: TDataSource;
    qrydtldtl_id: TAutoIncField;
    qrydtlrec_id: TIntegerField;
    qrydtlmate_id1: TIntegerField;
    qrydtlmate_name1: TStringField;
    qrydtlmate_name: TStringField;
    qrydtlf1: TBooleanField;
    qrydtlf2: TBooleanField;
    qrydtldt1: TDateTimeField;
    qrydtldt2: TDateTimeField;
    qrydtlqty1: TSmallintField;
    qrydtlqty2: TSmallintField;
    qrydtlqty3: TSmallintField;
    qrydtlqty4: TSmallintField;
    qrydtlqty5: TSmallintField;
    qrydtlqty6: TSmallintField;
    qrydtlqty7: TSmallintField;
    qrydtlqty8: TSmallintField;
    qrydtlqty9: TSmallintField;
    qrydtlqty10: TSmallintField;
    qrydtlqty11: TSmallintField;
    qrydtlqty12: TSmallintField;
    qrydtlCqty: TIntegerField;
    qrydtlcreat_by: TIntegerField;
    qrydtlcreat_dt: TDateTimeField;
    qrydtlmodify_by: TIntegerField;
    qrydtlmodify_dt: TDateTimeField;
    qrydtlcreater: TStringField;
    qrydtlcamt1: TFloatField;
    qrydtlcamt2: TFloatField;
    qrydtlcamt3: TFloatField;
    qrydtlcamt4: TFloatField;
    qrydtlcamt5: TFloatField;
    qrydtlcamt6: TFloatField;
    qrydtlcamt7: TFloatField;
    qrydtlcamt8: TFloatField;
    qrydtlcamt9: TFloatField;
    qrydtlcamt10: TFloatField;
    qrydtlcamt11: TFloatField;
    qrydtlcamt12: TFloatField;
    qrydtlcamot: TFloatField;
    qrydtltype_id1: TWordField;
    qrydtltype_id2: TWordField;
    qrydtlLtype1: TStringField;
    qrydtlLtype2: TStringField;
    DSbroker: TDataSource;
    broker: TClientDataSet;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    dxLookupEdit4: TdxLookupEdit;
    dxButtonEdit4: TdxButtonEdit;
    qryleader: TStringField;
    qrylead_id: TIntegerField;
    Label8: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Shape7: TShape;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1level_id1: TIntegerField;
    ADOQuery1level_id2: TIntegerField;
    ADOQuery1level_id3: TIntegerField;
    ADOQuery1lead_id: TIntegerField;
    ADOQuery1district_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1qty0: TSmallintField;
    ADOQuery1qty1: TSmallintField;
    ADOQuery1qty2: TSmallintField;
    ADOQuery1qty3: TSmallintField;
    ADOQuery1qty4: TSmallintField;
    ADOQuery1qty5: TSmallintField;
    ADOQuery1qty6: TSmallintField;
    ADOQuery1qty7: TSmallintField;
    ADOQuery1qty8: TSmallintField;
    ADOQuery1qty9: TSmallintField;
    ADOQuery1qty10: TSmallintField;
    ADOQuery1qty11: TSmallintField;
    ADOQuery1qty12: TSmallintField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    qryqty0: TSmallintField;
    ADOQuery1type_id: TWordField;
    qrytype_id: TWordField;
    qryCtype: TStringField;
    Label10: TLabel;
    qryCqty0: TIntegerField;
    Label13: TLabel;
    ADOQuery1istarget: TBooleanField;
    qryistarget: TBooleanField;
    dxDBGrid1istarget: TdxDBGridCheckColumn;
    dxDBGrid1modifier: TdxDBGridColumn;
    dxDBGrid1modify_dt: TdxDBGridColumn;
    qrymodify_by: TIntegerField;
    qrymodify_dt: TDateTimeField;
    qrymodifier: TStringField;
    ADOQuery1f1: TBooleanField;
    ADOQuery1qty13: TBCDField;
    ADOQuery1qty14: TBCDField;
    qryf1: TBooleanField;
    qryqty13: TBCDField;
    qryqty14: TBCDField;
    dxDBGrid1qty13: TdxDBGridColumn;
    dxDBGrid1f1: TdxDBGridCheckColumn;
    dxDBGrid1qty14: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure medataReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlCalcFields(DataSet: TDataSet);
    procedure qrydtlAfterPost(DataSet: TDataSet);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qrydtlBeforePost(DataSet: TDataSet);
    procedure qrydtlBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure DSqrydtlStateChange(Sender: TObject);
    procedure wwDBNavigator1CancelClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setreport15: Tsetreport15;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a, Unit28d, Unit28c;

{$R *.DFM}

procedure Tsetreport15.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring +' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetreport15.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetreport15.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
{
with qrydtl do
begin
    if tag=qry.fieldbyname('rec_id').asinteger then exit;
    if active=True then close;
    commandtext:='select a.*,mate_name1=b.mate_name,creater=c.zname';
    commandtext:=commandtext+' from tb_medindexdtl a left join tb_busimate b on a.mate_id1=b.mate_id left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+' where rec_id='+qry.fieldbyname('rec_id').asstring;
edit1.text:=commandtext;    
    open;
    tag:=qry.fieldbyname('rec_id').asinteger;
end;
}
end;

procedure Tsetreport15.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
//if Trim(dxLookupEdit1.text)='' then raise Exception.Create('��ѡ����ҵ��');
//if Trim(dxLookupEdit2.text)='' then raise Exception.Create('��ѡ�����');
//if Trim(dxButtonEdit3.text)='' then raise Exception.Create('��ѡ��С��');
//if Trim(dxButtonEdit4.text)='' then raise Exception.Create('��ѡ��������');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('��ѡ�����');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('��ѡ��Ʒ��');
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('��ѡ��ҽԺ');
//if dxDateEdit1.Text='' then raise Exception.Create('��������Ч����');

with dm.pubqry do
begin
    if MessageBox(0,pchar('ȷ�����뱾��¼'),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active=true then close;
    commandtext:='insert into tb_report15 (type_id,comp_id,level_id1,level_id2,level_id3,district_id,lead_id,mate_id,med_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values (1,'+inttostr(compid)+','+level1.fieldbyname('obj_id').asstring+',';
    commandtext:=commandtext+level2.fieldbyname('obj_id').asstring+','+inttostr(dxButtonEdit3.tag)+',';
    commandtext:=commandtext+dm.district.fieldbyname('rec_id').asstring+',';
    commandtext:=commandtext+inttostr(dxButtonEdit4.tag)+','+inttostr(dxButtonEdit2.tag)+','+inttostr(dxButtonEdit1.tag)+',';
    commandtext:=commandtext+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    qry.locate('rec_id',mi,[]);
end;
end;

procedure Tsetreport15.qryBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_medindexdtl where rec_id='+qry.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('����¼���¼���ϸ��¼������ɾ��');
end;
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport15.qryAfterPost(DataSet: TDataSet);
begin
if qry.ChangeCount>0 then myupdaterefresh(qry,'tb_report15','rec_id','');
end;

procedure Tsetreport15.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select a.*,level1=b.zdesc,level2=c.zdesc,level3=d.zdesc,e.mate_name,';
    commandtext:=commandtext+'  m.med_code,m.med_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(a.med_id),m.qtyperpack,';
    commandtext:=commandtext+'  mate_name=dbo.fn_mate_name(a.mate_id),';
    commandtext:=commandtext+'	leader=dbo.fn_staff_name (a.lead_id),';
    commandtext:=commandtext+'  creater=s.zname,modifier=t.zname,';
    commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
    commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
    commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
    commandtext:=commandtext+' from tb_report15 a';
    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_busimate e on a.mate_id=e.mate_id';
    commandtext:=commandtext+' inner join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff s on a.creat_by=s.sta_id';
    commandtext:=commandtext+' left join tb_staff t on a.creat_by=t.sta_id';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
//    if dxCheckEdit1.Checked then
//    begin
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.level_id2='+level2.fieldbyname('obj_id').asstring;
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.level_id3='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit4.Tag);
//        if Trim(dxDateEdit1.text)<>'' then commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.text+'''';
//    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
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

procedure Tsetreport15.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetreport15.medataReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetreport15.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetreport15.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
//with dm.district do if active=True then close;
with level1 do if active=True then close;
with level2 do if active=True then close;
with type1 do if active=True then close;
with type2 do if active=True then close;
with qry do if active=True then close;
with qrydtl do if active=True then close;
end;

procedure Tsetreport15.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
end;

procedure Tsetreport15.N3Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
    ClickedOK := InputQuery('��ѯ�ؼ���', '������', NewString);
    if ClickedOK then
        with dxdbgrid1 do
        begin
            StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
            EndSearch;
        end;
end;

procedure Tsetreport15.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetreport15.N2Click(Sender: TObject);
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

procedure Tsetreport15.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
end;

procedure Tsetreport15.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
{
with broker do
begin
    if active=false then
    begin
        commandtext:='select sta_id,zname from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and isnull(stop_yn,0)=0 order by zname';
        open;
    end;
end;
}
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
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''�ǻ���ҽ��'' union select obj_id=2,zdesc=''��ҩ'' union select obj_id=3,zdesc=''�ǻ�ҽ��''';
        open;       //�ǻ���ҽ��/��ҩ/�ǻ�ҽ��
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''�ѿ���'' union select obj_id=2,zdesc=''Ԥ�ƿ���''';
        open;  //�ѿ���/Ԥ�ƿ���
    end;
end;
}
end;

procedure Tsetreport15.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetreport15.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    case fieldbyname('type_id').asinteger of
        1:  fieldbyname('ctype').asstring:='Ŀ��ҽԺĿ����';
        2:  fieldbyname('ctype').asstring:='Ŀ��ҽԺʵ�������';
        3:  fieldbyname('ctype').asstring:='�����';
    end;
end;
end;

procedure Tsetreport15.qryBeforePost(DataSet: TDataSet);
begin
with qry do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('modify_by').asinteger:=curuserid;
        fieldbyname('modifier').asstring:=curuser;
    end;
end;
end;

procedure Tsetreport15.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
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
    j:=2;  //��2�п�ʼ ÿ��һ��
//�����ʽ: ����,ҩƷ����,�б�,��������
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����������'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('�����ļ������������⣬��������'+#13#10+'------------------------------'+serror),'��ע��',MB_OK+MB_ICONError);
        abort;
    end;

    setprogress(1);
    j:=2;  //��2�п�ʼ ÿ��һ��
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����������'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;

            if active=true then close;
            commandtext:='if not exists (select 1 from tb_medata where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2)+')';
            commandtext:=commandtext+' insert into tb_medata (type_id,comp_id,id1,med_id,price,rate,creat_by,creat_dt)';
            commandtext:=commandtext+' values (1,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+',';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text)+',';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0,' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text)+',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+' else update tb_medata set price=';
            if sheet.cells[j,3].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,3].text);
            commandtext:=commandtext+' ,rate=';
            if sheet.cells[j,4].text='' then commandtext:=commandtext+'0' else commandtext:=commandtext+cleardeli(sheet.cells[j,4].text);
            commandtext:=commandtext+' where type_id=1 and comp_id='+inttostr(compid);
            commandtext:=commandtext+' and id1='+inttostr(id1);
            commandtext:=commandtext+' and med_id='+inttostr(id2);
//edit2.text:=commandtext;            
            execute;
        end;
        j:=j+1;
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    MessageBox(0,pchar(SFileName+'�ѳɹ�����'),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport15.SpeedButton1Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,ss: string;
    J,mi,mid,id1,id2,id3,id4,id5,id6,id7 : integer;
    qty: real;
    dt1,dt2: TDatetime;
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
    j:=2; mi:=0; //��2�п�ʼ ÿ��һ��
//�����ʽ: 1ʡ��,2����,3ҽԺ����,4�Ƿ�Ŀ��ҽԺ,5ҩƷ����,6��Ŀ����,7��Ǳ����,8�Ƿ�����,9�������
    while (sheet.cells[j,1].text<>'') and (mi<10) do
    begin
        id1:=0;id3:=0;id4:=0;id5:=0;id6:=0;qty:=0;
        with dm.pubqry do
        begin
            if (sheet.cells[j,1].text<>'') or (sheet.cells[j,2].text<>'') then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,1].text)+' '+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;
            end;
            if sheet.cells[j,4].text='��' then id4:=1 else id4:=0;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,5].text+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id5:=fieldbyname('med_id').asinteger;
            end;

            if sheet.cells[j,1].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,3].text+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname ='''+Trim(sheet.cells[j,5].text)+'''';  //������
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger;
            end;

            if sheet.cells[j,6].text='' then qty:=0 else
            try
                qty:=strtofloat(Trim(sheet.cells[j,6].text));
            except
                qty:=0;
            end;

//�����ʽ: 1ʡ��,2����,3ҽԺ����,4�Ƿ�Ŀ��ҽԺ,5ҩƷ����,6��Ŀ����,7��Ǳ����,8�Ƿ�����,9�������
            if (id1=0) or (id3=0) or (id5=0) then   // or (id2=0)
            begin
                serror:=serror+#13#10+'��'+inttostr(j)+'��:';
                if id1=0 then serror:=serror+',δȡ��ʡ�ݻ����';
                if id3=0 then serror:=serror+',δȡ��ҽԺ';
                if id5=0 then serror:=serror+',δȡ��ҩƷ';
                mi:=mi+1;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('�����ļ������������⣬��������'+#13#10+'------------------------------'+serror),'��ע��',MB_OK+MB_ICONError);
        abort;
    end;
//�����ʽ: 1ʡ��,2����,3ҽԺ����,4�Ƿ�Ŀ��ҽԺ,5ҩƷ����,6��Ŀ����,7��Ǳ����,8�Ƿ�����,9�������
    setprogress(1);
    j:=2;  //��2�п�ʼ ÿ��һ��
    while (sheet.cells[j,1].text<>'') do
    begin
        id1:=0;id3:=0;id4:=0;id5:=0;id6:=0;qty:=0;
        with dm.pubqry do
        begin
            if (sheet.cells[j,1].text<>'') or (sheet.cells[j,2].text<>'') then
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,1].text)+' '+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=1 and comp_id='+inttostr(compid)+' and mate_name ='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger;
            end;
            if sheet.cells[j,4].text='��' then id4:=1 else id4:=0;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,5].text+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id5:=fieldbyname('med_id').asinteger;
            end;

            if sheet.cells[j,1].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,2].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,3].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+sheet.cells[j,3].text+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger;
            end;
            if sheet.cells[j,5].text<>'' then
            begin
                if active=true then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname ='''+Trim(sheet.cells[j,5].text)+'''';  //������
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger;
            end;

            if sheet.cells[j,6].text='' then qty:=0 else
            try
                qty:=strtofloat(cleardeli(sheet.cells[j,6].text));   //cleardeli(sheet.cells[j,7].text)
            except
                qty:=0;
            end;
//�����ʽ: 1ʡ��,2����,3ҽԺ����,4�Ƿ�Ŀ��ҽԺ,5ҩƷ����,6��Ŀ����,7��Ǳ����,8�Ƿ�����,9�������
            if active=true then close;
            commandtext:='select top 1 rec_id from tb_report15 where type_id=1 and comp_id= '+inttostr(compid);
            commandtext:=commandtext+' and district_id='+inttostr(id1)+' and mate_id='+inttostr(id3)+' and med_id='+inttostr(id5);
            open;
            if recordcount=0 then
            begin
                if active=true then close;
                commandtext:=' insert into tb_report15 (type_id,comp_id,district_id,mate_id,istarget,med_id,qty0,qty13,qty14,f1,creat_by,creat_dt)';
                commandtext:=commandtext+' values (1,'+inttostr(compid)+','+inttostr(id1)+','+inttostr(id3)+','+inttostr(id4)+','+inttostr(id5)+','+floattostr(qty)+',';
                if sheet.cells[j,7].text='' then commandtext:=commandtext+'0,'
                    else commandtext:=commandtext+ cleardeli(sheet.cells[j,7].text)+',';   //cleardeli(sheet.cells[j,7].text)
                if sheet.cells[j,9].text='' then commandtext:=commandtext+'0,'
                    else commandtext:=commandtext+ cleardeli(sheet.cells[j,9].text)+',';   //cleardeli(sheet.cells[j,7].text)
                if (sheet.cells[j,7].text='��') or (sheet.cells[j,7].text='����')
                    then commandtext:=commandtext+'1,' else commandtext:=commandtext+'0,';
                commandtext:=commandtext+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+' select @@identity';
                open;
                mi:=fields[0].asinteger;
            end
            else
            begin
                mi:=fields[0].asinteger;
                if active=true then close;
                commandtext:=' update tb_report15 set istarget='+inttostr(id4)+',qty0='+floattostr(qty);
                if sheet.cells[j,7].text='' then commandtext:=commandtext+',qty13=0'
                    else commandtext:=commandtext+ ',qty13='+cleardeli(sheet.cells[j,7].text);   //cleardeli(sheet.cells[j,7].text)
                if sheet.cells[j,9].text='' then commandtext:=commandtext+',qty14=0'
                    else commandtext:=commandtext+ ',qty14='+cleardeli(sheet.cells[j,9].text);   //cleardeli(sheet.cells[j,7].text)
                if (sheet.cells[j,7].text='��') or (sheet.cells[j,7].text='����')
                    then commandtext:=commandtext+',f1=1' else commandtext:=commandtext+',f1=0';
                commandtext:=commandtext+',modify_by='+inttostr(curuserid)+',modify_dt=getdate() where rec_id='+inttostr(mi);
                execute;
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then qry.Locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'�ѳɹ�����'),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetreport15.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picklevel3 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;
end;

procedure Tsetreport15.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
end;

procedure Tsetreport15.qrydtlCalcFields(DataSet: TDataSet);
begin
with qrydtl do
begin
    fieldbyname('cqty').asfloat:=
         fieldbyname('qty1').asfloat+fieldbyname('qty2').asfloat+fieldbyname('qty3').asfloat+fieldbyname('qty4').asfloat
        +fieldbyname('qty5').asfloat+fieldbyname('qty6').asfloat+fieldbyname('qty7').asfloat+fieldbyname('qty8').asfloat
        +fieldbyname('qty9').asfloat+fieldbyname('qty10').asfloat+fieldbyname('qty11').asfloat+fieldbyname('qty12').asfloat;
    fieldbyname('camt1').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty1').asfloat;
    fieldbyname('camt2').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty2').asfloat;
    fieldbyname('camt3').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty3').asfloat;
    fieldbyname('camt4').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty4').asfloat;
    fieldbyname('camt5').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty5').asfloat;
    fieldbyname('camt6').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty6').asfloat;
    fieldbyname('camt7').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty7').asfloat;
    fieldbyname('camt8').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty8').asfloat;
    fieldbyname('camt9').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty9').asfloat;
    fieldbyname('camt10').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty10').asfloat;
    fieldbyname('camt11').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty11').asfloat;
    fieldbyname('camt12').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('qty12').asfloat;
    fieldbyname('camot').asfloat:=qry.fieldbyname('price').asfloat*fieldbyname('cqty').asfloat;
end;
end;

procedure Tsetreport15.qrydtlAfterPost(DataSet: TDataSet);
begin
if qrydtl.ChangeCount>0 then myupdaterefresh(qrydtl,'tb_medindexdtl','dtl_id','');
end;

procedure Tsetreport15.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
end;

procedure Tsetreport15.qrydtlBeforePost(DataSet: TDataSet);
begin
with qrydtl do
begin
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('creat_by').asinteger:=curuserid;
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('rec_id').asinteger:= qry.fieldbyname('rec_id').asinteger;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetreport15.qrydtlBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetreport15.wwDBNavigator1PostClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.post;
end;

procedure Tsetreport15.DSqrydtlStateChange(Sender: TObject);
begin
if qrydtl.state in [dsinsert,dsedit] then qry.edit;
end;

procedure Tsetreport15.wwDBNavigator1CancelClick(Sender: TObject);
begin
if (qrydtl.State in [dsinsert,dsedit]) then qrydtl.cancelUpdates;
end;

procedure Tsetreport15.dxDBGrid2Enter(Sender: TObject);
begin
with qrydtl do
    if recordcount=0 then append;
end;

end.
