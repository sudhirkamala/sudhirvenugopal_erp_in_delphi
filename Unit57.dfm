object Form57: TForm57
  Left = 0
  Top = 0
  Caption = 'Form57'
  ClientHeight = 603
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 208
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 1084
    Height = 185
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Customer_No'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Item_Marketed'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 262
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Cost'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 389
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Number_Of_Products'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 516
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Total_Cost'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 643
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Brand_Name'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 770
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Sales_Executive_Name'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 897
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Incentive'
    DataSource = DMPurchaseOrder.DSMarketing
    TabOrder = 9
  end
  object btnInsert: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 10
    OnClick = btnInsertClick
  end
  object edtFilter: TEdit
    Left = 192
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Customer Number'
  end
  object edtFilter1: TEdit
    Left = 344
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Cost'
  end
  object btnUpdate: TButton
    Left = 288
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 13
    OnClick = btnUpdateClick
  end
  object edtDelete: TEdit
    Left = 600
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 14
    TextHint = 'Customer Number'
  end
  object btnDelete: TButton
    Left = 600
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 15
    OnClick = btnDeleteClick
  end
end
