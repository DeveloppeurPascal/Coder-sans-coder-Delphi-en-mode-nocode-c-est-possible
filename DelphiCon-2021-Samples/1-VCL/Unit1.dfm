object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 693
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 104
    Top = 128
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 160
    Top = 125
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 136
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 184
    object Fichier1: TMenuItem
      Caption = '&File'
      object Fichier2: TMenuItem
        Action = FileExit1
      end
    end
  end
  object ActionList1: TActionList
    Left = 488
    Top = 360
    object FileExit1: TFileExit
      Category = 'File'
      Caption = '&Quitter'
      Hint = 'Quitter|Quitte l'#39'application'
      ImageIndex = 43
    end
  end
end
