unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxExEdtr, dxEditor, dxEdLib, dxDBTLCl, dxGrClms;

type
  Tpickdistrict = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TdxEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1country: TdxDBGridColumn;
    dxDBGrid1prov_code: TdxDBGridColumn;
    dxDBGrid1prov_name: TdxDBGridColumn;
    dxDBGrid1city_code: TdxDBGridColumn;
    dxDBGrid1city_name: TdxDBGridColumn;
    dxDBGrid1county_code: TdxDBGridColumn;
    dxDBGrid1county_name: TdxDBGridColumn;
    query1: TClientDataSet;
    query1rec_id: TAutoIncField;
    query1country: TStringField;
    query1prov_code: TStringField;
    query1prov_name: TStringField;
    query1city_code: TStringField;
    query1city_name: TStringField;
    query1county_code: TStringField;
    query1county_name: TStringField;
    DSquery1: TDataSource;
    query1pick_ord: TIntegerField;
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
  pickdistrict: Tpickdistrict;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickdistrict.Edit1KeyPress(Sender: TObject; var Key: Char);
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
        if active then close;
        commandtext:='select pick_ord=cast(ROW_NUMBER() OVER(ORDER BY rec_id) as int),* from tb_district';
        setprogress(1);
		if sk<>'' then
        begin
            commandtext:=commandtext+' and (prov_name like''%'+sk+'%'' or dbo.fn_getpy(prov_name) like''%'+sk+'%''';
            commandtext:=commandtext+'  or city_name like''%'+sk+'%'' or dbo.fn_getpy(city_name) like''%'+sk+'%''';
            commandtext:=commandtext+'  or county_name like''%'+sk+'%'' or dbo.fn_getpy(county_name) like''%'+sk+'%'')';
        end;
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询银行账户'); end;
    end;
end;
end;

procedure Tpickdistrict.Edit1KeyDown(Sender: TObject; var Key: Word;
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
    VK_DOWN  : dxDBGrid1.SetFocus;
end;    
end;

procedure Tpickdistrict.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickdistrict.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickdistrict.FormCloseQuery(Sender: TObject;
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

procedure Tpickdistrict.FormActivate(Sender: TObject);
var Key: Char;
begin
edit1.setfocus;
edit1.selectall;
Key:=#32;
with query1 do if active=False then Edit1KeyPress(Sender,Key);
end;

procedure Tpickdistrict.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickdistrict.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickdistrict.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dxDBGrid1 then edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickdistrict.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
