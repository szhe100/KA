unit Unit125a;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, DBGrids, DBClient, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTL, dxEditor, dxEdLib, ImgList, ComCtrls, ToolWin,
  dxExEdtr;

type
  Tpickcompobjall = class(TForm)
    DSqryacc: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qry: TClientDataSet;
    ADOQuery1: TADOQuery;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1rec_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1comptitle: TdxDBTreeListColumn;
    Label2: TLabel;
    Edit1: TdxMaskEdit;
    ImageList: TImageList;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Images: TImageList;
    ADOQuery1rec_id: TAutoIncField;
    ADOQuery1id: TIntegerField;
    ADOQuery1type_id: TWordField;
    ADOQuery1parent_id: TIntegerField;
    ADOQuery1comptitle: TStringField;
    qryrec_id: TAutoIncField;
    qryid: TIntegerField;
    qrytype_id: TWordField;
    qryparent_id: TIntegerField;
    qrycomptitle: TStringField;
    qryLtitle: TStringField;
    ADOQuery1qry_code: TStringField;
    qryqry_code: TStringField;
    dxDBTreeList1Column4: TdxDBTreeListColumn;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pickcompobjall: Tpickcompobjall;

implementation

{$R *.DFM}

uses datamodu;

procedure Tpickcompobjall.FormActivate(Sender: TObject);
begin
with qry do
begin
    if active=false then
    begin
        commandtext:='select * from tb_comptree a';
//        commandtext:='select *,comptitle=dbo.fn_comptitle(rec_id),Ltitle=dbo.fn_comptitle0(rec_id) from tb_comptree a';
        commandtext:=commandtext+' where dbo.fn_compischild(rec_id,'+inttostr(comprecid)+')=1';
        try
            setprogress(1);
            open;
        finally
            setprogress(0);
        end;
    end;
end;
edit1.setfocus;
edit1.selectall;
end;

procedure Tpickcompobjall.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['0'..'9'] then
begin
    edit1.Text:=key;
    edit1.setfocus;
    edit1.selstart:=1;  // 去除edit1的selectall
end;
end;

procedure Tpickcompobjall.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key in [VK_LEFT,VK_RIGHT,VK_BACK,VK_DELETE] then exit;
if qry.active=true then
    case key of
        VK_PRIOR : qry.MoveBy(-10);
        VK_NEXT  : qry.MoveBy(10);
        VK_HOME  : qry.first;
        VK_END   : qry.last;
    end;
case key of
    VK_UP    : Edit1.SetFocus;
    VK_DOWN  : dxDBTreeList1.SetFocus;
end;
//key:=0;
end;

procedure Tpickcompobjall.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if (Node.Values[dxDBTreeList1parent_id.Index] =-1) then Index :=2 else
if Node.Selected then Index := 1 else
if Node.Expanded then Index := 1 else Index := 0;
end;

procedure Tpickcompobjall.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tpickcompobjall.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

procedure Tpickcompobjall.dxDBTreeList1DblClick(Sender: TObject);
begin
modalresult:=mrOK;
end;

procedure Tpickcompobjall.Edit1KeyPress(Sender: TObject; var Key: Char);
var sc: string;
    mi: integer;
    sk: widestring;
    fwid: boolean; //  东方语言 宽字符 (2bytes)  ,fchr
begin
if key=#32 then  // <space> key is pressed
begin
    sk:=trim(Edit1.text);
    fwid:=false; //  fchr:=false;
    for mi:=1 to length(sk) do
    begin
        sc:=sk[mi];
        if length(sc)>1 then begin fwid:=true; break; end;
//        if (sc[1] in ['a'..'z']) or (sc[1] in ['A'..'Z']) then fchr:=true; //注意这里的技巧
    end;
    with pickcompobjall.qry do
    begin
        if active=false then open;
        if fwid then locate('comptitle',sk,[])
            else locate('qry_code',sk,[loCaseInsensitive,loPartialKey]);
    end;
    key:=#0;
    Edit1.SelectAll;
end;
end;

end.
