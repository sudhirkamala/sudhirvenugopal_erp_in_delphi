object Form54: TForm54
  Left = 0
  Top = 0
  Caption = 'Form54'
  ClientHeight = 523
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 1081
    Height = 177
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 200
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Inventory_No'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Item_Name'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 288
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Cost'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 424
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Date_Of_Induction'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 560
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Date_Of_Despatch'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 696
    Top = 248
    Width = 121
    Height = 23
    DataField = 'No_Of_Peices'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 832
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Total_Cost'
    DataSource = DMPurchaseOrder.DSInventory
    TabOrder = 8
  end
  object btnInsert: TButton
    Left = 16
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 9
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 264
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 10
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 168
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Inventory Number'
  end
  object edtFilter1: TEdit
    Left = 320
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Inventory Item'
  end
  object btnDelete: TButton
    Left = 560
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 560
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 14
    TextHint = 'Inventory Number'
  end
end
