object FrmFechaVigencia: TFrmFechaVigencia
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Fechas'
  ClientHeight = 170
  ClientWidth = 340
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
  object cxPageControlF: TcxPageControl
    Left = 0
    Top = 0
    Width = 340
    Height = 170
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxPageVigencia
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 168
    ClientRectLeft = 2
    ClientRectRight = 338
    ClientRectTop = 28
    object cxPageVigencia: TcxTabSheet
      Caption = 'cxPageVigencia'
      ImageIndex = 0
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 336
        Height = 140
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object edtFechaVigencia: TcxDateEdit
          Left = 96
          Top = 10
          ParentFont = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 219
        end
        object btnAceptar: TcxButton
          Left = 170
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          ModalResult = 1
          TabOrder = 2
          OnClick = btnAceptarClick
        end
        object btnCancelar: TcxButton
          Left = 251
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          ModalResult = 2
          TabOrder = 3
          OnClick = btnCancelarClick
        end
        object Empresa: TcxLookupComboBox
          Left = 96
          Top = 38
          ParentFont = False
          Properties.KeyFieldNames = 'IdEmpresa'
          Properties.ListColumns = <
            item
              Caption = 'Seleccione la Empresa'
              FieldName = 'Titulo'
            end>
          Properties.ListSource = ds_consulta
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 145
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha Vigencia'
          Control = edtFechaVigencia
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahRight
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'btnAceptar'
          CaptionOptions.Visible = False
          Control = btnAceptar
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'btnCancelar'
          CaptionOptions.Visible = False
          Control = btnCancelar
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Empresa'
          Control = Empresa
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxPageDiasL: TcxTabSheet
      Caption = 'cxPageDiasL'
      ImageIndex = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 336
        Height = 140
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxFechaIni: TcxDateEdit
          Left = 79
          Top = 10
          EditValue = 0d
          ParentFont = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 121
        end
        object cxAceptaT2: TcxButton
          Left = 170
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxAceptaT2Click
        end
        object cxFechaFin: TcxDateEdit
          Left = 79
          Top = 38
          EditValue = 0d
          ParentFont = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 121
        end
        object cxCancelaT2: TcxButton
          Left = 251
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = cxCancelaT2Click
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Inicio'
          Control = cxFechaIni
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxAceptaT2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Fin'
          Control = cxFechaFin
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxCancelaT2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahRight
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
      end
    end
  end
  object uConsulta: TUniQuery
    Connection = connection.Uconnection
    Left = 18
    Top = 108
  end
  object ds_consulta: TDataSource
    DataSet = uConsulta
    Left = 66
    Top = 116
  end
end
