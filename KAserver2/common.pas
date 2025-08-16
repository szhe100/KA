unit common;

interface

Uses

 DbClient, ActiveX, DSIntf,SysUtils,provider,dbcommon,classes,db,windows,adodb; //

type
   TMyCDS = class(TClientDataSet);//����������Protected��һЩ�����ͱ���
  // TPropReader = class(TReader);
   procedure IniResultDS(delta:OleVariant);
   procedure writeds(ds:TADOquery;cds :Tclientdataset);
   function  ToClient():olevariant;

   var ferrords,fdeltads:tpacketdataset;

implementation

procedure Writeds(ds:TADOquery;cds:Tclientdataset); //д�������ݼ�
var
  I: Integer;
  TrueRecNo: dword;
  CurVal:variant;
begin
   TMyCDS(cds).UpdateCursorPos;
    TMyCDS(cds).DSCursor.GetRecordNumber(TrueRecNo);
   with FErrorDS do
   begin
      //if not Locate('ERROR_RECORDNO', Integer(TrueRecNo), []) then
      Append; //else Edit;
      SetFields([TrueRecNo, 0, '', '', 0, 0]);
   end;
  for I := 0 to ds.FieldCount - 1 do
  begin
    { Blobs, Bytes and VarBytes are not included in result packet }
    if (ds.Fields[I].IsBlob) or
       (ds.Fields[I].DataType in [ftBytes, ftVarBytes]) then
      continue;
    CurVal := ds.Fields[I].value;
 //  if not VarIsClear(CurVal) then
      FErrorDS.FieldByName(ds.Fields[I].FieldName).Value := CurVal;
  end;
  FErrorDS.Post; 
end;


procedure IniResultDS(delta:olevariant);//��ʼ�� �м䡢���� ���ݼ�
begin
    fdeltads := TPacketDataSet.Create(nil);
    fdeltads.data:=delta;
    FErrorDS := TPacketDataSet.Create(nil);
    FErrorDS.ObjectView := True;
    FErrorDS.CreateFromDelta(FDeltaDS);
end;

function  ToClient():olevariant; //���ؽ�����ݼ�
 begin
  result:=ferrords.Data;
  FErrorDS.free;
  fdeltads.Free;
  ferrords:=nil;
  fdeltads:=nil;
 end;


end.
