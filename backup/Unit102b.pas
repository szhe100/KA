unit Unit102b;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, wwSpeedButton,
  dxdbtrel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxEditor, StdCtrls, Buttons, Comobj, ActiveX,
  ImgList, dxDBEdtr, dxDBELib;

type
  Tqryreport26 = class(TForm)
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    qry: TClientDataSet;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrypdt_place: TStringField;
    qrymed_unit: TStringField;
    qrycreat_dt: TDateTimeField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrybat_cd: TStringField;
    qrycreater: TStringField;
    qrydtl_id: TAutoIncField;
    qrybod_cd: TStringField;
    qryagent: TStringField;
    Shape3: TShape;
    dxEdit1: TdxEdit;
    Shape5: TShape;
    Label5: TLabel;
    Label7: TLabel;
    Shape6: TShape;
    qrycarry_dt: TDateTimeField;
    dxButtonEdit4: TdxButtonEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qrybod_desc: TStringField;
    qrycdistrict: TStringField;
    qrybusi_type: TIntegerField;
    ADOQuery1mate_id1: TAutoIncField;
    ADOQuery1mate_id2: TAutoIncField;
    ADOQuery1mate_id3: TAutoIncField;
    ADOQuery1mate_id4: TAutoIncField;
    ADOQuery1mate_id5: TAutoIncField;
    ADOQuery1mate_name1: TStringField;
    ADOQuery1mate_name2: TStringField;
    ADOQuery1mate_name3: TStringField;
    ADOQuery1mate_name4: TStringField;
    ADOQuery1mate_name5: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxLookupTreeView1: TdxLookupTreeView;
    Label8: TLabel;
    Shape7: TShape;
    dxDBGrid1med_code: TdxDBGridColumn;
    dxDBGrid1med_name: TdxDBGridColumn;
    dxDBGrid1specifi: TdxDBGridColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridColumn;
    dxDBGrid1sqty: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridColumn;
    qrybod_status_id: TIntegerField;
    qryCbod_status: TStringField;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    ImageList: TImageList;
    Label13: TLabel;
    Timer1: TTimer;
    Edit1: TEdit;
    qrymate_name: TStringField;
    qrymate_name1: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1creat_dt: TdxDBGridColumn;
    qrycate_id: TWordField;
    qryCcate: TStringField;
    dxDBGrid1Ccate: TdxDBGridColumn;
    qrybod_cd1: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    qryprice1: TBCDField;
    qryprice2: TBCDField;
    qryCamot1: TFloatField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxButtonEdit5: TdxButtonEdit;
    Label3: TLabel;
    Shape4: TShape;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    qryramot: TBCDField;
    qryCamot3: TBCDField;
    dxDBGrid1Camot3: TdxDBGridColumn;
    dxDBGrid1src_id: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    dxDBGrid1dtl_id: TdxDBGridColumn;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    qrysqty: TBCDField;
    Edit2: TEdit;
    Shape8: TShape;
    Label11: TLabel;
    qrybank_id: TIntegerField;
    qrybank_name: TStringField;
    dxDBGrid1bank_name: TdxDBGridColumn;
    dxDBGrid1amot: TdxDBGridColumn;
    qrycarry_dt1: TDateTimeField;
    dxDBGrid1carry_dt1: TdxDBGridColumn;
    qrybod_desc1: TStringField;
    dxDBGrid1bod_desc1: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    qrycheck_dt: TDateTimeField;
    qrychecker: TStringField;
    qryCbusitype: TStringField;
    Label12: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSqryDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxEdit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
    procedure qryCalcFields(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure dxButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryreport26: Tqryreport26;
  m1,m2: real;

implementation

uses datamodu, Unit16a, Unit7, Unit28, Unit16c, Unit9;

{$R *.DFM}

procedure Tqryreport26.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active=true then close;
//with dm.district do
//    if active=true then close;
if fmateid>0 then fmateid:=0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//保存
end;

procedure Tqryreport26.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryreport26.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryreport26.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
with qry do
begin
    speedbutton2.enabled:=(active=true) and (recordcount>0);
//    speedbutton3.enabled:=(active=true) and (recordcount>0);
end;
end;

procedure Tqryreport26.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryreport26.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryreport26.SpeedButton5Click(Sender: TObject);
var si: integer;
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
if (Trim(dxButtonEdit1.text)='') and (Trim(dxButtonEdit2.text)='') and (Trim(dxButtonEdit4.text)='') and (Trim(dxButtonEdit5.text)='')
	and (Trim(dxLookupTreeView1.Text)='') and (Trim(dxEdit1.text)='') then
begin
	if (dxdateedit2.date-dxdateedit1.date>365) then raise Exception.Create('无查询条件时日期范围不可超过365天');
//	if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('无查询条件时日期范围不可超过180天');
end;
with qry do
begin
    if active=true then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select b.dtl_id,a.bod_cd,a.bod_status_id,c.cate_id,a.src_id,a.dst_id,m.med_code,m.med_name,m.specifi,m.pdt_place,m.qtyperpack,cdistrict=dbo.fn_getdistrict(j.district),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(m.unit_id),a.bod_desc,bod_desc1=c.bod_desc,j.mate_name,agent=p.mate_name,';
//    commandtext:=commandtext+' leader=dbo.fn_staff_name(dbo.fn_getleadid2(a.agent_id,b.med_id,a.carry_dt)),';
//    commandtext:=commandtext+' a.mate_id1,a.mate_id2,a.mate_id3,a.mate_id4,a.mate_id5,'; //j.credit_day,';
    commandtext:=commandtext+' mate_name1=h.mate_name,a.bank_id,bank_name=dbo.fn_bank_name(a.bank_id),';
    commandtext:=commandtext+' c.busi_type,carry_dt=cast(convert(char(10),a.carry_dt,20) as datetime),carry_dt1=c.carry_dt,bod_cd1=c.bod_cd,a.creat_dt,';  //carrydays=datediff(day,a.carry_dt,getdate()),
{
    commandtext:=commandtext+' dist1=dbo.fn_getdistrictlevel (p.district,1),';
    commandtext:=commandtext+' dist2=dbo.fn_getdistrictlevel (p.district,2),';
    commandtext:=commandtext+' recdt=dbo.fn_getexprecdt(b.dtl_id),reccd=dbo.fn_getexpreccd(b.dtl_id),';
}
//    commandtext:=commandtext+' b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,b.discount,'; //b.qty,
//    commandtext:=commandtext+' b.ckd_amot1,b.ckd_amot2,b.ckd_amot3,a.busi_type,price=cast(t.price2 as decimal(15,6)),b.discount,'; //b.qty,
    commandtext:=commandtext+' d.qty,sqty=cast(case when c.busi_type=3 then 0 else 1 end*d.qty as decimal(15,4)),';
    commandtext:=commandtext+' d.price,price1=cast(case when c.busi_type=3 then d.price else d.price1 end as decimal(15,4)),price2=case when c.busi_type=3 then 0 else 1 end*d.price2,';
//    commandtext:=commandtext+' amot=cast(t.price2*b.qty as decimal(15,2)),';
    commandtext:=commandtext+' amot=cast(b.amot as decimal(15,2)),d.price,b.bat_cd,ramot=q.amot,creater=dbo.fn_staff_name(a.creat_by),a.check_dt,checker=dbo.fn_staff_name(a.check_by)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_bill_dtl d on b.med_id=d.dtl_id';
    commandtext:=commandtext+' left join tb_bill c on c.bod_id=d.bod_id';
    commandtext:=commandtext+' inner join tb_medicine m on d.med_id=m.med_id';
    commandtext:=commandtext+' left join tb_busimate p on c.agent_id=p.mate_id';
    commandtext:=commandtext+' left join tb_busimate h on c.src_id=h.mate_id';
    commandtext:=commandtext+' left join tb_busimate j on c.dst_id=j.mate_id';
//    commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join tb_busiframe2 k on a.cate_id=2 and k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,a.carry_dt)';
//    commandtext:=commandtext+' left join tb_busiframe4 o on o.rec_id=dbo.fn_getbusiframerecid6(a.agent_id,a.dst_id,b.med_id,a.carry_dt)'; // --a.agent_id=o.agent_id and a.dst_id=o.mate_id and b.med_id=o.med_id';
    commandtext:=commandtext+' left join tb_busiframe6 q on q.rec_id=dbo.fn_getbusiframerecid7(c.agent_id,c.src_id,c.dst_id,d.med_id,c.carry_dt)';
//    commandtext:=commandtext+' left join tb_medata t on t.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' where a.bod_type_id=48 and a.bod_status_id=1';
	commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
    if RadioGroup1.ItemIndex>0 then commandtext:=commandtext+'  and c.cate_id='+inttostr(RadioGroup1.ItemIndex);
    if RadioGroup2.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot3=q.amot*b.qty';
    if RadioGroup2.ItemIndex=2 then commandtext:=commandtext+'  and (b.ckd_amot3 is null or b.ckd_amot3<>q.amot*b.qty)';
    if RadioGroup3.ItemIndex=1 then commandtext:=commandtext+'  and b.ckd_amot1=b.price1*b.qty';
    if RadioGroup3.ItemIndex=2 then commandtext:=commandtext+'  and (b.ckd_amot1 is null or b.ckd_amot1<>b.price1*b.qty)';
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
    else
    begin
        if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and c.dst_id='+inttostr(dxbuttonedit1.tag);
        if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and d.med_id='+inttostr(dxbuttonedit2.tag);
        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and c.agent_id='+inttostr(dxbuttonedit4.tag);
        if trim(dxbuttonedit5.text)<>'' then commandtext:=commandtext+' and c.src_id='+inttostr(dxbuttonedit5.tag);
        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
    end;
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and c.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and d.med_id=t.med_id)';
    commandtext:=commandtext+'  order by a.carry_dt,b.dtl_id';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if si>0 then locate('dtl_id',si,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqryreport26.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag := query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
end;

procedure Tqryreport26.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('med_code').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryreport26.dxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton5Click(self);
    dxEdit1.selectall;
    dxEdit1.setfocus;
end;
end;

procedure Tqryreport26.dxEdit1Click(Sender: TObject);
begin
dxEdit1.selectall;
dxEdit1.setfocus;
end;

procedure Tqryreport26.FormActivate(Sender: TObject);
begin
{
with level1 do
    if active=false then
    begin
        commandtext:='select obj_id,zdesc from tb_object where comp_id='+inttostr(compid)+' and obj_type_id=21 order by zdesc'; // and comp_id='+inttostr(compid);
        open;
    end;
}
with dm.district do
    if active=false then
    begin
        open;
        locate('rec_id',compdistid,[]);
    end;
if (fmateid>0) or (fmateid1>0) then
begin
	dxButtonEdit1.Tag:=fmateid;
    dxButtonEdit1.Text:=fmatename;
	dxButtonEdit5.Tag:=fmateid1;
    dxButtonEdit5.Text:=fmatename1;
    SpeedButton5Click(nil);
end;
end;

procedure Tqryreport26.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickagent do
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

procedure Tqryreport26.N3Click(Sender: TObject);
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

procedure Tqryreport26.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
end;

procedure Tqryreport26.N2Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid1 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid1src_id.Visible:=False;
dxDBGrid1dtl_id.Visible:=False;
setprogress(0);
end;

procedure Tqryreport26.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryreport26.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Ccate) then
begin
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate.Index] = '商业') then
    begin
        AColor := $00BAFEFB;
//        AFont.Color := clwhite;
    end;
end;
{
if (AColumn = dxDBGrid1Cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '退货') then
    begin
//        AColor := $00FDFCC1;
        AFont.Color := clred;
    end;
    if (ANode.Strings[dxDBGrid1Cbusitype.Index] = '调价') then
    begin
        AFont.Color := clBlue; //clyellow;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot1) or (AColumn = dxDBGrid1Cfinished) then
begin
    if (ANode.Values[dxDBGrid1Camot1.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot1.Index] =ANode.Values[dxDBGrid1Camot1.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1ckd_amot3) or (AColumn = dxDBGrid1Cfinished1) then
begin
    if (ANode.Values[dxDBGrid1Camot3.Index]<>0) and (ANode.Values[dxDBGrid1ckd_amot3.Index] =ANode.Values[dxDBGrid1Camot3.Index]) then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
if (AColumn = dxDBGrid1rprice2) then
begin
    if (ANode.Values[dxDBGrid1price1.Index]<>ANode.Values[dxDBGrid1rprice2.Index]) then
//    if (ANode.Values[dxDBGrid1price1.Index]<>ANode.Values[dxDBGrid1rprice2.Index]) and (ANode.Values[dxDBGrid1rprice2.Index]>0) then
    begin
        Acolor := clred; //$00B8FFB3; //$00E9FFD7; // light green
        AFont.Color := clwhite;
    end;
end;
}
end;

procedure Tqryreport26.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
if AColumn.Name='dxDBGrid1amot' then
begin
    if Trim(AText)='' then m1:=0 else m1:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1profit' then
begin
    if Trim(AText)='' then m2:=0 else m2:=StrToFloat(cleardeli(AText));
end;
if AColumn.Name='dxDBGrid1prate' then
begin
    if m1=0 then atext:='' else atext:=formatfloat('###,##0.##%;; ',m2/m1*100);
end;
end;

procedure Tqryreport26.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('bod_status_id').asinteger of
        0: fieldbyname('cbod_status').asstring:='制单';
        1: fieldbyname('cbod_status').asstring:='审核';
    end;
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='销售';
        2: fieldbyname('cbusitype').asstring:='退货';
        3: fieldbyname('cbusitype').asstring:='调价';
    end;
    case fieldbyname('cate_id').asinteger of
        1: fieldbyname('ccate').asstring:='商业';
        2: fieldbyname('ccate').asstring:='分销';
    end;
    fieldbyname('camot1').asfloat:=fieldbyname('price1').asfloat*fieldbyname('qty').asfloat;
//    fieldbyname('camot2').asfloat:=fieldbyname('price2').asfloat*fieldbyname('sqty').asfloat;
//    fieldbyname('cnot_amot1').asfloat:=fieldbyname('Camot1').asfloat-fieldbyname('ckd_amot1').asfloat;

    if fieldbyname('busi_type').asinteger=3 then fieldbyname('camot3').asfloat:=fieldbyname('camot1').asfloat
    	else fieldbyname('camot3').asfloat:=fieldbyname('ramot').asfloat*fieldbyname('sqty').asfloat;
{
    fieldbyname('cnot_amot3').asfloat:=fieldbyname('camot3').asfloat-fieldbyname('ckd_amot3').asfloat;
    fieldbyname('cfinished1').asboolean:=(fieldbyname('camot3').asfloat<>0) and (fieldbyname('cnot_amot3').asfloat=0);
    if (fieldbyname('credit_day').asinteger>0) and (fieldbyname('carrydays').asinteger>fieldbyname('credit_day').asinteger)
    	then fieldbyname('Cexceeddays').asinteger := fieldbyname('carrydays').asinteger-fieldbyname('credit_day').asinteger
        else fieldbyname('Cexceeddays').asinteger := 0;
}
end;
end;

procedure Tqryreport26.Timer1Timer(Sender: TObject);
var h:HWND;
begin
h:= FindWindow(nil,PChar('提示'));
PostMessage(h, WM_KEYDOWN, VK_RETURN, 0);
end;

procedure Tqryreport26.dxButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with picksupplier do
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

procedure Tqryreport26.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

end.
