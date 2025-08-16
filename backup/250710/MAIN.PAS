unit Main;

interface

{$I RX.INC}

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Gauges, ExtCtrls, Menus, DbPrgrss, Placemnt, SpeedBar,
  AppEvent, RXSplit, Animate, RXShell, RxMenus, PicClip, StdCtrls, ImgList,
  jpeg, GIFCtrl, AppEvnts;

type
  TMainForm = class(TForm)
    StatusPanel: TPanel;
    MessagePanel: TPanel;
    Panel1: TPanel;
    ProgressPanel: TPanel;
    FormPlacement1: TFormPlacement;
    exgmenu: TRxPopupMenu;
    Toolbar: TSpeedBar;
    AboutBtn: TSpeedItem;
    ExitBtn: TSpeedItem;
    AppEvents: TAppEvents;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    TrayIcon: TRxTrayIcon;
    PopupMenu: TRxPopupMenu;
    KMitem: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Images: TPicClip;
    PopupImg: TPicClip;
    RXWebSite1: TMenuItem;
    Timer1: TTimer;
    userpanel: TPanel;
    GridImageList: TImageList;
    spdlogin: TSpeedItem;
    spdbtn4: TSpeedItem;
    spdbtn6: TSpeedItem;
    spdbtn7: TSpeedItem;
    spdbtn10: TSpeedItem;
    N47: TMenuItem;
    N48: TMenuItem;
    Panel2: TPanel;
    SpeedItem2: TSpeedItem;
    MainMenu1: TRxMainMenu;
    FileMenu: TMenuItem;
    ExitItem: TMenuItem;
    S1: TMenuItem;
    P1: TMenuItem;
    C1: TMenuItem;
    RGSP1: TMenuItem;
    WindowMenu: TMenuItem;
    CascadeItem: TMenuItem;
    TileItem: TMenuItem;
    S2: TMenuItem;
    AboutItem: TMenuItem;
    P2: TMenuItem;
    R1: TMenuItem;
    S3: TMenuItem;
    M1: TMenuItem;
    C2: TMenuItem;
    Z1: TMenuItem;
    S4: TMenuItem;
    G1: TMenuItem;
    SpeedItem3: TSpeedItem;
    Y1: TMenuItem;
    U1: TMenuItem;
    N6: TMenuItem;
    B2: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N13: TMenuItem;
    N15: TMenuItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    SpeedItem6: TSpeedItem;
    SpeedItem7: TSpeedItem;
    SpeedItem1: TSpeedItem;
    S5: TMenuItem;
    T1: TMenuItem;
    N4: TMenuItem;
    N16: TMenuItem;
    C4: TMenuItem;
    U2: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    J2: TMenuItem;
    G2: TMenuItem;
    N17: TMenuItem;
    SpeedItem8: TSpeedItem;
    comppanel: TPanel;
    N25: TMenuItem;
    A1: TMenuItem;
    F2: TMenuItem;
    E3: TMenuItem;
    N113: TMenuItem;
    N28: TMenuItem;
    N114: TMenuItem;
    N29: TMenuItem;
    N32: TMenuItem;
    SpeedItem9: TSpeedItem;
    Label1: TLabel;
    N116: TMenuItem;
    D2: TMenuItem;
    N2: TMenuItem;
    N21: TMenuItem;
    F3: TMenuItem;
    N120: TMenuItem;
    N212: TMenuItem;
    N43: TMenuItem;
    N34: TMenuItem;
    N121: TMenuItem;
    J1: TMenuItem;
    D4: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N39: TMenuItem;
    N310: TMenuItem;
    N129: TMenuItem;
    N220: TMenuItem;
    N221: TMenuItem;
    B3: TMenuItem;
    N27: TMenuItem;
    L2: TMenuItem;
    M2: TMenuItem;
    N01: TMenuItem;
    N30: TMenuItem;
    N130: TMenuItem;
    N222: TMenuItem;
    N311: TMenuItem;
    N49: TMenuItem;
    N131: TMenuItem;
    N223: TMenuItem;
    N410: TMenuItem;
    N312: TMenuItem;
    N224: TMenuItem;
    N132: TMenuItem;
    C8: TMenuItem;
    D5: TMenuItem;
    N52: TMenuItem;
    F4: TMenuItem;
    C9: TMenuItem;
    Memo1: TMemo;
    Button1: TButton;
    D6: TMenuItem;
    D7: TMenuItem;
    N134: TMenuItem;
    N226: TMenuItem;
    N57: TMenuItem;
    N314: TMenuItem;
    N412: TMenuItem;
    N59: TMenuItem;
    N135: TMenuItem;
    N227: TMenuItem;
    N315: TMenuItem;
    H2: TMenuItem;
    C10: TMenuItem;
    C12: TMenuItem;
    N322: TMenuItem;
    N416: TMenuItem;
    E8: TMenuItem;
    N236: TMenuItem;
    N144: TMenuItem;
    F8: TMenuItem;
    G4: TMenuItem;
    N67: TMenuItem;
    N511: TMenuItem;
    N417: TMenuItem;
    N323: TMenuItem;
    N145: TMenuItem;
    N68: TMenuItem;
    Panel3: TPanel;
    N71: TMenuItem;
    N325: TMenuItem;
    N238: TMenuItem;
    N146: TMenuItem;
    N162: TMenuItem;
    N256: TMenuItem;
    F12: TMenuItem;
    O2: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    N50: TMenuItem;
    P6: TMenuItem;
    RxGIFAnimator1: TRxGIFAnimator;
    N95: TMenuItem;
    E11: TMenuItem;
    F14: TMenuItem;
    N97: TMenuItem;
    G7: TMenuItem;
    H5: TMenuItem;
    F15: TMenuItem;
    J6: TMenuItem;
    N98: TMenuItem;
    N515: TMenuItem;
    N611: TMenuItem;
    N173: TMenuItem;
    N235: TMenuItem;
    N99: TMenuItem;
    N219: TMenuItem;
    C7: TMenuItem;
    E12: TMenuItem;
    N174: TMenuItem;
    N265: TMenuItem;
    I3: TMenuItem;
    H6: TMenuItem;
    A9: TMenuItem;
    B8: TMenuItem;
    H7: TMenuItem;
    N100: TMenuItem;
    G8: TMenuItem;
    F17: TMenuItem;
    N101: TMenuItem;
    G9: TMenuItem;
    A10: TMenuItem;
    B9: TMenuItem;
    C15: TMenuItem;
    N103: TMenuItem;
    D11: TMenuItem;
    E14: TMenuItem;
    N104: TMenuItem;
    F18: TMenuItem;
    G10: TMenuItem;
    H8: TMenuItem;
    A11: TMenuItem;
    B10: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    A12: TMenuItem;
    N102: TMenuItem;
    F19: TMenuItem;
    N266: TMenuItem;
    N337: TMenuItem;
    N267: TMenuItem;
    N175: TMenuItem;
    N176: TMenuItem;
    N338: TMenuItem;
    N268: TMenuItem;
    N177: TMenuItem;
    F20: TMenuItem;
    N269: TMenuItem;
    N339: TMenuItem;
    N270: TMenuItem;
    N178: TMenuItem;
    N179: TMenuItem;
    N340: TMenuItem;
    N271: TMenuItem;
    N180: TMenuItem;
    N181: TMenuItem;
    N272: TMenuItem;
    N182: TMenuItem;
    N273: TMenuItem;
    N137: TMenuItem;
    N229: TMenuItem;
    N5: TMenuItem;
    N18: TMenuItem;
    N24: TMenuItem;
    H1: TMenuItem;
    N23: TMenuItem;
    procedure Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure View(Sender: TObject);
    procedure SaveLayoutItemClick(Sender: TObject);
    procedure RestoreLayoutItemClick(Sender: TObject);
    procedure WindowItemClick(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
    procedure FormPlacement1RestorePlacement(Sender: TObject);
    procedure FormPlacement1SavePlacement(Sender: TObject);
    procedure AppActivate(Sender: TObject);
    procedure AppRestore(Sender: TObject);
    procedure AppSettingsChanged(Sender: TObject);
    procedure AppMinimize(Sender: TObject);
    procedure AppHint(Sender: TObject);
    procedure KMitemClick(Sender: TObject);
    procedure PopupMenuGetItemParams(Sender: TMenu; Item: TMenuItem;
      State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
      var Graphic: TGraphic; var NumGlyphs: Integer);
    procedure PopupMenuDrawMargin(Sender: TMenu; Rect: TRect);
    procedure RXWebSite1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolbarResize(Sender: TObject);
    procedure SpeedItem8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure MainMenu1GetItemParams(Sender: TMenu; Item: TMenuItem;
      State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
      var Graphic: TGraphic; var NumGlyphs: Integer);
  private
    { Private declarations }
//////以下为画mainform背景图   // 暂不使用
///    FClientInstance,
///    FPrevClientProc : TFarProc;
//    PROCEDURE ClientWndProc(VAR Message: TMessage); //用于画mainform背景
///////////////////////////////////////////////////////////////
    procedure ActiveFormChange(Sender: TObject);
    procedure OpenForm(Sender: TObject; FormClass: TFormClass);
    procedure UpdateToolbar;
  public
    { Public declarations }
    procedure SetRightMenu(Sid:integer);
  end;

var
  MainForm: TMainForm;

implementation

uses IniFiles, AppUtils, Buttons, About,
  RxSlider, VCLUtils, RxHints, RxGraph, {$IFDEF WIN32} RxGrdCpt, {$ENDIF}
  ShellAPI, datamodu,
  Unit1,  Unit1b, Unit1c, Unit2,  Unit2a, Unit3,  Unit4,  Unit5,  Unit5f, Unit6,  Unit6b, Unit6c, Unit6d, Unit6e,
  Unit10, Unit10a,Unit10b,Unit10f,Unit11, Unit13, Unit13a,Unit13b,Unit15, Unit15b,Unit15c,Unit16, Unit19,
  Unit20, Unit20a,Unit20b,Unit20c,Unit25, Unit25a,Unit25b,Unit25c,Unit29b,Unit29c,Unit29d,Unit29e,Unit29f,Unit29g,Unit29h,
  Unit30, Unit34, Unit38,
  Unit40, Unit44, Unit47, Unit48, 
  Unit52, Unit52a,Unit52c,Unit52d,Unit53, Unit53a,Unit53b,Unit53f,Unit54, Unit54a,Unit55, Unit56, Unit58, Unit59c,
  Unit60, Unit62, Unit63, Unit65, Unit65b,Unit65c,Unit66, Unit67, Unit68, Unit68a,Unit68b,Unit68c,
  Unit69, Unit69a,Unit69b,Unit69c,
  Unit71, Unit71b,Unit71c,Unit71e,Unit71f,Unit72, Unit72a,Unit74c,Unit76,Unit76a,
  Unit84, Unit84a,Unit84b,Unit86, Unit86a,
  Unit93, Unit93a,Unit93b,Unit93c,
  Unit105,Unit105b,Unit105c,Unit105d,Unit105e,Unit105f,Unit106,Unit106a,Unit107,Unit107a,Unit107b,Unit107c,
  Unit111a,Unit111b,Unit111c,
  Unit126,Unit126a,
  Unit201,Unit201a,Unit201e,Unit201f,Unit202,Unit202b,Unit202c,
  Unit205,Unit205b,Unit205c,
  Unit215,Unit215a,Unit215b,
  Unit238,
  Unit253,Unit253a,
  Unit266,Unit266a,Unit266c,Unit266d,Unit266e;

{$R *.DFM}

{$IFDEF WIN32}
  {$R BACKGRND.R32}
{$ELSE}
  {$R BACKGRND.R16}
{$ENDIF}

procedure TMainForm.UpdateToolbar;
begin
Toolbar.SetFontDefault;
end;

procedure TMainForm.Exit(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
//var jpg: TJpegImage;
begin
    SetHintStyle(hsRectangle, 2, False, taCenter);
    Screen.OnActiveFormChange := ActiveFormChange;
    UpdateToolbar;
//////以下为画mainform背景图     暂不使用
{
    jpg   :=   TJPEGImage.Create;
    jpg.Assign(Image2.picture.Graphic);
    Image1.align:=alclient;
    Image1.picture.bitmap.Assign(jpg); //经jpg(存储jpg图片，size原小于bmp)将jpg图片付给image1，image1画mdi背景时必须为bmp图片
    jpg.Free;
    Image2.Visible:=False;
    FClientInstance   :=   MakeObjectInstance(ClientWndProc);
    FPrevClientProc   :=   Pointer(GetWindowLong(ClientHandle,   GWL_WNDPROC));
    SetWindowLong(ClientHandle,   GWL_WNDPROC,   LongInt(FClientInstance));
}
/////////////////////////////////////////////////////////////////////////////
{$IFDEF WIN32}
//  RXDemo1.Default := True;
    KMitem.Default := True;
    GradientFormCaption(Self, clWindowText);
{$ENDIF}
{
Panel3.Align:=alClient;
with dm.pubqry do
begin
    if active=True then close;
    commandtext:='select top 1 1 from tb_option where opt_title=''istestversion'' and param1=''1''';
    open;
    Panel3.Visible:=(recordcount>0);
end;
}
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
end;

procedure TMainForm.ActiveFormChange(Sender: TObject);
begin
  CascadeItem.Enabled := MDIChildCount > 0;
  TileItem.Enabled := MDIChildCount > 0;
end;

procedure TMainForm.OpenForm(Sender: TObject; FormClass: TFormClass);
begin
  if Sender is TSpeedButton then (Sender as TSpeedButton).Down := True;
  Screen.Cursor := crHourGlass;
  try
    FindShowForm1(FormClass, '', (Sender as TComponent).Tag); //将各模块调用数传入，用以判断可打印、导出的权限
//    FindShowForm(FormClass, '');
    ActiveFormChange(nil);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainForm.View(Sender: TObject);
begin
with dm.pubqry do
begin
    if (curuser<>'何阳') and not ((Sender as TComponent).Tag in [4])  // 更改本人密码 不受限制
         and not ((Sender as TComponent).Tag in [35])  //  系统升级 不受限制
    then
    begin
        if active then close;
        commandtext:='select dbo.fn_checkright('+inttostr(curuserid)+','+inttostr((Sender as TComponent).Tag)+')';
        open;
        if fields[0].asboolean=false then raise Exception.Create('抱歉，您无此权限');
        close;
    end;
end;

  case (Sender as TComponent).Tag of
    1: OpenForm(Sender, TSetstaff);
    2: OpenForm(Sender, TSetbroker);
    3: OpenForm(Sender, TSetcustomer);
    4: begin
            setpassword:=Tsetpassword.create(application);
            with setpassword do
            begin
                caption:='修改'+curuser+'的登录密码';
                showmodal;
                caption:='设置密码';
                free;
            end;
       end;
    5: OpenForm(Sender, TSetmedicine);
    6: OpenForm(Sender, TSetbrokermed);
    7: OpenForm(Sender, TSetbusimate);
    8: OpenForm(Sender, TSetuser);
    9: OpenForm(Sender, TSetcompany);
   10: OpenForm(Sender, TSetmedimport);
   11: OpenForm(Sender, TSetmedexport);
   12: OpenForm(Sender, TSetbusioption);
   13: OpenForm(Sender, TQrystock);
   14: OpenForm(Sender, TQryclassimp);
   15: OpenForm(Sender, TQryclassexp);
   16: OpenForm(Sender, TSetmedimport2);
   17: OpenForm(Sender, TQrybrokerbal);
//   18: OpenForm(Sender, TSetmatestock);
//   19: OpenForm(Sender, TSetpay);
   20: OpenForm(Sender, TQrybrokerexg);
//   21: OpenForm(Sender, TSetreport31);  // <-----
   21: OpenForm(Sender, TSetmatestock);  // <-----
   22: OpenForm(Sender, TQrymedexg);
//   23: OpenForm(Sender, TQrymateexg);
//   24: OpenForm(Sender, TQryreport02);
//   25: OpenForm(Sender, TQryreport03);
//   26: OpenForm(Sender, TSetreport01);
//   27: OpenForm(Sender, TSetreport14);
//   28: OpenForm(Sender, TSetreport16);
//   29: OpenForm(Sender, TSetreport04);
   30: OpenForm(Sender, TSetreport05);
   31: OpenForm(Sender, TSetsettle);
//   32: OpenForm(Sender, TQrybrokermedtl);
//   33: OpenForm(Sender, TQryreport04);
//   34: OpenForm(Sender, TSetreport06);
   35: OpenForm(Sender, TSetsysupdate);
//   36: OpenForm(Sender, TSetdrawrate1);
   37: OpenForm(Sender, TSetmedistprice);
//   38: OpenForm(Sender, TSetrulestop);
   39: OpenForm(Sender, TSetruleapply);
   40: OpenForm(Sender, TSetruleapply1);
   41: OpenForm(Sender, TSetbrokermedtl);
   42: OpenForm(Sender, TSetreport07);
//   43: OpenForm(Sender, TSetrulestop1);
   44: OpenForm(Sender, TQrybrokerexg1);
   45: OpenForm(Sender, TSetruleapply2);
//   46: OpenForm(Sender, TSetreplaceleader);
//   47: OpenForm(Sender, TQrystock1);
//   48: OpenForm(Sender, TSetmedexport1); //医院处方单
//   49: OpenForm(Sender, TQryclassexp1); //销货单
//   50: OpenForm(Sender, TSetcustmedrule); //产品费用分配表
//   51: OpenForm(Sender, TSetrulestop2); // 意向业务人员拜访记录
//   52: OpenForm(Sender, TSetmatelevel); // 设置商业级别
   53: OpenForm(Sender, TSetbusiframe); // 设置商业业务结构
   54: OpenForm(Sender, TSetmatemedfee); // 设置医院费用
   55: OpenForm(Sender, TSetcheckstock); // 商业公司盘点单综合查询
   56: OpenForm(Sender, TQryclasscheckstock); // 商业公司盘点单
//   57: OpenForm(Sender, TQryreport05); // 医院品种统计表
   58: OpenForm(Sender, TSetruleapply3); //
//   59: OpenForm(Sender, TSetrulestop3); //
{
   60: OpenForm(Sender, TSetallotrule); // 设置商业调拨规则
   61: OpenForm(Sender, TSetallotruleapply); // 调拨规则业务申请
   62: OpenForm(Sender, TSetallotruleapply1); // 调拨规则业务审核
   63: OpenForm(Sender, TSetallotruleapply2); // 调拨规则财务复核
   64: OpenForm(Sender, TSetallotruleapply3); // 调拨规则财务复核
   65: OpenForm(Sender, TSetallotruleapply3); // 调拨规则财务复核
}   
   66: OpenForm(Sender, TSetreport08);
   67: OpenForm(Sender, TSettrustrule);  //医院托管费规则
{
   68: OpenForm(Sender, TSetruleadjust);  //费用规则业务申请
   69: OpenForm(Sender, TSetruleadjust1);  //费用规则业务申请
   70: OpenForm(Sender, TSetruleadjust2);  //费用规则业务申请
   71: OpenForm(Sender, TSetruleadjust3);  //费用规则业务申请
}
   72: OpenForm(Sender, TSettrustruleapply);  //托管费规则业务申请
//   73: OpenForm(Sender, TSettrustruleapply1);  //托管费规则业务申请
   74: OpenForm(Sender, TSettrustruleapply2);  //托管费规则财务复核
   75: OpenForm(Sender, TSettrustruleapply3);  //托管费规则财务复核
   76: OpenForm(Sender, TSetreport09);  //医院托管费统计表
{
   77: OpenForm(Sender, TSetallotstopapply);  //调拨规则停用业务申请
   78: OpenForm(Sender, TSetallotstopapply1);  //调拨规则停用业务申请
   79: OpenForm(Sender, TSetallotstopapply2);  //调拨规则停用业务申请
   80: OpenForm(Sender, TSetallotstopapply3);  //调拨规则停用业务申请

   81: OpenForm(Sender, TSettruststopapply);  //托管费规则停用业务申请
   82: OpenForm(Sender, TSettruststopapply1);  //托管费规则停用业务申请
   83: OpenForm(Sender, TSettruststopapply2);  //托管费规则停用业务申请
   84: OpenForm(Sender, TSettruststopapply3);  //托管费规则停用业务申请
}

   85: OpenForm(Sender, TSetlinkword);  //托管费规则停用业务申请
   86: OpenForm(Sender, TQrystock2);  //历史库存查询
   87: OpenForm(Sender, TSetallotfeeapply);  //调拨费业务申请
   88: OpenForm(Sender, TSetallotfeeapply1);  //调拨费业务审核
   89: OpenForm(Sender, TSetallotfeeapply2);  //调拨费业务审核
   90: OpenForm(Sender, TSetallotfeeapply3);  //调拨费业务审核
   91: OpenForm(Sender, TSettrustfeeapply);   //退管费业务申请
   92: OpenForm(Sender, TSettrustfeeapply1);   //退管费业务申请
   93: OpenForm(Sender, TSettrustfeeapply2);   //退管费业务申请
   94: OpenForm(Sender, TSettrustfeeapply3);   //退管费业务申请
   95: OpenForm(Sender, TSetreport10);   	   //业务员费用汇总
   96: OpenForm(Sender, TSetbrokerfeeapply);   //业务员费用业务申请
   97: OpenForm(Sender, TSetchannel);   //
   98: OpenForm(Sender, TSetbrokerfeeapply1);   //业务员费用业务申请
   99: OpenForm(Sender, TSetbrokerfeeapply2);   //业务员费用业务申请
  100: OpenForm(Sender, TSetcustgroup);   //
  101: OpenForm(Sender, TSetreport11);   //业务员费用出纳付款查询
  102: OpenForm(Sender, TSetbrokerfeepay);   //业务员费用付款单
  103: OpenForm(Sender, TSetbrokerfeepay1);   //业务员费用付款单
//  104: OpenForm(Sender, TSetreport12);   //分销合同录入
//  105: OpenForm(Sender, TSethomebank);
//  106: OpenForm(Sender, TSetbrokeraccount);
//  107: OpenForm(Sender, TSetbrokeraccount1);
//  108: OpenForm(Sender, TSetbrokeraccount2);
//  109: OpenForm(Sender, TSetbrokeraccount3);

  110: OpenForm(Sender, TSetmedistprice1);
  111: OpenForm(Sender, TSetmedistprice2);
//  112: OpenForm(Sender, TQrymedistprice);
//  113: OpenForm(Sender, TSetreport13);
//  114: OpenForm(Sender, TSetreport03);
  115: OpenForm(Sender, TSetagent);
//  116: OpenForm(Sender, TSetmatestock);
  117: OpenForm(Sender, TSetrecaccount);
//  118: OpenForm(Sender, TSetreport15);
//  119: OpenForm(Sender, TSetmedicine1);
//  120: OpenForm(Sender, TSetcustomer1);
//  121: OpenForm(Sender, TSetbroker1);
//  122: OpenForm(Sender, TSetagent1);
  123: OpenForm(Sender, TQryclassexp2);
//  124: OpenForm(Sender, TQryreport12);
//  125: OpenForm(Sender, TQryreport06);
  126: OpenForm(Sender, TQryclassimp1);
  127: OpenForm(Sender, TQryclassexp3);
  128: OpenForm(Sender, TSetmedimport1);
  129: OpenForm(Sender, TSetmedexport2);
//  130: OpenForm(Sender, TSetdistrirule);
//  131: OpenForm(Sender, TSetreport02);
//  132: OpenForm(Sender, TQryclassexp4);
  133: OpenForm(Sender, TSetrecaccount1);
//  134: OpenForm(Sender, TSetcontractapply);
//  135: OpenForm(Sender, TSetcontractapply1);
  136: OpenForm(Sender, TSetmedexport3); //供综合查询用销货单
//  137: OpenForm(Sender, TQryreport07);  //分销流向缺失异动表
/////
//  138: OpenForm(Sender, TSetbusimate1); //设置OTC商业公司
//  139: OpenForm(Sender, TSetstore);     //设置药店
//  140: OpenForm(Sender, TSetmedimport2); //OTC战略采购入库单
//  141: OpenForm(Sender, TSetmedexport4); //OTC战略销售出库单
//  142: OpenForm(Sender, TSetmedexport5); //终端普通销售出库单
//  143: OpenForm(Sender, TSetmedimport3); //OTC普通采购入库单
//  144: OpenForm(Sender, TQryclassimp2);  //OTC普通销售出库单
//  145: OpenForm(Sender, TQryclassimp3);
//  146: OpenForm(Sender, TQryclassexp6);
//  147: OpenForm(Sender, TQryclassexp5);
//  148: OpenForm(Sender, TSetmatelevel1); //设置OTC商业级别
//  149: OpenForm(Sender, TSetallotrule1); //设置OTC商业级别
/////
//  150: OpenForm(Sender, TSetreport17);   //OTC合同录入
//  151: OpenForm(Sender, TSetcontractapply2);   //OTC合同生效审批
//  152: OpenForm(Sender, TSetcontractapply3);   //OTC合同失效审批
//  153: OpenForm(Sender, TQryreport17);  //OTC合同查询
//  154: OpenForm(Sender, TQryclassexp7); //OTC销售明细汇总报表
/////
//  155: OpenForm(Sender, TSetreport18); //分销期初库存表
//  156: OpenForm(Sender, TQryclassexp8); //OTC销售流向汇总表
//  157: OpenForm(Sender, TSetbusiframe1); //设置OTC业务结构
//  158: OpenForm(Sender, TQryclassexp9); //设置OTC业务结构
//  159: OpenForm(Sender, TSetbusiframe2); //设置分销业务结构
//  160: OpenForm(Sender, Tqryreport12a); //合同目标医院明细表
//  161: OpenForm(Sender, TSetreport19); //推广合同录入
//  162: OpenForm(Sender, TSetcontractapply4); //推广合同生效审批
//  163: OpenForm(Sender, TSetcontractapply5); //推广合同失效审批
//  164: OpenForm(Sender, Tqryreport19); //推广合同查询
//  165: OpenForm(Sender, TSetagentaccount); //代理人收款资料申请
//  166: OpenForm(Sender, TSetagentaccount1); //代理人收款资料申请
//  167: OpenForm(Sender, TSetagentaccount2); //代理人收款资料申请
//  168: OpenForm(Sender, TSetagentaccount3); //代理人收款资料申请
  169: OpenForm(Sender, TSetbusiframe3); //分销销售促销规则
  170: OpenForm(Sender, TSetpromoapply); //分销销售促销财务申请
  171: OpenForm(Sender, TSetpromoapply1); //分销销售促销财务审批
  172: OpenForm(Sender, TSetexpaybook); //其他支出记账制单
  173: OpenForm(Sender, TSetexpaybook1); //其他支出记账审批
  174: OpenForm(Sender, TSetexpaycheck); //其他支出核销
  175: OpenForm(Sender, TSetexpay); //其他支出核销部门申请
  176: OpenForm(Sender, TSetcheckstock1); //商业盘点审核
  177: OpenForm(Sender, TSetexpay2); //其他支出核销财务复核
  178: OpenForm(Sender, TSetexpay3); //其他支出核销财务审核
  179: OpenForm(Sender, TSetexpaycash);
  180: OpenForm(Sender, TSetexpaycash1);
  181: OpenForm(Sender, TSetreport20); //其他支出核销审核
//  182: OpenForm(Sender, TSetshoprxmed); //设置药店经营处方品种
//  183: OpenForm(Sender, TSethospotcmed); //设置医院经营非处方品种
//  184: OpenForm(Sender, TSetreport21); //保证金录入
//  185: OpenForm(Sender, TSetmedexport6);
//  186: OpenForm(Sender, TQryclassexp10);
  187: OpenForm(Sender, TSetreport22);
//  188: OpenForm(Sender, TSetsupplier); //设置供应商
//  189: OpenForm(Sender, TSetbusimate7); //设置快递公司
//  190: OpenForm(Sender, TSetbusimate8); //设置物流公司
//  191: OpenForm(Sender, TSetbusiframe5); //设置价目表(录入)
//  192: OpenForm(Sender, TSetbusipriceapply); //价目表申请
//  193: OpenForm(Sender, TSetbusipriceapply1); //价目表审核
//  194: OpenForm(Sender, TSetmedimport4); //分销采购计划部门申请
//  195: OpenForm(Sender, TSetmedimport4a); //分销采购计划采购审核
//  196: OpenForm(Sender, TSetreceive1); //分销采购收款部门申请
//  197: OpenForm(Sender, TSetreceive1a); //分销采购收款采购审核
//  198: OpenForm(Sender, TSetmedimport5); //商业采购计划部门申请
//  199: OpenForm(Sender, TSetmedimport5a); //商业采购计划采购审核
//  200: OpenForm(Sender, TSetmedexport7); //两票销售出库部门申请
//  201: OpenForm(Sender, TSetmedexport7a); //两票销售出库部门审核
//  202: OpenForm(Sender, TSetexpaybook2); //两票销售出库部门审核
//  203: OpenForm(Sender, TSetexpaybook2a); //两票销售出库部门审核
//  204: OpenForm(Sender, TQryclassimp4); // 采购计划综合查询
//  205: OpenForm(Sender, TQryclassexp11); // 两票销售综合查询
//  206: OpenForm(Sender, TSetreport23); // 销售收款开票物流核销
//  207: OpenForm(Sender, TSetbusiframe4); // 两票销售促销规则-录入
//  208: OpenForm(Sender, TSetpromoapplyA1); // 两票销售促销部门申请
//  209: OpenForm(Sender, TSetpromoapplyA2); // 两票销售促销财务复核
//  210: OpenForm(Sender, TSetpromoapplyA3); // 两票销售促销财务审核
//  211: OpenForm(Sender, TSetreceive2);   // 主流商务收款部门申请
//  212: OpenForm(Sender, TSetreceive2a);   // 两票收款采购审核
//  213: OpenForm(Sender, TSetexpinvoice);   // 发票快递物流核销部门申请
//  214: OpenForm(Sender, TSetexpinvoice1);   // 发票快递物流核销部门审核
//  215: OpenForm(Sender, TQryreport09);   // 商业公司账务明细表
//  216: OpenForm(Sender, TSetbusiframe6); // 设置供应商返入规则表(录入规则)
//  217: OpenForm(Sender, TSetpromoapplyB1); // 设置供应商返入规则部门申请
//  218: OpenForm(Sender, TSetpromoapplyB2); // 设置供应商返入规则财务审核
//  219: OpenForm(Sender, TSetreport24);   // 供应商返入核销
//  220: OpenForm(Sender, TSetreceive3);   // 主流商务收款部门申请
//  221: OpenForm(Sender, TSetreceive3a);   // 主流商务收款采购审核
//  222: OpenForm(Sender, TSetreport25); // 生成两票其他支出核销单
//  229: OpenForm(Sender, TQryreport08); // 供应商账务明细表
//  230: OpenForm(Sender, TQryreport10); // 供应商返入应收余额汇总表
//  231: OpenForm(Sender, TQryreport11); // 商业公司应收余额汇总表
//  232: OpenForm(Sender, TQryreport13); // 两票分销返款汇总表 原 分销商业公司促销返款余额汇总表
//  233: OpenForm(Sender, TQryreport14); // 两票利润统计报表
//  234: OpenForm(Sender, TSetreport31); // 其他支出费用状态汇总报表
//  235: OpenForm(Sender, TQryreport16); // 两票主流商业账龄报表
//  236: OpenForm(Sender, TQryreport18); // 主流商业开票回款明细表
//  237: OpenForm(Sender, TQryreport15); // 两票销售出库数量差异表
//  238: OpenForm(Sender, TQryreport20); // 主流商业开票回款明细表
//  239: OpenForm(Sender, TSetmedexport8); //两票销售调价部门申请
//  240: OpenForm(Sender, TSetmedexport8a); // 两票销售调价部门审核
//  241: OpenForm(Sender, TQryreport21); // 两票销售调价部门审核
//  242: OpenForm(Sender, TSetreport27); // 其他支出汇总报表
//  243: OpenForm(Sender, TQryreport22); // 业务员收款资料变更统计表
//  244: OpenForm(Sender, TQryreport23); // 代理人收款资料变更统计表
//  245: OpenForm(Sender, TSetreport28); // 品种库存查询
  246: OpenForm(Sender, TQryreport24); // 分销返款汇总表
  247: OpenForm(Sender, TQryreport25); // 费用汇总表
//  248: OpenForm(Sender, TQryreport26); // 供应商返入收款查询表
//  249: OpenForm(Sender, TQryreport29); // 两票销售收款与返入汇总
//  250: OpenForm(Sender, TQryreport28); // 利润汇总表

//  251: OpenForm(Sender, TQryreport27); // 分销品种利润统计表
//  252: OpenForm(Sender, TSetbusiframe7); // 设置供应商采购价目表
//  253: OpenForm(Sender, TSetbusipriceapply2); // 采购价目表部门申请
//  254: OpenForm(Sender, TSetbusipriceapply3); // 采购价目表部门审核
  
//  255: OpenForm(Sender, TSetmedimport6); // 商业采购调价部门申请
//  256: OpenForm(Sender, TSetmedimport6a); // 商业采购调价部门审核
//  257: OpenForm(Sender, TSetbusiframe8); // 供应商流向返入规则
//  258: OpenForm(Sender, TSetruleapply4); //供应商流向返入规则部门申请
//  259: OpenForm(Sender, TSetruleapply5); //供应商流向返入规则部门审核
//  260: OpenForm(Sender, TSetreport29); //供应商流向返入核销
//  261: OpenForm(Sender, TSetreceive4); //固定应收收款部门申请
//  262: OpenForm(Sender, TSetreceive4a); //固定应收收款部门审核
//  263: OpenForm(Sender, TSetreceive5); //应收二次收款部门申请
//  264: OpenForm(Sender, TSetreceive5a); //应收二次收款部门审核
//  265: OpenForm(Sender, TSetreceive6); //达成奖收款单部门申请
//  266: OpenForm(Sender, TSetreceive6a); //达成奖收款单部门审核
//  267: OpenForm(Sender, TSetreport30); //供应商流向返入汇总
//  268: OpenForm(Sender, Tqryreport30); //付款账户汇总表$

//  270: OpenForm(Sender, TSetaccounts); //设置会计科目
//  271: OpenForm(Sender, TSetexpensesup); //设置费用科目供应方
//  272: OpenForm(Sender, TSetdocument); //制作会计凭证\制单
//  273: OpenForm(Sender, TSetdocument1); //制作会计凭证\审核
//  274: OpenForm(Sender, TQryclassdocument); //财务凭证综合查询
//  275: OpenForm(Sender, TQrybankacc); //账户收支查询
//  276: OpenForm(Sender, TQryclassexpense); //费用发生查询

  277: OpenForm(Sender, TSetmedprice); //设置药品中标价
  278: OpenForm(Sender, TSetmedprice1); //设置药品考核价
  279: OpenForm(Sender, TSetmedprice2); //设置学术标准政策
  280: OpenForm(Sender, TSetmedprice3); //设置分销标准政策
  281: OpenForm(Sender, TSetbusimate10); //设置推广服务商
  282: OpenForm(Sender, TQryclassimp5); //商业采购推广费统计
  283: OpenForm(Sender, TSetreport10a); //业务员费用补差表
  284: OpenForm(Sender, TSetbrokerfeeoffset); //业务员费用补差记账制单
  285: OpenForm(Sender, TSetbrokerfeeoffset1); //业务员费用补差记账审核
  286: OpenForm(Sender, TSetpromoapply2); //业务员费用补差记账审核
  287: OpenForm(Sender, TSetbusiframe3a); //业务员费用补差记账审核
  288: OpenForm(Sender, TSetexpayrec); // 其他支出收款制单
  289: OpenForm(Sender, TSetexpayrec1); // 其他支出收款审核

  291: OpenForm(Sender, TQryreport31); // 分销客户对账表(所有)

  301: OpenForm(Sender, TSetmedimport7); // 新零售商业采购入库
  302: OpenForm(Sender, TQryclassimp7);  // 新零售商业采购综合查询
{
  303: OpenForm(Sender, TSetmedexport9);  //连锁终端销售出库单
  304: OpenForm(Sender, TQryclassexp5);  //连锁终端销售出库综合查询
  305: OpenForm(Sender, TSetmedexport10);  //零售销售出库单
  306: OpenForm(Sender, TQryclassexp6);  //零售销售综合查询
}
  307: OpenForm(Sender, TSetcheckstock2);  //连锁终端盘点制单
  308: OpenForm(Sender, TSetcheckstock3);  //连锁终端盘点审核
  309: OpenForm(Sender, TQrystock1);
  310: OpenForm(Sender, TSetreport32);
  311: OpenForm(Sender, TSetbusiframe9);
  312: OpenForm(Sender, TSetexpaybook2);  //新零售购进应付记账制单
  313: OpenForm(Sender, TSetexpaybook2a); //新零售购进应付记账审核
  314: OpenForm(Sender, TSetexpaycheck1); //新零售购进应付记账审核
  315: OpenForm(Sender, TSetexpayA); // 购进费用付款部门申请
  316: OpenForm(Sender, TSetexpayA1); // 购进费用付款财务复核
  317: OpenForm(Sender, TSetexpayA2); // 购进费用付款财务审核
  318: OpenForm(Sender, TSetreport26); // 购进费用付款财务审核
  319: OpenForm(Sender, TSetexpaycashA); // 购进费用付款制单
  320: OpenForm(Sender, TSetexpaycashA1); // 购进费用付款审核

  321: OpenForm(Sender, TSetbusiframe10);
  322: OpenForm(Sender, TSetexpaybook3);  //新零售动销应付记账制单
  323: OpenForm(Sender, TSetexpaybook3a); //新零售动销应付记账审核
  324: OpenForm(Sender, TSetexpaycheck2); //新零售动销应付记账审核
  325: OpenForm(Sender, TSetexpayB); // 动销费用应付部门申请
  326: OpenForm(Sender, TSetexpayB1); // 动销费用应付财务复核
  327: OpenForm(Sender, TSetexpayB2); // 动销费用应付财务审核
  328: OpenForm(Sender, TSetreport26a); // 购进费用付款财务审核
  329: OpenForm(Sender, TSetexpaycashB); // 动销费用付款制单
  330: OpenForm(Sender, TSetexpaycashB1); // 动销费用付款审核

  331: OpenForm(Sender, TSetreport11a); // 新零售付款出纳查询
  332: OpenForm(Sender, TSetreport10b); // 新零售费用明细表
  333: OpenForm(Sender, TSetreport10c); // 新零售费用汇总表

{
制作会计凭证\制单
制作会计凭证\审核
财务凭证综合查询
账户收支查询
费用发生查询
}
   end;
end;

procedure TMainForm.SetRightMenu(Sid:integer);
var use_prio,i: integer;
    sr: string;
begin
with dm.pubqry do
begin
    if active=true then close;
    commandtext:='select top 1 use_priority from tb_staff where sta_id='+inttostr(sid);
    open;
    if recordcount=0 then use_prio:=0 else use_prio:=fields[0].asinteger;
    close;
    sr:=',';
    if use_prio=0 then
    begin
        commandtext:='select b.sf_invoke from tb_useright a,tb_sysframe b ';
        commandtext:=commandtext+'where a.sf_id=b.sf_id and sta_id='+inttostr(sid);
        open;
        first;
        while not eof do
        begin
            sr:=sr + fieldbyname('sf_invoke').asstring+',';
            next;
        end;
    end;
    with mainform do
    begin
        for i:=0 to componentcount-1 do
        begin
            if (TComponent(components[i]).tag in [6]) //
//             or (TComponent(components[i])=N5)
//             or (TComponent(components[i])=E4)
            then
            begin
                if components[i] is TMenuItem then (components[i] as TMenuItem).Enabled  :=false;
                if components[i] is TSpeedItem then (components[i] as TSpeedItem).Enabled:=false;
            end
            else
            begin
                if ((components[i] is TMenuItem) or (components[i] is TSpeedItem)) and (TComponent(components[i]).tag>0)
                 and (TComponent(components[i]).tag<>25) and (TComponent(components[i]).tag<>120) then // 25:更改自我密码; 120:系统升级
                begin
                    if components[i] is TMenuItem then (components[i] as TMenuItem).Enabled  :=(use_prio>0) or (pos(','+inttostr(TComponent(components[i]).tag)+',',sr)>0);
                    if components[i] is TSpeedItem then (components[i] as TSpeedItem).Enabled:=(use_prio>0) or (pos(','+inttostr(TComponent(components[i]).tag)+',',sr)>0);
                end;
            end;
        end;
        N17.Visible:=False; //设置公司
        P2.Visible:=True; //更改本人密码
        P2.Enabled:=True; //更改本人密码
        U2.Visible:=False;
        N19.Visible:=False;
//        N91.Visible:=False; // 两票商业费用兑付进销存统计
//        N210.Visible:=False; // 业务员费用规则停用流程不再使用
//        D8.Visible:=False;
//        E9.Visible:=False;
//        R3.Visible:=False;
//        P3.Visible:=False;
//        E1.Visible:=False;
//        N3.Visible:=False;
//        D3.Visible:=False;
        L2.Visible:=False;
        M2.Visible:=False;
//        EOTC1.Visible:=False;
//        E5.Visible:=False;
//        N35.Visible:=False;
        /////////////////// 以下为23.08.30隐藏
//        E2.Visible:=False;
//        EOTC1.Visible:=False;
//        K1.Visible:=False;
        C4.Visible:=False;
//        N74.Visible:=False;
//        D9.Visible:=False;
//        N80.Visible:=False;
//        G6.Visible:=False;
//        E10.Visible:=False;  //两票销售出库单 取消
//        K4.Visible:=False;
//        J4.Visible:=False;
//        A2.Visible:=False;
//        A3.Visible:=False;
//        C10.Visible:=False;
//        C12.Visible:=False;
//        N59.Visible:=False;
//        A6.Visible:=False;
//        A7.Visible:=False;
//        M4.Visible:=False;
//        L5.Visible:=False;

        N25.Visible:=False;
//        N56.Visible:=False;
{
        N53.Visible:=False;
        F4.Visible:=False;
        J6.Visible:=False;
}

//        J3.Visible:=False;
//        L3.Visible:=False;
//        N60.Visible:=False;
//        O1.Visible:=False;
//        F1.Visible:=False;
//        N5.Visible:=False;
//        B4.Visible:=False;
//        R4.Visible:=False;
//        R5.Visible:=False;

//        G3.Visible:=False;
//        G1.Visible:=False;
//        N58.Visible:=False;
//        N324.Visible:=False;
//        N418.Visible:=False;
//        N70.Visible:=False;
//        B5.Visible:=False;
//        C11.Visible:=False;
//        F5.Visible:=False;
//        F6.Visible:=False;
//        I1.Visible:=False;
//        N80.Visible:=False;
//        F12.Visible:=False;
        N50.Visible:=False;
        N20.Visible:=False;
        C8.Visible:=False;
        D5.Visible:=False;
//        N96.Visible:=False;
//        E4.Visible:=False;
//        E7.Visible:=False;
        N4.Visible:=False;
        N16.Visible:=False;
//        G2.Visible:=False;
//        F13.Visible:=False;
        N315.Visible:=False;
//        C5.Visible:=False;
{
        R3.Visible:=False;
        P3.Visible:=False;
        E1.Visible:=False;
        N3.Visible:=False;
}
//        N116.Visible:=False;
        SpeedItem8.Visible:=False;

//        N165.Visible:=False;
//        F7.Visible:=False;
//        E6.Visible:=False;

//        Y2.Visible:=False;
//        R2.Visible:=False;
//        C3.Visible:=False;
//        H1.Visible:=False;
//        P4.Visible:=False;
//        B1.Visible:=False;
//        T3.Visible:=False;
//        N18.Visible:=False;
//        K2.Visible:=False;
//        L4.Visible:=False;
//        M3.Visible:=False;
//        N77.Visible:=False;
//        P5.Visible:=False;
//        P7.Visible:=False;
//        N110.Visible:=False;
        spdbtn7.Visible:=False;
        SpeedItem1.Visible:=False;
    end;
end;
end;

procedure TMainForm.SaveLayoutItemClick(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(GetDefaultIniName);
  try
    Toolbar.SaveLayout(IniFile);
  finally
    IniFile.Free;
  end;
end;

procedure TMainForm.RestoreLayoutItemClick(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(GetDefaultIniName);
  try
    Toolbar.RestoreLayout(IniFile);
  finally
    IniFile.Free;
  end;
end;

procedure TMainForm.WindowItemClick(Sender: TObject);
begin
  case (Sender as TComponent).Tag of
    1: Cascade;
    2: Tile;
    3: ArrangeIcons;
  end;
end;

procedure TMainForm.AboutItemClick(Sender: TObject);
begin
  TrayIcon.Animated := False;
  try
    ShowDialog(TAboutForm);
  finally
    TrayIcon.Animated := True;
  end;
end;

procedure TMainForm.FormPlacement1RestorePlacement(Sender: TObject);
begin
  RestoreMDIChildren(Self, FormPlacement1.IniFile);
{$IFNDEF WIN32}
  AppTaskbarIcons(True);
  Application.BringToFront;
{$ENDIF}
end;

procedure TMainForm.FormPlacement1SavePlacement(Sender: TObject);
begin
  SaveMDIChildren(Self, FormPlacement1.IniFile);
end;

procedure TMainForm.AppSettingsChanged(Sender: TObject);
begin
  UpdateToolbar;
end;

procedure TMainForm.AppActivate(Sender: TObject);
begin
{$IFNDEF WIN32}
  if Screen.ActiveForm <> nil then Screen.ActiveForm.BringToFront;
{$ENDIF}
end;

procedure TMainForm.AppRestore(Sender: TObject);
begin
{$IFDEF WIN32}
//  if NewStyleControls then ShowWindow(Application.Handle, SW_SHOW);
{$ENDIF}
end;

procedure TMainForm.AppMinimize(Sender: TObject);
begin
{$IFDEF WIN32}
//  if NewStyleControls then ShowWindow(Application.Handle, SW_HIDE);
{$ENDIF}
end;

procedure TMainForm.AppHint(Sender: TObject);
begin
//  MessagePanel.Caption := Application.Hint;
end;

procedure TMainForm.KMitemClick(Sender: TObject);
begin
  Application.Restore;
  Application.BringToFront;
end;

procedure TMainForm.RXWebSite1Click(Sender: TObject);
begin
//  RxWebSite;
end;

procedure TMainForm.PopupMenuGetItemParams(Sender: TMenu; Item: TMenuItem;
  State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
  var Graphic: TGraphic; var NumGlyphs: Integer);
begin
  case Item.Tag of
    1..4: Graphic := PopupImg.GraphicCell[Item.Tag - 1];
  end;
end;

procedure TMainForm.PopupMenuDrawMargin(Sender: TMenu; Rect: TRect);
const
  Txt = 'KingStar';
begin
  with PopupMenu.Canvas.Font do begin
    Name := 'Arial';
    Style := [fsBold];
    Size := 14;
    Color := clWhite;
    Handle := CreateRotatedFont(PopupMenu.Canvas.Font, 90);
  end;
  PopupMenu.DefaultDrawMargin(Rect, clLime, RGB(GetRValue(clLime) div 4,
    GetGValue(clLime) div 4, GetBValue(clLime) div 4));
  SetBkMode(PopupMenu.Canvas.Handle, TRANSPARENT);
  ExtTextOut(PopupMenu.Canvas.Handle, Rect.Left, Rect.Bottom - 5, ETO_CLIPPED,
    @Rect, Txt, Length(Txt), nil);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if mdichildcount>0 then raise Exception.Create('尚有未关闭窗口['+activemdichild.caption+'], 请关闭后退出');
IF application.messagebox('确定退出本系统','注意',mb_okcancel+mb_iconexclamation)=idOK
    then
    begin
        with dm.district do if active=true then close;
        with dm.pubqry do if active=true then close;
        application.terminate
    end
    else canclose:=false;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
with userpanel.font do
     if color=clmaroon then color:=clred else color:=clmaroon;
tag:=tag+1;
if tag>8 then
begin
     tag:=0;
     userpanel.font.color:=clmaroon;
     timer1.enabled:=false;
end;
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  login:=Tlogin.create(application);
  login.showmodal;
  login.free;
  timer1.enabled:=true;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
    toolbar.height:=45;
    spdlogin.left:=2;
    aboutbtn.left:=toolbar.width-84;
    ExitBtn.left:=toolbar.width-43;
    ProgressPanel.caption:=saycdate+' '+saycweekday;
end;

procedure TMainForm.ToolbarResize(Sender: TObject);
begin
    ExitBtn.left:=toolbar.width-43;
    aboutbtn.left:=toolbar.width-84;
end;

procedure TMainForm.SpeedItem8Click(Sender: TObject);
begin
OpenForm(Sender, TSysflow);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
with dm.pubqry do
begin
    if active then close;
//    commandtext:=memo1.text;
    commandtext:='alter table tb_bill add channel_id int,channel_dtl_id int';
    execute;
end;
end;

procedure TMainForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
if E.message='No server available' then
begin
    application.messagebox('无法连接应用服务器。请与系统管理员联系','请注意',MB_OK+MB_ICONSTOP);
    application.terminate;
end;
{
if E.message='RPC 服务器不可用' then
begin
    application.messagebox('RPC服务器不可用。请检查网络或与系统管理员联系','请注意',MB_OK+MB_ICONSTOP);
    application.terminate;
end;
}
if E.message='Error reading from socket' then abort;
if E.message='Invalid variant operation' then abort;
if E.message='Cannot open clipboard' then abort;
if E.message='灾难性故障' then abort;
application.messagebox(PAnsiChar(E.message),'请注意',MB_OK+MB_ICONSTOP);
end;

procedure TMainForm.MainMenu1GetItemParams(Sender: TMenu; Item: TMenuItem;
  State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
  var Graphic: TGraphic; var NumGlyphs: Integer);
begin
  if Item = ExitItem then Graphic := ExitBtn.Glyph
  else if Item = AboutItem then Graphic := AboutBtn.Glyph;
end;

end.
