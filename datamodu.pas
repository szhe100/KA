unit datamodu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, dxDBELib, shellapi, DateUtils,
  Db, DBClient, MConnect, SConnect, UnitRecError, ObjBrkr, ADODB, WinSock, MidasLib, inifiles, RegExpr;

type

//////  用于 注册码 验证  /////////////////////////////////////////////////
  TMacAddress = array[1..8] of byte;

  TIP_ADDRESS_STRING = array[0..15] of char; //  IP as string
  PTIP_ADDR_STRING = ^TIP_ADDR_STRING;
  TIP_ADDR_STRING = packed record // for use in linked lists
    Next: PTIP_ADDR_STRING;
    IpAddress: TIP_ADDRESS_STRING;
    IpMask: TIP_ADDRESS_STRING;
    Context: DWORD;
  end;

  TTIME_T = array[1..325] of byte; // hack! MS time.h missing!

  PTIP_ADAPTER_INFO = ^TIP_ADAPTER_INFO;
  TIP_ADAPTER_INFO = packed record
    Next: PTIP_ADAPTER_INFO;
    ComboIndex: DWORD;
    AdapterName: array[1..256 + 4] of char;
    Description: array[1..128 + 4] of char;
    AddressLength: UINT;
    Address: TMacAddress;
    Index: DWORD;
    aType: UINT;
    DHCPEnabled: UINT;
    CurrentIPAddress: PTIP_ADDR_STRING;
    IPAddressList: TIP_ADDR_STRING;
    GatewayList: TIP_ADDR_STRING;
    DHCPServer: TIP_ADDR_STRING;
    HaveWINS: BOOL;
    PrimaryWINSServer: TIP_ADDR_STRING;
    SecondaryWINSServer: TIP_ADDR_STRING;
    LeaseObtained: TTIME_T; //??
    LeaseExpires: TTIME_T; //??
  end;

/////////////////////////////////////////////////////////////////////////////////

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TDM = class(TDataModule)
    cdsunit: TClientDataSet;
    DSunit: TDataSource;
    customer: TClientDataSet;
    customermate_id: TIntegerField;
    customermate_code: TStringField;
    customermate_name: TStringField;
    customerlegalman: TStringField;
    customerdeputy: TStringField;
    customerdeputy_title: TStringField;
    customerphone: TStringField;
    customerfax: TStringField;
    customeraddress: TStringField;
    customerpostalcode: TStringField;
    customeracnt_bank: TStringField;
    customerbank_account: TStringField;
    customertax_code: TStringField;
    customerprice_type: TIntegerField;
    customerqry_code: TStringField;
    customersettle_type: TIntegerField;
    customerpick_ord: TIntegerField;
    customercredit_amot: TIntegerField;
    customerremark: TMemoField;
    customerstop_by: TIntegerField;
    customerstop_for: TStringField;
    customerstop_dt: TDateTimeField;
    DScustomer: TDataSource;
    pubqry: TClientDataSet;
    DSpubqry: TDataSource;
    customerstop_yn: TBooleanField;
    department: TClientDataSet;
    DSdepartment: TDataSource;
    departmentobj_id: TAutoIncField;
    departmentzdesc: TStringField;
    staff: TClientDataSet;
    DSstaff: TDataSource;
    staffsta_id: TAutoIncField;
    staffdept_id: TIntegerField;
    staffzname: TStringField;
    staffzcode: TStringField;
    staffpersonalID: TStringField;
    staffbirthdate: TDateTimeField;
    staffhiredate: TDateTimeField;
    staffzpost: TStringField;
    staffphone: TStringField;
    staffnotes: TMemoField;
    staffpassword: TStringField;
    staffzright: TMemoField;
    staffoperative: TBooleanField;
    staffstop_yn: TBooleanField;
    staffstop_by: TIntegerField;
    staffstop_for: TStringField;
    staffstop_dt: TDateTimeField;
    staffdepartment: TStringField;
    stafforigin: TStringField;
    staffdegree: TStringField;
    stafftitle: TStringField;
    staffresidence: TStringField;
    med_type: TClientDataSet;
    DSmed_type: TDataSource;
    medstock: TClientDataSet;
    DSmedstock: TDataSource;
    medstockrec_id: TAutoIncField;
    medstockmed_id: TIntegerField;
    medstockmed_code: TStringField;
    medstockmed_name: TStringField;
    imp_type: TClientDataSet;
    DSimp_type: TDataSource;
    exp_type: TClientDataSet;
    DSexp_type: TDataSource;
    settle_type: TClientDataSet;
    DSsettle_type: TDataSource;
    settle_typeobj_id: TAutoIncField;
    settle_typezdesc: TStringField;
    imp_typeobj_id: TAutoIncField;
    imp_typezdesc: TStringField;
    exp_typeobj_id: TAutoIncField;
    exp_typezdesc: TStringField;
    cdsunitobj_id: TAutoIncField;
    cdsunitzdesc: TStringField;
    med_typeobj_id: TAutoIncField;
    med_typezdesc: TStringField;
    imp_typeobj_type_id: TIntegerField;
    exp_typeobj_type_id: TIntegerField;
    settle_typeobj_type_id: TIntegerField;
    cdsunitobj_type_id: TIntegerField;
    med_typeobj_type_id: TIntegerField;
    picmedinfoc: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    BCDField16: TBCDField;
    BCDField17: TBCDField;
    MemoField1: TMemoField;
    BooleanField1: TBooleanField;
    StringField10: TStringField;
    BooleanField2: TBooleanField;
    StringField11: TStringField;
    StringField13: TStringField;
    IntegerField7: TIntegerField;
    AutoIncField3: TAutoIncField;
    IntegerField8: TIntegerField;
    BCDField20: TBCDField;
    BCDField22: TBCDField;
    BCDField24: TBCDField;
    BCDField25: TBCDField;
    BCDField26: TBCDField;
    BCDField27: TBCDField;
    BCDField29: TBCDField;
    BCDField30: TBCDField;
    BCDField31: TBCDField;
    BCDField32: TBCDField;
    BCDField33: TBCDField;
    DSpicmedinfoc: TDataSource;
    sysoption: TClientDataSet;
    DSsysoption: TDataSource;
    cdsmedinfo: TClientDataSet;
    DSmedinfo: TDataSource;
    medstockimp_pause: TBooleanField;
    medstockexp_pause: TBooleanField;
    medstockdeficient: TBooleanField;
    medstockstop_yn: TBooleanField;
    medstockstop_by: TIntegerField;
    medstockstop_for: TStringField;
    medstockstop_dt: TDateTimeField;
    medstockCstop_by: TStringField;
    medstockprice: TBCDField;
    picmedinfocbarcode: TStringField;
    picmedinfocprice: TBCDField;
    medstockspecifi: TStringField;
    medstockpdt_place: TStringField;
    medstockmed_unit: TStringField;
    medstockqtyperpack: TBCDField;
    rnp_type: TClientDataSet;
    DSrnp_type: TDataSource;
    rnp_typeobj_id: TAutoIncField;
    rnp_typeobj_type_id: TIntegerField;
    rnp_typezdesc: TStringField;
    picmedinfocbidprice: TBCDField;
    picmedinfocavg_type: TIntegerField;
    departmentobj_type_id: TIntegerField;
    sysframe: TClientDataSet;
    DSsysframe: TDataSource;
    sysframesf_id: TAutoIncField;
    sysframesf_parent: TIntegerField;
    sysframesf_title: TStringField;
    sysframesf_invoke: TIntegerField;
    user: TClientDataSet;
    DSuser: TDataSource;
    userzname: TStringField;
    userzdesc: TStringField;
    useright: TClientDataSet;
    DSuseright: TDataSource;
    userightsta_id: TIntegerField;
    userightsf_id: TIntegerField;
    userightsf_title: TStringField;
    usersta_id: TIntegerField;
    RemoteServer: TSocketConnection;
    customertax_rate: TBCDField;
    DSexgqry: TDataSource;
    exgqry: TClientDataSet;
    exgqryrec_id: TAutoIncField;
    exgqrybod_cd: TStringField;
    exgqrycreater: TStringField;
    exgqrybod_type: TStringField;
    exgqrybusi_type: TStringField;
    exgqrybat_cd: TStringField;
    exgqryprice: TBCDField;
    exgqryimp_qty: TBCDField;
    exgqryimp_amt: TBCDField;
    exgqryexp_qty: TBCDField;
    exgqryexp_amt: TBCDField;
    exgqrybod_desc: TStringField;
    SimpleObjectBroker1: TSimpleObjectBroker;
    cdsmedinforec_id: TAutoIncField;
    cdsmedinfostock_id: TIntegerField;
    cdsmedinfomed_id: TIntegerField;
    cdsmedinforetailprice: TBCDField;
    cdsmedinfowholeprice: TBCDField;
    cdsmedinfocontractprice: TBCDField;
    cdsmedinfoagentprice: TBCDField;
    cdsmedinfomemberprice: TBCDField;
    cdsmedinfobidprice: TBCDField;
    cdsmedinfosupplyprice: TBCDField;
    cdsmedinfoquotaprice: TBCDField;
    cdsmedinfomax_suprice: TBCDField;
    cdsmedinfolat_suprice: TBCDField;
    cdsmedinfomin_salprice: TBCDField;
    cdsmedinfolat_salprice: TBCDField;
    cdsmedinfoavg_type: TIntegerField;
    cdsmedinfomed_code: TStringField;
    cdsmedinfomed_name: TStringField;
    cdsmedinfomed_alia: TStringField;
    cdsmedinfospecifi: TStringField;
    cdsmedinfounit_id: TIntegerField;
    cdsmedinfomed_type_id: TIntegerField;
    cdsmedinfopdt_place: TStringField;
    cdsmedinfoqtyperpack: TBCDField;
    cdsmedinfosite_code: TStringField;
    cdsmedinfootc_rx: TBooleanField;
    cdsmedinfogmp: TBooleanField;
    cdsmedinfoprice: TBCDField;
    mateqry: TClientDataSet;
    exgqrybod_id: TAutoIncField;
    DateTimeField2: TDateTimeField;
    StringField9: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    exgqryimp_amot: TBCDField;
    exgqryexp_amot: TBCDField;
    exgqryrecption: TBCDField;
    exgqrypay: TBCDField;
    exgqrydue: TBCDField;
    DSmateqry: TDataSource;
    staffreceipt: TBooleanField;
    receipt: TClientDataSet;
    DSreceipt: TDataSource;
    receiptsta_id: TAutoIncField;
    receiptzname: TStringField;
    homebank: TClientDataSet;
    DShomebank: TDataSource;
    customerdue_limit: TIntegerField;
    customerprice_cent: TBCDField;
    picmedinfo: TClientDataSet;
    picmedinfomed_id: TAutoIncField;
    picmedinfomed_code: TStringField;
    picmedinfomed_name: TStringField;
    picmedinfomed_alia: TStringField;
    picmedinfoforeigname: TStringField;
    picmedinfospecifi: TStringField;
    picmedinfounit_id: TIntegerField;
    picmedinfomed_type_id: TIntegerField;
    picmedinfopdt_place: TStringField;
    picmedinfoqtyperbox: TBCDField;
    picmedinfoqtyperpack: TBCDField;
    picmedinfonotes: TMemoField;
    picmedinfootc_rx: TBooleanField;
    picmedinfoappv_docu: TStringField;
    picmedinfospecial_treat: TBooleanField;
    picmedinfoqry_code: TStringField;
    picmedinfoimp_pause: TBooleanField;
    picmedinfoexp_pause: TBooleanField;
    picmedinfodeficient: TBooleanField;
    picmedinfostop_yn: TBooleanField;
    picmedinfostop_by: TIntegerField;
    picmedinfostop_for: TStringField;
    picmedinfostop_dt: TDateTimeField;
    picmedinfosite_code: TStringField;
    picmedinfopick_ord: TIntegerField;
    picmedinforec_id: TAutoIncField;
    picmedinfostock_id: TIntegerField;
    picmedinfoqty: TBCDField;
    picmedinfoprice: TBCDField;
    picmedinforetailprice: TBCDField;
    picmedinfowholeprice: TBCDField;
    picmedinfocontractprice: TBCDField;
    picmedinfoquotaprice: TBCDField;
    picmedinfoagentprice: TBCDField;
    picmedinfobidprice: TBCDField;
    picmedinfomemberprice: TBCDField;
    picmedinfomax_suprice: TBCDField;
    picmedinfolat_suprice: TBCDField;
    picmedinfomin_salprice: TBCDField;
    picmedinfolat_salprice: TBCDField;
    picmedinfosupplyprice: TBCDField;
    picmedinfobarcode: TStringField;
    picmedinfoavg_type: TIntegerField;
    DSpicmedinfo: TDataSource;
    staffuse_priority: TIntegerField;
    staffbroker: TBooleanField;
    customerdescription: TStringField;
    customercreat_dt: TDateTimeField;
    customercreat_by: TIntegerField;
    staffcreat_dt: TDateTimeField;
    staffcreat_by: TIntegerField;
    stafffax: TStringField;
    cdsmedinfocreat_dt: TDateTimeField;
    cdsmedinfocreat_by: TIntegerField;
    cdsmedinfocreat_for: TStringField;
    cdsmedinfoLcreat_by: TStringField;
    customermodify_dt: TDateTimeField;
    customermodify_by: TIntegerField;
    staffstorage: TBooleanField;
    storage: TClientDataSet;
    AutoIncField6: TAutoIncField;
    StringField31: TStringField;
    DSstorage: TDataSource;
    homebankbank_name: TStringField;
    homebankbank_acnt: TStringField;
    homebankbalance: TBCDField;
    bank: TClientDataSet;
    bankobj_id: TAutoIncField;
    bankobj_type_id: TIntegerField;
    bankzdesc: TStringField;
    DSbank: TDataSource;
    cdsmedinfomarketprice: TBCDField;
    homebankbank_id: TAutoIncField;
    staffsex: TBooleanField;
    picmedinfoqty1: TBCDField;
    picmedinfoqty2: TBCDField;
    allot_type: TClientDataSet;
    AutoIncField8: TAutoIncField;
    StringField39: TStringField;
    IntegerField12: TIntegerField;
    DSallot_type: TDataSource;
    stockqry: TClientDataSet;
    stockqrymed_code: TStringField;
    stockqrymed_name: TStringField;
    stockqryspecifi: TStringField;
    stockqrypdt_place: TStringField;
    stockqrymed_unit: TStringField;
    stockqrymed_type: TStringField;
    stockqryqtyperpack: TBCDField;
    stockqryprice: TBCDField;
    stockqryGMP: TBooleanField;
    stockqryotc_rx: TBooleanField;
    stockqrybat_cd: TStringField;
    stockqrymed_id: TAutoIncField;
    stockqrystock_amot: TBCDField;
    stockqryvalid_dt: TStringField;
    cdsmedinfolow_limit_price: TBCDField;
    SaveDialog: TSaveDialog;
    staffaccount: TBooleanField;
    staffsupervisor: TBooleanField;
    staffpurchase: TBooleanField;
    allotqry: TClientDataSet;
    allotqrycheck_dt: TDateTimeField;
    allotqrybod_cd: TStringField;
    allotqrybod_desc: TStringField;
    allotqrydtl_id: TAutoIncField;
    allotqrymed_id: TIntegerField;
    allotqrymed_code: TStringField;
    allotqrymed_name: TStringField;
    allotqryspecifi: TStringField;
    allotqrypdt_place: TStringField;
    allotqryqtyperpack: TBCDField;
    allotqryqty_pack: TBCDField;
    allotqrymed_unit: TStringField;
    allotqrybat_cd: TStringField;
    allotqryqty: TBCDField;
    allotqryprice: TBCDField;
    allotqrycreater: TStringField;
    allotqrychecker: TStringField;
    allotqrybod_type: TStringField;
    customerbroker_id: TIntegerField;
    purchaser: TClientDataSet;
    AutoIncField9: TAutoIncField;
    StringField40: TStringField;
    DSpurchaser: TDataSource;
    customerdistrict: TIntegerField;
    stockqryqty: TBCDField;
    stockqryrec_id: TAutoIncField;
    cdsmedinfosellprice: TBCDField;
    allotqrystock1: TStringField;
    allotqrystock2: TStringField;
    cdsmedinfobid_type: TIntegerField;
    cdsmedinfobid_mate: TIntegerField;
    customerEmail: TStringField;
    customerwebsite: TStringField;
    stockqrychm_name: TStringField;
    cdsmedinfoauctionprice: TBCDField;
    medstockqty1: TBCDField;
    medstockqty2: TBCDField;
    back_type: TClientDataSet;
    AutoIncField12: TAutoIncField;
    StringField49: TStringField;
    IntegerField16: TIntegerField;
    DSback_type: TDataSource;
    customermate_type_id: TIntegerField;
    agent: TClientDataSet;
    DSagent: TDataSource;
    staffbiller: TBooleanField;
    stafffiredate: TDateTimeField;
    broker: TClientDataSet;
    AutoIncField5: TAutoIncField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    StringField77: TStringField;
    StringField78: TStringField;
    BooleanField11: TBooleanField;
    StringField79: TStringField;
    DateTimeField9: TDateTimeField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    MemoField3: TMemoField;
    StringField86: TStringField;
    MemoField4: TMemoField;
    BooleanField12: TBooleanField;
    BooleanField13: TBooleanField;
    IntegerField34: TIntegerField;
    StringField87: TStringField;
    DateTimeField12: TDateTimeField;
    StringField88: TStringField;
    BooleanField14: TBooleanField;
    BooleanField15: TBooleanField;
    BooleanField16: TBooleanField;
    IntegerField35: TIntegerField;
    BooleanField17: TBooleanField;
    BooleanField18: TBooleanField;
    BooleanField19: TBooleanField;
    BooleanField20: TBooleanField;
    DSbroker: TDataSource;
    customercdistrict: TStringField;
    staffsta_type_id: TIntegerField;
    agentmate_id: TIntegerField;
    agentmate_code: TStringField;
    agentmate_name: TStringField;
    agentlegalman: TStringField;
    agentdeputy: TStringField;
    agentdeputy_title: TStringField;
    agentphone: TStringField;
    agentfax: TStringField;
    agentaddress: TStringField;
    agentdistrict: TIntegerField;
    agentcdistrict: TStringField;
    agentpostalcode: TStringField;
    agentacnt_bank: TStringField;
    agentbank_account: TStringField;
    agenttax_code: TStringField;
    agentmate_type_id: TIntegerField;
    agentprice_type: TIntegerField;
    agentprice_cent: TBCDField;
    agentqry_code: TStringField;
    agentsettle_type: TIntegerField;
    agentpick_ord: TIntegerField;
    agentcredit_amot: TIntegerField;
    agentremark: TMemoField;
    agentstop_by: TIntegerField;
    agentstop_for: TStringField;
    agentstop_dt: TDateTimeField;
    agentstop_yn: TBooleanField;
    agenttax_rate: TBCDField;
    agentbroker_id: TIntegerField;
    agentdue_limit: TIntegerField;
    agentdescription: TStringField;
    agentcreat_dt: TDateTimeField;
    agentcreat_by: TIntegerField;
    agentLcreat_by: TStringField;
    agentmodify_dt: TDateTimeField;
    agentmodify_by: TIntegerField;
    agentLmodify_by: TStringField;
    agentEmail: TStringField;
    agentwebsite: TStringField;
    agentLsettle_type: TStringField;
    userightrec_id: TAutoIncField;
    userightprintable: TBooleanField;
    medicine: TClientDataSet;
    DSmedicine: TDataSource;
    brokermate_id: TIntegerField;
    stockqrymate_id: TIntegerField;
    stockqryagent: TStringField;
    exgqrysrc_mate: TStringField;
    exgqrydst_mate: TStringField;
    exgqrycarry_dt: TDateTimeField;
    exgqrymed_code: TStringField;
    exgqrymed_name: TStringField;
    exgqrychm_name: TStringField;
    exgqryspecifi: TStringField;
    exgqrypdt_place: TStringField;
    exgqrymed_unit: TStringField;
    exgqryqtyperpack: TBCDField;
    userightexportable: TBooleanField;
    staffqry_code: TStringField;
    brokerqry_code: TStringField;
    picmedinfocdiscount: TBCDField;
    brokerdepo_bank: TIntegerField;
    brokerdepo_acco: TStringField;
    exgqrybroker: TStringField;
    brokerdistrict: TIntegerField;
    brokercdistrict: TStringField;
    exgqryCmate_name: TStringField;
    exgqrybod_type_id: TIntegerField;
    edistrict: TClientDataSet;
    DSedistrict: TDataSource;
    edistrictdist_id: TIntegerField;
    edistrictdist_name: TStringField;
    staffLstop_by: TStringField;
    staffexportable: TBooleanField;
    brokerbank_name: TStringField;
    brokerreceiver: TStringField;
    brokerEmail: TStringField;
    brokermobile_no: TStringField;
    medhost: TClientDataSet;
    AutoIncField7: TAutoIncField;
    IntegerField6: TIntegerField;
    IntegerField11: TIntegerField;
    StringField12: TStringField;
    StringField30: TStringField;
    StringField32: TStringField;
    BooleanField3: TBooleanField;
    StringField33: TStringField;
    DateTimeField1: TDateTimeField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField41: TStringField;
    MemoField2: TMemoField;
    StringField42: TStringField;
    MemoField5: TMemoField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    IntegerField13: TIntegerField;
    StringField43: TStringField;
    DateTimeField5: TDateTimeField;
    StringField44: TStringField;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    BooleanField8: TBooleanField;
    IntegerField14: TIntegerField;
    DateTimeField6: TDateTimeField;
    IntegerField15: TIntegerField;
    BooleanField9: TBooleanField;
    BooleanField10: TBooleanField;
    BooleanField21: TBooleanField;
    BooleanField22: TBooleanField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    StringField46: TStringField;
    StringField47: TStringField;
    IntegerField19: TIntegerField;
    StringField48: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    DSmedhost: TDataSource;
    stockqrydistrict: TStringField;
    exgqrybal: TBCDField;
    exgqrydrawrate: TBCDField;
    Refreshcds: TClientDataSet;
    sysframesf_sort: TWordField;
    brokermodify_dt: TDateTimeField;
    brokermodify_by: TIntegerField;
    brokercreater: TStringField;
    brokermodifier: TStringField;
    brokercreat_dt: TDateTimeField;
    brokercreat_by: TIntegerField;
    team: TClientDataSet;
    DSteam: TDataSource;
    teamteam_id: TAutoIncField;
    teamteam_name: TStringField;
    customerbusi_type_id: TWordField;
    customercreater: TStringField;
    customermodifier: TStringField;
    customerbusi_type: TStringField;
    DSmedcatlog: TDataSource;
    medcatlog: TClientDataSet;
    medcatlogmc_id: TAutoIncField;
    medcatlogmc_parent: TIntegerField;
    medcatlogmc_cd: TStringField;
    medcatlogmc_title: TStringField;
    medicinemed_id: TIntegerField;
    medicinemed_code: TStringField;
    medicinemed_name: TStringField;
    medicinemed_alia: TStringField;
    medicineforeigname: TStringField;
    medicinespecifi: TStringField;
    medicinemed_type_id: TIntegerField;
    medicinefunc_type_id: TIntegerField;
    medicinetax_type_id: TSmallintField;
    medicinepdt_place: TStringField;
    medicineunit_id: TIntegerField;
    medicinemed_unit: TStringField;
    medicinemed_type: TStringField;
    medicineqtyperbox: TBCDField;
    medicineqtyperpack: TBCDField;
    medicinenotes: TMemoField;
    medicineotc_rx: TBooleanField;
    medicinebarcode: TStringField;
    medicineappv_docu: TStringField;
    medicinespecial_treat: TBooleanField;
    medicineqry_code: TStringField;
    medicinesite_code: TStringField;
    medicinepick_ord: TIntegerField;
    medicinechm_name: TStringField;
    medicinevalid_period: TIntegerField;
    medicineGMP: TBooleanField;
    medicinecreat_dt: TDateTimeField;
    medicinecreat_by: TIntegerField;
    medicinemodify_dt: TDateTimeField;
    medicinemodify_by: TIntegerField;
    medicinecreater: TStringField;
    medicinemodifier: TStringField;
    DSfunc_type: TDataSource;
    func_type: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    agentcomp_id: TAutoIncField;
    staffcomp_id: TAutoIncField;
    departmentcomp_id: TAutoIncField;
    homebankcomp_id: TAutoIncField;
    OpenDialog1: TOpenDialog;
    customercomp_id: TAutoIncField;
    medicinecomp_id: TAutoIncField;
    staffmanager: TBooleanField;
    staffcustservice: TBooleanField;
    fee_type: TClientDataSet;
    AutoIncField4: TAutoIncField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    DSfee_type: TDataSource;
    medicinef1: TBooleanField;
    staffmodify_dt: TDateTimeField;
    staffmodify_by: TIntegerField;
    DSpubqry1: TDataSource;
    pubqry1: TClientDataSet;
    pubqry2: TClientDataSet;
    DSpubqry2: TDataSource;
    cust_group: TClientDataSet;
    AutoIncField10: TAutoIncField;
    IntegerField3: TIntegerField;
    StringField19: TStringField;
    DScust_group: TDataSource;
    channel: TClientDataSet;
    AutoIncField11: TAutoIncField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField20: TStringField;
    StringField21: TStringField;
    AutoIncField13: TAutoIncField;
    StringField22: TStringField;
    DateTimeField7: TDateTimeField;
    IntegerField20: TIntegerField;
    channel_dtl: TClientDataSet;
    AutoIncField14: TAutoIncField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    AutoIncField15: TAutoIncField;
    StringField25: TStringField;
    DateTimeField8: TDateTimeField;
    IntegerField23: TIntegerField;
    DSchannel_dtl: TDataSource;
    DSchannel: TDataSource;
    cust_groupobj_code: TStringField;
    prod_line: TClientDataSet;
    AutoIncField16: TAutoIncField;
    IntegerField24: TIntegerField;
    StringField26: TStringField;
    StringField27: TStringField;
    DSprod_line: TDataSource;
    busi_center: TClientDataSet;
    AutoIncField17: TAutoIncField;
    IntegerField25: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    DSbusi_center: TDataSource;
    sale_team: TClientDataSet;
    AutoIncField18: TAutoIncField;
    IntegerField26: TIntegerField;
    StringField45: TStringField;
    StringField54: TStringField;
    DSsale_team: TDataSource;
    nation: TClientDataSet;
    AutoIncField19: TAutoIncField;
    IntegerField27: TIntegerField;
    StringField55: TStringField;
    StringField56: TStringField;
    DSnation: TDataSource;
    level1: TClientDataSet;
    AutoIncField20: TAutoIncField;
    IntegerField28: TIntegerField;
    StringField57: TStringField;
    StringField58: TStringField;
    DSlevel1: TDataSource;
    data_type: TClientDataSet;
    AutoIncField21: TAutoIncField;
    IntegerField29: TIntegerField;
    StringField59: TStringField;
    StringField60: TStringField;
    DSdata_type: TDataSource;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    AutoIncField23: TAutoIncField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    StringField62: TStringField;
    MemoField7: TMemoField;
    district: TClientDataSet;
    DSdistrict: TDataSource;
    districtparent: TStringField;
    districtcode: TStringField;
    districtname: TStringField;
    districtname0: TStringField;
    districtprov_name: TStringField;
    districtcity_name: TStringField;
    districtcounty_name: TStringField;
    districtCdistrict: TStringField;
    procedure customerAfterPost(DataSet: TDataSet);
    procedure staffAfterPost(DataSet: TDataSet);
    procedure medicineAfterPost(DataSet: TDataSet);
    procedure medstockAfterPost(DataSet: TDataSet);
    procedure imp_typeBeforePost(DataSet: TDataSet);
    procedure settle_typeBeforePost(DataSet: TDataSet);
    procedure cdsunitBeforePost(DataSet: TDataSet);
    procedure exp_typeBeforePost(DataSet: TDataSet);
    procedure med_typeBeforePost(DataSet: TDataSet);
    procedure sysoptionAfterPost(DataSet: TDataSet);
    procedure cdsmedinfoReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure rnp_typeBeforePost(DataSet: TDataSet);
    procedure cdsmedinfoCalcFields(DataSet: TDataSet);
    procedure medicineBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure medicineReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure customerReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure customerBeforePost(DataSet: TDataSet);
    procedure medicineBeforeDelete(DataSet: TDataSet);
    procedure customerBeforeDelete(DataSet: TDataSet);
    procedure cdscheckbill1ReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure staffReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure settle_typeAfterPost(DataSet: TDataSet);
    procedure cdsmedinfoAfterPost(DataSet: TDataSet);
    procedure cdscheckdtlReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsmedinfoBeforePost(DataSet: TDataSet);
    procedure departmentBeforePost(DataSet: TDataSet);
    procedure bankBeforePost(DataSet: TDataSet);
    procedure cdsselmedReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure allot_typeBeforePost(DataSet: TDataSet);
    procedure cdsdistrictBeforePost(DataSet: TDataSet);
    procedure stockAfterDelete(DataSet: TDataSet);
    procedure staffBeforePost(DataSet: TDataSet);
    procedure back_typeBeforePost(DataSet: TDataSet);
    procedure agentBeforePost(DataSet: TDataSet);
    procedure agentReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure staffAfterInsert(DataSet: TDataSet);
    procedure brokerAfterInsert(DataSet: TDataSet);
    procedure brokerBeforePost(DataSet: TDataSet);
    procedure districtReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure districtAfterInsert(DataSet: TDataSet);
    procedure districtBeforePost(DataSet: TDataSet);
    procedure medhostAfterInsert(DataSet: TDataSet);
    procedure medhostBeforePost(DataSet: TDataSet);
    procedure agentAfterPost(DataSet: TDataSet);
    procedure brokerAfterPost(DataSet: TDataSet);
    procedure teamAfterPost(DataSet: TDataSet);
    procedure teamBeforePost(DataSet: TDataSet);
    procedure staffBeforeDelete(DataSet: TDataSet);
    procedure agentBeforeDelete(DataSet: TDataSet);
    procedure departmentAfterPost(DataSet: TDataSet);
    procedure departmentBeforeDelete(DataSet: TDataSet);
    procedure homebankBeforePost(DataSet: TDataSet);
    procedure homebankAfterPost(DataSet: TDataSet);
    procedure fee_typeAfterPost(DataSet: TDataSet);
    procedure fee_typeBeforePost(DataSet: TDataSet);
    procedure fee_typeBeforeDelete(DataSet: TDataSet);
    procedure cust_groupBeforePost(DataSet: TDataSet);
    procedure channelBeforePost(DataSet: TDataSet);
    procedure channel_dtlBeforePost(DataSet: TDataSet);
    procedure prod_lineBeforePost(DataSet: TDataSet);
    procedure busi_centerBeforePost(DataSet: TDataSet);
    procedure sale_teamBeforePost(DataSet: TDataSet);
    procedure nationBeforePost(DataSet: TDataSet);
    procedure level1BeforePost(DataSet: TDataSet);
    procedure data_typeBeforePost(DataSet: TDataSet);
    procedure districtCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure Save1(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod; rightag: Integer);
    procedure Save2(AFileName: String; AMethod: TSaveMethod);
  end;

Function SendMSN(Topic: string;  //主题
                Content: string; //内容
                MailAddr: string; //收件人地址
                CCMailAddr: string; //抄送地址
                AttachFiles: string; //附件
                SmtpMailName: string;//发件人
                SmtpServer: string;   //发件服务器
                SmtpUser: string;     //发件帐户
                SmtpPass: string;     //发件密码
                SmtpPort: string = '25';     //端口
                TestMail: Boolean =true):Boolean;Stdcall; external 'SendDLL.dll';

function LocalHostName: string;   //取得本机名称
function LocalIP: string;   //取得本机IP
function Get_AdaptersInfo:string;  // 取 Adapter MAC address
function GetMacAddress(const AServerName : string) : string;
procedure setprogress(status: word);
procedure runcommand(cmdtxt:string);
function isdigitstr(s: string): boolean;    //判断数字字符串
function gethomeid(userid: word;typeid: word): word;  // 取得某用户、某类单 的最近核算单位 ID
function getstockid(userid: word;typeid: word): word;  // 取得某用户、某类单 的最近仓库 ID
function srv_date: TDatetime;  // 数据库服务器日期时间
function settleday: TDatetime;  // 检查应结帐日期
function lastsetday: TDatetime; // 最近结帐日期,时间
function cleardeli(s: string):string;
function getpyindexchar(hzchar:string):char;
//function getbillid(biltype:string):integer;
function getbillid(compid:integer;bodtypeid:integer):integer;
procedure setbodamot(bod_id:integer);
function saydigit(number: real):string;
function expn(bot:real;exp:integer): real;
function chndigit(mnumb:integer;chntype:integer):string;
function showduedata(mid:integer):string;
function showbrokerdue(staid:integer):string;
function isbroker(uid:integer): boolean;
function ismanager(uid:integer): boolean;
function isagent(uid:integer): boolean;
function issupervisor(uid:integer): boolean;
function isaccounter(uid:integer): boolean;
function isconfidential(uid:integer): boolean;
function isreceipt(uid:integer): boolean;
function isstorage(uid:integer): boolean;
function isexportable(uid:integer): boolean;
function invsaydigit(number: real):string;
function saycdate: string;  // 数据库服务器日期时间
function saycweekday: string;  // 数据库服务器日期时间
function getmatebrokerid(mateid:integer):integer;
function gethostid(staid:integer):integer;
function getidname(staid:integer):string;
function islimited(staid:integer):boolean;  // 判断用户的操作范围是否为指定
procedure opendistrict(cuid: integer);  // 已当前用户的操作范围打开dm.district
function uncheckabled(bodid:integer):boolean; // 判断单据能否反审核；如 结帐之前的单据不可反审核
function getidbytitle(s: string): integer;
function hasexportright(userid:integer;rightag:integer):boolean;
function hasprintright(userid:integer;rightag:integer):boolean;
function getappversion(s: string): string;
procedure checkmatemed(srcid:integer;dstid:integer;medid:integer);
procedure checkperiodlimit(staid:integer; qrydt:TDatetime);
procedure showpic(GEdit: TdxDBGraphicEdit; qryimage: TClientDataSet);
procedure updatelog(formname: string; tablename: string; fieldname: string; fieldlabel: string; objid: integer; updatetype: integer; oldval: string; newval: string; updateby: integer);
//function islimited(staid:integer):boolean;  // 判断用户的操作范围是否为指定
function RegExpr(AExpression,AInput:string):boolean;  // regexpr 判断
function trimacccd(S:string):string;   // 去除字符串尾的 '-'和' '
function isexpenseacc(accid: integer):Boolean;

var
  DM: TDM;
  curgrop,curuser:string[10]; // globe memory of current department,user,inventory
  curdeptid,curuserid,fmateid,fmateid1,fmatetypeid,fagentid,fcateid: integer;
  dt0,dt_1,dt_3,dt_30,dt30,dt60,dt90,dt180 : TDatetime;
  fdirectexit,fcheckimp,fperiodlimit: Boolean;
  fsupplierltd,fcustomerltd,fmedltd,fdistltd,fdeviceltd,f2: Boolean; // 供应商、客户、品种授权、区域、设备绑定限制; f2:敏感数据
  fmatename,fmatename1,fagent: string;
  appsrv_add:string[50];
  compid,compdistid,comprecid,fbodid,fbodtypeid: integer;  //comprecid: comp_id对应在tb_comptree中的id
  compscd  : string[10]; //公司名称简码 如 万金 为 'WJ'
  ent_title: string[50];   // 企业名称 保存在kminfo.ini 第三行
  updatetype: integer;    // updatetype: 1: 新增; 2: 修改; 3: 删除

implementation

uses Main, mycds;

{$R *.DFM}

function RegExpr(AExpression,AInput:string):boolean;  // regexpr 判断
var RegExpr:TRegExpr;
begin
//正则表达式 http://www\.mynet\.com/register\.asp\?id=(\d+)&name=(\w+)
//输入字符串 http://www.mynet.com/register.asp?id=999&name=demo_ds
{
  if AExpression='' then
  begin
    Application.MessageBox(PAnsiChar('正则表达式不能为空'),
                           PAnsiChar('提示'));
    Exit;
  end;
  if AInput='' then
  begin
    Application.MessageBox(PAnsiChar('输入字符串不能为空'),
                           PAnsiChar('提示'));
    Exit;
  end;
}
if (AExpression='') or (AInput='') then
begin
	result:=False;
    exit;
end;
RegExpr:=TRegExpr.Create;
RegExpr.Expression  :=AExpression;
RegExpr.InputString :=AInput;
if RegExpr.Exec then result:=(RegExpr.SubExprMatchCount>0) else result:=False;
{
  Memo1.Clear;
  Memo1.Lines.Add('匹配结果：');

  RegExpr.Expression  :=AExpression;
  RegExpr.InputString :=AInput;
  if RegExpr.Exec then
  begin
    Memo1.Lines.Add(Format('输入字符串为"%s"',[RegExpr.Match[0]]));
    Memo1.Lines.Add(Format('匹配子项数目: %d 个',[RegExpr.SubExprMatchCount]));
    for i := 1 to RegExpr.SubExprMatchCount do
    begin
      Memo1.Lines.Add(format('Match[%d]=',[I])+ RegExpr.Match[I]);
    end;
    Memo1.Lines.Add('匹配成功！');
  end
  else
    Memo1.Lines.Add('匹配失败！');
}
FreeAndNil(RegExpr);
end;

procedure showpic(GEdit: TdxDBGraphicEdit; qryimage: TClientDataSet); //user dxDBELib
begin
if qryimage.state in [dsedit] then raise Exception.Create('请先保存图片');
if (qryimage.active=False) or (qryimage.recordcount=0) or (qryimage.fieldbyname(GEdit.DataField).asstring='')
    then raise Exception.Create('无图片文件');
GEdit.Picture.saveToFile(extractfilepath(Application.ExeName)+'tmp.jpg');
ShellExecute( 0,'Open','rundll32.exe',pchar('c:\WINDOWS\system32\shimgvw.dll,ImageView_Fullscreen '+extractfilepath(Application.ExeName)+'tmp.jpg'),nil,sw_show);
end;

//////////以下用于注册函数////////////////////////////////////////////////////////////

function GetAdaptersInfo( pAdapterInfo: PTIP_ADAPTER_INFO;pOutBufLen: PULONG ): DWORD;stdcall; external 'IPHLPAPI.DLL';

function MAC2String(mac:TMacAddress;macLen:integer):String;
var
   i:integer;
begin
   if macLen=0 then
   begin
     Result := '000000000000';
     EXIT;
   end else Result := '';
   for i:=1 to MACLen do result:=result+format('%2.2X',[MAC[i]]);
end;

function Get_AdaptersInfo:string;
var
    Error,BufLen : DWORD;
    P            : Pointer;
    AdapterInfo  : PTIP_ADAPTER_INFO;
begin
    BufLen := SizeOf( AdapterInfo^ );
    New( AdapterInfo );
    Error := GetAdaptersInfo( AdapterInfo, @BufLen );
    P := AdapterInfo;
    if Error = NO_ERROR then
    begin
        while p = nil do p:=TIP_ADAPTER_INFO(P^).next;
        with TIP_ADAPTER_INFO(P^) do
          Result :=Mac2String(TMacAddress(Address),AddressLength);
    end
    else Result := '000000000000';
    Dispose( AdapterInfo );
end;

function LocalIP: string;   //取得本机IP
type
    TaPInAddr = array [0..10] of PInAddr;
    PaPInAddr = ^TaPInAddr;
var
    phe :   PHostEnt;
    pptr:   PaPInAddr;
    buffer: array [0..63] of char;
    I   :   Integer;
    GInitData   :   TWSADATA;
begin
    WSAStartup($101,GInitData);
    Result:='';
    GetHostName(Buffer,SizeOf(Buffer));
    phe:=GetHostByName(buffer);
    if phe=nil then Exit;
    pptr:=PaPInAddr(Phe^.h_addr_list);
    I:=0;
    while pptr^[I]<>nil do
    begin
        result:=StrPas(inet_ntoa(pptr^[I]^));
        Inc(I);
    end;
    WSACleanup;
end;

function LocalHostName: string;   //取得本机名称
type
    TaPInAddr = array [0..10] of PInAddr;
    PaPInAddr = ^TaPInAddr;
var
    buffer: array [0..63] of char;
    GInitData   :   TWSADATA;
begin
    WSAStartup($101,GInitData);
    Result:='';
    GetHostName(Buffer,SizeOf(Buffer));
    result:=buffer;
    WSACleanup;
end;

function GetMacAddress(const AServerName : string) : string;
// ======================================================================
// Return the MAC address of Machine identified by AServerName
// Format of AServerName is '\\ServerName' or 'ServerName'
// If AServerName is a Null String then local machine MAC address
// is returned.
// Return string is in format 'XX-XX-XX-XX-XX-XX'
// 返回值是主机AServerName的MAC地址
// AServerName参数的格式为\\ 或者 ServerName
// 参数ServerName为空时返回本机的MAC地址
// MAC地址以XX-XX-XX-XX-XX-XX的格式返回
// ====================================================================== 
type
     TNetTransportEnum = function(pszServer : PWideChar;
                                  Level : DWORD;
                                  var pbBuffer : pointer;
                                  PrefMaxLen : LongInt;
                                  var EntriesRead : DWORD;
                                  var TotalEntries : DWORD;
                                  var ResumeHandle : DWORD) : DWORD; stdcall;
     TNetApiBufferFree = function(Buffer : pointer) : DWORD; stdcall;
     PTransportInfo = ^TTransportInfo;
     TTransportInfo = record
                       quality_of_service : DWORD;
                       number_of_vcs : DWORD;
                       transport_name : PWChar;
                       transport_address : PWChar;
                       wan_ish : boolean;
                     end;
var E,ResumeHandle,
    EntriesRead,
    TotalEntries : DWORD;
    FLibHandle : THandle;
    sMachineName,
    sMacAddr,
    Retvar : string;
    pBuffer : pointer;
    pInfo : PTransportInfo;
    FNetTransportEnum : TNetTransportEnum;
    FNetApiBufferFree : TNetApiBufferFree;
    pszServer : array[0..128] of WideChar; 
    i,ii,iIdx : integer; 
begin
  sMachineName := trim(AServerName);
  Retvar := '00-00-00-00-00-00';
  // Add leading \\ if missing
  if (sMachineName <> '') and (length(sMachineName) >= 2) then
  begin
    if copy(sMachineName,1,2) <> '\\' then sMachineName := '\\' + sMachineName
  end;
  // Setup and load from DLL 
  pBuffer := nil;
  ResumeHandle := 0; 
  FLibHandle := LoadLibrary('NETAPI32.DLL');
  // Execute the external function
  if FLibHandle <> 0 then
  begin
    @FNetTransportEnum := GetProcAddress(FLibHandle,'NetWkstaTransportEnum');
    @FNetApiBufferFree := GetProcAddress(FLibHandle,'NetApiBufferFree');
    E := FNetTransportEnum(StringToWideChar(sMachineName,pszServer,129),0,
                           pBuffer,-1,EntriesRead,TotalEntries,Resumehandle);
    if E = 0 then begin
      pInfo := pBuffer;
      // Enumerate all protocols – look for TCPIP
      for i := 1 to EntriesRead do
      begin
        if pos('TCPIP',UpperCase(pInfo^.transport_name)) <> 0 then
        begin
          // Got It – now format result xx-xx-xx-xx-xx-xx 
          iIdx := 1;
          sMacAddr := pInfo^.transport_address;
          for ii := 1 to 12 do
          begin
            Retvar[iIdx] := sMacAddr[ii];
            inc(iIdx);
            if iIdx in [3,6,9,12,15] then inc(iIdx);
          end;
        end;
        inc(pInfo);
      end;
      if pBuffer <> nil then FNetApiBufferFree(pBuffer);
    end;
    try
      FreeLibrary(FLibHandle);
    except
      // 错误处理
    end;
  end;
  result:=Retvar;
end;

procedure setprogress(status: word);
begin
with mainform.RxGIFAnimator1 do
begin
    visible:=(status=1);
    animate:=(status=1);
end;
if status=1 then screen.cursor:=crhourglass;
if status=0 then screen.cursor:=crdefault;
end;

procedure runcommand(cmdtxt:string);
begin
with dm.pubqry do
begin
    commandtext:=cmdtxt;
    try
        setprogress(1);
        execute;
    finally
        close;
        setprogress(0);
    end;
end;
end;

function trimacccd(S:string):string;   // 去除字符串尾的 '-'和' '
begin
while Pos('-', S) > 0 do S[Pos('-', S)] := ' ';
S:=trim(S);
while Pos(' ', S) > 0 do S[Pos(' ', S)] := '-';
Result:= S;
end;

function isexpenseacc(accid: integer):Boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 * from tb_accounts where dbo.fn_accischild('+inttostr(accid)+',250)=1 or dbo.fn_accischild('+inttostr(accid)+',251)=1 or dbo.fn_accischild('+inttostr(accid)+',252)=1';
    //损益类科目:费用
    open;
    result:=recordcount>0;
end;
end;

function isdigitstr(s: string): boolean;    //判断数字字符串
var fdigit: boolean;
    i: integer;
begin
    fdigit:=true;
    for i:=1 to length(s) do
        if not ( s[i] in ['0'..'9']) then fdigit:=false;
    result:=fdigit;
end;

function getidbytitle(s: string): integer;
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select rec_id from tb_treedata where dbo.fn_getreetitle(rec_id)='''+s+'''';
        open;
        Result:= fields[0].asinteger;
    end;
end;

function uncheckabled(bodid:integer):boolean; // 判断单据能否反审核；如 结帐之前的单据不可反审核
begin
    with dm.pubqry do
    begin
        if active then close;
        commandtext:='select carry_dt from tb_bill where bod_id='+inttostr(bodid);
        open;
        result:=(lastsetday<fields[0].asdatetime);
    end;
end;

procedure opendistrict(cuid: integer);  // 已当前用户的操作范围打开dm.district
begin
with dm.district do
    if active=false then
    begin
        commandtext:='select * from vi_district1';
        open;
//        locate('rec_id',compdistid,[]);
    end;
{
with dm.district do
begin
    if active then close;
    commandtext:='select * from tb_treedata where type_id=1 and dbo.fn_indist(rec_id,'+inttostr(cuid)+')=1';
    open;
end;
}
end;

function getidname(staid:integer):string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_staff_name('+inttostr(staid)+')';
    open;
    result:=fields[0].asstring;
end;
end;

function gethostid(staid:integer):integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_host_id('+inttostr(staid)+')';
    open;
    result:=fields[0].asinteger;
end;
end;

procedure checkmatemed(srcid:integer;dstid:integer;medid:integer);
begin
{
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_checkmatemed('+inttostr(srcid)+','+inttostr(dstid)+','+inttostr(medid)+')';
//供货单位@srcid，购货单位@dstid，品种@medid
//1级可配送 1级、2级、医院;2级可配送 2级、3级、医院;依此类推
    open;
    case fields[0].asinteger of
//        1:
        2:  raise Exception.Create('供货单位不经营此品种');
        3:  raise Exception.Create('购货单位不经营此品种');
        4:  raise Exception.Create('无品种经营级别或超级别销售');
    end;
end;
}
end;

procedure checkperiodlimit(staid:integer; qrydt:TDatetime);
var objid,year: integer;
//    year,month,day: word;
begin
if fperiodlimit then
begin
//    DecodeDate(qrydt, Year, Month, Day);
    year:=yearof(qrydt);

    case year of
        2015:  objid:=1;
        2016:  objid:=2;
        2017:  objid:=3;
        2018:  objid:=4;
        2019:  objid:=5;
        2020:  objid:=6;
        2021:  objid:=7;
        2022:  objid:=8;
        2023:  objid:=9;
        2024:  objid:=10;
        2025:  objid:=11;
        2026:  objid:=12;
        2027:  objid:=13;
        2028:  objid:=14;
    end;
    with dm.pubqry do
    begin
        commandtext:='select top 1 1 from tb_sysright where type_id=1 and sta_id='+inttostr(staid)+' and obj_id='+inttostr(objid);
        open;
        if recordcount=0 then raise Exception.Create('您不可查询'+inttostr(year)+'年度的数据');
    end;
end;
end;

function saycdate: string;  // 数据库服务器日期时间
var year,month,day: word;
begin
  DecodeDate(srv_date, Year, Month, Day);
  result:=inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+'日';
end;

function saycweekday: string;  // 数据库服务器日期时间
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select DATEPART(weekday, getdate()) ';
    open;
    case fields[0].asinteger of
        1: result:='星期日';
        2: result:='星期一';
        3: result:='星期二';
        4: result:='星期三';
        5: result:='星期四';
        6: result:='星期五';
        7: result:='星期六';
    end;
    close;
end;
end;
{
function billinvoiced(bodid: word): boolean;  // 取得某单据是否已开发票
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select a.bod_cd,a.relative_id from tb_bill a,tb_invo_bod b';
    commandtext:=commandtext+' where bod_type_id in (26,27) and bod_status_id=1 and a.bod_id=b.bod_id and b.old_id='+inttostr(bodid);
    open;
    if recordcount>0 then raise Exception.Create('本单已开出发票(号码:'+dm.pubqry.fieldbyname('relative_id').asstring+')，不可反审');
    Result:= recordcount>0;
end;
end;
}
function islimited(staid:integer):boolean;  // 判断用户的操作范围是否为指定
begin
exit;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 opr_scale from tb_staff';
    commandtext:=commandtext+' where sta_id='+inttostr(staid);
    open;
    if recordcount=0 then raise Exception.Create('无此用户');
    Result:= (fieldbyname('opr_scale').asinteger=0);
end;
end;

function cleardeli(s: string):string;
var i: integer;
begin
  { Convert spaces to zeroes }
    while Pos(',', S) > 0 do Delete(s, Pos(',', S), 1);
    for i:=1 to length(s) do
        if (not (s[i] in ['0'..'9','.','+','-']))// and (s[i]<>'.') and (s[i]<>'+') and (s[i]<>'-')
            then Delete(s, i, 1);
    result:=s;
end;

function invsaydigit(number: real):string;
type
    Tarray = array[1..12] of integer;
var mi,ni:integer;
    sdigit:string;
    fzero,flag0,flag1,flag2:boolean;
    abit:tarray;
    f1: word;
begin
if number>=100000 then sdigit:='   '+sdigit else sdigit:='    '+sdigit;
//sdigit:=' ';
if number>=0 then flag0:=true else flag0:=false;
number:=abs(number+0.005);
ni:=1;
for mi:=9 downto -2 do
begin
   abit[ni]:=trunc(number/expn(10.0,mi));
   number:=number-abit[ni]*expn(10,mi);
   inc(ni);
end;
f1:=0;
if abit[5]=0 then
begin
end
else
begin
    if f1=0 then f1:=1;
    sdigit:=sdigit+' '+chndigit(abit[5],1)+'     '; fzero:=true;  //拾万
//    sdigit:=sdigit+'       '+chndigit(abit[5],1)+'     '; fzero:=true;  //拾万
end;

if abit[6]=0 then
begin
   if f1>0 then sdigit:=sdigit+'     零    ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=2;
    sdigit:=sdigit+'    '+chndigit(abit[6],1)+'    ';     //万
end;

if abit[7]=0 then
begin
   if f1>0 then sdigit:=sdigit+'     零     ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=3;
    sdigit:=sdigit+'     '+chndigit(abit[7],1)+'     ';    //仟
end;

if (abit[8]=0) then
begin
   if f1>0 then sdigit:=sdigit+'     零     ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=4;
    sdigit:=sdigit+'     '+chndigit(abit[8],1)+'     ';     //佰
end;

if (abit[9]=0) then
begin
   if f1>0 then sdigit:=sdigit+'     零    ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=5;
    sdigit:=sdigit+'     '+chndigit(abit[9],1)+'    ';  //拾
end;

if (abit[10]=0) then
begin
   if f1>0 then sdigit:=sdigit+'     零     ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=6;
    sdigit:=sdigit+'     '+chndigit(abit[10],1)+'     ';  //元
end;

if (abit[11]=0) then
begin
   if f1>0 then sdigit:=sdigit+'     零    ';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=7;
    sdigit:=sdigit+'     '+chndigit(abit[11],1)+'    ';
end;

if (abit[12]=0) then
begin
   if f1>0 then sdigit:=sdigit+'    零';
end
else
begin
    fzero:=true;
    if f1=0 then f1:=8;
    sdigit:=sdigit+'    '+chndigit(abit[12],1);
end;

if flag0 then Result :=sdigit else
begin
    mi:=length(sdigit)-length(trim(sdigit));
    insert('负',sdigit,mi);
//    insert(sdigit,'负',mi-1);
    delete(sdigit,1,2);
    Result:= sdigit;
//    delete(sdigit,1,4);
//    Result:='  负'+ sdigit;
end;
end;

function isexportable(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and exportable=1'; // exportable=1 可导出数据权限
    open;
    result:=recordcount>0;
end;
end;

function hasexportright(userid:integer;rightag:integer):boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_hasmodright(1,'+inttostr(userid)+','+inttostr(rightag)+')';
    open;
    result:=(recordcount>0) and (fields[0].asboolean=true);
end;
end;

function hasprintright(userid:integer;rightag:integer):boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_hasmodright(2,'+inttostr(userid)+','+inttostr(rightag)+')';
    open;
    result:=(recordcount>0) and (fields[0].asboolean=true);
end;
end;

procedure TDM.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
{
    if not isexportable(curuserid) then raise Exception.Create('抱歉,你无权导出本报表');
}
    with SaveDialog do
    begin
      DefaultExt := ADefaultExt;
      Filter := AFilter;
      FileName := AFileName;
      if Execute then
      begin
          screen.cursor:=crhourglass;
          AMethod(FileName, True);
          screen.cursor:=crdefault;
          //showmessage(FileName+'已成功导出');
          MessageBox(0,Pchar('文件:'+FileName+' 已成功导出'),'请注意',MB_OK+MB_ICONInformation);
      end;
    end;
end;

procedure TDM.Save1(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod; rightag: Integer);
begin
{
if not hasexportright(curuserid,rightag)
    then raise Exception.Create('抱歉，你无权导出本报表');
}
with SaveDialog do
begin
  DefaultExt := ADefaultExt;
  Filter := AFilter;
  FileName := AFileName;
  if Execute then
  begin
    try
        screen.cursor:=crhourglass;
        AMethod(FileName, True);
    finally
        screen.cursor:=crdefault;
    end;
    MessageBox(0,Pchar('文件:'+FileName+' 已成功导出'),'请注意',MB_OK+MB_ICONInformation);
  end;
end;
end;

procedure TDM.Save2(AFileName: String; AMethod: TSaveMethod);
begin
try
    screen.cursor:=crhourglass;
    AMethod(AFileName, True);
finally
    screen.cursor:=crdefault;
end;
end;

function issupervisor(uid:integer): boolean;    // 判断是否管理人员
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and supervisor=1'; // supervisor=1 管理人员有转出数据权限
    open;
    result:=recordcount>0;
end;
end;

function isbroker(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and broker=1'; // 商务人员
    open;
    result:=recordcount>0;
end;
end;

function ismanager(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and manager=1'; // 区域经理
    open;
    result:=recordcount>0;
end;
end;

function isagent(uid:integer): boolean;    // 判断是否购销员
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and sta_type_id=1'; // sta_type_id=1 购销员
    open;
    result:=recordcount>0;
end;
end;

function isreceipt(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and receipt=1'; // 验收人员
    open;
    result:=recordcount>0;
end;
end;

function getmatebrokerid(mateid:integer):integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 broker_id from tb_busimate where mate_id='+inttostr(mateid);
    open;
    result:=fields[0].asinteger;
end;
end;

function isstorage(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and storage=1'; // 仓管人员
    open;
    result:=recordcount>0;
end;
end;

function isaccounter(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and account=1'; // account=1 财务人员
    open;
    result:=recordcount>0;
end;
end;

function isconfidential(uid:integer): boolean;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 sta_id from tb_staff where sta_id='+inttostr(curuserid)+' and confidential=1'; // confidential=1 机要人员
    open;
    result:=recordcount>0;
end;
end;

function getstockid(userid: word;typeid: word): word;  // 取得某用户、某类单 的最近仓库 ID
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_getstockid( '+inttostr(userid)+','+inttostr(typeid)+')';
    open;
    result:=fields[0].asinteger;
    close;
end;
end;

function gethomeid(userid: word;typeid: word): word;  // 取得某用户、某类单 的最近核算单位 ID
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_gethomeid( '+inttostr(userid)+','+inttostr(typeid)+')';
    open;
    result:=fields[0].asinteger;
    close;
end;
end;

function srv_date: TDatetime;  // 数据库服务器日期时间
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select getdate()';
    open;
    result:=fields[0].asdatetime;
    close;
end;
{
with dm.getdate do
begin
    if active then close;
    open;
    result:=fields[0].asdatetime;
    close;
end;
}
end;

function  settleday;  // 检查结帐： true 应结帐  false 未到结帐日期
var Year, Month, Day, setype,setday: Word;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_settleday('''+datetostr(srv_date)+''')';
    open;
    result:=fields[0].asdatetime;
    close;
end;
exit;

with dm.sysoption do
begin
    if active=false then open;
    if locate('opt_title','settle_day',[]) then
    begin
        setype:=fieldbyname('param1').asinteger;
        setday:=fieldbyname('param2').asinteger;
        if locate('opt_title','lastsettledate',[loCaseInsensitive]) then
         begin
            decodedate(fieldbyname('param1').asdatetime,year,month,day);
            if month<12 then inc(month) else begin inc(year); month:=1 end;
         end
         else decodedate(srv_date,year,month,day);
        if setype=0 then settleday:=encodedate(year,month,setday) // specified day
        else   // last day every month
        begin
            if month<12 then inc(month) else begin inc(year); month:=1 end;
            settleday:=encodedate(year,month,1)-1;
        end;
    end
    else settleday:=srv_date+1; // --当天+1 无须结帐
end;
end;

function lastsetday;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select dbo.fn_settleday('''+datetostr(date)+''')';
    open;
    result:=fields[0].asdatetime;
    close;
end;
end;

function getappversion(s: string): string;
begin
    if pos('版本号:',s)>0 then delete(s,1,pos('版本号:',s)+6);
    if pos(' V',s)>0 then delete(s,1,pos(' V',s)+1);
    if pos(' ',s)>0 then s:=copy(s,0,pos(' ',s));
    if pos(')',s)>0 then delete(s,pos(')',s),1);
    Result:=s;
end;

function showduedata(mid:integer):string;
var s: string;
begin
with dm.pubqry do
begin
  if active then close;
  commandtext:='select top 1 due from tb_account where mate_id='+inttostr(mid);
  open;
  if fields[0].asfloat>=0 then s:='应收' else s:='应付';
  s:=s+formatfloat('###,###,##0.00',abs(fields[0].asfloat));
  close;
end;
result:=s;
end;

function showbrokerdue(staid:integer):string;
var s: string;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 bal from tb_account1 where sta_id='+inttostr(staid);
    open;
    if fields[0].asfloat>=0 then s:='应付' else s:='应收';
    s:=s+formatfloat('###,###,##0.00',abs(fields[0].asfloat));
    close;
end;
result:=s;
end;

function chndigit(mnumb:integer;chntype:integer):string;
var stmp:string;
begin
     if chntype=0 then stmp:='Ｏ一二三四五六七八九' else stmp:='零壹贰叁肆伍陆柒捌玖';
     result:=copy(stmp,mnumb*2+1,2);
end;

function expn(bot:real;exp:integer): real;
var mi:integer;
    res:real;
begin
if exp=0 then result:=1;
if exp>0 then
begin
    res:=bot;
    for mi:=1 to exp-1 do res:=res*bot;
    result:=res;
end;
if exp<0 then
begin
    res:=bot;
    for mi:=1 to abs(exp)+1 do res:=res/bot;
    result:=res;
end;
end;

function saydigit(number: real):string;
type
    Tarray = array[1..12] of integer;
var mi,ni:integer;
    sdigit:string;
    fzero,flag0,flag1,flag2:boolean;
    abit:tarray;
begin
sdigit:=' ';
if number>=0 then flag0:=true else flag0:=false;
//number:=abs(number+0.005);
//if number>=0 then number:=abs(number+0.005) else number:=abs(number-0.005);
//if number>=0 then number:=number+0.005 else number:=-number+0.005;
number:=abs(number)+0.005;

ni:=1;
for mi:=9 downto -2 do
begin
   abit[ni]:=trunc(number/expn(10.0,mi));
   number:=number-abit[ni]*expn(10,mi);
   inc(ni);
end;
if abit[1]<>0 then sdigit:=sdigit+chndigit(abit[1],1)+'拾';
if abit[2]<>0 then sdigit:=sdigit+chndigit(abit[2],1);
if (abit[1]<>0) or (abit[2]<>0) then sdigit:=sdigit+'亿';

if abit[3]=0 then
begin
   mi:=4;
   while mi<=10 do
   begin
      if abit[mi]<>0 then
      begin
         fzero:=true;  break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and ((abit[4]<>0) or (abit[5]<>0) or (abit[6]<>0)) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   sdigit:=sdigit+chndigit(abit[3],1)+'仟';  fzero:=true;
end;

if abit[4]=0 then
begin
   mi:=5;
   while mi<=10 do
   begin
      if abit[mi]<>0 then
      begin
         fzero:=true;  break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and (abit[3]<>0) and ((abit[5]<>0) or (abit[6]<>0)) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   fzero:=true;
   sdigit:=sdigit+chndigit(abit[4],1)+'佰';
end;

if abit[5]=0 then
begin
   mi:=6;
   while mi<=10 do
   begin
      if abit[mi]<>0 then
      begin
         fzero:=true;  break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and (abit[4]<>0) and (abit[6]<>0) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   sdigit:=sdigit+chndigit(abit[5],1)+'拾'; fzero:=true;
end;

if (abit[6]<>0) then sdigit:=sdigit+chndigit(abit[6],1);
if (abit[3]<>0) or (abit[4]<>0) or (abit[5]<>0) or (abit[6]<>0) then sdigit:=sdigit+'万';
if abit[7]=0 then
begin
   mi:=8;
   while mi<=10 do
   begin
      if (abit[mi]<>0) then
      begin
           fzero:=true;  break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   fzero:=true;
   sdigit:=sdigit+chndigit(abit[7],1)+'仟';
end;
if (abit[8]=0) then
begin
   mi:=9;
   while (mi<=10) do
   begin
      if (abit[mi]<>0) then
      begin
           fzero:=true; break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and (abit[7]<>0) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   fzero:=true;
   sdigit:=sdigit+chndigit(abit[8],1)+'佰';
end;
if (abit[9]=0) then
begin
   mi:=10;
   while (mi<=10) do
   begin
      if (abit[mi]<>0) then
      begin
           fzero:=true;  break;
      end
      else fzero:=false;
      inc(mi);
   end;
   if (fzero) and (abit[8]<>0) and (sdigit<>' ') then
   begin
      sdigit:=sdigit+'零'; fzero:=false;
   end
end
else
begin
   fzero:=true;
   sdigit:=sdigit+chndigit(abit[9],1)+'拾';
end;
if abit[10]<>0 then sdigit:=sdigit+chndigit(abit[10],1);

flag1:=(abit[1]<>0) or (abit[2]<>0) or (abit[3]<>0) or (abit[4]<>0) or (abit[5]<>0);
flag2:=(abit[6]<>0) or (abit[7]<>0) or (abit[8]<>0) or (abit[9]<>0) or (abit[10]<>0);
if (flag1) or (flag2) then sdigit:=sdigit+'圆';
if abit[11]<>0 then sdigit:=sdigit+chndigit(abit[11],1)+'角';
if (abit[11]=0) and (abit[12]<>0) then sdigit:=sdigit+'零';
if abit[12]<>0 then sdigit:=sdigit+chndigit(abit[12],1)+'分';
if ((flag1) or (flag2)) and (abit[12]=0) then sdigit:=sdigit+'整';
if flag0 then Result :=sdigit else Result:='负'+sdigit;
end;

procedure updatelog(formname: string; tablename: string; fieldname: string; fieldlabel: string; objid: integer; updatetype: integer; oldval: string; newval: string; updateby: integer);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='exec sp_updatelog1 '''+formname+''','''+tablename+''','''+fieldname+''','''+fieldlabel+''','+inttostr(objid)+','+inttostr(updatetype)+','''+oldval+''','''+newval+''','+inttostr(updateby);
//create procedure [dbo].[sp_updatelog] (@formname varchar(20),@tablename varchar(20),@fieldname varchar(20),@fieldlabel varchar(20),@id integer,@updatetype tinyint,@oldval varchar(100),@newval varchar(100),@updateby int)
    execute;
end;
end;

procedure setbodamot(bod_id:integer);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='update tb_bill set bod_amot=(select sum(amot) from tb_bill_dtl where bod_id='+inttostr(bod_id)+') where bod_id='+inttostr(bod_id);
    execute;
    close;
end;
end;
{
function getbillid(biltype:string):integer;
begin
with dm.getbillid do
begin
    commandtext:='sp_getbillid '''+biltype+'''';
    open;
    result:=fields[0].asinteger;
    close;
end;
end;
}
function getbillid(compid:integer;bodtypeid:integer):integer;
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='sp_getbillid '+inttostr(compid)+','+inttostr(bodtypeid);
    open;
    result:=fields[0].asinteger;
    close;
end;
end;

function getpyindexchar(hzchar:string):char;
begin
case word(hzchar[1]) shl 8 + word(hzchar[2]) of
    $B0A1..$B0C4,$E2D6,$F2FC,$EFA7,$E0DE,$DBEA,$8881,$E6C8: result :='A';
    $B0C5..$B2C0,$E6DF,$DCD0,$ECD2,$DDE1,$E9C4,$DDF2,$EEE9,$F3F7,$DCEA,$DDC9,$F1A3,$E7CD,$DAE6,$DBE0,$DDED,$96E0,$DFC1,$DBCD: result :='B';
    $B2C1..$B4ED,$DCCA,$DCFB,$DDC5,$F3B8,$F2DC,$E8FA,$ECF8,$DAC8,$E1AF,$E9B6,$F1D2,$E5B7: result :='C';
    $B4EE..$B6E9,$F4FA,$E0A4,$ECC0,$F1BC,$DFB0,$F7EC,$ECD1,$E7E9,$DDFA,$DDD0,$DFE1,$F1B2,$DDB6,$EDB8,$889B,$DBE3,$F1B0: result :='D';
    $B6EA..$B7A1,$DDAD,$F6F9,$DDE0,$E5C7: result :='E';
    $B7A2..$B8C0,$DFBB,$F0F2,$DCF2,$E5FA,$DFF4,$F4E4,$E9BC,$E6DA,$DDCA,$DDB3,$DCBD,$EDBF,$F2E3,$E8F3,$ECB3,$E8CA,$EBE8,$EEB2,$F0A5: result :='F';
    $B8C1..$B9FD,$EBD2,$F0B3,$DCD5,$E2D9,$DFC9,$E8DB,$F2BC,$F0E1,$D8BA,$DEBB,$F2C1,$E4FB,$EBD7,$F6D9,$F4FB,$EFAF,$E4C6,$AB5C,$AD8F,$E9C0,$E9CF,$EEDC: result :='G';
    $B9FE..$BBF6,$DCF6,$F1A5,$F5FA,$E7FA,$DEBD,$DDEF,$DAAD,$DCEE,$E9CE,$EABB,$EACD,$F3F2,$E5AB,$E4AB,$F0C0,$E5A9,$DE92,$DAF2,$E4B0,$E4A7,$E8AB,
                 $DEBF,$DEA5,$E3FC: result :='H';
    $BBF7..$BFA5,$EAAA,$F2BB,$E9D9,$E9C8,$EBC2,$F0DC,$DDF0,$DCB4,$ECBA,$E5CA,$9CF2,$E5C9,$DCB8,$DEAA,$F1E4,$D9A4,$E7E5,$E6F7,$F4DF,$EDD9,$DDBC,$F3DE,
                 $E7EC,$EFFA,$F2D4,$E8C5,$DCFA,$E4A9,$E8A2,$EED2,$DCEC,$F4E5,$E6BC,$AD5A: result :='J';
    $BFA6..$C0AB,$D8D1,$DEA2,$E7E6,$E0AD,$DBDB,$DAF7: result :='K';
    $C0AC..$C2E7,$DCDF,$DFF8,$DCC2,$E9AC,$DEBC,$F2C3,$DDE4,$E6F2,$DDFC,$E9B5,$F2F7,$EDC2,$E3B6,$DFCA,$DDB9,$EFAE,$F1AA,$8D71,$F6A6,$F4E1,$F7EB,$E5BC,
                 $E4FE,$F5B2,$DBE2,$E3F2,$E4F2,$E4E0,$E9AD,$8292,$ECA2,$E4F0,$F0D8,$DEA4,$E8B4,$E8EF,$AC50,$E1B0: result :='L';
    $C2E8..$C4C2,$E0D7,$DFE4,$F7C8,$F7A9,$EAF3,$F2B5,$EDE6,$F2FA,$EBDF,$E3C9,$E8A3,$F3A1,$E3E5,$F2FD,$DDAE,$DCD4,$EFD2,$DAF8,$EDB5,$E3E6,$DFE8,
                 $EDAE,$E4D8,$E7D1,$EBFC: result :='M';     //
    $C4C3..$C5B5,$D8A5,$E0AB,$D9A3,$DDC1,$E9AA,$EBE5,$D9AF,$F6D3: result :='N';
    $C5B6..$C5BD,$F1EE,$EAB1: result :='O';
    $C5BE..$C6D9,$E8C1,$E8CB,$F1B1,$DFDF,$E7EA,$E0D1,$F3AA,$E2D2,$AB98,$DAE9,$E5A7,$DBDC,$DBB6: result :='P';
    $C6DA..$C8BA,$DCCE,$E8BD,$ECEE,$E0BA,$DCCB,$E7F9,$DCCD,$E7F7,$E1AA,$F4C7,$F6C4,$DEAD,$DCF9,$DCF1,$DBCF,$D9BB,$E7B2,$ECF7,$F7E8,$E9D4,$DCF5,$E1E9,$8877,$F1FB,
                 $F2B0,$E1BD,$F4C3: result :='Q';
    $C8BB..$C8F5,$DEB8,$DCC7,$E1C9,$E9C5,$EEA3: result :='R';
    $C8F6..$CBF9,$F0FE,$F7EA,$E0E7,$F6E8,$E6B6,$E9A9,$DDB4,$F0F0,$954E,$E6A9,$D9B9,$EEB4,$E3F4,$E1D4,$DDA5,$D9ED,$DBC5,$EAC9,$DDB7,$DDBF,$E6AD,$EFC8,$F4C8: result :='S';
    $CBFA..$CDD9,$E6C3,$D9A2,$DDE3,$EBF8,$EBC4,$DDCB,$EED1,$EEB1,$E4AC: result :='T';
    $CDDA..$CEF3,$F0C4,$F2DA,$DEB1,$DDD2,$DDB8,$EBBF,$ECD0,$E2AC,$E4B4,$DAF9,$ECBF,$E3EB,$E6C4,$E7E2: result :='W';
    $CEF4..$D188,$D1AA,$D1A1,$D1A2,$F5A3,$E4E5,$D1A9,$E5D0,$ECFB,$DCBA,$D1A7,$F6CE,$DEAF,$F2B9,$F2D9,$D1B0,$DCE7,$DCB0,$DBAD,$D1A3,$E6E7,$DDB2,
                 $DBD7,$E7D3,$DEB9,$DDE6,$D1A6,$E6B5,$E8AF,$D1AF,$F3E3,$D1B6,$EABF,$E5DA,$E4AD,$D1A8,$EAD8,$D9FE,$D867,$D9E3: result :='X';
    $D1B9..$D4D0,$E6C2,$F0E0,$D8B9,$F0D0,$DDC7,$DCBF,$DCE8,$DEB2,$DCBE,$E5FB,$E2F9,$E9DA,$DCD3,$F3C4,$F3BF,$DFC5,$F6B8,$E6AB,$EEDA,$D8AE,$E8A4,
                 $DBDD,$DBEB,$DFAE,$E3E4,$D8B7,$F6A7,$DBB3,$EACC,$E6A5,$E5AD,$9C55,$EAC5,$DEC8,$ECC7,$E3C6,$F0CE,$D9F0,$DAB1,$DEC4,$EEC6,$F4E8,$ECDA,$EADD,$ECCD,$E8D6,$88F2: result :='Y';
    $D4D1..$D7F9,$DBDA,$F0EE,$DFF2,$E8D9,$A4CF,$F0D1,$E6A2,$F5A5,$DCEF,$E8D7,$DCC6,$F4F7,$F3C3,$F4D5,$DCEB,$E9D7,$EAB0,$F2CE,$EBEA,$E9AB,$E8F7,
                 $E8CF,$E4C3,$DCD1,$E4BE,$E1CC,$E1BF,$ECCC,$ECF5: result :='Z';      //

    $A3C1: result:='A';  // 全角字符
    $A3C2: result:='B';
    $A3C3: result:='C';
    $A3C4: result:='D';
    $A3C5: result:='E';
    $A3C6: result:='F';
    $A3C7: result:='G';
    $A3C8: result:='H';
    $A3C9: result:='I';
    $A3CA: result:='J';
    $A3CB: result:='K';
    $A3CC: result:='L';
    $A3CD: result:='M';
    $A3CE: result:='N';
    $A3CF: result:='O';
    $A3D0: result:='P';
    $A3D1: result:='Q';
    $A3D2: result:='R';
    $A3D3: result:='S';
    $A3D4: result:='T';
    $A3D5: result:='U';
    $A3D6: result:='V';
    $A3D7: result:='W';
    $A3D8: result:='X';
    $A3D9: result:='Y';
    $A3DA: result:='Z';  // 全角字符

    $A3B0: result:='0';  // 全角数字
    $A3B1: result:='1';
    $A3B2: result:='2';
    $A3B3: result:='3';
    $A3B4: result:='4';
    $A3B5: result:='5';
    $A3B6: result:='6';
    $A3B7: result:='7';
    $A3B8: result:='8';
    $A3B9: result:='9'  // 全角数字
else
    result:=' ';
//    result:=char(0);
end;
end;

procedure TDM.customerAfterPost(DataSet: TDataSet);
begin
with customer do
    if ChangeCount>0 then myupdaterefresh(customer,'tb_busimate','mate_id','');
end;

procedure TDM.staffAfterPost(DataSet: TDataSet);
begin
with staff do
begin
    if ChangeCount>0 then myupdaterefresh(staff,'tb_staff','sta_id','');
    refreshmyrecord(staff,dm.Refreshcds,0,'a.sta_id',fieldbyname('sta_id').asinteger);
end;
end;

procedure TDM.medicineAfterPost(DataSet: TDataSet);
begin
if medicine.ChangeCount>0 then myupdaterefresh(medicine,'tb_medicine','med_id','');
end;

procedure TDM.medstockAfterPost(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
end;

procedure TDM.imp_typeBeforePost(DataSet: TDataSet);
begin
imp_type.fieldbyname('obj_type_id').asinteger:=4;
end;

procedure TDM.settle_typeBeforePost(DataSet: TDataSet);
begin
settle_type.fieldbyname('obj_type_id').asinteger:=2;
end;

procedure TDM.cdsunitBeforePost(DataSet: TDataSet);
begin
cdsunit.fieldbyname('obj_type_id').asinteger:=0;
end;

procedure TDM.exp_typeBeforePost(DataSet: TDataSet);
begin
exp_type.fieldbyname('obj_type_id').asinteger:=5;
end;

procedure TDM.med_typeBeforePost(DataSet: TDataSet);
begin
med_type.fieldbyname('obj_type_id').asinteger:=3;
end;

procedure TDM.sysoptionAfterPost(DataSet: TDataSet);
begin
    sysoption.ApplyUpdates(-1);
end;

procedure TDM.cdsmedinfoReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TDM.rnp_typeBeforePost(DataSet: TDataSet);
begin
rnp_type.fieldbyname('obj_type_id').asinteger:=6;
end;

procedure TDM.cdsmedinfoCalcFields(DataSet: TDataSet);
begin
with cdsmedinfo do
    fieldbyname('Cavg_type').asstring:=copy('品种均价批次均价',8*fieldbyname('avg_type').asinteger+1,8);
end;

procedure TDM.medicineBeforePost(DataSet: TDataSet);
begin
with dm.medicine do
begin
{
    if length(fieldbyname('med_code').asstring)<>6
        then raise Exception.Create('药品编码为6位字符。请修正，并重新保存');
}        
    if fieldbyname('unit_id').asstring=''
        then raise Exception.Create('请设置药品单位');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var filename,cur_str: string;
    infofile: textfile;
    logini: Tinifile;
    sport: string[20];
    mi,p,iport: word;
//// 防止重复运行////////////////////////////////////////////////
    ZAppName: array[0..127] of char;
    Hold: String;
    Found: HWND;
begin
{  暂停
    Hold := Application.Title;
    Application.Title := 'OnlyOne' + IntToStr(HInstance); // 暂时修改窗口标题
    StrPCopy(ZAppName, Hold); // 原窗口标题
    Found := FindWindow(nil, ZAppName); // 查找窗口
    Application.Title := Hold; // 恢复窗口标题
    if Found<>0 then
    begin
        // 若找到则激活已运行的程序并结束自身
        if IsIconic(Found) then          //如果已被最小化
          ShowWindow(Found,SW_Restore)   //则把它恢复
        else
          SetForegroundWindow(Found);    //如果窗口被其他窗口遮住，则将它提到前景来
        halt;
    end;
}
//////////////////////////////////////////////////////////////////
ent_title:='';

if RemoteServer.connected=true then RemoteServer.close;

//filename:='KMinfo.ini';
filename:=extractfilepath(Application.ExeName)+'Kingstar.ini';
//filename:=extractfilepath(Application.ExeName)+'KMinfo.ini';
if FileExists(filename) then
begin
    assignfile(infofile,filename);
    reset(infofile);

    readln(infofile,cur_str);
    appsrv_add:=cur_str;

    if pos(':',cur_str)=0 then iport:=211 else  // midas socket default port is 211
    begin
        sport:=copy(cur_str,pos(':',cur_str)+1,length(cur_str)-pos(':',cur_str));
        if trim(sport)='' then iport:=211 else iport:=strtoint(sport);
        delete(cur_str,pos(':',cur_str),length(cur_str)-pos(':',cur_str)+1);
    end;

    mi:=0;
    while pos(';',cur_str)>0 do
    begin
        p:=pos(';',cur_str);
        SimpleObjectBroker1.Servers.add;
        SimpleObjectBroker1.Servers[mi].computername:=copy(cur_str,1,p-1);
        SimpleObjectBroker1.Servers[mi].port:=iport;
        delete(cur_str,1,p);
        mi:=mi+1;
    end;
    if length(cur_str)>0 then
    begin
        SimpleObjectBroker1.Servers.add;
        SimpleObjectBroker1.Servers[mi].computername:=cur_str;
        SimpleObjectBroker1.Servers[mi].port:=iport;
    end;
    readln(infofile,cur_str);
    RemoteServer.servername:=cur_str;

    readln(infofile,cur_str);
    ent_title:=cur_str;

    closefile(infofile);
end;
try
    RemoteServer.connected:=true;
except
    raise Exception.Create('无法连接应用服务器，请与管理人员联系');
end;
{
try
    RemoteServer2.connected:=true;
except
    raise Exception.Create('无法连接应用服务器2，请与管理人员联系');
end;
}
//if RemoteServer2.connected=True then showmessage('RemoteServer2.connected active:'+RemoteServer2.host+' servername:'+RemoteServer2.servername);

//让Delphi程序不受Windows日期格式的影响
// 设置WINDOWS系统的短日期的格式
SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, 'yyyy-MM-dd');
Application.UpdateFormatSettings := False;
// 设定程序本身所使用的日期时间格式
LongDateFormat := 'yyyy-MM-dd';
ShortDateFormat := 'yyyy-MM-dd';
LongTimeFormat := 'HH:NN:SS';
ShortTimeFormat := 'HH:NN:SS';
DateSeparator := '-';
TimeSeparator := ':';

with dm.pubqry do
begin
    if active then close;
    commandtext:='select dt0=cast(convert(char(10),getdate(),20) as datetime),';
    commandtext:=commandtext+' dt_1=cast(convert(char(10),dateadd(day,-1,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt_3=cast(convert(char(10),dateadd(day,-2,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt_30=cast(convert(char(10),dateadd(day,-30,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt30=cast(convert(char(10),dateadd(day,30,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt60=cast(convert(char(10),dateadd(day,60,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt90=cast(convert(char(10),dateadd(day,90,getdate()),20) as datetime),';
    commandtext:=commandtext+' dt180=cast(convert(char(10),dateadd(day,180,getdate()),20) as datetime)';
    open;
    dt0:=fieldbyname('dt0').asdatetime;
    dt_1:=fieldbyname('dt_1').asdatetime;
    dt_3:=fieldbyname('dt_3').asdatetime;
    dt_30:=fieldbyname('dt_30').asdatetime;
    dt30:=fieldbyname('dt30').asdatetime;
    dt60:=fieldbyname('dt60').asdatetime;
    dt90:=fieldbyname('dt90').asdatetime;
    dt180:=fieldbyname('dt180').asdatetime;
    close;
end;
logini:=Tinifile.create(filename);
compid:=strtoint(logini.readstring('company','comp_id',''));

with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 comp_name,comp_scd,district from tb_company where comp_id='+inttostr(compid);
    open;
    ent_title:=fieldbyname('comp_name').asstring;
    compscd  :=fieldbyname('comp_scd').asstring; //公司名称简码 如 万金 为 'WJ'
    compdistid:=fieldbyname('district').asinteger;
end;
curdeptid:= logini.readinteger('company','dept_id',0);
curuserid:= logini.readinteger('company','sta_id',0);
logini.destroy;
end;

procedure TDM.medicineReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(e.message);
end;

procedure TDM.customerReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(e.message);
case e.errorcode of
   3631:  raise exception.create('客户名称或编码重复，请重新输入');
end;
end;

procedure TDM.customerBeforePost(DataSet: TDataSet);
begin
with (dataset as TClientdataset) do
begin
   if (fieldbyname('mate_name').asstring='') then raise Exception.Create('客户名称不可为空');
   if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置客户所属地区');
   if (fieldbyname('busi_type_id').asinteger=0) then raise Exception.Create('请设置客户等级');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.medicineBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill_dtl where med_id='+medicine.fieldbyname('med_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该药品已发生交易，不可删除');
    close;
end;
if MessageBox(0,pchar('确定删除本药品'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.customerBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0
    then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该客户已发生交易，不可删除');
    close;
end;

if MessageBox(0,pchar('确定删除本客户'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.cdscheckbill1ReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TDM.staffReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage('cdsbill_dtl : '+e.message);
case e.errorcode of
    1:  raise exception.create('姓名重复');
end;
end;

procedure TDM.settle_typeAfterPost(DataSet: TDataSet);
begin
with dataset as TClientDataSet do
begin
    ApplyUpdates(-1);
    refresh;
end;
end;

procedure TDM.cdsmedinfoAfterPost(DataSet: TDataSet);
begin
with cdsmedinfo do
begin
    ApplyUpdates(-1);
    refresh;
end;
end;

procedure TDM.cdscheckdtlReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TDM.cdsmedinfoBeforePost(DataSet: TDataSet);
begin
with dm.cdsmedinfo do
begin
    fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
    fieldbyname('creat_by').asinteger:=curuserid;
end;
end;

procedure TDM.departmentBeforePost(DataSet: TDataSet);
begin
with department do
begin
    if fieldbyname('zdesc').asstring=''
        then raise exception.create('请输入部门名称');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('obj_type_id').asinteger:=1;
    end;
end;
end;

procedure TDM.bankBeforePost(DataSet: TDataSet);
begin
bank.fieldbyname('obj_type_id').asinteger:=7;
end;

procedure TDM.cdsselmedReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure TDM.allot_typeBeforePost(DataSet: TDataSet);
begin
allot_type.fieldbyname('obj_type_id').asinteger:=8;
end;

procedure TDM.cdsdistrictBeforePost(DataSet: TDataSet);
begin
district.fieldbyname('obj_type_id').asinteger:=9;
end;

procedure TDM.stockAfterDelete(DataSet: TDataSet);
begin
    (dataset as TClientdataset).ApplyUpdates(-1);
    (dataset as TClientdataset).refresh;
end;

procedure TDM.staffBeforePost(DataSet: TDataSet);
begin
with dm.staff do
begin
    if fieldbyname('zname').asstring='' then raise exception.create('请输入员工姓名');
    if fieldbyname('dept_id').asinteger=0 then raise exception.create('请输入员工所属部门');
    if fieldbyname('zcode').asstring='' then raise exception.create('请输入员工编码');
end;
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 zname from tb_staff where zcode='''+ dm.staff.fieldbyname('zcode').asstring+'''';
    if dm.staff.fieldbyname('sta_id').asinteger<>0 then commandtext:=commandtext+' and sta_id<>'+dm.staff.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create(fieldbyname('zname').asstring+'已使用此员工编码，不可重复编码');
end;
with dm.staff do
begin
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
//        fieldbyname('creater').asstring:=curuser;
    end;
{
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
}    
end;
end;

procedure TDM.back_typeBeforePost(DataSet: TDataSet);
begin
back_type.fieldbyname('obj_type_id').asinteger:=10; //退货原因
end;

procedure TDM.agentBeforePost(DataSet: TDataSet);
begin
with (dataset as TClientdataset) do
begin
    if (fieldbyname('mate_name').asstring='') then raise Exception.Create('配送商名称不可为空');
    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置配送商所属地区');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('mate_type_id').asinteger:=0; // 配送商 代理商
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.agentReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure TDM.staffAfterInsert(DataSet: TDataSet);
begin
staff.fieldbyname('sta_type_id').asinteger:=0;  // 0: 员工
end;

procedure TDM.brokerAfterInsert(DataSet: TDataSet);
begin
broker.fieldbyname('sta_type_id').asinteger:=1;  // 0: 业务员
end;

procedure TDM.brokerBeforePost(DataSet: TDataSet);
begin
with dm.broker do
begin
    if fieldbyname('zname').asstring='' then raise exception.create('请输入姓名');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.districtReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
showmessage(dataset.name+':'+e.message);
end;

procedure TDM.districtAfterInsert(DataSet: TDataSet);
begin
district.fieldbyname('type_id').asinteger:=1;
end;

procedure TDM.districtBeforePost(DataSet: TDataSet);
begin
with (dataset as TClientdataset) do
begin
    if (fieldbyname('zdesc').asstring='') then raise Exception.Create('地区名称不可为空');
end;
{
//    if (fieldbyname('district').asinteger=0) then raise Exception.Create('请设置配送商所属地区');
    if state=dsinsert then
    begin
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
    if state=dsedit then
    begin
        fieldbyname('modify_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('modify_by').asinteger:=curuserid;
    end;
end;
}
end;

procedure TDM.medhostAfterInsert(DataSet: TDataSet);
begin
medhost.fieldbyname('sta_type_id').asinteger:=2;  // 1: 业务员 2:品种代理 medhost
end;

procedure TDM.medhostBeforePost(DataSet: TDataSet);
begin
if dm.medhost.fieldbyname('zname').asstring=''
    then raise exception.create('请输入姓名');
with dm.medhost do
begin
    fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
    fieldbyname('creat_by').asinteger:=curuserid;
end;
end;

procedure TDM.agentAfterPost(DataSet: TDataSet);
begin
with agent do
    if ChangeCount>0 then myupdaterefresh(agent,'tb_busimate','mate_id','');
end;

procedure TDM.brokerAfterPost(DataSet: TDataSet);
begin
with broker do
    if ChangeCount>0 then myupdaterefresh(broker,'tb_staff','sta_id','');
end;

procedure TDM.teamAfterPost(DataSet: TDataSet);
begin
with team do
    if ChangeCount>0 then myupdaterefresh(team,'tb_team','team_id','');
end;

procedure TDM.teamBeforePost(DataSet: TDataSet);
begin
with team do
begin
    if fieldbyname('team_name').asstring='' then raise exception.create('请输入业务组名称');
end;
end;

procedure TDM.staffBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where broker_id='+dm.staff.fieldbyname('sta_id').asstring;
    commandtext:=commandtext+' or creat_by= '+dm.staff.fieldbyname('sta_id').asstring+' or check_by='+dm.staff.fieldbyname('sta_id').asstring;
    open;
    if recordcount>0 then raise exception.create('本员工已发生业务，不可删除');
end;
if MessageBox(0,'确定删除本员工','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.agentBeforeDelete(DataSet: TDataSet);
begin
if (dataset as TClientdataset).recordcount=0 then raise Exception.Create('请刷新后再删除');
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_bill where src_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring+' or dst_id='+(dataset as TClientdataset).fieldbyname('mate_id').asstring;
    open;
    if recordcount>0 then raise Exception.Create('该配送商已发生交易，不可删除');
    close;
end;

if MessageBox(0,pchar('确定删除本配送商'),'请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.departmentAfterPost(DataSet: TDataSet);
begin
with department do
    if ChangeCount>0 then myupdaterefresh(department,'tb_object','obj_id','');
end;

procedure TDM.departmentBeforeDelete(DataSet: TDataSet);
begin
with dm.pubqry do
begin
    if active then close;
    commandtext:='select top 1 1 from tb_staff where dept_id='+department.fieldbyname('obj_id').asstring;
    open;
    if recordcount>0 then raise exception.create('尚有员工属于本部门，不可删除');
end;
if MessageBox(0,'确定删除本部门记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.homebankBeforePost(DataSet: TDataSet);
begin
with homebank do
begin
    if fieldbyname('bank_name').asstring='' then raise exception.create('请输入银行名称');
    if state=dsinsert then
    begin
        fieldbyname('comp_id').asinteger:=compid;
    end;
end;
end;

procedure TDM.homebankAfterPost(DataSet: TDataSet);
begin
if homebank.ChangeCount>0 then myupdaterefresh(homebank,'tb_bank','bank_id','');
end;

procedure TDM.fee_typeAfterPost(DataSet: TDataSet);
begin
if (DataSet as TClientDataSet).ChangeCount>0 then myupdaterefresh((DataSet as TClientDataSet),'tb_object','obj_id','');
end;

procedure TDM.fee_typeBeforePost(DataSet: TDataSet);
begin
(DataSet as TClientDataSet).fieldbyname('obj_type_id').asinteger:=9; //费用类别
end;

procedure TDM.fee_typeBeforeDelete(DataSet: TDataSet);
begin
if MessageBox(0,'确定删除本记录','请注意',MB_YESNO+MB_ICONQUESTION)<>IDYES then abort;
end;

procedure TDM.cust_groupBeforePost(DataSet: TDataSet);
begin
with cust_group do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=13;
end;

procedure TDM.channelBeforePost(DataSet: TDataSet);
begin
with channel do
begin
    if fieldbyname('zdesc').asstring='' then raise Exception.Create('渠道名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('obj_type_id').asinteger:=11;
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.channel_dtlBeforePost(DataSet: TDataSet);
begin
with channel_dtl do
begin
    if fieldbyname('zdesc').asstring='' then raise Exception.Create('子渠道名称不可为空');
    if state=dsinsert then
    begin
        fieldbyname('obj_type_id').asinteger:=12;
        fieldbyname('comp_id').asinteger:=compid;
        fieldbyname('creat_dt').asdatetime:=srv_date;  // srv_date:服务器时间
        fieldbyname('creat_by').asinteger:=curuserid;
    end;
end;
end;

procedure TDM.prod_lineBeforePost(DataSet: TDataSet);
begin
with prod_line do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=14;
end;

procedure TDM.busi_centerBeforePost(DataSet: TDataSet);
begin
with busi_center do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=15;
end;

procedure TDM.sale_teamBeforePost(DataSet: TDataSet);
begin
with sale_team do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=16;
end;

procedure TDM.nationBeforePost(DataSet: TDataSet);
begin
with nation do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=17;
end;

procedure TDM.level1BeforePost(DataSet: TDataSet);
begin
with level1 do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=21;
end;

procedure TDM.data_typeBeforePost(DataSet: TDataSet);
begin
with data_type do
    if state=dsinsert then fieldbyname('obj_type_id').asinteger:=18;
end;

procedure TDM.districtCalcFields(DataSet: TDataSet);
begin
with district do
    fieldbyname('cdistrict').asstring:=fieldbyname('prov_name').asstring+' '+fieldbyname('city_name').asstring+' '+fieldbyname('county_name').asstring;
end;

end.
