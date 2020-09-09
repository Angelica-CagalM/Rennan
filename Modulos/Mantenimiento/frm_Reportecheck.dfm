object frmReporteCheck: TfrmReporteCheck
  Left = 0
  Top = 0
  Caption = 'Reporte de Check List'
  ClientHeight = 491
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = formClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1054
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Tabla...Agregando Datos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 491
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 491
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
          ExplicitLeft = 401
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
  end
  object PanelDetalle: TPanel
    Left = 496
    Top = 35
    Width = 558
    Height = 456
    Align = alRight
    AutoSize = True
    TabOrder = 1
    object PanelTop2: TPanel
      Left = 1
      Top = 1
      Width = 556
      Height = 35
      Align = alTop
      TabOrder = 0
      object cxLeyenda2: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Tabla...Agregando Datos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
      object btnNuevo: TcxButton
        Left = 362
        Top = 1
        Width = 87
        Height = 30
        Align = alCustom
        Caption = 'Nuevo'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnNuevoClick
      end
      object btnEdita: TcxButton
        Left = 455
        Top = 1
        Width = 87
        Height = 30
        Caption = 'Editar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEditaClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 7
      Top = 36
      Width = 550
      Height = 386
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_descripciones
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripciones'
          Width = 117
        end
        object cxGrid2DBTableView1Column2: TcxGridDBColumn
          Caption = 'Cumple'
          DataBinding.FieldName = 'CUMPLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'Si'
          Properties.DisplayUnchecked = 'No'
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Width = 85
        end
        object cxGrid2DBTableView1Column3: TcxGridDBColumn
          Caption = 'Acci'#243'n Inmediata'
          DataBinding.FieldName = 'AccionInmediata'
          Width = 105
        end
        object cxGrid2DBTableView1Column4: TcxGridDBColumn
          Caption = 'Acci'#243'n Aplazada'
          DataBinding.FieldName = 'AccionAplazada'
          Width = 146
        end
        object cxGrid2DBTableView1Column5: TcxGridDBColumn
          DataBinding.FieldName = 'Grupo'
          Visible = False
          GroupIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object PanelDown2: TPanel
      Left = 1
      Top = 422
      Width = 556
      Height = 33
      Align = alBottom
      TabOrder = 2
      object btnAcepDetalle: TcxButton
        Left = 381
        Top = 1
        Width = 87
        Height = 30
        Caption = 'Aceptar'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAcepDetalleClick
      end
      object btnClose: TcxButton
        Left = 468
        Top = 1
        Width = 87
        Height = 31
        Align = alRight
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnCloseClick
      end
    end
    object SplitDetalle: TcxSplitter
      Left = 1
      Top = 36
      Width = 6
      Height = 386
    end
  end
  object PanelCentro: TPanel
    Left = 0
    Top = 35
    Width = 496
    Height = 456
    Align = alClient
    TabOrder = 2
    object PanelDown: TPanel
      Left = 1
      Top = 320
      Width = 494
      Height = 135
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object PanelAcepta: TPanel
        Left = 1
        Top = 99
        Width = 492
        Height = 35
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 311
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 311
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              OnClick = btnPostClick
            end
            inherited btnCancel: TcxButton
              OnClick = btnCancelClick
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 492
        Height = 98
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxSubFamilia: TcxTextEdit
          Left = 416
          Top = 40
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Text = 'cxSubFamilia'
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxFamilia: TcxTextEdit
          Left = 272
          Top = 40
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          Text = 'cxFamilia'
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxResponsable: TcxTextEdit
          Left = 92
          Top = 40
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = 'cxResponsable'
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxCodigo: TcxDBTextEdit
          Left = 92
          Top = 11
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = ds_Registro
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
        object cmbCheck: TcxDBLookupComboBox
          Left = 272
          Top = 11
          DataBinding.DataField = 'IdCheckList'
          DataBinding.DataSource = ds_Registro
          ParentFont = False
          Properties.KeyFieldNames = 'IdChecklist'
          Properties.ListColumns = <
            item
              FieldName = 'CheckList'
            end>
          Properties.ListSource = ds_Checklist
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = cmbCheckExit
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxFecha: TcxDBDateEdit
          Left = 416
          Top = 11
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = ds_Registro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyUp = GlobalKeyUp
          Width = 121
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
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'SubFamilia'
          Control = cxSubFamilia
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Familia'
          Control = cxFamilia
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignVert = avClient
          CaptionOptions.Text = 'Responsable'
          Control = cxResponsable
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Nombre Check List'
          Control = cmbCheck
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          Index = 2
          AutoCreated = True
        end
      end
    end
    object cxGridRegistro: TcxGrid
      Left = 1
      Top = 1
      Width = 494
      Height = 311
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGridRegistroDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_Registro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumnRC1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 150
        end
        object cxColumnRC2: TcxGridDBColumn
          DataBinding.FieldName = 'CheckList'
          Width = 146
        end
        object cxColumnRC3: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 145
        end
        object cxColumnRC4: TcxGridDBColumn
          DataBinding.FieldName = 'Responsable'
          Width = 130
        end
        object cxGridRegistroDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Subfamilia'
          Visible = False
          GroupIndex = 2
        end
        object cxGridRegistroDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Familia'
          Visible = False
          GroupIndex = 1
        end
        object cxGridRegistroDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Grupo'
          Visible = False
          GroupIndex = 0
        end
      end
      object cxGridRegistroLevel1: TcxGridLevel
        GridView = cxGridRegistroDBTableView1
      end
    end
    object cxSplitterInfo: TcxSplitter
      Left = 1
      Top = 312
      Width = 494
      Height = 8
      AlignSplitter = salTop
      Control = PanelDown
    end
  end
  object Registro: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = RegistroAfterScroll
    Left = 56
    Top = 112
  end
  object ds_Registro: TDataSource
    DataSet = Registro
    Left = 104
    Top = 112
  end
  object Checklist: TUniQuery
    Connection = connection.Uconnection
    Left = 56
    Top = 176
  end
  object ds_Checklist: TDataSource
    DataSet = Checklist
    Left = 104
    Top = 176
  end
  object filtroSubFamilia: TUniQuery
    Connection = connection.Uconnection
    Left = 56
    Top = 235
  end
  object Descripciones: TUniQuery
    Connection = connection.Uconnection
    Left = 616
    Top = 163
  end
  object ds_descripciones: TDataSource
    DataSet = Descripciones
    Left = 696
    Top = 163
  end
  object Cumplimiento: TUniQuery
    Connection = connection.Uconnection
    Left = 616
    Top = 235
  end
  object ds_cumplimiento: TDataSource
    DataSet = Cumplimiento
    Left = 704
    Top = 235
  end
  object reporte_registros: TfrxDBDataset
    UserName = 'registros_detalles'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 440
    Top = 147
  end
  object frxReporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43219.589841377310000000
    ReportOptions.LastChange = 43220.816678946760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 219
    Datasets = <
      item
        DataSet = reporte_registros
        DataSetName = 'registros_detalles'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."CC"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 657.638220000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 529.134200000000000000
          Top = 18.897650000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."Fecha"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 529.134200000000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6108695
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SERVICIOS SIANI S.A. DE C.V.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CHECK LIST')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 476.220780000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Clave:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 52.913385826771650000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Emisi'#243'n:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 52.913385826771650000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 600.945270000000000000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Rev:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 695.433520000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          Left = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15853019
          Memo.UTF8W = (
            
              'Este documento es propiedad intelectual de Servicios SIANI, S.A.' +
              ' de C.V. Queda prohibida la reproducci'#243'n parcial o total de este' +
              ' sin consentimiento por escrito de la empresa.'
            
              'S'#243'lo el personal autorizado en el Sistema Integrado de Gesti'#243'n p' +
              'odr'#225' emitir copias controladas.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Reponsable:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 49.133890000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Grupo:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 49.133890000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Sub-Grupo:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 49.133890000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            'Secci'#243'n:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 143.622140000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Responsable"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 143.622140000000000000
          Top = 18.897650000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."headerg"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Subgrupo"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 143.622140000000000000
          Top = 56.692950000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."seccion"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 124.724490000000000000
          Width = 325.039580000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'CUMPLIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 325.039580000000000000
          Top = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'CUMPLE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 559.370440000000000000
          Top = 124.724490000000000000
          Width = 158.740260000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'ACCI'#211'N APLAZADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 393.071120000000000000
          Top = 124.724490000000000000
          Width = 166.299222360000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          HAlign = haCenter
          Memo.UTF8W = (
            'ACCI'#211'N INMEDIATA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Condition = 'registros_detalles."Grupo"'
        KeepTogether = True
        object Memo7: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 6108695
          Memo.UTF8W = (
            '[registros_detalles."Grupo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = reporte_registros
        DataSetName = 'registros_detalles'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 325.039580000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[registros_detalles."Descripciones"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[registros_detalles."Cumple"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 393.071120000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[registros_detalles."AccionInmediata"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[registros_detalles."AccionAplazada"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 128.504020000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 275.905690000000000000
          Top = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre y Firma')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 83.149660000000000000
          Width = 551.811380000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 49407
          HAlign = haCenter
          Memo.UTF8W = (
            
              'NOTA: En caso de que un cumplimiento no sea aprobado se requerir' +
              #225' la '
            'elaboraci'#243'n de un Reporte de Mantenimiento (FOR-SIG-30).')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 376
    Top = 147
  end
end
