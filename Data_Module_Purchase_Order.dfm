object DMPurchaseOrder: TDMPurchaseOrder
  Height = 549
  Width = 802
  object DBPurchaseOrderConnection: TADOConnection
    ConnectionString = 
      'C:\Users\user\Documents\Embarcadero\Studio\Projects\My_Database.' +
      'mdb'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 16
  end
  object TBLPurchaseOrder: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'PO_Table'
    Left = 40
    Top = 88
  end
  object DSPurchaseOrder: TDataSource
    DataSet = TBLPurchaseOrder
    Left = 160
    Top = 88
  end
  object TBLWorkOrder: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    MasterSource = DSPurchaseOrder
    TableName = 'Work_Order'
    Left = 32
    Top = 168
  end
  object DSWorkOrder: TDataSource
    DataSet = TBLWorkOrder
    Left = 160
    Top = 168
  end
  object TBLCustomer: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 32
    Top = 256
  end
  object DSCustomer: TDataSource
    DataSet = TBLCustomer
    Left = 160
    Top = 256
  end
  object TBLFinance: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Finance_Table'
    Left = 32
    Top = 344
  end
  object DSFinance: TDataSource
    DataSet = TBLFinance
    Left = 152
    Top = 344
  end
  object TBLAttendance: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Attendance'
    Left = 24
    Top = 432
  end
  object DSAttendance: TDataSource
    DataSet = TBLAttendance
    Left = 152
    Top = 432
  end
  object TBLInventory: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Inventory_Table'
    Left = 272
    Top = 88
  end
  object DSInventory: TDataSource
    DataSet = TBLInventory
    Left = 360
    Top = 88
  end
  object TBLProject: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Project_Table'
    Left = 272
    Top = 168
  end
  object DSProject: TDataSource
    DataSet = TBLProject
    Left = 368
    Top = 168
  end
  object TBLWarehouse: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Warehouse_Table'
    Left = 272
    Top = 256
  end
  object DSWarehouse: TDataSource
    DataSet = TBLWarehouse
    Left = 368
    Top = 256
  end
  object TBLMarketing: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Marketing_Table'
    Left = 272
    Top = 344
  end
  object DSMarketing: TDataSource
    DataSet = TBLMarketing
    Left = 368
    Top = 344
  end
  object TBLSupplyChain: TADOTable
    Connection = DBPurchaseOrderConnection
    CursorType = ctStatic
    TableName = 'Supply_Chain'
    Left = 264
    Top = 432
  end
  object DSSupplyChain: TDataSource
    DataSet = TBLSupplyChain
    Left = 368
    Top = 432
  end
end
