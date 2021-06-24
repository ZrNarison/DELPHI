object OptionForm: TOptionForm
  Left = 198
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Options'
  ClientHeight = 183
  ClientWidth = 183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BulleTimeLabel: TLabel
    Left = 32
    Top = 36
    Width = 88
    Height = 13
    Caption = 'Dur'#233'e des bulles : '
  end
  object DecoBevel: TBevel
    Left = 8
    Top = 64
    Width = 166
    Height = 3
    Style = bsRaised
  end
  object InfoBulleCheckBox: TCheckBox
    Left = 8
    Top = 8
    Width = 117
    Height = 17
    Caption = 'Activer les infoBulles'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object HintTime: TSpinEdit
    Left = 120
    Top = 32
    Width = 57
    Height = 22
    Ctl3D = True
    MaxLength = 2
    MaxValue = 60
    MinValue = 1
    ParentCtl3D = False
    TabOrder = 1
    Value = 20
  end
  object StartType: TRadioGroup
    Left = 8
    Top = 72
    Width = 167
    Height = 73
    Caption = 'D'#233'marrage automatique'
    ItemIndex = 0
    Items.Strings = (
      'D'#233'marrer avec Windows'
      'Ne pas d'#233'marrer')
    TabOrder = 2
  end
  object ApplyBtn: TButton
    Left = 8
    Top = 152
    Width = 81
    Height = 25
    Caption = 'Appliquer'
    Default = True
    TabOrder = 3
    OnClick = ApplyBtnClick
  end
  object CloseBtn: TButton
    Left = 99
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Annuler'
    TabOrder = 4
    OnClick = CloseBtnClick
  end
end
