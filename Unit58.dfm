object Form58: TForm58
  Left = 0
  Top = 0
  Caption = 'Form58'
  ClientHeight = 578
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 1134
    Height = 177
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 208
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Supplier_No'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Product'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 262
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Supplier_Name'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 389
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Supply_Date'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 516
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Part_No'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 643
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Part_Name'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 770
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Amount'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 897
    Top = 248
    Width = 121
    Height = 23
    DataField = 'If_Returned'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 1024
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Amount_Reclaimed'
    DataSource = DMPurchaseOrder.DSSupplyChain
    TabOrder = 10
  end
  object btnInsert: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 11
    OnClick = btnInsertClick
  end
  object edtFilter: TEdit
    Left = 232
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Supplier Number'
  end
  object edtFilter1: TEdit
    Left = 389
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 13
    TextHint = 'Amount Reclaimed'
  end
  object btnUpdate: TButton
    Left = 336
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 14
    OnClick = btnUpdateClick
  end
  object edtDelete: TEdit
    Left = 704
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 15
    TextHint = 'Supplier Number'
  end
  object btnDelete: TButton
    Left = 704
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 16
    OnClick = btnDeleteClick
  end
end
