unit Unit28g;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxExEdtr, dxEditor, dxEdLib;

type
  Tpickchannel_dtl = class(TForm)
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
    DBGrid1pick_ord: TdxDBGridMaskColumn;
    ADOQuery1: TADOQuery;
    Edit1: TdxEdit;
    ADOQuery1obj_id: TAutoIncField;
    ADOQuery1zdesc: TStringField;
    query1obj_id: TAutoIncField;
    query1zdesc: TStringField;
    query1pick_ord: TIntegerField;
    DBGrid1zdesc: TdxDBGridColumn;
    ADOQuery1qry_code: TWideStringField;
    query1qry_code: TWideStringField;
    query1obj_code: TStringField;
    DBGrid1obj_code: TdxDBGridColumn;
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
  pickchannel_dtl: Tpickchannel_dtl;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickchannel_dtl.Edit1KeyPress(Sender: TObject; var Key: Char);
var sk: widestring;
begin
if key=#32 then  // <space> key
begin
//    if edit1.text='' then begin beep; exit; end;
    key:=char(0);
    edit1.selectall;
    sk:=trim(edit1.text);
{
    if sk='' then exit;
    fwid:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
    end;
}
    with query1 do
    begin
        if active then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY zdesc) as int),';
        commandtext:=commandtext+' obj_id,zdesc,obj_code,qry_code=dbo.fn_getpy(zdesc) from tb_object';
        commandtext:=commandtext+' where obj_type_id=12'; // comp_id='+inttostr(compid)+' and
        if sk<>'' then commandtext:=commandtext+' and (zdesc like ''%'+sk+'%'' or dbo.fn_getpy(zdesc) like ''%'+sk+'%'')';
{
        if fwid then commandtext:=commandtext+' and (zdesc like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and dbo.fn_getpy(zdesc) like ''%'+sk+'%''';
}
//        commandtext:=commandtext+' order by zdesc';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询大区'); end;
    end;
end;
end;

procedure Tpickchannel_dtl.Edit1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tpickchannel_dtl.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickchannel_dtl.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickchannel_dtl.FormCloseQuery(Sender: TObject;
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
if length(s)>=4 then flook:=false
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

procedure Tpickchannel_dtl.FormActivate(Sender: TObject);
var Key: Char;
begin
edit1.setfocus;
edit1.selectall;
Key:=#32;
with query1 do if active=False then Edit1KeyPress(Sender,Key);
end;

procedure Tpickchannel_dtl.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickchannel_dtl.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickchannel_dtl.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickchannel_dtl.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
