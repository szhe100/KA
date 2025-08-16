unit Unit13c;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, Db, DBClient, dxDBEdtr, dxDBELib, ADODB, Grids,
  DBGrids, Menus, ImgList, dxdbtrel, mycds, dxDBTL, ComCtrls, ToolWin;

type
  Tqrybrokermedtl = class(TForm)
    brokermed: TClientDataSet;
    DSbrokermed: TDataSource;
    SpeedButton3: TSpeedButton;
    ADOQuery1: TADOQuery;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1rec_id: TdxDBTreeListMaskColumn;
    dxDBTreeList1parent: TdxDBTreeListMaskColumn;
    dxDBTreeList1zdesc: TdxDBTreeListMaskColumn;
    ADOQuery1parent_id: TIntegerField;
    ADOQuery1rec_id: TIntegerField;
    ADOQuery1zdesc: TWideStringField;
    brokermedparent_id: TIntegerField;
    brokermedrec_id: TIntegerField;
    brokermedzdesc: TWideStringField;
    ToolBar1: TToolBar;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    Images: TImageList;
    Edit1: TEdit;
    ImageList1: TImageList;
    Label13: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brokermedReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure btnFullCollapseClick(Sender: TObject);
    procedure btnFullExpandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrybrokermedtl: Tqrybrokermedtl;

implementation

uses datamodu;

{$R *.DFM}

procedure Tqrybrokermedtl.SpeedButton3Click(Sender: TObject);
var mi: integer;
begin
with brokermed do
begin
    if active=true then
    begin
        mi:=fieldbyname('rec_id').asinteger;
        close;
    end
    else mi:=0;
    commandtext:='select distinct parent_id=-1,rec_id=lead_id,zdesc=dbo.fn_staff_name(lead_id) from tb_brokermed a where valid=1';  // comp_id=1 and
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    commandtext:=commandtext+' union all';
    commandtext:=commandtext+' select distinct parent_id=lead_id,rec_id=1000*lead_id+mate_id,zdesc=dbo.fn_mate_name(mate_id) from tb_brokermed a where valid=1'; // comp_id='+inttostr(compid)+' and
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    commandtext:=commandtext+' union all';
    commandtext:=commandtext+' select distinct parent_id=1000*lead_id+mate_id,rec_id=10*a.lead_id+1000*mate_id+a.med_id,zdesc=m.med_name+'' ''+m.specifi+'' ''+m.pdt_place from tb_brokermed a';
    commandtext:=commandtext+' left join tb_medicine m on a.med_id=m.med_id';
    commandtext:=commandtext+'  where a.comp_id='+inttostr(compid)+' and a.valid=1 ';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    if fmedltd  then commandtext:=commandtext+' and exists (select 1 from tb_trustmed t where t.sta_id='+inttostr(curuserid)+' and a.med_id=t.med_id)';
    commandtext:=commandtext+' union all';
    commandtext:=commandtext+' select distinct parent_id=10*lead_id+1000*mate_id+med_id,rec_id=rec_id,zdesc=dbo.fn_staff_name(sta_id)+format(rate,''(##,##0.00)'') from tb_brokermed a where valid=1';  // comp_id='+inttostr(compid)+' and
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
    commandtext:=commandtext+' union all';
    commandtext:=commandtext+' select distinct parent_id=b.rela_id,rec_id=b.sta_id,zdesc=dbo.fn_staff_name(b.sta_id)+format(b.rate,''(##,##0.00)'')';
    commandtext:=commandtext+'  from tb_brokermedtl b,tb_brokermed a where a.comp_id='+inttostr(compid)+' and a.valid=1 and a.rec_id=b.rela_id';
    if fdistltd then commandtext:=commandtext+' and exists (select 1 from tb_busimate s,tb_trustdistrict t where t.sta_id='+inttostr(curuserid)+' and a.mate_id=s.mate_id and dbo.fn_ischildnode(s.district,t.dist_id)=1)';
edit1.text:=commandtext;
    try
        setprogress(1);
        open;
        if mi>0 then locate('rec_id',mi,[]);
    finally
        setprogress(0);
    end;
end;
end;

procedure Tqrybrokermedtl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tqrybrokermedtl.brokermedReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure Tqrybrokermedtl.dxDBGrid1Enter(Sender: TObject);
begin
wwDBNavigator1.DataSource:=(Sender as TdxDBGrid).DataSource;
end;

procedure Tqrybrokermedtl.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
if Node.selected then Index := 2 else
begin
    if Node.Expanded then Index := 1 else Index := 0;
end;
end;

procedure Tqrybrokermedtl.btnFullCollapseClick(Sender: TObject);
begin
  dxDBTreeList1.FullCollapse;
end;

procedure Tqrybrokermedtl.btnFullExpandClick(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
end;

end.
