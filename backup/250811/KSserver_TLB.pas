unit KSserver_TLB;

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
// File generated on 2009-5-3 21:28:04 from Type Library described below.

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
// Type Lib: D:\develop\KingsunNH\KSserver\KSserver.tlb (1)
// IID\LCID: {DF825427-8281-46F7-AFE8-2B7D77513BEC}\0
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
  KSserverMajorVersion = 1;
  KSserverMinorVersion = 0;

  LIBID_KSserver: TGUID = '{DF825427-8281-46F7-AFE8-2B7D77513BEC}';

  IID_IKS: TGUID = '{F57F7AA0-4266-47D7-B8EB-A94CE476259D}';
  CLASS_KS: TGUID = '{1CBC84BA-1153-4EC8-87E3-25DB55FA3C39}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IKS = interface;
  IKSDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  KS = IKS;


// *********************************************************************//
// Interface: IKS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F57F7AA0-4266-47D7-B8EB-A94CE476259D}
// *********************************************************************//
  IKS = interface(IAppServer)
    ['{F57F7AA0-4266-47D7-B8EB-A94CE476259D}']
    function  applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool; safecall;
    function  updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IKSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F57F7AA0-4266-47D7-B8EB-A94CE476259D}
// *********************************************************************//
  IKSDisp = dispinterface
    ['{F57F7AA0-4266-47D7-B8EB-A94CE476259D}']
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
// The Class CoKS provides a Create and CreateRemote method to          
// create instances of the default interface IKS exposed by              
// the CoClass KS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKS = class
    class function Create: IKS;
    class function CreateRemote(const MachineName: string): IKS;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TKS
// Help String      : KS Object
// Default Interface: IKS
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TKSProperties= class;
{$ENDIF}
  TKS = class(TOleServer)
  private
    FIntf:        IKS;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TKSProperties;
    function      GetServerProperties: TKSProperties;
{$ENDIF}
    function      GetDefaultInterface: IKS;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IKS);
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
    property  DefaultInterface: IKS read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TKSProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TKS
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TKSProperties = class(TPersistent)
  private
    FServer:    TKS;
    function    GetDefaultInterface: IKS;
    constructor Create(AServer: TKS);
  protected
  public
    property DefaultInterface: IKS read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

implementation

uses ComObj;

class function CoKS.Create: IKS;
begin
  Result := CreateComObject(CLASS_KS) as IKS;
end;

class function CoKS.CreateRemote(const MachineName: string): IKS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KS) as IKS;
end;

procedure TKS.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1CBC84BA-1153-4EC8-87E3-25DB55FA3C39}';
    IntfIID:   '{F57F7AA0-4266-47D7-B8EB-A94CE476259D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TKS.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IKS;
  end;
end;

procedure TKS.ConnectTo(svrIntf: IKS);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TKS.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TKS.GetDefaultInterface: IKS;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TKS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TKSProperties.Create(Self);
{$ENDIF}
end;

destructor TKS.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TKS.GetServerProperties: TKSProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TKS.AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; 
                              MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_ApplyUpdates(ProviderName, Delta, MaxErrors, ErrorCount, OwnerData);
end;

function  TKS.AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                            Options: Integer; const CommandText: WideString; 
                            var Params: OleVariant; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_GetRecords(ProviderName, Count, RecsOut, Options, CommandText, 
                                           Params, OwnerData);
end;

function  TKS.AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_DataRequest(ProviderName, Data);
end;

function  TKS.AS_GetProviderNames: OleVariant;
begin
  Result := DefaultInterface.AS_GetProviderNames;
end;

function  TKS.AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_GetParams(ProviderName, OwnerData);
end;

function  TKS.AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                            var OwnerData: OleVariant): OleVariant;
begin
  Result := DefaultInterface.AS_RowRequest(ProviderName, Row, RequestType, OwnerData);
end;

procedure TKS.AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant);
begin
  DefaultInterface.AS_Execute(ProviderName, CommandText, Params, OwnerData);
end;

function  TKS.applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                          const pkeyfield: WideString): WordBool;
begin
  Result := DefaultInterface.applyupdate(pdelta, ptablename, pkeyfield);
end;

function  TKS.updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                            const pkeyfield: WideString; const backlist: WideString): OleVariant;
begin
  Result := DefaultInterface.updaterefresh(pdelta, ptablename, pkeyfield, backlist);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TKSProperties.Create(AServer: TKS);
begin
  inherited Create;
  FServer := AServer;
end;

function TKSProperties.GetDefaultInterface: IKS;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents('Servers',[TKS]);
end;

end.
