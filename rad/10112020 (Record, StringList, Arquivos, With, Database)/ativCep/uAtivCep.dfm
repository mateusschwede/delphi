object AtivCepMateus: TAtivCepMateus
  Left = 0
  Top = 0
  Caption = 'AtivCepMateus'
  ClientHeight = 451
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCep: TLabel
    Left = 168
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Cep:'
  end
  object cmbEstado: TComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Estado'
  end
  object lstCidades: TListBox
    Left = 144
    Top = 48
    Width = 225
    Height = 395
    ItemHeight = 13
    TabOrder = 1
  end
  object lstImport: TListBox
    Left = 8
    Top = 48
    Width = 130
    Height = 395
    ItemHeight = 13
    TabOrder = 2
  end
end
