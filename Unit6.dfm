object Form6: TForm6
  Left = 172
  Top = 88
  Width = 413
  Height = 313
  Caption = 'Form6'
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
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 83
    Height = 13
    Caption = #1054#1090#1095#1077#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076
  end
  object Label2: TLabel
    Left = 96
    Top = 24
    Width = 6
    Height = 13
    Caption = #1089
  end
  object Label3: TLabel
    Left = 280
    Top = 24
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 40
    Width = 191
    Height = 154
    Date = 39480.938013229170000000
    TabOrder = 0
  end
  object MonthCalendar2: TMonthCalendar
    Left = 200
    Top = 40
    Width = 191
    Height = 154
    Date = 39480.938013229170000000
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 208
    Width = 161
    Height = 21
    Date = 39480.625859189810000000
    Time = 39480.625859189810000000
    Kind = dtkTime
    TabOrder = 2
  end
  object DateTimePicker2: TDateTimePicker
    Left = 216
    Top = 208
    Width = 169
    Height = 21
    Date = 39480.626050347220000000
    Time = 39480.626050347220000000
    Kind = dtkTime
    TabOrder = 3
  end
  object Button1: TButton
    Left = 168
    Top = 240
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 4
    OnClick = Button1Click
  end
end
