unit KAserver2_TLB;

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

// PASTLWTR : 1.2
// File generated on 2020-04-22 20:03:09 from Type Library described below.

// ************************************************************************  //
// Type Lib: E:\Develop\KingAgeYPH\KAserver2\KAserver2.tlb (1)
// LIBID: {736E186A-0788-4410-A996-E2426D0A9798}
// LCID: 0
// Helpfile: 
// HelpString: KAserver Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\system32\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  KAserver2MajorVersion = 1;
  KAserver2MinorVersion = 0;

  LIBID_KAserver2: TGUID = '{736E186A-0788-4410-A996-E2426D0A9798}';

  IID_IKA: TGUID = '{A607BA2F-B19F-414B-A438-E97108EEF115}';
  CLASS_KA2: TGUID = '{665244F6-FFFA-4002-ADF8-32004DFA88DA}';
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
  KA2 = IKA;


// *********************************************************************//
// Interface: IKA
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A607BA2F-B19F-414B-A438-E97108EEF115}
// *********************************************************************//
  IKA = interface(IAppServer)
    ['{A607BA2F-B19F-414B-A438-E97108EEF115}']
    function applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                         const pkeyfield: WideString): WordBool; safecall;
    function updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                           const pkeyfield: WideString; const backlist: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IKADisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A607BA2F-B19F-414B-A438-E97108EEF115}
// *********************************************************************//
  IKADisp = dispinterface
    ['{A607BA2F-B19F-414B-A438-E97108EEF115}']
    function applyupdate(pdelta: OleVariant; const ptablename: WideString; 
                         const pkeyfield: WideString): WordBool; dispid 1;
    function updaterefresh(pdelta: OleVariant; const ptablename: WideString; 
                           const pkeyfield: WideString; const backlist: WideString): OleVariant; dispid 2;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoKA2 provides a Create and CreateRemote method to          
// create instances of the default interface IKA exposed by              
// the CoClass KA2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKA2 = class
    class function Create: IKA;
    class function CreateRemote(const MachineName: string): IKA;
  end;

implementation

uses ComObj;

class function CoKA2.Create: IKA;
begin
  Result := CreateComObject(CLASS_KA2) as IKA;
end;

class function CoKA2.CreateRemote(const MachineName: string): IKA;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KA2) as IKA;
end;

end.
