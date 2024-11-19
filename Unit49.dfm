object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Purchase Order'
  ClientHeight = 450
  ClientWidth = 1033
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
    Width = 1018
    Height = 161
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 248
    Width = 121
    Height = 23
    DataField = 'ID'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 143
    Top = 248
    Width = 121
    Height = 23
    DataField = 'PO_Number'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 270
    Top = 248
    Width = 121
    Height = 23
    DataField = 'PO_Date'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 397
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Item_Description'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 524
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Purchased_From'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 651
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Amount'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 778
    Top = 248
    Width = 121
    Height = 23
    DataField = 'If_Returned'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 905
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Amount_Reclaimed'
    DataSource = DMPurchaseOrder.DSPurchaseOrder
    TabOrder = 9
  end
  object btnInsert: TButton
    Left = 16
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 10
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 231
    Top = 328
    Width = 82
    Height = 25
    Caption = 'Update'
    TabOrder = 11
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 143
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'PO Number'
  end
  object edtFilter1: TEdit
    Left = 280
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 13
    TextHint = 'Amount Reclaimed'
  end
  object btnDelete: TButton
    Left = 504
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 14
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 504
    Top = 288
    Width = 121
    Height = 23
    TabOrder = 15
    TextHint = 'PO Number'
  end
  object Button1: TButton
    Left = 16
    Top = 377
    Width = 153
    Height = 25
    Caption = 'Show Work Order Form'
    TabOrder = 16
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 175
    Top = 377
    Width = 146
    Height = 25
    Caption = 'Show Customer Form'
    TabOrder = 17
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 327
    Top = 377
    Width = 153
    Height = 25
    Caption = 'Show Finance Form'
    TabOrder = 18
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 486
    Top = 377
    Width = 141
    Height = 25
    Caption = 'Show Attendance Form'
    TabOrder = 19
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 633
    Top = 377
    Width = 153
    Height = 25
    Caption = 'Show Inventory Form'
    TabOrder = 20
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 792
    Top = 377
    Width = 177
    Height = 25
    Caption = 'Show Project Form'
    TabOrder = 21
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 417
    Width = 153
    Height = 25
    Caption = 'Show Warehouse Form'
    TabOrder = 22
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 175
    Top = 417
    Width = 146
    Height = 25
    Caption = 'Show Marketing Form'
    TabOrder = 23
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 327
    Top = 417
    Width = 153
    Height = 25
    Caption = 'Show Supply Chain Form'
    TabOrder = 24
    OnClick = Button9Click
  end
end
