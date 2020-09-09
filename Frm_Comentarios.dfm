object FrmComentarios: TFrmComentarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 269
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageModal: TcxPageControl
    Left = 0
    Top = 0
    Width = 475
    Height = 269
    Align = alClient
    Color = 14803425
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabComentarios
    Properties.CustomButtons.Buttons = <>
    Properties.Images = connection.cxIconos16
    ClientRectBottom = 267
    ClientRectLeft = 2
    ClientRectRight = 473
    ClientRectTop = 30
    object cxTabComentarios: TcxTabSheet
      ImageIndex = 54
      object Panel1: TPanel
        Left = 0
        Top = 188
        Width = 471
        Height = 49
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        TabOrder = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 289
          Top = 1
          Width = 181
          Height = 47
          Align = alRight
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object bynCancelar: TcxButton
            Left = 92
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            OnClick = bynCancelarClick
          end
          object cxAceptar: TcxButton
            Left = 11
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            OnClick = cxAceptarClick
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            CaptionOptions.Text = 'cxButton2'
            CaptionOptions.Visible = False
            Control = bynCancelar
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxAceptar
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
        object dxLayoutControl3: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 288
          Height = 47
          Align = alClient
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 471
        Height = 188
        Align = alClient
        TabOrder = 1
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 469
          Height = 186
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object edtCampo: TcxTextEdit
            Left = 65
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 281
          end
          object cbFechaInicio: TcxDateEdit
            Left = 65
            Top = 40
            ParentFont = False
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.HotTrack = False
            TabOrder = 1
            Width = 281
          end
          object cxMemo1: TcxMemo
            Left = 65
            Top = 69
            Lines.Strings = (
              'cxMemo1')
            ParentFont = False
            Properties.ScrollBars = ssVertical
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 89
            Width = 185
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Campo1'
            Control = edtCampo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignVert = avClient
            CaptionOptions.Text = 'Campo2'
            Control = cbFechaInicio
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            CaptionOptions.Text = 'Campo3'
            Control = cxMemo1
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
    end
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 67
    Top = 15
  end
  object dsRecurso: TDataSource
    DataSet = zRecurso
    Left = 163
    Top = 15
  end
  object zDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 203
    Top = 23
  end
  object zSub: TUniQuery
    Connection = connection.Uconnection
    Left = 106
    Top = 14
  end
end
