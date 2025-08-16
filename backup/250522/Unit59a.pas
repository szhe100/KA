unit Unit59a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, Comobj, mycds;

type
  Tsetmatelevel = class(TForm)
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
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
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
    Label4: TLabel;
    Shape3: TShape;
    dxSpinEdit1: TdxSpinEdit;
    SpeedButton4: TSpeedButton;
    dxCheckEdit1: TdxCheckEdit;
    dxDBGrid1level_id: TdxDBGridColumn;
    sysrulechm_name: TStringField;
    sysrulelevel_id: TWordField;
    dxDBGrid1qtyperpack: TdxDBGridColumn;
    sysruledistrict: TIntegerField;
    dxDBGrid1BEZEI: TdxDBGridColumn;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1type_id: TWordField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1level_id: TWordField;
    ADOQuery1f1: TBCDField;
    ADOQuery1f2: TBCDField;
    ADOQuery1f3: TBCDField;
    ADOQuery1f4: TBCDField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1modify_by: TIntegerField;
    ADOQuery1modify_dt: TDateTimeField;
    ADOQuery1modifier: TStringField;
    sysrulemodify_by: TIntegerField;
    sysrulemodify_dt: TDateTimeField;
    sysrulemodifier: TStringField;
    dxCheckEdit2: TdxCheckEdit;
    sysrulevalid_dt: TDateTimeField;
    dxDBGrid1valid_dt: TdxDBGridDateColumn;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    sysruleimport_log: TStringField;
    dxDBGrid1import_log: TdxDBGridColumn;
    sysrulematerial_code: TStringField;
    sysrulematerial_code1: TStringField;
    Edit2: TEdit;
    sysruleBEZEI: TStringField;
    sysruleCITY1: TStringField;
    dxDBGrid1CITY1: TdxDBGridColumn;
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
    procedure dxDBGrid1material_code1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure sysruleBeforePost(DataSet: TDataSet);
    procedure sysruleCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sysruleBeforeEdit(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmatelevel: Tsetmatelevel;

implementation

uses datamodu, Unit7, Unit16a, Unit28a;

{$R *.DFM}

procedure Tsetmatelevel.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetmatelevel.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmatelevel.DSsysruleDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(sysrule.active) and (sysrule.recordcount>0);
end;

procedure Tsetmatelevel.sysruleBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmatelevel.sysruleAfterPost(DataSet: TDataSet);
begin
with sysrule do
    if ChangeCount>0 then
    begin
        myupdaterefresh(sysrule,'tb_sysrule','rec_id','');
//        refreshmyrecord(sysrule,dm.Refreshcds,0,'rec_id', fieldbyname('rec_id').asinteger);
    end;
end;

procedure Tsetmatelevel.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select a.rec_id,a.type_id,a.comp_id,a.mate_id,a.med_id,b.mate_name,m.med_code,m.material_code,m.material_code1,m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,';
    commandtext:=commandtext+'	b.district,b.BEZEI,b.CITY1,med_unit=dbo.fn_obj_desc(m.unit_id),med_type=dbo.fn_med_type(m.med_id),m.qtyperpack,import_log='''',';
    commandtext:=commandtext+'	a.valid_dt,a.level_id,a.f4,a.creat_by,a.creat_dt,creater=c.zname,a.modify_by,a.modify_dt,modifier=d.zname';
    commandtext:=commandtext+'	from tb_sysrule a';
    commandtext:=commandtext+'	left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+'	left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'	left join tb_staff c on a.creat_by=c.sta_id';
    commandtext:=commandtext+'	left join tb_staff d on a.modify_by=d.sta_id';
    commandtext:=commandtext+'	where a.type_id=2'; // and a.comp_id='+inttostr(compid);
    if dxCheckEdit2.Checked then commandtext:=commandtext+'	and exists (select 1 from (select mate_id,med_id,rec_id=max(rec_id) from tb_sysrule where type_id=2 group by mate_id,med_id) h where a.rec_id=h.rec_id)';
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

procedure Tsetmatelevel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmatelevel.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmatelevel.dxButtonEdit2ButtonClick(Sender: TObject;
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

procedure Tsetmatelevel.dxDBGrid1lead_nameButtonClick(Sender: TObject;
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

procedure Tsetmatelevel.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
end;

procedure Tsetmatelevel.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
end;

procedure Tsetmatelevel.N3Click(Sender: TObject);
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

procedure Tsetmatelevel.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmatelevel.N2Click(Sender: TObject);
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

procedure Tsetmatelevel.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
end;

procedure Tsetmatelevel.dxDBGrid1mate_nameButtonClick(Sender: TObject;
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

procedure Tsetmatelevel.dxDBGrid1material_code1ButtonClick(Sender: TObject;
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

procedure Tsetmatelevel.dxDBGrid1Enter(Sender: TObject);
begin
with sysrule do
    if (active) and (recordcount=0) then append;
end;

procedure Tsetmatelevel.sysruleBeforePost(DataSet: TDataSet);
begin
with sysrule do
    if (fieldbyname('mate_id').asinteger=0) or (fieldbyname('med_id').asinteger=0)
        then raise Exception.Create('��ѡ����ҵ��Ʒ��');
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=1 and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+sysrule.fieldbyname('mate_id').asstring+' and med_id='+sysrule.fieldbyname('med_id').asstring;
    commandtext:=commandtext+' and rec_id<>'+inttostr(sysrule.fieldbyname('rec_id').asinteger);
//edit1.text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('���д�ҽԺ��Ʒ�ֵļ�¼�������ٴμ���');
end;
}
with sysrule do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('type_id').asinteger:=2;
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

procedure Tsetmatelevel.sysruleCalcFields(DataSet: TDataSet);
begin
//with sysrule do
//    fieldbyname('camot').asfloat:=fieldbyname('f1').asfloat+fieldbyname('f2').asfloat+fieldbyname('f3').asfloat+fieldbyname('f4').asfloat;
end;

procedure Tsetmatelevel.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit2.text)='' then raise Exception.Create('��ѡ����ҵ��˾');
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('��ѡ��Ʒ��');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_sysrule where type_id=2'; // and comp_id='+inttostr(compid);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
//    commandtext:=commandtext+' and level_id='+dxSpinEdit1.Text;
    open;
//    if recordcount>0 then raise Exception.Create('����ҵ��˾��Ʒ�������ø���ҵ���𣬲����ظ�����');
    if MessageBox(0,pchar('����ҵ��˾��Ʒ����������ҵ���𣬼�����'),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
{
    if active then close;
    commandtext:='select top 1 a.price,b.rate from tb_medata a,tb_busimate b ';
    commandtext:=commandtext+' where a.med_id='+inttostr(dxButtonEdit1.tag)+' and a.comp_id='+inttostr(compid)+' and a.type_id=1';
    commandtext:=commandtext+'  and b.mate_id='+inttostr(dxButtonEdit2.tag)+' and dbo.fn_treeischild(b.district,a.id1)=1 ';
    open;
    if recordcount=0 then raise Exception.Create('��Ʒ���ڸ���ҵ���ڵ�����δ�����б�ۣ���������');
    price:=fieldbyname('price').asfloat;
//    rate:=fieldbyname('rate').asfloat;
}
    if MessageBox(0,pchar('ȷ�����뱾��ҵ����'),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

    if active then close;
    commandtext:='insert into tb_sysrule (type_id,comp_id,mate_id,med_id,level_id,creat_by,creat_dt)';  //f4,
    commandtext:=commandtext+' values (2,'+inttostr(compid)+','+inttostr(dxButtonEdit2.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','+dxSpinEdit1.Text+','; //+floattostr(price)+',';
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

procedure Tsetmatelevel.sysruleBeforeEdit(DataSet: TDataSet);
begin
if sysrule.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������ü�¼�������޸�');
end;

procedure Tsetmatelevel.SpeedButton6Click(Sender: TObject);
var XL,Sheet: Variant;
    SFileName: string;
    m1,m2,J: integer;
    s,sql,sql1: string;
begin
    XL := CreateOleObject('Excel.Application'); //uses Comobj
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
    setprogress(1);
    m1:=0; m2:=0; j:=2;
//�ӵ�2�п�ʼ����, �����ʽ: 1��ҵ��˾, 2���۲ο����ϱ���, 3��ҵ����, 4��������
    sql:='declare @tab table (line_no varchar(3),f1 varchar(100),f2 varchar(100),f3 varchar(100),f4 varchar(100),mate_id int,med_id int )';
    sql:=sql+' insert into @tab (line_no,f1,f2,f3,f4)';
    while (sheet.cells[j,1].text<>'') do
    begin
        if j>2 then sql:=sql+' union all ';
        sql:=sql+' select '+inttostr(j)+','''+Trim(sheet.cells[j,1].text)+''','''+Trim(sheet.cells[j,2].text)+''','''+Trim(sheet.cells[j,3].text)+''','''+Trim(sheet.cells[j,4].text)+'''';
        j:=j+1;
    end;
    XL.Quit;
//�ӵ�2�п�ʼ����, �����ʽ: 1��ҵ��˾, 2���۲ο����ϱ���, 3��ҵ����, 4��������
    sql1:=sql;  //���������޴���ʱ����sql1 ��������
    sql:=sql+'select top 5 * from ( select top 5 info=line_no+''������ҵ��˾��������Ч'' from @tab a where f1='''' or not exists (select 1 from tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1)';
    sql:=sql+' union all select top 5 ''��''+line_no+''���޶��۲ο����ϱ����������Ч'' from @tab a where f2='''' or not exists (select 1 from tb_medicine b where b.material_code1=a.f2)';
    sql:=sql+' union all select top 5 ''��''+line_no+''������ҵ�����������Ч'' from @tab where f3='''' or try_cast(f3 as int) is null';
    sql:=sql+' union all select top 5 ''��''+line_no+''�����������ڻ�������Ч'' from @tab where f4='''' or try_cast(f4 as datetime) is null';
    sql:=sql+' ) a';
edit1.text:=sql;
//�ӵ�2�п�ʼ����, �����ʽ: ��ҵ��˾,ҩƷ���۲ο����ϱ���,��ҵ����,��������
    with dm.pubqry do
    begin
        if active then close;
        commandtext:=sql;
        open;
        if recordcount>0 then
        begin
            s:='�������ݴ����������⣬��������'+ #13#10;
            s:=s+'-----------------------------------------------------';  //+ #13#10
            while not eof do
            begin
                s := s+ #13#10 +fields[0].asstring;
                next;
            end;
            MessageBox(0,pchar(s),'��ע��',MB_OK+MB_IconError);
            abort;
        end;
        if active then close;

//�ӵ�2�п�ʼ����, �����ʽ: 1��ҵ��˾, 2���۲ο����ϱ���, 3��ҵ����, 4��������
//type_id,comp_id,mate_id,med_id,level_id,valid_dt,creat_by,creat_dt

        sql:=sql1;
        sql:=sql+' declare @cnt1 int,@cnt2 int';
        sql:=sql+' update a set mate_id=b.mate_id from @tab a,tb_busimate b where b.mate_type_id=2 and b.mate_name=a.f1';
        sql:=sql+' update a set med_id=b.med_id from @tab a,tb_medicine b where b.material_code1=a.f2';

        sql:=sql+' update a set level_id=cast(b.f3 as int),valid_dt=cast(b.f4 as datetime),import_log=isnull(a.import_log,'''')+format(getdate(),''yyyy-MM-dd hh:mm:ss'')+''�����޸�''';
        sql:=sql+' from tb_sysrule a,@tab b';
        sql:=sql+' where a.type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id';
        sql:=sql+' set @cnt1=@@ROWCOUNT';

        sql:=sql+' insert into tb_sysrule (type_id,comp_id,mate_id,med_id,level_id,valid_dt,creat_by,creat_dt,import_log)';
        sql:=sql+'  select type_id=2,comp_id='+inttostr(compid)+',a.mate_id,a.med_id,level_id=cast(f3 as int),valid_dt=cast(f4 as datetime),creat_by='+inttostr(curuserid)+',creat_dt=getdate(),';
        sql:=sql+'   import_log=format(getdate(),''yyyy-MM-dd hh:mm:ss'')+''����'''; // type_id=2 ������ҵ����
        sql:=sql+' from @tab a';
        sql:=sql+' where not exists (select 1 from tb_sysrule b where type_id=2 and a.mate_id=b.mate_id and a.med_id=b.med_id)';
        sql:=sql+' set @cnt2=@@ROWCOUNT  select @cnt1,@cnt2';
edit2.text:=sql;
        try
            setprogress(1);
            commandtext:=sql;
            open;
            if recordcount>0 then
            begin
                m1:=fields[0].asinteger;
                m2:=fields[1].asinteger;
            end;
        finally
            setprogress(0);
        end;
    end;
    if (m1>0) or (m2>0) then SpeedButton3Click(nil);
    MessageBox(0,pchar('�ѳɹ�����'+inttostr(m1)+'����¼, ����'+inttostr(m2)+'����¼'),'��ע��',MB_OK+MB_ICONInformation);
    sysrule.Last;
end;

end.
