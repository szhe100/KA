unit Unit20c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, StdCtrls, dxdbtrel, dxEditor, dxEdLib, ExtCtrls, dxCntner,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DB, DBClient, Menus,
  ImgList, ADODB, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, Comobj, mycds;

type
  Tsetmatestock = class(TForm)
    DSstockqry: TDataSource;
    StyleController: TdxEditStyleController;
    ADOQuery1: TADOQuery;
    ImageList: TImageList;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    stockqry: TClientDataSet;
    stockqryrec_id: TAutoIncField;
    stockqrymate_id: TIntegerField;
    stockqrymed_code: TStringField;
    stockqrymed_name: TStringField;
    stockqrychm_name: TStringField;
    stockqryspecifi: TStringField;
    stockqrypdt_place: TStringField;
    stockqrymed_unit: TStringField;
    stockqrymed_type: TStringField;
    stockqryqtyperpack: TBCDField;
    stockqryqty: TBCDField;
    stockqrymed_id: TAutoIncField;
    stockqrymate_name: TStringField;
    Images: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1cdistrict: TdxDBGridColumn;
    dxDBGrid1mate_name: TdxDBGridColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1chm_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1qty: TdxDBGridColumn;
    dxDBGrid1qty1: TdxDBGridColumn;
    dxDBGrid1Cqtydiff: TdxDBGridMaskColumn;
    TabSheet2: TTabSheet;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Label19: TLabel;
    dxEdit2: TdxEdit;
    SpeedButton6: TSpeedButton;
    Shape4: TShape;
    Label2: TLabel;
    Label4: TLabel;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1qty: TBCDField;
    ADOQuery1qty1: TBCDField;
    ADOQuery1occur_dt: TDateTimeField;
    ADOQuery1creat_dt: TDateTimeField;
    ADOQuery1creat_by: TIntegerField;
    stockqryqty1: TBCDField;
    stockqryCqtydiff: TFloatField;
    stockqrycdistrict: TStringField;
    Label5: TLabel;
    Label13: TLabel;
    dxDateEdit4: TdxDateEdit;
    dxDateEdit3: TdxDateEdit;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2cdistrict: TdxDBGridColumn;
    dxDBGrid2mate_name: TdxDBGridColumn;
    dxDBGrid2med_code: TdxDBGridMaskColumn;
    dxDBGrid2med_name: TdxDBGridMaskColumn;
    dxDBGrid2chm_name: TdxDBGridMaskColumn;
    dxDBGrid2specifi: TdxDBGridMaskColumn;
    dxDBGrid2pdt_place: TdxDBGridColumn;
    dxDBGrid2med_unit: TdxDBGridMaskColumn;
    dxDBGrid2qty: TdxDBGridColumn;
    dxDBGrid2occur_dt: TdxDBGridColumn;
    dxDBGrid2creater: TdxDBGridMaskColumn;
    log: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    DSlog: TDataSource;
    logcreat_by: TIntegerField;
    logcreat_dt: TDateTimeField;
    logcreater: TStringField;
    dxDBGrid2creat_dt: TdxDBGridColumn;
    logoccur_dt: TDateTimeField;
    logbat_cd: TStringField;
    dxDBGrid2bat_cd: TdxDBGridColumn;
    stockqrybat_cd: TStringField;
    RadioGroup2: TRadioGroup;
    stockqryoccur_dt: TDateTimeField;
    stockqryfyear: TIntegerField;
    stockqryfmonth: TIntegerField;
    dxDBGrid1fyear: TdxDBGridColumn;
    dxDBGrid1fmonth: TdxDBGridColumn;
    stockqryqty2: TBCDField;
    dxSpinEdit1: TdxSpinEdit;
    Label8: TLabel;
    dxSpinEdit2: TdxSpinEdit;
    Label9: TLabel;
    RadioGroup3: TRadioGroup;
    stockqryadj_qty1: TBCDField;
    stockqryadj_qty2: TBCDField;
    stockqrydesc1: TStringField;
    stockqrydesc2: TStringField;
    dxDBGrid1adj_qty2: TdxDBGridColumn;
    dxDBGrid1desc1: TdxDBGridColumn;
    dxDBGrid1desc2: TdxDBGridColumn;
    stockqryadj_diff: TBCDField;
    dxDBGrid1Cadj_diff: TdxDBGridColumn;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    RadioGroup4: TRadioGroup;
    dxPickEdit1: TdxPickEdit;
    Label3: TLabel;
    Shape2: TShape;
    dxButtonEdit2: TdxButtonEdit;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Edit2: TEdit;
    Label7: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    dxDBGrid2rec_id: TdxDBGridColumn;
    Edit3: TEdit;
    stockqryCadj_bal1: TBCDField;
    stockqryCadj_bal2: TBCDField;
    dxDBGrid1Cadj_bal1: TdxDBGridColumn;
    dxDBGrid1Cadj_bal2: TdxDBGridColumn;
    stockqryCadj_diff: TBCDField;
    dxDBGrid1adj_qty1: TdxDBGridColumn;
    stockqrymqty1: TBCDField;
    stockqrymqty2: TBCDField;
    stockqrymqty3: TBCDField;
    stockqrymqty4: TBCDField;
    stockqryCmbal0: TBCDField;
    dxDBGrid1Cmbal0: TdxDBGridColumn;
    dxDBGrid1mqty1: TdxDBGridColumn;
    dxDBGrid1mqty2: TdxDBGridColumn;
    dxDBGrid1mqty3: TdxDBGridColumn;
    dxDBGrid1mqty4: TdxDBGridColumn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxEdit2Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DSstockqryDataChange(Sender: TObject; Field: TField);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure stockqryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure stockqryAfterPost(DataSet: TDataSet);
    procedure logBeforeDelete(DataSet: TDataSet);
    procedure logAfterDelete(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setmatestock: Tsetmatestock;

implementation

uses datamodu, Unit16a, Unit7;

{$R *.DFM}

procedure Tsetmatestock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
with stockqry do
    if active=true then close;
with log do
    if active=true then close;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tsetmatestock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tsetmatestock.SpeedButton3Click(Sender: TObject);
var mi, my,mm : integer;
	dt1,dt2: Tdatetime;
begin

if PageControl1.ActivePage=TabSheet1 then
begin
    if (dxSpinEdit1.Value=0) or (dxSpinEdit2.Value=0) then raise Exception.Create('请选择正确的年月');
    my:= Trunc(dxSpinEdit1.Value);
    mm:= Trunc(dxSpinEdit2.Value);
    dt1:=strtodate(inttostr(my)+'-'+inttostr(mm)+'-1');
    if mm=12 then
    begin
        inc(my); mm:=1;
    end
    else inc(mm);
    dt2:=strtodate(inttostr(my)+'-'+inttostr(mm)+'-1');
//    showmessage(datetimetostr(dt1)+'  '+datetimetostr(dt2));
    my:= Trunc(dxSpinEdit1.Value);
    mm:= Trunc(dxSpinEdit2.Value);
	setprogress(1);
    with dm.pubqry do
    begin
        if active=true then close;
        if RadioGroup2.ItemIndex=0 then
        begin
            commandtext:=' insert into tb_matestock_desc (type_id,fyear,fmonth,comp_id,mate_id,med_id,bat_cd)';
            commandtext:=commandtext+' select distinct type_id=1,fyear='+inttostr(my)+',fmonth='+inttostr(mm)+',comp_id,mate_id,med_id,bat_cd='''' from tb_medstock_log a';
            commandtext:=commandtext+' where comp_id='+inttostr(compid)+' and log_dt>='''+datetostr(dt1)+''' and log_dt<'''+datetostr(dt2)+'''';
            commandtext:=commandtext+'  and not exists (select 1 from tb_matestock_desc b where b.type_id=1 and b.fmonth='+inttostr(mm)+' and a.comp_id=b.comp_id and a.mate_id=b.mate_id and a.med_id=b.med_id)';
        end
        else
        begin
            commandtext:=' insert into tb_matestock_desc (type_id,fyear,fmonth,comp_id,mate_id,med_id,bat_cd)';
            commandtext:=commandtext+' select distinct type_id=2,fyear='+inttostr(my)+',fmonth='+inttostr(mm)+',comp_id,mate_id,med_id,isnull(bat_cd,'''') from tb_medstock_log a';
            commandtext:=commandtext+' where comp_id='+inttostr(compid)+' and log_dt>='''+datetostr(dt1)+''' and log_dt<'''+datetostr(dt2)+'''';
            commandtext:=commandtext+'  and not exists (select 1 from tb_matestock_desc b where b.type_id=2 and b.fmonth='+inttostr(mm)+' and a.comp_id=b.comp_id and a.mate_id=b.mate_id and a.med_id=b.med_id and b.bat_cd=isnull(a.bat_cd,''''))';
        end;
edit3.text:=commandtext;
        execute;
    end;
//    if dxdateedit1.date>dxdateedit2.date then raise Exception.Create('日期设置错误');
//exit;
    with stockqry do
    begin
        if active=true then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        if RadioGroup2.ItemIndex=0 then
        begin
            commandtext:='declare @dt1 datetime,@dt2 datetime';
            commandtext:=commandtext+' select top 1 @dt1=log_dt from tb_medstock_log where log_dt<'''+datetimetostr(dt1)+''' order by log_dt desc';
            commandtext:=commandtext+' select top 1 @dt2=log_dt from tb_medstock_log where log_dt<'''+datetimetostr(dt2)+''' order by log_dt desc';
            commandtext:=commandtext+' select h.*,a.mate_id,c.mate_name,a.med_id,bat_cd='''',a.qty,d.occur_dt,fyear=year(d.occur_dt),fmonth=month(d.occur_dt),';
            commandtext:=commandtext+' qty1=cast(d.qty as decimal(15,2)),d.mqty1,d.mqty2,d.mqty3,d.mqty4,qty2=cast(0 as decimal(15,0)),'; //qty2=cast(e.qty as decimal(15,0)),
            commandtext:=commandtext+' c.cdistrict,b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,b.med_unit,med_type='''',qtyperpack,qtyperbox';
            commandtext:=commandtext+' from tb_matestock_desc h';
            case RadioGroup3.ItemIndex of
            	0:	begin
                		commandtext:=commandtext+' inner join (select rec_id=min(rec_id),occur_dt=@dt2,mate_id,med_id,qty=sum(qty),mqty1=sum(isnull(mqty1,0)+isnull(mqty1a,0)),';
                        commandtext:=commandtext+'   mqty2=sum(isnull(mqty2,0)+isnull(mqty2a,0)),mqty3=sum(isnull(mqty3,0)+isnull(mqty3a,0)),mqty4=sum(isnull(mqty4,0)+isnull(mqty4a,0))';
                		commandtext:=commandtext+' from tb_medstock_log where comp_id='+inttostr(compid)+' and log_dt=@dt2 and cate_id=1 group by mate_id,med_id) d on h.mate_id=d.mate_id and h.med_id=d.med_id'; //  and cate_id=1:商业 on a.mate_id=d.mate_id and a.med_id=d.med_id';
                	end;
            	1:	commandtext:=commandtext+' inner join (select rec_id=min(rec_id),occur_dt=@dt2,mate_id,med_id,qty=sum(qty),mqty1=sum(mqty1a),mqty2=sum(mqty2a),mqty3=sum(mqty3a),mqty4=sum(mqty4a) from tb_medstock_log where comp_id='+inttostr(compid)+' and log_dt=@dt2 and cate_id=1 group by mate_id,med_id) d on h.mate_id=d.mate_id and h.med_id=d.med_id'; //  and cate_id=1:商业 on a.mate_id=d.mate_id and a.med_id=d.med_id';
            	2:	commandtext:=commandtext+' inner join (select rec_id=min(rec_id),occur_dt=@dt2,mate_id,med_id,qty=sum(qty),mqty1=sum(mqty1),mqty2=sum(mqty2),mqty3=sum(mqty3),mqty4=sum(mqty4) from tb_medstock_log where comp_id='+inttostr(compid)+' and log_dt=@dt2 and cate_id=1 group by mate_id,med_id) d on h.mate_id=d.mate_id and h.med_id=d.med_id'; //  and cate_id=1:商业 on a.mate_id=d.mate_id and a.med_id=d.med_id';
            end;
            commandtext:=commandtext+' left join (select rec_id=min(rec_id),mate_id,med_id,qty=sum(cast(qty as decimal(15,2))) from tb_matestock where occur_dt>= '''+datetostr(dt1)+''' and occur_dt< '''+datetostr(dt2)+''' group by mate_id,med_id) a on a.mate_id=d.mate_id and a.med_id=d.med_id';  //occur_dt,
            commandtext:=commandtext+' inner join tb_medicine b on d.med_id=b.med_id';
            commandtext:=commandtext+' inner join tb_busimate c on d.mate_id=c.mate_id and c.mate_type_id=2';
            commandtext:=commandtext+' where h.comp_id='+inttostr(compid)+' and h.type_id=1 and h.fyear='+inttostr(my)+' and h.fmonth='+inttostr(mm);
            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and d.med_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and d.mate_id='+inttostr(dxButtonEdit2.tag);
            if Trim(dxedit2.text)<>'' then
            begin
                case radiogroup1.itemindex of
                    0:  commandtext:=commandtext+' and b.qry_code ';
                    1:  commandtext:=commandtext+' and b.med_name ';
                    2:  commandtext:=commandtext+' and b.pdt_place ';
                    3:  commandtext:=commandtext+' and b.med_code ';
                end;
                commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
            end;
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and d.med_id=t.med_id)';
        end
        else
        begin
            commandtext:='declare @dt datetime select top 1 @dt=log_dt from tb_medstock_log where log_dt<'''+datetimetostr(dt2)+''' order by log_dt desc';
            commandtext:=commandtext+' select h.*,a.mate_id,c.mate_name,a.med_id,d.bat_cd,a.qty,d.occur_dt,fyear=year(d.occur_dt),fmonth=month(d.occur_dt),qty1=cast(d.qty as decimal(15,4)),qty2=cast(0 as decimal(15,0)),';
            commandtext:=commandtext+' c.cdistrict,b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,b.med_unit,med_type='''',qtyperpack,qtyperbox';
            commandtext:=commandtext+' from tb_matestock_desc h';
            commandtext:=commandtext+'  inner join (select rec_id=min(rec_id),occur_dt=@dt,mate_id,med_id,bat_cd,qty=sum(qty) from tb_medstock_log where comp_id='+inttostr(compid)+' and log_dt=@dt group by mate_id,med_id,bat_cd) d on d.mate_id=h.mate_id and d.med_id=h.med_id and h.bat_cd=isnull(d.bat_cd,'''')'; // on a.mate_id=d.mate_id and a.med_id=d.med_id';
            commandtext:=commandtext+'  left join (select rec_id,occur_dt,mate_id,med_id,bat_cd,qty from tb_matestock where occur_dt>= '''+datetostr(dt1)+''' and occur_dt< '''+datetostr(dt2)+''') a on a.mate_id=h.mate_id and a.med_id=h.med_id and a.bat_cd=h.bat_cd';
            commandtext:=commandtext+'  inner join tb_medicine b on d.med_id=b.med_id';
            commandtext:=commandtext+'  inner join tb_busimate c on d.mate_id=c.mate_id and c.mate_type_id=2';
            commandtext:=commandtext+' where h.comp_id='+inttostr(compid)+' and h.type_id=2 and h.fyear='+inttostr(my)+' and h.fmonth='+inttostr(mm);
            if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and d.med_id='+inttostr(dxbuttonedit1.tag);
            if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and d.mate_id='+inttostr(dxButtonEdit2.tag);
            if Trim(dxedit2.text)<>'' then
            begin
                case radiogroup1.itemindex of
                    0:  commandtext:=commandtext+' and b.qry_code ';
                    1:  commandtext:=commandtext+' and b.med_name ';
                    2:  commandtext:=commandtext+' and b.pdt_place ';
                    3:  commandtext:=commandtext+' and b.med_code ';
                end;
                commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
            end;
            if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
            if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and d.med_id=t.med_id)';
        end;
edit1.text:=commandtext;
//exit;
        try
            setprogress(1);
            open;
            if mi>0 then locate('med_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
if PageControl1.ActivePage=TabSheet2 then
begin
    if dxdateedit3.date>dxdateedit4.date then raise Exception.Create('日期设置错误');
//showmessage(inttostr(dxPickEdit1.itemindex));
    with log do
    begin
        if active=true then
        begin
            mi:=fieldbyname('rec_id').asinteger;
            close;
        end
        else mi:=0;
        commandtext:='select a.rec_id,a.mate_id,c.mate_name,a.med_id,a.bat_cd,a.qty,a.qty1,a.occur_dt,a.creat_by,creater=d.zname,a.creat_dt,';
        commandtext:=commandtext+' cdistrict=dbo.fn_getdistrict(c.district),b.med_code,b.med_name,b.chm_name,b.specifi,b.pdt_place,med_unit=dbo.fn_obj_desc(b.unit_id),med_type=dbo.fn_med_type(b.med_id),qtyperpack,qtyperbox';
        commandtext:=commandtext+' from tb_matestock a';
        commandtext:=commandtext+' left join tb_medicine b on a.med_id=b.med_id';
        commandtext:=commandtext+' left join tb_busimate c on a.mate_id=c.mate_id';
        commandtext:=commandtext+' left join tb_staff d on a.creat_by=d.sta_id';
//        commandtext:=commandtext+' where a.occur_dt>= '''+datetostr(dxdateedit3.date)+''' and a.occur_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        if dxPickEdit1.itemindex=0
            then commandtext:=commandtext+' where a.creat_dt>= '''+datetostr(dxdateedit3.date)+''' and a.creat_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')'
            else commandtext:=commandtext+' where a.occur_dt>= '''+datetostr(dxdateedit3.date)+''' and a.occur_dt< dateadd(day,1,'''+datetostr(dxdateedit4.date)+''')';
        
        if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
        if Trim(dxbuttonedit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxbuttonedit1.tag);
        if Trim(dxedit2.text)<>'' then
        begin
            case radiogroup1.itemindex of
                0:  commandtext:=commandtext+' and b.qry_code ';
                1:  commandtext:=commandtext+' and b.med_name ';
                2:  commandtext:=commandtext+' and b.pdt_place ';
                3:  commandtext:=commandtext+' and b.med_code ';
            end;
            commandtext:=commandtext+' like ''%'+trim(dxedit2.text)+'%''';
        end;
//        if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and dbo.fn_ischildnode(c.district,t.dist_id)=1)';
//        if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
edit2.text:=commandtext;
        try
            setprogress(1);
            open;
            if mi>0 then locate('med_id',mi,[]);
        finally
            setprogress(0);
        end;
    end;
end;
end;

procedure Tsetmatestock.dxEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then // <Enter> key is pressed
begin
    key:=0;
    SpeedButton3Click(nil);
    dxedit2.SelectAll;
    dxedit2.SetFocus;
end;
end;

procedure Tsetmatestock.SpeedButton1Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag);
end;

procedure Tsetmatestock.dxEdit2Click(Sender: TObject);
begin
dxedit2.SelectAll;
dxedit2.SetFocus;
end;

procedure Tsetmatestock.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbusimate2 do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag:= query1.fieldbyname('mate_id').asinteger;
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag:=0;
    end;
end;
end;

procedure Tsetmatestock.DSstockqryDataChange(Sender: TObject; Field: TField);
begin
with (Sender as TDataSource).DataSet do
begin
    speedbutton1.enabled:= (active=true) and (recordcount>0);
end;
end;

procedure Tsetmatestock.dxButtonEdit1ButtonClick(Sender: TObject;
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

procedure Tsetmatestock.FormActivate(Sender: TObject);
begin
//with dm.district do
//    if active=false then open;
end;

procedure Tsetmatestock.FormCreate(Sender: TObject);
var year,month,day: word;
begin
decodedate(srv_date,year,month,day);
dxSpinEdit1.value:=year;
dxSpinEdit2.value:=month;

dxdateedit1.date:=dt_30;
dxdateedit2.date:=dt0;
dxdateedit3.date:=dt0;
dxdateedit4.date:=dt0;
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
dxDBGrid2.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid2.ini');//加载
end;

procedure Tsetmatestock.N3Click(Sender: TObject);
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

procedure Tsetmatestock.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmatestock.N2Click(Sender: TObject);
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

procedure Tsetmatestock.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tsetmatestock.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 1 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tsetmatestock.SpeedButton6Click(Sender: TObject);
var
    XL,Sheet: Variant;
    SFileName,serror,sb: string;
    J,mid,id1,id2 : integer;
    qty: real;
    dt: TDatetime;
begin
    XL := CreateOleObject('Excel.Application');  //uses Comobj
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
//导入Excel文件生成单据(格式:1商业公司标准名称id1,2商业公司药品编码id2,3库存日期dt,4月期末库存数量)
    if sheet.cells[j,1].text='' then raise Exception.Create('本文件无可导入数据');
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司药品数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_linkword where zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司药品数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无库存日期数据'
            else
            begin
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,3].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 库存日期数据有误'
                end;
            end;
            if sheet.cells[j,4].text<>'' then
            begin
                try
                    qty:= strtofloat(cleardeli(sheet.cells[j,4].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 库存数量数据有误'
                end;
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

//导入Excel文件生成单据(格式:1商业公司标准名称id1,2商业公司药品编码id2,3库存日期dt,4月期末库存数量)
    setprogress(1);
    j:=2;  //第2行开始 每行一单
    while (sheet.cells[j,1].text<>'') do
    begin
        with dm.pubqry do
        begin
            if sheet.cells[j,1].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 mate_id from tb_busimate where mate_type_id=2 and mate_name='''+sheet.cells[j,1].text+'''';
                open;
                if recordcount>0 then id1:=fieldbyname('mate_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司数据有误';
            end;
            if sheet.cells[j,2].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无商业公司药品数据'
            else
            begin
                if active=true then close;
                commandtext:='select top 1 med_id from tb_linkword where zdesc='''+sheet.cells[j,2].text+'''';
                open;
                if recordcount>0 then id2:=fieldbyname('med_id').asinteger else serror:=serror+#13#10+'第'+inttostr(j)+'行 商业公司药品数据有误';
            end;
            if sheet.cells[j,3].text='' then serror:=serror+#13#10+'第'+inttostr(j)+'行 无库存日期数据'
            else
            begin
                try
                    dt:=strtodatetime(Trim(sheet.cells[j,3].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 库存日期数据有误'
                end;
            end;
            if sheet.cells[j,4].text='' then qty:=0
            else
            begin
                try
                    qty:= strtofloat(cleardeli(sheet.cells[j,4].text));
                except
                    serror:=serror+#13#10+'第'+inttostr(j)+'行 库存数量数据有误'
                end;
            end;
//导入Excel文件生成单据(格式:1商业公司标准名称id1,2商业公司药品编码id2,3库存日期dt,4月期末库存数量)
            if active=true then close;
            commandtext:='if exists (select 1 from tb_matestock where mate_id='+inttostr(id1)+' and med_id='+inttostr(id2)+' and bat_cd='''+sheet.cells[j,5].text+'''';
            commandtext:=commandtext+' and occur_dt='''+datetimetostr(dt)+''')';
            commandtext:=commandtext+' update tb_matestock set qty='+floattostr(qty);
            commandtext:=commandtext+' where mate_id='+inttostr(id1)+' and med_id='+inttostr(id2)+' and bat_cd='''+sheet.cells[j,5].text+''' and occur_dt='''+datetimetostr(dt)+'''';

            commandtext:=commandtext+' else insert into tb_matestock (mate_id,med_id,bat_cd,occur_dt,qty,creat_by,creat_dt)';
            commandtext:=commandtext+' values ('+inttostr(id1)+','+inttostr(id2)+','''','''+datetimetostr(dt)+''','+floattostr(qty)+','+inttostr(curuserid)+',getdate())';
//            commandtext:=commandtext+' values ('+inttostr(id1)+','+inttostr(id2)+','''+sheet.cells[j,5].text+''','''+datetimetostr(dt)+''','+floattostr(qty)+','+inttostr(curuserid)+',getdate())';
//edit2.text:=commandtext;
            execute;
        end;
        inc(j);
    end;
    SpeedButton3Click(nil);//refresh
    setprogress(0);
    XL.Quit;
    MessageBox(0,pchar(SFileName+'已成功导入'),'请注意',MB_OK+MB_ICONInformation);
end;

procedure Tsetmatestock.stockqryCalcFields(DataSet: TDataSet);
begin
with stockqry do
begin
    fieldbyname('Cmbal0').asfloat:=fieldbyname('qty1').asfloat-fieldbyname('mqty1').asfloat+fieldbyname('mqty2').asfloat-fieldbyname('mqty3').asfloat-fieldbyname('mqty4').asfloat;
    fieldbyname('cqtydiff').asfloat:=fieldbyname('qty').asfloat-fieldbyname('qty1').asfloat;
    fieldbyname('cadj_bal1').asfloat:=fieldbyname('qty').asfloat+fieldbyname('adj_qty1').asfloat;
    fieldbyname('cadj_bal2').asfloat:=fieldbyname('qty1').asfloat+fieldbyname('adj_qty2').asfloat;
    fieldbyname('Cadj_diff').asfloat:=fieldbyname('cadj_bal1').asfloat-fieldbyname('cadj_bal2').asfloat;
end;
end;

procedure Tsetmatestock.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (AColumn = dxDBGrid1Cqtydiff) then
begin
    if (ANode.Values[dxDBGrid1Cqtydiff.Index] <>0) then
    begin
//        AColor := clred;
//        AFont.Color := clwhite;
		AFont.Color := clred;
    end;
end;
end;

procedure Tsetmatestock.stockqryAfterPost(DataSet: TDataSet);
begin
if stockqry.ChangeCount>0 then myupdaterefresh(stockqry,'tb_matestock_desc','rec_id','');
end;

procedure Tsetmatestock.logBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,pchar('确定删除本记录'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tsetmatestock.logAfterDelete(DataSet: TDataSet);
begin
if log.ChangeCount>0 then myupdaterefresh(log,'tb_matestock','rec_id','');
end;

procedure Tsetmatestock.MenuItem1Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
ClickedOK := InputQuery('查询关键字', '请输入', NewString);
if ClickedOK then
    with dxdbgrid2 do
    begin
        StartSearch(GetAbsoluteColumnIndex(FocusedColumn),NewString);
        EndSearch;
    end;
end;

procedure Tsetmatestock.MenuItem3Click(Sender: TObject);
begin
with dxdbgrid2 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tsetmatestock.MenuItem4Click(Sender: TObject);
var i,mi: integer;
begin
setprogress(1);
with dxdbgrid2 do
begin
    mi:=ColumnCount-1;
    for i:=0 to mi do Columns[i].Visible:=True;
end;
dxDBGrid2rec_id.Visible:=false;
setprogress(0);
end;

procedure Tsetmatestock.MenuItem6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini')
    then dxDBGrid2.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid20.ini');//加载
dxDBGrid2rec_id.Visible:=false;
end;

procedure Tsetmatestock.N7Click(Sender: TObject);
var i,mi,mateid,agentid,bodid,bodtypeid,bodtypeid1,l,m,n: integer;
    r,d,f0,f1,f2,f3,f4: integer;
    s,s1,s2: string;
    mcd: string[20];
    mamt:real;
begin
if (log.active=false) or (log.recordcount=0) then exit;
s:=#13#10+ '--------------------------------------------';
s1:='';s2:='';
mi:=0;   mamt:=0;
if dxDBGrid2.SelectedCount<2 then
begin
	s1:=','+ log.fieldbyname('rec_id').asstring;
    mi:=1;
end
else
begin
    d := dxDBGrid2.ColumnByFieldName('rec_id').Index;
    for i:= 0 to dxDBGrid2.SelectedCount - 1 do
    begin
		s1:= s1 +','+ dxDBGrid2.SelectedNodes[i].Strings[d];  // 记录 rec_id 字符串
		mi := mi+1;
    end;
    if s1>'' then delete(s1,1,1);  //删除 首字符 ','
end;
if mi=0 then raise Exception.Create('无可删除记录');

if messagedlg('确定删除所选记录',mtconfirmation,[mbyes,mbno],0,)<>mryes then abort;

with dm.pubqry do
begin
    if active=true then close;
    commandtext:='delete from tb_matestock where rec_id in ('+s1+')';
    execute;
    close;
end;
SpeedButton3Click(nil);
//setprogress(0);
//MessageBox(0,pchar(s),'请注意',MB_OK+MB_ICONInformation);
end;

end.
