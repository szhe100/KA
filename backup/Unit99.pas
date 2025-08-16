unit Unit99;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxEdLib, dxCntner, dxEditor,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, StdCtrls, Buttons, dxdbtrel, ImgList, dxDBEdtr,
  dxDBELib, Comobj, mycds, Menus;

type
  Tsetbusiframe6 = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    busiframe: TClientDataSet;
    DSbusiframe: TDataSource;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1agent: TdxDBGridMaskColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    ImageList1: TImageList;
    Shape3: TShape;
    Label4: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    busiframerec_id: TAutoIncField;
    busiframemed_id: TIntegerField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1remark: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    busiframemed_code: TStringField;
    busiframemed_name: TStringField;
    busiframespecifi: TStringField;
    busiframemed_unit: TStringField;
    busiframepdt_place: TStringField;
    busiframeqtyperpack: TBCDField;
    Shape6: TShape;
    Label6: TLabel;
    dxDateEdit1: TdxDateEdit;
    Label7: TLabel;
    Shape7: TShape;
    dxCheckEdit1: TdxCheckEdit;
    busiframevalid_dt: TDateTimeField;
    dxButtonEdit2: TdxButtonEdit;
    Label2: TLabel;
    Shape2: TShape;
    dxButtonEdit3: TdxButtonEdit;
    Shape4: TShape;
    Label3: TLabel;
    dxButtonEdit4: TdxButtonEdit;
    busiframeagent_id: TIntegerField;
    busiframeagent: TStringField;
    busiframemate_id: TIntegerField;
    busiframemate_name: TStringField;
    dxDBGrid1amot: TdxDBGridColumn;
    dxDBGrid1tax_rate: TdxDBGridColumn;
    dxDBGrid1price1: TdxDBGridColumn;
    dxDBGrid1price2: TdxDBGridColumn;
    busiframemodify_dt: TDateTimeField;
    busiframemodify_by: TIntegerField;
    busiframemodifier: TStringField;
    busiframecreat_by: TIntegerField;
    busiframecreat_dt: TDateTimeField;
    busiframecreater: TStringField;
    busiframeprice: TBCDField;
    busiframerate: TBCDField;
    busiframeprice1: TBCDField;
    busiframeprice2: TBCDField;
    busiframeremark: TStringField;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    Label5: TLabel;
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
    busiframeamot: TBCDField;
    dxDBGrid1price: TdxDBGridColumn;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
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
    dxDBGrid1ret_days: TdxDBGridColumn;
    busiframemate_name1: TStringField;
    busiframemate_id1: TIntegerField;
    Shape5: TShape;
    Label10: TLabel;
    dxButtonEdit5: TdxButtonEdit;
    busiframeret_days: TIntegerField;
    busiframeinvo_yn: TBooleanField;
    dxDBGrid1invo_yn: TdxDBGridCheckColumn;
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
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure busiframeCalcFields(DataSet: TDataSet);
    procedure busiframeBeforeEdit(DataSet: TDataSet);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setbusiframe6: Tsetbusiframe6;

implementation

uses datamodu, Unit7, Unit28, Unit16a, Unit16c, Unit9;

{$R *.DFM}

procedure Tsetbusiframe6.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe6.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetbusiframe6.DSbusiframeDataChange(Sender: TObject;
  Field: TField);
begin
with busiframe do
    speedbutton2.enabled:=(active=true) and (recordcount>0);
end;

procedure Tsetbusiframe6.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if Trim(dxButtonEdit1.text)='' then raise Exception.Create('请选择药品');
if Trim(dxButtonEdit3.text)='' then raise Exception.Create('请选择代理人');
if Trim(dxButtonEdit4.text)='' then raise Exception.Create('请选择供货单位');
if Trim(dxButtonEdit5.text)='' then raise Exception.Create('请选择商业公司');
if dxDateEdit1.Text='' then raise Exception.Create('请输入生效日期');
//if Trim(dxLookupTreeView1.text)='' then raise Exception.Create('请选择城市');

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_busiframe6'; // where broker_id='+inttostr(dxButtonEdit2.tag);
    commandtext:=commandtext+' where agent_id='+inttostr(dxButtonEdit3.tag);
    commandtext:=commandtext+' and mate_id='+inttostr(dxButtonEdit4.tag);
    commandtext:=commandtext+' and mate_id1='+inttostr(dxButtonEdit5.tag);
    commandtext:=commandtext+' and med_id='+inttostr(dxButtonEdit1.tag);
    commandtext:=commandtext+' and valid_dt='''+dxDateEdit1.Text+'''';
    open;
    if recordcount>0 then raise Exception.Create('已有该记录，不可重复设置');

    if MessageBox(0,pchar('确定加入本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
{
    if active=true then close;
    commandtext:='select top 1 district from tb_busimate where mate_id='+inttostr(dxButtonEdit3.tag);
    open;
    id1:=fieldbyname('district').asinteger;
}
    if active=true then close;
    commandtext:='insert into tb_busiframe6 (agent_id,mate_id,mate_id1,med_id,valid_dt,creat_by,creat_dt)'; //district_id,
    commandtext:=commandtext+' values ('+inttostr(dxButtonEdit3.tag)+','+inttostr(dxButtonEdit4.tag)+','+inttostr(dxButtonEdit5.tag)+',';
    commandtext:=commandtext+inttostr(dxButtonEdit1.tag)+','''+dxDateEdit1.Text+''','+inttostr(curuserid)+',getdate())';
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

procedure Tsetbusiframe6.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
with busiframe do if active=true then close;
end;

procedure Tsetbusiframe6.busiframeBeforeDelete(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可删除');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可删除');
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetbusiframe6.SpeedButton3Click(Sender: TObject);
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
    commandtext:='select a.*,b.mate_name,mate_name1=c.mate_name,agent=d.mate_name,';
    commandtext:=commandtext+' m.med_code,m.med_name,m.chm_name,m.specifi,m.pdt_place,med_unit=dbo.fn_obj_desc(m.unit_id),m.qtyperpack,';
	commandtext:=commandtext+' creater=e.zname,checker=g.zname,modifier=f.zname';
    commandtext:=commandtext+' from tb_busiframe6 a';
    commandtext:=commandtext+' left join tb_busimate b on a.mate_id=b.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.mate_id1=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_staff e on a.creat_by=e.sta_id';
    commandtext:=commandtext+' left join tb_staff f on a.modify_by=f.sta_id';
    commandtext:=commandtext+' left join tb_staff g on a.check_by=g.sta_id';
    commandtext:=commandtext+' where 1=1';
    if dxCheckEdit1.Checked then
    begin
//        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_ischildnode(a.district_id,'+dm.district.fieldbyname('obj_id').asstring+')=1';
        if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.Tag);
//        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.broker_id='+inttostr(dxButtonEdit2.Tag);
        if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.agent_id='+inttostr(dxButtonEdit3.Tag);
        if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit4.Tag);
        if Trim(dxButtonEdit5.text)<>'' then commandtext:=commandtext+' and a.mate_id1='+inttostr(dxButtonEdit5.Tag);
    end;
    if dxCheckEdit2.Checked then
    begin
        commandtext:=commandtext+' and exists (select 1 from (select agent_id,mate_id,med_id,check_dt=max(check_dt)';
        commandtext:=commandtext+'  from tb_busiframe6 group by agent_id,mate_id,med_id) y';
        commandtext:=commandtext+'  where a.agent_id=y.agent_id and a.mate_id=y.mate_id and a.med_id=y.med_id and a.check_dt=y.check_dt)';
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

procedure Tsetbusiframe6.busiframeBeforePost(DataSet: TDataSet);
begin
with busiframe do
begin
    if state=dsinsert then
    begin
        fieldbyname('creater').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modifier').asstring:=curuser;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure Tsetbusiframe6.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetbusiframe6.FormActivate(Sender: TObject);
begin
{
with type1 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''全额返款'' union select obj_id=2,zdesc=''部分返款'' union select obj_id=3,zdesc=''终端基层''';
        open;
    end;
end;
with type2 do
begin
    if active=False then
    begin
        commandtext:='select obj_id=0,zdesc='''' union select obj_id=1,zdesc=''差额比例'' union select obj_id=2,zdesc=''全额比例''';
        open;
    end;
end;
}
end;

procedure Tsetbusiframe6.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tsetbusiframe6.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
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

procedure Tsetbusiframe6.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetbusiframe6.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
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

procedure Tsetbusiframe6.dxButtonEdit3ButtonClick(Sender: TObject;
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

procedure Tsetbusiframe6.busiframeAfterPost(DataSet: TDataSet);
begin
if busiframe.ChangeCount>0 then myupdaterefresh(busiframe,'tb_busiframe6','rec_id','');
end;

procedure Tsetbusiframe6.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,sb: string;
    J,id1,id2,id3,id4,id5,id6,mi,ni,invoyn: integer;
    dt: TDatetime;
    price,price1,price2,amot,rate,rate1: real;
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
//导入 格式: 1供货单位,2商业公司,3代理人,4产品编码,5生效日期,6中标价,7销售单价,8税率,9采购结算价,10应收返入单价,11是否来票,12返款天数,13备注
    while (sheet.cells[j,1].text<>'') and (length(serror)<300) do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无供货单位数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=3 and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 供货单位数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,5].text);
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 生效日期有误';
                end;
            end;
            if (sheet.cells[j,6].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无中标价'
            else
            begin
                try
                    price:=strtofloat(cleardeli(sheet.cells[j,6].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 中标价有误';
                end;
            end;
            if (sheet.cells[j,7].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无销售单价'
            else
            begin
                try
                    price2:=strtofloat(cleardeli(sheet.cells[j,7].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 销售单价有误';
                end;
            end;
            if (sheet.cells[j,8].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无税率'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,8].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 税率有误';
                end;
            end;
            if (sheet.cells[j,9].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无采购结算价'
            else
            begin
                try
                    price1:=strtofloat(cleardeli(sheet.cells[j,9].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 采购结算价有误';
                end;
            end;
            if (sheet.cells[j,10].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无应收返入单价'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,10].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 应收返入单价有误';
                end;
            end;
            if ((sheet.cells[j,11].text='1') or (sheet.cells[j,11].text='是') or (sheet.cells[j,11].text='Y') or (sheet.cells[j,11].text='y'))
                then invoyn:=1 else invoyn:=0;
            if (sheet.cells[j,12].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无返款天数'
            else
            begin
                try
                    id6:=strtoint(cleardeli(sheet.cells[j,12].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 返款天数有误';
                end;
            end;
//导入 格式: 1供货单位,2商业公司,3代理人,4产品编码,5生效日期,6中标价,7销售单价,8税率,9采购结算价,10应收返入单价,11是否来票,12返款天数,13备注
            if (id1>0) and (id2>0) and (id3>0) and (id4>0) and (dt>0) then
            begin
                if active=true then close;
                commandtext:='select top 1 1 from tb_busiframe6 where mate_id='+inttostr(id1)+' and mate_id1='+inttostr(id2)+' and agent_id='+inttostr(id3);
                commandtext:=commandtext+' and med_id='+inttostr(id4)+' and valid_dt='''+datetimetostr(dt)+'''';
                open;
                if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 与已有记录重复';
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
    if MessageBox(0,'确定导入数据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
//导入 格式: 1供货单位,2商业公司,3代理人,4产品编码,5生效日期,6中标价,7销售单价,8税率,9采购结算价,10应收返入单价,11是否来票,12返款天数,13备注
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无供货单位数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=3 and mate_name='''+Trim(sheet.cells[j,1].text)+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 供货单位数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+Trim(sheet.cells[j,2].text)+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无代理人数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=4 and mate_name='''+Trim(sheet.cells[j,3].text)+'''';
                open;
                if recordcount>0 then id3:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 代理人数据有误';
            end;
            if sheet.cells[j,4].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无品种编码'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_medicine where med_code='''+Trim(sheet.cells[j,4].text)+'''';
                open;
                if recordcount>0 then id4:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 品种编码有误';
            end;
            if sheet.cells[j,5].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无生效日期'
            else
            begin
                try
                    dt:=strtodatetime(sheet.cells[j,5].text);
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 生效日期有误';
                end;
            end;
            if (sheet.cells[j,6].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无中标价'
            else
            begin
                try
                    price:=strtofloat(cleardeli(sheet.cells[j,6].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 中标价有误';
                end;
            end;
            if (sheet.cells[j,7].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无销售单价'
            else
            begin
                try
                    price2:=strtofloat(cleardeli(sheet.cells[j,7].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 销售单价有误';
                end;
            end;
            if (sheet.cells[j,8].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无税率'
            else
            begin
                try
                    rate:=strtofloat(cleardeli(sheet.cells[j,8].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 税率有误';
                end;
            end;
            if (sheet.cells[j,9].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无采购结算价'
            else
            begin
                try
                    price1:=strtofloat(cleardeli(sheet.cells[j,9].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 采购结算价有误';
                end;
            end;
            if (sheet.cells[j,10].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无应收返入单价'
            else
            begin
                try
                    amot:=strtofloat(cleardeli(sheet.cells[j,10].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 应收返入单价有误';
                end;
            end;
            if ((sheet.cells[j,11].text='1') or (sheet.cells[j,11].text='是') or (sheet.cells[j,11].text='Y') or (sheet.cells[j,11].text='y'))
                then invoyn:=1 else invoyn:=0;
            if (sheet.cells[j,12].text='') then serror:=serror+#13#10+'第'+inttostr(j)+'行 无返款天数'
            else
            begin
                try
                    id6:=strtoint(cleardeli(sheet.cells[j,12].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 返款天数有误';
                end;
            end;
            if (id1>0) and (id2>0) and (id3>0) and (id4>0) and (dt>0) then
            begin
                if active=true then close;
                commandtext:='select top 1 1 from tb_busiframe6 where mate_id='+inttostr(id1)+' and mate_id1='+inttostr(id2)+' and agent_id='+inttostr(id3);
                commandtext:=commandtext+' and med_id='+inttostr(id4)+' and valid_dt='''+datetimetostr(dt)+'''';
                open;
                if recordcount>0 then serror:=serror+#13#10+'第'+inttostr(j)+'行 与已有记录重复';
            end;
//导入 格式: 1供货单位,2商业公司,3代理人,4产品编码,5生效日期,6中标价,7销售单价,8税率,9采购结算价,10应收返入单价,11是否来票,12返款天数,13备注
            if active=true then close;
            commandtext:='insert into tb_busiframe6 (mate_id,mate_id1,agent_id,med_id,valid_dt,type_id,ret_days,invo_yn,tax_rate,price,price1,price2,amot,remark,creat_by,creat_dt)';
            commandtext:=commandtext+' values ('+inttostr(id1)+','+inttostr(id2)+','+inttostr(id3)+','+inttostr(id4)+','''+datetimetostr(dt)+''',null,'+inttostr(id6)+',';
            commandtext:=commandtext+inttostr(invoyn)+','+floattostr(rate)+','+floattostr(price)+','+floattostr(price1)+','+floattostr(price2)+','+floattostr(amot)+','''+sheet.cells[j,13].text+''',';
            commandtext:=commandtext+inttostr(curuserid)+',getdate())';
//edit1.text:=commandtext;            
            execute;
        end;
        inc(j);
    end;
    setprogress(0);
    XL.Quit;
    SpeedButton3Click(nil);
    if mi>0 then busiframe.locate('rec_id',mi,[]);
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetbusiframe6.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure Tsetbusiframe6.N3Click(Sender: TObject);
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

procedure Tsetbusiframe6.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetbusiframe6.N2Click(Sender: TObject);
var i,mi: integer;
begin
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe6.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
dxDBGrid1rec_id.Visible:=False;
end;

procedure Tsetbusiframe6.N7Click(Sender: TObject);
var i,mi,l,m,n,k,o,p,q,i1,i2,i3,i4,i5,i6,m1,m2,m3 : integer;
    s,t: string;
    mcd: string[20];
begin
if (busiframe.active=false) or (busiframe.recordcount=0) then exit;
s:='确定由下列规则生成申请单:'+ #13#10+'------------------------------------';
t:='';
mi:=0;
o := dxDBGrid1.ColumnByFieldName('agent').Index;
p := dxDBGrid1.ColumnByFieldName('mate_name').Index;
l := dxDBGrid1.ColumnByFieldName('mate_name1').Index;
q := dxDBGrid1.ColumnByFieldName('med_name').Index;
n := dxDBGrid1.ColumnByFieldName('rec_id').Index;
m := dxDBGrid1.ColumnByFieldName('valid').Index;
for i:= 0 to dxDBGrid1.SelectedCount - 1 do
begin
    if dxDBGrid1.SelectedNodes[i].Values[m]=True then raise Exception.Create('所选记录中有已启用规则，不可再次启用');
    s:= s + #13#10+ dxDBGrid1.SelectedNodes[i].Strings[p]+' '+ dxDBGrid1.SelectedNodes[i].Strings[l]+' '+dxDBGrid1.SelectedNodes[i].Strings[o]+' '+dxDBGrid1.SelectedNodes[i].Strings[q];
    t:= t +','+ dxDBGrid1.SelectedNodes[i].Strings[n];  // 记录 rec_id 字符串
    mi := mi+1;
end;
delete(t,1,1);  //删除 t 首字符 ','
if mi=0 then raise Exception.Create('无可处理记录');
s:=s+ #13#10+'------------------------------------';
s:=s+ #13#10+'合计规则笔数:'+formatfloat('###,##0',mi);

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 bod_cd from tb_bill a,tb_bill_dtl b where a.bod_type_id=47 and bod_status_id<>1';
    commandtext:=commandtext+' and a.bod_id=b.bod_id and b.med_id in ('+t+')';  // 记录rec_id
    open;
    if recordcount>0 then raise Exception.Create('所选规则已生成'+fieldbyname('bod_cd').asstring+'号申请单尚未完成审批,不可再次生成');
end;

if MessageBox(0,Pchar(s),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;

mcd:=formatfloat('00000000',getbillid(0,47)); //bod_type_id=47: 设置供应商返入规则申请单
with dm.pubqry do
begin
    setprogress(1);
    if active=true then close;

    commandtext:='insert into tb_bill (comp_id,bod_cd,bod_type_id,bod_status_id,creat_by,creat_dt)';
    commandtext:=commandtext+' values ('+inttostr(compid)+','''+mcd+''',47,0,'+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+' select @@identity';
//edit1.text:=commandtext;
    open;
    mi:=fields[0].asinteger;
    close;
    commandtext:='insert into tb_bill_dtl (bod_id,med_id)';
    commandtext:=commandtext+' select '+inttostr(mi)+',rec_id from tb_busiframe6 where rec_id in ('+t+')';
    execute;
    if active=True then close;
    setprogress(0);
    s:='已成功生成'+mcd+'号供应商返入规则申请单';
    MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;
end;

procedure Tsetbusiframe6.busiframeCalcFields(DataSet: TDataSet);
begin
with busiframe do
    fieldbyname('cfee').asfloat:=fieldbyname('price1').asfloat-fieldbyname('price2').asfloat-fieldbyname('amot').asfloat-fieldbyname('fee').asfloat;
end;

procedure Tsetbusiframe6.busiframeBeforeEdit(DataSet: TDataSet);
begin
if busiframe.fieldbyname('creat_by').asinteger<>curuserid then raise Exception.Create('非本人设置记录，不可修改');
if busiframe.fieldbyname('valid').asboolean=True then raise Exception.Create('本记录已启用，不可修改');
end;

procedure Tsetbusiframe6.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit5.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit5.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit5.text:='';
        dxbuttonedit5.tag:=0;
    end;
end;

end.
