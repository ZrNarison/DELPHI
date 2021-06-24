object Form9: TForm9
  Left = 0
  Top = 0
  ClientHeight = 512
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 767
    Height = 512
    Title.Text.Strings = (
      'REPRESENTATION GRAPHIQUE DES ETUDIANT')
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      17
      15
      17)
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      DataSource = DataModule2.ADOQuery3
      XLabelsSource = 'Classe'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'nombre'
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
      PiePen.Visible = False
    end
  end
end
