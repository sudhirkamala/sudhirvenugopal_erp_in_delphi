object Form55: TForm55
  Left = 0
  Top = 0
  Caption = 'Form55'
  ClientHeight = 522
  ClientWidth = 1089
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
    Width = 1073
    Height = 169
    DataSource = DMPurchaseOrder.DSProject
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
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Project_NO'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Project_Name'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 328
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Project_Start_Date'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 488
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Project_End_Date'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 632
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Type_Of_Project'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 784
    Top = 248
    Width = 121
    Height = 23
    DataField = 'Related_Customer'
    DataSource = DMPurchaseOrder.DSProject
    TabOrder = 7
  end
  object btnInsert: TButton
    Left = 16
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 8
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 272
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 9
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 176
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 10
    TextHint = 'Project Number'
  end
  object edtFilter1: TEdit
    Left = 328
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Project End Date'
  end
  object btnDelete: TButton
    Left = 544
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 12
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 544
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 13
    TextHint = 'Project Number'
  end
end
