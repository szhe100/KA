unit Unit266;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor, ImgList,
  StdCtrls, ComCtrls, ToolWin, dxDBTL, dxDBEdtr, dxDBELib, dxdbtrel,
  dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, ExtCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Buttons, Comobj, mycds, Menus;

type
  Tsetbusiframe = class(TForm)
    SpeedButton2: TSpeedButton;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
    broker: TClientDataSet;
    DSbroker: TDataSource;
    Images: TImageList;
    brokersta_id: TAutoIncField;
    brokerzname: TStringField;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Label10: TLabel;
    dxDBGrid1: TdxDBGrid;
    SpeedButton3: TSpeedButton;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1ZID: TStringField;
    ADOQuery1VTWEG: TStringField;
    ADOQuery1KDGRP: TStringField;
    ADOQuery1ZCOUNTRY: TStringField;
    ADOQuery1LANDX50: TStringField;
    ADOQuery1ZREGIO: TStringField;
    ADOQuery1BEZEI: TStringField;
    ADOQuery1ZCITYNUM: TStringField;
    ADOQuery1CITYNAME: TStringField;
    ADOQuery1ZCNTYNUM: TStringField;
    ADOQuery1CNTYNAME: TStringField;
    ADOQuery1MATNR: TStringField;
    ADOQuery1ARKTX: TStringField;
    ADOQuery1ZGG: TStringField;
    ADOQuery1ZSCQY: TStringField;
    ADOQuery1ZCPXSX: TStringField;
    ADOQuery1PARTNER: TStringField;
    ADOQuery1BU_SORT1: TStringField;
    ADOQuery1BZIRK: TStringField;
    ADOQuery1BZTXT: TStringField;
    ADOQuery1VKBUR: TStringField;
    ADOQuery1VKBUR_TXT: TStringField;
    ADOQuery1VKGRP: TStringField;
    ADOQuery1VKGRP_TXT: TStringField;
    ADOQuery1ZPLOT: TStringField;
    ADOQuery1ZPLOT_T: TStringField;
    ADOQuery1ZAREA: TStringField;
    ADOQuery1ZAREA_T: TStringField;
    ADOQuery1DATE_FROM: TStringField;
    ADOQuery1DATE_TO: TStringField;
    ADOQuery1ZSFSX: TStringField;
    ADOQuery1ZAEDAT: TStringField;
    ADOQuery1ZAEDAT1: TStringField;
    ADOQuery1TABLE_NAME: TStringField;
    busiframerec_id: TAutoIncField;
    busiframeZID: TStringField;
    busiframeVTWEG: TStringField;
    busiframeKDGRP: TStringField;
    busiframeZCOUNTRY: TStringField;
    busiframeLANDX50: TStringField;
    busiframeZREGIO: TStringField;
    busiframeBEZEI: TStringField;
    busiframeZCITYNUM: TStringField;
    busiframeCITYNAME: TStringField;
    busiframeZCNTYNUM: TStringField;
    busiframeCNTYNAME: TStringField;
    busiframeMATNR: TStringField;
    busiframeARKTX: TStringField;
    busiframeZGG: TStringField;
    busiframeZSCQY: TStringField;
    busiframeZCPXSX: TStringField;
    busiframePARTNER: TStringField;
    busiframeBU_SORT1: TStringField;
    busiframeBZIRK: TStringField;
    busiframeBZTXT: TStringField;
    busiframeVKBUR: TStringField;
    busiframeVKBUR_TXT: TStringField;
    busiframeVKGRP: TStringField;
    busiframeVKGRP_TXT: TStringField;
    busiframeZPLOT: TStringField;
    busiframeZPLOT_T: TStringField;
    busiframeZAREA: TStringField;
    busiframeZAREA_T: TStringField;
    busiframeDATE_FROM: TStringField;
    busiframeDATE_TO: TStringField;
    busiframeZSFSX: TStringField;
    busiframeZAEDAT: TStringField;
    busiframeZAEDAT1: TStringField;
    busiframeTABLE_NAME: TStringField;
    dxDBGrid1ZID: TdxDBGridColumn;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    dxDBGrid1ZCOUNTRY: TdxDBGridColumn;
    dxDBGrid1LANDX50: TdxDBGridColumn;
    dxDBGrid1ZREGIO: TdxDBGridColumn;
    dxDBGrid1BEZEI: TdxDBGridColumn;
    dxDBGrid1ZCITYNUM: TdxDBGridColumn;
    dxDBGrid1CITYNAME: TdxDBGridColumn;
    dxDBGrid1ZCNTYNUM: TdxDBGridColumn;
    dxDBGrid1CNTYNAME: TdxDBGridColumn;
    dxDBGrid1MATNR: TdxDBGridColumn;
    dxDBGrid1ARKTX: TdxDBGridColumn;
    dxDBGrid1ZGG: TdxDBGridColumn;
    dxDBGrid1ZSCQY: TdxDBGridColumn;
    dxDBGrid1ZCPXSX: TdxDBGridColumn;
    dxDBGrid1PARTNER: TdxDBGridColumn;
    dxDBGrid1BU_SORT1: TdxDBGridColumn;
    dxDBGrid1BZIRK: TdxDBGridColumn;
    dxDBGrid1BZTXT: TdxDBGridColumn;
    dxDBGrid1VKBUR: TdxDBGridColumn;
    dxDBGrid1VKBUR_TXT: TdxDBGridColumn;
    dxDBGrid1VKGRP: TdxDBGridColumn;
    dxDBGrid1VKGRP_TXT: TdxDBGridColumn;
    dxDBGrid1ZPLOT: TdxDBGridColumn;
    dxDBGrid1ZPLOT_T: TdxDBGridColumn;
    dxDBGrid1ZAREA: TdxDBGridColumn;
    dxDBGrid1ZAREA_T: TdxDBGridColumn;
    dxDBGrid1DATE_FROM: TdxDBGridColumn;
    dxDBGrid1ZSFSX: TdxDBGridColumn;
    dxDBGrid1ZAEDAT: TdxDBGridColumn;
    dxDBGrid1ZAEDAT1: TdxDBGridColumn;
    dxButtonEdit1: TdxButtonEdit;
    Label32: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Shape9: TShape;
    dxLookupEdit1: TdxLookupEdit;
    Label2: TLabel;
    Shape2: TShape;
    dxLookupEdit2: TdxLookupEdit;
    Edit1: TEdit;
    busiframechannel: TStringField;
    busiframechannel_dtl: TStringField;
    Label12: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    Shape3: TShape;
    dxLookupEdit3: TdxLookupEdit;
    Label5: TLabel;
    Shape5: TShape;
    level1: TClientDataSet;
    level1obj_id: TAutoIncField;
    level1zdesc: TStringField;
    DSlevel1: TDataSource;
    busiframeKUNNR: TStringField;
    busiframePARNR: TStringField;
    dxDBGrid1KUNNR: TdxDBGridColumn;
    dxDBGrid1PARNR: TdxDBGridColumn;
    busiframeagent: TStringField;
    busiframemate_name: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    Label3: TLabel;
    dxDBGrid1rec_id: TdxDBGridColumn;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbusiframeDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure busiframeBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure busiframeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure busiframeAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid2level2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2level3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2leaderButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure busiframeCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1brokerButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxLookupTreeView1CloseUp(Sender: TObject; Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe: Tsetbusiframe;
  frecid: integer;

implementation

uses datamodu, Unit7, Unit28c, Unit28d, Unit28e, Unit28a;

{$R *.DFM}

procedure Tsetbusiframe.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
with busiframe do
begin
    speedbutton2.enabled:=(active) and (recordcount>0);
{
    if (active=False) or (recordcount=0) then
    begin
        busiframe_dtl.Tag:=0;
        if busiframe_dtl.active then busiframe_dtl.Close;
        exit;
    end;
}
end;
{
with busiframe_dtl do
begin
    if tag=busiframe.fieldbyname('rec_id').asinteger then exit;
    if active then close;
    commandtext:='select a.*,level1=b.zdesc,zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),';
    commandtext:=commandtext+'  level2=c.zdesc,level3=d.zdesc,leader=e.zname,';
    commandtext:=commandtext+'  creater=f.zname,modifier=g.zname';
    commandtext:=commandtext+' from tb_busiframe_dtl a';
    commandtext:=commandtext+' left join tb_object b on a.level_id1=b.obj_id';
    commandtext:=commandtext+' left join tb_object c on a.level_id2=c.obj_id';
    commandtext:=commandtext+' left join tb_object d on a.level_id3=d.obj_id';
    commandtext:=commandtext+' left join tb_staff e on a.sta_id=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.creat_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.modify_by=g.sta_id';
    commandtext:=commandtext+' where a.rela_id='+busiframe.fieldbyname('rec_id').asstring;
//edit2.text:=commandtext;
    try
        setprogress(1);
        open;
        tag:=busiframe.fieldbyname('rec_id').asinteger;
    finally
        setprogress(0);
    end;
end;
}
end;

procedure Tsetbusiframe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with busiframe do if active then close;
{
with dm.channel do if active then close;
with dm.channel_dtl do if active then close;
with dm.level1 do if active then close;
with dm.prod_line do if active then close;
with dm.busi_center do if active then close;
with dm.sale_team do if active then close;
with dm.nation do if active then close;
with treedata do if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
}
end;

procedure Tsetbusiframe.busiframeBeforeDelete(DataSet: TDataSet);
begin
with busiframe do
begin
    if (active=False) or (recordcount=0) then exit;
    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������ã�����ɾ��');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_busiframe_dtl where rela_id='+busiframe.fieldbyname('rec_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('����¼����ϸ��¼������ɾ��');
end;
//if busiframe.fieldbyname('creat_dt').asdatetime<dt0 then raise Exception.Create('�ǵ������ã�����ɾ��');
if MessageBox(0,'ȷ��ɾ��������¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with busiframe do
begin
    if active then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,d.mate_name,agent=e.mate_name,channel=b.zdesc,channel_dtl=c.zdesc from SAP_ZSD_BUS a'; //zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),';
//    commandtext:='select a.*,channel='''',channel_dtl='''' from SAP_ZSD_BUS a'; //zname1=dbo.fn_staff_name(b.sta_id),zname2=dbo.fn_staff_name(c.sta_id),zname3=dbo.fn_staff_name(d.sta_id),';
    commandtext:=commandtext+' left join (select obj_code,zdesc from tb_object where obj_type_id=11) b on a.VTWEG=b.obj_code';
    commandtext:=commandtext+' left join (select obj_code,zdesc from tb_object where obj_type_id=12) c on a.KDGRP=c.obj_code';
    commandtext:=commandtext+' left join (select mate_code,mate_name from tb_busimate where mate_type_id=2) d on a.KUNNR=d.mate_code';
    commandtext:=commandtext+' left join (select mate_code,mate_name from tb_busimate where mate_type_id=4) e on a.PARNR=e.mate_code';
    commandtext:=commandtext+' where 1=1 ';
//    if dxCheckEdit1.Checked then
//    begin
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and exists (select 1 from tb_medicine m where med_id='+inttostr(dxButtonEdit1.Tag)+' and (m.material_code=a.MATNR or m.material_code1=a.MATNR))';
//        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.MATNR in (select top 1 material_code1 from tb_medicine where med_id='+inttostr(dxButtonEdit1.Tag)+')';
//        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(a.district_id,'+dm.district.fieldbyname('rec_id').asstring+')=1';
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.VTWEG='+dm.channel.fieldbyname('obj_code').asstring; //'''+Trim(dxLookupEdit1.text)+'''';
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.KDGRP='+dm.channel_dtl.fieldbyname('obj_code').asstring; //'''+Trim(dxLookupEdit2.text)+'''';
        if Trim(dxLookupEdit3.text)<>'' then commandtext:=commandtext+' and a.VKBUR_TXT='''+Trim(dxLookupEdit3.text)+'''';
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and (ZREGIO='+dm.district.fieldbyname('code').asstring+' or ZCITYNUM='+dm.district.fieldbyname('code').asstring+' or ZCNTYNUM='+dm.district.fieldbyname('code').asstring+')';
{
        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.VTWEG='''+dxLookupEdit1.text+'''';
        if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' and a.KDGRP='''+dxLookupEdit2.text+'''';
}
//        if Trim(dxDateEdit1.text)<>'' then commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.text+'''';
//    end;
//    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(a.district_id,t.dist_id)=1)';
edit1.text:=commandtext;    //
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe.busiframeBeforePost(DataSet: TDataSet);
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
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:������ʱ��
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
with dm.level1 do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=21 order by zdesc';
        open;
    end;
with dm.channel do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=11'; // and a.comp_id='+inttostr(compid);
        open;
    end;
with dm.channel_dtl do
    if active=false then
    begin
        commandtext:='select a.*,b.zname from tb_object a left join tb_staff b on a.sta_id=b.sta_id';
        commandtext:=commandtext+' where a.obj_type_id=12'; // and a.comp_id='+inttostr(compid);
        open;
    end;
{
with dm.prod_line do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=14';
        open;
    end;
with dm.busi_center do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=15';
        open;
    end;
with dm.sale_team do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=16';
        open;
    end;
with dm.nation do
    if active=false then
    begin
        commandtext:='select obj_id,obj_type_id,obj_code,zdesc from tb_object where obj_type_id=17';
        open;
    end;
}
{
with level2 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=22 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
end;
}
{
with level3 do
begin
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=23 order by zdesc';
        open;
    end;
end;
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
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
}
end;

procedure Tsetbusiframe.busiframeAfterDelete(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe','rec_id','');
end;

procedure Tsetbusiframe.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//����
//TabSheet2.tabvisible:=False;
//TabSheet3.tabvisible:=False;
//TabSheet4.tabvisible:=False;
end;

procedure Tsetbusiframe.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' ��װ:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tsetbusiframe.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror: string;
    J,id1,id2,id3,id4,id5,id6,id8,mi,ni: integer;
    dt: TDatetime;
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
//����Excel�ļ����ɵ���(��ʽ: 1��ҵ��,2����,3С��,4����,5������,6Ʒ��,7��Ч����,8�Ƿ񴦷�)
    while (sheet.cells[j,1].text<>'') do
    begin
//        showmessage(sheet.cells[j,1].text+'-'+sheet.cells[j,2].text+'-'+sheet.cells[j,3].text);
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����ҵ������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ҵ����������';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޴�������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��С������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� С����������';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����������'
            else
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������'
            else
            begin
                if active then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ��������������';
            end;
            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,6].text)+'''';   // comp_id='+inttostr(compid)+' and
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;
//            if sheet.cells[j,7].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����Ч����'
//                else dt:=strtodatetime(sheet.cells[j,7].text);
            try
            	dt:=strtodatetime(sheet.cells[j,7].text);
            except
                serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ч������Ч'
            end;
            if (sheet.cells[j,8].text='��') or (sheet.cells[j,8].text='�Ǵ���') or (sheet.cells[j,8].text='��')
                then id8:=2 else id8:=1;
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
//����Excel�ļ����ɵ���(��ʽ: 1��ҵ��,2����,3С��,4����,5������,6Ʒ��,7��Ч����)
    setprogress(1);
    j:=2;  //��2�п�ʼ ÿ��һ��
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����ҵ������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=21 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ��ҵ����������';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� �޴�������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=22 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��С������'
            else
            begin
                if active then close;
                commandtext:='select top 1 obj_id from tb_object where obj_type_id=23 and comp_id='+inttostr(compid)+' and zdesc='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('obj_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� С����������';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����������'
            else
            begin
                if active then close;
                commandtext:='select top 1 rec_id from tb_treedata where dbo.fn_getdistrict(rec_id)='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('rec_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ������������'
            else
            begin
                if active then close;
                commandtext:='select top 1 sta_id from tb_staff where comp_id='+inttostr(compid)+' and sta_type_id=0 and manager=1 and zname='''+Trim(sheet.cells[j,5].text)+'''';
                open;
                if recordcount>0 then id5:=fieldbyname('sta_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� ��������������';
            end;
            if sheet.cells[j,6].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ��Ʒ�ֱ���'
            else
            begin
                if active then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+sheet.cells[j,6].text+'''';  //comp_id='+inttostr(compid)+' and 
                open;
                if recordcount>0 then id6:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'��'+inttostr(j)+'�� Ʒ�ֱ�������';
            end;
            if sheet.cells[j,7].text='' then serror:=serror+#13#10+'��'+inttostr(j)+'�� ����Ч����'
                else dt:=strtodatetime(sheet.cells[j,7].text);
            if (sheet.cells[j,8].text='��') or (sheet.cells[j,8].text='�Ǵ���') or (sheet.cells[j,8].text='��')
                then id8:=2 else id8:=1;
{
            if active then close;
            commandtext:='if not exists (select 1 from tb_busiframe where comp_id='+inttostr(compid);
            commandtext:=commandtext+' and level_id1='+inttostr(id1);
            commandtext:=commandtext+' and level_id2='+inttostr(id2);
            commandtext:=commandtext+' and level_id3='+inttostr(id3);
            commandtext:=commandtext+' and district_id='+inttostr(id4);
            commandtext:=commandtext+' and sta_id='+inttostr(id5);
            commandtext:=commandtext+' and med_id='+inttostr(id6);
            commandtext:=commandtext+' and valid_dt='''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' insert into tb_busiframe (comp_id,level_id1,level_id2,level_id3,district_id,sta_id,med_id,valid_dt,creat_by,creat_dt)';
            commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+','+inttostr(id5)+','+inttostr(id6)+','''+datetimetostr(dt)+''',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
            execute;
}
            if active then close;
            commandtext:='select top 1 rec_id from tb_busiframe where f1='+inttostr(id8)+' and med_id='+inttostr(id6);
            commandtext:=commandtext+' and district_id='+inttostr(id4);
            open;
            if recordcount=0 then
            begin
                if active then close;
                commandtext:='insert into tb_busiframe (comp_id,f1,med_id,district_id,creat_by,creat_dt)';
                commandtext:=commandtext+' values ('+inttostr(compid)+','+inttostr(id8)+','+inttostr(id6)+','+inttostr(id4)+','+inttostr(curuserid)+',getdate())';
                commandtext:=commandtext+'select @@identity';
                open;
                mi:=fields[0].asinteger;
            end
            else mi:=fields[0].asinteger;
{
            if active then close;
            commandtext:='insert into tb_busiframe_dtl (rela_id,level_id1,level_id2,level_id3,sta_id,med_id,district_id,valid_dt,creat_by,creat_dt)'; //comp_id,
            commandtext:=commandtext+' values ('+inttostr(mi)+','+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+',';  //'+inttostr(compid)+',
            commandtext:=commandtext+inttostr(id5)+','+inttostr(id6)+','+inttostr(id4)+','''+datetimetostr(dt)+''','+inttostr(curuserid)+',getdate())';
            commandtext:=commandtext+'select @@identity';
            open;
            if recordcount>0 then ni:=fields[0].asinteger;
}
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then busiframe.locate('rec_id',mi,[]);
//    if ni>0 then busiframe_dtl.locate('rec_id',ni,[]);
    MessageBox(0,pchar(SFileName+'�ѳɹ�����'),'��ע��',MB_OK+MB_ICONInformation);
end;

procedure Tsetbusiframe.SpeedButton5Click(Sender: TObject);
var mi: integer;
begin
{
with busiframe do
begin
    if (active=False) or (recordcount=0) then exit;
//    if fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������õ�ҵ��ṹ�������޸�');
end;

if (Trim(dxLookupEdit1.text)='') and (Trim(dxButtonEdit3.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxLookupEdit4.text)='')
    and (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit2.text)='') and (Trim(dxLookupTreeView1.text)='') and (dxDateEdit1.Text='')
    then raise Exception.Create('�������޸�����');

if MessageBox(0,'ȷ���޸ļ�¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_busiframe set modify_by='+inttostr(curuserid)+',modify_dt=getdate()';
    if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' ,level_id1='+level1.fieldbyname('obj_id').asstring;
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' ,level_id2='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' ,level_id3='+inttostr(dxButtonEdit3.tag);
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' ,district_id='+dm.district.fieldbyname('rec_id').asstring;
//    if Trim(dxLookupEdit2.text)<>'' then commandtext:=commandtext+' ,level_id2='+level2.fieldbyname('obj_id').asstring;
//    if Trim(dxLookupEdit3.text)<>'' then commandtext:=commandtext+' ,level_id3='+level3.fieldbyname('obj_id').asstring;
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' ,sta_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' ,med_id='+inttostr(dxButtonEdit1.tag);
    if dxDateEdit1.Text<>'' then commandtext:=commandtext+' ,valid_dt= '''+dxDateEdit1.Text+''' ';
    commandtext:=commandtext+' where rec_id='+ busiframe.fieldbyname('rec_id').asstring;
//edit1.Text:=commandtext;
//exit;
    execute;
end;
refreshmyrecord(busiframe,dm.Refreshcds,0,'a.rec_id',busiframe.fieldbyname('rec_id').asinteger);
}
end;

procedure Tsetbusiframe.busiframeBeforeEdit(DataSet: TDataSet);
begin
//if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('�Ǳ������õ�ҵ��ṹ�������޸�');
end;

procedure Tsetbusiframe.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with pickmanager do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit2.tag :=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;
}
end;

procedure Tsetbusiframe.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
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
}
end;

procedure Tsetbusiframe.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with picklevel2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zdesc').asstring;
        dxbuttonedit4.tag :=query1.fieldbyname('obj_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag :=0;
    end;
end;
}
end;

procedure Tsetbusiframe.N3Click(Sender: TObject);
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

procedure Tsetbusiframe.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe.N2Click(Sender: TObject);
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

procedure Tsetbusiframe.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//����
end;

procedure Tsetbusiframe.N10Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    t:= t + busiframe.fieldbyname('rec_id').asstring;
    mi:=1;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('rec_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[j];
        mi := mi+1;
    end;
    delete(t,1,1);  //ɾ�� t ���ַ� ','
end;
if mi=0 then raise Exception.Create('δѡ���¼');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_busiframe where rec_id in ('+t+') and creat_by<>'+inttostr(curuserid);
    open;
    if recordcount>0 then
    begin
        MessageBox(0,pchar('��ѡ��¼���зǱ��˼�¼������ɾ��'),'��ע��',MB_OK+MB_IconError);
        abort;
    end;
end;
if MessageBox(0,'ȷ��ɾ����ѡ��¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
with dm.pubqry do
begin
    if active then close;
    commandtext:='delete from tb_busiframe where rec_id in ('+t+')';
    execute;
end;
SpeedButton3Click(nil);  //ˢ��
end;

procedure Tsetbusiframe.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.datasource:=(sender as TdxDbgrid).datasource;
end;

procedure Tsetbusiframe.dxDBGrid2level2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with picklevel2 do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('level_id2').asinteger:= query1.fieldbyname('obj_id').asinteger;
        busiframe_dtl.fieldbyname('level2').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('level_id2').asinteger:= 0;
        busiframe_dtl.fieldbyname('level2').asstring:= '';
    end;
end;
}
end;

procedure Tsetbusiframe.dxDBGrid2level3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with picklevel3 do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('level_id3').asinteger:= query1.fieldbyname('obj_id').asinteger;
        busiframe_dtl.fieldbyname('level3').asstring:= query1.fieldbyname('zdesc').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('level_id3').asinteger:= 0;
        busiframe_dtl.fieldbyname('level3').asstring:= '';
    end;
end;
}
end;

procedure Tsetbusiframe.dxDBGrid2leaderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
{
with pickmanager do
begin
    if not (busiframe_dtl.state in [dsinsert,dsedit]) then busiframe_dtl.edit;
    if showmodal= mrOK then
    begin
        busiframe_dtl.fieldbyname('sta_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        busiframe_dtl.fieldbyname('leader').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        busiframe_dtl.fieldbyname('sta_id').asinteger:= 0;
        busiframe_dtl.fieldbyname('leader').asstring:= '';
    end;
end;
}
end;

procedure Tsetbusiframe.MenuItem1Click(Sender: TObject);
begin
{
with busiframe_dtl do
begin
    if (active=False) or (recordcount=0) then exit;
    frecid:= fieldbyname('rec_id').asinteger;
end;
}
end;

procedure Tsetbusiframe.MenuItem2Click(Sender: TObject);
//var mi: integer;
begin
{
with busiframe_dtl do
begin
    if (active=False) or (recordcount=0) then exit;
end;
if frecid=0 then raise Exception.Create('���ȸ��Ƽ�¼');
if MessageBox(0,'ȷ��ճ����¼','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='insert into tb_busiframe_dtl (rela_id,level_id1,level_id2,level_id3,sta_id,district_id,med_id,valid_dt,creat_by,creat_dt)';
    commandtext:=commandtext+' select top 1 rela_id,level_id1,level_id2,level_id3,sta_id,district_id,med_id,valid_dt,'+inttostr(curuserid)+',getdate()';
    commandtext:=commandtext+'   from tb_busiframe_dtl where rec_id='+inttostr(frecid);
    commandtext:=commandtext+' select @@identity';
    try
        setprogress(1);
        open;
        mi:=fields[0].asinteger;
        busiframe_dtl.tag:=0;
        DSbusiframeDataChange(nil,nil);
        if mi>0 then busiframe_dtl.locate('rec_id',mi,[]);
        refreshmyrecord(busiframe,dm.Refreshcds,0,'rec_id',busiframe.fieldbyname('rec_id').asinteger);
        //��triggerͬ������tb_busiframe,��ˢ��busiframe
    finally
        setprogress(0);
    end;
end;
}
end;

procedure Tsetbusiframe.SpeedButton7Click(Sender: TObject);
begin
if MessageBox(0,'ȷ����ҵ����������û���ȨƷ�ּ�����','��ע��',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='exec sp_updtrustbybusiframe';
    try
        setprogress(1);
        execute;
        setprogress(0);
        MessageBox(0,'�ѳɹ������û���ȨƷ�ּ�����','��ע��',MB_OK+MB_ICONInformation);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetbusiframe.busiframeCalcFields(DataSet: TDataSet);
begin
with busiframe do
begin
    case fieldbyname('f1').asinteger of
        1:  fieldbyname('cf1').asstring:='����';
        2:  fieldbyname('cf1').asstring:='�Ǵ���';
    end;
end;
end;

procedure Tsetbusiframe.dxDBGrid1brokerButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (busiframe.state in [dsinsert,dsedit]) then busiframe.edit;
    if showmodal= mrOK then
    begin
        busiframe.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        busiframe.fieldbyname('broker').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        busiframe.fieldbyname('broker_id').asinteger:=0;
        busiframe.fieldbyname('broker').asstring:='';
    end;
end;
end;

procedure Tsetbusiframe.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tsetbusiframe.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

procedure Tsetbusiframe.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe.dxLookupTreeView1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
(Sender as TdxLookupTreeView).text:=dm.district.fieldbyname('cdistrict').asstring;
end;

end.
