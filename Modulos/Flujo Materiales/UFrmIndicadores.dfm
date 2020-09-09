object FrmIndicadores: TFrmIndicadores
  Left = 0
  Top = 0
  Caption = 'Consultas e Indicadores'
  ClientHeight = 514
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Consultas e Indicadores'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 445
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 445
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        ExplicitWidth = 556
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
          Left = 395
          Height = 31
          ExplicitLeft = 395
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 475
          Height = 31
          Enabled = False
          OnClick = btnDetalleClick
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Tag = 13
          Width = 74
          Height = 31
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitWidth = 74
          ExplicitHeight = 31
        end
      end
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 121
    Top = 85
    Width = 881
    Height = 429
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = cxTabTiempo3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 427
    ClientRectLeft = 2
    ClientRectRight = 879
    ClientRectTop = 30
    object cxTabTiempo1: TcxTabSheet
      Caption = 'REQUERIDO VS SOLICITADO'
      ImageIndex = 0
      OnShow = cxTabTiempo1Show
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 395
        Height = 397
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridDT1: TcxGrid
          Left = 11
          Top = 11
          Width = 787
          Height = 352
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDT1View: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridDT1ViewCellDblClick
            DataController.DataSource = dsIndTiempo
            DataController.Filter.Options = [fcoCaseInsensitive]
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
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'C'#243'digo Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 50
            end
            object cxGridDT1ViewColumn2: TcxGridDBColumn
              Caption = 'Centro de Costo'
              DataBinding.FieldName = 'DescripcionCC'
              Width = 57
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Requisicion'
              Width = 77
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Fecha Solicitud'
              DataBinding.FieldName = 'dFechaSolicitado'
              Width = 72
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Fecha Requerida'
              DataBinding.FieldName = 'dFechaRequerido'
              Width = 75
            end
            object cxGridDT1ViewColumn1: TcxGridDBColumn
              Caption = 'D'#237'as'
              DataBinding.FieldName = 'RangoDias'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 41
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDT1View
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxGridDT1
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object spltDT1: TcxSplitter
        Left = 395
        Top = 0
        Width = 8
        Height = 397
        AlignSplitter = salRight
        Visible = False
      end
      object pnlDT1: TPanel
        Left = 403
        Top = 0
        Width = 474
        Height = 397
        Align = alRight
        TabOrder = 2
        Visible = False
        object cxGridDT1Det: TcxGrid
          Left = 1
          Top = 1
          Width = 472
          Height = 140
          Align = alClient
          TabOrder = 0
          object cxGridDT1DetView: TcxGridDBTableView
            OnKeyUp = cxGridDT1DetViewKeyUp
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = cxGridDT1DetViewCellClick
            DataController.DataSource = dsIndTiempoDet
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Promedio:'
                Kind = skCount
                Column = cxGridDT1DetViewColumn7
                DisplayText = 'Promedio:'
              end
              item
                Format = '0.00'
                Kind = skAverage
                OnGetText = cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
                Column = cxGridDT1DetViewColumn2
                DisplayText = '0.00'
              end
              item
              end
              item
                Format = '0.00'
                Kind = skAverage
                OnGetText = cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
                Column = cxGridDT1DetViewColumn3
                DisplayText = '0.00'
              end
              item
                Format = '0.00'
                Kind = skAverage
                OnGetText = cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
                Column = cxGridDT1DetViewColumn4
                DisplayText = '0.00'
              end
              item
                Format = '0.00'
                Kind = skAverage
                OnGetText = cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText
                Column = cxGridDT1DetViewColumn5
                DisplayText = '0.00'
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            object cxGridDT1DetViewColumn6: TcxGridDBColumn
              Caption = 'Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 56
            end
            object cxGridDT1DetViewColumn7: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'DescripcionCC'
              Width = 67
            end
            object cxGridDT1DetViewColumn2: TcxGridDBColumn
              Caption = '% Rango 0-1'
              DataBinding.FieldName = 'Por1'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taRightJustify
              Width = 75
            end
            object cxGridDT1DetViewColumn3: TcxGridDBColumn
              Caption = '% Rango 2-3'
              DataBinding.FieldName = 'Por2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taRightJustify
              Width = 75
            end
            object cxGridDT1DetViewColumn4: TcxGridDBColumn
              Caption = '% Rango 4-5'
              DataBinding.FieldName = 'Por3'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taRightJustify
              Width = 75
            end
            object cxGridDT1DetViewColumn5: TcxGridDBColumn
              Caption = '% Rango 6-...'
              DataBinding.FieldName = 'Por4'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taRightJustify
              Width = 75
            end
          end
          object cxGridDT1DetLevel1: TcxGridLevel
            GridView = cxGridDT1DetView
          end
        end
        object cxSplitter2: TcxSplitter
          Left = 1
          Top = 141
          Width = 472
          Height = 8
          AlignSplitter = salBottom
        end
        object cxPageControl2: TcxPageControl
          Left = 1
          Top = 149
          Width = 472
          Height = 247
          Align = alBottom
          TabOrder = 2
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 245
          ClientRectLeft = 2
          ClientRectRight = 470
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Centro de Costo'
            ImageIndex = 0
            object cxGridGraficoDT1: TcxGrid
              Left = 0
              Top = 0
              Width = 468
              Height = 215
              Align = alClient
              TabOrder = 0
              object cxGridGraficoDT1View: TcxGridDBChartView
                Categories.DataBinding.FieldName = 'tiporango'
                DataController.DataSource = dsGraficoDT1
                DiagramPie.Active = True
                ToolBox.DiagramSelector = True
                ToolBox.Visible = tvAlways
                object cxGridGraficoDT1ViewSeries1: TcxGridDBChartSeries
                  DataBinding.FieldName = 'porc'
                  DisplayText = 'Porcentajes de CC'
                  ValueCaptionFormat = '0.00 %'
                end
              end
              object cxGridGraficoDT1Level1: TcxGridLevel
                GridView = cxGridGraficoDT1View
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Promedio General'
            ImageIndex = 1
            object cxGridGraficoDT2: TcxGrid
              Left = 0
              Top = 0
              Width = 468
              Height = 215
              Align = alClient
              TabOrder = 0
              object cxGridGraficoDT2View1: TcxGridDBChartView
                Categories.DataBinding.FieldName = 'tiporango'
                DataController.DataSource = dsGraficoDT2
                DiagramPie.Active = True
                ToolBox.DiagramSelector = True
                ToolBox.Visible = tvAlways
                object cxGridDBChartSeries1: TcxGridDBChartSeries
                  DataBinding.FieldName = 'porc'
                  DisplayText = 'Porcentajes de CC'
                  ValueCaptionFormat = '0.00 %'
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridGraficoDT2View1
              end
            end
          end
        end
      end
    end
    object cxTabTiempo2: TcxTabSheet
      Caption = '% DE CUMPLIMIENTO COMPRADORES'
      ImageIndex = 1
      OnShow = cxTabTiempo2Show
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 877
        Height = 397
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridTiempos: TcxGrid
          Left = 11
          Top = 11
          Width = 105
          Height = 161
          TabOrder = 0
          object cxGridTiemposView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridTiemposViewCellDblClick
            DataController.DataSource = dsIndTiempo2
            DataController.Filter.Options = [fcoCaseInsensitive]
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
            object cxGridCC: TcxGridDBColumn
              Caption = 'C'#243'digo Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 64
            end
            object cxGridTiemposViewColumn3: TcxGridDBColumn
              Caption = 'Centro de Costo'
              DataBinding.FieldName = 'DescripcionCC'
              Width = 56
            end
            object cxGridReq: TcxGridDBColumn
              DataBinding.FieldName = 'Requisicion'
              Width = 92
            end
            object cxGridTiemposViewColumn2: TcxGridDBColumn
              Caption = 'Orden Compra'
              DataBinding.FieldName = 'OC'
              Width = 92
            end
            object cxGridPartidas: TcxGridDBColumn
              Caption = 'Partidas'
              DataBinding.FieldName = 'mDescripcion'
              Width = 55
            end
            object cxGridSolicitado: TcxGridDBColumn
              Caption = 'Fecha Solicitud'
              DataBinding.FieldName = 'dFechaSolicitado'
              Width = 92
            end
            object cxGridFechaRequerido: TcxGridDBColumn
              Caption = 'Fecha Requerida'
              DataBinding.FieldName = 'dFechaRequerido'
              Width = 79
            end
            object cxGridTiemposViewColumn1: TcxGridDBColumn
              Caption = 'Fecha OC'
              DataBinding.FieldName = 'FechaOrden'
              Width = 82
            end
            object cxGridTiemposViewColumn4: TcxGridDBColumn
              Caption = 'Fecha de Entrada'
              DataBinding.FieldName = 'FechaEntrada'
              Width = 93
            end
            object cxGridPorcentaje: TcxGridDBColumn
              Caption = '% En tiempo'
              DataBinding.FieldName = 'PorEnTiempo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 67
            end
            object cxGridEstado: TcxGridDBColumn
              DataBinding.FieldName = 'Estado'
              Width = 69
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridTiemposView
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Control = cxGridTiempos
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabDesemp1: TcxTabSheet
      Caption = '% PARTIDAS COLOCADAS (OC)'
      ImageIndex = 2
      OnShow = cxTabDesemp1Show
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 877
        Height = 397
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridDesemp1: TcxGrid
          Left = 11
          Top = 11
          Width = 854
          Height = 375
          TabOrder = 0
          object cxGridDesemp1View: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridDesemp1ViewCellDblClick
            DataController.DataSource = dsDesempeño1
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridCentroC: TcxGridDBColumn
              Caption = 'C'#243'digo Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 73
            end
            object cxGridDesemp1ViewColumn2: TcxGridDBColumn
              Caption = 'Centro de Costo'
              DataBinding.FieldName = 'DescripcionCC'
              Width = 62
            end
            object cxGridRequi: TcxGridDBColumn
              Caption = 'Requisici'#243'n'
              DataBinding.FieldName = 'Requisicion'
              Width = 71
            end
            object cxGridDesemp1ViewColumn1: TcxGridDBColumn
              Caption = 'Orden Compra'
              DataBinding.FieldName = 'OC'
              Width = 88
            end
            object cxGridPartida: TcxGridDBColumn
              Caption = 'Partidas'
              DataBinding.FieldName = 'Partida'
              Width = 112
            end
            object cxGridFSolicitud: TcxGridDBColumn
              Caption = 'Fecha Solicitud'
              DataBinding.FieldName = 'dFechaSolicitado'
              Width = 104
            end
            object cxGridFRequerida: TcxGridDBColumn
              Caption = 'Fecha Requerida'
              DataBinding.FieldName = 'dFechaRequerido'
              Width = 104
            end
            object cxGridCosto: TcxGridDBColumn
              Caption = 'Costo'
              DataBinding.FieldName = 'dCosto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Width = 95
            end
            object cxGridParColocadas: TcxGridDBColumn
              Caption = '% Partidas Colocadas O.C.'
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 132
            end
          end
          object cxGridDesemp1Level1: TcxGridLevel
            GridView = cxGridDesemp1View
          end
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxGridDesemp1
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabDesemp2: TcxTabSheet
      Caption = '% RECEPCI'#211'N DE PARTIDAS COLOCADAS'
      ImageIndex = 3
      OnShow = cxTabDesemp2Show
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 877
        Height = 397
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridDesemp2: TcxGrid
          Left = 11
          Top = 11
          Width = 854
          Height = 375
          TabOrder = 0
          object cxGridDesemp2View: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridDesemp2ViewCellDblClick
            DataController.DataSource = dsDesempeño2
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridCC2: TcxGridDBColumn
              Caption = 'C'#243'digo Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 80
            end
            object cxGridDesemp2ViewColumn2: TcxGridDBColumn
              Caption = 'Centro de Costo'
              DataBinding.FieldName = 'DescripcionCC'
            end
            object cxGridRequ: TcxGridDBColumn
              Caption = 'Requisici'#243'n'
              DataBinding.FieldName = 'Requisicion'
              Width = 110
            end
            object cxGridDesemp2ViewColumn1: TcxGridDBColumn
              Caption = 'Orden Compra'
              DataBinding.FieldName = 'OC'
              Width = 110
            end
            object cxGridPart: TcxGridDBColumn
              Caption = 'Partidas'
              DataBinding.FieldName = 'Partida'
              Width = 100
            end
            object cxGridFSolicitudo: TcxGridDBColumn
              Caption = 'Fecha Solicitud'
              DataBinding.FieldName = 'Solicitado'
              Width = 100
            end
            object cxGridFRequerido: TcxGridDBColumn
              Caption = 'Fecha Requerido'
              DataBinding.FieldName = 'Requerido'
              Width = 100
            end
            object cxGridCosto2: TcxGridDBColumn
              Caption = 'Costo'
              DataBinding.FieldName = 'dCosto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '$,0.00;-$,0.00'
              Width = 100
            end
            object cxGridstatus: TcxGridDBColumn
              Caption = 'Estado'
              DataBinding.FieldName = 'Estatus'
              Width = 100
            end
            object cxGridPorecibidas: TcxGridDBColumn
              Caption = '% Partidas Recibidas '
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 100
            end
          end
          object cxGridDesemp2Level1: TcxGridLevel
            GridView = cxGridDesemp2View
          end
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem12: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxGridDesemp2
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabTiempo3: TcxTabSheet
      Caption = '% DE CUMPLIMIENTO PROVEEDORES'
      ImageIndex = 4
      OnShow = cxTabTiempo3Show
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 877
        Height = 397
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGridTiempo3: TcxGrid
          Left = 11
          Top = 11
          Width = 105
          Height = 161
          TabOrder = 0
          object cxGridViewCumplimientoProveedor: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGridViewCumplimientoProveedorCellDblClick
            DataController.DataSource = dsIndTiempo3
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
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'C'#243'digo Centro Costo'
              DataBinding.FieldName = 'CC'
              Width = 64
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Centro de Costo'
              DataBinding.FieldName = 'DescripcionCC'
              Width = 56
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'Requisicion'
              Width = 92
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Orden Compra'
              DataBinding.FieldName = 'OC'
              Width = 92
            end
            object cxGridViewCumplimientoProveedorColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Proveedor'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Partidas'
              DataBinding.FieldName = 'mDescripcion'
              Width = 130
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Fecha Solicitud'
              DataBinding.FieldName = 'dFechaSolicitado'
              Width = 85
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Fecha Requerida'
              DataBinding.FieldName = 'dFechaRequerido'
              Width = 85
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Fecha OC'
              DataBinding.FieldName = 'FechaOrden'
              Width = 85
            end
            object cxGridViewCumplimientoProveedorColumn1: TcxGridDBColumn
              Caption = 'Fecha de Entrega OC'
              DataBinding.FieldName = 'FechaOCEntrega'
              Width = 85
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Entrega Partida'
              DataBinding.FieldName = 'FechaEntrada'
              Width = 85
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = '% En tiempo'
              DataBinding.FieldName = 'PorEnTiempo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 67
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = 'Estado'
              Width = 69
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridViewCumplimientoProveedor
          end
        end
        object dxLayoutGroup3: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Control = cxGridTiempo3
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object cxLista: TcxListView
    Left = 0
    Top = 85
    Width = 113
    Height = 429
    Align = alLeft
    Columns = <>
    IconOptions.AutoArrange = True
    Items.ItemData = {
      05520000000200000050000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      00065400690065006D0070006F003D000000FFFFFFFFFFFFFFFF00000000FFFF
      FFFF000000000944006500730065006D0070006500F1006F00}
    LargeImages = frmrepositorio.IconosTodos32
    ParentFont = False
    RowSelect = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleFocused.Color = clWhite
    StyleFocused.TextColor = clNone
    TabOrder = 2
    OnChange = cxListaChange
  end
  object cxSplitter1: TcxSplitter
    Left = 113
    Top = 85
    Width = 8
    Height = 429
  end
  object PanelOpciones: TPanel
    Left = 0
    Top = 35
    Width = 1002
    Height = 50
    Align = alTop
    TabOrder = 4
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1000
      Height = 48
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxLimpiaFiltro: TcxButton
        Left = 883
        Top = 11
        Width = 106
        Height = 25
        Caption = 'Limpiar Filtro'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        OnClick = cxLimpiaFiltroClick
      end
      object cxButton1: TcxButton
        Left = 11
        Top = 11
        Width = 45
        Height = 25
        OptionsImage.ImageIndex = 65
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxFiltroRequerido: TcxButton
        Left = 680
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = cxFiltroRequeridoClick
      end
      object cxLabel1: TcxLabel
        Left = 335
        Top = 14
        Caption = 'Requeridas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxInicioRequerido: TcxDateEdit
        Left = 445
        Top = 12
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 100
      end
      object cxFinRequerido: TcxDateEdit
        Left = 574
        Top = 12
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 100
      end
      object cxOpcionesFiltro: TcxComboBox
        Left = 123
        Top = 12
        ParentFont = False
        Properties.Items.Strings = (
          'Todas las requisiciones'
          'Fecha Requisici'#243'n'
          'Fecha Requerida')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Aril'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Text = 'cxOpcionesFiltro'
        Width = 206
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxLimpiaFiltro
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxFiltroRequerido
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avCenter
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioRequerido
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinRequerido
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avCenter
        CaptionOptions.Text = 'Filtrar por:'
        Control = cxOpcionesFiltro
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object zIndTiempo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select '
      
        '  ar.sNumFolio as Requisicion, ot.sIdFolio as CC, ot.mDescripcio' +
        'n as DescripcionCC, ar.sNumeroOrdenCentroC, ot.sNumeroOrden,'
      '  ar.dFechaSolicitado, '
      '  ar.dFechaRequerido,   '
      
        '(select  DATEDIFF(ar.dFechaRequerido, ar.dFechaSolicitado)) as R' +
        'angoDias,'
      '('
      '  select '
      
        '  count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2' +
        '  where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDI' +
        'FF(ar2.dFechaRequerido, ar2.dFechaSolicitado) >= 0 and DATEDIFF(' +
        'ar2.dFechaRequerido, ar2.dFechaSolicitado) <=1)  limit 1)) as di' +
        'as'
      '  from anexo_requisicion as ar2'
      
        '  inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.' +
        'sNumeroOrdenCentroC )'
      
        '  where ar.sContrato  like :Contrato and  (ar.sStatus <> '#39'CANCEL' +
        'ADO'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '  (ot.sIdFolio = ot3.sIdFolio) and '
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        ')) and'
      '  ('
      '    select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  '
      '    where  ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and '
      
        '    (DATEDIFF(ar2.dFechaRequerido, ar2.dFechaSolicitado) >= 0 an' +
        'd DATEDIFF(ar2.dFechaRequerido, ar2.dFechaSolicitado) <=1) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar.dFechaRequerido between :FechaIR and :FechaFR)))' +
        ' and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar.dFechaSolicitado between :FechaIS and :FechaFS))' +
        ') '
      '  )'
      '  order by ot3.sIdFolio asc    '
      ') as R_01,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 1 and DATEDIFF(ar2' +
        '.dFechaRequerido, ar2.dFechaSolicitado) <=3)  limit 1)) as dias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      
        'where ar.sContrato  like :Contrato and (ar.sStatus <> '#39'CANCELADO' +
        #39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '(ot.sIdFolio = ot3.sIdFolio) and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >1 and DATEDIFF(ar2.dFechaR' +
        'equerido, ar2.dFechaSolicitado) <=3)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_23,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 3 and DATEDIFF(ar2' +
        '.dFechaRequerido, ar2.dFechaSolicitado) <=5)  limit 1)) as dias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      
        'where ar.sContrato  like :Contrato and  (ar.sStatus <> '#39'CANCELAD' +
        'O'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '(ot.sIdFolio = ot3.sIdFolio) and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >3 and DATEDIFF(ar2.dFechaR' +
        'equerido, ar2.dFechaSolicitado) <=5)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_45,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 5)  limit 1)) as d' +
        'ias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      'where ar.sContrato  like :Contrato and  '
      
        '(ot.sIdFolio = ot3.sIdFolio) and  (ar.sStatus <> '#39'CANCELADO'#39' and' +
        ' ar.sStatus <> '#39'RECHAZADO'#39') and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >5)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_M5,'
      '(select R_01 + R_23 + R_45 + R_M5) as total,'
      '(select (R_01/Total)*100) as Por1,'
      '(select (R_23/Total)*100) as Por2,'
      '(select (R_45/Total)*100) as Por3,'
      '(select (R_M5/Total)*100) as Por4,'
      '(select Por1 + Por2 + Por3 + Por4) as TotalPor,'
      
        '(select ot.sIdFolio from ordenesdetrabajo as ot where ot.sNumero' +
        'Orden=ar.sNumeroOrden   limit 1) as Proyecto,'
      ':FechaIR as FechaIR,'
      ':FechaFR as FechaFR,'
      ':FechaIS as FechaIS,'
      ':FechaFS as FechaFS'
      'from anexo_requisicion as ar'
      ' '
      
        'inner join ordenesdetrabajo as ot on (ot.sNumeroOrden = ar.sNume' +
        'roOrdenCentroC )'
      ''
      'where ar.sContrato  like :Contrato and '
      '  (:CC= -1 or (:CC <> -1 and :CC = ot.sIdFolio)) and  '
      '(ar.sStatus <> '#39'CANCELADO'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar.dFechaRequerido between :FechaIR and :FechaFR)))' +
        ' and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar.dFechaSolicitado between :FechaIS and :FechaFS))' +
        ')'
      
        ' group by if(:GrupoCC='#39'Si'#39', ar.sNumeroOrdenCentroC,ar.iFolioRequ' +
        'isicion)'
      'order by ot.sIdFolio asc')
    Left = 250
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaIR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaFR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaIS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaFS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GrupoCC'
        Value = nil
      end>
  end
  object dsIndTiempo: TDataSource
    DataSet = zIndTiempo
    Left = 202
    Top = 103
  end
  object dsIndTiempo2: TDataSource
    DataSet = zIndTiempo2
    Left = 392
    Top = 104
  end
  object zIndTiempo2: TUniQuery
    Connection = connection.Uconnection
    Left = 320
    Top = 96
  end
  object zIndTiempoDet: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select '
      
        '  ar.sNumFolio as Requisicion, ot.sIdFolio as CC, ot.mDescripcio' +
        'n as DescripcionCC, ar.sNumeroOrdenCentroC, ot.sNumeroOrden,'
      '  ar.dFechaSolicitado, '
      '  ar.dFechaRequerido,   '
      
        '(select  DATEDIFF(ar.dFechaRequerido, ar.dFechaSolicitado)) as R' +
        'angoDias,'
      '('
      '  select '
      
        '  count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2' +
        '  where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDI' +
        'FF(ar2.dFechaRequerido, ar2.dFechaSolicitado) >= 0 and DATEDIFF(' +
        'ar2.dFechaRequerido, ar2.dFechaSolicitado) <=1)  limit 1)) as di' +
        'as'
      '  from anexo_requisicion as ar2'
      
        '  inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.' +
        'sNumeroOrdenCentroC )'
      
        '  where ar.sContrato  like :Contrato and  (ar.sStatus <> '#39'CANCEL' +
        'ADO'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '  (ot.sIdFolio = ot3.sIdFolio) and '
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        ')) and'
      '  ('
      '    select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  '
      '    where  ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and '
      
        '    (DATEDIFF(ar2.dFechaRequerido, ar2.dFechaSolicitado) >= 0 an' +
        'd DATEDIFF(ar2.dFechaRequerido, ar2.dFechaSolicitado) <=1) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar.dFechaRequerido between :FechaIR and :FechaFR)))' +
        ' and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar.dFechaSolicitado between :FechaIS and :FechaFS))' +
        ') '
      '  )'
      '  order by ot3.sIdFolio asc    '
      ') as R_01,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 1 and DATEDIFF(ar2' +
        '.dFechaRequerido, ar2.dFechaSolicitado) <=3)  limit 1)) as dias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      
        'where ar.sContrato  like :Contrato and (ar.sStatus <> '#39'CANCELADO' +
        #39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '(ot.sIdFolio = ot3.sIdFolio) and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >1 and DATEDIFF(ar2.dFechaR' +
        'equerido, ar2.dFechaSolicitado) <=3)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_23,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 3 and DATEDIFF(ar2' +
        '.dFechaRequerido, ar2.dFechaSolicitado) <=5)  limit 1)) as dias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      
        'where ar.sContrato  like :Contrato and  (ar.sStatus <> '#39'CANCELAD' +
        'O'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      '(ot.sIdFolio = ot3.sIdFolio) and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >3 and DATEDIFF(ar2.dFechaR' +
        'equerido, ar2.dFechaSolicitado) <=5)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_45,'
      '('
      'select '
      
        'count((select count(ot2.sIdFolio) from ordenesdetrabajo as ot2  ' +
        'where  ot2.sNumeroOrden = ar2.sNumeroOrdenCentroC and ( DATEDIFF' +
        '(ar2.dFechaRequerido, ar2.dFechaSolicitado) > 5)  limit 1)) as d' +
        'ias'
      'from anexo_requisicion as ar2'
      
        'inner join ordenesdetrabajo as ot3 on (ot3.sNumeroOrden = ar2.sN' +
        'umeroOrdenCentroC)'
      'where ar.sContrato  like :Contrato and  '
      
        '(ot.sIdFolio = ot3.sIdFolio) and  (ar.sStatus <> '#39'CANCELADO'#39' and' +
        ' ar.sStatus <> '#39'RECHAZADO'#39') and'
      
        '(select count(ot4.sIdFolio) from ordenesdetrabajo as ot4  where ' +
        ' ot4.sNumeroOrden = ar2.sNumeroOrdenCentroC and (DATEDIFF(ar2.dF' +
        'echaRequerido, ar2.dFechaSolicitado) >5)) and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar2.dFechaRequerido between :FechaIR and :FechaFR))' +
        ') and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar2.dFechaSolicitado between :FechaIS and :FechaFS)' +
        '))'
      'order by ot3.sIdFolio asc    '
      ')as R_M5,'
      '(select R_01 + R_23 + R_45 + R_M5) as total,'
      '(select (R_01/Total)*100) as Por1,'
      '(select (R_23/Total)*100) as Por2,'
      '(select (R_45/Total)*100) as Por3,'
      '(select (R_M5/Total)*100) as Por4,'
      '(select Por1 + Por2 + Por3 + Por4) as TotalPor,'
      
        '(select ot.sIdFolio from ordenesdetrabajo as ot where ot.sNumero' +
        'Orden=ar.sNumeroOrden   limit 1) as Proyecto,'
      ':FechaIR as FechaIR,'
      ':FechaFR as FechaFR,'
      ':FechaIS as FechaIS,'
      ':FechaFS as FechaFS'
      'from anexo_requisicion as ar'
      
        'inner join ordenesdetrabajo as ot on (ot.sNumeroOrden = ar.sNume' +
        'roOrdenCentroC )'
      'where ar.sContrato  like :Contrato and '
      '  (:CC= -1 or (:CC <> -1 and :CC = ot.sIdFolio)) and  '
      '(ar.sStatus <> '#39'CANCELADO'#39' and ar.sStatus <> '#39'RECHAZADO'#39') and'
      
        '    ((:FechaIR=-1 and :FechaFR=-1) or ((:FechaIR<>-1 and :FechaF' +
        'R<>-1) and ( ar.dFechaRequerido between :FechaIR and :FechaFR)))' +
        ' and'
      
        '    ((:FechaIS=-1 and :FechaFS=-1) or ((:FechaIS<>-1 and :FechaF' +
        'S<>-1) and ( ar.dFechaSolicitado between :FechaIS and :FechaFS))' +
        ')'
      
        ' group by if(:GrupoCC='#39'Si'#39', ar.sNumeroOrdenCentroC,ar.iFolioRequ' +
        'isicion)'
      'order by ot.sIdFolio asc')
    Left = 163
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaIR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaFR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaIS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaFS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GrupoCC'
        Value = nil
      end>
  end
  object dsIndTiempoDet: TDataSource
    DataSet = zIndTiempoDet
    Left = 603
    Top = 241
  end
  object dsDesempeño1: TDataSource
    DataSet = zIndDesemp1
    Left = 697
    Top = 245
  end
  object zIndDesemp1: TUniQuery
    Connection = connection.Uconnection
    Left = 441
    Top = 109
  end
  object dsDesempeño2: TDataSource
    DataSet = zIndDesemp2
    Left = 777
    Top = 245
  end
  object zIndDesemp2: TUniQuery
    Connection = connection.Uconnection
    Left = 505
    Top = 109
  end
  object zGraficoDT1: TUniQuery
    Connection = connection.Uconnection
    Left = 935
    Top = 179
  end
  object dsGraficoDT1: TDataSource
    DataSet = mGraf
    Left = 559
    Top = 411
  end
  object mGraf: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 559
    Top = 363
    object mGrafcc: TStringField
      FieldName = 'cc'
      Size = 10
    end
    object mGraftiporango: TStringField
      FieldName = 'tiporango'
    end
    object mGrafporc: TFloatField
      FieldName = 'porc'
    end
  end
  object dsGraf1: TDataSource
    DataSet = mGraf
    Left = 567
    Top = 307
  end
  object dsGraficoDT2: TDataSource
    DataSet = mGraf2
    Left = 647
    Top = 387
  end
  object mGraf2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 639
    Top = 323
    object StringField1: TStringField
      FieldName = 'cc'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'tiporango'
    end
    object FloatField1: TFloatField
      FieldName = 'porc'
    end
  end
  object zIndTiempo3: TUniQuery
    Left = 939
    Top = 259
  end
  object dsIndTiempo3: TDataSource
    DataSet = zIndTiempo3
    Left = 923
    Top = 323
  end
end
