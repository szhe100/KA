unit Unit61;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxExEdtr, ADODB, DB, DBClient, dxCntner, dxEditor, dxEdLib, dxDBGrid,
  dxTL, dxDBCtrl, StdCtrls, Buttons, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxDBTLCl, dxGrClms;

type
  Tpickbusiframe = class(TForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    DSquery1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    query1: TClientDataSet;
    ADOQuery1: TADOQuery;
    query1pick_ord: TIntegerField;
    Edit1: TdxEdit;
    query1rec_id: TAutoIncField;
    query1district_id: TIntegerField;
    query1sta_id: TIntegerField;
    query1broker: TStringField;
    query1agent: TStringField;
    query1agent_id: TAutoIncField;
    query1med_id: TIntegerField;
    query1creat_by: TIntegerField;
    query1creat_dt: TDateTimeField;
    query1creater: TStringField;
    query1dist1: TStringField;
    query1dist2: TStringField;
    query1dist3: TStringField;
    query1valid_dt: TDateTimeField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1level1: TdxDBGridMaskColumn;
    dxDBGrid1level2: TdxDBGridColumn;
    dxDBGrid1broker: TdxDBGridColumn;
    dxDBGrid1agent: TdxDBGridColumn;
    dxDBGrid1dist1: TdxDBGridColumn;
    dxDBGrid1dist2: TdxDBGridColumn;
    dxDBGrid1dist3: TdxDBGridColumn;
    dxDBGrid1valid_dt: TdxDBGridColumn;
    dxDBGrid1creater: TdxDBGridMaskColumn;
    dxDBGrid1creat_dt: TdxDBGridDateColumn;
    query1level_id1: TIntegerField;
    query1level_id2: TIntegerField;
    query1level_id3: TAutoIncField;
    query1level1: TStringField;
    query1level2: TStringField;
    query1level3: TStringField;
    dxDBGrid1level3: TdxDBGridColumn;
    ADOQuery1dist: TStringField;
    query1dist: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBNavigator1FirstClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSquery1DataChange(Sender: TObject; Field: TField);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pickbusiframe: Tpickbusiframe;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickbusiframe.Edit1KeyPress(Sender: TObject; var Key: Char);
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
        commandtext:='select top 200 pick_ord=cast(ROW_NUMBER() OVER(ORDER BY b.zdesc,c.zdesc,d.zdesc,e.zname,f.zname) as int),';
        commandtext:=commandtext+' a.*,level1=b.zdesc,level2=c.zdesc,level3=d.zdesc,broker=e.zname,agent=f.zname,';
        commandtext:=commandtext+' creater=dbo.fn_staff_name(a.creat_by),';
        commandtext:=commandtext+'	dist =dbo.fn_getdistrict(a.district_id),';
        commandtext:=commandtext+'	dist1=dbo.fn_getdistrictlevel (a.district_id,1),';
        commandtext:=commandtext+'	dist2=dbo.fn_getdistrictlevel (a.district_id,2),';
        commandtext:=commandtext+'	dist3=dbo.fn_getdistrictlevel (a.district_id,3)';
        commandtext:=commandtext+' from tb_busiframe a';
        commandtext:=commandtext+' left join tb_object b on a.level_id1 =b.obj_id';
        commandtext:=commandtext+' left join tb_object c on a.level_id2 =c.obj_id';
        commandtext:=commandtext+' left join tb_object d on a.level_id3 =d.obj_id';
        commandtext:=commandtext+' left join tb_staff e on a.sta_id =e.sta_id';
        commandtext:=commandtext+' inner join tb_staff f on a.agent_id =f.sta_id';
        commandtext:=commandtext+' where a.comp_id='+inttostr(compid);
        if fwid then commandtext:=commandtext+' and (f.zname like ''%'+sk+'%'')'
                else commandtext:=commandtext+' and f.qry_code like ''%'+sk+'%''';
//        commandtext:=commandtext+' order by b.zdesc,c.zdesc,d.zdesc,e.zname,f.zname';
        open;
        if recordcount=0 then begin beep; raise Exception.Create('无所查询代理人'); end;
    end;
end;
end;

procedure Tpickbusiframe.Edit1KeyDown(Sender: TObject; var Key: Word;
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
    VK_UP    :
        begin
            with query1 do
                if (active=true) and (bof=True) then last;
            dxDBGrid1.SetFocus;
        end;
    VK_DOWN  : dxDBGrid1.SetFocus;
end;    
//if key in [VK_PRIOR,VK_NEXT,VK_HOME,VK_END,VK_DOWN] then key:=0;
end;

procedure Tpickbusiframe.wwDBNavigator1FirstClick(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tpickbusiframe.FormCloseQuery(Sender: TObject;
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
dxDBGrid1.SaveToIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//保存
end;

procedure Tpickbusiframe.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickbusiframe.BitBtn3Click(Sender: TObject);
begin
self.tag:=1;  // <Esc> (cancel) 退出标志
end;

procedure Tpickbusiframe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (query1.Bof) and (key = vk_up) then
begin
    edit1.setfocus;
    edit1.selectall;
end;
end;

procedure Tpickbusiframe.DSquery1DataChange(Sender: TObject; Field: TField);
begin
if activecontrol=dxDBGrid1 then edit1.text:=query1.fieldbyname('pick_ord').asstring;
end;

procedure Tpickbusiframe.dxDBGrid1DblClick(Sender: TObject);
begin
   modalresult:=mrOK;
end;

procedure Tpickbusiframe.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['A'..'Z','a'..'z','0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

procedure Tpickbusiframe.FormCreate(Sender: TObject);
begin
if FileExists(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini')
    then dxDBGrid1.LoadFromIniFile(extractfilepath(Application.ExeName)+self.name+'-dxDBGrid1.ini');//加载
end;

end.
