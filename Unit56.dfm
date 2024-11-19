object Form56: TForm56
  Left = 0
  Top = 0
  Caption = 'Form56'
  ClientHeight = 627
  ClientWidth = 1110
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
    Width = 1094
    Height = 225
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 248
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Product_Name'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Date_Of_Induction'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 296
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Date_Of_Despatch'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 448
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Cost'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 600
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Number_In_Stock'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 744
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Date_Of_Reorder'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 888
    Top = 288
    Width = 121
    Height = 23
    DataField = 'Remarks'
    DataSource = DMPurchaseOrder.DSWarehouse
    TabOrder = 8
  end
  object btnInsert: TButton
    Left = 8
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 9
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 328
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 10
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 224
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Product Name'
  end
  object edtFilter1: TEdit
    Left = 384
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Date Of Reorder'
  end
  object btnDelete: TButton
    Left = 662
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 662
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 14
    TextHint = 'Product Name'
  end
end
