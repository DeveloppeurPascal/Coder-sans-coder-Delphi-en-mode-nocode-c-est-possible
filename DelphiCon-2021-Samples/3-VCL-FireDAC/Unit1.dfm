object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 614
    Height = 363
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 5
    Top = 411
    Width = 614
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 232
    ExplicitWidth = 240
  end
  object DBEdit1: TDBEdit
    AlignWithMargins = True
    Left = 5
    Top = 378
    Width = 614
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    DataField = 'Country'
    DataSource = DataSource1
    TabOrder = 2
    ExplicitLeft = 264
    ExplicitTop = 232
    ExplicitWidth = 121
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 509
    Top = 68
  end
  object EmployeesTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Employees')
    Left = 509
    Top = 116
  end
  object DataSource1: TDataSource
    DataSet = EmployeesTable
    Left = 504
    Top = 200
  end
end
