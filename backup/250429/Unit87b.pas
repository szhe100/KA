unit Unit87b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, StdCtrls, Buttons, dxdbtrel, ImgList, dxDBEdtr,
  dxDBELib, Comobj, mycds, Menus;

type
  Tsetbusiframe8 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
    busiframerec_id: TAutoIncField;
    busiframemed_id: TIntegerField;
    busiframemed_code: TStringField;
    busiframemed_name: TStringField;
    busiframespecifi: TStringField;
    busiframemed_unit: TStringField;
    busiframepdt_place: TStringField;
    busiframeqtyperpack: TBCDField;
    dxDateEdit1: TdxDateEdit;
    Label7: TLabel;
    Shape7: TShape;
    dxCheckEdit1: TdxCheckEdit;
    busiframevalid_dt: TDateTimeField;
    Label2: TLabel;
    Shape2: TShape;
    dxButtonEdit3: TdxButtonEdit;
    Shape4: TShape;
    Label3: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1amot: TdxDBGridColumn;
    busiframemodify_dt: TDateTimeField;
    busiframemodify_by: TIntegerField;
    busiframemodifier: TStringField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframecreater: TStringField;
    busiframeprice: TBCDField;
    busiframeprice1: TBCDField;
    busiframeprice2: TBCDField;
    busiframeremark: TStringField;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    ADOQuery1modify_dt1: TDateTimeField;
    ADOQuery1creat_dt1: TDateTimeField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Edit1: TEdit;
    busiframetype_id: TIntegerField;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    busiframevalid: TBooleanField;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dxDBGrid1rec_id: TdxDBGridColumn;
    busiframecheck_by: TIntegerField;
    busiframecheck_dt: TDateTimeField;
    busiframechecker: TStringField;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxCheckEdit2: TdxCheckEdit;
    dxDBGrid1checker: TdxDBGridColumn;
    dxDBGrid1rate: TdxDBGridColumn;
    dxDBGrid1bonus: TdxDBGridColumn;
    busiframeprice3: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbusiframeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure busiframeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure busiframeAfterPost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe8: Tsetbusiframe8;

implementation

uses datamodu, Unit7, Unit28, Unit16a, Unit16c;

{$R *.DFM}

procedure Tsetbusiframe8.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetbusiframe8.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe8.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
with busiframe do
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;

procedure Tsetbusiframe8.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('��ѡ��ҩƷ');
//if Trim(dxButtonEdit2.text)='' then raise Exception.Create('��ѡ��ҵ��Ա');
//if Trim(dxButtonEdit3.text)='' then raise Exception.Create('��ѡ�������');
//if Trim(dxButtonEdit4.text)='' then raise Exception.Create('��ѡ��ͻ�');
//if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('��ѡ�����');
if dxDateEdit1.Text='' then raise Exception.Create('��������Ч����');

with dm.pubqry do
begin
{
    if active=true then close;
    commandtext:='select top 1 1 from tb_busiframe8'; // where broker_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' where med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.Text+'''';
    open;
    if recordcount>0 then raise Exception.Create('���иü�¼�������ظ�����');
}
    if MessageBox(0,pchar('ȷ�����뱾��¼'),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
{
    if active=true then close;
    commandtext:='select top 1 district from tb_busimate where mate_id='+inttostr(dxButtonEdit3.tag);
    open;
    id1:=fieldbyname('district').asinteger;
}
    if active=true then close;
    commandtext:='insert into tb_busiframe8 (med_id,valid_dt,creat_by,creat_dt)'; //district_id,
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit1.tag)+','''+dxDateEdit1.Text+''','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    if recordcount>0 then mi:=fields[0].asinteger;
end;
if mi>0 then
begin
    SpeedButton3Click(nil);
    busiframe.locate('rec_id',mi,[]);
end;
end;

procedure Tsetbusiframe8.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
with busiframe do if active=true then close;
//with type1 do if active=true then close;
//with type2 do if active=true then close;
end;

procedure Tsetbusiframe8.busiframeBeforeDelete(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������ü�¼������ɾ��');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('����¼�����ã�����ɾ��');
if MessageBox(0,'ȷ��ɾ������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe8.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,m.med_code,m.med_name,m.chm_name,m.specifi,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,m.pdt_place,';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),checker=g.zname,creater=e.zname,modifier=f.zname';
    commandtext:=commandtext+' from tb_busiframe8 a';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';
    commandtext:=commandtext+' where 1=1';
    if dxCheckEdit1.Checked then
    begin
//        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit3.Tag);
//        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit4.Tag);
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
    end;
    if dxCheckEdit2.Checked then
    begin
        commandtext:=commandtext+' and exists (select 1 from (select med_id,check_dt=max(check_dt)';
        commandtext:=commandtext+'  from tb_busiframe8 group by med_id) y';
        commandtext:=commandtext+'  where a.med_id=y.med_id and a.check_dt=y.check_dt)';
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

procedure Tsetbusiframe8.busiframeBeforePost(DataSet: TDataSet);
begin
with busiframe do
begin
    if state=dsinsert then
    begin
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
		if fieldbyname('amot').asfloat=0 then raise Exception.Create('������̶����');
		if fieldbyname('rate').asfloat=0 then raise Exception.Create('���������');
//		if fieldbyname('bonus').asfloat=0 then raise Exception.Create('�������ɽ�');
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe8.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe8.FormActivate(Sender: TObject);
begin
{
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''ȫ���'' union select obj_id=2,zdesc=''���ַ���'' union select obj_id=3,zdesc=''�ն˻���''';
        open;
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''������'' union select obj_id=2,zdesc=''ȫ�����''';
        open;
    end;
end;
}
end;

procedure Tsetbusiframe8.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
end;

procedure Tsetbusiframe8.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tsetbusiframe8.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:=query1.fieldbyname('mate_name').asstring;
        dxbuttonedit3.tag :=query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag :=0;
    end;
end;

procedure Tsetbusiframe8.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe8','rec_id','');
end;

procedure Tsetbusiframe8.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,sb: string;
    J,id1,mi,ni: integer;
    dt: TDatetime;
    amot,price,rate,bonus: real;
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
//�ӵ�2�п�ʼ���룬�����ʽ:1��Ʒ���롢2�̶���3���ʡ�4��ɽ���5��Ч���ڡ�6��ҵ��
    while (sheet.cells[j,1].text<>'') and (length(serror)<300) do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;
            if (sheet.cells[j,2].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޹̶����'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,2].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� �̶��������';
                end;
            end;
            if (sheet.cells[j,3].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �ޱ���'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,3].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��������';
                end;
            end;
            if (sheet.cells[j,4].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޴�ɽ�'
            else
            begin
                try
                    bonus:=strtofloat(cleardeli(sheet.cells[j,4].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ɽ�����';
                end;
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����Ч����'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,5].text);
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ч��������';
                end;
            end;
            if (sheet.cells[j,6].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����ҵ��'
            else
            begin
                try
                    price:=strtofloat(cleardeli(sheet.cells[j,6].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ҵ������';
                end;
            end;
//�ӵ�2�п�ʼ���룬�����ʽ:1��Ʒ���롢2�̶���3���ʡ�4��ɽ���5��Ч���ڡ�6��ҵ��
            if (id1>0) and (dt>0) then
            begin
                if active=true then close;
                commandtext:='select top 1 1 from tb_busiframe8 where med_id='+inttostr(id1)+' and valid_dt='''+datetimetostr(dt)+'''';
                open;
                if recordcount>0 then serror:=serror+#13#10+'��'+inttostr(j)+'�� �����м�¼�ظ�';
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
    if MessageBox(0,'ȷ����������','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//�ӵ�2�п�ʼ���룬�����ʽ:1��Ʒ���롢2�̶���3���ʡ�4��ɽ���5��Ч���ڡ�6��ҵ��
    setprogress(1);
    j:=2;  //��2�п�ʼ ÿ��һ��
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
        	id1:=0; amot:=0; rate:=0; bonus:=0;
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;
            if (sheet.cells[j,2].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޹̶����'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,2].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� �̶��������';
                end;
            end;
            if (sheet.cells[j,3].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �ޱ���'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,3].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��������';
                end;
            end;
            if (sheet.cells[j,4].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޴�ɽ�'
            else
            begin
                try
                    bonus:=strtofloat(cleardeli(sheet.cells[j,4].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ɽ�����';
                end;
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����Ч����'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,5].text);
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ч��������';
                end;
            end;
            if (sheet.cells[j,6].text='') then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����ҵ��'
            else
            begin
                try
                    price:=strtofloat(cleardeli(sheet.cells[j,6].text));
                except
                    serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ҵ������';
                end;
            end;
//�ӵ�2�п�ʼ���룬�����ʽ:1��Ʒ���롢2�̶���3���ʡ�4��ɽ���5��Ч���ڡ�6��ҵ��
            if active=true then close;
            commandtext:='insert into tb_busiframe8 (med_id,amot,rate,bonus,valid_dt,price,creat_by,creat_dt)';
            commandtext:=commandtext+' values ('+inttostr(id1)+','+floattostr(amot)+','+floattostr(rate)+','+floattostr(bonus)+','''+datetimetostr(dt)+''',';
            commandtext:=commandtext+floattostr(price)+','+inttostr(curuserid)+',getdate())';
            execute;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then busiframe.locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'�ѳɹ�����'),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetbusiframe8.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetbusiframe8.N3Click(Sender: TObject);
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

procedure Tsetbusiframe8.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe8.N2Click(Sender: TObject);
var i,mi: integer;
begin
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe8.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe8.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q : integer; //i1,i2,i3,i4,i5,i6,m1,m2,m3
    s,t: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='ȷ�������й����������뵥:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
p := dxDBGrid1.ColumnByFieldName('med_name').Index;
q := dxDBGrid1.ColumnByFieldName('specifi').Index;
o := dxDBGrid1.ColumnByFieldName('pdt_place').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('��ѡ��¼���������ù��򣬲����ٴ�����');
    s:= s + #13#10+dxDBGrid1.SelectedNodes[i].Strings[p]+' '+dxDBGrid1.SelectedNodes[i].Strings[q]+' '+dxDBGrid1.SelectedNodes[i].Strings[o];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // ��¼ rec_id �ַ���
    mi := mi+1;
end;
delete(t,1,1);  //ɾ�� t ���ַ� ','
if mi=0 then raise Exception.Create('�޿ɴ����¼');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'�ϼƹ������:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=53 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';
    open;
    if recordcount>0 then raise Exception.Create('��ѡ����������'+fieldbyname('bod_cd').asstring+'�����뵥��δ�������,�����ٴ�����');
end;

if MessageBox(0,Pchar(s),'��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,53)); //bod_type_id=53: ��Ӧ��������������뵥
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',53,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id';
    commandtext:=commandtext+' from tb_busiframe8 where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='�ѳɹ�����'+mcd+'�����뵥';
    MessageBox(0,pchar(s),'��ע��',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbusiframe8.busiframeBeforeEdit(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������ü�¼�������޸�');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('����¼�����ã������޸�');
end;

end.
