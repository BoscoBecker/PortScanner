object frmScanner: TfrmScanner
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Escaneador autom'#225'tico de porta '
  ClientHeight = 385
  ClientWidth = 643
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
  object shp1: TShape
    Left = 0
    Top = 0
    Width = 643
    Height = 385
    Align = alClient
    ExplicitLeft = 336
    ExplicitTop = 24
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object lblIp: TLabel
    Left = 8
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Endere'#231'o IP'
  end
  object lbl1: TLabel
    Left = 214
    Top = 64
    Width = 41
    Height = 13
    Caption = 'Porta de'
  end
  object lbl2: TLabel
    Left = 355
    Top = 64
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 92
    Width = 56
    Height = 16
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 8
    Width = 212
    Height = 33
    Caption = 'Escaner de Portas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
    Left = 8
    Top = 121
    Width = 625
    Height = 256
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object btnIniciar: TButton
    Left = 461
    Top = 59
    Width = 68
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 3
    OnClick = btnIniciarClick
  end
  object actvtyndctr1: TActivityIndicator
    Left = 609
    Top = 59
    IndicatorSize = aisSmall
  end
  object btnParar: TButton
    Left = 535
    Top = 59
    Width = 68
    Height = 25
    Caption = 'Parar'
    Enabled = False
    TabOrder = 4
    OnClick = btnPararClick
  end
  object idntfrz1: TIdAntiFreeze
    Left = 608
    Top = 8
  end
end
