unit Unit90b;

// pickaccountall所有科目可选，pickaccount限制只可选明细科目

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTL, dxEditor, dxEdLib, ImgList, ComCtrls, ToolWin,
  dxExEdtr;

type
  Tpickaccountall = class(TForm)
    DSqryacc: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryacc: TClientDataSet;
    ADOQuery1: TADOQuery;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1acc_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1acc_title: TdxDBTreeListColumn;
    dxDBTreeList1acc_cd: TdxDBTreeListMaskColumn;
    Label2: TLabel;
    Edit1: TdxMaskEdit;
    ADOQuery1acc_id: TAutoIncField;
    ADOQuery1parent: TIntegerField;
    ADOQuery1acc_cd: TStringField;
    ADOQuery1acc_title: TStringField;
    ADOQuery1acc_desc: TStringField;
    ADOQuery1Ltitle: TStringField;
    ADOQuery1haschild: TBooleanField;
    qryaccacc_id: TAutoIncField;
    qryaccacc_cd: TStringField;
    qryaccacc_title: TStringField;
    qryaccacc_desc: TStringField;
    qryaccLtitle: TStringField;
    qryacchaschild: TBooleanField;
    ImageList: TImageList;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Images: TImageList;
    dxDBTreeList1haschild: TdxDBTreeListColumn;
    qryaccacc_level: TIntegerField;
    DBText1: TDBText;
    Bevel1: TBevel;
    qryaccqry_code: TStringField;
    dxDBTreeList1acc_level: TdxDBTreeListColumn;
    qryaccparent_id: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBTreeList1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pickaccountall: Tpickaccountall;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickaccountall.FormActivate(Sender: TObject);
begin
edit1.setfocus;
edit1.selectall;
with qryacc do
begin
    if active=false then
    begin
        commandtext:='select *,Ltitle=dbo.fn_getacctitle0(acc_id),haschild=dbo.fn_acchaschild(acc_id),acc_level=dbo.fn_getacclevel(acc_id)';
        commandtext:=commandtext+' from tb_accounts where (comp_id=0 or comp_id='+inttostr(compid)+')';
//        commandtext:=commandtext+' from tb_accounts where comp_id='+inttostr(compid);
        open;
    end;
end;
end;

procedure Tpickaccountall.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

procedure Tpickaccountall.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key in [VK_LEFT,VK_RIGHT] then exit;
case key of
    VK_UP    : Edit1.SetFocus;
    VK_DOWN  : dxDBTreeList1.SetFocus;
end;
//key:=0;
end;

procedure Tpickaccountall.Edit1KeyPress(Sender: TObject;
  var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid,fchr: boolean; //  东方语言 宽字符 (2bytes)
begin
if key=#32 then  // <space> key is pressed
begin
    sk:=trimacccd(Edit1.text);
    fwid:=false;   fchr:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
        if (sc[1] in ['a'..'z']) or (sc[1] in ['A'..'Z']) then fchr:=true; //注意这里的技巧
    end;
    with pickaccountall.qryacc do
    begin
        if active=false then open;
        if fwid then locate('acc_title',sk,[loCaseInsensitive,loPartialKey])
            else
            begin
                if fchr then locate('qry_code',sk,[loCaseInsensitive,loPartialKey])
                        else locate('acc_cd',sk,[loPartialKey]);
            end;
    end;
    key:=#0;
    Edit1.SelectAll;
end;
end;

procedure Tpickaccountall.dxDBTreeList1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
if (ANode.Values[dxDBTreeList1parent_id.Index] =-1)
    then Acolor := $00E6E3E4
else if (ANode.Values[dxDBTreeList1acc_level.Index] =1)
    then Acolor := $00ADFEFE
else if (ANode.Values[dxDBTreeList1haschild.Index] =true)
    then Acolor := $00EDEBEC;
end;

procedure Tpickaccountall.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if (Node.Values[dxDBTreeList1parent_id.Index] =-1) then Index :=2 else
if Node.Selected then Index := 1 else
if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tpickaccountall.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tpickaccountall.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

procedure Tpickaccountall.dxDBTreeList1DblClick(Sender: TObject);
begin
with qryacc do
    if (active=true) then modalresult:=mrOK;  // and (fieldbyname('haschild').asboolean=false) 
end;

procedure Tpickaccountall.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((Key=VK_UP) and (qryacc.active=true) and (qryacc.fieldbyname('acc_id').asinteger=1))
    or (Key=VK_Home) then
begin
    Edit1.SetFocus;
    key:=0;
end;
end;

procedure Tpickaccountall.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//with qryacc do
//    if (modalresult=mrOk) and (active=true) and (fieldbyname('haschild').asboolean=true)
//        then raise exception.create('非明细科目，不可做账');
end;

end.
