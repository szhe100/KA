unit mycds;

interface

Uses

DBClient,DSIntf,StrUtils,SysUtils,datamodu,Ksserver_TLB;

type
   TMyCDS = class(TClientDataSet);//����������Protected��һЩ�����ͱ���

/// <summary>
/// ��ȡ��ǰ��¼�� OleVariant ���
/// </summary>
/// <param name="CDS"></param>
/// <param name="Options"></param>
/// <returns></returns>
function GetRecordOleVar(CDS:TClientDataSet;Options:TFetchOptions):OleVariant;
procedure RefreshRecordByOleVar(CDS:TClientDataSet;OleVar:OleVariant);
procedure RefreshMyRecord(CDS:TClientDataSet;refreshcds:TClientDataSet;stringtype:Integer;keyfield:string;currentid:integer);
procedure myupdateRefresh(CDS:TClientDataSet; const pTablename: WideString;
                           const pKeyfield: WideString;const backlist:WideString);
function myapplyupdate(cds:TClientDataSet; const ptablename: Widestring; const pkeyfield: Widestring): Boolean;
implementation
function GetRecordOleVar(CDS:TClientDataSet;Options:TFetchOptions):OleVariant;

var
    DataPacket: TDataPacket;
   NewData: OleVariant;
begin
{ Throw error if we are closed, but not if we are in the middle of opening }
if not Assigned(TMyCDS(CDS).DSCursor) then
      TMyCDS(CDS).CheckActive;

TMyCDS(CDS).UpdateCursorPos;
TMyCDS(CDS).Check(TMyCDS(CDS).DSCursor.GetRowRequestPacket
   (foRecord in Options, foBlobs in Options ,False, True, DataPacket));
DataPacketToVariant(DataPacket, NewData);
Result := NewData;
end;

/// <summary>
/// ˢ�µ�ǰ��¼
/// </summary>
/// <param name="CDS"></param>
/// <param name="OleVar">�������ݰ�</param>
procedure RefreshRecordByOleVar(CDS:TClientDataSet;OleVar:OleVariant);
begin
TMyCDS(CDS).UpdateCursorPos;
TMyCDS(CDS).Check(TMyCDS(CDS).DSCursor.RefreshRecord(VarToDataPacket(OleVar)));
if not TMyCDS(CDS).Active then
    Exit;
TMyCDS(CDS).DSCursor.GetCurrentRecord(TMyCDS(CDS).ActiveBuffer);
TMyCDS(CDS).Resync([]);
end;
/// <summary>
/// ʹ������һ��refreshCDS��� RefreshRecordByOleVar���µ�ǰ��¼
/// </summary>
/// <param name="CDS"></param>
/// <param name="OleVar">�������ݰ�</param>
procedure ReplaceStr(var Str:String;const SourceStr,DestStr:String); //const
var
  Index:Integer;
begin
  Index:=Pos(SourceStr,Str);
  if Index>0 then
  begin
    Delete(Str,Index,Length(SourceStr));
    Insert(DestStr,Str,Index);
  end;
end;

procedure RefreshMyRecord(CDS:TClientDataSet;refreshcds:TClientDataSet;stringtype:Integer;keyfield:string;currentid:integer);
var refreshstring: string;
    ss: string;
begin
    if CDS.RecordCount=0 then   //�����ǰ��¼Ϊ0������һ��,��������������
    begin
        CDS.Append;
        CDS.Post;
    end;
    refreshstring:=CDS.CommandText;

    ss:='1=1';
    if stringtype=1 then ReplaceStr(refreshstring, ss, keyfield+' ='+inttostr(currentid))
        else refreshstring:=refreshstring+' and '+keyfield+' ='+inttostr(currentid);

    with refreshcds do
    begin
        if Active=True then close;
        CommandText:=refreshstring;
        Open;
        if RecordCount=0 then exit;
        first;
    end;
    RefreshRecordByOleVar(cds, GetRecordOleVar(refreshcds,[]));
    refreshcds.next;
    while not refreshcds.eof do
    begin
        cds.Append;
        cds.post;
        RefreshRecordByOleVar(cds, GetRecordOleVar(refreshcds,[]));
        refreshcds.next;
    end;
    CDS.MergeChangeLog;
end;

procedure myupdateRefresh(CDS:TClientDataSet;const pTablename: WideString;
                           const pKeyfield: WideString;const backlist:WideString);
begin
    cds.Reconcile(iksdisp(iDispatch(DM.RemoteServer.AppServer)).updateRefresh(cds.Delta,ptablename,pkeyfield,backlist));
    CDS.MergeChangeLog;
end;

function myapplyupdate(cds:TClientDataSet; const ptablename: Widestring; const pkeyfield: Widestring): Boolean;
begin
    if cds.ChangeCount=0 then result:=False else
    begin
        result:=iksdisp(iDispatch(DM.RemoteServer.AppServer)).applyupdate(cds.Delta,ptablename,pkeyfield); //�������ݿ�
        cds.MergeChangeLog; //���delta
    end
end;
end.
