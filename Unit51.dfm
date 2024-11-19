object Form51: TForm51
  Left = 0
  Top = 0
  Caption = 'Form51'
  ClientHeight = 579
  ClientWidth = 1082
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
    Width = 1066
    Height = 193
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 224
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Customer_Number'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Customer_Name'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 336
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Phone'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 496
    Top = 264
    Width = 121
    Height = 23
    DataField = 'E_Mail'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 672
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Address'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 848
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Customer_Since'
    DataSource = DMPurchaseOrder.DSCustomer
    TabOrder = 7
  end
  object btnInsert: TButton
    Left = 32
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 8
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 222
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 9
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 127
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 10
    TextHint = 'Customer Number'
  end
  object edtFilter1: TEdit
    Left = 280
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Phone'
  end
  object edtDelete: TEdit
    Left = 512
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Customer Number'
  end
  object btnDelete: TButton
    Left = 512
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
end
