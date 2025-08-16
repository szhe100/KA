unit Unit201e;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, Menus, ADODB, dxCntner, DB, DBClient, dxEdLib, StdCtrls,
  ExtCtrls, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  wwSpeedButton, wwDBNavigator, wwclearpanel, DateUtils, Buttons, dxdbtrel,
  ImgList;

type
  Tqryclassimp5 = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DSqry: TDataSource;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    qry: TClientDataSet;
    Shape4: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxButtonEdit1: TdxButtonEdit;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    qrycreat_dt: TDateTimeField;
    qrymed_code: TStringField;
    qrymed_name: TStringField;
    qryspecifi: TStringField;
    qrymed_unit: TStringField;
    qrypdt_place: TStringField;
    qryprice: TBCDField;
    qryqty: TBCDField;
    qryamot: TBCDField;
    qrycreater: TStringField;
    qrychecker: TStringField;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1price: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridMaskColumn;
    dxDBGrid1amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    qrydtl_id: TAutoIncField;
    Shape1: TShape;
    Label4: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    qrybat_cd: TStringField;
    ADOQuery1: TADOQuery;
    qrybod_cd: TStringField;
    dxDBGrid1bod_cd: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    qrycarry_dt: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Shape3: TShape;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    dxEdit1: TdxEdit;
    qrybusi_type: TIntegerField;
    qryCbusitype: TStringField;
    qryprice1: TBCDField;
    dxDBGrid1price1: TdxDBGridColumn;
    qryCrate: TFloatField;
    dxDBGrid1Crate: TdxDBGridColumn;
    qryagent_id: TAutoIncField;
    qryagent: TStringField;
    qrylead_id: TAutoIncField;
    qryleader: TStringField;
    qrymate_name: TStringField;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1leader: TdxDBGridColumn;
    qrylevel1: TStringField;
    qrylevel2: TStringField;
    qrylevel3: TStringField;
    dxDBGrid1level1: TdxDBGridColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1level3: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    qrybod_cd1: TStringField;
    dxDBGrid1bod_cd1: TdxDBGridColumn;
    Edit1: TEdit;
    Label5: TLabel;
    qrycate_id: TWordField;
    qryCcate_id: TStringField;
    dxDBGrid1Cbusitype: TdxDBGridColumn;
    Label13: TLabel;
    ADOQuery1broker1: TStringField;
    qrybroker: TStringField;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1bat_cd: TdxDBGridColumn;
    qrysrc_id: TIntegerField;
    qrymate_name1: TStringField;
    qrydst_id: TIntegerField;
    dxDBGrid1mate_name1: TdxDBGridColumn;
    qryvalid_dt: TDateTimeField;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    qrybod_type_id: TIntegerField;
    dxDBGrid1Ccate_id: TdxDBGridColumn;
    qrybod_desc: TStringField;
    dxDBGrid1bod_desc: TdxDBGridColumn;
    dxDBGrid1carry_dt: TdxDBGridColumn;
    qrycdistrict: TStringField;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    Shape5: TShape;
    Label22: TLabel;
    dxLookupTreeView1: TdxLookupTreeView;
    ImageList1: TImageList;
    qrydata_type_id: TIntegerField;
    qrydata_type: TStringField;
    dxDBGrid1data_type: TdxDBGridColumn;
    qrychannel_id: TIntegerField;
    qrychannel_dtl_id: TIntegerField;
    qrychannel: TStringField;
    qrychannel_dtl: TStringField;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    Shape6: TShape;
    Label7: TLabel;
    dxEdit2: TdxEdit;
    qrymaterial_code1: TStringField;
    dxDBGrid1material_code1: TdxDBGridColumn;
    qryCrate1: TBCDField;
    qryrprice: TBCDField;
    qryrprice1: TBCDField;
    dxDBGrid1rprice1: TdxDBGridColumn;
    dxDBGrid1Crate1: TdxDBGridColumn;
    dxDBGrid1rprice: TdxDBGridColumn;
    dxDBGrid1Camot: TdxDBGridColumn;
    qryCamot: TBCDField;
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
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxLookupTreeView1DropDown(Sender: TObject);
    procedure dxLookupTreeView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qryclassimp5: Tqryclassimp5;

implementation

uses datamodu, Unit7, Unit16a;

{$R *.DFM}

procedure Tqryclassimp5.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with qry do
    if active then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqryclassimp5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqryclassimp5.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  // <Enter> key is pressed
begin
    if activecontrol.name='dxEdit1' then exit;
    key:=#0;
    perform(WM_NEXTDLGCTL,0,0);
end;
end;

procedure Tqryclassimp5.DSqryDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(qry.active) and (qry.recordcount>0);
end;

procedure Tqryclassimp5.FormCreate(Sender: TObject);
begin
dxdateedit1.date:=dt_30;
dxdateedit2.date:=date;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqryclassimp5.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqryclassimp5.SpeedButton5Click(Sender: TObject);
var si: integer;
    ss: string[12];
begin
if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
//if (dxdateedit2.date-dxdateedit1.date>180) then raise Exception.Create('查询日期范围不可超过180天');
checkperiodlimit(curuserid,dxDateEdit1.Date);
checkperiodlimit(curuserid,dxDateEdit2.Date);
{
if fperiodlimit then   //限制查询时段
begin
    y1:=yearof(dxDateEdit1.Date);
    y2:=yearof(dxDateEdit2.Date);
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        commandtext:=commandtext+' union all select top 1 1 from tb_sysright a,(select obj_id=1,zdesc=''2015'' union all select obj_id=2,zdesc=''2016'' union all select obj_id=3,zdesc=''2017'' union all select obj_id=4,zdesc=''2018'') b';
        commandtext:=commandtext+' where a.type_id=1 and a.sta_id='+inttostr(curuserid)+' and a.obj_id=b.obj_id and b.zdesc='''+Trim(inttostr(y1))+'''';
        open;
        if recordcount<2 then raise Exception.Create('查询年度未授权');
    end;
end;
}
with qry do
begin
    if active then
    begin
        si:=fieldbyname('dtl_id').asinteger;
        close;
    end
    else si:=0;
    commandtext:='select dtl_id,a.bod_type_id,a.bod_cd,e.med_code,e.material_code1,e.med_name,e.specifi,a.src_id,mate_name1=g.mate_name,a.dst_id,c.mate_name,cdistrict=dbo.fn_getdistrict(c.district),a.agent_id,agent=d.mate_name,'; //dbo.fn_mate_name(a.agent_id),';
    commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
    commandtext:=commandtext+' a.cate_id,a.busi_type,b.lead_id,leader=dbo.fn_staff_name(k.sta_id),b.bod_cd1,';  //leader=dbo.fn_staff_name(b.lead_id),price1=dbo.fn_getbidprice(a.dst_id,b.med_id),
    commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,a.bod_desc,';
    commandtext:=commandtext+' price1=dbo.fn_getbidprice9(a.dst_id,b.med_id,a.carry_dt),broker=f.zname,a.data_type_id,data_type=dbo.fn_obj_desc(a.data_type_id),';
    commandtext:=commandtext+' a.channel_id,channel=dbo.fn_obj_desc(a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc(a.channel_dtl_id),';
    commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(e.unit_id),e.pdt_place,b.bat_cd,b.valid_dt,b.price,b.qty,b.amot,creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by),';
    commandtext:=commandtext+' rprice=h.price,rprice1=h.price1';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
    commandtext:=commandtext+' inner join tb_medicine e on b.med_id=e.med_id';
    commandtext:=commandtext+' left join tb_busimate g on a.src_id=g.mate_id';
    commandtext:=commandtext+' left join tb_busimate c on a.dst_id=c.mate_id';
    commandtext:=commandtext+' left join tb_busimate d on a.agent_id=d.mate_id';
    commandtext:=commandtext+' left join tb_staff f on a.broker_id=f.sta_id';
    commandtext:=commandtext+' left join tb_busiframe k on k.rec_id=dbo.fn_getbusiframerecid (c.district,b.med_id,a.carry_dt)';
    commandtext:=commandtext+' left join (select channel_id,channel_dtl_id,district_id,med_id,price,price1 from tb_medprice where type_id=3) h';
    commandtext:=commandtext+'  on a.channel_id=h.channel_id and a.channel_dtl_id=h.channel_dtl_id and c.district=h.district_id and b.med_id=h.med_id';
    commandtext:=commandtext+' where a.bod_type_id=1 and a.cate_id in (1,5)'; // 2, cate_id 1:商业 2:分销 3:终端战略 4:终端普通 5:两票商业
    if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
    if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
    if RadioGroup2.ItemIndex in [1,2] then commandtext:=commandtext+'  and a.cate_id='+inttostr(RadioGroup2.ItemIndex);
    if RadioGroup2.ItemIndex=3 then commandtext:=commandtext+'  and a.cate_id=5';
    if Trim(dxEdit1.text)<>'' then
    begin
        ss:=trim(dxEdit1.text);
        commandtext:=commandtext+' and a.bod_cd like ''%'+ss+'%''';
    end
    else
    begin
        commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    end;
    if Trim(dxEdit2.text)<>'' then commandtext:=commandtext+' and e.material_code1 like '''+Trim(dxEdit2.text)+'%''';
    if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(c.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(d.district,t.dist_id)=1)';  //依据业务负责人地区 以限制地区
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
//    commandtext:=commandtext+'  order by a.creat_dt,b.dtl_id';
//edit1.text:=commandtext;
{
    if RadioGroup2.ItemIndex in [0,3] then //两票商业 
    begin
        commandtext:=commandtext+' union all select dtl_id,a.bod_type_id,a.bod_cd,d.med_code,d.med_name,d.specifi,a.src_id,mate_name1=h.mate_name,a.dst_id,j.mate_name,a.agent_id,agent=p.mate_name,'; //dbo.fn_mate_name(a.agent_id),';
//        commandtext:=commandtext+' level1=dbo.fn_obj_desc(k.level_id1),level2=dbo.fn_obj_desc(k.level_id2),level3=dbo.fn_obj_desc(k.level_id3),';
        commandtext:=commandtext+' level1=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id1 else k.level_id1 end),';
        commandtext:=commandtext+' level2=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id2 else k.level_id2 end),';
        commandtext:=commandtext+' level3=dbo.fn_obj_desc(case when a.cate_id=1 then n.level_id3 else k.level_id3 end),';
        commandtext:=commandtext+' a.cate_id,a.busi_type,b.lead_id,leader=dbo.fn_staff_name(k.sta_id),b.bod_cd1,';  //leader=dbo.fn_staff_name(b.lead_id),price1=dbo.fn_getbidprice(a.dst_id,b.med_id),
        commandtext:=commandtext+' creat_dt=cast(convert(char(10),a.creat_dt,20) as datetime),a.carry_dt,';
        commandtext:=commandtext+' price1=dbo.fn_getbidprice9(a.dst_id,b.med_id,a.carry_dt),broker='''',';
        commandtext:=commandtext+' med_unit=dbo.fn_obj_desc(d.unit_id),d.pdt_place,b.bat_cd,b.valid_dt,price=b.price1,b.qty,amot=cast(b.price1*b.qty as decimal(15,4)),creater=dbo.fn_staff_name(a.creat_by),checker=dbo.fn_staff_name(a.check_by)';
        commandtext:=commandtext+' from tb_bill a';
        commandtext:=commandtext+' inner join tb_bill_dtl b on a.bod_id=b.bod_id';
        commandtext:=commandtext+' left join tb_staff c on b.sta_id=c.sta_id';
        commandtext:=commandtext+' inner join tb_medicine d on b.med_id=d.med_id';
        commandtext:=commandtext+' left join tb_busimate p on a.agent_id=p.mate_id';
        commandtext:=commandtext+' left join tb_busimate h on a.src_id=h.mate_id';
        commandtext:=commandtext+' left join tb_busimate j on a.dst_id=j.mate_id';
        commandtext:=commandtext+' left join tb_sysrule l on l.rec_id=dbo.fn_getsysrulerecid5(a.dst_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe n on a.cate_id=1 and n.rec_id=dbo.fn_getbusiframerecid (p.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_busiframe2 k on a.cate_id=2 and k.rec_id=dbo.fn_getbusiframerecid1 (a.agent_id,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' left join tb_medata m on m.rec_id=dbo.fn_getmedatarecid(j.district,b.med_id,a.carry_dt)';
        commandtext:=commandtext+' where a.bod_type_id=42 and a.bod_status_id=1 and a.cate_id=1';
//        if RadioGroup1.ItemIndex=1 then commandtext:=commandtext+'  and a.bod_status_id=0';
//        if RadioGroup1.ItemIndex=2 then commandtext:=commandtext+'  and a.bod_status_id=1';
//        commandtext:=commandtext+'  and a.cate_id=1';
//        if RadioGroup2.ItemIndex in [2] then commandtext:=commandtext+'  and 1=0';
//        if RadioGroup2.ItemIndex in [1,0,3] then commandtext:=commandtext+'  and a.cate_id=1';
        if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and a.bod_cd like ''%'+trim(dxEdit1.text)+'%'''
        else
        begin
            commandtext:=commandtext+'  and a.carry_dt>= '''+datetostr(dxdateedit1.date)+''' and a.carry_dt< dateadd(day,1,'''+datetostr(dxdateedit2.date)+''')';
            if trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.dst_id='+inttostr(dxbuttonedit1.tag);
            if trim(dxbuttonedit2.text)<>'' then commandtext:=commandtext+' and b.med_id='+inttostr(dxbuttonedit2.tag);
    //        if trim(dxbuttonedit3.text)<>'' then commandtext:=commandtext+' and a.src_id='+inttostr(dxbuttonedit3.tag);
    //        if trim(dxbuttonedit4.text)<>'' then commandtext:=commandtext+' and l.agent_id='+inttostr(dxbuttonedit4.tag);
    //        if Trim(dxLookupEdit1.text)<>'' then commandtext:=commandtext+' and a.level_id1='+level1.fieldbyname('obj_id').asstring;
    //        if Trim(dxLookupTreeView1.text)<>'' then commandtext:=commandtext+' and dbo.fn_treeischild(j.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
        end;
        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.dst_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and b.med_id=t.med_id)';
    end;
}
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

procedure Tqryclassimp5.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit1.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag:=0;
    end;
end;

procedure Tqryclassimp5.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:=query1.fieldbyname('material_code1').asstring+' '+query1.fieldbyname('med_name').asstring+' '+query1.fieldbyname('specifi').asstring+' '+query1.fieldbyname('pdt_place').asstring+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit2.tag :=query1.fieldbyname('med_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
end;

procedure Tqryclassimp5.N3Click(Sender: TObject);
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

procedure Tqryclassimp5.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqryclassimp5.N2Click(Sender: TObject);
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

procedure Tqryclassimp5.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqryclassimp5.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1cbusitype) then
begin
    if (ANode.Strings[dxDBGrid1cbusitype.Index] = '退货') then
    begin
//        AColor := clred;
        AFont.Color := clred;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1Ccate_id) then
begin
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '分销') then
    begin
        AColor := $00FDFCC1;
//        AFont.Color := clwhite;
    end;
    if (ANode.Strings[dxDBGrid1Ccate_id.Index] = '两票采购') then
    begin
        AColor := $00FEFE94;
//        AFont.Color := clwhite;
    end;
end;
if (AColumn = dxDBGrid1rprice) or (AColumn = dxDBGrid1rprice1) or (AColumn = dxDBGrid1crate1) or (AColumn = dxDBGrid1camot) then
begin
    if (ANode.Strings[dxDBGrid1rprice.Index] = '') then
    begin
//        AColor := clred;
        AFont.Color := $00E1E1FF; //clred;
//        AFont.Color := clwhite;
    end;
end;
end;

procedure Tqryclassimp5.qryCalcFields(DataSet: TDataSet);
begin
with qry do
begin
    case fieldbyname('busi_type').asinteger of
        1: fieldbyname('cbusitype').asstring:='采购';
        2: fieldbyname('cbusitype').asstring:='退货';
    end;
    if fieldbyname('bod_type_id').asinteger=1 then
    begin
        case fieldbyname('cate_id').asinteger of
            1: fieldbyname('ccate_id').asstring:='商业';
            2: fieldbyname('ccate_id').asstring:='分销';
            5: fieldbyname('ccate_id').asstring:='两票商业';
        end;
    end;
    if fieldbyname('bod_type_id').asinteger=42 then
    begin
        case fieldbyname('cate_id').asinteger of
            1: fieldbyname('ccate_id').asstring:='两票商业';
            2: fieldbyname('ccate_id').asstring:='两票分销';
        end;
    end;
    if (fieldbyname('price1').asfloat=0)
        then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=100*fieldbyname('price').asfloat/fieldbyname('price1').asfloat;
    if (fieldbyname('rprice1').asfloat=0)
        then fieldbyname('crate1').asfloat:=0
        else fieldbyname('crate1').asfloat:=100*fieldbyname('rprice').asfloat/fieldbyname('rprice1').asfloat;
    fieldbyname('camot').asfloat:= fieldbyname('rprice').asfloat*fieldbyname('qty').asfloat;
end;
end;

procedure Tqryclassimp5.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqryclassimp5.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tqryclassimp5.dxLookupTreeView1DropDown(Sender: TObject);
begin
setprogress(1);
end;

procedure Tqryclassimp5.dxLookupTreeView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
setprogress(0);
end;

end.
