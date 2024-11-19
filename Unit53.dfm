object Form53: TForm53
  Left = 0
  Top = 0
  Caption = 'Form53'
  ClientHeight = 522
  ClientWidth = 1072
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
    Width = 1056
    Height = 185
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 216
    Width = 240
    Height = 25
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Employee_NO'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Employee_Name'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 304
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Date_Of_Birth'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 456
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Date_Of_Induction'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 600
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Date_Of_Retirement'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 744
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Number_Of_Days_In_Service'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 888
    Top = 264
    Width = 121
    Height = 23
    DataField = 'Leave_Taken_Per_Month'
    DataSource = DMPurchaseOrder.DSAttendance
    TabOrder = 8
  end
  object btnInsert: TButton
    Left = 8
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 9
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 304
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 10
    OnClick = btnUpdateClick
  end
  object edtFilter: TEdit
    Left = 208
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 11
    TextHint = 'Employee Number'
  end
  object edtFilter1: TEdit
    Left = 360
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 12
    TextHint = 'Employee Name'
  end
  object btnDelete: TButton
    Left = 624
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
  object edtDelete: TEdit
    Left = 624
    Top = 328
    Width = 121
    Height = 23
    TabOrder = 14
    TextHint = 'Employee Number'
  end
end
