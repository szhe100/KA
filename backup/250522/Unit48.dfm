object setpassword: Tsetpassword
  Left = 400
  Top = 222
  Width = 254
  Height = 172
  BorderIcons = [biSystemMenu]
  Caption = #35774#32622#23494#30721
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 12
  object Shape1: TShape
    Left = 27
    Top = 5
    Width = 68
    Height = 84
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label10: TLabel
    Left = 38
    Top = 42
    Width = 48
    Height = 12
    Caption = #26032' '#23494' '#30721
    Transparent = True
  end
  object Label11: TLabel
    Left = 38
    Top = 64
    Width = 48
    Height = 12
    Caption = #39564#35777#23494#30721
    Transparent = True
  end
  object Label1: TLabel
    Left = 38
    Top = 20
    Width = 48
    Height = 12
    Caption = #21407' '#23494' '#30721
    Transparent = True
  end
  object dxEdit2: TdxEdit
    Left = 105
    Top = 37
    Width = 121
    Color = 15788249
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    TabOrder = 1
    PasswordChar = '*'
    StyleController = StyleController
  end
  object dxEdit1: TdxEdit
    Left = 105
    Top = 15
    Width = 121
    Color = 15788249
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    TabOrder = 0
    PasswordChar = '*'
    StyleController = StyleController
  end
  object dxEdit3: TdxEdit
    Left = 105
    Top = 59
    Width = 121
    Color = 15788249
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    TabOrder = 2
    PasswordChar = '*'
    StyleController = StyleController
  end
  object BitBtn2: TBitBtn
    Left = 36
    Top = 105
    Width = 80
    Height = 28
    Caption = '&O '#30830#23450
    Default = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    Spacing = 2
  end
  object BitBtn3: TBitBtn
    Left = 139
    Top = 105
    Width = 80
    Height = 28
    Caption = '&C '#21462#28040
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
    Kind = bkCancel
    Spacing = 2
  end
  object StyleController: TdxEditStyleController
    BorderColor = 14065456
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    Edges = [edgBottom]
    HotTrack = True
    Left = 290
    Top = 2
  end
end
