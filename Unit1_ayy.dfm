object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1040#1073#1089#1086#1083#1102#1090#1085#1086' '#1091#1087#1088#1091#1075#1080#1081' '#1091#1076#1072#1088
  ClientHeight = 392
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 23
    Top = 16
    Width = 305
    Height = 129
  end
  object Label1: TLabel
    Left = 56
    Top = 173
    Width = 132
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1087#1077#1088#1074#1086#1081' '#1095#1072#1089#1090#1080#1094#1077
  end
  object Label2: TLabel
    Left = 56
    Top = 197
    Width = 30
    Height = 13
    Caption = #1052#1072#1089#1089#1072
  end
  object Label3: TLabel
    Left = 56
    Top = 261
    Width = 48
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
  end
  object Label4: TLabel
    Left = 280
    Top = 173
    Width = 132
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1090#1086#1088#1086#1081' '#1095#1072#1089#1090#1080#1094#1077
  end
  object Label5: TLabel
    Left = 280
    Top = 197
    Width = 30
    Height = 13
    Caption = #1052#1072#1089#1089#1072
  end
  object Label6: TLabel
    Left = 280
    Top = 261
    Width = 48
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
  end
  object Label7: TLabel
    Left = 480
    Top = 173
    Width = 152
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1095#1072#1089#1090#1080#1094' '#1087#1086#1089#1083#1077' '#1091#1076#1072#1088#1072
  end
  object Image2: TImage
    Left = 344
    Top = 16
    Width = 305
    Height = 129
  end
  object Label8: TLabel
    Left = 23
    Top = 336
    Width = 192
    Height = 48
    Caption = 
      #1045#1089#1083#1080' '#1095#1072#1089#1090#1080#1094#1072' '#1076#1074#1080#1078#1077#1090#1089#1103' '#1074#1083#1077#1074#1086', '#1089#1082#1086#1088#1086#1089#1090#1100' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1074#1086#1076#1080#1090#1100' '#1089' '#1086#1090#1088#1080#1094 +
      #1072#1090#1077#1083#1100#1085#1099#1084' '#1079#1085#1072#1082#1086#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label9: TLabel
    Left = 480
    Top = 197
    Width = 133
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1077#1088#1074#1086#1081' '#1095#1072#1089#1090#1080#1094#1099
  end
  object Label10: TLabel
    Left = 480
    Top = 264
    Width = 133
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1074#1090#1086#1088#1086#1081' '#1095#1072#1089#1090#1080#1094#1099
  end
  object m1: TEdit
    Left = 56
    Top = 216
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object v10: TEdit
    Left = 56
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = v10KeyPress
  end
  object m2: TEdit
    Left = 280
    Top = 216
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object v20: TEdit
    Left = 280
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = v20KeyPress
  end
  object v1: TEdit
    Left = 480
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = v1KeyPress
  end
  object Calculate: TButton
    Left = 304
    Top = 336
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 5
    OnClick = CalculateClick
  end
  object Reuse: TButton
    Left = 488
    Top = 336
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = ReuseClick
  end
  object v2: TEdit
    Left = 480
    Top = 283
    Width = 121
    Height = 21
    TabOrder = 7
    OnKeyPress = v2KeyPress
  end
end
