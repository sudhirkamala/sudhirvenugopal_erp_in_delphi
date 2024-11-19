object Form50: TForm50
  Left = 0
  Top = 0
  Caption = 'Form50'
  ClientHeight = 526
  ClientWidth = 1164
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
    Width = 1148
    Height = 161
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 224
    Width = 121
    Height = 23
    DataField = 'WO_Number'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Part_Number'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 184
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 262
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Part_Type'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 391
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Part_Of'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 518
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Order_Date'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 645
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Order_Amount'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 768
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Completion_Date'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 895
    Top = 224
    Width = 121
    Height = 23
    DataField = 'If_Returned'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 1022
    Top = 224
    Width = 121
    Height = 23
    DataField = 'Amount_Reclaimed'
    DataSource = DMPurchaseOrder.DSWorkOrder
    TabOrder = 10
  end
  object btnInsert: TButton
    Left = 8
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 11
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 222
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 12
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 480
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
  object edtFilter: TEdit
    Left = 135
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 14
    TextHint = 'WO Number'
  end
  object edtFilter1: TEdit
    Left = 262
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 15
    TextHint = 'If Returned'
  end
  object edtDelete: TEdit
    Left = 458
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 16
    TextHint = 'WO Number'
  end
end
