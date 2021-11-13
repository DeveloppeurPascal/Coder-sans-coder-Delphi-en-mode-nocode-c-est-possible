object DataModule2: TDataModule2
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 193
    Top = 61
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
    Left = 193
    Top = 125
  end
  object OrdersTable: TFDQuery
    Active = True
    IndexFieldNames = 'CustomerID;OrderDate'
    MasterSource = dsCustomers
    MasterFields = 'CustomerID'
    Connection = Sqlite_demoConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM Orders')
    Left = 308
    Top = 188
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
    Left = 414
    Top = 270
  end
  object ProductsTable: TFDQuery
    Active = True
    IndexFieldNames = 'ProductID'
    MasterSource = dsOrderDetails
    MasterFields = 'ProductID'
    Connection = Sqlite_demoConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM Products')
    Left = 314
    Top = 370
  end
  object dsCustomers: TDataSource
    DataSet = CustomersTable
    Left = 208
    Top = 192
  end
  object dsOrders: TDataSource
    DataSet = OrdersTable
    Left = 304
    Top = 264
  end
  object dsOrderDetails: TDataSource
    DataSet = OrderdetailsTable
    Left = 416
    Top = 344
  end
end
