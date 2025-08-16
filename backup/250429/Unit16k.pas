unit Unit16k;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxExEdtr, dxEditor, dxEdLib, dxDBTLCl, dxGrClms;

type
  Tpickbank = class(TForm)
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
    DBGrid1bank_acnt: TdxDBGridMaskColumn;
    DBGrid1pick_ord: TdxDBGridMaskColumn;
    Edit1: TdxEdit;
    DBGrid1bank_name: TdxDBGridColumn;
    query1bank_id: TAutoIncField;
    query1comp_id: TAutoIncField;
    query1bank_name: TStringField;
    query1bank_acnt: TStringField;
    query1balance: TBCDField;
    query1pick_ord: TIntegerField;
    dxCheckEdit1: TdxCheckEdit;
    query1stop_yn: TBooleanField;
    DBGrid1stop_yn: TdxDBGridCheckColumn;
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
  pickbank: Tpickbank;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickbank.Edit1KeyPress(Sender: TObject; var Key: Char);
var sk: widestring;
begin
if key=#32 then  // <space> key
begin
//    if edit1.text='' then begin beep; exit; end;
    key:=char(0);
    edit1.selectall;
    sk:=Trim(edit1.text);
    with query1 do
    begin
        if active=true then close;
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY bank_name) as int),';
        commandtext:=commandtext+' * from tb_bank where comp_id='+inttostr(compid);
        if not dxCheckEdit1.Checked then commandtext:=commandtext+' and (stop_yn is null or stop_yn=0)';
		if sk<>'' then commandtext:=commandtext+' and (bank_name like''%'+sk+'%'' or dbo.fn_getpy(bank_name) like''%'+sk+'%'')';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询银行账户'); end;
    end;
end;
end;

procedure Tpickbank.Edit1KeyDown(Sender: TObject; var Key: Word;
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
end;

procedure Tpickbank.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickbank.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickbank.FormCloseQuery(Sender: TObject;
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

procedure Tpickbank.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickbank.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickbank.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickbank.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickbank.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
