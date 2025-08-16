unit Unit52d;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, mycds,
  dxExEdtr, ADODB, ImgList, Menus, DB, DBClient, StdCtrls, dxEdLib, Comobj,
  ExtCtrls, dxdbtrel, dxEditor, wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  Tsetmedistprice2 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    medata: TClientDataSet;
    DSbrokermed: TDataSource;
    SpeedButton3: TSpeedButton;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    medatarec_id: TAutoIncField;
    medatamed_id: TIntegerField;
    medatacreat_by: TIntegerField;
    medatacreat_dt: TDateTimeField;
    medatamed_code: TStringField;
    medatamed_name: TStringField;
    medataspecifi: TStringField;
    medatapdt_place: TStringField;
    medatamed_unit: TStringField;
    medatamed_type: TStringField;
    medataqtyperpack: TBCDField;
    medatacreater: TStringField;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    medatadist_name: TStringField;
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
    dxDBGrid1dist_name: TdxDBGridColumn;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    medataid1: TIntegerField;
    dxDBGrid1price: TdxDBGridColumn;
    medataprice: TBCDField;
    medatavalid_dt: TDateTimeField;
    dxDBGrid1valid_dt: TdxDBGridDateColumn;
    medatarate: TBCDField;
    dxDBGrid1rate: TdxDBGridColumn;
    medataCrate: TFloatField;
    dxDBGrid1Crate: TdxDBGridColumn;
    dxCheckEdit1: TdxCheckEdit;
    ADOQuery1: TADOQuery;
    medataprice1: TBCDField;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1comp_id: TWordField;
    ADOQuery1type_id: TWordField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1id1: TIntegerField;
    ADOQuery1price: TBCDField;
    ADOQuery1price1: TBCDField;
    ADOQuery1price2: TBCDField;
    ADOQuery1price3: TBCDField;
    ADOQuery1rate: TBCDField;
    ADOQuery1type_id1: TWordField;
    ADOQuery1type_id2: TWordField;
    ADOQuery1valid_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    ADOQuery1creat_dt: TDateTimeField;
    medataprice2: TBCDField;
    medataprice3: TBCDField;
    medatatype_id1: TWordField;
    medatatype_id2: TWordField;
    type1: TClientDataSet;
    DataSource1: TDataSource;
    type1obj_id: TAutoIncField;
    type1zdesc: TStringField;
    dxDBGrid1price2: TdxDBGridColumn;
    dxDBGrid1price3: TdxDBGridColumn;
    type2: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource2: TDataSource;
    medataLtype1: TStringField;
    medataLtype2: TStringField;
    dxDBGrid1Ltype1: TdxDBGridLookupColumn;
    dxDBGrid1Ltype2: TdxDBGridLookupColumn;
    Edit1: TEdit;
    type3: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField2: TStringField;
    DStype3: TDataSource;
    ADOQuery1type_id3: TWordField;
    ADOQuery1insu_cd: TStringField;
    ADOQuery1docu_cd: TStringField;
    medatatype_id3: TWordField;
    medatainsu_cd: TStringField;
    medatadocu_cd: TStringField;
    medataLtype3: TStringField;
    dxDBGrid1Ltype3: TdxDBGridLookupColumn;
    dxDBGrid1docu_cd: TdxDBGridColumn;
    dxDBGrid1insu_cd: TdxDBGridColumn;
    SpeedButton6: TSpeedButton;
    medataprice4: TBCDField;
    medataprice5: TBCDField;
    medataprice6: TBCDField;
    medataprice7: TBCDField;
    medatamodify_by: TIntegerField;
    medatamodify_dt: TDateTimeField;
    dxDBGrid1price4: TdxDBGridColumn;
    dxDBGrid1price5: TdxDBGridColumn;
    dxDBGrid1price6: TdxDBGridColumn;
    dxDBGrid1price7: TdxDBGridColumn;
    medatazdesc: TStringField;
    dxDBGrid1zdesc: TdxDBGridColumn;
    Label13: TLabel;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    medataprice8: TBCDField;
    dxDBGrid1price8: TdxDBGridColumn;
    medataprice9: TBCDField;
    dxDBGrid1price9: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbrokermedDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure medataBeforeDelete(DataSet: TDataSet);
    procedure medataAfterPost(DataSet: TDataSet);
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
    procedure medataCalcFields(DataSet: TDataSet);
    procedure medataBeforePost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmedistprice2: Tsetmedistprice2;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a;

{$R *.DFM}

procedure Tsetmedistprice2.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+ query1.fieldbyname('specifi').asstring+' '+ query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetmedistprice2.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tsetmedistprice2.DSbrokermedDataChange(Sender: TObject;
  Field: TField);
begin
with medata do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tsetmedistprice2.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择品种');
if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择地区');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select 1 from tb_medata where type_id=1 and med_id='+inttostr(dxbuttonedit1.tag)+' and id1='+dm.district.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该品种在该地区已有记录,不可重复加入');
//    if recordcount>0 then MessageBox(0,pchar('该品种在该地区已有记录'),'请注意',MB_OK+MB_ICONInformation);
end;
if MessageBox(0,'确定加入新的区域品种中标价记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_medata (type_id,comp_id,med_id,id1,creat_by,creat_dt) values';
    commandtext:=commandtext+' (1,'+inttostr(compid)+','+inttostr(dxbuttonedit1.tag)+','+dm.district.fieldbyname('rec_id').asstring+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
end;
SpeedButton3Click(nil);
with medata do
    if mi>0 then locate('rec_id',mi,[]);
end;

procedure Tsetmedistprice2.medataBeforeDelete(DataSet: TDataSet);
begin
if medata.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if datetostr(medata.fieldbyname('creat_dt').asdatetime)<>datetostr(dt0) then raise Exception.Create('非当天设置记录，不可删除');
if MessageBox(0,'确定删除本区域品种中标价记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmedistprice2.medataAfterPost(DataSet: TDataSet);
begin
if medata.ChangeCount>0 then myupdaterefresh(medata,'tb_medata','rec_id','');
end;

procedure Tsetmedistprice2.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with medata do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,b.med_code,b.med_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),b.qtyperpack,b.qtyperbox,';
    commandtext:=commandtext+' b.chm_name,med_type=dbo.fn_med_type(b.med_id),creater=dbo.fn_staff_name(a.creat_by),dist_name=dbo.fn_getdistrict(a.id1)';
    commandtext:=commandtext+' from tb_medata a,tb_medicine b ';
    if dxCheckEdit3.Checked then
    begin
        commandtext:=commandtext+',(select id1,med_id,valid_dt=max(valid_dt) from tb_medata a where med_id>0 and valid_dt is not null';
        if dxCheckEdit2.Checked then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.id1=t.rec_id and t.level_id=1)';
        commandtext:=commandtext+' group by id1,med_id) h';
    end;
    commandtext:=commandtext+' where a.med_id=b.med_id and a.type_id=1';  // and a.comp_id='+inttostr(compid)+'
    if dxCheckEdit3.Checked then commandtext:=commandtext+' and a.id1=h.id1 and a.med_id=h.med_id and a.valid_dt=h.valid_dt';
    if dxCheckEdit2.Checked then commandtext:=commandtext+' and exists (select 1 from tb_treedata t where a.id1=t.rec_id and t.level_id=1)';
//    if dxCheckEdit1.Checked then
//    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.id1,'+dm.district.fieldbyname('rec_id').asstring+')=1 ';
        if Trim(dxedit1.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and (b.qry_code like''%'+trim(dxedit1.text)+'%'' or b.chm_name like''%'+trim(dxedit1.text)+'%'')';
                1:  commandtext:=commandtext+' and med_name ';
                2:  commandtext:=commandtext+' and pdt_place ';
                3:  commandtext:=commandtext+' and med_code ';
            end;
            if radiogroup1.itemindex>0 then commandtext:=commandtext+' like ''%'+trim(dxedit1.text)+'%''';
        end;
//    end;
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.id1,t.dist_id)=1)';
    commandtext:=commandtext+' order by b.med_name,b.specifi,b.pdt_place,dbo.fn_getdistrict(a.id1)';
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

procedure Tsetmedistprice2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmedistprice2.medataReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tsetmedistprice2.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tsetmedistprice2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
//with dm.district do if active=True then close;
with type1 do if active=True then close;
with type2 do if active=True then close;
with type3 do if active=True then close;
with medata do if active=True then close;
end;

procedure Tsetmedistprice2.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetmedistprice2.N3Click(Sender: TObject);
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

procedure Tsetmedistprice2.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmedistprice2.N2Click(Sender: TObject);
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

procedure Tsetmedistprice2.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmedistprice2.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
with type1 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''国家医保'' union select obj_id=2,zdesc=''省医保'' union select obj_id=3,zdesc=''非医保'' union select obj_id=4,zdesc=''农保''';
edit1.text:=commandtext;        
        open;
    end;
with type2 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''国家单独定价'' union select obj_id=2,zdesc=''国家统一定价'' union select obj_id=3,zdesc=''省级定价'' union select obj_id=4,zdesc=''企业自主定价''';
        open;
    end;
with type3 do
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''国家基药'' union select obj_id=2,zdesc=''省基药'' union select obj_id=3,zdesc=''非基药''';
        open;
    end;
end;

procedure Tsetmedistprice2.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetmedistprice2.medataCalcFields(DataSet: TDataSet);
begin
with medata do
    if fieldbyname('price').asfloat=0
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:= 100*fieldbyname('rate').asfloat/ fieldbyname('price').asfloat;
end;

procedure Tsetmedistprice2.medataBeforePost(DataSet: TDataSet);
begin
with medata do
begin
    if (fieldbyname('price').asfloat>0) and (fieldbyname('rate').asfloat>fieldbyname('price').asfloat) then raise Exception.Create('费用政策不可大于中标价');
//    if (fieldbyname('type_id1').asinteger=3) and (fieldbyname('type_id2').asinteger<>4)
//     or (fieldbyname('type_id1').asinteger<>3) and (fieldbyname('type_id2').asinteger=4)
//      then raise Exception.Create('医保类别或定价类别可能有误');
end;
end;

procedure Tsetmedistprice2.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2 : integer;
//    dt: TDatetime;
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
    j:=2;  //第2行开始 每行一单
//导入格式: 地区,药品编码,中标,费用政策
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin

            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
        end;
        inc(j);
    end;
    setprogress(0);
    if serror<>'' then
    begin
        MessageBox(0,pchar('导入文件存在以下问题，请先修正'+#13#10+'------------------------------'+serror),'请注意',MB_OK+MB_ICONError);
        abort;
    end;

    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无区域数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 区域数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
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
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmedistprice2.N7Click(Sender: TObject);
begin
with medata do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
end;

procedure Tsetmedistprice2.N9Click(Sender: TObject);
var mi: integer;
begin
with medata do
begin
    if (active=False) or (recordcount=0) then exit;
end;
if frecid=0 then raise Exception.Create('请先复制记录');
if MessageBox(0,'确定粘贴记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='insert into tb_medata (comp_id,type_id,med_id,id1,price,price1,price2,price3,price4,price5,price6,price7,rate,zdesc,creat_by,creat_dt,type_id1,type_id2,type_id3,insu_cd,docu_cd)';
    commandtext:=commandtext+' select top 1 comp_id,type_id,med_id,id1,price,price1,price2,price3,price4,price5,price6,price7,rate,zdesc,'+inttostr(curuserid)+',getdate(),type_id1,type_id2,type_id3,insu_cd,docu_cd';
    commandtext:=commandtext+'   from tb_medata where rec_id='+inttostr(frecid);
    commandtext:=commandtext+' select @@identity';
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
        SpeedButton3Click(nil);
        if mi>0 then medata.locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

end.
