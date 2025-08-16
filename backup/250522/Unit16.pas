unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxExEdtr, dxEditor, dxEdLib;

type
  Tpickcustomer = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    DSquery1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    query1: TClientDataSet;
    DBGrid1: TdxDBGrid;
    query1mate_name: TStringField;
    query1deputy: TStringField;
    query1phone: TStringField;
    query1address: TStringField;
    query1broker: TStringField;
    query1qry_code: TStringField;
    query1pick_ord: TIntegerField;
    DBGrid1mate_name: TdxDBGridMaskColumn;
    DBGrid1deputy: TdxDBGridMaskColumn;
    DBGrid1phone: TdxDBGridMaskColumn;
    DBGrid1address: TdxDBGridMaskColumn;
    DBGrid1broker: TdxDBGridMaskColumn;
    DBGrid1qry_code: TdxDBGridMaskColumn;
    DBGrid1pick_ord: TdxDBGridMaskColumn;
    query1mate_id: TAutoIncField;
    query1settle_type: TIntegerField;
    query1stop_yn: TBooleanField;
    query1broker_id: TIntegerField;
    Edit1: TdxEdit;
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
  pickcustomer: Tpickcustomer;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickcustomer.Edit1KeyPress(Sender: TObject; var Key: Char);
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
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_name,deputy,phone,address,broker_id,broker=dbo.fn_staff_name(broker_id),';
        commandtext:=commandtext+' settle_type,stop_yn,qry_code from tb_busimate';
        commandtext:=commandtext+' where mate_type_id=1'; // and comp_id='+inttostr(compid);
        if fwid  // 宽字符串
         then commandtext:=commandtext+' and mate_name like''%'+sk+'%'''
         else commandtext:=commandtext+' and qry_code like''%'+sk+'%''';
//        commandtext:=commandtext+' order by mate_name';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询医院'); end;
    end;
end;
end;

procedure Tpickcustomer.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if query1.active then
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

procedure Tpickcustomer.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickcustomer.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickcustomer.FormCloseQuery(Sender: TObject;
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
if length(s)>=3 then flook:=false
else
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

procedure Tpickcustomer.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickcustomer.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickcustomer.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickcustomer.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickcustomer.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
