object FrmModal: TFrmModal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 177
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageModal: TcxPageControl
    Left = 0
    Top = 0
    Width = 463
    Height = 177
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
    Properties.ActivePage = cxTabCotizacion
    Properties.CustomButtons.Buttons = <>
    Properties.Images = connection.cxIconos16
    OnChange = cxPageModalChange
    ClientRectBottom = 175
    ClientRectLeft = 2
    ClientRectRight = 461
    ClientRectTop = 30
    object cxTabRequisicion: TcxTabSheet
      Caption = 'Requisicion'
      ImageIndex = 1
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 96
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbRecurso: TcxLookupComboBox
          Left = 101
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdTipoRecurso'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsRecurso
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 257
        end
        object cbFechaInicio: TcxDateEdit
          Left = 101
          Top = 40
          ParentFont = False
          Properties.AssignedValues.EditFormat = True
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cbFechaFinal: TcxDateEdit
          Left = 328
          Top = 40
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
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
          CaptionOptions.Text = 'Recurso'
          Control = cbRecurso
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha Solicitud'
          Control = cbFechaInicio
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Requerido'
          Control = cbFechaFinal
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 96
        Width = 459
        Height = 49
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        TabOrder = 1
        object dxLayoutControl2: TdxLayoutControl
          Left = 277
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
          object cxButton1: TcxButton
            Left = 11
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            OnClick = cxButton1Click
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
            Control = cxButton1
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
        object dxLayoutControl3: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 276
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
    end
    object cxTabCotizacion: TcxTabSheet
      Caption = 'Cotizaci'#243'n'
      ImageIndex = 13
      object Panel3: TPanel
        Left = 0
        Top = 96
        Width = 459
        Height = 49
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 0
        object dxLayoutControl5: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 457
          Height = 47
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxBtnAcepta2: TcxButton
            Left = 290
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            OnClick = cxBtnAcepta2Click
          end
          object cxBtnCancel2: TcxButton
            Left = 371
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            OnClick = cxBtnCancel2Click
          end
          object dxLayoutControl5Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutControl5Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cxBtnAcepta2
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutControl5Group_Root
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = cxBtnCancel2
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 96
        Align = alClient
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxFechaCot: TcxDateEdit
          Left = 327
          Top = 39
          ParentFont = False
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
        object cmbCotizaciones: TcxLookupComboBox
          Left = 91
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdCotizacion'
          Properties.ListColumns = <
            item
              Caption = 'Listado de Cotizaciones'
              FieldName = 'Codigo'
            end>
          Properties.ListSource = dsRecurso
          Properties.OnEditValueChanged = cmbCotizacionesPropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 145
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Requerido'
          Visible = False
          Control = cxFechaCot
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Cotizaciones '
          Control = cmbCotizaciones
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabEntrada: TcxTabSheet
      Caption = 'Entrada'
      ImageIndex = 61
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alTop
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxAlmacenes: TcxLookupComboBox
          Left = 96
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdAlmacen'
          Properties.ListColumns = <
            item
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = dsAlmacen
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 145
        end
        object cxFechaEntrada: TcxDateEdit
          Left = 96
          Top = 40
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 137
        end
        object cxCancelarEntrada: TcxButton
          Left = 373
          Top = 69
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          OnClick = cxBtnCancel2Click
        end
        object cxAceptarEntrada: TcxButton
          Left = 292
          Top = 69
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 2
          OnClick = cxAceptarEntradaClick
        end
        object cxButtonSelecEntradas: TcxButton
          Left = 11
          Top = 100
          Width = 142
          Height = 25
          Caption = 'Seleccionar Entradas'
          TabOrder = 4
          OnClick = cxButtonSelecEntradasClick
        end
        object dxLayoutControl6Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Almac'#233'n'
          Control = cxAlmacenes
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Fecha entrada'
          Control = cxFechaEntrada
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          Control = cxCancelarEntrada
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem12: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignVert = tavBottom
          CaptionOptions.Visible = False
          Control = cxAceptarEntrada
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl6Group_Root
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButtonSelecEntradas
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
      object PanelGridEntradas: TPanel
        Left = 0
        Top = 145
        Width = 459
        Height = 0
        Align = alClient
        TabOrder = 0
        Visible = False
        object cxGridEntradas: TcxGrid
          Left = 1
          Top = 1
          Width = 457
          Height = 206
          Align = alClient
          TabOrder = 0
          object cxGridDBEntrada: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCompEntradas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsView.ColumnAutoWidth = True
            object cxGridCodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Width = 99
            end
            object cxGridMaterial: TcxGridDBColumn
              DataBinding.FieldName = 'Material'
              Options.Editing = False
              Width = 125
            end
            object cxGridComprado: TcxGridDBColumn
              Caption = 'Cantidad Comprada'
              DataBinding.FieldName = 'CantComp'
              Options.Editing = False
              Width = 128
            end
            object cxGridEntregado: TcxGridDBColumn
              Caption = 'Cantidad Entregada'
              DataBinding.FieldName = 'CantEntregada'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = False
              Width = 120
            end
          end
          object cxGridEntradasLevel1: TcxGridLevel
            GridView = cxGridDBEntrada
          end
        end
      end
    end
    object cxTabFirma: TcxTabSheet
      Caption = 'Firmante'
      ImageIndex = 1
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 96
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbFirmante: TcxLookupComboBox
          Left = 66
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdFirmante'
          Properties.ListColumns = <
            item
              FieldName = 'NombreFirmante'
            end>
          Properties.ListSource = dsFirmas
          Style.HotTrack = False
          TabOrder = 0
          Width = 301
        end
        object dxLayoutControl7Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem16: TdxLayoutItem
          Parent = dxLayoutControl7Group_Root
          CaptionOptions.Text = 'Firmante'
          Control = cbFirmante
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 96
        Width = 459
        Height = 49
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 1
        object dxLayoutControl8: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 457
          Height = 47
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object add: TcxButton
            Left = 290
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            OnClick = addClick
          end
          object btnCancel: TcxButton
            Left = 371
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            OnClick = cxBtnCancel2Click
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem17: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = add
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem18: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = btnCancel
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
    object cxTabReporte: TcxTabSheet
      Caption = 'Reporte'
      ImageIndex = 66
      object cbProyecto: TcxLookupComboBox
        Left = 108
        Top = 57
        ParentFont = False
        Properties.KeyFieldNames = 'sNumeroOrden'
        Properties.ListColumns = <
          item
            FieldName = 'sIdFolio'
          end>
        Properties.ListSource = dsProyecto
        TabOrder = 0
        Width = 266
      end
      object cxLabel1: TcxLabel
        Left = 44
        Top = 58
        Caption = 'Proyecto:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnAddReporte: TcxButton
        Left = 283
        Top = 131
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = Click
      end
      object CancelReporte: TcxButton
        Left = 364
        Top = 131
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        OnClick = CancelReporteClick
      end
      object cxLabel2: TcxLabel
        Left = 63
        Top = 3
        Caption = 'Reporte Costo Salida de Almacen'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object cxTabPago: TcxTabSheet
      Caption = 'Pago'
      ImageIndex = 28
      object cbTiposPago: TcxComboBox
        Left = 120
        Top = 72
        ParentFont = False
        Properties.Items.Strings = (
          'PAGADO'
          'POR PAGAR '
          'PAGO EN PARCIALIDAD')
        Properties.OnChange = cbTiposPagoPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Text = 'PAGADO'
        Width = 253
      end
      object cxLabel3: TcxLabel
        Left = 51
        Top = 72
        Caption = 'Tipo Pago:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtMonto: TcxCurrencyEdit
        Left = 120
        Top = 29
        EditValue = 0.000000000000000000
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 253
      end
      object cxLabel4: TcxLabel
        Left = 57
        Top = 31
        Caption = 'Cantidad:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnCancelPago: TcxButton
        Left = 365
        Top = 139
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = btnCancelPagoClick
      end
      object btnAddPago: TcxButton
        Left = 276
        Top = 139
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = btnAddPagoClick
      end
    end
    object cxTabPersonalFirma: TcxTabSheet
      Caption = 'Personal Firmante'
      ImageIndex = 23
      object cxLabel6: TcxLabel
        Left = 49
        Top = 66
        Caption = 'Nombre:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnAcepta: TcxButton
        Left = 272
        Top = 138
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = btnAceptaClick
      end
      object btnCancela: TcxButton
        Left = 360
        Top = 138
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = btnCancelaClick
      end
      object cxPersonal: TcxTextEdit
        Left = 107
        Top = 65
        ParentFont = False
        TabOrder = 3
        Width = 328
      end
    end
    object cxTabPuestoFirma: TcxTabSheet
      Caption = 'Puesto Firmante'
      ImageIndex = 13
      object cxLabel5: TcxLabel
        Left = 65
        Top = 58
        Caption = 'Puesto:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnAceptar: TcxButton
        Left = 270
        Top = 138
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = btnAceptarClick
      end
      object btnCancelar: TcxButton
        Left = 360
        Top = 138
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object cxPuesto: TcxTextEdit
        Left = 117
        Top = 57
        ParentFont = False
        TabOrder = 3
        Width = 318
      end
    end
    object cxTabConfiguraMoneda: TcxTabSheet
      Caption = 'Configura Moneda'
      ImageIndex = 67
      object dxLayoutControl9: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGrid1: TcxGrid
          Left = 11
          Top = 11
          Width = 166
          Height = 166
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsMoneda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'Moneda'
              DataBinding.FieldName = 'FK_Moneda'
              Options.Editing = False
              Width = 120
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = 'Tipo de Cambio'
              DataBinding.FieldName = 'TipoCambio'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.DecimalPlaces = 6
              Properties.DisplayFormat = '$,0.000000;-$,0.000000'
              Properties.MaxLength = 0
              Width = 120
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object dxLayoutControl9Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem22: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabOrdenesCompra: TcxTabSheet
      Caption = 'Orden de Compra'
      ImageIndex = 60
      object dxLayoutControl10: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridCompras: TcxGrid
          Left = 11
          Top = 63
          Width = 438
          Height = 217
          TabOrder = 3
          object cxViewOrdenesCompra: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FindPanel.DisplayMode = fpdmAlways
            FindPanel.InfoText = 'Buscar PO..'
            DataController.DataSource = FrmInspeccionMateriales.dsOrdenCompra
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxColCodigoOC: TcxGridDBColumn
              Caption = 'PO'
              DataBinding.FieldName = 'Codigo'
              Options.Editing = False
              Width = 172
            end
            object cxColPlantaOC: TcxGridDBColumn
              Caption = 'Planta'
              DataBinding.FieldName = 'TipoCambio'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$0.00'
              Options.Editing = False
              Width = 111
            end
            object cxColFechaEOC: TcxGridDBColumn
              Caption = 'Fecha Recepci'#243'n'
              DataBinding.FieldName = 'dFechaEntrega'
              Options.Editing = False
              Width = 153
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxViewOrdenesCompra
          end
        end
        object cxAddOc: TcxButton
          Left = 248
          Top = 369
          Width = 88
          Height = 27
          Caption = 'Aceptar'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 6
          OnClick = cxAddOcClick
        end
        object cxCancelOc: TcxButton
          Left = 342
          Top = 369
          Width = 89
          Height = 25
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 7
          OnClick = cxCancelOcClick
        end
        object cxCodigoOC: TcxDBTextEdit
          Left = 103
          Top = 11
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = FrmInspeccionMateriales.dsInspeccionMaterial
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 0
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxFechaEOC: TcxDBDateEdit
          Left = 293
          Top = 11
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = FrmInspeccionMateriales.dsInspeccionMaterial
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 1
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxNotaOC: TcxDBMemo
          Left = 103
          Top = 286
          DataBinding.DataField = 'Observaciones'
          DataBinding.DataSource = FrmInspeccionMateriales.dsInspeccionMaterial
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Height = 50
          Width = 363
        end
        object cxFirmanteOC: TcxDBLookupComboBox
          Left = 103
          Top = 342
          DataBinding.DataField = 'IdFirma'
          DataBinding.DataSource = FrmInspeccionMateriales.dsInspeccionMaterial
          ParentFont = False
          Properties.KeyFieldNames = 'IdFirma'
          Properties.ListColumns = <
            item
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = FrmInspeccionMateriales.ds_firma
          Style.HotTrack = False
          TabOrder = 5
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object checkActivaGrid: TcxCheckBox
          Left = 11
          Top = 38
          AutoSize = False
          Caption = 'Activar Grid Para Edici'#243'n'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          Height = 19
          Width = 355
        end
        object dxLayoutControl10Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avParentManaged
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem15: TdxLayoutItem
          Parent = dxLayoutControl10Group_Root
          Control = cxGridCompras
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem19: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxAddOc
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem20: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton3'
          CaptionOptions.Visible = False
          Control = cxCancelOc
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl10Group_Root
          LayoutDirection = ldHorizontal
          Index = 5
          AutoCreated = True
        end
        object dxLayoutItem21: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Reporte No.'
          Control = cxCodigoOC
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem23: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha'
          Control = cxFechaEOC
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl10Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem24: TdxLayoutItem
          Parent = dxLayoutControl10Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Observaciones:'
          Control = cxNotaOC
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem25: TdxLayoutItem
          Parent = dxLayoutControl10Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Firmante'
          Control = cxFirmanteOC
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem32: TdxLayoutItem
          Parent = dxLayoutControl10Group_Root
          CaptionOptions.Visible = False
          Control = checkActivaGrid
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxTabSolicita: TcxTabSheet
      Caption = 'Solicitar'
      ImageIndex = 60
      object dxLayoutControl11: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 96
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cdFInicio: TcxDateEdit
          Left = 83
          Top = 40
          ParentFont = False
          Properties.AssignedValues.EditFormat = True
          Style.HotTrack = False
          TabOrder = 1
          Width = 120
        end
        object cbRecursosS: TcxLookupComboBox
          Left = 83
          Top = 11
          ParentFont = False
          Properties.KeyFieldNames = 'IdTipoRecurso'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsRecurso
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 320
        end
        object cdFRequerido: TcxDateEdit
          Left = 310
          Top = 40
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 2
          Width = 120
        end
        object dxLayoutControl11Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem27: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha Inicio'
          Control = cdFInicio
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem28: TdxLayoutItem
          Parent = dxLayoutControl11Group_Root
          CaptionOptions.Text = 'Recurso'
          Control = cbRecursosS
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem26: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Requerido'
          Control = cdFRequerido
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl11Group_Root
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 96
        Width = 459
        Height = 49
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        TabOrder = 1
        object dxLayoutControl12: TdxLayoutControl
          Left = 277
          Top = 1
          Width = 181
          Height = 47
          Align = alRight
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxButton2: TcxButton
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
          object btnSolicita: TcxButton
            Left = 11
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Aceptar'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            OnClick = btnSolicitaClick
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem30: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'cxButton2'
            CaptionOptions.Visible = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem31: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnSolicita
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
        object dxLayoutControl13: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 276
          Height = 47
          Align = alClient
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object dxLayoutGroup3: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
      end
    end
    object cxTabEstatusPO: TcxTabSheet
      Caption = 'Estatus PO'
      ImageIndex = 72
      object dxLayoutControl14: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbEstatus: TcxComboBox
          Left = 62
          Top = 11
          ParentFont = False
          Properties.Items.Strings = (
            'ABIERTA'
            'FACTURADA'
            'CANCELADO')
          Style.HotTrack = False
          TabOrder = 0
          Width = 335
        end
        object dxLayoutControl14Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem29: TdxLayoutItem
          Parent = dxLayoutControl14Group_Root
          CaptionOptions.Text = 'Estatus '
          Control = cbEstatus
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object btnECancel: TcxButton
        Left = 373
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = btnECancelClick
      end
      object btnAcept: TcxButton
        Left = 276
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = btnAceptClick
      end
    end
    object cxTabFechaEntrega: TcxTabSheet
      Caption = 'Fecha de Entrega'
      ImageIndex = 12
      object dxLayoutControl15: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object dFecha: TcxDateEdit
          Left = 114
          Top = 11
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 0
          Width = 311
        end
        object dxLayoutControl15Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem33: TdxLayoutItem
          Parent = dxLayoutControl15Group_Root
          CaptionOptions.Text = 'Fecha de Entrega'
          Control = dFecha
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object cxButton3: TcxButton
        Left = 350
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 255
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxButton4Click
      end
    end
    object cxTabCotDoc: TcxTabSheet
      Caption = 'Documento Cotizaci'#243'n'
      ImageIndex = 13
      object dxLayoutControl16: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 459
        Height = 145
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxFolioCotizacion: TcxTextEdit
          Left = 104
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
          Width = 297
        end
        object btnCotDoc: TcxButton
          Left = 216
          Top = 40
          Width = 185
          Height = 25
          Caption = 'Cargar Archivo Cotizaci'#243'n'
          OptionsImage.ImageIndex = 26
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 1
          OnClick = btnCotDocClick
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem34: TdxLayoutItem
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Folio Cotizaci'#243'n'
          Control = cxFolioCotizacion
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem35: TdxLayoutItem
          Parent = dxLayoutGroup4
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          Control = btnCotDoc
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object btnAceptarCotDoc: TcxButton
        Left = 255
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = btnAceptarCotDocClick
      end
      object btnCancelarCotDoc: TcxButton
        Left = 350
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = btnCancelarCotDocClick
      end
    end
  end
  object zRecurso: TUniQuery
    Connection = connection.Uconnection
    Left = 131
    Top = 207
  end
  object dsRecurso: TDataSource
    DataSet = zRecurso
    Left = 267
    Top = 215
  end
  object zDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 307
    Top = 255
  end
  object zSub: TUniQuery
    Connection = connection.Uconnection
    Left = 386
    Top = 262
  end
  object zFolio: TUniQuery
    Connection = connection.Uconnection
    Left = 266
    Top = 254
  end
  object uAlmacen: TUniQuery
    Connection = connection.Uconnection
    Left = 411
    Top = 263
  end
  object dsAlmacen: TDataSource
    DataSet = uAlmacen
    Left = 347
    Top = 263
  end
  object anexo_compEntradas: TUniQuery
    CachedUpdates = True
    Left = 16
    Top = 208
  end
  object dsCompEntradas: TDataSource
    DataSet = mCompEntradas
    Left = 298
    Top = 214
  end
  object zEntrada: TUniQuery
    Left = 410
    Top = 214
  end
  object mCompEntradas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 330
    Top = 214
    object mCompEntradasIdInsumo: TIntegerField
      FieldName = 'IdInsumo'
    end
    object mCompEntradasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 45
    end
    object mCompEntradasMaterial: TMemoField
      FieldName = 'Material'
      BlobType = ftMemo
    end
    object mCompEntradasCantComp: TFloatField
      FieldName = 'CantComp'
    end
    object mCompEntradasCantEntregada: TFloatField
      FieldName = 'CantEntregada'
    end
    object mCompEntradasiFolioRequisicion: TStringField
      FieldName = 'iFolioRequisicion'
      Size = 50
    end
    object mCompEntradasEstatus: TStringField
      FieldName = 'Estatus'
      Size = 10
    end
  end
  object zBitacora: TUniQuery
    Left = 66
    Top = 254
  end
  object zFirmas: TUniQuery
    Connection = connection.Uconnection
    Left = 179
    Top = 212
  end
  object dsFirmas: TDataSource
    DataSet = zFirmas
    Left = 408
    Top = 190
  end
  object zProyecto: TUniQuery
    Connection = connection.Uconnection
    Left = 82
    Top = 198
  end
  object dsProyecto: TDataSource
    DataSet = zProyecto
    Left = 114
    Top = 254
  end
  object zSalida_alm_costo: TUniQuery
    Connection = connection.Uconnection
    Left = 378
    Top = 190
  end
  object frxEntrada: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39453.273154467600000000
    ReportOptions.LastChange = 43749.775394062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Total,Final,Suma,Total1,Total2,general,'
      'salida,salBloc,epp,eppBloc,Tras,TrasBloc,Bloc:Double;'
      'valor:String;'
      '//procedure Memo45OnAfterData(Sender: TfrxComponent);'
      '//begin'
      
        '  // Total1:=<ds_Presupuesto."dCantidad">*<ds_Presupuesto."dCost' +
        'o">;'
      
        '  // Total2:=<ds_Presupuesto."CantidadEntrada">*<ds_Presupuesto.' +
        '"dCosto">;'
      '  // Total:=Total1-Total2;'
      '  // If Total = 0 then'
      '    // Final:= Total2*0.15'
      '   //else'
      '    // Final:= Total+(Total2*0.15);'
      ''
      '  // Memo45.Text:= FormatFloat('#39'$,#0.00'#39',Final);'
      '  // Bloc:=Bloc+Final;'
      '  // Memo96.Text:= FormatFloat('#39'$,#0.00'#39',Bloc);'
      '  // Suma:=Suma+Final;'
      '//end;'
      ''
      '//procedure Memo50OnAfterData(Sender: TfrxComponent);'
      '//begin'
      '  //Memo50.Text:=FormatFloat('#39'$,#0.00'#39',(salida+epp+Tras+suma));'
      '//end;'
      ''
      '//procedure Memo13OnAfterData(Sender: TfrxComponent);'
      '//begin'
      
        ' // salida:=salida+(<ds_Presupuesto."dCantidad">*<ds_Presupuesto' +
        '."dCosto">);'
      
        ' // salBloc:=salBloc+(<ds_Presupuesto."dCantidad">*<ds_Presupues' +
        'to."dCosto">);'
      '//end;'
      ''
      '//procedure Memo26OnAfterData(Sender: TfrxComponent);'
      '//begin'
      
        '// epp:=epp+(<ds_Presupuesto."dCantidad">*<ds_Presupuesto."dCost' +
        'o">);'
      
        '// eppBloc:=eppBloc+(<ds_Presupuesto."dCantidad">*<ds_Presupuest' +
        'o."dCosto">);'
      '//end;'
      ''
      '//procedure Memo88OnAfterData(Sender: TfrxComponent);'
      '//begin'
      '  // Memo88.Text:=FormatFloat('#39'$,#0.00'#39',salBloc);'
      '//end;'
      ''
      '//procedure Memo91OnAfterData(Sender: TfrxComponent);'
      '//begin'
      '  // Memo91.Text:=FormatFloat('#39'$,#0.00'#39',eppBloc);'
      '//end;'
      ''
      '//procedure Memo59OnAfterData(Sender: TfrxComponent);'
      '//begin'
      
        '  //Tras:=Tras+(<ds_Presupuesto."dCantidad">*<ds_Presupuesto."dC' +
        'osto">);'
      
        ' // TrasBloc:=TrasBloc+(<ds_Presupuesto."dCantidad">*<ds_Presupu' +
        'esto."dCosto">);'
      '//end;'
      ''
      '//procedure Memo64OnAfterData(Sender: TfrxComponent);'
      '//begin'
      ' // Memo64.Text:=FormatFloat('#39'$,#0.00'#39',TrasBloc);'
      '//end;'
      ''
      '//procedure GroupHeader4OnAfterPrint(Sender: TfrxComponent);'
      '//begin'
      '    //if not (valor =  <ds_Presupuesto."Tiporecurso">) then'
      '     // TrasBloc:=0;'
      ''
      '  //Valor:=<ds_Presupuesto."Tiporecurso">;'
      '//end;'
      ''
      ''
      ''
      '//procedure GroupHeader2OnAfterPrint(Sender: TfrxComponent);'
      '//begin'
      ' //if not (valor =  <ds_Presupuesto."Tiporecurso">) then'
      '      //eppBloc:=0;'
      ''
      ' // Valor:=<ds_Presupuesto."Tiporecurso">;'
      '//end;'
      ''
      '//procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      '//begin'
      ' // if not (valor =  <ds_Presupuesto."Tiporecurso">) then'
      '      //SalBloc:=0;'
      ''
      ' // Valor:=<ds_Presupuesto."Tiporecurso">;'
      '//end;'
      ''
      ''
      ''
      ''
      ''
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <ds_Presupuestos."TipoRecurso"> = '#39#39' then'
      '       Memo16.Text := '#39'SIN CLASIFICACI'#211'N'#39
      '    else'
      '    begin'
      
        '       Memo16.Text := '#39'Tipo de Recurso: '#39'+<ds_Presupuestos."Tipo' +
        'recurso">;'
      '    end;'
      'end;'
      ''
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <ds_Presupuestos."TipoRecurso"> = '#39#39' then'
      '     Memo16.Text := '#39'SIN CLASIFICACI'#211'N'#39';'
      '   if Engine.FinalPass then'
      
        '    Memo13.Text:= FormatFloat('#39'$,#0.00'#39',Get(<ds_Presupuestos."Ti' +
        'porecurso">));'
      'end;'
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Set(<ds_Presupuestos."TipoRecurso">,Sum(<ds_Presupuestos."Prec' +
        'ioUnitario">, MasterData6));'
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo35.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo26.Text:= FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlmac' +
        'en">);'
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo27.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlmac' +
        'en">);'
      'end;'
      ''
      'procedure Memo53OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo53.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlmac' +
        'en">);'
      'end;'
      ''
      'procedure Memo69OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo69.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlmac' +
        'en">);'
      'end;'
      ''
      'procedure Memo91OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo91.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlmac' +
        'en">);'
      'end;'
      ''
      'procedure Memo113OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo113.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlma' +
        'cen">);'
      'end;'
      ''
      'procedure Memo129OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo129.Text:=FormatFloat('#39'$,#0.00'#39',<ds_PProyectos."CostoAlma' +
        'cen">);'
      'end;'
      ''
      'procedure Memo87OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=<ds_PProyectos."dCantidad">*<ds_PProyectos."CostoAlmac' +
        'en">;'
      '  Memo87.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo19.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo49.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo65OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo65.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo109OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo109.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      'procedure Memo125OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Total1:=(<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadE' +
        'ntrada">)*<ds_PProyectos."CostoAlmacen">;'
      '  Memo125.Text:= FormatFloat('#39'$,#0.00'#39',Total1);'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'ReporteOnStartReport'
    OnStopReport = 'ReporteOnStopReport'
    OnReportPrint = 'no '
    Left = 16
    Top = 250
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
      end
      item
        DataSet = frmrepositorio.ds_Presupuestos
        DataSetName = 'ds_Presupuestos'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' prueba'
        Value = Null
      end
      item
        Name = 'sumna'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo2: TfrxMemoView
          Left = 188.976500000000000000
          Top = 20.338590000000000000
          Width = 566.929500000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE PROYECTO: [ds_Presupuestos."Proyecto"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 869.291338582677000000
          Top = 19.456710000000000000
          Width = 109.606299210000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA: [DATE]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 7.559059999999999000
          Width = 172.196970000000000000
          Height = 69.590600000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader6: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 173.858380000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader6OnAfterPrint'
        OnBeforePrint = 'GroupHeader6OnBeforePrint'
        Condition = 'ds_Presupuestos."TipoRecurso"'
        object Memo16: TfrxMemoView
          Top = 3.779529999999994000
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Tipo de Recurso: [ds_Presupuestos."TipoRecurso"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Top = 22.677179999999990000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 75.590600000000000000
          Top = 22.677179999999990000
          Width = 566.929500000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 869.291900000000000000
          Top = 22.677179999999990000
          Width = 109.606370000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Monto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 755.906000000000000000
          Top = 22.677179999999990000
          Width = 113.385824330000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 642.520100000000000000
          Top = 22.677179999999990000
          Width = 113.385824330000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Medida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 869.291900000000100000
          Top = 3.779529999999994000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo50OnAfterData'
          OnBeforePrint = 'Memo13OnBeforePrint'
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_Presupuestos
        DataSetName = 'ds_Presupuestos'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo98: TfrxMemoView
          Width = 75.590536540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Codigo'
          DataSet = frmrepositorio.ds_Presupuestos
          DataSetName = 'ds_Presupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_Presupuestos."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 75.590600000000000000
          Width = 566.929211970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frmrepositorio.ds_Presupuestos
          DataSetName = 'ds_Presupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_Presupuestos."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 755.906000000000000000
          Width = 113.385824330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frmrepositorio.ds_Presupuestos
          DataSetName = 'ds_Presupuestos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_Presupuestos."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385824330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'UMedida'
          DataSet = frmrepositorio.ds_Presupuestos
          DataSetName = 'ds_Presupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_Presupuestos."UMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 869.291900000000100000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo13OnAfterData'
          StretchMode = smMaxHeight
          DataField = 'PrecioUnitario'
          DataSet = frmrepositorio.ds_Presupuestos
          DataSetName = 'ds_Presupuestos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ds_Presupuestos."PrecioUnitario"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Width = 980.410081999999900000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo11: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Tipo de Recurso: [ds_Presupuestos."TipoRecurso"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 869.291900000000100000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'Memo12OnBeforePrint'
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ds_Presupuestos."PrecioUnitario">,MasterData6)]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 336.378170000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo18: TfrxMemoView
          Top = 18.897650000000000000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA DE MATERIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 415.748300000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=5'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo32: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo36: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 514.016080000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 18.897650000000000000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA ALMACEN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 593.386210000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=8'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 691.653990000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo37: TfrxMemoView
          Top = 18.897650000000000000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA (E.P.P.)')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 771.024120000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=4'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo45: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo49OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo50: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo53OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 869.291900000000100000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo54: TfrxMemoView
          Top = 18.897650000000000000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA POR DA'#209'O')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 948.662030000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=9'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo62: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo65OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo66: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo69OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 1046.929810000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo70: TfrxMemoView
          Top = 18.897650000000110000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000110000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000110000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA (SERVICIO)')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000110000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000110000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000110000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000110000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1126.299940000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=10'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo82: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo87OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo88: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo91OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader7: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 1224.567720000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo92: TfrxMemoView
          Top = 18.897650000000110000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000110000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897649999999890000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA (TRASPASO-RESGUARDO)')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000110000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000110000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000110000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000110000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1303.937850000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=14'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo106: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo109OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo110: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo113OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader8: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 1402.205630000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'GroupHeader3OnAfterPrint'
        Condition = 'ds_PProyectos."Tipomovimiento"'
        KeepTogether = True
        Stretched = True
        object Memo114: TfrxMemoView
          Top = 18.897650000000110000
          Width = 396.850361970000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N DEL RECURSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 699.213050000000000000
          Top = 18.897650000000110000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD ENTRADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 869.291900000000000000
          Top = 18.897650000000110000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA (TRASPASO-EMBARQUE)')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000110000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000110000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000110000
          Width = 94.488174330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO SALIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000110000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO ALMACEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData8: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1481.575760000000000000
        Width = 980.410081999999900000
        AllowSplit = True
        DataSet = frmrepositorio.ds_PProyectos
        DataSetName = 'ds_PProyectos'
        Filter = '<ds_PProyectos."IdTipo">=2'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo122: TfrxMemoView
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dFechaSalida"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 98.267692130000000000
          Width = 298.582581970000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ds_PProyectos."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 491.338558270000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."Tipomovimiento"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 869.291338580000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo125OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = '.'
              ThousandSeparator = ','
              FormatStr = '$#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo126: TfrxMemoView
          Left = 608.503902830000000000
          Width = 90.708651650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488174330000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."sFolioSalida"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 699.213050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_PProyectos."CantidadEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 774.803650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo129OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 457.323130000000000000
        Width = 980.410081999999900000
        object Memo47: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData3)]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 634.961040000000000000
        Width = 980.410081999999900000
        object Memo133: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupFooter4: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 812.598949999999900000
        Width = 980.410081999999900000
        object Memo137: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData2)]')
          ParentFont = False
        end
      end
      object GroupFooter5: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 990.236860000000000000
        Width = 980.410081999999900000
        object Memo141: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData4)]')
          ParentFont = False
        end
      end
      object GroupFooter6: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 1167.874770000000000000
        Width = 980.410081999999900000
        object Memo145: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<ds_PProyectos."dCantidad">*<ds_PProyectos."CostoAlmacen">,' +
              'MasterData5)]')
          ParentFont = False
        end
      end
      object GroupFooter7: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 1345.512680000000000000
        Width = 980.410081999999900000
        object Memo149: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData7)]')
          ParentFont = False
        end
      end
      object GroupFooter8: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015748030000000000
        Top = 1523.150590000000000000
        Width = 980.410081999999900000
        object Memo153: TfrxMemoView
          Width = 869.291900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL DEL MOVIMIENTO')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 869.291900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.ds_Presupuesto
          DataSetName = 'ds_Presupuesto'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '$#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<ds_PProyectos."dCantidad">-<ds_PProyectos."CantidadEntrad' +
              'a">)*<ds_PProyectos."CostoAlmacen">,MasterData8)]')
          ParentFont = False
        end
      end
    end
  end
  object zPagos: TUniQuery
    Connection = connection.Uconnection
    Left = 226
    Top = 206
  end
  object dsMoneda: TDataSource
    DataSet = zMoneda
    Left = 170
    Top = 254
  end
  object zMoneda: TUniQuery
    Connection = connection.Uconnection
    Left = 224
    Top = 248
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 411
    Top = 69
  end
end
