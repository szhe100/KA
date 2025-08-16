unit Unit13a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds;

type
  Tqrybrokermed = class(TForm)
    SpeedButton4: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Shape5: TShape;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    brokermed: TClientDataSet;
    DSbrokermed: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    dxDBGrid1med_code: TdxDBGridMaskColumn;
    dxDBGrid1med_name: TdxDBGridMaskColumn;
    dxDBGrid1specifi: TdxDBGridMaskColumn;
    dxDBGrid1pdt_place: TdxDBGridMaskColumn;
    dxDBGrid1med_unit: TdxDBGridMaskColumn;
    dxDBGrid1med_type: TdxDBGridMaskColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    brokermedrec_id: TAutoIncField;
    brokermedsta_id: TIntegerField;
    brokermedmed_id: TIntegerField;
    brokermedcreat_by: TIntegerField;
    brokermedcreat_dt: TDateTimeField;
    brokermedmed_code: TStringField;
    brokermedmed_name: TStringField;
    brokermedspecifi: TStringField;
    brokermedpdt_place: TStringField;
    brokermedmed_unit: TStringField;
    brokermedmed_type: TStringField;
    brokermedqtyperpack: TBCDField;
    brokermedcreater: TStringField;
    dxDBGrid1rate: TdxDBGridColumn;
    dxEdit1: TdxEdit;
    Label2: TLabel;
    dxDBGrid1broker: TdxDBGridColumn;
    Shape2: TShape;
    Label3: TLabel;
    dxButtonEdit2: TdxButtonEdit;
    brokermedqty: TBCDField;
    brokermedbroker: TStringField;
    brokermedmate_name: TStringField;
    dxDBGrid1mate_name: TdxDBGridColumn;
    brokermedrate: TBCDField;
    Label4: TLabel;
    brokermedvalid: TBooleanField;
    dxDBGrid1valid: TdxDBGridCheckColumn;
    dxButtonEdit4: TdxButtonEdit;
    dxDBGrid1dist_name: TdxDBGridColumn;
    brokermeddist_name: TStringField;
    Shape3: TShape;
    Label6: TLabel;
    dxButtonEdit3: TdxButtonEdit;
    brokermedlead_id: TIntegerField;
    brokermedlead_name: TStringField;
    dxDBGrid1lead_name: TdxDBGridButtonColumn;
    dxCheckEdit2: TdxCheckEdit;
    brokermedrate0: TBCDField;
    dxCheckEdit1: TdxCheckEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ImageList: TImageList;
    RadioGroup1: TRadioGroup;
    dxLookupTreeView1: TdxLookupTreeView;
    brokermedstart_dt: TDateTimeField;
    dxDBGrid1start_dt: TdxDBGridColumn;
    dxDBGrid1rate0: TdxDBGridColumn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    brokermedCrate: TFloatField;
    dxDBGrid1Crate: TdxDBGridColumn;
    ADOQuery1checker: TStringField;
    ADOQuery1carryer: TStringField;
    brokermedchecker: TStringField;
    brokermedcarryer: TStringField;
    dxDBGrid1carryer: TdxDBGridColumn;
    dxDBGrid1checker: TdxDBGridColumn;
    brokermedbusi_type: TStringField;
    dxDBGrid1busi_type: TdxDBGridColumn;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSbrokermedDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure brokermedBeforeDelete(DataSet: TDataSet);
    procedure brokermedAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brokermedReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1lead_nameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure brokermedCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrybrokermed: Tqrybrokermed;

implementation

uses datamodu, Unit7, Unit16, Unit28, Unit28a;

{$R *.DFM}

procedure Tqrybrokermed.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickmedicine do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit1.text:=query1.fieldbyname('material_code').asstring+' '+query1.fieldbyname('med_name').asstring
           +' '+trim(query1.fieldbyname('specifi').asstring)+' '+trim(query1.fieldbyname('pdt_place').asstring)+' '+query1.fieldbyname('med_unit').asstring+' 件装:'+formatfloat('####',query1.fieldbyname('qtyperpack').asinteger);
        dxbuttonedit1.tag := query1.fieldbyname('med_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit1.text:='';
        dxbuttonedit1.tag :=0;
    end;
    speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxbuttonedit2.tag<>0) and (dxbuttonedit4.tag<>0);
end;
end;

procedure Tqrybrokermed.SpeedButton2Click(Sender: TObject);
begin
dm.Save1('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', self.caption+'1.xls', dxDBGrid1.SaveToXLS, self.tag)
end;

procedure Tqrybrokermed.DSbrokermedDataChange(Sender: TObject;
  Field: TField);
begin
speedbutton2.enabled:=(brokermed.active=true) and (brokermed.recordcount>0);
end;

procedure Tqrybrokermed.SpeedButton4Click(Sender: TObject);
var mi: integer;
begin
if dxButtonEdit3.tag=0 then raise Exception.Create('请选择业务主管');
if dxButtonEdit4.tag=0 then raise Exception.Create('请选择业务员');
if dxButtonEdit1.tag=0 then raise Exception.Create('请选择品种');
if dxButtonEdit2.tag=0 then raise Exception.Create('请选择客户');
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 1 from tb_brokermed where mate_id='+inttostr(dxbuttonedit2.tag)+' and med_id='+inttostr(dxbuttonedit1.tag);
    commandtext:=commandtext+' and valid=1 and sta_id<>' +inttostr(dxbuttonedit4.tag);
    open;
    if recordcount>0 then MessageBox(0,pchar('该品种在客户已有业务员经营'),'请注意',MB_OK+MB_ICONInformation);
end;
if MessageBox(0,'确定加入新的业务员经营品种及提成规则设置','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='insert into tb_brokermed (valid,lead_id,sta_id,mate_id,med_id,creat_by,creat_dt) values';
    commandtext:=commandtext+' (1,'+inttostr(dxbuttonedit3.tag)+','+inttostr(dxbuttonedit4.tag)+',';
    commandtext:=commandtext+  inttostr(dxbuttonedit2.tag)+','+inttostr(dxbuttonedit1.tag)+','+inttostr(curuserid)+',getdate())';
    commandtext:=commandtext+'select @@identity';
    open;
    mi:=fields[0].asinteger;
//    execute;
end;

with brokermed do
begin
    if active=true then refresh else open;
    if mi<>0 then locate('rec_id',mi,[]);
end;
end;

procedure Tqrybrokermed.brokermedBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本经营规则','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure Tqrybrokermed.brokermedAfterPost(DataSet: TDataSet);
begin
if brokermed.ChangeCount>0 then myupdaterefresh(brokermed,'tb_brokermed','rec_id','');
end;

procedure Tqrybrokermed.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with brokermed do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select a.*,lead_name=h.zname,b.med_code,b.med_name,b.specifi,b.pdt_place,med_unit=c.zdesc,b.qtyperpack,b.qtyperbox,';
    commandtext:=commandtext+' b.chm_name,med_type=dbo.fn_med_type(b.med_id),broker=d.zname,e.mate_name,busi_type=dbo.fn_custbusitype(e.busi_type_id),dist_name=dbo.fn_getdistrict(d.district),';
    commandtext:=commandtext+' creater=dbo.fn_staff_name(i.creat_by),checker=dbo.fn_staff_name(i.check_by),carryer=dbo.fn_staff_name(i.carry_by)';
    commandtext:=commandtext+' from tb_brokermed a,tb_medicine b,tb_object c,tb_staff d,tb_busimate e,tb_staff g,tb_staff h,';
	commandtext:=commandtext+'  (select b.dtl_id,a.creat_by,a.check_by,a.carry_by from tb_bill a,tb_bill_dtl b where a.bod_type_id=20 and a.bod_status_id=1 and a.comp_id='+inttostr(compid)+' and a.bod_id=b.bod_id) i';
    commandtext:=commandtext+' where a.comp_id='+inttostr(compid)+' and a.med_id=b.med_id and b.unit_id*=c.obj_id and a.sta_id=d.sta_id and a.mate_id=e.mate_id and a.lead_id*=h.sta_id';
    commandtext:=commandtext+'   and a.creat_by*=g.sta_id';
    commandtext:=commandtext+'   and a.dtl_id*=i.dtl_id';
    if Trim(dxButtonEdit3.text)<>'' then commandtext:=commandtext+' and a.lead_id='+inttostr(dxButtonEdit3.tag);
    if Trim(dxButtonEdit4.text)<>'' then commandtext:=commandtext+' and a.sta_id='+inttostr(dxButtonEdit4.tag);
    if Trim(dxButtonEdit2.text)<>'' then commandtext:=commandtext+' and a.mate_id='+inttostr(dxButtonEdit2.tag);
    if Trim(dxButtonEdit1.text)<>'' then commandtext:=commandtext+' and a.med_id='+inttostr(dxButtonEdit1.tag);
    if Trim(dxEdit1.text)<>'' then commandtext:=commandtext+' and b.qry_code like ''%'+trim(dxEdit1.text)+'%''';
    if (dxCheckEdit1.checked) or (dxCheckEdit2.checked) then commandtext:=commandtext+' and valid=1';
    if Trim(dxLookupTreeView1.text)<>'' then
    begin
        if RadioGroup1.ItemIndex=0
            then commandtext:=commandtext+' and dbo.fn_treeischild(e.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 '
            else commandtext:=commandtext+' and dbo.fn_treeischild(d.district,'+dm.district.fieldbyname('rec_id').asstring+')>0 ';
    end;
    if dxCheckEdit1.checked then
    begin
        commandtext:=commandtext+' and exists (select 1 from (select sta_id,mate_id,med_id,qty,rate=sum(isnull(rate,0)),rate0=max(isnull(rate0,0))';
        commandtext:=commandtext+'  from tb_brokermed where comp_id='+inttostr(compid)+' and valid =1 group by sta_id,mate_id,med_id,qty having sum(isnull(rate,0))<>max(isnull(rate0,0)) ) h';
        commandtext:=commandtext+'  where a.sta_id=h.sta_id and a.mate_id=h.mate_id and a.med_id=h.med_id and a.qty=h.qty)';
    end;
    commandtext:=commandtext+' order by b.med_code,d.zname,e.mate_name';
//edit1.text:=commandtext;
//exit;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrybrokermed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrybrokermed.brokermedReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tqrybrokermed.dxEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tqrybrokermed.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickcustomer do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit2.text:= query1.fieldbyname('mate_name').asstring;
        dxbuttonedit2.tag := query1.fieldbyname('mate_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit2.text:='';
        dxbuttonedit2.tag :=0;
    end;
    speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxbuttonedit2.tag<>0) and (dxbuttonedit3.tag<>0) and (dxbuttonedit4.tag<>0);
end;
end;

procedure Tqrybrokermed.dxButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickbroker do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit4.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit4.tag:= query1.fieldbyname('sta_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit4.text:='';
        dxbuttonedit4.tag:=0;
    end;
    speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxbuttonedit2.tag<>0) and (dxbuttonedit3.tag<>0) and (dxbuttonedit4.tag<>0);
end;
end;

procedure Tqrybrokermed.dxButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if showmodal= mrOK then
    begin
        dxbuttonedit3.text:= query1.fieldbyname('zname').asstring;
        dxbuttonedit3.tag:= query1.fieldbyname('sta_id').asinteger;
        SpeedButton3Click(nil);
    end
    else
    begin
        dxbuttonedit3.text:='';
        dxbuttonedit3.tag:=0;
    end;
    speedbutton4.Enabled:=(dxbuttonedit1.tag<>0) and (dxbuttonedit2.tag<>0) and (dxbuttonedit3.tag<>0) and (dxbuttonedit4.tag<>0);
end;
end;

procedure Tqrybrokermed.dxDBGrid1lead_nameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
with pickstaff do
begin
    if not (brokermed.state in [dsinsert,dsedit]) then brokermed.edit;
    if showmodal= mrOK then
    begin
        brokermed.fieldbyname('lead_id').asinteger:= query1.fieldbyname('sta_id').asinteger;
        brokermed.fieldbyname('lead_name').asstring:= query1.fieldbyname('zname').asstring;
    end
    else
    begin
        brokermed.fieldbyname('lead_id').asinteger:=0;
        brokermed.fieldbyname('lead_name').asstring:='';
    end;
end;
end;

procedure Tqrybrokermed.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tqrybrokermed.FormCreate(Sender: TObject);
begin
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//保存
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

procedure Tqrybrokermed.N3Click(Sender: TObject);
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

procedure Tqrybrokermed.N1Click(Sender: TObject);
begin
with dxdbgrid1 do Columns[GetAbsoluteColumnIndex(FocusedColumn)].Visible:=false;
end;

procedure Tqrybrokermed.N2Click(Sender: TObject);
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

procedure Tqrybrokermed.N6Click(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid10.ini');//加载
end;

procedure Tqrybrokermed.FormActivate(Sender: TObject);
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
end;

procedure Tqrybrokermed.brokermedCalcFields(DataSet: TDataSet);
begin
with brokermed do
begin
    if fieldbyname('rate0').asfloat=0 then fieldbyname('crate').asfloat:=0
        else fieldbyname('crate').asfloat:=fieldbyname('rate').asfloat/fieldbyname('rate0').asfloat*100;
end;
end;

end.
