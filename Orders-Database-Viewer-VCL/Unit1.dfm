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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 616
        Height = 390
        Align = alClient
        DataSource = dsClients
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 390
        Width = 616
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        ExplicitTop = 370
        object btnCommandes: TButton
          Left = 520
          Top = 0
          Width = 96
          Height = 41
          Action = TabNextTab1
          Align = alRight
          Caption = 'Commandes'
          TabOrder = 0
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 0
          Width = 520
          Height = 41
          DataSource = dsClients
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Align = alClient
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 616
        Height = 390
        Align = alClient
        DataSource = dsOrders
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 390
        Width = 616
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 1
        ExplicitTop = 370
        object DBNavigator2: TDBNavigator
          Left = 75
          Top = 0
          Width = 466
          Height = 41
          DataSource = dsOrders
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Align = alClient
          TabOrder = 0
        end
        object btnClients: TButton
          Left = 0
          Top = 0
          Width = 75
          Height = 41
          Action = TabPreviousTab1
          Align = alLeft
          Caption = 'Clients'
          TabOrder = 1
        end
        object btnLignes: TButton
          Left = 541
          Top = 0
          Width = 75
          Height = 41
          Action = TabNextTab1
          Align = alRight
          Caption = 'D'#233'tail'
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 616
        Height = 390
        Align = alClient
        DataSource = dsOrderDetail
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 390
        Width = 616
        Height = 41
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 1
        ExplicitTop = 370
        object btnRetourClients: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'btnRetourClients'
          Enabled = False
          TabOrder = 0
        end
        object DBNavigator3: TDBNavigator
          Left = 151
          Top = 1
          Width = 464
          Height = 39
          DataSource = dsOrderDetail
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Align = alClient
          TabOrder = 1
        end
        object btnRetourCommandes: TButton
          Left = 76
          Top = 1
          Width = 75
          Height = 39
          Action = TabPreviousTab1
          Align = alLeft
          Caption = 'Commandes'
          TabOrder = 2
        end
      end
    end
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 379
    Top = 57
  end
  object CustomersTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM Customers')
    Left = 379
    Top = 105
  end
  object dsClients: TDataSource
    DataSet = CustomersTable
    Left = 304
    Top = 224
  end
  object ActionList1: TActionList
    Left = 408
    Top = 224
    object TabNextTab1: TNextTab
      Category = 'Onglet'
      TabControl = PageControl1
      Caption = 'Sui&vant'
      Hint = 'Suivant|Aller '#224' l'#39'onglet suivant'
      SkipHiddenTabs = False
    end
    object TabPreviousTab1: TPreviousTab
      Category = 'Onglet'
      TabControl = PageControl1
      Caption = 'P&r'#233'c'#233'dent'
      Hint = 'Pr'#233'c'#233'dent|Revenir '#224' l'#39'onglet pr'#233'c'#233'dent'
      SkipHiddenTabs = False
    end
  end
  object OrdersTable: TFDQuery
    Active = True
    IndexFieldNames = 'CustomerID;OrderID'
    MasterSource = dsClients
    MasterFields = 'CustomerID'
    Connection = Sqlite_demoConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM Orders')
    Left = 241
    Top = 177
  end
  object dsOrders: TDataSource
    DataSet = OrdersTable
    Left = 224
    Top = 264
  end
  object OrderdetailsTable: TFDQuery
    Active = True
    IndexFieldNames = 'OrderID;ProductID'
    MasterSource = dsOrders
    MasterFields = 'OrderID'
    Connection = Sqlite_demoConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM "Order Details"')
    Left = 502
    Top = 145
  end
  object dsOrderDetail: TDataSource
    DataSet = OrderdetailsTable
    Left = 504
    Top = 208
  end
end
