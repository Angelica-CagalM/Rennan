object FrmCostoAlmacen: TFrmCostoAlmacen
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Costo Almac'#233'n'
  ClientHeight = 517
  ClientWidth = 1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1081
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 518
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 518
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
          Tag = 13
          Height = 31
          Visible = False
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
      Align = alLeft
      Caption = 'Tabla...Agregando Datos'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object PanelDatos: TPanel
    Left = 0
    Top = 107
    Width = 705
    Height = 410
    Align = alClient
    TabOrder = 1
    object Grid_almacen: TcxGrid
      Left = 1
      Top = 1
      Width = 703
      Height = 408
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_almacenView: TcxGridDBTableView
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
        DataController.DataSource = dsInventario
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Entradas'
            Kind = skCount
            Column = colEntrada
          end
          item
            Format = '$,0.00;-$,0.00'
            Kind = skSum
            Column = colCostoEntrada
          end
          item
            Format = 'Salidas'
            Kind = skCount
            Column = colSalida
          end
          item
            Format = '$,0.00;-$,0.00'
            Kind = skSum
            Column = cxCostoSalida
          end>
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
        object colAlmacen: TcxGridDBColumn
          Caption = 'Almac'#233'n'
          DataBinding.FieldName = 'Almacen'
          Width = 67
        end
        object ColCentroCosto: TcxGridDBColumn
          DataBinding.FieldName = 'CentroCosto'
          Visible = False
        end
        object colProyecto: TcxGridDBColumn
          DataBinding.FieldName = 'Proyecto'
          Visible = False
        end
        object colCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 55
        end
        object colMaterial: TcxGridDBColumn
          DataBinding.FieldName = 'Material'
          Width = 110
        end
        object colMedida: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Width = 36
        end
        object ColFamilia: TcxGridDBColumn
          DataBinding.FieldName = 'Familia'
          Width = 49
        end
        object colSubFamilia: TcxGridDBColumn
          Caption = 'Subfamilia'
          DataBinding.FieldName = 'SubFamilia'
          Width = 64
        end
        object colFecha: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FechaMov'
          Width = 42
        end
        object ColMovimiento: TcxGridDBColumn
          Caption = 'Movimiento'
          DataBinding.FieldName = 'Tipo'
          Width = 39
        end
        object colEntrada: TcxGridDBColumn
          Caption = 'Entrada'
          DataBinding.FieldName = 'CantidadE'
          Width = 33
        end
        object colCostoEntrada: TcxGridDBColumn
          Caption = 'Costo'
          DataBinding.FieldName = 'CostoE'
          Width = 37
        end
        object colSalida: TcxGridDBColumn
          Caption = 'Salida'
          DataBinding.FieldName = 'CantidadS'
          Width = 36
        end
        object cxCostoSalida: TcxGridDBColumn
          DataBinding.FieldName = 'CostoS'
          Width = 51
        end
        object ColExistencia: TcxGridDBColumn
          Caption = 'Existencia'
          DataBinding.FieldName = 'Activo'
          Width = 33
        end
        object colSaldo: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'CostoSaldo'
          Width = 37
        end
      end
      object Grid_almacenLevel1: TcxGridLevel
        GridView = Grid_almacenView
      end
    end
  end
  object PanelDetalle: TPanel
    Left = 711
    Top = 107
    Width = 370
    Height = 410
    Align = alRight
    TabOrder = 2
    Visible = False
    object cxPageDetalle: TcxPageControl
      Left = 1
      Top = 1
      Width = 368
      Height = 408
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = tabInformes
      Properties.CustomButtons.Buttons = <>
      Properties.Images = connection.cxIconos16
      ClientRectBottom = 406
      ClientRectLeft = 2
      ClientRectRight = 366
      ClientRectTop = 29
      object tabInformes: TcxTabSheet
        Caption = 'Informes'
        ImageIndex = 31
        object PanelInferiorInforme: TPanel
          Left = 0
          Top = 183
          Width = 364
          Height = 194
          Align = alClient
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 362
            Height = 192
            Align = alClient
            TabOrder = 0
            object cxGrid1DBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'Periodo'
              Categories.DisplayText = 'Periodo'
              DiagramColumn.Active = True
              Title.Text = 'Gr'#225'fica de Movimientos Salidas'
              object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'TotalSalida'
                DisplayText = 'Total Requisicion'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBChartView1
            end
          end
        end
        object cxSplitInforme: TcxSplitter
          Left = 0
          Top = 177
          Width = 364
          Height = 6
          AlignSplitter = salTop
        end
        object PanelSuperiorInforme: TPanel
          Left = 0
          Top = 0
          Width = 364
          Height = 177
          Align = alTop
          TabOrder = 2
          object dxLayoutControl3: TdxLayoutControl
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 356
            Height = 169
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object opcionImprimir: TcxRadioGroup
              Left = 10
              Top = 10
              Caption = 'Tipo de Reporte'
              ParentFont = False
              Properties.Items = <
                item
                  Caption = 'Imprimir datos filtrados'
                  Value = '1'
                end
                item
                  Caption = 'Imprimir datos filtrados con detalles.'
                  Value = '2'
                end>
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 111
              Width = 495
            end
            object btnImpInforme: TcxButton
              Left = 201
              Top = 127
              Width = 145
              Height = 25
              Caption = 'Imprimir'
              OptionsImage.ImageIndex = 5
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
              OnClick = btnImpInformeClick
            end
            object dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxRadioGroup1'
              CaptionOptions.Visible = False
              Control = opcionImprimir
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup1
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
  end
  object cxSplitterOpciones: TcxSplitter
    Left = 705
    Top = 107
    Width = 6
    Height = 410
    AlignSplitter = salRight
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 1081
    Height = 47
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 45
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxFechaInicio: TcxDateEdit
        Left = 97
        Top = 10
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 120
      end
      object cxFechaFin: TcxDateEdit
        Left = 302
        Top = 10
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 120
      end
      object cxTipoCosto: TcxLookupComboBox
        Left = 727
        Top = 10
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'Id'
        Properties.ListColumns = <
          item
            FieldName = 'Opcion'
          end>
        Properties.ListSource = ds_tipo_costo
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 279
      end
      object cxCalcular: TcxButton
        Left = 963
        Top = 10
        Width = 106
        Height = 25
        Caption = 'Calcular'
        OptionsImage.ImageIndex = 43
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = cxCalcularClick
      end
      object cxAgrupacion: TcxLookupComboBox
        Left = 480
        Top = 10
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'Id'
        Properties.ListColumns = <
          item
            FieldName = 'Opcion'
          end>
        Properties.ListSource = ds_agrupado
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
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
        CaptionOptions.Text = 'Fecha de Inicio'
        Control = cxFechaInicio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Fecha de T'#233'rmino'
        Control = cxFechaFin
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Tipo Costo Inventario'
        Control = cxTipoCosto
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxCalcular
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Agrupado por'
        Control = cxAgrupacion
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 82
    Width = 1081
    Height = 25
    Align = alTop
    TabOrder = 5
    Visible = False
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
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
      Left = 98
      Top = 1
      Align = alRight
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      Width = 982
    end
  end
  object zInventario: TUniQuery
    Connection = connection.Uconnection
    Left = 25
    Top = 331
  end
  object dsInventario: TDataSource
    DataSet = zInventario
    Left = 81
    Top = 339
  end
  object zAgrupado: TUniQuery
    Connection = connection.Uconnection
    Left = 25
    Top = 195
  end
  object ds_agrupado: TDataSource
    DataSet = zAgrupado
    Left = 89
    Top = 195
  end
  object zTipoCosto: TUniQuery
    Connection = connection.Uconnection
    Left = 25
    Top = 259
  end
  object ds_tipo_costo: TDataSource
    DataSet = zTipoCosto
    Left = 89
    Top = 259
  end
end
