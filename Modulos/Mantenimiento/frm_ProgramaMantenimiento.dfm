object FrmProgramaMantenimiento: TFrmProgramaMantenimiento
  Left = 0
  Top = 0
  Caption = 'Plan Anual de Mantenimientos'
  ClientHeight = 502
  ClientWidth = 1197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1197
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1197
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 640
      Top = 1
      Width = 556
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 640
      ExplicitTop = 1
      ExplicitWidth = 556
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 556
        Height = 33
        ExplicitWidth = 556
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = -5
          Height = 31
          Visible = False
          ExplicitLeft = -5
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 75
          Height = 31
          Visible = False
          ExplicitLeft = 75
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 155
          Height = 31
          Visible = False
          ExplicitLeft = 155
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 395
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 395
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 475
          Height = 31
          OnClick = btnDetalleClick
          ExplicitLeft = 475
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 235
          Height = 31
          ExplicitLeft = 235
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 315
          Height = 31
          ExplicitLeft = 315
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Programa de Mantenimientos'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LabelProceso: TcxLabel
      Left = 355
      Top = 8
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
    end
    object progreso: TcxProgressBar
      Left = 447
      Top = 11
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 146
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1197
    Height = 467
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 657
      Height = 465
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 428
        Width = 655
        Height = 36
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object pnlBtn2: TPanel
          Left = 1
          Top = -1
          Width = 653
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 463
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 463
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Width = 189
              Height = 34
              ExplicitWidth = 189
              ExplicitHeight = 34
              inherited btnPost: TcxButton
                Left = 3
                Top = 1
                ExplicitLeft = 3
                ExplicitTop = 1
              end
              inherited btnCancel: TcxButton
                Left = 96
                Top = 1
                ExplicitLeft = 96
                ExplicitTop = 1
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 420
        Width = 655
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_mantenimiento: TcxGrid
        Left = 1
        Top = 1
        Width = 655
        Height = 419
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_mantenimiento: TcxGridDBTableView
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
          DataController.DataSource = dsSubfamilias
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxView_mantenimientoColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 79
          end
          object cxView_mantenimientoColumn1: TcxGridDBColumn
            Caption = 'Id de CheckList'
            DataBinding.FieldName = 'Codigo'
            Width = 79
          end
          object cxView_mantenimientoColumn2: TcxGridDBColumn
            Tag = 7
            DataBinding.FieldName = 'FrecuenciaMantenimiento'
            PropertiesClassName = 'TcxMemoProperties'
            Width = 79
          end
          object cxView_mantenimientoColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Familia'
            Visible = False
            GroupIndex = 1
          end
          object cxView_mantenimientoColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Visible = False
            GroupIndex = 0
          end
        end
        object grid_mantenimientoLevel1: TcxGridLevel
          GridView = cxView_mantenimiento
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 658
      Top = 1
      Width = 6
      Height = 465
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 664
      Top = 1
      Width = 532
      Height = 465
      Align = alRight
      TabOrder = 2
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 530
        Height = 463
        Align = alClient
        TabOrder = 0
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 528
          Height = 391
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          Properties.Images = connection.cxIconos16
          OnChange = cxPageDetalleChange
          ClientRectBottom = 389
          ClientRectLeft = 2
          ClientRectRight = 526
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Programar Fechas'
            ImageIndex = 11
            object cxGridMto: TcxGrid
              Left = 0
              Top = 0
              Width = 524
              Height = 274
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxView_Mto: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsMtoPrograma
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxView_MtoColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'Semana'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'Id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Semana'
                    end>
                  Properties.ListSource = dsSemana
                  Width = 135
                end
                object cxView_MtoColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Mes'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'Id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Mes'
                    end>
                  Properties.ListSource = dsMes
                  Width = 123
                end
                object cxView_MtoColumn1: TcxGridDBColumn
                  Caption = 'A'#241'o'
                  DataBinding.FieldName = 'Anio'
                  Width = 107
                end
                object cxView_MtoColumn6: TcxGridDBColumn
                  Caption = 'Observaci'#243'n'
                  DataBinding.FieldName = 'Observaciones'
                  Width = 144
                end
              end
              object cxGridMtoLevel1: TcxGridLevel
                GridView = cxView_Mto
              end
            end
            object PanelDown6: TPanel
              Left = 0
              Top = 280
              Width = 524
              Height = 80
              Align = alBottom
              TabOrder = 1
              Visible = False
              object dxLayoutControl5: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 522
                Height = 78
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object lcbMes: TcxDBLookupComboBox
                  Left = 40
                  Top = 10
                  DataBinding.DataField = 'Mes'
                  DataBinding.DataSource = dsMtoPrograma
                  ParentFont = False
                  Properties.KeyFieldNames = 'Id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Mes'
                    end>
                  Properties.ListSource = dsMes
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
                object cbAnio: TcxDBComboBox
                  Left = 407
                  Top = 10
                  DataBinding.DataField = 'Anio'
                  DataBinding.DataSource = dsMtoPrograma
                  ParentFont = False
                  Properties.Items.Strings = (
                    '2018'
                    '2019'
                    '2020'
                    '2021'
                    '2022'
                    '2023'
                    '2024'
                    '2025'
                    '2026'
                    '2027'
                    '2028'
                    '2029'
                    '2030')
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 121
                end
                object lcbSemana: TcxDBLookupComboBox
                  Left = 225
                  Top = 10
                  DataBinding.DataField = 'Semana'
                  DataBinding.DataSource = dsMtoPrograma
                  ParentFont = False
                  Properties.KeyFieldNames = 'Id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Semana'
                    end>
                  Properties.ListSource = dsSemana
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 145
                end
                object dxLayoutControl5Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem1: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup1
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Mes:'
                  Control = lcbMes
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem3: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup1
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'A'#241'o:'
                  Control = cbAnio
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl5Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem2: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup1
                  AlignVert = avClient
                  CaptionOptions.Text = 'Semana:'
                  Control = lcbSemana
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
            object cxSplitter4: TcxSplitter
              Left = 0
              Top = 274
              Width = 524
              Height = 6
              AlignSplitter = salBottom
              Visible = False
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Informes'
            ImageIndex = 31
            object PanelInferiorInforme: TPanel
              Left = 0
              Top = 210
              Width = 524
              Height = 150
              Align = alClient
              TabOrder = 0
              object cxGrid1: TcxGrid
                Left = 1
                Top = 1
                Width = 522
                Height = 148
                Align = alClient
                TabOrder = 0
                object cxGrid1DBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'Periodo'
                  Categories.DisplayText = 'Periodo'
                  DiagramColumn.Active = True
                  Title.Text = 'Gr'#225'fica de Movimientos Salidas'
                  object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'TotalSalida'
                    DisplayText = 'Total Mantenimientos'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBChartView1
                end
              end
            end
            object cxSplitInforme: TcxSplitter
              Left = 0
              Top = 204
              Width = 524
              Height = 6
              AlignSplitter = salTop
            end
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 524
              Height = 204
              Align = alTop
              TabOrder = 2
              object dxLayoutControl2: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 516
                Height = 196
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object opcionImprimir: TcxRadioGroup
                  Left = 10
                  Top = 10
                  Caption = 'Tipo de Informe'
                  ParentFont = False
                  Properties.Items = <
                    item
                      Caption = 'Imprimir datos filtrados'
                      Value = '1'
                    end
                    item
                      Caption = 'Imprimir Plan Anual de Mantenimiento.'
                      Value = '2'
                    end>
                  Properties.OnChange = opcionImprimirPropertiesChange
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Arial'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  DesignSize = (
                    495
                    105)
                  Height = 105
                  Width = 495
                  object cbAnios: TcxComboBox
                    Left = 304
                    Top = 72
                    Anchors = [akTop, akRight]
                    ParentFont = False
                    Properties.Items.Strings = (
                      '2018'
                      '2019'
                      '2020'
                      '2021'
                      '2022'
                      '2023'
                      '2024'
                      '2025'
                      '2026'
                      '2027'
                      '2028')
                    TabOrder = 2
                    Width = 177
                  end
                end
                object btnImpInforme: TcxButton
                  Left = 361
                  Top = 121
                  Width = 145
                  Height = 25
                  Caption = 'Imprimir'
                  OptionsImage.ImageIndex = 5
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnImpInformeClick
                end
                object dxLayoutControl2Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem14: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem15: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = btnImpInforme
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
          end
        end
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 528
          Height = 35
          Align = alTop
          TabOrder = 1
          DesignSize = (
            528
            35)
          object cxNuevoDetalle: TcxButton
            Left = 273
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
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
            Left = 360
            Top = 3
            Width = 81
            Height = 26
            Anchors = [akTop, akRight]
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
          object cxEliminarDetalle: TcxButton
            Left = 447
            Top = 3
            Width = 81
            Height = 26
            Hint = 'Eliminar registro (CTRL + D)'
            Align = alCustom
            Anchors = [akTop, akRight]
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxEliminarDetalleClick
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 427
          Width = 528
          Height = 35
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            528
            35)
          object cxCancelarDetalle: TcxButton
            Left = 443
            Top = 3
            Width = 84
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
            Left = 350
            Top = 3
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
    end
  end
  object frxDBGenMtos: TfrxDBDataset
    UserName = 'ds_GenMtos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 704
    Top = 280
  end
  object zReporteGenMto: TUniQuery
    Left = 704
    Top = 224
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43200.768803449070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo1 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem1"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := clGreen;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      ''
      ''
      'procedure Memo4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo4 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem2"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo32 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem21"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo47 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem3"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo3 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem4"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo7 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem5"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo8OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo8 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem6"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo9 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem7"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo10 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem9"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo11 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem9"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo13 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem10"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo14 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem11"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo15 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem12"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo16 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem13"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo17 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem14"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo25 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem15"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo27 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem16"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo6 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem17"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo29OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo29 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem18"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo30 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem19"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo31 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem20"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo33OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo33 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem22"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo34 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem23"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo18 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem24"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo38 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem25"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo40OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo40 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem26"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo41 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem27"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo19 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem28"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo43OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo43 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem29"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo44 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem30"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo46 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem31"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo85OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo85 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem32"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo86OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo86 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem33"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo87OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with Memo87 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem34"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo88OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo88 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem35"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo89OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo89 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem36"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo90OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo90 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem37"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo91OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo91 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem38"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo93OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo93 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem40"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo92OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo92 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem39"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo94OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo94 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem41"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo95OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo95 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem42"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo96OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo96 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem43"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo97OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo97 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem44"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo98OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo98 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem45"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo100OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo100 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem46"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo101OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo101 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem47"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'procedure Memo129OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  with Memo48 do'
      'begin'
      '  IF <dsGeneradorFolio."Sem48"> = '#39'*'#39' then'
      '  begin'
      ''
      '       If <dsGeneradorFolio."Frecuencia">='#39'Anual'#39' then'
      '       begin'
      '        Color := clRed;'
      '        Font.Color := clRed;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Semestral'#39' then'
      '       begin'
      '        Color := clYellow;'
      '        Font.Color := clYellow;'
      '       end'
      '       else If <dsGeneradorFolio."Frecuencia">='#39'Trimestral'#39' then'
      '       begin'
      '        Font.Color := $0000C462;'
      '        Color := $0000C462;'
      '       end'
      '       else if <dsGeneradorFolio."Frecuencia">='#39'Mensual'#39' then'
      '       begin'
      '        Color := clMenuHighlight;'
      '        Font.Color := clMenuHighlight;'
      '       end;'
      '  end'
      '  else'
      '       Color := clNone;'
      'end;'
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxReport1GetValue
    OnReportPrint = 'no '
    Left = 696
    Top = 352
    Datasets = <
      item
        DataSet = frmDiarioTurno2.dsGeneradorFolio
        DataSetName = 'dsGeneradorFolio'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
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
    object ProgramaMantenimiento: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 433.200000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 73.811055350000000000
        Top = 170.078850000000000000
        Width = 1561.701796000000000000
        AllowSplit = True
        Condition = 'dsGeneradorFolio."Grupo"'
        object Memo202: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1309.496910000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'DICIEMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1233.685840000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'NOVIEMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1157.874770000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'OCTUBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1081.725110000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'SEPTIEMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1005.914040000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'AGOSTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          ShiftMode = smDontShift
          Left = 929.662030000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'JULIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          ShiftMode = smDontShift
          Left = 853.512370000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'JUNIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          ShiftMode = smDontShift
          Left = 776.701300000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'MAYO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          ShiftMode = smDontShift
          Left = 700.890230000000000000
          Top = 28.346398110000110000
          Width = 77.102362204724400000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'ABRIL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          ShiftMode = smDontShift
          Left = 625.181510000000000000
          Top = 28.346398110000110000
          Width = 76.346464020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'MARZO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1386.346263040000000000
          Top = 50.901979090000000000
          Width = 173.102362204724400000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1367.189860000000000000
          Top = 51.133890000000010000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1348.567700470000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1329.551952440000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1310.536204410000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1291.520456370000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1272.504708340000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1253.488960310000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1234.473212280000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1215.457464250000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1196.441716220000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1177.425968190000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1158.410220150000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1139.394472120000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1120.378724090000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1101.362976060000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1082.347228030000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1063.331480000000000000
          Top = 51.023563459999990000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1044.015794410000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo467: TfrxMemoView
          Top = 28.346398110000110000
          Width = 473.196850390000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo469: TfrxMemoView
          Top = 2.230646979999989000
          Width = 1559.433070866142000000
          Height = 25.764303230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Grupo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.000046380000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1005.984298350000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 986.968550310000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 967.952802280000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 948.937054250000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 929.921306220000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 910.905558190000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 891.889810160000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 872.874062130000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          ShiftMode = smDontShift
          Left = 853.858314090000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          ShiftMode = smDontShift
          Left = 834.842566060000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          ShiftMode = smDontShift
          Left = 815.826818030000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          ShiftMode = smDontShift
          Left = 796.811070000000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          ShiftMode = smDontShift
          Left = 777.795321970000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 758.779573940000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 739.763825910000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 720.748077870000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          ShiftMode = smDontShift
          Left = 701.732329840000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          ShiftMode = smDontShift
          Left = 682.716581810000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 663.700833780000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          ShiftMode = smDontShift
          Left = 644.685085750000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          ShiftMode = smDontShift
          Left = 625.669337720000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          ShiftMode = smDontShift
          Left = 606.653589690000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          ShiftMode = smDontShift
          Left = 587.637841650000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          ShiftMode = smDontShift
          Left = 568.622093620000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.606345590000000000
          Top = 50.901979090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          ShiftMode = smDontShift
          Left = 530.590597560000000000
          Top = 50.901979089999910000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          ShiftMode = smDontShift
          Left = 511.574849530000000000
          Top = 50.901979089999910000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          ShiftMode = smDontShift
          Left = 492.559101500000000000
          Top = 50.901979089999910000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          ShiftMode = smDontShift
          Left = 473.716655040000000000
          Top = 50.901979089999910000
          Width = 18.897637795275600000
          Height = 22.677165354330700000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 328.819110000000000000
          Top = 51.023563459999990000
          Width = 144.378004020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'Frecuencia')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          ShiftMode = smDontShift
          Left = 235.464554720000000000
          Top = 50.901979089999910000
          Width = 95.244114020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'ID CHECK LIST')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          ShiftMode = smDontShift
          Left = 30.236240000000000000
          Top = 50.901979089999910000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'SubFamilia')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          ShiftMode = smDontShift
          Top = 50.901979089999910000
          Width = 30.236220470000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'PDA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          ShiftMode = smDontShift
          Left = 548.031850000000000000
          Top = 28.346398110000110000
          Width = 77.102362204724400000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'FEBRERO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          ShiftMode = smDontShift
          Left = 472.441250000000000000
          Top = 28.346398110000110000
          Width = 76.724409450000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'ENERO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 1386.087510000000000000
          Top = 28.456710000000020000
          Width = 173.480314960629900000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 313.700990000000000000
        Width = 1561.701796000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frmDiarioTurno2.dsGeneradorFolio
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1386.346263040000000000
          Width = 173.102362204724400000
          Height = 22.677165350000000000
          OnAfterData = 'Memo2OnAfterData'
          OnBeforePrint = 'Memo2OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1082.347228030000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo86OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem33"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1101.362976060000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo87OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem34"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1120.378724090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo88OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem35"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1139.394472120000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo89OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem36"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1158.410220150000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo90OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem37"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1177.425968190000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo91OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem38"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1196.441716220000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo92OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem39"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1215.457464250000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo93OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem40"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1234.473212280000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo94OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem41"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1253.488960310000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo95OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem42"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1272.504708340000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo96OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem43"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1291.520456370000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo97OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem44"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1310.536204410000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo98OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem45"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1329.551952440000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo100OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem46"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1348.567700470000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo101OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem47"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1063.331480000000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo85OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem32"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 473.716655040000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterPrint = 'Memo1OnAfterPrint'
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 492.559101500000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem2"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 530.590597560000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem4"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.606345590000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem5"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 568.622093620000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem6"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 587.637841650000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem7"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 606.653589690000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem8"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 625.669337720000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem9"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 644.685085750000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem10"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 663.700833780000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo14OnAfterData'
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem11"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 682.716581810000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo15OnAfterData'
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem12"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 701.732329840000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem13"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 720.748077870000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem14"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 758.779573940000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo27OnAfterData'
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem16"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 777.795321970000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem17"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 796.811070000000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem18"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 815.826818030000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo30OnAfterData'
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem19"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 834.842566060000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo31OnAfterData'
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem20"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 853.858314090000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem21"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 872.874062130000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo33OnAfterData'
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem22"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 891.889810160000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo34OnAfterData'
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem23"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 910.905558190000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo35OnAfterData'
          OnBeforePrint = 'Memo18OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem24"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 929.921306220000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem25"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 948.937054250000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem26"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 967.952802280000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem27"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 986.968550310000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo19OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem28"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1005.984298350000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem29"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.000046380000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem30"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1044.015794410000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem31"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 511.574849530000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem3"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 235.464554720000000000
          Width = 95.244114020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."id_check"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Width = 30.236215590000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 30.236240000000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."SubFamilia"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 739.763825910000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 328.819110000000000000
          Width = 144.378004020000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Frecuencia"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1367.189860000000000000
          Width = 18.897637800000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo129OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Sem48"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 550.031850000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line2: TfrxLineView
          Left = 473.220780000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Left = 702.213050000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line3: TfrxLineView
          Left = 625.622450000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line5: TfrxLineView
          Left = 778.024120000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line6: TfrxLineView
          Left = 854.173780000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line7: TfrxLineView
          Left = 929.764380000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line8: TfrxLineView
          Left = 1006.354980000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line9: TfrxLineView
          Left = 1081.945580000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line10: TfrxLineView
          Left = 1158.315710000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line11: TfrxLineView
          Left = 1234.906310000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line12: TfrxLineView
          Left = 1310.496910000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
        object Line13: TfrxLineView
          Left = 1386.087510000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 381.732530000000000000
        Width = 1561.701796000000000000
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Width = 1559.433070870000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 23.433070866141730000
        Top = 268.346630000000000000
        Width = 1561.701796000000000000
        Condition = 'dsGeneradorFolio."Familia"'
        object Memo118: TfrxMemoView
          Width = 1559.433070870000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = clGradientInactiveCaption
          Memo.UTF8W = (
            '[dsGeneradorFolio."Familia"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Top = 22.677165350000050000
          Width = 1559.433070866142000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 0.755905511811023600
        Top = 359.055350000000000000
        Width = 1561.701796000000000000
        object Line15: TfrxLineView
          Width = 1559.433070866142000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1561.701796000000000000
        object Memo23: TfrxMemoView
          Left = 235.086614170000000000
          Top = 34.015748030000000000
          Width = 1011.023268110000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Plan Anual de Mantenimientos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo472: TfrxMemoView
          Left = 1246.286443110000000000
          Width = 104.798942380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Clave: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo474: TfrxMemoView
          Left = 1246.286443110000000000
          Top = 22.677165350000000000
          Width = 104.798942380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Emisi'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo476: TfrxMemoView
          Left = 1246.286443110000000000
          Top = 45.354330710000000000
          Width = 104.798942380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Width = 235.086614170000000000
          Height = 68.031496060000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo119: TfrxMemoView
          Left = 235.086614170000000000
          Width = 1011.023268110000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 1350.851270000000000000
          Top = 22.677165350000000000
          Width = 206.846252380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FechaA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 1350.851270000000000000
          Top = 45.354330710000000000
          Width = 206.846252380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo122: TfrxMemoView
          Left = 1350.851270000000000000
          Width = 135.035182380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PMP-SSI-01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 1486.355290000000000000
          Width = 44.326462380000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Rev.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 1530.447636890000000000
          Width = 26.834645669291300000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zSubFamilias: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zSubFamiliasAfterScroll
    Left = 209
    Top = 172
  end
  object dsSubfamilias: TDataSource
    DataSet = zSubFamilias
    Left = 209
    Top = 252
  end
  object zMes: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '('
      '  Select 1 as Id, '#39'ENERO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 2 as Id, '#39'FEBRERO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 3 as Id, '#39'MARZO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 4 as Id, '#39'ABRIL'#39' as Mes'
      ')'
      'UNION'
      '('
      '  Select 5 as Id, '#39'MAYO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 6 as Id, '#39'JUNIO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 7 as Id, '#39'JULIO'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 8 as Id, '#39'AGOSTO'#39' as Mes'
      ')'
      'UNION'
      '('
      '  Select 9 as Id, '#39'SEPTIEMBRE'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 10 as Id, '#39'OCTUBRE'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 11 as Id, '#39'NOVIEMBRE'#39' as Mes'
      ')'
      'union '
      '('
      '  Select 12 as Id, '#39'DICIEMBRE'#39' as Mes'
      ')')
    Left = 576
    Top = 431
  end
  object zSemana: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '('
      '  Select 1 as Id, '#39'Semana 1'#39' as Semana'
      ')'
      'union '
      '('
      '  Select 2 as Id, '#39'Semana 2'#39' as Semana'
      ')'
      'union '
      '('
      '  Select 3 as Id, '#39'Semana 3'#39' as Semana'
      ')'
      'union '
      '('
      '  Select 4 as Id, '#39'Semana 4'#39' as Semana'
      ')')
    Left = 728
    Top = 431
  end
  object dsMes: TDataSource
    DataSet = zMes
    Left = 640
    Top = 431
  end
  object dsSemana: TDataSource
    DataSet = zSemana
    Left = 792
    Top = 431
  end
  object zMtoPrograma: TUniQuery
    Connection = connection.Uconnection
    Left = 551
    Top = 182
  end
  object dsMtoPrograma: TDataSource
    DataSet = zMtoPrograma
    Left = 575
    Top = 246
  end
end
