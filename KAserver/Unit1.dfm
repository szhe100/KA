object MainForm: TMainForm
  Left = 192
  Top = 107
  Width = 164
  Height = 142
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AppIcon: TImage
    Left = 6
    Top = -2
    Width = 32
    Height = 32
    Hint = 'Click twice here!|'
    AutoSize = True
    ParentShowHint = False
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000099990000000099000
      0000000000000009999000000099990000000000000000099990000000999990
      0000000000000000999900000999999900000000000000009999000009999009
      0000000000000000999900009999900090000000000000009999000999990000
      0000000000000000099990099990000000000000000000000999999999900000
      0000000000000000099999999900000000000000000000000999909999000000
      0000000000000000099990099000000000000000000000000099900099900000
      0000000000000000009990000999000000000000000000000099990000999999
      0000000000000000009999000000999990000000000000000099990000000999
      9000000000000000000999000000000000000000000000000009999000000000
      0000000000000000000999900000000000000000000000000009999000000000
      0000000000000000000999900000000000000000000000000009999000000000
      0000000000000000000099990000000000000000000000000000999900000000
      0000000000000000099999990000000000000000000000000000099900000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFE1FE7FFFE1FC3FFFE1FC1FFFF0F80FF
      FF0F86FFFF0F077FFF0E0FFFFF861FFFFF801FFFFF803FFFFF843FFFFF867FFF
      FFC71FFFFFC78FFFFFC3C0FFFFC3F07FFFC3F87FFFE3FFFFFFE1FFFFFFE1FFFF
      FFE1FFFFFFE1FFFFFFE1FFFFFFF0FFFFFFF0FFFFFF80FFFFFFF8FFFFFFFFFFFF
      FFFFFFFF}
    ShowHint = True
  end
  object Label3: TLabel
    Left = 41
    Top = 1
    Width = 93
    Height = 13
    Caption = 'KingStar app server'
  end
  object Label4: TLabel
    Left = 40
    Top = 15
    Width = 90
    Height = 13
    Caption = '2025.5.11 updated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 7
    Top = 31
    Width = 129
    Height = 13
    AutoSize = False
    ParentShowHint = False
    ShowHint = True
  end
  object Panel1: TPanel
    Left = 5
    Top = 47
    Width = 133
    Height = 49
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 58
      Top = 27
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Queries: '
      Visible = False
    end
    object Label2: TLabel
      Left = 63
      Top = 10
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Clients: '
      Visible = False
    end
    object QueryCount: TLabel
      Left = 113
      Top = 28
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object ClientCount: TLabel
      Left = 113
      Top = 11
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label6: TLabel
      Left = 5
      Top = 8
      Width = 48
      Height = 12
      Caption = #26131#20026#31185#25216
      Font.Charset = GB2312_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object pubcom: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=KingageYPH;Data Source=localhost'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from tb_bill')
    Left = 94
    Top = 40
  end
end
