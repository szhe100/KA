unit Unit76a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, DB, DBClient, dxCntner, dxEdLib, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, dxDBELib, StdCtrls, dxEditor, dxDBEdtr, Animate,
  GIFCtrl, DBCtrls, ExtCtrls, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  ComCtrls, mycds, Menus, dxdbtrel, ImgList;

type
  Tsetrecaccount1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    DSbill: TDataSource;
    StyleController: TdxEditStyleController;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton5: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    GIFimage1: TRxGIFAnimator;
    cdsbill: TClientDataSet;
    cdsbillbod_id: TIntegerField;
    cdsbillbod_cd: TStringField;
    cdsbillsrc_id: TIntegerField;
    cdsbilldst_id: TIntegerField;
    cdsbillbod_status_id: TIntegerField;
    cdsbillbod_type_id: TIntegerField;
    cdsbillbusi_type: TIntegerField;
    cdsbillbod_amot: TBCDField;
    cdsbillcreat_by: TIntegerField;
    cdsbillcreat_dt: TDateTimeField;
    cdsbillcheck_by: TIntegerField;
    cdsbillcheck_dt: TDateTimeField;
    cdsbillrelative_id: TIntegerField;
    cdsbillCbod_status: TStringField;
    cdsbillcreater: TStringField;
    cdsbillchecker: TStringField;
    cdsbillsettle_type: TIntegerField;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label12: TLabel;
    Label14: TLabel;
    dxDateEdit1: TdxDateEdit;
    cdsbillbod_desc: TStringField;
    Label15: TLabel;
    DBText15: TDBText;
    cdsbillbroker_id: TIntegerField;
    cdsbillstorage_by: TIntegerField;
    DBText14: TDBText;
    dxDateEdit4: TdxDateEdit;
    Label35: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    cdsbillcarry_dt: TDateTimeField;
    cdsbillbroker: TStringField;
    Label23: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pubqry: TClientDataSet;
    Shape3: TShape;
    Label5: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    SpeedButton6: TSpeedButton;
    dxLookupTreeView1: TdxLookupTreeView;
    Label20: TLabel;
    Shape7: TShape;
    ImageList: TImageList;
    N4: TMenuItem;
    N5: TMenuItem;
    cdsbillCmed: TStringField;
    cdsbillmed_id: TIntegerField;
    cdsbillmed_code: TStringField;
    cdsbillmed_name: TStringField;
    cdsbillspecifi: TStringField;
    Label6: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    Edit1: TEdit;
    DBText11: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    cdsbillchannel_id: TIntegerField;
    cdsbillchannel_dtl_id: TIntegerField;
    cdsbillchannel: TStringField;
    cdsbillchannel_dtl: TStringField;
    Label16: TLabel;
    Label8: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    cdsbillmate_name: TStringField;
    DBText5: TDBText;
    Label17: TLabel;
    DBText12: TDBText;
    cdsbillmaterial_code1: TStringField;
    cdsbillmaterial_code: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1carry_dt: TdxDBGridDateColumn;
    dxDBGrid1bod_cd: TdxDBGridMaskColumn;
    dxDBGrid1Cbod_status: TdxDBGridMaskColumn;
    dxDBGrid1channel: TdxDBGridColumn;
    dxDBGrid1channel_dtl: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridMaskColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1bod_desc: TdxDBGridMaskColumn;
    dxDBGrid1Cmed: TdxDBGridColumn;
    dxDBGrid1bod_amot: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1checker: TdxDBGridMaskColumn;
    dxDBGrid1check_dt: TdxDBGridColumn;
    dxDBGrid1bod_id: TdxDBGridColumn;
    dxDBGrid1bod_status_id: TdxDBGridColumn;
    cdsbillpdt_place: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSbillDataChange(Sender: TObject; Field: TField);
    procedure DSbillStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsbillBeforeEdit(DataSet: TDataSet);
    procedure cdsbillCalcFields(DataSet: TDataSet);
    procedure dxDBCalcEdit1Change(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxLookupTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
    procedure setupdatestatus;
    procedure setunupdatestatus;
  public
    { Public declarations }
  end;

var
  setrecaccount1: Tsetrecaccount1;

implementation

uses datamodu, Unit28;

{$R *.DFM}

procedure Tsetrecaccount1.setupdatestatus;    // 编辑状态
begin
speedbutton2.enabled:=false;    // examine disable
speedbutton3.enabled:=false;    // unexamine disable
speedbutton5.enabled:=false;   // refresh disable
speedbutton6.enabled:=false;   // insert disable
end;

procedure Tsetrecaccount1.setunupdatestatus;  // 浏览状态
begin
speedbutton5.enabled:=true;   // refresh enable
//speedbutton6.enabled:=true;   // insert enable
end;

procedure Tsetrecaccount1.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
if cdsbill.Active=False then SpeedButton5Click(nil);
end;

procedure Tsetrecaccount1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with cdsbill do if active then close;
with dm.district do if active then close;
end;

procedure Tsetrecaccount1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetrecaccount1.dxDBGrid1DblClick(Sender: TObject);
begin
pagecontrol1.activepage:=tabsheet2
end;

procedure Tsetrecaccount1.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tsetrecaccount1.SpeedButton5Click(Sender: TObject);
var bi: integer;
begin
// refresh speedbutton
if dxDateEdit1.text='' then exit;
with cdsbill do
begin
    bi:=fieldbyname('bod_id').asinteger;
    close;
    commandtext:='select a.*,c.mate_name,m.med_code,m.material_code,m.material_code1,m.med_name,m.specifi,m.pdt_place,creater=d.zname,checker=e.zname,broker=b.zname';
    commandtext:=commandtext+' ,a.channel_id,channel=dbo.fn_obj_desc1(11,a.channel_id),a.channel_dtl_id,channel_dtl=dbo.fn_obj_desc1(12,a.channel_dtl_id)';
    commandtext:=commandtext+' from tb_bill a';
    commandtext:=commandtext+' left join tb_staff b on a.broker_id=b.sta_id';
    commandtext:=commandtext+' left join (select mate_id,mate_name from tb_busimate where mate_type_id=1) c on a.dst_id=c.mate_id';
    commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
    commandtext:=commandtext+' left join tb_staff e on a.check_by=e.sta_id';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+' where a.bod_type_id=19 and a.bod_status_id in (1,2)';
    commandtext:=commandtext+'  and a.creat_dt>= '''+datetostr(dxdateedit1.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
    if Trim(dxLookupTreeView1.text)<>''
        then commandtext:=commandtext+' and dbo.fn_treeischild(b.district,'+dm.district.fieldbyname('rec_id').asstring+')=1';
    try
        setprogress(1);
        open;
        if bi=0 then last else locate('bod_id',bi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tsetrecaccount1.FormCreate(Sender: TObject);
begin
label1.caption:=self.caption;
//label1.caption:=ent_title+' '+self.caption;
dxDateEdit1.date:=date;
dxDateEdit4.date:=date;
N3.Visible:=False;
setunupdatestatus;
end;

procedure Tsetrecaccount1.DSbillDataChange(Sender: TObject; Field: TField);
begin
if field=nil then
begin
    with cdsbill do
    begin
        label23.caption:=formatfloat('[##,###]',recordcount);
//        dxDBedit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBButtonEdit3.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBDateEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        dxDBCalcEdit1.enabled:=(active) and (recordcount>0) and (fieldbyname('creat_by').asinteger=curuserid);
        speedbutton2.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        speedbutton6.enabled:=(state=dsbrowse) and (active) and (recordcount>0)
            and (fieldbyname('bod_status_id').asinteger=2);
        gifimage1.visible:=(fieldbyname('bod_status_id').asinteger=1);
        if state=dsbrowse then setunupdatestatus;
        if dxdbcalcedit1.text='' then label15.caption:='' else label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
    end;
    // 无论 pagecontrol 状态，控制 未审核不可打印
end;
end;

procedure Tsetrecaccount1.DSbillStateChange(Sender: TObject);
begin
with cdsbill do
    if state in [dsinsert,dsedit] then setupdatestatus;
end;

procedure Tsetrecaccount1.SpeedButton2Click(Sender: TObject);
begin
with cdsbill do
begin
    if fieldbyname('broker_id').asstring='' then raise Exception.Create('请选择业务员');
//    if fieldbyname('relative_id').asstring='' then  raise Exception.Create('请选择结算科目');
    if fieldbyname('carry_dt').isnull then raise Exception.Create('无发生日期，不可审核');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 c.district from tb_staff c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.sta_id=a.broker_id) b';
//    commandtext:='select top 1 1 from tb_settlelist a,(select top 1 district from tb_busimate c,tb_bill a where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and c.mate_id=a.dst_id) b';
    commandtext:=commandtext+' where a.settled=1 and a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
edit1.Text:=commandtext;
    open;
    if recordcount>0 then raise Exception.Create('本单业务员所在区域发生日期年月已结账，不可审核');
end;
if MessageBox(0,'确定本单审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton2.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock19 19,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetrecaccount1.SpeedButton3Click(Sender: TObject);
//var s: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_bill a,tb_staff c where a.bod_id='+cdsbill.fieldbyname('bod_id').asstring+' and a.broker_id=c.sta_id) b';
    commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
    commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
    open;
    if recordcount>0 then raise Exception.Create('本单业务员所在区域与年月已结账，不可反审核');
end;
if MessageBox(0,'确定反审核本单','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
screen.cursor:=crhourglass;
speedbutton3.enabled:=false; // 保证后续语句出现异常也不可 再按
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_updatestock19 -19,'+cdsbill.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
    execute;
    close;
end;
refreshmyrecord(cdsbill,dm.Refreshcds,0,'bod_id',cdsbill.fieldbyname('bod_id').asinteger);
setunupdatestatus;
screen.cursor:=crdefault;
end;

procedure Tsetrecaccount1.cdsbillBeforeEdit(DataSet: TDataSet);
begin
if cdsbill.fieldbyname('bod_status_id').asinteger=1
    then raise Exception.Create('本单已审核，不可更改。'+#13#10+'如需更改，请先反审核');
end;

procedure Tsetrecaccount1.cdsbillCalcFields(DataSet: TDataSet);
begin
with cdsbill do
begin
    case fieldbyname('bod_status_id').asinteger of
        0:  fieldbyname('cbod_status').asstring:='制单';
        1:  fieldbyname('cbod_status').asstring:='审核';
        2:  fieldbyname('cbod_status').asstring:='待审核';
    end;
    fieldbyname('Cmed').asstring:=fieldbyname('material_code').asstring+' '+fieldbyname('med_name').asstring+' '+fieldbyname('specifi').asstring+' '+fieldbyname('pdt_place').asstring;
end;
end;

procedure Tsetrecaccount1.dxDBCalcEdit1Change(Sender: TObject);
begin
if dxdbcalcedit1.text<>'' then label15.caption:=saydigit(strtofloat(dxdbcalcedit1.text));
end;

procedure Tsetrecaccount1.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxdbgrid1cbod_status.Index] ='制单') then Acolor := $00A3FEFC;    // 黄色
if (AColumn = dxDBGrid1cbod_status) then
begin
    if (ANode.Strings[dxDBGrid1cbod_status.Index] = '审核') then
    begin
        AColor := clgreen;  //clLime;
        AFont.Color := clwhite;  //clBlack;
    end;
end;
end;

procedure Tsetrecaccount1.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.activepage=TabSheet2 then DSbillDataChange(PageControl1,nil);
end;

procedure Tsetrecaccount1.N2Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if ((sender=N1) and (cdsbill.fieldbyname('bod_status_id').asinteger=2))
     or ((sender=N2) and (cdsbill.fieldbyname('bod_status_id').asinteger=1)) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
//    if sender=N1 then showmessage('N1');
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
//    	showmessage('i:'+inttostr(i)+' dxDBGrid1.SelectedNodes[i].Values[j]:'+inttostr(dxDBGrid1.SelectedNodes[i].Values[j]));
        if ((sender=N1) and (dxDBGrid1.SelectedNodes[i].Values[j]=2))
         or ((sender=N2) and (dxDBGrid1.SelectedNodes[i].Values[j]=1)) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效');
if sender= N1 then
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_bill a,tb_staff c where a.bod_id in ('+t+') and a.broker_id=c.sta_id) b';
        commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
        commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
        commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
        open;
        if recordcount>0 then raise Exception.Create('所选单据中业务员所在区域与年月已结账，不可审核');
    end;
    if MessageBox(0,'确定所选单据审核通过','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;
if sender= N2 then
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 1 1 from tB_settlelist a,(select top 1 district from tb_bill a,tb_staff c where a.bod_id in ('+t+') and a.broker_id=c.sta_id) b';
        commandtext:=commandtext+' where a.settled=1 and year=year('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
        commandtext:=commandtext+' and month=month('''+cdsbill.fieldbyname('carry_dt').asstring+''')';
        commandtext:=commandtext+' and dbo.fn_treeischild(b.district,a.district_id)=1';
        open;
        if recordcount>0 then raise Exception.Create('所选单据中业务员所在区域与年月已结账，不可反审核');
    end;
{
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select top 5 bod_cd from tb_bill where bod_id in ('+t+') and creat_dt<cast(convert(char(10),getdate(),20) as datetime)';
        open;
        if recordcount>0 then
        begin
            first;
            s:= '下列单据非本日单据，不可反审' + #13#10 + '-------------------------';
            while not eof do
            begin
                s:=s+#13#10+fieldbyname('bod_cd').asstring;
                next;
            end;
            MessageBox(0,pchar(s),'请注意',MB_OK+MB_IconError);
            abort;
        end;
    end;
}
    if MessageBox(0,'确定反审核所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='select bod_id from tb_bill where bod_id in ('+t+')';
    open;
    if recordcount=0 then abort;
    first;
    try
        try
            while not eof do
            begin
                with pubqry do
                begin
                    if active then close;
                    if sender= N1 then commandtext:='sp_updatestock19 19,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    if sender= N2 then commandtext:='sp_updatestock19 -19,'+ dm.pubqry.fieldbyname('bod_id').asstring+','+inttostr(curuserid);
                    execute;
                end;
                next;
            end;
            SpeedButton5Click(nil); //bill.refresh;
            setunupdatestatus;
            if sender= N1 then MessageBox(0,pchar('所选单据已成功审核'),'请注意',MB_OK+MB_ICONInformation);
            if sender= N2 then MessageBox(0,pchar('所选单据已成功反审核'),'请注意',MB_OK+MB_ICONInformation);
        except
            if sender= N1 then MessageBox(0,'单据审核失败','请注意',MB_OK+MB_ICONERROR);
            if sender= N2 then MessageBox(0,'单据反审核失败','请注意',MB_OK+MB_ICONERROR);
        end;
    finally
        if active then close;
        setprogress(0);
    end;
end;
end;

procedure Tsetrecaccount1.N3Click(Sender: TObject);
var mi,j,k,l,i : integer;
    s,t : string;
begin
if (cdsbill.active=false) or (cdsbill.recordcount=0) then exit;
s:=''+ #13#10;  t:='';
mi:=0;
if dxDBGrid1.SelectedCount<2 then
begin
    if (cdsbill.fieldbyname('bod_status_id').asinteger=0) then
    begin
        s:= s + #13#10 + cdsbill.fieldbyname('bod_cd').asstring;
        t:= t + cdsbill.fieldbyname('bod_id').asstring;
        mi:=1;
    end;
end
else
begin
    j := dxDBGrid1.ColumnByFieldName('bod_status_id').Index;
    k := dxDBGrid1.ColumnByFieldName('bod_cd').Index;
    l := dxDBGrid1.ColumnByFieldName('bod_id').Index;
    for i:= 0 to dxDBGrid1.SelectedCount - 1 do
    begin
        if (dxDBGrid1.SelectedNodes[i].Values[j]=0) then
        begin
            s:= s + #13#10 + dxDBGrid1.SelectedNodes[i].Strings[k];
            t:= t + ','+dxDBGrid1.SelectedNodes[i].Strings[l];
            mi := mi+1;
        end;
    end;
    delete(t,1,1);  //删除 t 首字符 ','
end;
if mi=0 then raise Exception.Create('选择单据无效(只可删除制单状态单据)');
if MessageBox(0,'确定删除所选单据','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
setprogress(1);
//SpeedButton2.enabled:=false; // 避免连续按两次
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_type_id=bod_type_id+100,delete_by='+inttostr(curuserid)+',delete_dt=getdate() where bod_id in ('+t+')';
    execute;
end;
SpeedButton5Click(nil);  //刷新
end;

procedure Tsetrecaccount1.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if not (cdsbill.state in [dsinsert,dsedit]) then cdsbill.edit;
    if showmodal= mrOK then
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        cdsbill.fieldbyname('broker').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        cdsbill.fieldbyname('broker_id').asinteger:= 0;
        cdsbill.fieldbyname('broker').asstring:= '';
    end;
end;
end;

procedure Tsetrecaccount1.SpeedButton6Click(Sender: TObject);
begin
if MessageBox(0,'确定将本单送回制单人','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_status_id=0 where bod_id='+cdsbill.fieldbyname('bod_id').asstring;
    execute;
    close;
end;
cdsbill.delete; // 因送回后，cdsbill中不应包含此记录，故从cdsbill中delete，物理记录并未删除
setunupdatestatus;
setprogress(0);
end;

procedure Tsetrecaccount1.dxLookupTreeView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_delete then dxLookupTreeView1.text:='';
end;

procedure Tsetrecaccount1.N5Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

end.
