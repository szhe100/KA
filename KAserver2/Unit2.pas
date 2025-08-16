unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, KAserver2_TLB, StdVcl, Db, ADODB, Provider, common, Variants;

type
  TKA2 = class(TRemoteDataModule, IKA)
    ADOCon_KA: TADOConnection;
    department: TADOQuery;
    PubQry: TADOQuery;
    pvdpubqry: TDataSetProvider;
    pvdpubquery: TDataSetProvider;
    PubQuery: TADODataSet;
    district: TADOQuery;
    districtrec_id: TAutoIncField;
    districttype_id: TIntegerField;
    districtparent: TIntegerField;
    districtzdesc: TStringField;
    districtzinfo: TMemoField;
    sysframe: TADOQuery;
    pvdsysframe: TDataSetProvider;
    updateqry: TADOQuery;
    edistrict: TADOQuery;
    edistrictdist_id: TIntegerField;
    edistrictdist_name: TStringField;
    pvdedistrict: TDataSetProvider;
    qryimage: TADOQuery;
    pvdqryimage: TDataSetProvider;
    qryimagerec_id: TAutoIncField;
    qryimagetype_id: TIntegerField;
    qryimageid: TIntegerField;
    qryimagezimage1: TBlobField;
    qryimagegraphclass1: TStringField;
    qryimagezimage2: TBlobField;
    qryimagegraphclass2: TStringField;
    qryimagezimage3: TBlobField;
    qryimagegraphclass3: TStringField;
    qryimagezimage4: TBlobField;
    qryimagegraphclass4: TStringField;
    qryimagezimage5: TBlobField;
    qryimagegraphclass5: TStringField;
    pvdepartment: TDataSetProvider;
    pvdistrict: TDataSetProvider;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure RemoteDataModuleDestroy(Sender: TObject);
    procedure pvdbill_dtl1BeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pvdbill_dtl2BeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pvdbrokermedBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure ADOCon_KABeforeConnect(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function applyupdate(pdelta: OleVariant; const ptablename,
      pkeyfield: WideString): WordBool; safecall;
    function vartosql(value: Variant): wideString;
    function ExeSql(SQLSTR:String; Query:TADOQuery; Flag:Boolean=true):Boolean;
    function VarToStr(const V: Variant): string;
    function VarToStrDef(const V: Variant; const ADefault: string): string;
    function updaterefresh(pdelta: OleVariant; const ptablename, pkeyfield,
      backlist: WideString): OleVariant; safecall;
  public
    { Public declarations }
  end;

implementation

uses Unit1;

{$R *.DFM}

class procedure TKA2.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TKA2.RemoteDataModuleCreate(Sender: TObject);
begin
  { Update the client counter }
//  MainForm.UpdateClientCount(1);
end;

procedure TKA2.RemoteDataModuleDestroy(Sender: TObject);
begin
  { Update the client counter }
//  MainForm.UpdateClientCount(-1);
end;

procedure TKA2.pvdbill_dtl1BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  // 避免增加、修改、删除 非tb_bill_dtl表的数据
DeltaDS.fieldbyname('med_name').providerflags:=DeltaDS.fieldbyname('med_name').providerflags - [pfinupdate];
DeltaDS.fieldbyname('med_code').providerflags:=DeltaDS.fieldbyname('med_code').providerflags - [pfinupdate];
DeltaDS.fieldbyname('specifi').providerflags:=DeltaDS.fieldbyname('specifi').providerflags - [pfinupdate];
DeltaDS.fieldbyname('med_unit').providerflags:=DeltaDS.fieldbyname('med_unit').providerflags - [pfinupdate];
DeltaDS.fieldbyname('qtyperpack').providerflags:=DeltaDS.fieldbyname('qtyperpack').providerflags - [pfinupdate];
DeltaDS.fieldbyname('pdt_place').providerflags:=DeltaDS.fieldbyname('pdt_place').providerflags - [pfinupdate];
end;

procedure TKA2.pvdbill_dtl2BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  // 避免增加、修改、删除 非tb_bill_dtl表的数据
DeltaDS.fieldbyname('med_name').providerflags:=DeltaDS.fieldbyname('med_name').providerflags - [pfinupdate];
DeltaDS.fieldbyname('med_code').providerflags:=DeltaDS.fieldbyname('med_code').providerflags - [pfinupdate];
DeltaDS.fieldbyname('specifi').providerflags:=DeltaDS.fieldbyname('specifi').providerflags - [pfinupdate];
DeltaDS.fieldbyname('med_unit').providerflags:=DeltaDS.fieldbyname('med_unit').providerflags - [pfinupdate];
DeltaDS.fieldbyname('qtyperpack').providerflags:=DeltaDS.fieldbyname('qtyperpack').providerflags - [pfinupdate];
DeltaDS.fieldbyname('pdt_place').providerflags:=DeltaDS.fieldbyname('pdt_place').providerflags - [pfinupdate];
DeltaDS.fieldbyname('broker').providerflags:=DeltaDS.fieldbyname('broker').providerflags - [pfinupdate];
end;

procedure TKA2.pvdbrokermedBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
// 避免增加、修改、删除 非tb_brokermed 表的数据
DeltaDS.fieldbyname('lead_name').providerflags:=DeltaDS.fieldbyname('lead_name').providerflags - [pfinupdate];
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
function TKA2.VarToStr(const V: Variant): string;
begin
  Result := VarToStrDef(V, '');
end;

function TKA2.VarToStrDef(const V: Variant; const ADefault: string): string;
begin
  if not VarIsNull(V) then
    Result := V
  else
    Result := ADefault;
end;

function TKA2.vartosql(value: Variant): wideString;
var tmp:widestring;
begin
if (varisnull(Value)) or (varisempty(Value))
    then Result:='NULL'
    else
    case Vartype(value) of
      varDate:
      begin
        tmp := formatDatetime('yyyy-mm-dd hh:mm:ss', VartoDatetime(Value));
        Result:=Quotedstr(tmp);
      end;
      varString,varOlestr:
      Result:=Quotedstr(Trim(Vartostr(Value)));
      varboolean:
      begin
        if Value then
          Result:='1'
         else
          Result:='0';
      end;
      varSmallint,varInteger,varDouble,varCurrency: //,varShortInt,varInt64 ,varLongWord,
      begin
        Result:=trim(Vartostr(Value));
      end;
      else
        Result:=Quotedstr(Trim(Vartostr(Value)));
    end;
end;

function TKA2.ExeSql(SQLSTR:String; Query: TADOQuery; Flag: Boolean = true) : Boolean;
begin
    Query.close;
    Query.SQL.clear;
    Query.SQL.Add(SQLSTR);
    try
        if flag then Query.open
            else Query.ExecSql;
    except
        result:=   false;
        exit;
    end;
    result:=   true;
end;

function TKA2.applyupdate(pdelta: OleVariant; const ptablename,
  pkeyfield: WideString): WordBool;
var
    i:integer;
    s1,s2:String;
    Cmdstr:string;
    FieldList:TstringList;
    Cdsupdate:Tclientdataset;
begin
    if VarisNull(pdelta) then Exit;
    try
        with ADOCon_KA do
            begin
                FieldList:=Tstringlist.Create;
                GetFieldNames(pTablename,FieldList);
            end;
        Cdsupdate:=Tclientdataset.Create(nil);
        Cdsupdate.Close;
        Cdsupdate.Data:=pdelta;
        if not Cdsupdate.Active then Cdsupdate.Open;
        for i:=1 to fieldList.Count do
            if Cdsupdate.FindField(FieldList[i-1])<>nil then cdsupdate.FindField(FieldList[i-1]).tag:=1;
        FieldList.Free;

        if CDSupdate.RecordCount>0 then
        begin
            CDSupdate.First;
            s1:='';
            s2:='';
            while not CDSupdate.Eof do  
            begin
                CmdStr:='';  
                case Cdsupdate.UpdateStatus of
                    usUnmodified:  
                        begin
                            S2:=VartoSql(cdsupdate[pkeyField]);  
                        end;
                    usModified:
                        begin
                            s1:='';  
                            for i:=1 to CDSupdate.FieldCount   do
                                if (not cdsupdate.Fields[i-1].isNull) and (Cdsupdate.Fields[i-1].tag=1)   then
                                    begin
                                        if s1='' then
                                            s1:=Trim(CDSupdate.Fields[i-1].FieldName) +'='+ vartosql(Cdsupdate.Fields[i-1].value)
                                            else  
                                            s1:=s1+ ','+ Trim(CDSupdate.Fields[i-1].FieldName)+ '   =   '+ vartosql(Cdsupdate.Fields[i-1].value);
                                    end;  
                                if s1<>'' then
                                    begin  
                                        CmdStr:=' update ' +ptablename +' set '+ s1 +' where ' +pkeyField +'   =   ' +s2;
                                    end;  
                        end;
                    usInserted:  
                        begin
                            s1:='';  
                            s2:='';
                            for i:=1 to Cdsupdate.FieldCount do
                                if   (not Cdsupdate.Fields[i-1].isnull) and (cdsupdate.Fields[i-1].tag=1)   then
                                    begin  
                                        if s1='' then
                                            begin  
                                                s1:=Trim(Cdsupdate.Fields[i-1].FieldName);
                                                s2:=Vartosql(Cdsupdate.Fields[i-1].value);  
                                            end
                                            else  
                                            begin
                                                s1:=s1 +',' +Trim(Cdsupdate.Fields[i-1].FieldName);
                                                s2:=s2 +',' +Vartosql(Cdsupdate.Fields[i-1].value);
                                            end;  
                                    end;
                                if s1<>'' then
                                    begin
                                        CmdStr:=' Insert into ' +pTablename+ '('+ s1 +')   values('+ s2 +')';
                                    end;
                        end;  
                    usDeleted:
                        begin  
                            s2:=Vartosql(Cdsupdate[pkeyField]);
                            CmdStr:='Delete ' +ptablename +' where ' +pkeyField +'='+ s2;  
                        end;
                end;
                if ExeSql(Cmdstr,UpdateQry,False) then
                    Result:=True
                else
                    Result:=False;
                Cdsupdate.Next;  
            end;
        end;
    finally
        Cdsupdate.Close;  
        Cdsupdate.Free();
    end;
end;
//更新数据库，并自动返回新插入自增长字段
function TKA2.updateRefresh(pdelta: OleVariant; const ptablename, pkeyfield,
  BackList: WideString): OleVariant;
var   i:integer;
      s1,s2:String;
      Cmdstr:string;
      FieldList:TstringList;
      Cdsupdate:Tclientdataset;
      keyReturn:boolean;
  begin
      keyreturn:=false;
      if VarisNull(pdelta) then
          Exit;
      try
          IniResultDS(pDelta);
          with ADOCon_KA do
              begin
                  FieldList:=Tstringlist.Create;
                  GetFieldNames(pTablename,FieldList);
              end;
          Cdsupdate:=Tclientdataset.Create(nil);  
          Cdsupdate.Close;
          Cdsupdate.Data:=pdelta;  
          if not Cdsupdate.Active then Cdsupdate.Open;
          for i:=1 to fieldList.Count do
              if Cdsupdate.FindField(FieldList[i-1])<>nil then
                  cdsupdate.FindField(FieldList[i-1]).tag:=1;  
          FieldList.Free;
   
          if CDSupdate.RecordCount>0 then
          begin
              CDSupdate.First;  
              s1:='';  
              s2:='';
              while not CDSupdate.Eof do
                  begin  
                      CmdStr:='';
                      case Cdsupdate.UpdateStatus of
                          usUnmodified:  
                              begin
                                  S2:=VartoSql(cdsupdate[pkeyField]);  
                              end;  
                          usModified:
                              begin  
                                  s1:='';  
                                  for i:=1 to CDSupdate.FieldCount  do
                                      if (not cdsupdate.Fields[i-1].isNull) and (Cdsupdate.Fields[i-1].tag=1)   then
                                          begin  
                                              if s1='' then
                                                  s1:=Trim(CDSupdate.Fields[i-1].FieldName) +'='+ vartosql(Cdsupdate.Fields[i-1].value)
                                                  else  
                                                  s1:=s1+ ','+ Trim(CDSupdate.Fields[i-1].FieldName)+ '   =   '+ vartosql(Cdsupdate.Fields[i-1].value);
                                          end;  
                                      if   s1<>'' then
                                          begin
                                              CmdStr:=' update ' +ptablename +' set '+ s1 +' where ' +pkeyField +'   =   ' +s2;
                                          end;  
                              end;
                          usInserted:  
                              begin  
                                  s1:='';
                                  s2:='';
                                  for i:=1 to Cdsupdate.FieldCount do
                                      if (not Cdsupdate.Fields[i-1].isnull) and (cdsupdate.Fields[i-1].tag=1)   then
                                          begin  
                                              if s1='' then
                                                  begin
                                                      s1:=Trim(Cdsupdate.Fields[i-1].FieldName);  
                                                      s2:=Vartosql(Cdsupdate.Fields[i-1].value);  
                                                  end
                                                  else  
                                                  begin  
                                                      s1:=s1 +',' +Trim(Cdsupdate.Fields[i-1].FieldName);
                                                      s2:=s2 +',' +Vartosql(Cdsupdate.Fields[i-1].value);
                                                  end;  
                                          end;
                                      if  s1<>'' then  
                                          begin  
                                              CmdStr:=' Insert into ' +pTablename+ '('+ s1 +') values('+ s2 +')';
                                          end;  
                              end;  
                          usDeleted:
                              begin  
                                  s2:=Vartosql(Cdsupdate[pkeyField]);
                                  CmdStr:='Delete ' +ptablename +' where ' +pkeyField +'='+ s2;
                              end;
                      end;
                      if cmdstr<>'' then
                        begin
                        if Cdsupdate.UpdateStatus =usInserted  then
                        begin
                            cmdstr:= cmdstr+ ' select @@identity as '+pkeyfield;
                            ExeSql(Cmdstr,UpdateQry,true);
                            s2:=UpdateQry.FieldByName(pkeyfield).asstring;
                            keyreturn:=true;
                        end
                        else ExeSql(Cmdstr,UpdateQry,False);
                        if backlist<>'' then
                        begin
                          if keyreturn then
                            cmdstr:='select top 1 '+pkeyField+' ,'+backlist+' from '+ptablename +' where ' +pkeyField +'='+ s2
                          else
                            cmdstr:='select top 1 '+backlist+' from '+ptablename +' where ' +pkeyField +'='+ s2;
                            ExeSql(Cmdstr,UpdateQry,true);
                        end;
                          writeds(UpdateQry,Cdsupdate);
                      end;
                      UpdateQry.Close;
                      Cdsupdate.Next;
                  end;  
          end;
      finally  
          Cdsupdate.Close;  
          Cdsupdate.Free();
      end;
      result:=toclient();
  end;
/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TKA2.ADOCon_KABeforeConnect(Sender: TObject);
begin
ADOCon_KA.ConnectionString:=MainForm.pubcom.ConnectionString;
end;

initialization
  TComponentFactory.Create(ComServer, TKA2,
    Class_KA2, ciMultiInstance, tmApartment);
end.
