object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblResultado: TLabel
    Left = 64
    Top = 176
    Width = 55
    Height = 15
    Caption = 'Resultado:'
  end
  object edtEntrada: TEdit
    Left = 64
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object btnResta: TButton
    Left = 145
    Top = 97
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 1
    OnClick = btnRestaClick
  end
  object btnIgual: TButton
    Left = 64
    Top = 136
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 2
    OnClick = btnIgualClick
  end
  object btnDiv: TButton
    Left = 307
    Top = 97
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
  end
  object btnMulti: TButton
    Left = 226
    Top = 97
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 4
  end
  object btnSuma: TButton
    Left = 64
    Top = 97
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 5
    OnClick = btnSumaClick
  end
end
