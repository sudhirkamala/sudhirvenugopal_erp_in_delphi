object Form52: TForm52
  Left = 0
  Top = 0
  Caption = 'Form52'
  ClientHeight = 540
  ClientWidth = 1061
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
    Width = 1037
    Height = 161
    DataSource = DMPurchaseOrder.DSFinance
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
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Company_Name'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Investment'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 262
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Loan_Taken'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 389
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Assets'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 516
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Asset_Cost'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 643
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Debit_Amount'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 770
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Credit_Amount'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 897
    Top = 232
    Width = 121
    Height = 23
    DataField = 'Balance_Amount'
    DataSource = DMPurchaseOrder.DSFinance
    TabOrder = 9
  end
  object btnInsert: TButton
    Left = 8
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 10
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 272
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 11
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 176
    Top = 312
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Customer Name'
  end
  object edtFilter1: TEdit
    Left = 328
    Top = 312
    Width = 121
    Height = 23
    TabOrder = 13
    TextHint = 'Investment'
  end
  object btnDelete: TButton
    Left = 584
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 14
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 584
    Top = 320
    Width = 121
    Height = 23
    TabOrder = 15
    TextHint = 'Customer Name'
  end
end
