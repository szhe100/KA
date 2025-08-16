unit Unit44;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ImgList, DB, ADODB, DBClient, dxCntner, dxdbtrel,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxEdLib, dxEditor, DBCtrls,
  Buttons, StdCtrls, ExtCtrls, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms;

type
  Tqrymedexg = class(TForm)
    dxDBGrid1: TdxDBGrid;
    StyleController: TdxEditStyleController;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    dxButtonEdit1: TdxButtonEdit;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    dxCheckEdit4: TdxCheckEdit;
    Label5: TLabel;
    Shape5: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    SpeedButton1: TSpeedButton;
    DSexgqry: TDataSource;
    Label8: TLabel;
    qryqty: TClientDataSet;
    DSqryqty: TDataSource;
    DBText2: TDBText;
    Shape6: TShape;
    SpeedButton2: TSpeedButton;
    ADOQuery1: TADOQuery;
    qryqtyprice: TBCDField;
    dxCheckEdit1: TdxCheckEdit;
    Label7: TLabel;
    Shape7: TShape;
    dxButtonEdit3: TdxButtonEdit;
    qryqtyqty: TBCDField;
    dxButtonEdit4: TdxButtonEdit;
    Label9: TLabel;
    Label10: TLabel;
    Shape8: TShape;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ADOQuery1rec_id: TIntegerField;
    ADOQuery1carry_dt: TDateTimeField;
    ADOQuery1bod_cd: TStringField;
    ADOQuery1bod_type_id: TIntegerField;
    ADOQuery1src_mate: TStringField;
    ADOQuery1dst_mate: TStringField;
    ADOQuery1creater: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1bod_type: TStringField;
    ADOQuery1busi_type: TStringField;
    ADOQuery1bod_desc: TStringField;
    ADOQuery1med_code: TStringField;
    ADOQuery1med_name: TStringField;
    ADOQuery1chm_name: TStringField;
    ADOQuery1specifi: TStringField;
    ADOQuery1pdt_place: TStringField;
    ADOQuery1med_unit: TStringField;
    ADOQuery1qtyperpack: TBCDField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1imp_qty: TBCDField;
    ADOQuery1imp_amt: TBCDField;
    ADOQuery1exp_qty: TBCDField;
    ADOQuery1exp_amt: TBCDField;
    ADOQuery1bal: TBCDField;
    Edit1: TEdit;
    Label13: TLabel;
    Label11: TLabel;
    Shape9: TShape;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    exgqry: TClientDataSet;
    exgqryrec_id: TAutoIncField;
    exgqrysrc_mate: TStringField;
    exgqrydst_mate: TStringField;
    exgqrybroker: TStringField;
    exgqrycarry_dt: TDateTimeField;
    exgqrybod_cd: TStringField;
    exgqrycreater: TStringField;
    exgqrybod_type_id: TIntegerField;
    exgqrybod_type: TStringField;
    exgqrybusi_type: TStringField;
    exgqrymed_code: TStringField;
    exgqrymed_name: TStringField;
    exgqrychm_name: TStringField;
    exgqryspecifi: TStringField;
    exgqrypdt_place: TStringField;
    exgqrymed_unit: TStringField;
    exgqryqtyperpack: TBCDField;
    exgqrybat_cd: TStringField;
    exgqryprice: TBCDField;
    exgqryimp_qty: TBCDField;
    exgqryimp_amt: TBCDField;
    exgqryexp_qty: TBCDField;
    exgqryexp_amt: TBCDField;
    exgqrydrawrate: TBCDField;
    exgqrybod_desc: TStringField;
    exgqryCmate_name: TStringField;
    exgqrybal: TBCDField;
    dxDBGrid1bod_type: TdxDBGridColumn;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1src_mate: TdxDBGridColumn;
    dxDBGrid1dst_mate: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1price: TdxDBGridColumn;
    dxDBGrid1imp_qty: TdxDBGridColumn;
    dxDBGrid1imp_amt: TdxDBGridColumn;
    dxDBGrid1exp_qty: TdxDBGridColumn;
    dxDBGrid1exp_amt: TdxDBGridColumn;
    dxDBGrid1bal: TdxDBGridColumn;
    dxDBGrid1drawrate: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxCheckEdit2Change(Sender: TObject);
    procedure dxCheckEdit3Change(Sender: TObject);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSexgqryDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrymedexg: Tqrymedexg;
  bal: real;

implementation

uses datamodu, Unit7, Unit70, Unit16, Unit28, Unit16a;

{$R *.DFM}

procedure Tqrymedexg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrymedexg.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
{
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
}
end;

procedure Tqrymedexg.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqrymedexg.SpeedButton5Click(Sender: TObject);
var ss: string[1];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if Trim(dxbuttonedit1.text)='' then raise Exception.Create('请选择查询品种');
if fdistltd then
begin
    if dxLookupTreeView1.Text='' then raise Exception.Create('请选择所在地区');
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_trustdistrict where sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode('+DM.district.fieldbyname('rec_id').asstring+',dist_id)=1';
        open;
        if recordcount=0 then raise Exception.Create('所在地区不属于本人授权地区');
    end;
end;
if fmedltd  then
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_trustmed where sta_id='+inttostr(curuserid)+' and med_id='+inttostr(dxButtonEdit1.tag);
        open;
        if recordcount=0 then raise Exception.Create('该品种不属于本人授权品种');
    end;
end;
//screen.Cursor:=crhourglass;
dxdbgrid1.Bands[0].Caption:=dxButtonEdit1.Text;
with exgqry do
begin
    if active then close;
    if dxcheckedit2.checked then ss:='0';
    if dxcheckedit3.checked then ss:='1';
    if dxcheckedit4.checked then ss:='2';
    commandtext:='sp_qrymedexg '+inttostr(compid)+','+inttostr(dxbuttonedit1.tag)+','' '','''+datetostr(dxdateedit1.date)+''','''+datetostr(dxdateedit2.date)+''',';
    if trim(dxbuttonedit3.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit3.tag)+',';
    if trim(dxbuttonedit4.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit4.tag)+',';
    if trim(dxbuttonedit2.text)='' then commandtext:=commandtext+'0,'
        else commandtext:=commandtext+inttostr(dxbuttonedit2.tag)+',';
    commandtext:=commandtext+inttostr(RadioGroup1.itemindex+1)+',';
    commandtext:=commandtext+ss;
    if trim(dxLookupTreeView1.text)='' then commandtext:=commandtext+',0'
        else commandtext:=commandtext+','+dm.district.fieldbyname('rec_id').asstring;
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if recordcount=0 then bal:=0
        else
        begin
            DisableControls;
            last;
            bal:= exgqry.fieldbyname('bal').asfloat;
            first;
            EnableControls;
        end;
    finally
        setprogress(0);
    end;
end;
with qryqty do
begin
    if active then close;
    commandtext:='select qty=sum(qty),price=case sum(qty) when 0 then 0 else sum(price*qty)/sum(qty) end';
    commandtext:=commandtext+' from tb_medstock_bat a where a.med_id='+ inttostr(dxbuttonedit1.tag)+' and a.comp_id='+inttostr(compid); 
    commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup1.itemindex+1);
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and mate_id='+ inttostr(dxbuttonedit3.tag);
    commandtext:=commandtext+'  and exists (select 1 from tb_busimate b where a.mate_id=b.mate_id and b.mate_type_id=2)';
edit2.text:=commandtext;
    try
        setprogress(1);
        open;
    finally
        setprogress(0);
    end;
end;
//screen.Cursor:=crdefault;
end;

procedure Tqrymedexg.dxCheckEdit2Change(Sender: TObject);
begin
if dxcheckedit2.checked then
begin
    dxcheckedit3.checked:=false;
    dxcheckedit4.checked:=false;
end;
end;

procedure Tqrymedexg.dxCheckEdit3Change(Sender: TObject);
begin
if dxcheckedit3.checked then
begin
    dxcheckedit2.checked:=false;
    dxcheckedit4.checked:=false;
end;
end;

procedure Tqrymedexg.dxCheckEdit4Change(Sender: TObject);
begin
if dxcheckedit4.checked then
begin
    dxcheckedit3.checked:=false;
    dxcheckedit2.checked:=false;
end;
end;

procedure Tqrymedexg.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
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

procedure Tqrymedexg.SpeedButton1Click(Sender: TObject);
var mt1,mt2,mt3,mt4: real;
begin
if dxbuttonedit1.tag=0 then raise Exception.Create('请选择查询药品');
screen.cursor:=crhourglass;
report11:=Treport11.create(Application);
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 a.med_code,a.med_name,a.specifi,a.pdt_place,med_unit=c.zdesc,a.qtyperpack,b.retailprice,b.wholeprice';
    commandtext:=commandtext+' from tb_medicine a,tb_medinfo b,tb_object c';
    commandtext:=commandtext+' where a.med_id=b.med_id and a.unit_id*=c.obj_id and a.med_id='+inttostr(dxbuttonedit1.tag);
    open;
    report11.qrlabel27.caption:=fieldbyname('med_code').asstring;
    report11.qrlabel29.caption:=fieldbyname('med_name').asstring;
    report11.qrlabel30.caption:=fieldbyname('specifi').asstring;
    report11.qrlabel31.caption:=fieldbyname('pdt_place').asstring;
    report11.qrlabel28.caption:=fieldbyname('med_unit').asstring;
    report11.qrlabel32.caption:=fieldbyname('qtyperpack').asstring;
    report11.qrlabel33.caption:=formatfloat('###,###,##0.00;; ',fieldbyname('wholeprice').asfloat);
    report11.qrlabel35.caption:=formatfloat('###,###,##0.00;; ',fieldbyname('retailprice').asfloat);
    report11.tag:=fieldbyname('qtyperpack').asinteger;  // 内装数 用于核算发生数量的整件和散货数
    close;
end;

with exgqry do
begin
    disablecontrols;
    first;
    mt1:=0;  mt2:=0;  mt3:=0;  mt4:=0;
    while not eof do
    begin
        mt1:=mt1+fieldbyname('imp_qty').asfloat;
        mt2:=mt2+fieldbyname('imp_amt').asfloat;
        mt3:=mt3+fieldbyname('exp_qty').asfloat;
        mt4:=mt4+fieldbyname('exp_amt').asfloat;
        next;
    end;
    report11.qrlabel50.caption:=formatfloat('###,###,##0;; ',mt1);
    report11.qrlabel51.caption:=formatfloat('###,###,##0.00;; ',mt2);
    report11.qrlabel52.caption:=formatfloat('###,###,##0;; ',mt3);
    report11.qrlabel53.caption:=formatfloat('###,###,##0.00;; ',mt4);
end;
screen.cursor:=crdefault;
with report11 do
begin
    if dxcheckedit1.checked then  // 对外  价格 金额 库存余额 不显示
    begin
        qrlabel25.enabled:=false;
        qrlabel3 .enabled:=false;
        qrlabel37.enabled:=false;
        qrdbtext9.enabled:=false;
        qrlabel43.Enabled:=false;
        qrlabel45.Enabled:=false;
        qrlabel37.Enabled:=false;
        qrlabel51.Enabled:=false;
        qrlabel53.Enabled:=false;
    end
    else
    begin
        qrlabel25.enabled:=true;
        qrlabel3 .enabled:=true;
        qrlabel37.enabled:=true;
        qrdbtext9.enabled:=true;
        qrlabel37.Enabled:=true;
        qrlabel43.Enabled:=true;
        qrlabel45.Enabled:=true;
        qrlabel51.Enabled:=true;
        qrlabel53.Enabled:=true;
    end;
    qrlabel9.caption:=datetostr(dxdateedit1.date);
    qrlabel11.caption:=datetostr(dxdateedit2.date);
    if dxcheckedit2.Checked then qrlabel46.caption:='入出库';
    if dxcheckedit3.Checked then qrlabel46.caption:='入库';
    if dxcheckedit4.Checked then qrlabel46.caption:='出库';
    if dxcheckedit4.Checked then qrlabel46.caption:=qrlabel46.caption+' 对外'
        else qrlabel46.caption:=qrlabel46.caption+' 对内';
    quickrep1.preview;
    free;
end;
exgqry.enablecontrols;
end;

procedure Tqrymedexg.DSexgqryDataChange(Sender: TObject; Field: TField);
begin
speedbutton1.enabled:=(exgqry.active=true) and (exgqry.recordcount>0);
speedbutton2.enabled:=(exgqry.active=true) and (exgqry.recordcount>0);
end;

procedure Tqrymedexg.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqrymedexg.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
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

procedure Tqrymedexg.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then open;
end;

procedure Tqrymedexg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//with dm.district do
//    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrymedexg.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:=query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:=query1.fieldbyname('sta_id').asinteger;
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
end;

procedure Tqrymedexg.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqrymedexg.N3Click(Sender: TObject);
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

procedure Tqrymedexg.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrymedexg.N2Click(Sender: TObject);
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

procedure Tqrymedexg.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqrymedexg.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1bod_type) then
begin
    if ANode.Strings[dxDBGrid1bod_type.Index] = '期初数' then
    begin
//        AColor := clMedGray;
        AColor := clPurple; //clblack;
        AFont.Color := clWhite;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '盘点') then
    begin
        AColor := $00E8C1DE; //clYellow;
        AFont.Color := clblack;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '采购入库') then
    begin
        AColor := $004EFC56; //$00FEFE94;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '销售出库') then
    begin
        AColor := $0084FFFF; //$00CAFDFD; //$00FDE0FE;
    end;
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '销售入库') then
    begin
        AColor := $00FEFE94;
    end;
end;
if (AColumn = dxDBGrid1bod_type) or (AColumn = dxDBGrid1imp_qty) or (AColumn = dxDBGrid1imp_amt) then
begin
    if (ANode.Strings[dxDBGrid1bod_type.Index] = '代理入库') then
    begin
        AColor := clyellow;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqrymedexg.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1bal' then
begin
//    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100)
    atext:=formatfloat('###,##0.##;; ',bal);
{
    if exgqry.active=False then exit;
//    if (exgqry.active=False) or (exgqry.recordcount=0) then exit;
    exgqry.DisableControls;
    exgqry.last;
    atext:=formatfloat('###,##0.##;; ',exgqry.fieldbyname('bal').asfloat);
    exgqry.first;
    exgqry.EnableControls;
}
end;
end;

end.
