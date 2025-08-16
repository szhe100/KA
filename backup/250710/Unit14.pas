unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxExEdtr, dxEditor, dxEdLib;

type
  Tpickmed_bat = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    DSquery1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    query1: TClientDataSet;
    query1pick_ord: TIntegerField;
    query1med_code: TStringField;
    query1med_name: TStringField;
    query1specifi: TStringField;
    query1pdt_place: TStringField;
    query1med_unit: TStringField;
    query1qry_code: TStringField;
    DBGrid1: TdxDBGrid;
    DBGrid1pick_ord: TdxDBGridMaskColumn;
    DBGrid1material_code: TdxDBGridMaskColumn;
    DBGrid1med_name: TdxDBGridMaskColumn;
    DBGrid1specifi: TdxDBGridMaskColumn;
    DBGrid1pdt_place: TdxDBGridMaskColumn;
    DBGrid1med_unit: TdxDBGridMaskColumn;
    DBGrid1qry_code: TdxDBGridMaskColumn;
    query1med_id: TAutoIncField;
    query1bat_cd: TStringField;
    query1price: TBCDField;
    DBGrid1price: TdxDBGridColumn;
    query1qtyperpack: TBCDField;
    DBGrid1qtyperpack: TdxDBGridColumn;
    query1valid_dt: TDateTimeField;
    DBGrid1valid_dt: TdxDBGridColumn;
    query1otc_rx: TBooleanField;
    query1gmp: TBooleanField;
    DBGrid1otc_rx: TdxDBGridCheckColumn;
    query1qtyperbox: TBCDField;
    DBGrid1qtyperbox: TdxDBGridColumn;
    DBGrid1qty1: TdxDBGridColumn;
    ADOQuery1: TADOQuery;
    query1agent: TStringField;
    DBGrid1agent: TdxDBGridColumn;
    DBGrid1low_limit_price: TdxDBGridColumn;
    query1chm_name: TStringField;
    DBGrid1chm_name: TdxDBGridColumn;
    query1qty: TBCDField;
    Edit1: TdxEdit;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1parent_id: TIntegerField;
    ADOQuery1comp_id: TWordField;
    query1rec_id: TAutoIncField;
    query1parent_id: TIntegerField;
    query1comp_id: TWordField;
    ADOQuery1mate_id: TIntegerField;
    ADOQuery1med_id: TIntegerField;
    ADOQuery1bat_cd: TStringField;
    ADOQuery1price: TBCDField;
    ADOQuery1qty: TBCDField;
    ADOQuery1stop_yn: TBooleanField;
    ADOQuery1stop_by: TIntegerField;
    ADOQuery1stop_for: TStringField;
    ADOQuery1stop_dt: TDateTimeField;
    ADOQuery1pick_ord: TIntegerField;
    ADOQuery1valid_dt: TDateTimeField;
    query1mate_id: TIntegerField;
    query1cate_id: TWordField;
    query1Ccate: TStringField;
    DBGrid1Ccate: TdxDBGridColumn;
    query1material_code: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure wwDBNavigator1FirstClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSquery1DataChange(Sender: TObject; Field: TField);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pickmed_bat: Tpickmed_bat;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickmed_bat.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean;
begin
if key=#32 then  // <space> key
begin
    if edit1.text='' then begin beep; exit; end;
    key:=char(0);
    edit1.selectall;
    sk:=edit1.text;
    if sk='' then exit;
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
    with query1 do
    begin
        if active=true then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY b.med_name,b.pdt_place,b.specifi,b.qtyperpack,a.bat_cd) as int),';
        commandtext:=commandtext+'  a.rec_id,a.parent_id,a.comp_id,a.mate_id,agent=dbo.fn_mate_name(a.mate_id),a.cate_id,a.med_id,a.bat_cd,a.qty,a.price,b.med_name,b.med_code,b.material_code,b.chm_name,b.specifi,b.pdt_place,';
        commandtext:=commandtext+'  b.qtyperpack,b.qtyperbox,b.qry_code,med_unit=dbo.fn_obj_desc(b.unit_id),a.valid_dt,b.otc_rx,b.gmp,b.discount';
        commandtext:=commandtext+' from tb_medstock_bat a,tb_medicine b where a.med_id=b.med_id and a.comp_id='+inttostr(compid);
        commandtext:=commandtext+' and (a.qty<>0)';
        if fmateid>0 then commandtext:=commandtext+' and a.mate_id='+inttostr(fmateid);
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and (b.med_name like''%'+sk+'%'' or chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and b.qry_code like''%'+sk+'%''';
//        commandtext:=commandtext+' order by b.med_name,b.pdt_place,b.specifi,b.qtyperpack,a.bat_cd';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
//        label1.caption:= formatfloat('[#,###]',query1.recordcount);
    end;
end;
end;

procedure Tpickmed_bat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if query1.active=true then
    case key of
        VK_PRIOR : query1.MoveBy(-10);
        VK_NEXT  : query1.MoveBy(10);
        VK_HOME  : query1.first;
        VK_END   : query1.last;
    end;
case key of
//    VK_UP    : combobox1.SetFocus;
    VK_DOWN  : dbgrid1.SetFocus;
end;    
//if key in [VK_PRIOR,VK_NEXT,VK_HOME,VK_END,VK_DOWN] then key:=0;
end;

procedure Tpickmed_bat.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickmed_bat.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickmed_bat.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var flook: boolean;
    i,j: word;
    s: string;
begin
if (edit1.text='') or (query1.active=false) or (self.tag=1) then
begin
    self.tag:=0;
    exit;
end;
flook:=true;
j:=length(edit1.text);

s:=edit1.text;
for i:=1 to j do
    if not (s[i] in ['0'..'9']) then
    begin
        flook:=false;
        break;
    end;
if flook then
    if query1.locate('pick_ord',strtoint(edit1.text),[]) then canclose:=true else
     begin
        beep;
        edit1.selectall;
        canclose:=false;
     end;
end;

procedure Tpickmed_bat.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickmed_bat.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickmed_bat.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickmed_bat.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickmed_bat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

procedure Tpickmed_bat.query1CalcFields(DataSet: TDataSet);
begin
with query1 do
begin
    case fieldbyname('cate_id').asinteger of
        1:  fieldbyname('ccate').asstring:='商业';
        2:  fieldbyname('ccate').asstring:='分销';
    end;
end;
end;

end.
