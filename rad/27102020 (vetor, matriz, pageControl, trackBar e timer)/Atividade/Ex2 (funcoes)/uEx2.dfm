object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 644
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtVal: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = 'Quantidade termos'
  end
  object lstRes: TListBox
    Left = 8
    Top = 35
    Width = 202
    Height = 601
    ItemHeight = 13
    TabOrder = 1
  end
  object btnGerar: TButton
    Left = 135
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 2
    OnClick = btnGerarClick
  end
end
