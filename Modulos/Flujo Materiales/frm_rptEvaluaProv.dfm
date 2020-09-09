object frmRptEvaluacionProv: TfrmRptEvaluacionProv
  Left = 0
  Top = 0
  Caption = 'Gr'#225'ficas de Evaluaci'#243'n de Proveedores'
  ClientHeight = 509
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 128
      Top = 1
      Width = 616
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 128
      ExplicitTop = 1
      ExplicitWidth = 616
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 616
        Height = 33
        ExplicitWidth = 616
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 0
          Height = 31
          Visible = False
          ExplicitLeft = 0
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 80
          Height = 31
          Visible = False
          ExplicitLeft = 80
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 160
          Height = 31
          Visible = False
          ExplicitLeft = 160
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 515
          Width = 100
          Height = 31
          Caption = 'M'#225's Filtros'
          OptionsImage.ImageIndex = 141
          OptionsImage.Images = frmrepositorio.IconosTodos16
          Visible = False
          OnClick = btnPrinterClick
          ExplicitLeft = 515
          ExplicitWidth = 100
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 407
          Width = 108
          Height = 31
          Hint = 'Ver Listado de Proveedores'
          Caption = 'Proveedores'
          OptionsImage.ImageIndex = 124
          OptionsImage.Images = frmrepositorio.IconosTodos16
          OnClick = btnReporteClick
          ExplicitLeft = 407
          ExplicitWidth = 108
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 240
          Height = 31
          Visible = False
          ExplicitLeft = 240
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 320
          Width = 87
          Height = 31
          Hint = 'Reporte Graf. Prov.'
          Caption = 'Reporte Graf. Prov.'
          Visible = False
          OnClick = btnExportaClick
          ExplicitLeft = 320
          ExplicitWidth = 87
          ExplicitHeight = 31
        end
      end
    end
  end
  object cxGraficos: TcxGrid
    Left = 279
    Top = 35
    Width = 466
    Height = 474
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GraficosView: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'DatoGrafica'
      Categories.DisplayText = 'Proveedor'
      DataController.DataSource = ds_grafico
      DiagramColumn.Active = True
      DiagramColumn.Values.BorderWidth = 2
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      Title.Text = 'Resultados de Evaluaci'#243'n'
      ToolBox.DiagramSelector = True
      object GraficosViewSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'PromedioCalificacion'
        DisplayText = 'Calificaci'#243'n (%)'
      end
    end
    object cxGraficosLevel1: TcxGridLevel
      GridView = GraficosView
    end
  end
  object cxSplitterP: TcxSplitter
    Left = 273
    Top = 35
    Width = 6
    Height = 474
    Visible = False
  end
  object PanelOps: TPanel
    Left = 0
    Top = 35
    Width = 273
    Height = 474
    Align = alLeft
    TabOrder = 3
    Visible = False
    object cxGridProveedores: TcxGrid
      Left = 1
      Top = 1
      Width = 271
      Height = 383
      Align = alClient
      TabOrder = 0
      object ProveedoresView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = ProveedoresViewCellClick
        DataController.DataSource = ds_proveedores
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = ProveedoresViewDataControllerFilterChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.SeparatorColor = 6248624
        FilterRow.SeparatorWidth = 10
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxColumn1: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'IdProveedor'
          Visible = False
        end
        object cxColumn2: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Proveedor'
          DataBinding.FieldName = 'Nombre'
        end
      end
      object cxGridProveedoresLevel1: TcxGridLevel
        GridView = ProveedoresView
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 384
      Width = 271
      Height = 89
      Align = alBottom
      TabOrder = 1
      Visible = False
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxFechaF1: TcxDateEdit
        Left = 80
        Top = 10
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = cxFechaF1PropertiesChange
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
      object cxFechaF2: TcxDateEdit
        Left = 80
        Top = 38
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = cxFechaF2PropertiesChange
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
        CaptionOptions.Text = 'Fecha Inicial'
        Control = cxFechaF1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Fecha Final'
        Control = cxFechaF2
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object uProveedores: TUniQuery
    FilterOptions = [foCaseInsensitive]
    Left = 448
    Top = 144
  end
  object uGrafico: TUniQuery
    Left = 552
    Top = 120
  end
  object ds_proveedores: TDataSource
    DataSet = uProveedores
    Left = 456
    Top = 216
  end
  object ds_grafico: TDataSource
    DataSet = uGrafico
    Left = 568
    Top = 208
  end
  object Reporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.429600810200000000
    ReportOptions.LastChange = 43797.783276527780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure GroupFooter4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      ''
      'begin'
      '  '
      'end.')
    OnReportPrint = 'no '
    Left = 344
    Top = 184
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.ds_GProv
        DataSetName = 'ds_GProv'
      end
      item
        DataSet = frmrepositorio.ds_GProvI
        DataSetName = 'ds_GProvI'
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
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 332.598425196850400000
        Top = 173.858380000000000000
        Width = 759.685530000000000000
        DataSet = frmrepositorio.ds_GProv
        DataSetName = 'ds_GProv'
        RowCount = 0
        object Chart2: TfrxChartView
          Left = 18.897650000000000000
          Top = 3.779529999999994000
          Width = 548.031496060000000000
          Height = 313.700787400000000000
          HighlightColor = clBlack
          Chart = {
            545046300654436861727405436861727410416C69676E576974684D61726769
            6E7309044C656674020003546F70020005576964746803900106486569676874
            03FA00144261636B57616C6C2E50656E2E56697369626C6508104C6567656E64
            2E416C69676E6D656E7407086C61426F74746F6D124C6567656E642E466F6E74
            2E48656967687402F7154C6567656E642E466F6E742E53697A65466C6F617405
            00000000000000F00140125469746C652E546578742E537472696E6773011427
            000000524553554C5441444F53204445204556414C55414349C3934E2028434F
            4D5041524154495641290016426F74746F6D417869732E4C6162656C73416E67
            6C65025A17426F74746F6D417869732E4C6162656C73426568696E640923426F
            74746F6D417869732E4C6162656C73466F726D61742E466F6E742E4865696768
            7402F721426F74746F6D417869732E4C6162656C73466F726D61742E466F6E74
            2E4E616D6506065461686F6D6117426F74746F6D417869732E4C6162656C734F
            6E41786973080D4672616D652E56697369626C65080F50616765732E4175746F
            5363616C6509225269676874417869732E4C6162656C73466F726D61742E466F
            6E742E48656967687402F7255269676874417869732E4C6162656C73466F726D
            61742E466F6E742E53697A65466C6F61740500000000000000F0014016566965
            7733444F7074696F6E732E526F746174696F6E02000A426576656C4F75746572
            070662764E6F6E6505436F6C6F720707636C57686974650D44656661756C7443
            616E766173060E54474449506C757343616E76617311436F6C6F7250616C6574
            7465496E646578020D000A544261725365726965730753657269657331114D61
            726B732E466F6E742E48656967687402F70D4D61726B732E56697369626C6508
            0B4D61726B732E416E676C65025A0F4D61726B732E4261636B436F6C6F7204EC
            F8E9000B4D61726B732E436F6C6F7204ECF8E9000B536572696573436F6C6F72
            04F39C3500055469746C65060950524F564545444F520B4175746F4261725369
            7A65090C5856616C7565732E4E616D650601580D5856616C7565732E4F726465
            72070B6C6F417363656E64696E670C5956616C7565732E4E616D650603426172
            0D5956616C7565732E4F7264657207066C6F4E6F6E6500000A54426172536572
            69657307536572696573320641637469766508114D61726B732E466F6E742E48
            656967687402F7055469746C65060E252043414C494649434143494F4E0C5856
            616C7565732E4E616D650601580D5856616C7565732E4F72646572070B6C6F41
            7363656E64696E670C5956616C7565732E4E616D6506034261720D5956616C75
            65732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              InheritedName = 'TfrxSeriesItem2'
              DataType = dtDBData
              DataBand = Reporte.MasterData1
              DataSet = frmrepositorio.ds_GProv
              DataSetName = 'ds_GProv'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'ds_GProv."NProveedor"'
              Source2 = 'ds_GProv."PromedioCalificacion"'
              XSource = 'ds_GProv."NProveedor"'
              YSource = 'ds_GProv."PromedioCalificacion"'
            end
            item
              InheritedName = 'TfrxSeriesItem3'
              DataType = dtDBData
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source2 = 'ds_GProv."PromedioCalificaciones"'
              YSource = 'ds_GProv."PromedioCalificaciones"'
            end>
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 332.598420310000000000
        Top = 529.134199999999900000
        Width = 759.685530000000000000
        DataSet = frmrepositorio.ds_GProv
        DataSetName = 'ds_GProv'
        RowCount = 0
        object Chart1: TfrxChartView
          Left = 18.897650000000000000
          Top = 7.559060000000045000
          Width = 548.031435040000000000
          Height = 313.700770310000000000
          HighlightColor = clBlack
          Chart = {
            545046300654436861727405436861727410416C69676E576974684D61726769
            6E7309044C656674020003546F70020005576964746803900106486569676874
            03FA00144261636B57616C6C2E50656E2E56697369626C6508104C6567656E64
            2E416C69676E6D656E7407086C61426F74746F6D124C6567656E642E466F6E74
            2E48656967687402F7154C6567656E642E466F6E742E53697A65466C6F617405
            00000000000000F00140105469746C652E53686170655374796C650711666F73
            526F756E6452656374616E676C65125469746C652E546578742E537472696E67
            73011429000000524553554C5441444F53204445204556414C55414349C3934E
            2028504F522050524F564545444F52290016426F74746F6D417869732E4C6162
            656C73416E676C65025A17426F74746F6D417869732E4C6162656C7342656869
            6E640923426F74746F6D417869732E4C6162656C73466F726D61742E466F6E74
            2E48656967687402F721426F74746F6D417869732E4C6162656C73466F726D61
            742E466F6E742E4E616D6506065461686F6D6117426F74746F6D417869732E4C
            6162656C734F6E41786973080D4672616D652E56697369626C65080F50616765
            732E4175746F5363616C6509225269676874417869732E4C6162656C73466F72
            6D61742E466F6E742E48656967687402F7255269676874417869732E4C616265
            6C73466F726D61742E466F6E742E53697A65466C6F61740500000000000000F0
            0140165669657733444F7074696F6E732E526F746174696F6E02000A42657665
            6C4F75746572070662764E6F6E6505436F6C6F720707636C57686974650D4465
            6661756C7443616E766173060E54474449506C757343616E76617311436F6C6F
            7250616C65747465496E646578020D000A544261725365726965730753657269
            657331114D61726B732E466F6E742E48656967687402F70D4D61726B732E5669
            7369626C65080B4D61726B732E416E676C65025A0F4D61726B732E4261636B43
            6F6C6F7204ECF8E9000B4D61726B732E436F6C6F7204ECF8E9000B5365726965
            73436F6C6F7204F39C3500055469746C65060D2543414C494649434143494F4E
            0B4175746F42617253697A65090C536861646F772E436F6C6F7204F39C35000C
            5856616C7565732E4E616D650601580D5856616C7565732E4F72646572070B6C
            6F417363656E64696E670C5956616C7565732E4E616D6506034261720D595661
            6C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              InheritedName = 'TfrxSeriesItem2'
              DataType = dtDBData
              DataBand = Reporte.DetailData1
              DataSet = frmrepositorio.ds_GProvI
              DataSetName = 'ds_GProvI'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'ds_GProv."NProveedor"'
              Source2 = 'ds_GProv."PromedioCalificacion"'
              XSource = 'ds_GProv."NProveedor"'
              YSource = 'ds_GProv."PromedioCalificacion"'
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 759.685530000000000000
        object Memo1: TfrxMemoView
          Left = 188.976500000000000000
          Top = 20.338590000000000000
          Width = 510.236550000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE EVALUACIONES DE PROVEEDORES')
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 922.205320000000000000
        Width = 759.685530000000000000
        object Memo2: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
end
