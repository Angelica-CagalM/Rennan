object frmCotizacionCMMI: TfrmCotizacionCMMI
  Left = 0
  Top = 0
  Caption = 'Cotizaciones'
  ClientHeight = 506
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 551
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 551
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 405
          ExplicitTop = -1
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
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
    object cxTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Cotizaciones'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 551
    Height = 471
    Align = alClient
    TabOrder = 1
    object cxGridCotizaciones: TcxGrid
      Left = 1
      Top = 1
      Width = 549
      Height = 279
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Aril'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 3
      object viewCotizaciones: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellDblClick = viewCotizacionesCellDblClick
        DataController.DataSource = dsCotizaciones
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumnC1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
        end
        object cxColumnC2: TcxGridDBColumn
          DataBinding.FieldName = 'Proveedor'
        end
        object cxColumnC3: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FechaCreacion'
        end
        object cxColumnC4: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
        end
      end
      object cxGridCotizacionesLevel1: TcxGridLevel
        GridView = viewCotizaciones
      end
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 288
      Width = 549
      Height = 182
      Align = alBottom
      TabOrder = 1
      Visible = False
      inline frmBarraH21: TfrmBarraH2
        Left = 1
        Top = 148
        Width = 547
        Height = 33
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 148
        ExplicitWidth = 547
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Width = 547
          Height = 33
          ExplicitWidth = 547
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Left = 372
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 372
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 459
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 459
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
      object layoutDatos: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 547
        Height = 147
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCodigo: TcxDBTextEdit
          Left = 100
          Top = 11
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsCotizaciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxProveedores: TcxDBLookupComboBox
          Left = 340
          Top = 11
          DataBinding.DataField = 'IdProveedor'
          DataBinding.DataSource = dsCotizaciones
          ParentFont = False
          Properties.KeyFieldNames = 'IdProveedor'
          Properties.ListColumns = <
            item
              Caption = 'Listado de Proveedores'
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsProveedores
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxFechaC: TcxDBDateEdit
          Left = 100
          Top = 40
          DataBinding.DataField = 'FechaCreacion'
          DataBinding.DataSource = dsCotizaciones
          ParentFont = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxUsuario: TcxDBTextEdit
          Left = 340
          Top = 40
          DataBinding.DataField = 'sIdUsuario'
          DataBinding.DataSource = dsCotizaciones
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxObservaciones: TcxDBMemo
          Left = 100
          Top = 69
          DataBinding.DataField = 'Observaciones'
          DataBinding.DataSource = dsCotizaciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          Height = 60
          Width = 450
        end
        object layoutDatosGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object itemCodigo: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = 'C'#243'digo'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itemProveedor: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Proveedor'
          Control = cxProveedores
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itemFechaC: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha'
          Control = cxFechaC
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 0
          AutoCreated = True
        end
        object itemUsuario: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Usuario'
          Control = cxUsuario
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = layoutDatosGroup_Root
          CaptionOptions.Text = 'Observaciones'
          Control = cxObservaciones
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = layoutDatosGroup_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
      end
    end
    object cxSplitterDatos: TcxSplitter
      Left = 1
      Top = 280
      Width = 549
      Height = 8
      AlignSplitter = salBottom
    end
  end
  object PanelDetalle: TPanel
    Left = 557
    Top = 35
    Width = 557
    Height = 471
    Align = alRight
    TabOrder = 2
    object PanelTopDetalle: TPanel
      Left = 1
      Top = 1
      Width = 555
      Height = 30
      Align = alTop
      TabOrder = 0
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 311
        Top = 1
        Width = 81
        Height = 28
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
      object cxEditaDetalle: TcxButton
        Tag = 11
        Left = 392
        Top = 1
        Width = 81
        Height = 28
        Align = alRight
        Caption = 'Editar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxEditaDetalleClick
      end
      object btnEliminarDetalle: TcxButton
        Tag = 12
        Left = 473
        Top = 1
        Width = 81
        Height = 28
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
        OnClick = btnEliminarDetalleClick
      end
      object cxTitulo2: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Materiales'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
    end
    object PanelBotDetalle: TPanel
      Left = 1
      Top = 429
      Width = 555
      Height = 41
      Align = alBottom
      TabOrder = 1
    end
    object cxPageDetalle: TcxPageControl
      Left = 1
      Top = 31
      Width = 555
      Height = 398
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Aril'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Properties.ActivePage = cxTabRecursos
      Properties.CustomButtons.Buttons = <>
      Properties.Images = frmrepositorio.IconosTodos16
      OnChange = cxPageDetalleChange
      ClientRectBottom = 396
      ClientRectLeft = 2
      ClientRectRight = 553
      ClientRectTop = 30
      object cxTabRecursos: TcxTabSheet
        Caption = 'Materiales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 8
        ParentFont = False
        object cxGridRecursos: TcxGrid
          Left = 0
          Top = 0
          Width = 551
          Height = 366
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object viewRecursos: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = viewRecursosCellDblClick
            DataController.DataSource = dsDetalle
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
            FilterRow.SeparatorWidth = 8
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            Images = frmrepositorio.IconosTodos16
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxColumnCD1: TcxGridDBColumn
              Caption = 'Requisici'#243'n'
              DataBinding.FieldName = 'Requisicion'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 78
            end
            object cxColumnCD2: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
              Width = 70
            end
            object cxColumnCD3: TcxGridDBColumn
              Caption = 'Material'
              DataBinding.FieldName = 'Descripcion'
              Width = 251
            end
            object cxColumnCD4: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              Width = 73
            end
            object cxColumnCD5: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.ReadOnly = True
              Width = 65
            end
          end
          object cxGridRecursosLevel1: TcxGridLevel
            GridView = viewRecursos
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Informes'
        ImageIndex = 62
      end
    end
  end
  object cxSplitterPrincipal: TcxSplitter
    Left = 551
    Top = 35
    Width = 6
    Height = 471
    AlignSplitter = salRight
  end
  object PanelRecurso: TPanel
    Left = 299
    Top = 0
    Width = 246
    Height = 284
    BorderWidth = 10
    TabOrder = 4
    Visible = False
    object griRecursos: TcxGrid
      Left = 11
      Top = 11
      Width = 224
      Height = 232
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object viewRecursosCot: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = viewRecursosCotCellDblClick
        DataController.DataSource = dsRecursos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxColumnR1: TcxGridDBColumn
          DataBinding.FieldName = 'Requisicion'
          Width = 73
        end
        object cxColumnR2: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 67
        end
        object cxColumnR3: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'mDescripcion'
          Width = 118
        end
        object cxColumnR4: TcxGridDBColumn
          Caption = 'U.Medida'
          DataBinding.FieldName = 'Medida'
          Width = 75
        end
        object cxColumnR6: TcxGridDBColumn
          Caption = 'Cantidad Requerida'
          DataBinding.FieldName = 'dCantidad'
          Width = 114
        end
        object cxColumnR5: TcxGridDBColumn
          Caption = 'Cantidad Sugerida'
          DataBinding.FieldName = 'Sugerido'
          Width = 99
        end
      end
      object griRecursosLevel1: TcxGridLevel
        GridView = viewRecursosCot
      end
    end
    inline frmBarraH22: TfrmBarraH2
      Left = 11
      Top = 243
      Width = 224
      Height = 30
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 11
      ExplicitTop = 243
      ExplicitWidth = 224
      ExplicitHeight = 30
      inherited Panel1: TPanel
        Width = 224
        Height = 30
        ExplicitWidth = 224
        ExplicitHeight = 30
        inherited btnPost: TcxButton
          Left = 63
          Top = 1
          Width = 80
          Height = 28
          Align = alRight
          Caption = 'Agregar'
          OnClick = agregaRecurso
          ExplicitLeft = 63
          ExplicitTop = 1
          ExplicitWidth = 80
          ExplicitHeight = 28
        end
        inherited btnCancel: TcxButton
          Left = 143
          Top = 1
          Width = 80
          Height = 28
          Align = alRight
          OnClick = cancelaRecurso
          ExplicitLeft = 143
          ExplicitTop = 1
          ExplicitWidth = 80
          ExplicitHeight = 28
        end
      end
    end
  end
  object uCotizaciones: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = uCotizacionesAfterScroll
    Left = 88
    Top = 107
  end
  object dsCotizaciones: TDataSource
    DataSet = uCotizaciones
    Left = 16
    Top = 107
  end
  object uDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 155
  end
  object dsDetalle: TDataSource
    DataSet = uDetalle
    Left = 16
    Top = 155
  end
  object uRecursos: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 203
  end
  object dsRecursos: TDataSource
    DataSet = uRecursos
    Left = 16
    Top = 203
  end
  object uProveedores: TUniQuery
    Connection = connection.Uconnection
    Left = 88
    Top = 251
  end
  object dsProveedores: TDataSource
    DataSet = uProveedores
    Left = 16
    Top = 251
  end
  object uReporte: TUniQuery
    Connection = connection.Uconnection
    Left = 640
    Top = 235
  end
  object ds_rptCotizaProveedor: TfrxDBDataset
    UserName = 'rpt_cotizaProveedor'
    CloseDataSource = False
    DataSet = uReporte
    BCDToCurrency = False
    Left = 736
    Top = 242
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43378.606831377300000000
    ReportOptions.LastChange = 43773.482943449070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 824
    Top = 234
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = ds_rptCotizaProveedor
        DataSetName = 'rpt_cotizaProveedor'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 151.181151180000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 136.062972600000000000
          Height = 56.692901180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 170.078850000000000000
          Width = 566.929207090000000000
          Height = 83.149611180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Top = 94.488250000000000000
          Width = 737.008350000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITUD DE COTIZACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Solicitud:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 94.488250000000000000
          Top = 120.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Cotizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 612.283860000000000000
          Top = 120.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 219.212740000000000000
          Top = 120.944960000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Width = 170.078850000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        Condition = 'rpt_cotizaProveedor."IdProveedor"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            #205'tem')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 64.251968500000000000
          Top = 26.456710000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Material')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 377.953000000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 3.779530000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Proveedor: [rpt_cotizaProveedor."Proveedor"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 476.220780000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'T. de Entrega')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Top = 26.456710000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'P. U.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 657.638220000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 283.464566930000000000
          Top = 26.448670000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidad')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        DataSet = ds_rptCotizaProveedor
        DataSetName = 'rpt_cotizaProveedor'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 64.251968500000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 657.638220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 283.464566930000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rpt_cotizaProveedor."UM"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        Stretched = True
      end
      object Memo22: TfrxMemoView
        Top = 884.410020000000000000
        Width = 117.165430000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'Observaciones:')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Left = 117.165430000000000000
        Top = 884.410020000000000000
        Width = 619.842920000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[rpt_cotizaProveedor."Observaciones"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Left = 574.488560000000000000
        Top = 956.221090000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'Hoja [<page>] de [TotalPages#]')
        ParentFont = False
        VAlign = vaCenter
        Formats = <
          item
          end
          item
          end>
      end
    end
  end
end
