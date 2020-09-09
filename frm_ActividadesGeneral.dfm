object frmActGeneral: TfrmActGeneral
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Registro de Actividades General'
  ClientHeight = 531
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 35
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'Registro de Actividades'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 459
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 460
      Top = 1
      Width = 572
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 1
      ExplicitLeft = 460
      ExplicitTop = 1
      ExplicitWidth = 572
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 572
        Height = 33
        Align = alRight
        ExplicitWidth = 572
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          Enabled = False
          OnClick = nil
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
          Enabled = False
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Width = 90
          Height = 31
          Caption = 'Programar'
          ExplicitLeft = 481
          ExplicitWidth = 90
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
          Visible = False
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
  end
  object PanelCentral: TPanel
    Left = 0
    Top = 81
    Width = 455
    Height = 450
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object PanelInfo: TPanel
      Left = 1
      Top = 370
      Width = 453
      Height = 79
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object PanelDown: TPanel
        Left = 1
        Top = 43
        Width = 451
        Height = 35
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 274
          Top = 1
          Width = 176
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 274
          ExplicitTop = 1
          ExplicitWidth = 176
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Width = 176
            Height = 33
            ExplicitWidth = 176
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 1
              Top = 1
              Height = 31
              Align = alRight
              Enabled = False
              OnClick = btnPostClick
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 88
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 88
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 451
        Height = 42
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxFecha: TcxDBDateEdit
          Left = 51
          Top = 11
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = ds_registro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxHoraIni: TcxDBTimeEdit
          Left = 170
          Top = 11
          DataBinding.DataField = 'horaInicio'
          DataBinding.DataSource = ds_registro
          ParentFont = False
          Properties.TimeFormat = tfHourMin
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxHoraFin: TcxDBTimeEdit
          Left = 266
          Top = 11
          DataBinding.DataField = 'horaFin'
          DataBinding.DataSource = ds_registro
          ParentFont = False
          Properties.TimeFormat = tfHourMin
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxProyecto: TcxDBLookupComboBox
          Left = 367
          Top = 11
          DataBinding.DataField = 'sNumeroOrden'
          DataBinding.DataSource = ds_registro
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              Caption = 'Listado de Proyectos'
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_ordenes
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hora Inicio'
          Control = cxHoraIni
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hora Fin'
          Control = cxHoraFin
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Proyecto'
          Control = cxProyecto
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    object cxSplitterInfo: TcxSplitter
      Left = 1
      Top = 362
      Width = 453
      Height = 8
      AlignSplitter = salBottom
    end
    object cxGridRegistro: TcxGrid
      Left = 1
      Top = 1
      Width = 453
      Height = 361
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cxViewRegistro: TcxGridDBTableView
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
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds_registro
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGridRegistroDBTableView1DataControllerFilterChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total Horas'
            Kind = skCount
            Column = cxColumn5
          end
          item
            Format = 'hh:mm'
            Kind = skSum
            FieldName = 'CantidadHoras'
            Column = cxColumn6
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.SeparatorColor = clHighlight
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = '< No hay registro de actividades >'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = cxViewRegistroStylesGetContentStyle
        object cxColumn1: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'uNombre'
          Visible = False
          GroupIndex = 0
        end
        object cxColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Visible = False
          GroupIndex = 1
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Hora Inicio'
          DataBinding.FieldName = 'horaInicio'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
        end
        object cxColumn4: TcxGridDBColumn
          Caption = 'Hora Fin'
          DataBinding.FieldName = 'HoraFin'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
        end
        object cxColumn5: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sIdFolio'
        end
        object cxColumn6: TcxGridDBColumn
          Caption = 'Tiempo Invertido'
          DataBinding.FieldName = 'tiempoInv'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
        end
        object cxColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'EsProgramada'
          Visible = False
        end
      end
      object cxGridRegistroLevel1: TcxGridLevel
        GridView = cxViewRegistro
      end
    end
  end
  object PanelDetalle: TPanel
    Left = 463
    Top = 81
    Width = 570
    Height = 450
    Align = alRight
    TabOrder = 2
    object PanelLabel: TPanel
      Left = 1
      Top = 1
      Width = 568
      Height = 25
      Align = alTop
      TabOrder = 0
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Programaci'#243'n de Actividades'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 455
    Top = 81
    Width = 8
    Height = 450
    AlignSplitter = salRight
  end
  object PanelOpciones: TPanel
    Left = 0
    Top = 35
    Width = 1033
    Height = 46
    Align = alTop
    TabOrder = 4
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1031
      Height = 44
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxFechaInicio: TcxDateEdit
        Left = 83
        Top = 11
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        OnExit = cxFechaInicioExit
        Width = 121
      end
      object cxFechaFinal: TcxDateEdit
        Left = 280
        Top = 11
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        OnExit = cxFechaFinalExit
        Width = 121
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Fecha Inicio'
        Control = cxFechaInicio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        AlignVert = avClient
        CaptionOptions.Text = 'Fecha Final'
        Control = cxFechaFinal
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object uRegistro: TUniQuery
    Left = 64
    Top = 235
  end
  object ds_registro: TDataSource
    DataSet = uRegistro
    Left = 64
    Top = 187
  end
  object uOrdenes: TUniQuery
    Left = 376
    Top = 147
  end
  object ds_ordenes: TDataSource
    DataSet = uOrdenes
    Left = 440
    Top = 171
  end
  object uProgramadas: TUniQuery
    Connection = connection.Uconnection
    Left = 624
    Top = 155
  end
  object ds_programadas: TDataSource
    DataSet = uProgramadas
    Left = 616
    Top = 235
  end
  object Reporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43360.697032905090000000
    ReportOptions.LastChange = 43362.048747256930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 290
    Top = 240
    Datasets = <
      item
        DataSet = frxDatos
        DataSetName = 'frxDatos'
      end
      item
        DataSet = frxGrafica
        DataSetName = 'frxGrafica'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = frxDatos
        DataSetName = 'frxDatos'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Width = 71.811070000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Fecha"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."HoraInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 151.181200000000000000
          Width = 83.149660000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."HoraFin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 234.330860000000000000
          Width = 123.968508820000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 358.299207720000000000
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 501.921259840000000000
          Width = 239.244094490000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."TiempoInv"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        Condition = 'frxDatos."sIdUsuario"'
        object Memo12: TfrxMemoView
          Width = 71.811016300000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 71.811016300000000000
          Width = 79.370076300000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'COMIENZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 151.181092600000000000
          Width = 83.149606300000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TERMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 234.330698900000000000
          Width = 124.123641640000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PROYECTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 358.299207720000000000
          Width = 143.622052130000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ACTIVIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 501.921259840000000000
          Width = 239.244094490000000000
          Height = 26.456710000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'HORAS LABORADAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 501.921259840000000000
          Width = 239.244094490000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."TotalHoras"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 358.299207720000000000
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Horas')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Picture1: TfrxPictureView
          Width = 150.803149610000000000
          Height = 120.944960000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo57: TfrxMemoView
          Left = 234.330708660000000000
          Top = 26.456709999999990000
          Width = 98.645669290000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 150.803247000000000000
          Top = 26.456709999999990000
          Width = 83.149660000000000000
          Height = 94.488250000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TIME SHEET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 150.803247000000000000
          Width = 590.362204720000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 234.330708660000000000
          Top = 45.354360000000000000
          Width = 98.645669290000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MES:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 234.330708660000000000
          Top = 64.252010000000000000
          Width = 98.645669290000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'A'#209'O:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 234.330708660000000000
          Top = 83.149660000000000000
          Width = 268.346456690000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SEMANA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 234.330708660000000000
          Top = 102.047310000000000000
          Width = 268.208113190000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Semana"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 332.598425200000000000
          Top = 26.456709999999990000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Puesto"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 332.598425200000000000
          Top = 45.354360000000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Fecha"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 332.598425200000000000
          Top = 64.252010000000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Fecha"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Top = 26.456709999999990000
          Width = 238.110236220000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 502.677490000000000000
          Top = 83.149660000000000000
          Width = 238.110236220000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'HOJA:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 502.677490000000000000
          Top = 45.354360000000000000
          Width = 238.110236220000000000
          Height = 37.795275590000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."uNombre"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Top = 102.047310000000000000
          Width = 238.110236220000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        Condition = 'setup."sContrato"'
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 343.937230000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
        RowCount = 0
        object Chart1: TfrxChartView
          Left = 7.559060000000000000
          Top = 11.338590000000010000
          Width = 721.890230000000000000
          Height = 325.039580000000000000
          HighlightColor = clBlack
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C6508125469746C652E546578742E537472696E677301060F484F52
            4153204C41424F5241444153000D4672616D652E56697369626C650816566965
            7733444F7074696F6E732E526F746174696F6E02000A426576656C4F75746572
            070662764E6F6E6505436F6C6F720707636C57686974650D44656661756C7443
            616E766173060E54474449506C757343616E76617311436F6C6F7250616C6574
            7465496E646578020D000A544261725365726965730753657269657331055469
            746C650604737373730B4175746F42617253697A65090C5856616C7565732E4E
            616D650601580D5856616C7565732E4F72646572070B6C6F417363656E64696E
            670C5956616C7565732E4E616D6506034261720D5956616C7565732E4F726465
            7207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              InheritedName = 'TfrxSeriesItem2'
              DataType = dtDBData
              DataBand = Reporte.MasterData1
              DataSet = frxGrafica
              DataSetName = 'frxGrafica'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frxGrafica."sIdFolio"'
              Source2 = 'frxGrafica."CantidadHoras"'
              XSource = 'frxGrafica."sIdFolio"'
              YSource = 'frxGrafica."CantidadHoras"'
            end>
        end
      end
    end
  end
  object frxDatos: TfrxDBDataset
    UserName = 'frxDatos'
    CloseDataSource = False
    DataSource = ds_registroReporte
    BCDToCurrency = False
    Left = 347
    Top = 238
  end
  object ds_Grafico: TDataSource
    DataSet = uGrafico
    Left = 120
    Top = 187
  end
  object uGrafico: TUniQuery
    Connection = connection.Uconnection
    Left = 120
    Top = 235
  end
  object frxGrafica: TfrxDBDataset
    UserName = 'frxGrafica'
    CloseDataSource = False
    DataSource = ds_Grafico
    BCDToCurrency = False
    Left = 347
    Top = 286
  end
  object uTurnos: TUniQuery
    Connection = connection.Uconnection
    Left = 192
    Top = 267
  end
  object ds_registroReporte: TDataSource
    DataSet = uRegistroReporte
    Left = 64
    Top = 291
  end
  object uRegistroReporte: TUniQuery
    Connection = connection.Uconnection
    Left = 64
    Top = 339
  end
end
