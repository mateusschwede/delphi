object Form1: TForm1
  Left = 0
  Top = 55
  Caption = 'MatAtiv1'
  ClientHeight = 580
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 333
    Width = 27
    Height = 13
    Caption = 'Pares'
  end
  object Label2: TLabel
    Left = 8
    Top = 413
    Width = 39
    Height = 13
    Caption = #205'mpares'
  end
  object Label3: TLabel
    Left = 8
    Top = 496
    Width = 76
    Height = 13
    Caption = 'N'#250'meros '#218'nicos'
  end
  object Label4: TLabel
    Left = 623
    Top = 333
    Width = 60
    Height = 13
    Caption = 'Decrescente'
  end
  object Label5: TLabel
    Left = 623
    Top = 413
    Width = 60
    Height = 13
    Caption = 'Decrescente'
  end
  object Label6: TLabel
    Left = 623
    Top = 496
    Width = 60
    Height = 13
    Caption = 'Decrescente'
  end
  object strMatriz: TStringGrid
    Left = 216
    Top = 8
    Width = 609
    Height = 273
    ColCount = 9
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
  end
  object btnGerar: TButton
    Left = 488
    Top = 287
    Width = 105
    Height = 43
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = btnGerarClick
  end
  object strPar: TStringGrid
    Left = 8
    Top = 352
    Width = 609
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
  end
  object strImpar: TStringGrid
    Left = 8
    Top = 432
    Width = 609
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 3
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object strNum: TStringGrid
    Left = 8
    Top = 515
    Width = 609
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 4
  end
  object strParDesc: TStringGrid
    Left = 623
    Top = 352
    Width = 320
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 5
  end
  object strImparDesc: TStringGrid
    Left = 623
    Top = 432
    Width = 320
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 6
  end
  object strNumDesc: TStringGrid
    Left = 623
    Top = 515
    Width = 320
    Height = 49
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 7
  end
end
