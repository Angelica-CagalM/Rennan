object FrmGuardias: TFrmGuardias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Personal Guardia'
  ClientHeight = 533
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 533
    Align = alClient
    TabOrder = 0
    object PanelD: TPanel
      Left = 1
      Top = 1
      Width = 1099
      Height = 35
      Align = alTop
      TabOrder = 0
      inline frmBarraH11: TfrmBarraH1
        Left = 536
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        AutoSize = True
        TabOrder = 0
        ExplicitLeft = 536
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Height = 33
          Align = alRight
          ExplicitWidth = 562
          ExplicitHeight = 33
          inherited btnAdd: TcxButton
            Height = 31
            Enabled = False
            ExplicitLeft = 1
            ExplicitHeight = 31
          end
          inherited btnEdit: TcxButton
            Height = 31
            Enabled = False
            ExplicitLeft = 81
            ExplicitHeight = 31
          end
          inherited btnDelete: TcxButton
            Height = 31
            Enabled = False
            ExplicitLeft = 161
            ExplicitHeight = 31
          end
          inherited btnPrinter: TcxButton
            Height = 31
            Hint = 'Imprimir'
            OnClick = frmBarraH11btnPrinterClick
            ExplicitLeft = 401
            ExplicitHeight = 31
          end
          inherited btnDetalle: TcxButton
            Height = 31
            Hint = 'Ir a Detalles'
            OnClick = btnDetalleClick
            ExplicitLeft = 481
            ExplicitHeight = 31
          end
          inherited btnRefresh: TcxButton
            Height = 31
            Hint = 'Actualizar Registros'
            OnClick = btnRefreshClick
            ExplicitLeft = 241
            ExplicitHeight = 31
          end
          inherited btnExporta: TcxButton
            Height = 31
            ExplicitLeft = 321
            ExplicitHeight = 31
          end
        end
      end
      object cxLeyenda: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Tabla...Agregando Datos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
      object cxBajar: TcxButton
        Left = 278
        Top = 1
        Width = 85
        Height = 33
        Hint = 'Eliminar registro (CTRL + D)'
        Align = alRight
        Caption = 'Bajar'
        OptionsImage.ImageIndex = 46
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxBajarClick
      end
      object btnContratar: TcxButton
        Left = 363
        Top = 1
        Width = 85
        Height = 33
        Hint = 'Eliminar registro (CTRL + D)'
        Align = alRight
        Caption = 'Contratar'
        OptionsImage.ImageIndex = 54
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnContratarClick
      end
      object btnCancelarBajada: TcxButton
        Left = 156
        Top = 1
        Width = 122
        Height = 33
        Align = alRight
        Caption = 'Cancelar Bajada'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarBajadaClick
      end
      object cxNomina: TcxButton
        Left = 448
        Top = 1
        Width = 88
        Height = 33
        Hint = 'Imprimir'
        Align = alRight
        Caption = 'Nomina'
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = frmrepositorio.IconosBarra
        TabOrder = 5
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxNominaClick
      end
    end
    object PanelDetalle: TPanel
      Left = 520
      Top = 36
      Width = 580
      Height = 496
      Align = alRight
      TabOrder = 1
      object cxGridDetalle: TcxGrid
        Left = 1
        Top = 31
        Width = 578
        Height = 297
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxViewDetallePersonal: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] Empleado(s)'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellClick = cxViewDetallePersonalCellClick
          OnCellDblClick = cxViewDetallePersonalCellDblClick
          DataController.DataSource = dsFiltroEmpleado
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object ColCodigo: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoPersonal'
            Options.Editing = False
            Width = 87
          end
          object ColNombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Width = 244
          end
          object ColInicioDetalle: TcxGridDBColumn
            DataBinding.FieldName = 'FechaSubida'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.AssignedValues.EditFormat = True
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Options.Editing = False
            Width = 82
          end
          object ColFinDetalle: TcxGridDBColumn
            DataBinding.FieldName = 'FechaBajada'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Options.Editing = False
            Width = 74
          end
          object colContratado: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'Contrato'
            Width = 77
          end
        end
        object cxGridDetalleLevel1: TcxGridLevel
          GridView = cxViewDetallePersonal
        end
      end
      object PanelCentro: TPanel
        Left = 1
        Top = 328
        Width = 578
        Height = 126
        Align = alBottom
        TabOrder = 1
        object dxLayoutControl1: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 570
          Height = 118
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cbEmpleados: TcxDBLookupComboBox
            Left = 96
            Top = 12
            DataBinding.DataField = 'IdPersonal'
            DataBinding.DataSource = dsFiltroEmpleado
            ParentFont = False
            Properties.KeyFieldNames = 'IdPersonal'
            Properties.ListColumns = <
              item
                FieldName = 'NombreCompleto'
              end>
            Properties.ListSource = dsEmpleados
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 345
          end
          object cbGuardias: TcxDBLookupComboBox
            Left = 96
            Top = 42
            DataBinding.DataField = 'IdGuardia'
            DataBinding.DataSource = dsFiltroEmpleado
            ParentFont = False
            Properties.KeyFieldNames = 'IdGuardiaDetalle'
            Properties.ListColumns = <
              item
                FieldName = 'Guardia'
              end>
            Properties.ListSource = dsTraerGuardias
            Properties.OnChange = cbGuardiasPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 321
          end
          object cxFechaSubida: TcxDateEdit
            Left = 456
            Top = 12
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 102
          end
          object cxActivo: TdxDBToggleSwitch
            Left = 446
            Top = 72
            Caption = 'Activo'
            DataBinding.DataField = 'Activo'
            DataBinding.DataSource = dsFiltroEmpleado
            ParentFont = False
            Properties.StateIndicator.Kind = sikText
            Properties.StateIndicator.OffText = 'No'
            Properties.StateIndicator.OnText = 'Si'
            Properties.StateIndicator.Position = sipInside
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avParentManaged
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Empleado'
            Control = cbEmpleados
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Traer Guardia'
            Control = cbGuardias
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Fecha Subida'
            Control = cxFechaSubida
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'cxImgActivo'
            CaptionOptions.Visible = False
            Control = cxActivo
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object PanelTop: TPanel
        Left = 1
        Top = 1
        Width = 578
        Height = 30
        Align = alTop
        TabOrder = 2
        object cxNuevoDetalle: TcxButton
          Tag = 10
          Left = 220
          Top = 1
          Width = 81
          Height = 28
          Hint = 'Nuevo Registro'
          Align = alRight
          Caption = 'Nuevo'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxNuevoDetalleClick
        end
        object cxLeyenda2: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          Caption = 'Detalle Guardias'
          ParentColor = False
          ParentFont = False
          Style.Color = clNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clHighlight
          Style.Font.Height = -19
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHighlight
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxEditaEliminar: TcxButton
          Tag = 11
          Left = 496
          Top = 1
          Width = 81
          Height = 28
          Hint = 'Seleccion un o mas registros para Eliminar'
          Align = alRight
          Caption = 'Eliminar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxEditaEliminarClick
        end
        object cxMasivo: TcxButton
          Left = 381
          Top = 1
          Width = 115
          Height = 28
          Align = alRight
          Caption = 'Agregar Masivo'
          OptionsImage.ImageIndex = 21
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxMasivoClick
        end
        object cxEditar: TcxButton
          Tag = 10
          Left = 301
          Top = 1
          Width = 80
          Height = 28
          Hint = 'Nuevo Registro'
          Align = alRight
          Caption = 'Editar'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxEditarClick
        end
      end
      object PanelDown: TPanel
        Left = 1
        Top = 454
        Width = 578
        Height = 41
        Align = alBottom
        TabOrder = 3
        DesignSize = (
          578
          41)
        object cxCancelarDetalle: TcxButton
          Left = 483
          Top = 6
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxCancelarDetalleClick
        end
        object cxGuardarDetalle: TcxButton
          Left = 390
          Top = 6
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Guardar'
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxGuardarDetalleClick
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 512
      Top = 36
      Width = 8
      Height = 496
      AlignSplitter = salRight
    end
    object dGuardias: TcxGrid
      Left = 1
      Top = 36
      Width = 511
      Height = 496
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object BView_filtro: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] Guardia(s)'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellClick = BView_filtroCellClick
        DataController.DataSource = dsGuardiasDetalle
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = BView_filtroStylesGetContentStyle
        object ColGuardia: TcxGridDBColumn
          DataBinding.FieldName = 'Guardia'
          Width = 90
        end
        object ColCodigoG: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 45
        end
        object ColGuardiaNum: TcxGridDBColumn
          DataBinding.FieldName = 'GuardiaNum'
          Width = 88
        end
        object ColFechaI: TcxGridDBColumn
          Caption = 'Periodo Inicial'
          DataBinding.FieldName = 'FechaInicio'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 58
        end
        object ColFechaF: TcxGridDBColumn
          Caption = 'Periodo Final'
          DataBinding.FieldName = 'FechaFinal'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 53
        end
        object ColProyecto: TcxGridDBColumn
          DataBinding.FieldName = 'Proyecto'
          Width = 48
        end
        object colPlataforma: TcxGridDBColumn
          DataBinding.FieldName = 'Plataforma'
          Width = 50
        end
        object ColPernocta: TcxGridDBColumn
          DataBinding.FieldName = 'Pernocta'
          Width = 47
        end
        object ColTranscurrido: TcxGridDBColumn
          Caption = 'Dias Transcurridos'
          DataBinding.FieldName = 'DiasT'
          Width = 50
        end
        object ColRestantes: TcxGridDBColumn
          Caption = 'Dias por transcurrir'
          DataBinding.FieldName = 'DiasP'
          Width = 47
        end
        object ColAdicionales: TcxGridDBColumn
          Caption = 'Dias Adic.'
          DataBinding.FieldName = 'DiasAdic'
          Width = 49
        end
        object colEstado: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
        end
      end
      object dGuardiasLevel1: TcxGridLevel
        GridView = BView_filtro
      end
    end
  end
  object dsGuardias: TDataSource
    DataSet = zGuardias
    Left = 65
    Top = 100
  end
  object zGuardiasDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 281
    Top = 156
  end
  object dsGuardiasDetalle: TDataSource
    DataSet = zGuardiasDetalle
    Left = 289
    Top = 108
  end
  object zGuardias: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT g.*,'
      
        '(SELECT Embarcacion FROM master_embarcaciones as e WHERE e.IdEmb' +
        'arcacion = g.IdEmbarcacion) as Embarcacion'
      'FROM rh_guardias as g')
    Left = 17
    Top = 92
  end
  object zEmpleados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT IdPersonal,'
      'concat(Nombre,'#39' '#39',APaterno,'#39' '#39',AMaterno) as Nombre'
      'FROM master_personal')
    Left = 561
    Top = 180
  end
  object dsEmpleados: TDataSource
    DataSet = zEmpleados
    Left = 561
    Top = 124
  end
  object zFiltroEmpleado: TUniQuery
    Connection = connection.Uconnection
    Left = 473
    Top = 172
  end
  object dsFiltroEmpleado: TDataSource
    DataSet = zFiltroEmpleado
    Left = 489
    Top = 124
  end
  object TraerGuardias: TUniQuery
    Connection = connection.Uconnection
    Left = 338
    Top = 228
  end
  object dsTraerGuardias: TDataSource
    DataSet = TraerGuardias
    Left = 418
    Top = 236
  end
  object frxReportCR: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43732.708598541660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxReportCRGetValue
    OnReportPrint = 'no '
    Left = 656
    Top = 132
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clNavy
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 869.291900000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
        RowCount = 0
        Stretched = True
        object Rich1: TfrxRichView
          Align = baCenter
          Left = 64.063231215000030000
          Top = 7.559060000000003000
          Width = 612.283464570000000000
          Height = 865.512370000000000000
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
            657720526F6D616E3B7D7B5C66315C666E696C5C666368617273657430205469
            6D6573204E657720526F6D616E3B7D7B5C66325C666E696C5C66707271325C66
            63686172736574302054696D6573204E657720526F6D616E3B7D7D0D0A7B5C63
            6F6C6F7274626C203B5C726564305C677265656E305C626C7565303B5C726564
            3235355C677265656E305C626C7565303B7D0D0A7B5C7374796C657368656574
            7B204E6F726D616C3B7D7B5C73312068656164696E6720313B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E31373133347D5C
            766965776B696E64345C756331200D0A5C706172645C6E6F77696463746C7061
            725C71635C625C66305C667332385C6C616E673130333420434F4E545241544F
            20504F52205449454D504F2044455445524D494E41444F5C7061720D0A5C7061
            720D0A0D0A5C706172645C6E6F77696463746C7061725C716A5C62305C667332
            305C7061720D0A5C7061720D0A5C663120436F6E747261746F20696E64697669
            6475616C2064652074726162616A6F20706F72206F6272612079206F62726120
            64657465726D696E616461207175652063656C656272616E20706F7220756E61
            2070617274652C5C622020434F4D50415C2764315C27636441204445204D554C
            5449534552564943494F532050415241204D414E54454E494D49454E544F2049
            4E54454752414C45532C20532E412E20444520432E562E2C205C623020726570
            726573656E7461646120706F7220656C205C6220432E20496C69616E61206465
            6C204361726D656E204372757A20476F6D657A5C6230202C20636F6D6F207061
            74725C2766336E207920706F72206C61206F747261206C612020432E205C6366
            315C756C5C625C6C616E6732303538205B6672784442436F6E747261746F2E22
            4E6F6D627265225D5C6366325C756C6E6F6E655C6C616E673130333420205C63
            66305C623020636F6D6F2074726162616A61646F72207920717569656E657320
            706F722072617A5C2766336E2064652062726576656461642073652064656E6F
            6D696E61725C2765316E20656E20656C20637572736F2064656C207072657365
            6E746520636F6E747261746F205C625C6C64626C71756F746520434F4D50415C
            2764315C276364415C7264626C71756F74655C6230202079205C625C6C64626C
            71756F74652054524142414A41444F525C7264626C71756F74655C6230202C20
            726573706563746976616D656E74652C207920656C207175652073652073756A
            6574616E2061206C6173207369677569656E746573206465636C61726163696F
            6E6573207920636C5C2765317573756C61733A5C625C7061720D0A5C62305C66
            7332335C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C71635C
            625C66733232204445434C41524143494F4E45535C7061720D0A5C667332305C
            7061720D0A5C7061720D0A0D0A5C706172645C6E6F77696463746C7061725C71
            6A205052494D4552415C6230202E2D204C61205C6220434F4D50415C2764315C
            276364415C62302020657320756E6120736F636965646164206D657263616E74
            696C2C206465626964616D656E746520636F6E73746974756964612064652063
            6F6E666F726D6964616420636F6E206C6173206C65796573206D65786963616E
            61732C20717565207469656E6520656E747265206F7472617320616374697669
            6461646573206C6120646520534552564943494F532044453A205C62204D414E
            54454E494D49454E544F2C20494E47454E4945525C276363412C204445534152
            524F4C4C4F2C20494D504C454D454E544143494F4E2C20494E5354414C414349
            4F4E2C20504C414E454143495C2764324E2C2050524F44554343494F4E204445
            2053495354454D41532044452052454652494745524143494F4E2C2041495245
            2041434F4E444943494F4E41444F2C2053495354454D415320484944525C2763
            30554C49434F532C204E45554D5C2763305449434F532C20454C5C2763384354
            5249434F532C20454C454354525C2764324E49434F532C20454C454354524F4D
            45435C2763304E49434F532C204D45435C2763304E49434F5320504152412049
            4E5354414C4143494F4E455320504554524F4C455241532C20434F4D45524349
            4F532C20484F54454C45532C2045534355454C41532C20484F53504954414C45
            53204520494E445553545249415320454E2047454E4552414C2E5C7061720D0A
            5C756C5C62305C667332335C7061720D0A5C756C6E6F6E655C625C6673313820
            534547554E44412E2D5C623020204C6120434F4D50415C2764315C2763644120
            6465636C6172612020717565206C6120636175736120717565206461206F7269
            67656E2061206573746520636F6E747261746F2065732064653A205245515545
            52494D49454E544F20444520504552534F4E414C20454E20454C204152454120
            4F50455241544956413A20656E2065737065635C2765646669636F20616C2043
            6F6E747261746F5C6220204E6F2E20363438323338383036205C623020726566
            6572656E7465206120205C625C6C64626C71756F746520536572766963696F20
            496E74656772616C2064652054726174616D69656E746F206465204167756173
            20526573696475616C657320656E206C617320496E7374616C6163696F6E6573
            204D6172696E617320646520502E452E505C7264626C71756F7465202E205C62
            3020436F6E20766967656E636961205C62203133206465204A756E696F206465
            203230313820616C2033312064652044696369656D6272652064652032303231
            5C62302020646963686F20636F6E747261746F20706F64725C27653120736572
            2070726F72726F6761646F20706F722070617274652064656C20636C69656E74
            652C20706F72206C6F20207175652020736520636F6E7472617461206C6F7320
            736572766963696F732064656C2054524142414A41444F5220612066696E2064
            652073617469736661636572206C61206E65636573696461642020656E20666F
            726D61207472616E7369746F7269612079206576656E7475616C206166656374
            612E5C756C5C667332335C7061720D0A5C756C6E6F6E655C667332325C706172
            0D0A5C625C6673313820544552434552415C6230202E2D20456C20435C62202E
            205C6C616E6732303538205B6672784442436F6E747261746F2E224E6F6D6272
            65225D5C6C616E673130333420205C6230206465636C61726120736572206465
            206E6163696F6E616C6964616420205C625C6C616E6732303538204D65786963
            616E615C6366325C6C616E67313033342020205C6366305C6230206465205C62
            5C6C616E6732303538205B6672784442436F6E747261746F2E2245646164225D
            5C62305C6C616E67313033342020615C2766316F7320646520656461642C2065
            737461646F20636976696C5C6220205C6C616E6732303538205B667278444243
            6F6E747261746F2E2245737461646F436976696C225D205C6C616E6731303334
            202C205C6230205246435C6220205C6C616E6732303538205B6672784442436F
            6E747261746F2E22726663225D205C62305C6C616E6731303334204355525020
            5C625C6C616E6732303538205B6672784442436F6E747261746F2E2243757270
            225D205C62305C6C616E673130333420636F6E20646F6D6963696C696F20656E
            5C6220205C6C616E6732303538205B6672784442436F6E747261746F2E22446F
            6D6963696C696F225D202C205B6672784442436F6E747261746F2E2243697564
            6164225D202C205B6672784442436F6E747261746F2E2245737461646F225D20
            5C62305C6C616E6731303334202C20207175652073655C276631616C61207061
            7261206F5C276564722020746F646120636C617365206465206E6F7469666963
            6163696F6E65732C20656E206C6F7320745C276539726D696E6F73206465206C
            61204C6579204665646572616C2064656C2054726162616A6F2C20656C207072
            6573656E746520636F6E747261746F2079206C61732072656C6163696F6E6573
            20717565207365206465726976656E2064656C206D69736D6F2C206F626C6967
            5C2765316E646F736520612070726F706F7263696F6E6172206375616C717569
            65722063616D62696F20646520646F6D6963696C696F20792C207369206E6F20
            6C6F20686963696572652C2061636570746120717565207365725C2765316E20
            765C2765316C69646173206C617320717565207365207072616374697175656E
            20656E20656C20616E7465732073655C276631616C61646F2E5C667332325C70
            61720D0A5C667331385C7061720D0A5C62204355415254413A5C62302020456C
            20432E205C625C6C616E6732303538205B6672784462436F6E747261746F2E22
            4E6F6D627265225D5C6C616E673130333420205C6230206861206D616E696665
            737461646F2061206C6120434F4D50415C2764315C2763644120657374617220
            656E20646973706F6E6962696C696461642064652073657220636F6E74726174
            61646F20706F72206F6272612064657465726D696E6164612061207175652073
            6520726566697269657265206C6120736567756E6461206465206C6173206465
            636C61726163696F6E65732C2061735C27656420636F6D6F2074656E6572206C
            6F7320636F6E6F63696D69656E746F7320792063617061636964616420737566
            696369656E74652C2061735C27656420636F6D6F206C612070725C2765316374
            69636120792061707469747564206E6563657361726961732070617261206465
            73656D70655C276631617220656C2070756573746F206465205C625C6C616E67
            32303538205B6672784462436F6E747261746F2E2250756573746F225D5C6366
            325C6C616E673130333420205C6366305C623020656E20656C2070726F796563
            746F5C6220205C623020205C625C6C64626C71756F746520536572766963696F
            20496E74656772616C2064652054726174616D69656E746F2064652041677561
            7320526573696475616C657320656E206C617320496E7374616C6163696F6E65
            73204D6172696E617320646520502E452E505C7264626C71756F746520205C62
            302061207061727469722064656C205C62203133206465204A756E696F206465
            203230313820616C2033312064652044696369656D6272652064652032303231
            2C5C623020206D6F7469766F20706F7220656C206375616C206C617320706172
            7465732068616E2063656C65627261646F20656C2070726573656E746520636F
            6E747261746F2071756520736520636F6E7469656E6520616C2074656E6F7220
            6465206C6173207369677569656E7465733A5C7061720D0A5C6366315C625C66
            7332325C6C616E67323035385C7061720D0A0D0A5C706172645C6B6565706E5C
            6E6F77696463746C7061725C73315C71635C6366305C6C616E67313033342043
            4C5C2763315553554C41535C7061720D0A0D0A5C706172645C6E6F7769646374
            6C7061725C716A5C62305C667332305C7061720D0A5C7061720D0A5C62205052
            494D4552415C6230202E2D205C756C204F424C49474143494F4E45535C756C6E
            6F6E65202E205C6220454C5C623020205C622054524142414A41444F525C6230
            20207365206F626C696761206120707265737461722073757320736572766963
            696F7320706572736F6E616C65732061206C61205C6220434F4D50415C276431
            5C276364415C62302020656E20656C20646F6D6963696C696F206465205C2765
            397374612C207562696361646F20656E2043414C4C45203338204E6F2E203632
            5C62202C205C623020454E5452452020313920592032352C20436F6C2E204375
            617568745C2765396D6F632C204369756461642064656C204361726D656E2C20
            43616D70656368652C20432E502E2032343137305C6220205C62305C27663220
            656E20656C206C756761722071756520706172612074616C2065666563746F20
            7365206C6520696E64697175652C20636F6D6F5C636632203A205C6366305C62
            5C667331385C6C616E6732303538205B6672784462436F6E747261746F2E2250
            756573746F225D5C6366325C6C616E673130333420205C6366305C623020656E
            20656C2070726F796563746F3A5C6220205C6C64626C71756F74652053657276
            6963696F20496E74656772616C2064652054726174616D69656E746F20646520
            416775617320526573696475616C657320656E206C617320496E7374616C6163
            696F6E6573204D6172696E617320646520502E452E505C7264626C71756F7465
            202E205C62305C667332302074726162616A6F207175652064656265725C2765
            3120646573656D70655C2766316172206465736172726F6C6C616E646F207369
            656D707265207375206D61796F72206163746976696461642079206566696369
            656E6369612E204C61206F6375706163695C2766336E207072696E636970616C
            2064656C205C622054524142414A41444F525C623020207365725C2765312020
            707265737461722073757320736572766963696F7320636F6D6F3A5C6220205C
            667331385C6C616E6732303538205B6672784462436F6E747261746F2E225075
            6573746F225D5C6366325C6C616E673130333420205C6366305C62305C667332
            30207175656461206269656E20656E74656E6469646F20717565206573746120
            656E756D65726163695C2766336E206465206C61626F72657320657320656E75
            6E636961746976612079206E6F206C696D697461746976612C20746F64612076
            657A2071756520656C205C622054524142414A41444F525C623020207469656E
            65206F626C69676163695C2766336E206465206174656E6465722074616D6269
            5C2765396E206375616C7175696572206F74726F2074726162616A6F20616E65
            786F206F20636F6E65786F20636F6E207375206F626C69676163695C2766336E
            207072696E636970616C2C206F206375616C6573717569657261206F74726120
            6163746976696461642C207369656D7072652079206375616E646F207365206C
            6520726573706574652073752073616C6172696F2C2061756E206375616E646F
            206163636964656E74616C6D656E746520686179612064652073657220646573
            656D70655C27663161646F2066756572612064656C206C756761722064652074
            726162616A6F2E205C6220454C2054524142414A41444F52205C623020616361
            7461725C276531207369656D70726520656E20746F646F732073757320616374
            6F732061206C6173205C2766337264656E65732071756520737573206A656665
            73206C652064656E2C206C617320646973706F736963696F6E65732064656C20
            5265676C616D656E746F20496E746572696F722064652054726162616A6F2064
            65206C61205C6220434F4D50415C2764315C276364415C62302020717565206C
            65207365612061706C696361626C652C2079206C61732064656D5C2765317320
            646973706F736963696F6E65732079205C2766337264656E657320717565205C
            276539737461206C652064696374652E5C7061720D0A5C7061720D0A5C706172
            0D0A5C7061720D0A5C7061720D0A5C625C7061720D0A5C7061720D0A5C706172
            0D0A534547554E44415C6230202E2D205C756C204455524143495C2764334E20
            44454C20434F4E545241544F5C756C6E6F6E65202E20456C2070726573656E74
            6520636F6E747261746F207365725C27653120706F72205C756C20205C62204F
            4252412059205449454D504F2044455445524D494E4144412C205C756C6E6F6E
            655C62305C6673313820656E20656C2070726F796563746F3A5C6220205C6C64
            626C71756F746520536572766963696F20496E74656772616C20646520547261
            74616D69656E746F20646520416775617320526573696475616C657320656E20
            6C617320496E7374616C6163696F6E6573204D6172696E617320646520502E45
            2E505C7264626C71756F7465202E205C62302061207061727469722064656C20
            5C62203133206465204A756E696F206465203230313820616C20333120646520
            44696369656D62726520646520323032312C205C62305C6673323020616C2076
            656E63696D69656E746F206465206375796F20745C276539726D696E6F20636F
            6E636C7569725C27653120746F64612072656C6163695C2766336E2064657269
            766164612064656C206D69736D6F2073696E206E696E67756E6120726573706F
            6E736162696C69646164207061726120656C20706174725C2766336E5C667331
            38202E5C7061720D0A5C7061720D0A5C7061720D0A5C66733230204C61732070
            617274657320636F6E7669656E656E20656E20717565207061726120656C2063
            61736F20646520717565205C6C64626C71756F746520454C2054524142414A41
            444F525C7264626C71756F7465202064656D756573747265206C612066616C74
            61206465206361706163696461642C20617074697475646573206F206C617320
            666163756C7461646573207175652064696A6F2074656E65722C205C6C64626C
            71756F746520454C20504154525C2764334E5C7264626C71756F74652020706F
            64725C2765312072657363696E64697220737520636F6E747261746F20646520
            74726162616A6F2073696E206E696E67756E6120726573706F6E736162696C69
            6461642064652073752070617274652C20656E20745C276539726D696E6F7320
            6465206C6F2064697370756573746F20706F7220656C206E756D6572616C2034
            37207920323038206465206C61206C6579206665646572616C2064656C207472
            6162616A6F20656E207669676F722C205C7061720D0A5C7061720D0A5C706172
            0D0A5C6220544552434552415C6230202E2D205C756C204A4F524E4144412044
            452054524142414A4F5C756C6E6F6E65202E20456C20686F726172696F206465
            206C61626F7265732064656C205C622054524142414A41444F525C6230202020
            53552041504F594F20504152412044455445524D494E4152205355204A4F524E
            4144412044452054524142414A4F2044454249444F2041205155452053455241
            20454E20454C204152454120444520504C415441464F524D41535C7061720D0A
            5C7061720D0A4C61206A6F726E6164612064652074726162616A6F2061207175
            65207365207265666965726520656C20705C276531727261666F20616E746572
            696F72206F626564656365206120717565207365207469656E65207265706172
            74696461206C61206A6F726E61646120656E206C6F7320745C276539726D696E
            6F732064656C204172745C27656463756C6F203539206465206C61204C657920
            4665646572616C2064656C2054726162616A6F2E5C7061720D0A5C7061720D0A
            4C617320636F6E646963696F6E65732064652074726162616A6F20656E206F62
            7261207175656461725C2765316E2065737461626C65636964617320656E2065
            6C205265676C616D656E746F20496E746572696F722064652054726162616A6F
            20636F6E73696465725C2765316E646F7365205C27653973746520756E20616E
            65786F2061206C612070726573656E746520636C5C2765317573756C612E5C70
            61720D0A5C7061720D0A456C205C62205452414A41444F525C62302020666163
            756C746120657870726573616D656E74652061206C61205C6220434F4D50415C
            2764315C276364415C6230202070617261206D6F6469666963617220656C2068
            6F726172696F2064652074726162616A6F20616E746572696F722C2064652061
            63756572646F20636F6E206C6173206E65636573696461646573206465206C61
            206D69736D612E5C7061720D0A5C625C7061720D0A5C7061720D0A4355415254
            415C6230202E2D205C756C2053414C4152494F5C756C6E6F6E65202E20454C20
            5C622054524142414A41444F525C6230202070657263696269725C2765312063
            6F6D6F207375656C646F20706F72206C612070726573746163695C2766336E20
            6465206C6F7320736572766963696F7320612071756520736520726566696572
            65206573746520636F6E747261746F2C206C612063616E746964616420646520
            5C6366315C756C5C625C6C616E67323035382024205B6672784442436F6E7472
            61746F2E22496D706F72746553616C6172696F225D20285B5355454C444F5F4C
            455452415D295C6366325C756C6E6F6E655C6C616E673130333420205C636630
            5C623020706F72206361746F72636520645C27656461732E20456C207061676F
            2064656C2073616C6172696F207365725C2765312070616761646F206361746F
            7263656E616C2C20656E206C6173206F666963696E6173206465206C61205C62
            20434F4D50415C2764315C276364412E5C623020205C7061720D0A5C7061720D
            0A5C7061720D0A456C205C622054524142414A41444F525C6230202072656369
            6269725C276531206C612070617274652070726F706F7263696F6E616C206465
            20616775696E616C646F2C2064656C20706572696F646F20616E75616C206465
            207661636163696F6E65732061207175652074656E6761206465726563686F2C
            20646520636F6E666F726D696461642061206C6F2065737461626C656369646F
            20656E206C6F73206172745C27656463756C6F73203736207920383720646520
            6C61204C4654202E506F722073752070617274652C20656C2074726162616A61
            646F722074656E64725C2765312074616D62695C2765396E2020646572656368
            6F2020616C207061676F206465206C612070617274652070726F706F7263696F
            6E616C206465206C61207072696D61207661636163696F6E616C20646520636F
            6E666F726D696461642061206C6F2071756520646973706F6E6520656C206172
            745C27656463756C6F203830206465206C61204C6579206465206C61206D6174
            657269612E5C7061720D0A5C7061720D0A5C7061720D0A5C62205155494E5441
            2E2D5C62302020416D62617320706172746573206465636C6172616E20717565
            20636F6E6F63656E20737573206F626C69676163696F6E657320792070726F68
            69626963696F6E65732C20706F72206C6F207175652072657370656374612061
            6C20706174725C2766336E2C206C6F73204172742E2031333220792031333320
            6465206C61204C4654207920706F72206C6F2071756520736520726566696572
            6520616C2074726162616A61646F7220206C6F73204172742E20313334207920
            31333520646520646963686F206F7264656E616D69656E746F206C6567616C2E
            5C7061720D0A5C7061720D0A5C7061720D0A5C622053455854412E2D5C623020
            205449454D504F2045585452414F5244494E4152494F2E205175656461207072
            6F68696269646F20616C2054524142414A41444F522074726162616A61722074
            69656D706F2065787472616F7264696E6172696F207369206E6F20657320636F
            6E20636F6E73656E74696D69656E746F2070726576696F2079206F7264656E20
            657363726974612C206461646120706F72206C6120434F4D50415C2764315C27
            6364412E204375616E646F20706F72206375616C71756965722063697263756E
            7374616E63696120646562612074726162616A617220656C2054524142414A41
            444F52206D61796F72207469656D706F2071756520656C2073655C276631616C
            61646F20636F6D6F206A6F726E616461206F7264696E617269612C2072656361
            6261725C276531207072657669616D656E7465206465206C612020434F4D5041
            5C2764315C27636441206C61206F7264656E2061207175652073652072656669
            657265206573746120636C5C2765317573756C612C2073696E206375796F2072
            657175697369746F206E6F206C65207365725C2765312061626F6E6164612063
            616E746964616420616C67756E6120706F7220656C207469656D706F20717565
            2074726162616A6520636F6E2065786365736F2061206C61206A6F726E616461
            206C6567616C2E5C7061720D0A5C7061720D0A5C7061720D0A5C622053455054
            494D412E2D5C6230202052454349424F2044452053414C4152494F532E20454C
            2054524142414A41444F52207365206F626C6967612061206F746F7267617220
            6C6F7320645C2765646173206465207061676F206465207375656C646F732075
            6E2072656369626F2061206661766F72206465206C6120434F4D50415C276431
            5C276364412020706F72206C6120746F74616C69646164206465206C6F732073
            75656C646F7320646576656E6761646F732068617374612066656368612C2065
            6E74656E64695C2765396E646F73652071756520656C206F746F7267616D6965
            6E746F2064656C206D69736D6F20696D706C696361725C27653120737520636F
            6E666F726D6964616420656E2071756520656C207375656C646F207265636962
            69646F20637562726520656C2074726162616A6F20646573656D70655C276631
            61646F2C20796120717565206375616C71756965722063616E74696461642061
            206C612071756520637265796572652074656E6572206465726563686F206465
            6265725C276531206578696769726C6120707265636973616D656E746520616C
            206F746F7267617220656C2072656369626F206465207265666572656E636961
            2E204C61206669726D612064656C2072656369626F20636F72726573706F6E64
            69656E746520696D706C696361725C27653120756E207061676F20746F74616C
            2070617261206C6120434F4D50415C2764315C2763644120706F72206375616C
            717569657220636C617365206465207375656C646F7320612071756520747576
            69657265206465726563686F20656C2054524142414A41444F5220706F72206C
            6F7320736572766963696F7320707265737461646F7320686173746120657361
            2066656368612C2061756E206375616E646F206E6F207365206469676120656E
            20656C2072656369626F20616E746572696F722E5C7061720D0A5C7061720D0A
            5C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A5C7061720D0A5C70
            61720D0A5C66305C667332335C7061720D0A5C7061720D0A5C625C6673323020
            4F43544156415C6230202E2D20456E206174656E63695C2766336E2061206C61
            206E61747572616C657A612064656C2070756573746F2071756520646573656D
            70655C2766316120656C205C622054524142414A41444F525C6230202C20656C
            206D69736D6F207365206F626C696761206120646573656D70655C2766316172
            2073752074726162616A6F20656E206375616C7175696572206C756761722064
            656C207465727269746F72696F206E6163696F6E616C2C2061735C2765642063
            6F6D6F20612068616365726C6F20656E206375616C7175696572206F74726F20
            70756573746F2073696E207065726A756963696F2064652073752073616C6172
            696F2E5C7061720D0A5C625C7061720D0A4E4F56454E415C6230202E2D205C75
            6C20434F4E464944454E4349414C494441445C756C6E6F6E65202E20456E2061
            74656E63695C2766336E2061206C617320616374697669646164657320717565
            207265616C697A61206C61205C6220434F4D50415C2764315C276364415C6230
            2020792064616461206C61206E6563657369646164206465206D616E74656E65
            7220656E206162736F6C75746120636F6E666964656E6369616C69646164206C
            6F7320706C616E657320792070726F796563746F73206465206C61205C622043
            4F4D50415C2764315C276364415C6230202079206465206375616C7175696572
            206F747261206E61747572616C657A612C20656C205C622054524142414A4144
            4F52205C6230207365206F626C69676120612067756172646172206573637275
            70756C6F73616D656E7465206C6F73207365637265746F7320745C276539636E
            69636F732C20636F6D65726369616C6573207920646520666162726963616369
            5C2766336E206465206C6F732070726F647563746F732C206120637579612065
            6C61626F726163695C2766336E20636F6E63757272616E206469726563746120
            6F20496E646972656374616D656E7465206F206465206C6F73206375616C6573
            2074656E676120636F6E6F63696D69656E746F20706F722072617A6F6E657320
            64652074726162616A6F2C2061735C27656420636F6D6F206465206C6F732061
            73756E746F732061646D696E69737472617469766F732C206375796120646976
            756C676163695C2766336E20707565646120636175736172207065726A756963
            696F732061206C61205C6220434F4D50415C2764315C276364415C6230202C20
            656E206C6120696E74656C6967656E6369612064652071756520656C20696E63
            756D706C696D69656E746F2065737065635C2765646669636F20646520657374
            61206F626C69676163695C2766336E2C206C6F206861725C2765312061637265
            65646F722061206C6120726573636973695C2766336E20646520737520436F6E
            747261746F2064652054726162616A6F2C20646520636F6E666F726D69646164
            20636F6E206C6F2064697370756573746F20656E20656C204172745C27656463
            756C6F203437206465206C61204C6579204665646572616C2064656C20547261
            62616A6F20792061206C61732070656E61732071756520696D706F6E6520656C
            20435C2766336469676F2050656E616C207061726120656C2044697374726974
            6F204665646572616C2C20656E20737573204172745C27656463756C6F732032
            3130207920323131206F2073757320636F7272656C617469766F7320456E206C
            6F73206469766572736F7320635C2766336469676F732070656E616C65732064
            65206C61205265705C276661626C696361204D65786963616E612E5C625C7061
            720D0A5C7061720D0A5C7061720D0A445C27633943494D415C6230202E2D5C75
            6C20204C45592041504C494341424C455C756C6E6F6E65202E20416D62617320
            70617274657320636F6E7669656E656E2071756520656E206361736F20646520
            6A756963696F206F20696E746572707265746163695C2766336E206465206C61
            73206F626C69676163696F6E6573206465726976616461732064652065737465
            20636F6E747261746F2079207061726120746F646F20617175656C6C6F207175
            65206E6F20736520656E6375656E74726520657870726573616D656E74652070
            61637461646F20656E20656C206D69736D6F2C20736520736F6D6574656E2061
            206C61206A7572697364696363695C2766336E206465206C6173206A756E7461
            7320657370656369616C657320646520636F6E63696C696163695C2766336E20
            7920617262697472616A652064652065737461206369756461642C2064652061
            63756572646F2061206C6F73206172745C27656463756C6F7320353237206672
            616363695C2766336E20696920696E6369736F2033207920363938206465206C
            61206C6579206665646572616C2064656C2074726162616A6F20766967656E74
            652E5C7061720D0A5C7061720D0A5C7061720D0A4C655C276564646F20657374
            65205C663120646F63756D656E746F20706F7220616D62617320706172746573
            207920656E74657261646F7320646520737520636F6E74656E69646F2C206465
            726563686F732C206F626C69676163696F6E65732C20616C63616E6365732079
            20667565727A61206C6567616C2C206C6F206669726D6120646520636F6D5C27
            66616E206163756572646F207920706F72206475706C696361646F2C206D616E
            6966657374616E646F20616D6261732070617274657320717565206573746520
            636F6E747261746F206861207369646F20656C2070726F647563746F20646520
            737573206C69627265732079206573706F6E74616E65617320766F6C756E7461
            6465732C20717565206E6F2068612068616269646F206572726F722C20656E67
            615C2766316F2C20646F6C6F2C206D616C612066652C2076696F6C656E636961
            2C20656E726971756563696D69656E746F206E6920656D706F62726563696D69
            656E746F20696C65676974696D6F2C206E69206E696E675C2766616E206F7472
            6F20766963696F20717565207065727475726265206C61206C69627265206D61
            6E69666573746163695C2766336E206465206C6120766F6C756E7461642C2071
            756564616E646F20656C206F726967696E616C20612072657367756172646F20
            6465205C6C64626C71756F7465204C4120454D50524553415C7264626C71756F
            7465202C20656E206C61205C6366315C62204349554441442044454C20434152
            4D454E2C2043414D50454348452C20454C20445C27636441205C756C5C6C616E
            6732303538205B6672784442436F6E747261746F2E224665686361436F6E7472
            61746F225D5C756C6E6F6E655C6230202E5C6366325C625C66305C6C616E6731
            3033345C7061720D0A5C6366305C62305C7061720D0A5C6366325C7061720D0A
            5C6366305C7061720D0A5C74726F77645C74726761706837305C74726C656674
            2D37305C7472706164646C37305C7472706164647237305C747270616464666C
            335C7472706164646672330D0A5C63656C6C78343234385C63656C6C78393137
            34200D0A5C706172645C696E74626C5C6E6F77696463746C7061725C71635C62
            5C6673323220506F72206C61205C6C64626C71756F746520434F4D50415C2764
            315C276364415C7264626C71756F74655C63656C6C5C6C64626C71756F746520
            454C2054524142414A41444F525C7264626C71756F74655C63656C6C5C726F77
            5C74726F77645C74726761706837305C74726C6566742D37305C747270616464
            6C37305C7472706164647237305C747270616464666C335C7472706164646672
            330D0A5C63656C6C78343234385C63656C6C7839313734200D0A5C706172645C
            696E74626C5C6E6F77696463746C7061725C71635C63656C6C5C63656C6C5C72
            6F775C74726F77645C74726761706837305C74726C6566742D37305C74727061
            64646C37305C7472706164647237305C747270616464666C335C747270616464
            6672330D0A5C63656C6C78343234385C63656C6C7839313734200D0A5C706172
            645C696E74626C5C6E6F77696463746C7061725C71635C63656C6C5C63656C6C
            5C726F775C74726F77645C74726761706837305C74726C6566742D37305C7472
            706164646C37305C7472706164647237305C747270616464666C335C74727061
            64646672330D0A5C63656C6C78343234385C63656C6C7839313734200D0A5C70
            6172645C696E74626C5C6E6F77696463746C7061725C71635C63656C6C5C6365
            6C6C5C726F775C74726F77645C74726761706837305C74726C6566742D37305C
            7472706164646C37305C7472706164647237305C747270616464666C335C7472
            706164646672330D0A5C63656C6C78343234385C63656C6C7839313734200D0A
            5C706172645C696E74626C5C6E6F77696463746C7061725C7163205F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C62305C
            63656C6C5C62205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5C62305C63656C6C5C726F775C74726F77645C74726761706837
            305C74726C6566742D37305C7472706164646C37305C7472706164647237305C
            747270616464666C335C7472706164646672330D0A5C63656C6C78343234385C
            63656C6C7839313734200D0A5C706172645C696E74626C5C6E6F77696463746C
            7061725C71635C625C6673323020432E20496C69616E612064656C204361726D
            656E204372757A20476F6D657A5C62305C6C616E67313034365C63656C6C5C63
            66315C625C66325C6C616E673130333420432E5C6C616E673230353820205B66
            72784442436F6E747261746F2E224E6F6D627265225D5C6366325C66305C6C61
            6E67313033345C63656C6C5C726F77200D0A5C706172645C6E6F77696463746C
            7061725C716A5C6366305C62305C667332335C7061720D0A5C7061720D0A5C66
            315C7061720D0A5C6366315C625C667332325C6C616E67323035385C7061720D
            0A7D0D0A00}
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 1009.134510000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object Contrato: TUniQuery
    Connection = connection.Uconnection
    Left = 712
    Top = 132
  end
  object frxDBContrato: TfrxDBDataset
    UserName = 'frxDBContrato'
    CloseDataSource = False
    DataSet = Contrato
    BCDToCurrency = False
    Left = 792
    Top = 126
  end
  object frxDBLogistica: TfrxDBDataset
    UserName = 'frxDBLogistica'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 792
    Top = 188
  end
  object Reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 872
    Top = 188
  end
end
