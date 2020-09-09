object frmSeguimientoReq: TfrmSeguimientoReq
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Seguimiento Requisici'#243'n'
  ClientHeight = 637
  ClientWidth = 1154
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid_datos: TcxGrid
    Left = 0
    Top = 35
    Width = 589
    Height = 602
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object grid_datosView: TcxGridDBTableView
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
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.CustomizeDialog = False
      FilterBox.Position = fpTop
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.ShowClearButton = False
      FindPanel.ShowCloseButton = False
      FindPanel.ShowFindButton = False
      OnCellClick = grid_datosViewCellClick
      DataController.DataSource = ds_datos
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.UnderscoreWildcard = '%'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Buscar'
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object col_id: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'sNumFolio'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 150
      end
      object Col_Referencia: TcxGridDBColumn
        Caption = 'Proyecto / Ref.'
        DataBinding.FieldName = 'Referencia'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 170
      end
      object Col_Solicitado: TcxGridDBColumn
        DataBinding.FieldName = 'Solicitado'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 146
      end
      object col_entrega: TcxGridDBColumn
        DataBinding.FieldName = 'Entrega'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 150
      end
      object col_usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 143
      end
      object col_estatus: TcxGridDBColumn
        Caption = 'Estatus'
        DataBinding.FieldName = 'Est'
        HeaderAlignmentHorz = taCenter
        Width = 156
      end
      object col_Fecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FechaStatus'
        Options.Editing = False
        Width = 78
      end
    end
    object grid_datosLevel: TcxGridLevel
      GridView = grid_datosView
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1154
    Height = 35
    Align = alTop
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1152
      Height = 34
      Align = alTop
      TabOrder = 0
      object btnDetalle: TcxButton
        Left = 1059
        Top = 1
        Width = 92
        Height = 32
        Align = alRight
        Caption = 'Detalle'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = frmrepositorio.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnDetalleClick
      end
      object btnTransito: TcxButton
        Tag = 10
        Left = 871
        Top = 1
        Width = 96
        Height = 32
        Align = alRight
        Caption = '6.-En transito'
        OptionsImage.ImageIndex = 21
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnTransitoClick
      end
      object btnAlmacen: TcxButton
        Tag = 10
        Left = 720
        Top = 1
        Width = 151
        Height = 32
        Align = alRight
        Caption = '5.-Almacen en Tierra'
        OptionsImage.ImageIndex = 51
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAlmacenClick
      end
      object btnNoAutorizacionCC: TcxButton
        Tag = 10
        Left = 362
        Top = 1
        Width = 220
        Height = 32
        Align = alRight
        Caption = '3.-No Autoriado por Centro Costos'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnNoAutorizacionCCClick
      end
      object btnCotizacion: TcxButton
        Tag = 10
        Left = 46
        Top = 1
        Width = 119
        Height = 32
        Align = alRight
        Caption = '1.-En Cotizaci'#243'n'
        OptionsImage.ImageIndex = 14
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnCotizacionClick
      end
      object btnEspera: TcxButton
        Tag = 10
        Left = 582
        Top = 1
        Width = 138
        Height = 32
        Align = alRight
        Caption = '4.-Espera de Arribo'
        OptionsImage.ImageIndex = 52
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEsperaClick
      end
      object btnautorizacionCC: TcxButton
        Tag = 10
        Left = 165
        Top = 1
        Width = 197
        Height = 32
        Align = alRight
        Caption = '2.-Autorizaci'#243'n Centro Costos'
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnautorizacionCCClick
      end
      object btnRecibido: TcxButton
        Tag = 11
        Left = 967
        Top = 1
        Width = 92
        Height = 32
        Align = alRight
        Caption = '7.-Recibido'
        OptionsImage.ImageIndex = 34
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnRecibidoClick
      end
    end
  end
  object Detalle: TPanel
    Left = 595
    Top = 35
    Width = 559
    Height = 602
    Align = alRight
    TabOrder = 2
    Visible = False
    object cxGrid1: TcxGrid
      Left = 1
      Top = 42
      Width = 557
      Height = 559
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsReq
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Fecha Estatus'
          DataBinding.FieldName = 'Fecha'
          Options.Editing = False
          Width = 84
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'sIdUsuario'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 87
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          HeaderAlignmentHorz = taCenter
          Width = 187
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Folio'
          DataBinding.FieldName = 'Solicitud'
          Width = 92
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FechaSolicitud'
          Width = 93
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = 'Dias Transcurridos'
          DataBinding.FieldName = 'Tiempo'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object panelTop: TPanel
      Left = 1
      Top = 1
      Width = 557
      Height = 41
      Align = alTop
      TabOrder = 1
      object cxLeyenda2: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Tabla...Agregando Datos'
        ParentColor = False
        ParentFont = False
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtImprimir: TcxButton
        Left = 464
        Top = 10
        Width = 83
        Height = 25
        Caption = 'Imprimir'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = edtImprimirClick
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 589
    Top = 35
    Width = 6
    Height = 602
    AlignSplitter = salRight
    Visible = False
  end
  object zqDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 280
    Top = 208
  end
  object ds_datos: TDataSource
    AutoEdit = False
    DataSet = zqDatos
    Left = 318
    Top = 200
  end
  object zReq: TUniQuery
    Connection = connection.Uconnection
    Left = 256
    Top = 368
  end
  object dsReq: TDataSource
    DataSet = zReq
    Left = 312
    Top = 368
  end
  object frxSeguimiento: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43348.826735601860000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 488
    Top = 136
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDatos
        DataSetName = 'frxDatos'
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
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 908.866730000000000000
          Top = 2.440940000000012000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Software No'#237'l Control de Personal *')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        DataSet = frxDatos
        DataSetName = 'frxDatos'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 36.783625720000010000
          Width = 367.236788030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDatos."Estatus"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 499.356725140000000000
          Width = 90.160764630000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."FechaSolicitud"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 403.976608190000000000
          Width = 94.371290940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDatos."Solicitud"]')
          ParentFont = False
        end
        object Line1: TfrxMemoView
          Width = 38.317498420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 589.473684210000000000
          Width = 150.652300040000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatos."Tiempo"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 175.826979130000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 64.252010000000040000
          Width = 739.397033330000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 241.750052230000000000
          Top = 68.692950000000040000
          Width = 265.249536670000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPORTE DE COSTO POR PERSONAL')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 624.900022220000000000
          Top = 14.461966670000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Width = 209.921460000000000000
          Height = 86.474232220000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 36.783625720000010000
          Top = 151.181200000000000000
          Width = 367.236788020000000000
          Height = 24.453205560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 5848068
          HAlign = haCenter
          Memo.UTF8W = (
            'Estatus')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 403.976608180000000000
          Top = 151.181200000000000000
          Width = 95.423922520000000000
          Height = 24.453205560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 5848068
          HAlign = haCenter
          Memo.UTF8W = (
            'Folio')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 499.356725140000000000
          Top = 151.181200000000000000
          Width = 90.160764630000000000
          Height = 24.453205560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 5848068
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Top = 151.181200000000000000
          Width = 38.317498420000000000
          Height = 24.453205560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 5848068
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 589.473684210000000000
          Top = 151.260050000000000000
          Width = 150.570121350000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 5848068
          HAlign = haCenter
          Memo.UTF8W = (
            'Dias Transcurridos')
          ParentFont = False
        end
      end
    end
  end
  object frxDatos: TfrxDBDataset
    UserName = 'frxDatos'
    CloseDataSource = False
    DataSet = Reporte
    BCDToCurrency = False
    Left = 496
    Top = 198
  end
  object Reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 675
    Top = 203
  end
end
