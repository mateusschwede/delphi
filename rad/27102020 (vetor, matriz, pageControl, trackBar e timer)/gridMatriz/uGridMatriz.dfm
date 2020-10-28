object frmGridMatriz: TfrmGridMatriz
  Left = 0
  Top = 0
  Caption = 'frmGridMatriz'
  ClientHeight = 526
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object stgMat: TStringGrid
    Left = 8
    Top = 8
    Width = 320
    Height = 120
    ColCount = 4
    RowCount = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object btbAdd: TBitBtn
    Left = 8
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btbAddClick
  end
  object stgVet: TStringGrid
    Left = 376
    Top = 8
    Width = 320
    Height = 120
    ColCount = 10
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 134
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object btnSoma: TButton
    Left = 457
    Top = 134
    Width = 75
    Height = 25
    Caption = 'btnSoma'
    TabOrder = 4
    OnClick = btnSomaClick
  end
  object btnAdd2: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = btnAdd2Click
  end
  object lstVetDin: TListBox
    Left = 8
    Top = 247
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 6
  end
end
