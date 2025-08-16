unit KAserver_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.88  $
// File generated on 2010-4-21 18:55:30 from Type Library described below.

// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
// ************************************************************************ //
// Type Lib: D:\develop\KingAGE\KAserver\KAserver.tlb (1)
// IID\LCID: {736E186A-0788-4410-A996-E2426D0A9798}\0
// Helpfile: 
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (3) v4.0 StdVCL, (C:\WINDOWS\system32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL, 
  MIDAS;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  KAserverMajorVersion = 1;
  KAserverMinorVersion = 0;

  LIBID_KAserver: TGUID = '{736E186A-0788-4410-A996-E2426D0A9798}';

  IID_IKA: TGUID = '{A607BA2F-B19F-414B-A438-E97108EEF115}';
  CLASS_KA: TGUID = '{665244F6-FFFA-4002-ADF8-32004DFA57DA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IKA = interface;
  IKADisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  KA = IKA;


// *********************************************************************//
// Interface: IKA
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A607BA2F-B19F-414B-A438-E97108EEF115}
// *********************************************************************//
  IKA = interface(IAppServer)
    ['{A607BA2F-B19F-414B-A438-E97108EEF115}']
    function  applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool; safecall;
    function  updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IKADisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A607BA2F-B19F-414B-A438-E97108EEF115}
// *********************************************************************//
  IKADisp = dispinterface
    ['{A607BA2F-B19F-414B-A438-E97108EEF115}']
    function  applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool; dispid 1;
    function  updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant; dispid 2;
    function  AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; 
                              MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function  AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                            Options: Integer; const CommandText: WideString; 
                            var Params: OleVariant; var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function  AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function  AS_GetProviderNames: OleVariant; dispid 20000003;
    function  AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function  AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                            var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoKA provides a Create and CreateRemote method to          
// create instances of the default interface IKA exposed by              
// the CoClass KA. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKA = class
    class function Create: IKA;
    class function CreateRemote(const MachineName: string): IKA;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TKA
// Help String      : KA Object
// Default Interface: IKA
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TKAProperties= class;
{$ENDIF}
  TKA = class(TOleServer)
  private
    FIntf:        IKA;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TKAProperties;
    function      GetServerProperties: TKAProperties;
{$ENDIF}
    function      GetDefaultInterface: IKA;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IKA);
    procedure Disconnect; override;
    function  AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; 
                              MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
    function  AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                            Options: Integer; const CommandText: WideString; 
                            var Params: OleVariant; var OwnerData: OleVariant): OleVariant;
    function  AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
    function  AS_GetProviderNames: OleVariant;
    function  AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
    function  AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                            var OwnerData: OleVariant): OleVariant;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant);
    function  applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool;
    function  updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant;
    property  DefaultInterface: IKA read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TKAProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TKA
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TKAProperties = class(TPersistent)
  private
    FServer:    TKA;
    function    GetDefaultInterface: IKA;
    constructor Create(AServer: TKA);
  protected
  public
    property DefaultInterface: IKA read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

implementation

uses ComObj;

class function CoKA.Create: IKA;
begin
  Result := CreateComObject(CLASS_KA) as IKA;
end;

class function CoKA.CreateRemote(const MachineName: string): IKA;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KA) as IKA;
end;

procedure TKA.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{665244F6-FFFA-4002-ADF8-32004DFA57DA}';
    IntfIID:   '{A607BA2F-B19F-414B-A438-E97108EEF115}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TKA.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IKA;
  end;
end;

procedure TKA.ConnectTo(svrIntf: IKA);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TKA.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TKA.GetDefaultInterface: IKA;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TKA.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TKAProperties.Create(Self);
{$ENDIF}
end;

destructor TKA.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TKA.GetServerProperties: TKAProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TKA.AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; 
                              MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_ApplyUpdates(ProviderName, Delta, MaxErrors, ErrorCount, OwnerData);
end;

function  TKA.AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                            Options: Integer; const CommandText: WideString; 
                            var Params: OleVariant; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_GetRecords(ProviderName, Count, RecsOut, Options, CommandText, 
                                           Params, OwnerData);
end;

function  TKA.AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_DataRequest(ProviderName, Data);
end;

function  TKA.AS_GetProviderNames: OleVariant;
begin
  Result := DefaultInterface.AS_GetProviderNames;
end;

function  TKA.AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_GetParams(ProviderName, OwnerData);
end;

function  TKA.AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                            var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_RowRequest(ProviderName, Row, RequestType, OwnerData);
end;

procedure TKA.AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant);
begin
  DefaultInterface.AS_Execute(ProviderName, CommandText, Params, OwnerData);
end;

function  TKA.applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool;
begin
  Result := DefaultInterface.applyupdate(pdelta, ptablename, pkeyfield);
end;

function  TKA.updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant;
begin
  Result := DefaultInterface.updaterefresh(pdelta, ptablename, pkeyfield, backlist);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TKAProperties.Create(AServer: TKA);
begin
  inherited Create;
  FServer := AServer;
end;

function TKAProperties.GetDefaultInterface: IKA;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents('Servers',[TKA]);
end;

end.
