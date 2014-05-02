object Form5: TForm5
  Left = 13
  Top = 176
  Width = 588
  Height = 196
  Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 16
    Width = 73
    Height = 21
    Color = clBtnFace
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088
    ReadOnly = True
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 56
    Width = 105
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
    ReadOnly = True
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 120
    Top = 56
    Width = 89
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1076
    ReadOnly = True
    TabOrder = 2
  end
  object LabeledEdit4: TLabeledEdit
    Left = 216
    Top = 56
    Width = 73
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1072#1090#1072
    ReadOnly = True
    TabOrder = 3
  end
  object LabeledEdit5: TLabeledEdit
    Left = 296
    Top = 56
    Width = 57
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1088#1077#1084#1103
    ReadOnly = True
    TabOrder = 4
  end
  object LabeledEdit6: TLabeledEdit
    Left = 360
    Top = 56
    Width = 169
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089
    ReadOnly = True
    TabOrder = 5
  end
  object LabeledEdit7: TLabeledEdit
    Left = 8
    Top = 104
    Width = 105
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1072#1096#1080#1085#1072
    TabOrder = 6
    OnKeyDown = LabeledEdit7KeyDown
  end
  object LabeledEdit8: TLabeledEdit
    Left = 120
    Top = 104
    Width = 89
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1086#1089#1072#1076#1082#1072
    ReadOnly = True
    TabOrder = 7
  end
  object LabeledEdit9: TLabeledEdit
    Left = 216
    Top = 104
    Width = 89
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1099#1089#1072#1076#1082#1072
    ReadOnly = True
    TabOrder = 8
  end
  object LabeledEdit10: TLabeledEdit
    Left = 312
    Top = 104
    Width = 89
    Height = 21
    EditLabel.Width = 55
    EditLabel.Height = 13
    EditLabel.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    TabOrder = 9
    OnKeyDown = LabeledEdit10KeyDown
  end
  object LabeledEdit11: TLabeledEdit
    Left = 408
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1088#1080#1079#1085#1072#1082
    ReadOnly = True
    TabOrder = 10
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'FILE NAME=C:\SA9\patch_to_MariaDB.udl'
    LoginPrompt = False
    Provider = 'C:\SA9\patch_to_MariaDB.udl'
    Left = 328
    Top = 8
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 360
    Top = 8
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
    Top = 8
  end
end
