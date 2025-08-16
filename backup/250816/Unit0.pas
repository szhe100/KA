unit Unit0;

interface

{$I RX.INC}

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Gauges, ExtCtrls, Menus, DbPrgrss, Placemnt, SpeedBar,
  AppEvent, RXSplit, Animate, RXShell, RxMenus, PicClip, StdCtrls, ImgList,
  jpeg;

type
  TMainForm = class(TForm)
    MainMenu1: TRxMainMenu;
    FileMenu: TMenuItem;
    WindowMenu: TMenuItem;
    accountMenu: TMenuItem;
    N4: TMenuItem;
    ExitItem: TMenuItem;
    ViewMenu: TMenuItem;
    AboutItem: TMenuItem;
    StatusPanel: TPanel;
    MessagePanel: TPanel;
    Panel1: TPanel;
    ProgressPanel: TPanel;
    FormPlacement1: TFormPlacement;
    DBProgress1: TDBProgress;
    quotemenu: TRxPopupMenu;
    CascadeItem: TMenuItem;
    TileItem: TMenuItem;
    Toolbar: TSpeedBar;
    AboutBtn: TSpeedItem;
    spdbtn1: TSpeedItem;
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
    itmsetbusioption: TMenuItem;
    P1: TMenuItem;
    B1: TMenuItem;
    C1: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    S2: TMenuItem;
    B2: TMenuItem;
    M1: TMenuItem;
    M2: TMenuItem;
    C2: TMenuItem;
    T1: TMenuItem;
    C3: TMenuItem;
    S3: TMenuItem;
    K1: TMenuItem;
    E1: TMenuItem;
    P2: TMenuItem;
    B3: TMenuItem;
    Timer1: TTimer;
    userpanel: TPanel;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    O1: TMenuItem;
    M3: TMenuItem;
    Q1: TMenuItem;
    GridImageList: TImageList;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    S4: TMenuItem;
    spdlogin: TSpeedItem;
    T2: TMenuItem;
    N18: TMenuItem;
    spdbtn2: TSpeedItem;
    spdbtn3: TSpeedItem;
    spdbtn4: TSpeedItem;
    spdbtn5: TSpeedItem;
    spdbtn6: TSpeedItem;
    spdbtn7: TSpeedItem;
    spdbtn8: TSpeedItem;
    spdbtn9: TSpeedItem;
    N20: TMenuItem;
    N21: TMenuItem;
    spdbtn10: TSpeedItem;
    N22: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    R2: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N11: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    objectP2TMenuItem2: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    P4: TMenuItem;
    P5: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    U2: TMenuItem;
    U3: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    T5: TMenuItem;
    objectT5TMenuItem1: TMenuItem;
    N67: TMenuItem;
    SpeedItem2: TSpeedItem;
    N69: TMenuItem;
    N70: TMenuItem;
    RGSP1: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N77: TMenuItem;
    S5: TMenuItem;
    N78: TMenuItem;
    Panel2: TPanel;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N99: TMenuItem;
    B4: TMenuItem;
    objectN19TMenuItem1: TMenuItem;
    R3: TMenuItem;
    S6: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N3: TMenuItem;
    N34: TMenuItem;
    N5: TMenuItem;
    N36: TMenuItem;
    N49: TMenuItem;
    N55: TMenuItem;
    N61: TMenuItem;
    Y1: TMenuItem;
    R4: TMenuItem;
    S7: TMenuItem;
    N56: TMenuItem;
    K2: TMenuItem;
    K3: TMenuItem;
    T3: TMenuItem;
    T4: TMenuItem;
    N54: TMenuItem;
    E2: TMenuItem;
    G1: TMenuItem;
    T6: TMenuItem;
    SpeedItem1: TSpeedItem;
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
    procedure WizardBtnClick(Sender: TObject);
    procedure AppMinimize(Sender: TObject);
    procedure AppHint(Sender: TObject);
    procedure KMitemClick(Sender: TObject);
    procedure quotemenuGetItemParams(Sender: TMenu; Item: TMenuItem;
      State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
      var Graphic: TGraphic; var NumGlyphs: Integer);
    procedure MainMenu1GetItemParams(Sender: TMenu; Item: TMenuItem;
      State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
      var Graphic: TGraphic; var NumGlyphs: Integer);
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
  private
    { Private declarations }
    procedure ActiveFormChange(Sender: TObject);
    procedure OpenForm(Sender: TObject; FormClass: TFormClass);
    procedure UpdateToolbar;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses IniFiles, AppUtils, Buttons, Ctrls, DBAware, Tools, About, PageDemo,
  RxSlider, VCLUtils, RxHints, RxGraph, {$IFDEF WIN32} RxGrdCpt, {$ENDIF}
  ShellAPI, datamodu, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit11, Unit15, Unit19,
  Unit20, Unit21, Unit24, Unit27, Unit30, unit33, Unit40, Unit43, Unit44, Unit45,
  Unit46, Unit47, Unit48, Unit49, Unit50, Unit54, Unit55, Unit57, Unit59, Unit61, Unit63,
  Unit65, Unit67, Unit71, Unit73, Unit74, Unit77, Unit80, Unit79, Unit84, Unit86, Unit88, Unit90,
  Unit91, Unit92, Unit94, Unit96, Unit98, Unit99, Unit102,Unit103,Unit107,Unit108,Unit111,
  Unit113,Unit114,Unit115,Unit116,Unit117,Unit119,Unit121,Unit126,Unit128,Unit130,Unit132,Unit134,Unit136,Unit139,
  Unit140,Unit142,Unit148,Unit150,Unit151,Unit155,Unit157,Unit159,
  Unit158,Unit165,Unit167,Unit169,Unit170,Unit174,
  Unit175,Unit177,Unit178,Unit179,Unit182,Unit184,Unit185,Unit188,Unit192,
  Unit193,Unit194,Unit195,Unit198,Unit200,Unit201,Unit202;

// Unit123,Unit120,Unit171,Unit172,Unit173,  Unit33, Unit37, Unit105,Unit106,Unit145,Unit146
// Unit189,Unit190, Unit176, Unit181, Unit182, Unit183,  Unit163,Unit164,  Unit199,
{$R *.DFM}

{$IFDEF WIN32}
  {$R BACKGRND.R32}
{$ELSE}
  {$R BACKGRND.R16}
{$ENDIF}

procedure TMainForm.UpdateToolbar;
begin
  if ColorToRGB(Toolbar.Color) <> ColorToRGB(clBlack) then
    Toolbar.Wallpaper.Bitmap.Handle := LoadBitmap(hInstance, 'BACKGROUND')
  else Toolbar.Wallpaper := nil;
  Toolbar.SetFontDefault;
end;

procedure TMainForm.Exit(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetHintStyle(hsRectangle, 2, False, taCenter);
  Screen.OnActiveFormChange := ActiveFormChange;
  RegisterClasses([TControlsForm, TToolsForm, TDBAwareForm, TSetbusioption, TSetbusimate, TSetstaff]);
  UpdateToolbar;
{$IFDEF WIN32}
//  RXDemo1.Default := True;
  KMitem.Default := True;
  GradientFormCaption(Self, clWindowText);
{$ENDIF}
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
end;

procedure TMainForm.ActiveFormChange(Sender: TObject);
var
  Btn: TSpeedItem;
  Item: TMenuItem;
  FormClass: TClass;
begin
  Btn := nil; Item := nil;
  CascadeItem.Enabled := MDIChildCount > 0;
  TileItem.Enabled := MDIChildCount > 0;
  if Screen.ActiveForm <> nil then begin
    FormClass := Screen.ActiveForm.ClassType;
    if FormClass = TControlsForm then begin
    end
    else if FormClass = TDBAwareForm then begin
    end
    else if FormClass = TToolsForm then begin
    end;
  end;
  if Item <> nil then Item.Checked := True;
  if Btn <> nil then Btn.Down := True
  else begin
  end;
end;

procedure TMainForm.OpenForm(Sender: TObject; FormClass: TFormClass);
begin
  if Sender is TSpeedButton then (Sender as TSpeedButton).Down := True;
  Screen.Cursor := crHourGlass;
  try
    FindShowForm(FormClass, '');
    ActiveFormChange(nil);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainForm.View(Sender: TObject);
begin
    with dm.pubqry do
    begin
        if (curuser<>'何阳') and ((Sender as TComponent).Tag<>25)  // 更改本人密码 不受限制
          and ((Sender as TComponent).Tag<>70)  // 查看系统升级信息 不受限制
        then
        begin
            if active=true then close;
            commandtext:='select dbo.fn_checkright('+inttostr(curuserid)+','+inttostr((Sender as TComponent).Tag)+')';
            open;
            if fields[0].asboolean=false then raise Exception.Create('抱歉，您无此权限');
            close;
        end;
    end;
  case (Sender as TComponent).Tag of
    1: OpenForm(Sender, TControlsForm);
    2: OpenForm(Sender, TDBAwareForm);
    3: OpenForm(Sender, TToolsForm);
    4: OpenForm(Sender, TSetbusioption);
    5: OpenForm(Sender, TSetbusimate);
    6: OpenForm(Sender, TSetstaff);
    7: OpenForm(Sender, TSetmedicine);
    8: OpenForm(Sender, TSetmedprice);
    9: OpenForm(Sender, TSetmedcontrol);
   10: OpenForm(Sender, TSetagentmed);   // 入库单已改为 入库验收单 setimpcheck 因此 unit8(setmedimport),unit10(setimportbill),unit13(repimportbill) deleted
   11: OpenForm(Sender, TSetmedexport); //由购销员制单的销货单
   12: OpenForm(Sender, TSetsettle);
   13: OpenForm(Sender, TQrystock);
   14: OpenForm(Sender, TSetimpback1);
   15: OpenForm(Sender, TSetimpback2);
   16: OpenForm(Sender, TSetexpback1);
   17: OpenForm(Sender, TSetexpback2);
//   18: OpenForm(Sender, TSetreceive);   unit34,unit36 canceled
//   19: OpenForm(Sender, TSetpay);      unit37,unit38,unit39 canceled
   20: OpenForm(Sender, TSetmedshort);
   21: OpenForm(Sender, Tsetimpback3);  // unit43,unit75   canceled
   22: OpenForm(Sender, TQrymedexg);
   23: OpenForm(Sender, TQrymateexg);
   24: OpenForm(Sender, TSetmatecontrol);
   25: begin
            setpassword:=Tsetpassword.create(application);
            with setpassword do
            begin
                    caption:='修改'+curuser+'的登录密码';
                    tag:=curuserid;
                    showmodal;
                    caption:='设置密码';
                    free;
            end;
       end;
   26:  OpenForm(Sender, Tsetuser);
   27:  OpenForm(Sender, Tsetreport1);
   28:  OpenForm(Sender, Tsetreport2);
   29:  OpenForm(Sender, Tsetreport3);
   30:  OpenForm(Sender, Tsetreport4);
   31:  OpenForm(Sender, Tsetreport5);
   32:  OpenForm(Sender, Tsetreport6);
   33:  OpenForm(Sender, Tsetreport7);
   34:  OpenForm(Sender, Tsetreport8);
//   35:  OpenForm(Sender, Tsetreport9);  unit65,unit66 canceled
   36:  OpenForm(Sender, Tsetreport10);
   37:  OpenForm(Sender, Tsetimpinfo);
   38:  OpenForm(Sender, Tsetexprint);
   39:  OpenForm(Sender, Tsetreport12);
   40:  OpenForm(Sender, Tsetreport15);
   41:  OpenForm(Sender, Tsetcheckstock);
   42:  OpenForm(Sender, Tsetreport16);
   43:  OpenForm(Sender, Tsetrepappend);
   44:  OpenForm(Sender, Tsetreport18);
   45:  OpenForm(Sender, Tsetcheckdtl);
//   46:  OpenForm(Sender, Tsetreport19);
   47:  OpenForm(Sender, Tsetreport20);
   48:  OpenForm(Sender, Tsetreport21);
   49:  OpenForm(Sender, Tsetreport22);
   50:  OpenForm(Sender, Tsetimplan);
   51:  OpenForm(Sender, Tsetexplan);
   52:  OpenForm(Sender, Tsetexpcash);
   53:  OpenForm(Sender, Tsetreport23);
//   54:  OpenForm(Sender, Tsetreport24);  unit105,106 canceled
//   55:  OpenForm(Sender, Tqrypaydue);  unit107 canceled
   56:  OpenForm(Sender, Tsetreport25);
   57:  OpenForm(Sender, Tchkmedexport);
   58:  OpenForm(Sender, Tsetmedexportb);
   59:  OpenForm(Sender, Tadmedbat);
   60:  OpenForm(Sender, Tsetpclass);
   61:  OpenForm(Sender, Tqrypurchase);
   62:  OpenForm(Sender, Tsetimpcheck);    //验收入库单  记帐单 已取消  unit119,unit120 removed
   63:  OpenForm(Sender, Tqryagentmed);
   64:  OpenForm(Sender, Tsetimpbacksign);   //购进退出签收单
   65:  OpenForm(Sender, Tsetmedscrap);
   66:  OpenForm(Sender, Tsetreport28);
   67:  OpenForm(Sender, Tsetreport29);
   68:  OpenForm(Sender, Tsetreport30);
   69:  OpenForm(Sender, Tqryimporder);
   70:  OpenForm(Sender, Tsetmedsite);
//   71:  OpenForm(Sender, Tsetreport31);
//   72:  OpenForm(Sender, Tsetreport32);
//   73:  OpenForm(Sender, Tsetdeposit);
//   74:  OpenForm(Sender, Tsetwithdraw);
//   75:  OpenForm(Sender, TQryhomebank);   unit145,146 canceled
   76:  OpenForm(Sender, TSetUpdPrice);
   77:  OpenForm(Sender, TQryUpdPrice);
   78:  OpenForm(Sender, Tsetreport34);
   79:  OpenForm(Sender, Tsetagent);
   80:  OpenForm(Sender, Tsetnotqualified);
   81:  OpenForm(Sender, Tsetmedfail);
   82:  OpenForm(Sender, Tsetrecheck);
//   83:  OpenForm(Sender, Tqrymedallot); // unit159,171 canceled
//   84:  OpenForm(Sender, Tqrytaxbill);
//   85:  OpenForm(Sender, Tsetreport36);  // unit163,164 canceled
   86:  OpenForm(Sender, Tsetreport37);
   87:  OpenForm(Sender, Tsetreport38);
//   88:  OpenForm(Sender, Tsetimporder);   已被验收入库单取代     取消unit169
   89:  OpenForm(Sender, Tsetspeprice);
//   90:  OpenForm(Sender, Tsetsimexport);
//   91:  OpenForm(Sender, Tsetsimimport);
//   92:  OpenForm(Sender, Tsetexpinvoice);
//   93:  OpenForm(Sender, Tsetimpinvoice);
   94:  OpenForm(Sender, TGspmedicine);
   95:  OpenForm(Sender, TGspbusimate);
//   96:  OpenForm(Sender, Tqryinvoice);
   97:  OpenForm(Sender, TGspreport01);  // 购进记录
   98:  OpenForm(Sender, TGspreport02);  // 验收记录
   99:  OpenForm(Sender, TGspreport03);  // 销售记录
  100:  OpenForm(Sender, TGspreport04);  // 出库复核记录
  101:  OpenForm(Sender, TGspreport05);  // 销售退回验收记录
  102:  OpenForm(Sender, TGspreport07);  // 近效期商品催销表
  103:  OpenForm(Sender, TGspreport08);  // 库存药品养护记录
  104:  OpenForm(Sender, TGspreport09);  // 不合格药品报损销毁清单
//  105:  OpenForm(Sender, TsetmedexportB);
  106:  OpenForm(Sender, Tsetreport42);
//  107:  OpenForm(Sender, Tqryrep01);
//  108:  OpenForm(Sender, Tqryrep02);
  109:  OpenForm(Sender, TGspreport06);  // 购进药品退出记录
//  110:  OpenForm(Sender, TSetbill_dtl);  // 药品交易标记    unit199 canceled
//  111:  OpenForm(Sender, TSettransfer);  // 远程数据传输
  112:  OpenForm(Sender, TQryclassimp);  // 采购分类统计
  113:  OpenForm(Sender, TQryclassexp);  // 销售分类统计
   end;
end;

procedure TMainForm.WizardBtnClick(Sender: TObject);
begin
  ShowDialog(TClientAssistant);
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
  MessagePanel.Caption := Application.Hint;
end;

procedure TMainForm.KMitemClick(Sender: TObject);
begin
  Application.Restore;
  Application.BringToFront;
end;

procedure TMainForm.RXWebSite1Click(Sender: TObject);
begin
  RxWebSite;
end;

procedure TMainForm.quotemenuGetItemParams(Sender: TMenu;  Item: TMenuItem; State: TMenuOwnerDrawState; AFont: TFont;
  var Color: TColor; var Graphic: TGraphic; var NumGlyphs: Integer);
begin
//  case Item.Tag of
//    1: { Customize } Graphic := CustomizeBtn.Glyph;
//    2: { Save } Graphic := Images.GraphicCell[0];
//    3: { Restore } Graphic := Images.GraphicCell[1];
//  end;
end;

procedure TMainForm.MainMenu1GetItemParams(Sender: TMenu; Item: TMenuItem;
  State: TMenuOwnerDrawState; AFont: TFont; var Color: TColor;
  var Graphic: TGraphic; var NumGlyphs: Integer);
begin
//  if Item = CustomizeItem then Graphic := CustomizeBtn.Glyph
  if Item = ExitItem then Graphic := ExitBtn.Glyph
  else if Item = AboutItem then Graphic := AboutBtn.Glyph;
{
  else if Item = M1 then Graphic := SpdBtn1.Glyph
  else if Item = N2 then Graphic := SpdBtn2.Glyph
  else if Item = N7 then Graphic := SpdLogin.Glyph
  else if Item = R1 then Graphic := SpdBtn3.Glyph
  else if Item = C3 then Graphic := SpdBtn4.Glyph
  else if Item = O1 then Graphic := SpdBtn5.Glyph
  else if Item = E1 then Graphic := SpdBtn6.Glyph
  else if Item = M3 then Graphic := SpdBtn7.Glyph
  else if Item = C4 then Graphic := SpdBtn8.Glyph
  else if Item = P3 then Graphic := SpdBtn9.Glyph
  else if Item = Q1 then Graphic := SpdBtn10.Glyph
  else if Item = N86 then Graphic := SpdBtn11.Glyph
  else if Item = P2 then Graphic := SpdBtn11.Glyph
  else if Item = D2 then Graphic := SpeedItem1.Glyph
  else if Item = N64 then Graphic := SpeedItem2.Glyph
  else if Item = N49 then Graphic := SpeedItem3.Glyph
  else if Item = M5 then Graphic := SpeedItem4.Glyph
  else if Item = M4 then Graphic := SpeedItem4.Glyph
  else if Item = N36 then Graphic := SpeedItem4.Glyph;
}
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
  Txt = 'KingMed';
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
     IF application.messagebox('确定退出本系统','注意',
      mb_okcancel+mb_iconexclamation)=idOK then canclose:=true else canclose:=false;
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
//    customizebtn.left:=3;
    spdlogin.left:=2;
    spdbtn1.left:=42;
    spdbtn2.left:=82;
    aboutbtn.left:=toolbar.width-84;
    ExitBtn.left:=toolbar.width-43;
    ProgressPanel.caption:=saycdate+' '+saycweekday;
end;

procedure TMainForm.ToolbarResize(Sender: TObject);
begin
    ExitBtn.left:=toolbar.width-43;
    aboutbtn.left:=toolbar.width-84;
end;

end.
