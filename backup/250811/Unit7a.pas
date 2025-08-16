unit Unit7a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxExEdtr, dxEditor, dxEdLib;

type
  Tpickmedicine1 = class(TForm)
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
    DBGrid1med_name: TdxDBGridMaskColumn;
    DBGrid1specifi: TdxDBGridMaskColumn;
    DBGrid1pdt_place: TdxDBGridMaskColumn;
    DBGrid1med_unit: TdxDBGridMaskColumn;
    DBGrid1qty: TdxDBGridMaskColumn;
    DBGrid1qry_code: TdxDBGridMaskColumn;
    query1med_id: TAutoIncField;
    query1qty: TBCDField;
    query1qtyperpack: TBCDField;
    DBGrid1qtyperpack: TdxDBGridColumn;
    query1price: TBCDField;
    query1qtyperbox: TBCDField;
    DBGrid1qtyperbox: TdxDBGridColumn;
    query1appv_docu: TStringField;
    DBGrid1appv_docu: TdxDBGridColumn;
    Edit1: TdxEdit;
    query1med_type: TStringField;
    DBGrid1med_type: TdxDBGridColumn;
    Label2: TLabel;
    query1material_code: TStringField;
    query1material_code1: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pickmedicine1: Tpickmedicine1;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickmedicine1.Edit1KeyPress(Sender: TObject; var Key: Char);
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
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY med_code,med_name,specifi,pdt_place) as int),';
        commandtext:=commandtext+'  a.med_id,med_code,med_name,specifi,appv_docu,pdt_place,qtyperpack,qtyperbox,';
        commandtext:=commandtext+'  med_unit=dbo.fn_obj_desc(a.unit_id),med_type=dbo.fn_med_type(a.med_id),qty=0.0000,price=0.000000,qry_code';
        commandtext:=commandtext+' from tb_medicine a';
        commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
        commandtext:=commandtext+' 	and exists (select 1 from tb_sysrule r where r.mate_id='+inttostr(fmateid)+' and a.med_id=r.med_id and r.level_id=1)';
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and (a.med_name like''%'+sk+'%'' or a.chm_name like''%'+sk+'%'')'
         else commandtext:=commandtext+' and a.qry_code like''%'+sk+'%''';
//        commandtext:=commandtext+' order by med_code,med_name,specifi,pdt_place';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询品种'); end;
//        label1.caption:= formatfloat('[#,###]',query1.recordcount);
    end;
end;
end;

procedure Tpickmedicine1.Edit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tpickmedicine1.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickmedicine1.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickmedicine1.FormCloseQuery(Sender: TObject;
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

procedure Tpickmedicine1.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickmedicine1.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickmedicine1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickmedicine1.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickmedicine1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
