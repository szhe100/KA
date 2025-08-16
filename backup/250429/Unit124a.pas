unit Unit124a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxExEdtr;

type
  Tpickexpensesup = class(TForm)
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
    query1qry_code: TStringField;
    query1pick_ord: TIntegerField;
    DBGrid1mate_name: TdxDBGridMaskColumn;
    DBGrid1phone: TdxDBGridMaskColumn;
    DBGrid1address: TdxDBGridMaskColumn;
    DBGrid1qry_code: TdxDBGridMaskColumn;
    DBGrid1pick_ord: TdxDBGridMaskColumn;
    query1mate_id: TAutoIncField;
    Label1: TLabel;
    query1mate_code: TStringField;
    query1stop_yn: TBooleanField;
    Edit1: TdxEdit;
    Label2: TLabel;
    query1settle_type_id: TIntegerField;
    ADOQuery1: TADOQuery;
    ADOQuery1pick_ord: TIntegerField;
    ADOQuery1mate_id: TAutoIncField;
    ADOQuery1mate_code: TStringField;
    ADOQuery1mate_name: TStringField;
    ADOQuery1deputy: TStringField;
    ADOQuery1phone: TStringField;
    ADOQuery1address: TStringField;
    ADOQuery1settle_type_id: TIntegerField;
    ADOQuery1stop_yn: TBooleanField;
    ADOQuery1qry_code: TStringField;
    ADOQuery1broker: TStringField;
    ADOQuery1broker_id: TStringField;
    ADOQuery1broker_id1: TIntegerField;
    ADOQuery1mate_type_id: TIntegerField;
    ADOQuery1mate_type: TStringField;
    query1mate_type_id: TIntegerField;
    DBGrid1cdistrict: TdxDBGridColumn;
    query1district: TIntegerField;
    query1cdistrict: TStringField;
    ADOQuery1license_cd: TStringField;
    query1license_cd: TStringField;
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
  pickexpensesup: Tpickexpensesup;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickexpensesup.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    fwid: Boolean;
    sk: widestring;
begin
if key=#32 then  // <space> key
begin
    if edit1.text='' then begin beep; exit; end;
    key:=char(0);
    edit1.selectall;
    sk:=trim(edit1.text);
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
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY mate_name) as int),';
        commandtext:=commandtext+' mate_id,mate_code,mate_name,deputy,phone,address,settle_type_id,stop_yn,qry_code,';
        commandtext:=commandtext+' mate_type_id,district,cdistrict=dbo.fn_getdistrict(district),license_cd';
        commandtext:=commandtext+' from tb_busimate where mate_type_id=9 and (stop_yn is null or stop_yn=0) and comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (mate_name like ''%'+sk+'%'')'  // or sim_name like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and (qry_code like ''%'+sk+'%'' or dbo.fn_getpy(mate_name) like ''%'+sk+'%'')';
        commandtext:=commandtext+' order by mate_name';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询供应方'); end;
        label1.caption:= formatfloat('[#,###]',query1.recordcount);
    end;
end;
end;

procedure Tpickexpensesup.Edit1KeyDown(Sender: TObject; var Key: Word;
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
    VK_DOWN  : dbgrid1.SetFocus;
end;    
//key:=0;
end;

procedure Tpickexpensesup.DBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickexpensesup.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickexpensesup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var flook: boolean;
    i,j: word;
    s: string;
begin
if (edit1.text='') or (query1.active=false) or (pickexpensesup.tag=1) then
begin
    pickexpensesup.tag:=0;
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

procedure Tpickexpensesup.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickexpensesup.BitBtn3Click(Sender: TObject);
begin
pickexpensesup.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickexpensesup.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickexpensesup.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dbgrid1 then
edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickexpensesup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

end.
