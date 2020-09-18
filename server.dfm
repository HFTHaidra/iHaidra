object Form1: TForm1
  Left = 20
  Top = 20
  AlphaBlend = True
  AutoSize = True
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'iHaidra-Arbitrage Trading Stratige'
  ClientHeight = 446
  ClientWidth = 700
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefaultSizeOnly
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object timer: TLabel
    Left = 206
    Top = 293
    Width = 30
    Height = 13
    Caption = '----------'
  end
  object Label70: TLabel
    Left = 280
    Top = 136
    Width = 38
    Height = 13
    Caption = 'Label70'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 700
    Height = 446
    Hint = #1575#1591#1608#1604' '#1608#1602#1578' '#1605#1605#1603#1606' '#1604#1603#1604' '#1589#1601#1602#1577' '#1576#1579#1608#1575#1606#1610' '
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'DashBoard'
      object consol: TLabel
        Left = 324
        Top = 398
        Width = 34
        Height = 15
        Caption = 'Consol'
        Color = clCream
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Roboto Cn'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Time63: TLabel
        Left = 586
        Top = 0
        Width = 51
        Height = 13
        Caption = '-----------------'
      end
      object Panel5: TPanel
        Left = 3
        Top = 274
        Width = 315
        Height = 143
        TabOrder = 0
        object Label20: TLabel
          Left = 0
          Top = 0
          Width = 107
          Height = 21
          Caption = 'Price Difference'
          Font.Charset = JOHAB_CHARSET
          Font.Color = clHotLight
          Font.Height = -16
          Font.Name = 'Terminal'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 1
          Top = 46
          Width = 40
          Height = 13
          Caption = 'Ask Dif :'
        end
        object Label22: TLabel
          Left = 1
          Top = 65
          Width = 37
          Height = 13
          Caption = 'Bid Dif :'
        end
        object Label23: TLabel
          Left = 1
          Top = 84
          Width = 54
          Height = 13
          Caption = 'All Spread :'
        end
        object Label24: TLabel
          Left = 1
          Top = 103
          Width = 42
          Height = 13
          Caption = 'Max Dif :'
        end
        object Label25: TLabel
          Left = 1
          Top = 122
          Width = 39
          Height = 13
          Caption = 'Min Dif :'
        end
        object Label26: TLabel
          Left = 75
          Top = 46
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label27: TLabel
          Left = 75
          Top = 65
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label28: TLabel
          Left = 75
          Top = 84
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label29: TLabel
          Left = 75
          Top = 103
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label30: TLabel
          Left = 75
          Top = 122
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Time5: TLabel
          Left = 202
          Top = 8
          Width = 84
          Height = 13
          Caption = '2020-05-15 14:44'
        end
        object Label47: TLabel
          Left = 130
          Top = 8
          Width = 58
          Height = 13
          Caption = 'Local Time :'
        end
        object Label55: TLabel
          Left = 130
          Top = 59
          Width = 44
          Height = 13
          Caption = 'All Profit :'
        end
        object profitAll: TLabel
          Left = 202
          Top = 59
          Width = 24
          Height = 13
          Caption = '0000'
        end
        object Label56: TLabel
          Left = 128
          Top = 32
          Width = 60
          Height = 13
          Caption = 'Local Speed'
        end
        object time30: TLabel
          Left = 202
          Top = 32
          Width = 24
          Height = 13
          Caption = '0000'
        end
        object Button2: TButton
          Left = 0
          Top = 20
          Width = 113
          Height = 20
          HelpType = htKeyword
          Caption = 'Refresh'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Panel3: TPanel
          Left = 103
          Top = 46
          Width = 10
          Height = 93
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Left = 3
        Top = 47
        Width = 152
        Height = 221
        TabOrder = 1
        object Label1: TLabel
          Left = 0
          Top = 3
          Width = 60
          Height = 13
          Caption = 'Fast Broker :'
        end
        object Label4: TLabel
          Left = 10
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Symbol :'
        end
        object Label3: TLabel
          Left = 0
          Top = 100
          Width = 37
          Height = 13
          Caption = 'Speed :'
        end
        object fastD: TLabel
          Left = 0
          Top = 120
          Width = 41
          Height = 13
          Caption = 'Digits : 0'
        end
        object fastT: TLabel
          Left = 80
          Top = 100
          Width = 24
          Height = 13
          Caption = '0000'
          Color = clHotLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 0
          Top = 140
          Width = 25
          Height = 15
          Caption = 'Ask :'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 0
          Top = 160
          Width = 22
          Height = 15
          Caption = 'Bid :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object ask1: TLabel
          Left = 80
          Top = 140
          Width = 28
          Height = 15
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object bid1: TLabel
          Left = 80
          Top = 160
          Width = 28
          Height = 15
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 0
          Top = 180
          Width = 74
          Height = 15
          Caption = 'Spread             '
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object fspread: TLabel
          Left = 80
          Top = 180
          Width = 28
          Height = 15
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 0
          Top = 80
          Width = 29
          Height = 13
          Caption = 'Time :'
        end
        object Label44: TLabel
          Left = 0
          Top = 200
          Width = 30
          Height = 13
          Caption = 'Profit :'
        end
        object timeFast: TLabel
          Left = 43
          Top = 81
          Width = 24
          Height = 13
          Hint = #1610#1578#1594#1610#1585' '#1575#1604#1608#1602#1578' '#1604#1603#1604' '#1578#1594#1610#1585' '#1601#1610' '#1575#1604#1587#1593#1585
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Roboto Bk'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object profitFast: TLabel
          Left = 80
          Top = 200
          Width = 24
          Height = 13
          Caption = '0000'
        end
        object Label11: TLabel
          Left = 0
          Top = 60
          Width = 50
          Height = 13
          Caption = 'Company :'
        end
        object Label50: TLabel
          Left = 80
          Top = 60
          Width = 26
          Height = 13
          Caption = 'None'
        end
        object Label51: TLabel
          Left = 0
          Top = 48
          Width = 156
          Height = 13
          Caption = '----------------------------------------------------'
        end
        object fastLogin: TComboBox
          Left = 62
          Top = 0
          Width = 90
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          TabStop = False
          Text = 'No Login...'
          OnChange = fastLoginChange
          Items.Strings = (
            'No Login...')
        end
        object fastSymbol: TComboBox
          Left = 63
          Top = 27
          Width = 89
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Fast Symbol'
          OnChange = fastSymbolChange
          Items.Strings = (
            'Fast Symbol')
        end
        object Panel7: TPanel
          Left = 160
          Top = 56
          Width = 185
          Height = 41
          Caption = 'Panel7'
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 161
        Top = 47
        Width = 155
        Height = 221
        TabOrder = 2
        object Label2: TLabel
          Left = 0
          Top = 3
          Width = 63
          Height = 13
          Caption = 'Slow Broker :'
        end
        object Label5: TLabel
          Left = 10
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Symbol :'
        end
        object Label6: TLabel
          Left = 0
          Top = 100
          Width = 37
          Height = 13
          Caption = 'Speed :'
        end
        object slowD: TLabel
          Left = 0
          Top = 120
          Width = 41
          Height = 13
          Caption = 'Digits : 0'
        end
        object slowT: TLabel
          Left = 80
          Top = 100
          Width = 24
          Height = 13
          Caption = '0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 0
          Top = 140
          Width = 25
          Height = 15
          Caption = 'Ask :'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 0
          Top = 160
          Width = 22
          Height = 15
          Caption = 'Bid :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object ask2: TLabel
          Left = 80
          Top = 140
          Width = 28
          Height = 15
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object bid2: TLabel
          Left = 80
          Top = 160
          Width = 28
          Height = 15
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 0
          Top = 180
          Width = 35
          Height = 15
          Caption = 'Spread'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object sspread: TLabel
          Left = 80
          Top = 180
          Width = 7
          Height = 15
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Roboto Cn'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 0
          Top = 80
          Width = 32
          Height = 13
          Caption = 'Time : '
        end
        object timeSlow: TLabel
          Left = 43
          Top = 81
          Width = 24
          Height = 13
          Hint = #1610#1578#1594#1610#1585' '#1575#1604#1608#1602#1578' '#1604#1603#1604' '#1578#1594#1610#1585' '#1601#1610' '#1575#1604#1587#1593#1585
          Caption = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Roboto Bk'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object profitSlow: TLabel
          Left = 80
          Top = 200
          Width = 24
          Height = 13
          Caption = '0000'
        end
        object Label49: TLabel
          Left = 0
          Top = 200
          Width = 30
          Height = 13
          Caption = 'Profit :'
        end
        object Label12: TLabel
          Left = 0
          Top = 60
          Width = 50
          Height = 13
          Caption = 'Company :'
        end
        object Label52: TLabel
          Left = -229
          Top = 48
          Width = 156
          Height = 13
          Caption = '----------------------------------------------------'
        end
        object Label53: TLabel
          Left = 64
          Top = 60
          Width = 26
          Height = 13
          Caption = 'None'
        end
        object Label54: TLabel
          Left = 0
          Top = 48
          Width = 159
          Height = 13
          Caption = '-----------------------------------------------------'
        end
        object slowLogin: TComboBox
          Left = 64
          Top = 0
          Width = 90
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'No Login...'
          OnChange = slowLoginChange
          Items.Strings = (
            'No Login...')
        end
        object slowSymbol: TComboBox
          Left = 64
          Top = 27
          Width = 90
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Slow Symbol'
          OnChange = slowSymbolChange
          Items.Strings = (
            'Slow Symbol')
        end
      end
      object port: TEdit
        Left = 263
        Top = 20
        Width = 41
        Height = 21
        TabOrder = 3
        Text = '30'
      end
      object b1: TButton
        Left = 168
        Top = 20
        Width = 89
        Height = 22
        Caption = 'Connect To Port'
        TabOrder = 4
        OnClick = b1Click
      end
      object GroupBox1: TGroupBox
        Left = 322
        Top = 43
        Width = 367
        Height = 137
        Caption = '     iHaidra Options....     '
        TabOrder = 5
        object Label46: TLabel
          Left = 328
          Top = 51
          Width = 36
          Height = 13
          Caption = 'Visibility'
        end
        object TrackBar1: TTrackBar
          Left = 264
          Top = 48
          Width = 65
          Height = 17
          Hint = #1578#1594#1610#1610#1585' '#1575#1604#1588#1601#1575#1601#1610#1577' '#1604#1585#1572#1610#1577' '#1575#1608#1590#1581' '#1582#1604#1601' '#1575#1604#1576#1585#1606#1575#1605#1580
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = TrackBar1Change
        end
        object kill: TCheckBox
          Left = 270
          Top = 28
          Width = 94
          Height = 17
          Hint = #1575#1610#1602#1575#1601' '#1575#1604#1578#1593#1583#1610#1604#1575#1578' '#1604#1578#1601#1575#1583#1610' '#1575#1604#1582#1591#1574
          Caption = 'Kill All Modify'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = killClick
        end
        object Panel6: TPanel
          Left = 269
          Top = 8
          Width = 95
          Height = 16
          Hint = #1578#1594#1610#1610#1585' '#1575#1604#1579#1610#1605
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object RadioButton5: TRadioButton
            Left = 60
            Top = 1
            Width = 14
            Height = 16
            Color = clMenuHighlight
            ParentColor = False
            TabOrder = 0
            OnClick = RadioButton5Click
          end
          object RadioButton6: TRadioButton
            Left = 0
            Top = 0
            Width = 14
            Height = 17
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 1
            OnClick = RadioButton6Click
          end
          object RadioButton7: TRadioButton
            Left = 40
            Top = 0
            Width = 14
            Height = 17
            Color = clOlive
            ParentColor = False
            TabOrder = 2
            OnClick = RadioButton7Click
          end
          object RadioButton8: TRadioButton
            Left = 20
            Top = 0
            Width = 14
            Height = 17
            Color = clTeal
            ParentColor = False
            TabOrder = 3
            OnClick = RadioButton8Click
          end
          object RadioButton9: TRadioButton
            Left = 80
            Top = 0
            Width = 14
            Height = 17
            TabOrder = 4
            OnClick = RadioButton9Click
          end
        end
        object Panel10: TPanel
          Left = 16
          Top = 24
          Width = 121
          Height = 110
          Enabled = False
          TabOrder = 3
          object CheckBox1: TCheckBox
            Left = 0
            Top = 0
            Width = 121
            Height = 17
            Caption = 'Active Saving Mode'
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 0
            Top = 23
            Width = 97
            Height = 17
            Caption = 'Active First Inputs'
            TabOrder = 1
          end
          object CheckBox3: TCheckBox
            Left = 0
            Top = 46
            Width = 97
            Height = 17
            Caption = 'The Second Input'
            TabOrder = 2
          end
          object CheckBox4: TCheckBox
            Left = 0
            Top = 69
            Width = 97
            Height = 17
            Caption = 'The Third Input'
            TabOrder = 3
          end
          object CheckBox5: TCheckBox
            Left = 0
            Top = 92
            Width = 97
            Height = 17
            Caption = 'The Fourth Input'
            TabOrder = 4
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 322
        Top = 186
        Width = 363
        Height = 82
        Caption = ' Trading Options  ...   '
        TabOrder = 6
      end
      object GroupBox3: TGroupBox
        Left = 324
        Top = 274
        Width = 361
        Height = 118
        BiDiMode = bdRightToLeft
        Caption = #1605#1584#1603#1585#1577
        ParentBiDiMode = False
        TabOrder = 7
        object Memo1: TMemo
          Left = 14
          Top = 16
          Width = 331
          Height = 99
          BiDiMode = bdRightToLeft
          Lines.Strings = (
            
              #1607#1575#1584#1575' '#1575#1604#1606#1590#1575#1605' '#1602#1610#1583' '#1575#1604#1578#1591#1608#1610#1585' '#1605#1603#1608#1606' '#1605#1606' '#1576#1585#1606#1575#1605#1580' '#1576#1604#1594#1577'  C#  '#1608'  C++ - '#1576#1587#1578#1582#1583#1575 +
              #1605' '
            
              #1608#1575#1580#1607#1577'  Embarcadero Delphi - '#1608' '#1575#1603#1587#1576#1585#1578' '#1604#1604#1575#1578#1589#1575#1604' '#1576#1600#1600#1600' MetaTrader 5  ' +
              #1608' '
            #1605#1587#1578#1602#1576#1604#1575' '#1580#1605#1610#1593' '#1575#1604#1605#1606#1589#1575#1578
            '- '#1608' '#1587#1603#1585#1576#1578' javascript , HTML '#1604#1575#1582#1578#1576#1575#1585' '#1575#1604#1575#1587#1578#1585#1575#1578#1580#1610#1575#1578' BACKTESTING'
            #1604#1604#1575#1578#1589#1575#1604' '
            'fb.com/Haidra27'
            't.me/Haidra27')
          ParentBiDiMode = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Saving For BackTest'
      ImageIndex = 1
      object Time60: TLabel
        Left = 586
        Top = 0
        Width = 51
        Height = 13
        Caption = '-----------------'
      end
      object Panel4: TPanel
        Left = 96
        Top = 26
        Width = 553
        Height = 389
        TabOrder = 0
        object Label13: TLabel
          Left = 16
          Top = 141
          Width = 25
          Height = 13
          Caption = 'iTime'
        end
        object Label14: TLabel
          Left = 47
          Top = 141
          Width = 38
          Height = 13
          Caption = 'FastAsk'
        end
        object Label15: TLabel
          Left = 91
          Top = 141
          Width = 35
          Height = 13
          Caption = 'FastBid'
        end
        object Label16: TLabel
          Left = 132
          Top = 141
          Width = 41
          Height = 13
          Caption = 'SlowAsk'
        end
        object Label17: TLabel
          Left = 179
          Top = 141
          Width = 38
          Height = 13
          Caption = 'SlowBid'
        end
        object Label18: TLabel
          Left = 239
          Top = 5
          Width = 61
          Height = 13
          Caption = 'Name Of File'
        end
        object Label45: TLabel
          Left = 260
          Top = 141
          Width = 53
          Height = 13
          Caption = '-->Time <---'
        end
        object Label69: TLabel
          Left = 16
          Top = 112
          Width = 43
          Height = 13
          Caption = 'Ask Dif : '
        end
        object Label75: TLabel
          Left = 64
          Top = 112
          Width = 24
          Height = 13
          Caption = '0000'
        end
        object data: TMemo
          Left = 8
          Top = 160
          Width = 513
          Height = 225
          Color = clInfoBk
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Button1: TButton
          Left = 210
          Top = 79
          Width = 47
          Height = 22
          Caption = 'Save'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Edit1: TEdit
          Left = 330
          Top = 2
          Width = 203
          Height = 21
          TabOrder = 2
          Text = 'EURUSD_Fbs_IC'
        end
        object RadioButton4: TRadioButton
          Left = 16
          Top = 4
          Width = 46
          Height = 17
          Caption = 'OF'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          OnClick = RadioButton4Click
        end
        object Button3: TButton
          Left = 210
          Top = 50
          Width = 75
          Height = 23
          Caption = 'Clear'
          TabOrder = 4
          OnClick = Button3Click
        end
        object Panel11: TPanel
          Left = 312
          Top = 44
          Width = 161
          Height = 77
          TabOrder = 5
          object Label57: TLabel
            Left = 0
            Top = 10
            Width = 101
            Height = 13
            Caption = 'Auto Saving  iTime  >'
          end
          object Label19: TLabel
            Left = 0
            Top = 52
            Width = 79
            Height = 13
            Caption = 'iTime --------------->'
          end
          object Edit10: TEdit
            Left = 103
            Top = 8
            Width = 50
            Height = 21
            TabOrder = 0
            Text = '50000'
          end
          object et30: TEdit
            Left = 99
            Top = 48
            Width = 56
            Height = 21
            Enabled = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
            Text = '0000000'
          end
        end
        object hidAll: TRadioButton
          Left = 68
          Top = 4
          Width = 113
          Height = 17
          Caption = 'Hide All Tabs'
          TabOrder = 6
          OnClick = hidAllClick
        end
      end
      object Memo3: TMemo
        Left = 112
        Top = 53
        Width = 174
        Height = 72
        Lines.Strings = (
          'Block Note')
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = ' First Inputs'
      ImageIndex = 2
      object Time61: TLabel
        Left = 586
        Top = 0
        Width = 48
        Height = 13
        Caption = '----------------'
      end
      object Panel12: TPanel
        Left = 3
        Top = 33
        Width = 686
        Height = 374
        Hint = #1578#1581#1583#1610#1579' max'
        Color = clGradientInactiveCaption
        ParentBackground = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Label58: TLabel
          Left = 8
          Top = 4
          Width = 162
          Height = 13
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1575#1604#1601#1585#1602' '#1575#1602#1604' '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          Caption = 'Trade When Ask difference Down'
          ParentShowHint = False
          ShowHint = True
        end
        object Label59: TLabel
          Left = 8
          Top = 26
          Width = 161
          Height = 13
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1575#1604#1601#1585#1602' '#1571#1603#1576#1585' '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          Caption = 'Trade When All Spreads less than'
          ParentShowHint = False
          ShowHint = True
        end
        object Label60: TLabel
          Left = 8
          Top = 50
          Width = 163
          Height = 13
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1605#1580#1605#1608#1593' '#1575#1604#1587#1576#1585#1583' '#1575#1602#1604'  '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          Caption = 'Close When Ask difference Above'
          ParentShowHint = False
          ShowHint = True
        end
        object Label61: TLabel
          Left = 8
          Top = 74
          Width = 161
          Height = 13
          Caption = 'Close When Time(Second) Above'
          ParentShowHint = False
          ShowHint = True
        end
        object Label62: TLabel
          Left = 8
          Top = 98
          Width = 50
          Height = 13
          Caption = 'Magic Key'
        end
        object Label63: TLabel
          Left = 8
          Top = 125
          Width = 78
          Height = 13
          Hint = #1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' '#1604#1604#1576#1585#1608#1603#1585' '#1575#1604#1575#1587#1585#1593
          Caption = 'Fast Broker Lot :'
          ParentShowHint = False
          ShowHint = True
        end
        object Label64: TLabel
          Left = 8
          Top = 150
          Width = 81
          Height = 13
          Hint = #1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' '#1604#1604#1576#1585#1608#1603#1585' '#1575#1604#1575#1576#1591#1574
          Caption = 'Slow Broker Lot :'
          ParentShowHint = False
          ShowHint = True
        end
        object Label68: TLabel
          Left = 370
          Top = 74
          Width = 3
          Height = 13
        end
        object Label71: TLabel
          Left = 8
          Top = 200
          Width = 87
          Height = 13
          Caption = 'Fast Broker Profit :'
        end
        object Label72: TLabel
          Left = 8
          Top = 227
          Width = 90
          Height = 13
          Caption = 'Slow Broker Profit :'
        end
        object Label73: TLabel
          Left = 8
          Top = 256
          Width = 44
          Height = 13
          Caption = 'All Profit :'
        end
        object Profit100: TLabel
          Left = 120
          Top = 200
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Profit101: TLabel
          Left = 120
          Top = 232
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Profit102: TLabel
          Left = 120
          Top = 256
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label67: TLabel
          Left = 247
          Top = 191
          Width = 44
          Height = 13
          Caption = 'Console :'
        end
        object Time20: TLabel
          Left = 560
          Top = 191
          Width = 12
          Height = 13
          Caption = '----'
        end
        object Label66: TLabel
          Left = 456
          Top = 191
          Width = 86
          Height = 13
          Caption = 'Fast Broker Time :'
        end
        object Label76: TLabel
          Left = 8
          Top = 288
          Width = 53
          Height = 13
          Caption = 'Max Profit :'
        end
        object Profit103: TLabel
          Left = 120
          Top = 288
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Edit9: TEdit
          Left = 184
          Top = 1
          Width = 73
          Height = 21
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1575#1604#1601#1585#1602' '#1575#1602#1604' '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '9000'
        end
        object Edit11: TEdit
          Left = 184
          Top = 24
          Width = 73
          Height = 21
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1575#1604#1601#1585#1602' '#1571#1603#1576#1585' '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '900'
        end
        object Edit12: TEdit
          Left = 184
          Top = 48
          Width = 73
          Height = 21
          Hint = #1593#1606#1583#1605#1575' '#1610#1603#1608#1606' '#1605#1580#1605#1608#1593' '#1575#1604#1587#1576#1585#1583' '#1575#1602#1604'  '#1575#1608' '#1610#1587#1575#1608#1610' '#1605#1606' {'#1606#1602#1591#1577'}'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = '-9999'
        end
        object timealow100: TEdit
          Left = 184
          Top = 72
          Width = 73
          Height = 21
          Hint = '3800 iTime = 60.000 MiliSecond = 60 Second = 1Min'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = '1'
        end
        object Key1: TEdit
          Left = 184
          Top = 96
          Width = 73
          Height = 21
          TabOrder = 4
          Text = '2L40'
        end
        object Edit15: TEdit
          Left = 120
          Top = 149
          Width = 31
          Height = 21
          Hint = #1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' '#1604#1604#1576#1585#1608#1603#1585' '#1575#1604#1575#1576#1591#1574
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = '0.01'
        end
        object Edit16: TEdit
          Left = 120
          Top = 122
          Width = 31
          Height = 21
          Hint = #1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' '#1604#1604#1576#1585#1608#1603#1585' '#1575#1604#1575#1587#1585#1593
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '0.01'
        end
        object Panel13: TPanel
          Left = 16
          Top = 176
          Width = 657
          Height = 9
          Color = clGrayText
          Locked = True
          ParentBackground = False
          TabOrder = 7
        end
        object TPanel
          Left = 168
          Top = 200
          Width = 3
          Height = 169
          Color = clAppWorkSpace
          ParentBackground = False
          TabOrder = 8
          object TPanel
            Left = 20
            Top = -9
            Width = 200
            Height = 100
            Color = clAppWorkSpace
            ParentBackground = False
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Left = 263
          Top = 4
          Width = 1
          Height = 166
          Caption = 'Panel14'
          TabOrder = 9
        end
        object Panel15: TPanel
          Left = 263
          Top = 1
          Width = 1
          Height = 169
          TabOrder = 10
        end
        object consol100: TMemo
          Left = 247
          Top = 208
          Width = 418
          Height = 161
          ParentCustomHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Lines.Strings = (
            '-->All Operation Show hiyer')
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 11
        end
        object GroupBox5: TGroupBox
          Left = 270
          Top = 5
          Width = 227
          Height = 165
          Caption = 'Trading iTime ....'
          TabOrder = 12
          object Label74: TLabel
            Left = 3
            Top = 21
            Width = 103
            Height = 13
            Caption = 'Trade Open In iTime :'
          end
          object TradeOpenTime100: TLabel
            Left = 128
            Top = 21
            Width = 6
            Height = 13
            Caption = '0'
          end
          object Label65: TLabel
            Left = 184
            Top = 105
            Width = 10
            Height = 24
            Caption = '$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CloseWhenProfit: TButton
            Left = 3
            Top = 105
            Width = 122
            Height = 24
            Caption = 'Close When Profit Abve'
            TabOrder = 0
            OnClick = CloseWhenProfitClick
          end
          object Edit14: TEdit
            Left = 131
            Top = 105
            Width = 50
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '20'
          end
          object Button7: TButton
            Left = 122
            Top = 137
            Width = 65
            Height = 25
            Caption = 'Close Now'
            Enabled = False
            TabOrder = 2
            OnClick = Button7Click
          end
          object CheckBox6: TCheckBox
            Left = 3
            Top = 135
            Width = 113
            Height = 27
            Caption = 'Active Close Now'
            TabOrder = 3
            OnClick = CheckBox6Click
          end
          object CheckBox8: TCheckBox
            Left = 3
            Top = 82
            Width = 182
            Height = 17
            Caption = 'Stop All Trading When Close This'
            Checked = True
            State = cbChecked
            TabOrder = 4
          end
        end
        object Panel16: TPanel
          Left = 0
          Top = 315
          Width = 171
          Height = 1
          TabOrder = 13
        end
        object Panel17: TPanel
          Left = 488
          Top = 65
          Width = 9
          Height = 105
          TabOrder = 14
        end
        object RadioButton1: TRadioButton
          Left = 560
          Top = 3
          Width = 113
          Height = 17
          Caption = 'Hide Saving Tab'
          TabOrder = 15
          OnClick = RadioButton1Click
        end
        object Button4: TButton
          Left = 78
          Top = 288
          Width = 20
          Height = 13
          Caption = '...'
          TabOrder = 16
          OnClick = Button4Click
        end
        object kill100: TCheckBox
          Left = 560
          Top = 25
          Width = 97
          Height = 17
          Hint = #1575#1610#1602#1575#1601' '#1575#1604#1578#1593#1583#1610#1604#1575#1578' '#1604#1578#1601#1575#1583#1610' '#1575#1604#1582#1591#1574
          Caption = 'Kill All Modify'
          TabOrder = 17
          OnClick = kill100Click
        end
      end
      object Button5: TButton
        Left = 12
        Top = 6
        Width = 75
        Height = 21
        Caption = 'Start Trading'
        TabOrder = 1
        OnClick = Button5Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Second Input'
      ImageIndex = 3
      TabVisible = False
      object Time62: TLabel
        Left = 586
        Top = 0
        Width = 54
        Height = 13
        Caption = '------------------'
      end
      object GroupBox4: TGroupBox
        Left = 104
        Top = 95
        Width = 473
        Height = 195
        BiDiMode = bdRightToLeft
        Caption = #1605#1584#1603#1585#1577
        DragCursor = crCross
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Third Input'
      ImageIndex = 4
      TabVisible = False
    end
    object TabSheet6: TTabSheet
      Caption = 'Fourth Input'
      ImageIndex = 5
      TabVisible = False
    end
    object TabSheet7: TTabSheet
      Caption = 'test'
      ImageIndex = 6
      TabVisible = False
      object Label42: TLabel
        Left = 3
        Top = 184
        Width = 81
        Height = 20
        Caption = ' Block Note'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object consol2: TLabel
        Left = 332
        Top = 403
        Width = 34
        Height = 15
        Caption = 'Consol'
        Color = clCream
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Roboto Cn'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object sa: TMemo
        Left = 3
        Top = 220
        Width = 686
        Height = 157
        Lines.Strings = (
          'sa')
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object b30: TButton
        Left = 88
        Top = 153
        Width = 75
        Height = 25
        Caption = 'Send'
        TabOrder = 1
        Visible = False
        OnClick = b30Click
      end
      object e30: TEdit
        Left = 3
        Top = 157
        Width = 69
        Height = 21
        TabStop = False
        TabOrder = 2
        Text = 'M1'
        Visible = False
      end
      object Panel8: TPanel
        Left = 262
        Top = 220
        Width = 401
        Height = 157
        TabOrder = 3
        Visible = False
        object Label33: TLabel
          Left = 2
          Top = 2
          Width = 29
          Height = 13
          Caption = 'Run : '
        end
        object Label39: TLabel
          Left = 6
          Top = 128
          Width = 83
          Height = 13
          Caption = 'Trade Accepted :'
        end
        object Label40: TLabel
          Left = 2
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Fast B Lot :'
        end
        object Label41: TLabel
          Left = 2
          Top = 44
          Width = 57
          Height = 13
          Caption = 'Slow B Lot :'
        end
        object run1: TCheckBox
          Left = 32
          Top = 2
          Width = 24
          Height = 17
          TabOrder = 0
          OnClick = run1Click
        end
        object Panel9: TPanel
          Left = 128
          Top = 0
          Width = 273
          Height = 121
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Label34: TLabel
            Left = 8
            Top = 4
            Width = 162
            Height = 13
            Caption = 'Trade When Ask difference Down'
          end
          object Label35: TLabel
            Left = 8
            Top = 26
            Width = 161
            Height = 13
            Caption = 'Trade When All Spreads less than'
          end
          object Label36: TLabel
            Left = 8
            Top = 50
            Width = 163
            Height = 13
            Caption = 'Close When Ask difference Above'
          end
          object Label37: TLabel
            Left = 8
            Top = 74
            Width = 161
            Height = 13
            Caption = 'Close When Time(Second) Above'
          end
          object Label38: TLabel
            Left = 8
            Top = 98
            Width = 93
            Height = 13
            Caption = 'Magic Commentaire'
          end
          object Edit2: TEdit
            Left = 184
            Top = 0
            Width = 73
            Height = 21
            TabOrder = 0
            Text = '-100'
          end
          object Edit3: TEdit
            Left = 184
            Top = 24
            Width = 73
            Height = 21
            TabOrder = 1
            Text = '200'
          end
          object Edit4: TEdit
            Left = 184
            Top = 48
            Width = 73
            Height = 21
            TabOrder = 2
            Text = '300'
          end
          object Edit5: TEdit
            Left = 184
            Top = 72
            Width = 73
            Height = 21
            TabOrder = 3
            Text = 'NULL'
          end
          object Edit6: TEdit
            Left = 120
            Top = 96
            Width = 137
            Height = 21
            TabOrder = 4
            Text = 'iHaidra'
          end
        end
        object activeTrade: TComboBox
          Left = 95
          Top = 127
          Width = 306
          Height = 21
          TabOrder = 2
          Text = 'Active Trade'
        end
        object Edit7: TEdit
          Left = 62
          Top = 18
          Width = 31
          Height = 21
          TabOrder = 3
          Text = '1'
        end
        object Edit8: TEdit
          Left = 62
          Top = 42
          Width = 31
          Height = 21
          TabOrder = 4
          Text = '1'
        end
        object b50: TButton
          Left = 2
          Top = 80
          Width = 48
          Height = 25
          Caption = 'sell'
          TabOrder = 5
          OnClick = b50Click
        end
        object b51: TButton
          Left = 55
          Top = 80
          Width = 44
          Height = 25
          Caption = 'close'
          TabOrder = 6
          OnClick = b51Click
        end
      end
      object Memo2: TMemo
        Left = 180
        Top = 25
        Width = 467
        Height = 179
        Lines.Strings = (
          #1578#1581#1602#1602' '#1605#1606' '#1581#1580#1605' '#1575#1604#1593#1602#1583' Taille De Contrat '#1575#1604#1605#1608#1580#1608#1583#1577' '#1601#1610' Description'
          #1575#1584#1575' '#1603#1575#1606' '#1606#1601#1587' '#1575#1604#1581#1580#1605' - '#1590#1593' '#1606#1601#1587' '#1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' Lot'
          #1608' '#1575#1584#1575' '#1603#1575#1606' '#1605#1582#1578#1604#1601' '#1575#1581#1583#1607#1605#1575' 1 '#1608' '#1575#1604#1575#1582#1585' 10 '#1601#1581#1580#1605' '#1575#1604#1578#1583#1575#1608#1604' '#1575#1604#1575#1608#1604' '#1610#1603#1608#1606' '
          #1605#1590#1575#1593#1601' '#1605#1579#1575#1604' '
          '0.6 '#1604#1608#1578' '#1604#1604#1575#1608#1604' '#1608' 6.0 '#1604#1608#1578' '#1604#1579#1575#1606#1610'  '#1593#1604#1609' '#1581#1587#1576' '#1575#1582#1578#1604#1575#1601' '#1581#1580#1605' '#1575#1604#1593#1602#1583)
        TabOrder = 4
      end
    end
  end
  object server: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnClientConnect = serverClientConnect
    OnClientDisconnect = serverClientDisconnect
    OnClientRead = serverClientRead
    OnClientError = serverClientError
    Left = 672
    Top = 288
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    Filter = 'CSV File (*.csv)|*.csv'
    Encodings.Strings = (
      'UTF-8')
    Left = 656
    Top = 408
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 660
    Top = 360
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 648
    Top = 26
  end
end
