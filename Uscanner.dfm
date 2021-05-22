object frmScanner: TfrmScanner
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Automatic scanner port'
  ClientHeight = 508
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblIp: TLabel
    Left = 8
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Address IP'
  end
  object lbl1: TLabel
    Left = 214
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Port of'
  end
  object lbl2: TLabel
    Left = 355
    Top = 64
    Width = 10
    Height = 13
    Caption = 'to'
  end
  object lbl3: TLabel
    Left = 8
    Top = 8
    Width = 279
    Height = 33
    Caption = 'Automatic Scanner port'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPort: TLabel
    Left = 16
    Top = 93
    Width = 63
    Height = 13
    Caption = 'Port scanned'
  end
  object lblPortsOpen: TLabel
    Left = 371
    Top = 94
    Width = 67
    Height = 13
    Caption = 'Port Openned'
  end
  object edtIp: TEdit
    Left = 72
    Top = 61
    Width = 132
    Height = 21
    TabOrder = 0
    Text = '127.0.0.1'
    TextHint = 'Ex: 192.168.0.1'
  end
  object seInicio: TSpinEdit
    Left = 261
    Top = 61
    Width = 88
    Height = 22
    MaxValue = 65535
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object seFim: TSpinEdit
    Left = 367
    Top = 61
    Width = 88
    Height = 22
    MaxValue = 65535
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object mmoResultado: TMemo
    Left = 16
    Top = 112
    Width = 349
    Height = 352
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object btnStart: TButton
    Left = 461
    Top = 59
    Width = 68
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = btnStartClick
  end
  object actvtyndctr1: TActivityIndicator
    Left = 609
    Top = 59
  end
  object btnStop: TButton
    Left = 535
    Top = 59
    Width = 68
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 4
    OnClick = btnStopClick
  end
  object mmPortsOpen: TMemo
    Left = 371
    Top = 113
    Width = 349
    Height = 352
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object Progress: TProgressBar
    Left = 16
    Top = 472
    Width = 704
    Height = 17
    TabOrder = 8
  end
  object idntfrz1: TIdAntiFreeze
    IdleTimeOut = 2
    Left = 608
    Top = 8
  end
end
