object AtivCepMateus: TAtivCepMateus
  Left = 0
  Top = 0
  Caption = 'AtivCepMateus'
  ClientHeight = 451
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblCep: TLabel
    Left = 168
    Top = 30
    Width = 23
    Height = 13
    Caption = 'Cep:'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object cmbEstado: TComboBox
    Left = 8
    Top = 27
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = cmbEstadoChange
    Items.Strings = (
      'TODOS'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object lstCidades: TListBox
    Left = 712
    Top = 54
    Width = 225
    Height = 389
    ItemHeight = 13
    TabOrder = 1
  end
  object lstImport: TListBox
    Left = 8
    Top = 54
    Width = 698
    Height = 389
    ItemHeight = 13
    TabOrder = 2
  end
end
