object AtivCepMateus: TAtivCepMateus
  Left = 0
  Top = 0
  Caption = 'AtivCepMateus'
  ClientHeight = 182
  ClientWidth = 435
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
    Left = 159
    Top = 88
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
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object imgBandeira: TImage
    Left = 159
    Top = 8
    Width = 97
    Height = 50
    Stretch = True
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
  object lstImport: TListBox
    Left = 8
    Top = 107
    Width = 417
    Height = 62
    ItemHeight = 13
    TabOrder = 1
  end
  object cmbCidade: TComboBox
    Left = 8
    Top = 80
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 2
  end
end
