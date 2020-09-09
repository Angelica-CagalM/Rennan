object frmComparativo2: TfrmComparativo2
  Left = 78
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Comparativo de Avances'
  ClientHeight = 508
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1188
    508)
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel2: TBevel
    Left = 102
    Top = 356
    Width = 107
    Height = 3
  end
  object Label6: TLabel
    Left = 8
    Top = 349
    Width = 92
    Height = 15
    Caption = 'Avances Fisicos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 7
    Width = 117
    Height = 15
    Caption = 'Programa de Trabajo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = -2
    Top = 20
    Width = 512
    Height = 488
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Avances'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      512
      488)
    object chImpresion: TCheckBox
      Left = 24
      Top = 437
      Width = 145
      Height = 17
      Anchors = [akBottom]
      Caption = 'Solo Av. Programados'
      TabOrder = 0
    end
    object grid_avances: TcxGrid
      Left = 2
      Top = 17
      Width = 508
      Height = 398
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxViewAvances: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_avancesglobales
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'dIdFecha'
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = '% Prog.'
          DataBinding.FieldName = 'dProgramadoDia'
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = '% Prog. Acum'
          DataBinding.FieldName = 'dProgramadoAcum'
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Fis.'
          DataBinding.FieldName = 'dFisicoDia'
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Fisico Acum.'
          DataBinding.FieldName = 'dFisicoAcumulado'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxViewAvances
      end
    end
    object btnPrinter: TcxButton
      Left = 286
      Top = 424
      Width = 97
      Height = 37
      Anchors = [akBottom]
      Caption = 'Grafica'
      OptionsImage.ImageIndex = 126
      OptionsImage.Images = frmrepositorio.IconosTodos32
      TabOrder = 2
      OnClick = btnPrinterClick
    end
    object cxSabana: TcxButton
      Left = 393
      Top = 424
      Width = 97
      Height = 37
      Anchors = [akBottom]
      Caption = 'Sabana '
      OptionsImage.ImageIndex = 32
      OptionsImage.Images = frmrepositorio.IconosTodos32
      TabOrder = 3
      OnClick = cxSabanaClick
    end
    object cxButton1: TcxButton
      Left = 177
      Top = 424
      Width = 97
      Height = 37
      Anchors = [akBottom]
      Caption = 'Avances'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = frmrepositorio.IconosTodos32
      TabOrder = 4
      OnClick = cxButton1Click
    end
  end
  object chkTurnos: TCheckBox
    Left = 398
    Top = 8
    Width = 110
    Height = 17
    Caption = 'Ver Av. x Turnos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = chkTurnosClick
  end
  object tsNumeroOrden: TcxLookupComboBox
    Left = 134
    Top = 4
    ParentFont = False
    Properties.KeyFieldNames = 'Folio'
    Properties.ListColumns = <
      item
        Caption = 'Folio Programa'
        Width = 65
        FieldName = 'Folio'
      end
      item
        Caption = 'Plazo'
        Width = 25
        FieldName = 'sIdConvenio'
      end>
    Properties.ListSource = ds_ordenesdetrabajo
    Properties.OnChange = tsNumeroOrdenPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 353
  end
  object cxPagedatos: TcxPageControl
    Left = 512
    Top = 0
    Width = 676
    Height = 508
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPagedatosChange
    ClientRectBottom = 506
    ClientRectLeft = 2
    ClientRectRight = 674
    ClientRectTop = 30
    object cxTabSheet1: TcxTabSheet
      Caption = 'Grafica de Fisicos y Programados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 459
        Width = 672
        Height = 17
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          672
          17)
        object progreso: TcxProgressBar
          Left = 58
          Top = 0
          Anchors = [akLeft, akRight]
          ParentFont = False
          Properties.AssignedValues.Max = True
          TabOrder = 0
          Visible = False
          Width = 615
        end
        object LabelProceso: TcxLabel
          Left = 2
          Top = -1
          Caption = 'Proceso'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 672
        Height = 77
        Align = alTop
        TabOrder = 1
        object cxGroupBox2: TcxGroupBox
          Left = 18
          Top = 4
          Caption = 'Informaci'#243'n Gr'#225'fica'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 69
          Width = 175
          object chkLeyendas: TCheckBox
            Left = 3
            Top = 15
            Width = 121
            Height = 17
            Caption = 'Imprimir Leyendas'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 0
            OnClick = chkLeyendasClick
          end
          object chkEjes: TCheckBox
            Left = 3
            Top = 34
            Width = 137
            Height = 17
            Caption = 'Ver Ejes Izquierdo'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 1
            OnClick = chkEjesClick
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 203
          Top = 4
          Caption = 'Avances'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 69
          Width = 178
          object chkProgramado: TCheckBox
            Left = 8
            Top = 13
            Width = 137
            Height = 18
            Caption = 'Programado'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 0
            OnClick = chkProgramadoClick
          end
          object chkFisico: TCheckBox
            Left = 8
            Top = 29
            Width = 97
            Height = 17
            Caption = 'Fisico'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 1
            OnClick = chkFisicoClick
          end
          object chkFinanciero: TCheckBox
            Left = 8
            Top = 44
            Width = 137
            Height = 17
            Caption = 'Financiero'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
            OnClick = chkFinancieroClick
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 387
          Top = 4
          Caption = 'Periodos'
          ParentFont = False
          TabOrder = 2
          Height = 69
          Width = 130
          object cxDia: TcxCheckBox
            Left = 16
            Top = 15
            Caption = 'D'#237'a'
            ParentFont = False
            Properties.OnChange = cxDiaPropertiesChange
            TabOrder = 0
          end
          object cxMes: TcxCheckBox
            Left = 71
            Top = 15
            Caption = 'Mes'
            ParentFont = False
            Properties.OnChange = cxMesPropertiesChange
            TabOrder = 1
          end
          object cxSemana: TcxCheckBox
            Left = 16
            Top = 40
            Caption = 'Semana'
            ParentFont = False
            Properties.OnChange = cxSemanaPropertiesChange
            State = cbsChecked
            TabOrder = 2
          end
        end
      end
      object grGeneral: TcxGroupBox
        Left = 0
        Top = 77
        Align = alClient
        Caption = 'Grafica Comparativa de Avances Programados/Fisico/Financiero'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 382
        Width = 672
        object dbGraphics: TDBChart
          Left = 3
          Top = 16
          Width = 666
          Height = 356
          BackWall.Brush.Style = bsClear
          BackWall.Size = 1
          Border.Visible = True
          BottomWall.Size = 2
          Foot.Font.Height = -8
          Gradient.EndColor = clWindow
          Gradient.StartColor = clGradientActiveCaption
          Gradient.Visible = True
          LeftWall.Size = 2
          MarginBottom = 10
          MarginLeft = 5
          MarginRight = 5
          MarginTop = 5
          PrintProportional = False
          Title.Alignment = taLeftJustify
          Title.AutoSize = False
          Title.Font.Color = clNavy
          Title.Font.Height = -8
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            ' ')
          Title.AdjustFrame = False
          BottomAxis.AxisValuesFormat = 'dd-mm-aa'
          BottomAxis.DateTimeFormat = 'mm/yy'
          BottomAxis.ExactDateTime = False
          BottomAxis.Increment = 1.000000000000000000
          BottomAxis.LabelsAngle = 90
          BottomAxis.LabelsFormat.Font.Height = -9
          BottomAxis.LabelsOnAxis = False
          BottomAxis.LabelsSeparation = 0
          BottomAxis.MinorTickCount = 1
          BottomAxis.MinorTickLength = 1
          BottomAxis.RoundFirstLabel = False
          BottomAxis.TickInnerLength = 10
          BottomAxis.TickLength = 5
          BottomAxis.Title.Font.Height = -8
          Chart3DPercent = 7
          DepthAxis.LabelsSeparation = 0
          DepthAxis.LabelsSize = 1
          DepthAxis.TickLength = 0
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.ExactDateTime = False
          LeftAxis.Increment = 20.000000000000000000
          LeftAxis.LabelsAngle = 90
          LeftAxis.LabelsFormat.Font.Height = -9
          LeftAxis.LabelsSeparation = 0
          LeftAxis.LabelsSize = 1
          LeftAxis.Maximum = 100.000000000000000000
          LeftAxis.TickLength = 0
          LeftAxis.Title.Font.Height = -8
          Legend.Alignment = laTop
          Legend.ColorWidth = 15
          Legend.DividingLines.Visible = True
          Legend.Font.Height = -8
          Legend.LegendStyle = lsSeries
          Legend.ResizeChart = False
          Legend.Shadow.HorizSize = 0
          Legend.Shadow.VertSize = 0
          Legend.Symbol.Width = 15
          Legend.TopPos = 0
          Legend.VertMargin = 1
          Pages.ScaleLastPage = False
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          RightAxis.ExactDateTime = False
          RightAxis.Increment = 20.000000000000000000
          RightAxis.LabelsAngle = 270
          RightAxis.LabelsSeparation = 0
          RightAxis.LabelsSize = 1
          RightAxis.Maximum = 100.000000000000000000
          RightAxis.TickLength = 0
          RightAxis.Title.Font.Height = -8
          TopAxis.LabelsAngle = 90
          TopAxis.LabelsFormat.Font.Height = -9
          TopAxis.LabelsSeparation = 0
          TopAxis.LabelsSize = 1
          TopAxis.TickLength = 0
          View3D = False
          View3DOptions.HorizOffset = -10
          View3DOptions.VertOffset = 20
          Align = alClient
          BevelOuter = bvNone
          BevelWidth = 0
          Color = 14215660
          PopupMenu = popGraphics
          TabOrder = 0
          AutoSize = True
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object FastLineSeries1: TFastLineSeries
            Marks.Font.Height = -9
            Marks.Visible = True
            Marks.Style = smsValue
            Marks.BackColor = clSilver
            Marks.Callout.Length = 1
            Marks.Color = clSilver
            DataSource = rxGraficaProgramado
            Title = 'Programado'
            ValueFormat = '#,##0.##'
            VertAxis = aBothVertAxis
            XLabelsSource = 'dFecha'
            LinePen.Color = clRed
            LinePen.Width = 2
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'dFecha'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'dProgramado'
          end
          object FastLineSeries2: TFastLineSeries
            Marks.Font.Height = -9
            Marks.Visible = True
            Marks.Style = smsValue
            Marks.BackColor = 4259584
            Marks.Callout.Length = 5
            Marks.Color = 4259584
            DataSource = rxGraficaFisico
            SeriesColor = clBlue
            Title = 'F'#237'sico'
            ValueFormat = '#,##0.##'
            XLabelsSource = 'dFecha'
            LinePen.Color = clBlue
            LinePen.Width = 2
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'dFecha'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'dFisico'
          end
          object FastLineSeries3: TFastLineSeries
            Marks.Font.Height = -9
            Marks.Visible = True
            Marks.Style = smsValue
            Marks.BackColor = 8454143
            Marks.Callout.Length = 5
            Marks.Color = 8454143
            DataSource = rxGraficaFinanciero
            SeriesColor = clYellow
            Title = 'Financiero'
            ValueFormat = '#,##0.##'
            XLabelsSource = 'dFecha'
            LinePen.Color = clYellow
            LinePen.Width = 2
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'dFecha'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'dFinanciero'
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Avances Partidas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGridActividades: TcxGrid
        Left = 0
        Top = 0
        Width = 672
        Height = 476
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object cxViewActividades: TcxGridDBTableView
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
          DataController.DataSource = ds_actividades
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object dIdFecha: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dIdFecha'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object Actividad: TcxGridDBColumn
            Caption = 'Partida'
            DataBinding.FieldName = 'sNumeroActividad'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object Afectacion: TcxGridDBColumn
            Caption = 'Clasificacion'
            DataBinding.FieldName = 'sIdClasificacion'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 114
          end
          object Inicio: TcxGridDBColumn
            Caption = 'Inicio'
            DataBinding.FieldName = 'sHorainicio'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object Fin: TcxGridDBColumn
            Caption = 'Fin'
            DataBinding.FieldName = 'sHorafinal'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object Tiempo: TcxGridDBColumn
            Caption = 'Tiempo'
            DataBinding.FieldName = 'sTiempo'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object Anterior: TcxGridDBColumn
            Caption = 'Anterior'
            DataBinding.FieldName = 'dAnterior'
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object Actual: TcxGridDBColumn
            Caption = 'Actual'
            DataBinding.FieldName = 'dActual'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object Acumulado: TcxGridDBColumn
            Caption = 'Acum.'
            DataBinding.FieldName = 'dAcumulado'
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
        end
        object cxGridLevelActividades: TcxGridLevel
          GridView = cxViewActividades
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Avances Material'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGridMaterial: TcxGrid
        Left = 0
        Top = 0
        Width = 672
        Height = 476
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object cxGridMaterialView: TcxGridDBTableView
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
          OnCellDblClick = cxGridMaterialViewCellDblClick
          DataController.DataSource = ds_Materiales
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dIdFecha'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'sIdMaterial'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'mDescripcion'
            HeaderAlignmentHorz = taCenter
            Width = 292
          end
          object cxCantidad: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 67
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Anterior'
            DataBinding.FieldName = 'AnteriorDia'
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Actual'
            DataBinding.FieldName = 'Anterior'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Acum.'
            DataBinding.FieldName = 'Actual'
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridMaterialView
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Configuraci'#243'n Gr'#225'ficas'
      ImageIndex = 2
      DesignSize = (
        672
        476)
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 7
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Configuraci'#243'n S'#225'bana'
        ParentFont = False
        TabOrder = 0
        Height = 463
        Width = 361
        object cxButton2: TcxButton
          Left = 16
          Top = 21
          Width = 97
          Height = 37
          Caption = 'Sabana '
          OptionsImage.ImageIndex = 32
          OptionsImage.Images = frmrepositorio.IconosTodos32
          TabOrder = 0
        end
        object cxLabel1: TcxLabel
          Left = 31
          Top = 79
          Caption = 'Avances Programados'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 31
          Top = 111
          Caption = 'Avances F'#237'sicos'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object dxColorProgramado: TdxColorEdit
          Left = 163
          Top = 78
          ParentFont = False
          Properties.DefaultColor = 16764057
          Style.Color = clWhite
          TabOrder = 3
          Width = 86
        end
        object dxColorFisico: TdxColorEdit
          Left = 163
          Top = 110
          ParentFont = False
          Properties.DefaultColor = 52479
          Style.Color = clWhite
          TabOrder = 4
          Width = 86
        end
        object cxLabel3: TcxLabel
          Left = 170
          Top = 50
          Caption = 'Color Fondo'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object dxColorTextoProgramado: TdxColorEdit
          Left = 262
          Top = 78
          ParentFont = False
          Properties.DefaultColor = clDefault
          Style.Color = clWindow
          TabOrder = 6
          Width = 86
        end
        object dxColorTextoFisico: TdxColorEdit
          Left = 262
          Top = 110
          ParentFont = False
          Properties.DefaultColor = clDefault
          Style.Color = clWindow
          TabOrder = 7
          Width = 86
        end
        object cxLabel4: TcxLabel
          Left = 266
          Top = 50
          Caption = 'Color Texto'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel5: TcxLabel
          Left = 31
          Top = 144
          Caption = 'POND. %'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object dxColorPonderado: TdxColorEdit
          Left = 163
          Top = 143
          ParentFont = False
          Properties.DefaultColor = 16764057
          Style.Color = clWhite
          TabOrder = 10
          Width = 86
        end
        object cxLabel6: TcxLabel
          Left = 31
          Top = 177
          Caption = '% AVANCE REAL'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object dxColorReal: TdxColorEdit
          Left = 163
          Top = 176
          ParentFont = False
          Properties.DefaultColor = 52479
          Style.Color = clWhite
          TabOrder = 12
          Width = 86
        end
        object cxLabel7: TcxLabel
          Left = 31
          Top = 210
          Caption = 'Duraci'#243'n D'#237'as (PR)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object dxColorDuracion: TdxColorEdit
          Left = 163
          Top = 209
          ParentFont = False
          Properties.DefaultColor = 16764057
          Style.Color = clWhite
          TabOrder = 14
          Width = 86
        end
      end
    end
  end
  object ds_avancesglobales: TDataSource
    AutoEdit = False
    DataSet = rxAvancesContrato
    Left = 216
    Top = 160
  end
  object Avances: TfrxDBDataset
    UserName = 'Avances'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'dProgramadoDia=dProgramadoDia'
      'dProgramadoAcum=dProgramadoAcum'
      'dFisicoDia=dFisicoDia'
      'dFisicoAcumulado=dFisicoAcumulado')
    DataSet = rxAvancesContrato
    BCDToCurrency = False
    Left = 128
    Top = 136
  end
  object Catalogo_001: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42043.839875185190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = Catalogo_001GetValue
    Left = 267
    Top = 232
    Datasets = <
      item
        DataSet = Avances
        DataSetName = 'Avances'
      end
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 195.900000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 132.504020000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779527559055118000
          Top = 3.000000000000028000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 564.268090000000000000
          Top = 3.000000000000028000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 561.268090000000000000
          Top = 45.133890000000400000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.708719999999970000
          Width = 386.267716540000000000
          Height = 37.795300000000000000
          Curve = 3
          Fill.BackColor = clWhite
          Shape = skRoundRectangle
        end
        object Memo22: TfrxMemoView
          Left = 1.889763780000000000
          Top = 105.826840000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 77.480322280000000000
          Top = 105.826840000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. PROG. DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 153.070878350000000000
          Top = 105.826840000000000000
          Width = 77.480314960000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. PROG. ACUM.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 230.551181100000000000
          Top = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. FISICO DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 309.921259840000000000
          Top = 105.826840000000000000
          Width = 77.858267720000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. FINANC. DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 10.582672280000000000
          Top = 85.417322829999990000
          Width = 179.149611180000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Fill.BackColor = clBlue
          HAlign = haCenter
          Memo.UTF8W = (
            'DETALLE DE MOVIMIENTOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 502.677490000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 287.244280000000000000
          Top = 30.236240000000010000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779530000000022000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        DataSet = Avances
        DataSetName = 'Avances'
        RowCount = 0
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 230.551181100000000000
          Width = 79.370083620000000000
          Height = 18.897637800000000000
          DataField = 'dFisicoDia'
          DataSet = Avances
          DataSetName = 'Avances'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[Avances."dFisicoDia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 309.921259840000000000
          Width = 77.858267720000000000
          Height = 18.897637800000000000
          DataField = 'dFisicoAcumulado'
          DataSet = Avances
          DataSetName = 'Avances'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[Avances."dFisicoAcumulado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 153.070878350000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          DataField = 'dProgramadoAcum'
          DataSet = Avances
          DataSetName = 'Avances'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[Avances."dProgramadoAcum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 77.480322280000000000
          Width = 75.590556060000000000
          Height = 18.897637800000000000
          DataField = 'dProgramadoDia'
          DataSet = Avances
          DataSetName = 'Avances'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[Avances."dProgramadoDia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 75.590558500000000000
          Height = 18.897637800000000000
          DataField = 'dIdFecha'
          DataSet = Avances
          DataSetName = 'Avances'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[Avances."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 189.196970000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 151.401670000000000000
          Width = 386.267716540000000000
          Height = 37.795300000000000000
          Curve = 3
          Fill.BackColor = clWhite
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          Left = 1.889763780000000000
          Top = 162.519790000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 77.480322280000000000
          Top = 162.519790000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. PROG. DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 153.070878350000000000
          Top = 162.519790000000000000
          Width = 77.480314960000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. PROG. ACUM.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 230.551181100000000000
          Top = 162.519790000000000000
          Width = 79.370130000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. FISICO DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 309.921259840000000000
          Top = 162.519790000000000000
          Width = 77.858267720000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14218221
          HAlign = haCenter
          Memo.UTF8W = (
            'AV. FINANC. DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 10.582672280000000000
          Top = 142.488188980000000000
          Width = 182.928775040000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Fill.BackColor = clBlue
          HAlign = haCenter
          Memo.UTF8W = (
            'DETALLE DE MOVIMIENTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 87.149660000000000000
          Width = 735.874015750000000000
          Height = 37.795300000000000000
          Curve = 3
          Fill.BackColor = clWhite
          Shape = skRoundRectangle
        end
        object Memo17: TfrxMemoView
          Left = 8.692906060000000000
          Top = 79.370130000000000000
          Width = 288.755615040000000000
          Height = 17.000000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'INFORME COMPARATIVO DE AVANCE DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1.889763780000000000
          Top = 97.708720000000000000
          Width = 735.874015750000000000
          Height = 41.574798270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haBlock
          Memo.UTF8W = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 75.590600000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo20: TfrxMemoView
          Left = 159.118110240000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.889766220000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 566.157856220000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo21: TfrxMemoView
          Left = 561.259842520000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
    end
  end
  object frxAvances: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 39211.485112303240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Months: array[1..12] of string;'
      'Begin'
      '  Months[1] := '#39'ENERO'#39';'
      '  Months[2] := '#39'FEBRERO'#39';'
      '  Months[3] := '#39'MARZO'#39';'
      '  Months[4] := '#39'ABRIL'#39';'
      '  Months[5] := '#39'MAYO'#39';'
      '  Months[6] := '#39'JUNIO'#39';'
      '  Months[7] := '#39'JULIO'#39';'
      '  Months[8] := '#39'AGOSTO'#39';'
      '  Months[9] := '#39'SEPTIEMBRE'#39';'
      '  Months[10] := '#39'OCTUBRE'#39';'
      '  Months[11] := '#39'NOVIEMBRE'#39';'
      '  Months[12] := '#39'DICIEMBRE'#39';'
      'End.')
    OnGetValue = frxAvancesGetValue
    Left = 203
    Top = 280
    Datasets = <
      item
        DataSet = Avances
        DataSetName = 'Avances'
      end
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 195.900000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 188.976500000000000000
        Width = 980.410082000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 975.874015748031400000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 166.637910000000000000
          Top = 3.000000000000000000
          Width = 616.842920000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779527559055118000
          Top = 3.000000000000057000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 798.598950000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 795.598950000000000000
          Top = 48.913420000000000000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 449.764070000000000000
        Width = 980.410082000000000000
        object Memo32: TfrxMemoView
          Left = 287.244280000000000000
          Top = 30.236239999999960000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000022000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 370.393940000000000000
        Width = 980.410082000000000000
        DataSet = Avances
        DataSetName = 'Avances'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baWidth
          Width = 378.000000000000000000
          Height = 131.000000000000000000
          ColumnLevels = 3
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'dProgramadoAcum')
          ColumnFields.Strings = (
            'YearOf(<Avances."dIdFecha">)'
            'MonthOf(<Avances."dIdFecha">)'
            'MONTHS[MonthOf(<Avances."dIdFecha">)]')
          DataSet = Avances
          DataSetName = 'Avances'
          RowFields.Strings = (
            'DayOf(<Avances."dIdFecha">)')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231353822
            20546F703D223436342E3339333934222057696474683D223230302220486569
            6768743D22313722205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220446973706C6179466F726D61
            742E446563696D616C536570617261746F723D222E2220446973706C6179466F
            726D61742E466F726D61745374723D2225322E346E2220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D222D31363737373230382220466F
            6E742E4865696768743D222D392220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222046
            696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C736522205374796C653D2263656C6C222056416C69
            676E3D22766143656E7465722220546578743D22302E30303030222F3E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2230222057696474
            683D223022204865696768743D223022205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D2268615269676874222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            74222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D2268615269676874222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D22222F3E3C546672784D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22302220486569
            6768743D223022205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            6874222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
            20546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465
            726D656D6F733E3C546672784D656D6F56696577204C6566743D22302220546F
            703D2230222057696474683D223022204865696768743D223022205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D22302220546F703D2230222057696474683D223022204865
            696768743D223022205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C2F63656C6C6865616465726D656D6F73
            3E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577205461673D
            2231303022204C6566743D223135382220546F703D223431312E333933393422
            2057696474683D2232303022204865696768743D223137222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            222D31363737373230382220466F6E742E4865696768743D222D392220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D22313432
            31383232312220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205374
            796C653D22636F6C756D6E222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577205461673D223130312220
            4C6566743D223135382220546F703D223432382E333933393422205769647468
            3D2232303022204865696768743D223822205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22313637373732
            31352220466F6E742E4865696768743D222D312220466F6E742E4E616D653D22
            417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D
            2237222046696C6C2E4261636B436F6C6F723D22313432313832323122204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C736522205374796C653D22636F6C75
            6D6E222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            546672784D656D6F56696577205461673D2231303222204C6566743D22313538
            2220546F703D223433362E3339333934222057696474683D2232303022204865
            696768743D22323822205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D222D31363737373230382220466F6E
            742E4865696768743D222D392220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313122204669
            6C6C2E4261636B436F6C6F723D2231343231383232312220476170583D223322
            20476170593D2233222048416C69676E3D22686143656E746572222050617265
            6E74466F6E743D2246616C736522205374796C653D22636F6C756D6E22205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D
            6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D65
            6D6F56696577205461673D2233303022204C6566743D223332392220546F703D
            223130222057696474683D22363722204865696768743D223239222052657374
            72696374696F6E733D2238222056697369626C653D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D222D31363737373230382220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222046
            696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C736522205374796C653D22636F6C6772616E6422
            2056416C69676E3D22766143656E7465722220546578743D224143554D554C41
            444F262331333B262331303B4D454E5355414C222F3E3C546672784D656D6F56
            696577205461673D2233303122204C6566743D223332392220546F703D223238
            222057696474683D22333522204865696768743D223138222052657374726963
            74696F6E733D2238222056697369626C653D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D222D31363737373230382220466F6E742E
            4865696768743D222D382220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222046696C6C
            2E4261636B436F6C6F723D2231363737373231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
            466F6E743D2246616C736522205374796C653D22636F6C746F74616C22205641
            6C69676E3D22766143656E7465722220546578743D22546F74616C222F3E3C54
            6672784D656D6F56696577205461673D2233303222204C6566743D2232383422
            20546F703D223338222057696474683D22353522204865696768743D22313822
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D222D31363737373230
            382220466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
            3135222046696C6C2E4261636B436F6C6F723D22313637373732313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C736522205374796C653D22636F6C74
            6F74616C222056416C69676E3D22766143656E7465722220546578743D22546F
            74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E6572
            6D656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F
            703D223339302E3339333934222057696474683D223133382220486569676874
            3D22323122205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            72222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D223135382220546F703D223339302E
            3339333934222057696474683D2232303022204865696768743D223231222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686143656E746572222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D22302220546F703D2230222057696474683D22302220
            4865696768743D223022205265737472696374696F6E733D2238222056697369
            626C653D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E746572222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D2232302220546F703D223431312E333933393422205769647468
            3D2231333822204865696768743D22353322205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E746572222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C2F636F726E65726D656D6F733E3C726F776D656D
            6F733E3C546672784D656D6F56696577205461673D2232303022204C6566743D
            2232302220546F703D223436342E3339333934222057696474683D2231333822
            204865696768743D22313722205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D222D31363737373230382220
            466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231343231383232312220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C736522205374796C653D22726F7722205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F776D65
            6D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56696577
            205461673D2234303022204C6566743D2231302220546F703D22363722205769
            6474683D2231313622204865696768743D22323622205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D222D31363737373230382220466F6E742E486569
            6768743D222D382220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223122204672616D652E5479703D223135222046696C6C2E4261
            636B436F6C6F723D2231343231383232312220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C736522205374796C653D22726F776772616E64222056416C6967
            6E3D22766143656E7465722220546578743D224143554D554C41444F26233133
            3B262331303B4D454E5355414C222F3E3C2F726F77746F74616C6D656D6F733E
            3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C2F63656C6C6675
            6E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C6974
            656D20302F3E3C6974656D20322F3E3C2F636F6C756D6E736F72743E3C726F77
            736F72743E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 146.842578270000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 102.267780000000000000
          Width = 975.874015748031400000
          Height = 37.795300000000000000
          Curve = 3
          Fill.BackColor = clWhite
          Shape = skRoundRectangle
        end
        object Memo17: TfrxMemoView
          Left = 8.692906060000000000
          Top = 94.488250000000000000
          Width = 300.094205040000000000
          Height = 17.000000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE DIARIO PROGRAMADO PORCENTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1.889763780000000000
          Top = 112.826840000000000000
          Width = 975.874015748031400000
          Height = 34.015738270000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haBlock
          Memo.UTF8W = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1.889763780000000000
          Width = 975.874015748031400000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo15: TfrxMemoView
          Left = 166.677170240000000000
          Top = 3.000000000000000000
          Width = 616.842920000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.889766220000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 804.268246220000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          Left = 799.370232520000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 332.598640000000000000
        Width = 980.410082000000000000
      end
    end
  end
  object frxAvancesTotales: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 38733.429980671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Months: array[1..12] of string;'
      'Begin'
      '  Months[1] := '#39'ENERO'#39';'
      '  Months[2] := '#39'FEBRERO'#39';'
      '  Months[3] := '#39'MARZO'#39';'
      '  Months[4] := '#39'ABRIL'#39';'
      '  Months[5] := '#39'MAYO'#39';'
      '  Months[6] := '#39'JUNIO'#39';'
      '  Months[7] := '#39'JULIO'#39';'
      '  Months[8] := '#39'AGOSTO'#39';'
      '  Months[9] := '#39'SEPTIEMBRE'#39';'
      '  Months[10] := '#39'OCTUBRE'#39';'
      '  Months[11] := '#39'NOVIEMBRE'#39';'
      '  Months[12] := '#39'DICIEMBRE'#39';'
      'End.')
    OnGetValue = frxAvancesTotalesGetValue
    Left = 259
    Top = 280
    Datasets = <
      item
        DataSet = Avances
        DataSetName = 'Avances'
      end
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 195.900000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 177.637910000000000000
        Width = 980.410082000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 975.874015748031400000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 166.637910000000000000
          Top = 3.000000000000000000
          Width = 620.622450000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779527559055118000
          Top = 3.000000000000057000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 802.378480000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 799.378480000000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 400.630180000000000000
        Width = 980.410082000000000000
        object Memo32: TfrxMemoView
          Left = 287.244280000000000000
          Top = 30.236239999999960000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 355.275820000000000000
          Top = 3.779530000000022000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 321.260050000000000000
        Width = 980.410082000000000000
        AllowSplit = True
        DataSet = Avances
        DataSetName = 'Avances'
        RowCount = 0
        Stretched = True
        object DBCross1: TfrxDBCrossView
          Align = baWidth
          Width = 500.000000000000000000
          Height = 143.000000000000000000
          CellLevels = 2
          ColumnLevels = 3
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'dProgramadoAcum'
            'dFisicoAcumulado')
          ColumnFields.Strings = (
            'YearOf(<Avances."dIdFecha">)'
            'MonthOf(<Avances."dIdFecha">)'
            'MONTHS[MonthOf(<Avances."dIdFecha">)]')
          DataSet = Avances
          DataSetName = 'Avances'
          RowFields.Strings = (
            'DayOf(<Avances."dIdFecha">)'
            #39'PROGRAMADO'#39' + chr(13) + '#39'REAL'#39)
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2233303322
            20546F703D223430322E3236303035222057696474683D223137372220486569
            6768743D22323122205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220446973706C6179466F726D61
            742E446563696D616C536570617261746F723D222E2220446973706C6179466F
            726D61742E466F726D61745374723D2225322E346E2220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D222D31363737373230382220466F
            6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222046
            696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C736522205374796C653D2263656C6C222056416C69
            676E3D22766143656E7465722220546578743D22302E30303030222F3E3C5466
            72784D656D6F56696577205461673D223122204C6566743D223330332220546F
            703D223432332E3236303035222057696474683D223137372220486569676874
            3D22323122205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220446973706C6179466F726D61742E44
            6563696D616C536570617261746F723D222E2220446973706C6179466F726D61
            742E466F726D61745374723D2225322E346E2220446973706C6179466F726D61
            742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D222D31363737373230382220466F6E742E
            4865696768743D222D382220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222046696C6C
            2E4261636B436F6C6F723D2231323930353137362220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C736522205374796C653D2263656C6C222056416C69676E3D
            22766143656E7465722220546578743D22302E30303030222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            2268615269676874222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D
            2230222057696474683D223022204865696768743D2230222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D2268615269676874222056416C69676E3D22766143656E7465722220546578
            743D22222F3E3C546672784D656D6F56696577204C6566743D22302220546F70
            3D2230222057696474683D223022204865696768743D22302220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            736522204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D2268615269676874222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
            6566743D22302220546F703D2230222057696474683D22302220486569676874
            3D223022205265737472696374696F6E733D22382220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D22302220546F703D223022205769647468
            3D223022204865696768743D223022205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D22302220546F
            703D2230222057696474683D223022204865696768743D223022205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D22302220546F703D2230222057696474683D223022204865696768
            743D223022205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2230222057696474
            683D223022204865696768743D223022205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D2268615269676874222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            74222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D2268615269676874222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D2268615269676874222056416C69676E3D
            22766143656E7465722220546578743D22222F3E3C546672784D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22302220486569
            6768743D223022205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            6874222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
            20546578743D22222F3E3C546672784D656D6F56696577204C6566743D223022
            20546F703D2230222057696474683D223022204865696768743D223022205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D2268615269676874222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D22302220546F703D2230222057696474683D223022204865
            696768743D223022205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C546672784D656D6F56696577204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D22382220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D2268615269676874222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D2268615269676874222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C686561
            6465726D656D6F733E3C546672784D656D6F56696577204C6566743D22323933
            2220546F703D223430322E3236303035222057696474683D2231302220486569
            6768743D22323122205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C546672784D656D6F56696577204C6566
            743D223239332220546F703D223432332E3236303035222057696474683D2231
            3022204865696768743D22323122205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D22302220546F703D2230222057696474683D223022204865
            696768743D223022205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C546672784D656D6F56696577204C6566
            743D22302220546F703D2230222057696474683D223022204865696768743D22
            3022205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2230222057696474
            683D223022204865696768743D223022205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D22302220546F703D2230222057696474683D22302220
            4865696768743D223022205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C2F63656C6C6865616465726D656D
            6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577205461
            673D2231303022204C6566743D223330332220546F703D223336322E32363030
            35222057696474683D2231373722204865696768743D22313622205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D222D31363737373230382220466F6E742E4865696768743D222D38222046
            6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22312220
            4672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D2231
            343231383232312220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            5374796C653D22636F6C756D6E222056416C69676E3D22766143656E74657222
            20546578743D22222F3E3C546672784D656D6F56696577205461673D22313031
            22204C6566743D223330332220546F703D223337382E32363030352220576964
            74683D2231373722204865696768743D223822205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2231363737
            373231352220466F6E742E4865696768743D222D312220466F6E742E4E616D65
            3D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479
            703D2237222046696C6C2E4261636B436F6C6F723D2231343231383232312220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C736522205374796C653D22636F
            6C756D6E222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577205461673D2231303222204C6566743D2233
            30332220546F703D223338362E3236303035222057696474683D223137372220
            4865696768743D22313622205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D222D3136373737323038222046
            6F6E742E4865696768743D222D382220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231312220
            46696C6C2E4261636B436F6C6F723D2231343231383232312220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C736522205374796C653D22636F6C756D6E2220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C
            756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54667278
            4D656D6F56696577205461673D2233303022204C6566743D223332392220546F
            703D223130222057696474683D22363722204865696768743D22323922205265
            737472696374696F6E733D2238222056697369626C653D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D222D31363737373230382220
            466F6E742E4865696768743D222D382220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C736522205374796C653D22636F6C6772616E
            64222056416C69676E3D22766143656E7465722220546578743D224143554D55
            4C41444F262331333B262331303B4D454E5355414C222F3E3C546672784D656D
            6F56696577205461673D2233303122204C6566743D223332392220546F703D22
            3238222057696474683D22333522204865696768743D22313822205265737472
            696374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D222D31363737373230382220466F6E
            742E4865696768743D222D382220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204669
            6C6C2E4261636B436F6C6F723D2231363737373231352220476170583D223322
            20476170593D2233222048416C69676E3D22686143656E746572222050617265
            6E74466F6E743D2246616C736522205374796C653D22636F6C746F74616C2220
            56416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E
            3C546672784D656D6F56696577205461673D2233303222204C6566743D223238
            342220546F703D223338222057696474683D22353522204865696768743D2231
            3822205265737472696374696F6E733D2238222056697369626C653D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D222D3136373737
            3230382220466F6E742E4865696768743D222D382220466F6E742E4E616D653D
            22417269616C2220466F6E742E5374796C653D223122204672616D652E547970
            3D223135222046696C6C2E4261636B436F6C6F723D2231363737373231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C736522205374796C653D22636F
            6C746F74616C222056416C69676E3D22766143656E7465722220546578743D22
            546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E
            65726D656D6F733E3C546672784D656D6F56696577204C6566743D2232302220
            546F703D223334312E3236303035222057696474683D22323833222048656967
            68743D22323122205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            746572222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C546672784D656D6F56696577204C6566743D223330332220546F703D223334
            312E3236303035222057696474683D2231373722204865696768743D22323122
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D65
            6D6F56696577204C6566743D223239332220546F703D223336322E3236303035
            222057696474683D22313022204865696768743D223430222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E746572222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223336322E3236303035222057696474683D22
            31323822204865696768743D22343022205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E746572222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22313438
            2220546F703D223336322E3236303035222057696474683D2231343522204865
            696768743D22343022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E746572222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672784D
            656D6F56696577205461673D2232303022204C6566743D2232302220546F703D
            223430322E3236303035222057696474683D2231323822204865696768743D22
            343222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D222D31363737373230382220466F6E742E48656967
            68743D222D382220466F6E742E4E616D653D22417269616C2220466F6E742E53
            74796C653D223122204672616D652E5479703D223135222046696C6C2E426163
            6B436F6C6F723D2231333039383139332220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C736522205374796C653D22726F77222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577205461
            673D2232303122204C6566743D223134382220546F703D223430322E32363030
            35222057696474683D2231343522204865696768743D22343222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D222D31363737373230382220466F6E742E4865696768743D222D38222046
            6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22312220
            4672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D2231
            333039383139332220476170583D22332220476170593D22332220506172656E
            74466F6E743D2246616C736522205374796C653D22726F77222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E
            3C726F77746F74616C6D656D6F733E3C546672784D656D6F5669657720546167
            3D2234303022204C6566743D2231302220546F703D223637222057696474683D
            2231313622204865696768743D22323622205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D222D31363737373230382220466F6E742E4865696768743D
            222D382220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C
            653D223122204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D2231343231383232312220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C736522205374796C653D22726F776772616E64222056416C69676E3D2276
            6143656E7465722220546578743D224143554D554C41444F262331333B262331
            303B4D454E5355414C222F3E3C546672784D656D6F56696577205461673D2234
            303122204C6566743D223132362220546F703D223833222057696474683D2231
            313722204865696768743D22313622205265737472696374696F6E733D223822
            2056697369626C653D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D222D31363737373230382220466F6E742E4865696768743D222D
            382220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C736522205374796C653D22726F77746F74616C222056416C6967
            6E3D22766143656E7465722220546578743D22546F74616C222F3E3C2F726F77
            746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20
            302F3E3C6974656D20302F3E3C2F63656C6C66756E6374696F6E733E3C636F6C
            756D6E736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D20
            322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D2030
            2F3E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 135.503988270000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.708720000000000000
          Width = 975.874015748031400000
          Height = 37.795300000000000000
          Curve = 3
          Fill.BackColor = clWhite
          Shape = skRoundRectangle
        end
        object Memo17: TfrxMemoView
          Left = 8.692906060000000000
          Top = 86.929190000000000000
          Width = 288.755615040000000000
          Height = 17.000000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'AVANCE DIARIO PROGRAMADO PORCENTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1.889763780000000000
          Top = 109.047310000000000000
          Width = 975.874015748031400000
          Height = 26.456678270000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haBlock
          Memo.UTF8W = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1.889763780000000000
          Width = 975.874015748031400000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo15: TfrxMemoView
          Left = 166.677170240000000000
          Top = 3.000000000000000000
          Width = 624.401980000000000000
          Height = 48.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[contrato."mCliente"]'
            'CONTRATO No.: [contrato."sContrato"]'
            'ORDEN DE TRABAJO: [ORDEN_TRABAJO]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.889766220000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 800.488716220000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          Left = 799.370232520000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
    end
  end
  object rxGraficaProgramado: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dFecha'
        DataType = ftDate
      end
      item
        Name = 'dProgramado'
        DataType = ftFloat
      end>
    Left = 160
    Top = 96
    object StringField16: TStringField
      FieldName = 'sDescripcion'
      Size = 60
    end
    object rxGraficaProgramadodFecha: TDateField
      FieldName = 'dFecha'
    end
    object FloatField4: TFloatField
      FieldName = 'dProgramado'
    end
  end
  object rxGraficaFisico: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dFecha'
        DataType = ftDate
      end
      item
        Name = 'dFisico'
        DataType = ftFloat
      end>
    Left = 224
    Top = 114
    object StringField14: TStringField
      FieldName = 'sDescripcion'
      Size = 60
    end
    object rxGraficaFisicodFecha: TDateField
      FieldName = 'dFecha'
    end
    object FloatField7: TFloatField
      FieldName = 'dFisico'
    end
  end
  object rxGraficaFinanciero: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dFecha'
        DataType = ftDate
      end
      item
        Name = 'dFinanciero'
        DataType = ftFloat
      end>
    Left = 192
    Top = 90
    object StringField2: TStringField
      FieldName = 'sDescripcion'
      Size = 60
    end
    object DateField2: TDateField
      FieldName = 'dFecha'
    end
    object FloatField3: TFloatField
      FieldName = 'dFinanciero'
    end
  end
  object rxAvancesContrato: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'dIdFecha'
        DataType = ftDate
      end
      item
        Name = 'dProgramadoDia'
        DataType = ftFloat
      end
      item
        Name = 'dProgramadoAcum'
        DataType = ftFloat
      end
      item
        Name = 'dFisicoDia'
        DataType = ftFloat
      end
      item
        Name = 'dFisicoAcumulado'
        DataType = ftFloat
      end>
    Left = 249
    Top = 160
    object rxAvancesContratodIdFecha: TDateField
      FieldName = 'dIdFecha'
    end
    object rxAvancesContratodProgramadoDia: TFloatField
      FieldName = 'dProgramadoDia'
      DisplayFormat = '##0.0### %'
    end
    object rxAvancesContratodProgramadoAcum: TFloatField
      FieldName = 'dProgramadoAcum'
      DisplayFormat = '##0.0### %'
    end
    object rxAvancesContratodFisicoDia: TFloatField
      FieldName = 'dFisicoDia'
      DisplayFormat = '##0.0### %'
    end
    object rxAvancesContratodFisicoAcumulado: TFloatField
      FieldName = 'dFisicoAcumulado'
      DisplayFormat = '##0.0### %'
    end
  end
  object SaveSql: TSaveDialog
    DefaultExt = 'bmp'
    FileName = 'Inteligent'
    Filter = 'Bitmap Archivos|*.bmp'
    Left = 566
    Top = 424
  end
  object popGraphics: TPopupMenu
    Images = frmrepositorio.IconosTodos16
    Left = 370
    Top = 280
    object Exportar1: TMenuItem
      Tag = 4
      Caption = 'Exportar Imagen Grafica'
      ImageIndex = 120
      OnClick = Exportar1Click
    end
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = ordenesdetrabajo
    Left = 325
    Top = 56
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select concat(o.sNumeroOrden, '#39' - '#39',c.sDescripcion) as Folio, o.' +
        'sNumeroOrden, o.sIdFolio, c.sIdConvenio from ordenesdetrabajo o'
      
        'left join convenios c on (c.sContrato = o.sContrato and o.sNumer' +
        'oOrden = c.sNumeroOrden )'
      
        'where o.sContrato = :Contrato order by  c.sNumeroOrden, c.sIdCon' +
        'venio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_actividades: TDataSource
    DataSet = zqActividades
    Left = 384
    Top = 168
  end
  object zqActividades: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zqActividadesCalcFields
    SQL.Strings = (
      
        'select o.sContrato, b.dIdFecha, o.sNumeroOrden, o.sIdFolio, b.mD' +
        'escripcion,'
      
        'b.sNumeroActividad, b.sHorainicio, b.sHorafinal, b.sIdClasificac' +
        'ion,'
      
        '(select sum(dAvance) as anterior from bitacoradeactividades wher' +
        'e sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sNumeroActividad = b.sNumeroActividad and dIdFecha < b.dIdFe' +
        'cha group by sContrato ) as anteriorDia,'
      
        '(select sum(dAvance) as anterior from bitacoradeactividades wher' +
        'e sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFe' +
        'cha and sHoraInicio < b.sHoraInicio group by sContrato ) as ante' +
        'rior,'
      
        '(select sum(dAvance) as actual from bitacoradeactividades where ' +
        'sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFe' +
        'cha and sHoraInicio = b.sHoraInicio group by sContrato ) as actu' +
        'al'
      'from ordenesdetrabajo o'
      
        'inner join bitacoradeactividades b on (b.sContrato = o.sContrato' +
        ' and b.dIdFecha >=:FechaI and b.dIdFecha <=:fechaF and b.sNumero' +
        'Orden = o.sNumeroOrden'
      'and b.sIdTipoMovimiento = '#39'E'#39')'
      
        'inner join actividadesxorden ao on (ao.sContrato = b.sContrato a' +
        'nd ao.sNumeroOrden = b.sNumeroOrden and ao.sNumeroActividad = b.' +
        'sNumeroActividad and ao.sTipoActividad = '#39'Actividad'#39' and ao.sIdC' +
        'onvenio =:Convenio )'
      'where o.sContrato =:contrato and b.sNumeroOrden like :folio'
      
        'order by o.sNumeroOrden, CONVERT(SUBSTRING(ao.iItemOrden, 6), SI' +
        'GNED INTEGER),  b.dIdFecha, b.sHoraInicio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 384
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    object zqActividadessContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object zqActividadesdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zqActividadessNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 50
    end
    object zqActividadessIdFolio: TStringField
      FieldName = 'sIdFolio'
      Required = True
      Size = 80
    end
    object zqActividadesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zqActividadessNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object zqActividadessHorainicio: TStringField
      FieldName = 'sHorainicio'
      Required = True
      Size = 5
    end
    object zqActividadessHorafinal: TStringField
      FieldName = 'sHorafinal'
      Required = True
      Size = 5
    end
    object zqActividadessIdClasificacion: TStringField
      FieldName = 'sIdClasificacion'
      Required = True
      Size = 10
    end
    object zqActividadessTiempo: TStringField
      FieldKind = fkCalculated
      FieldName = 'sTiempo'
      Size = 5
      Calculated = True
    end
    object zqActividadesdAnterior: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dAnterior'
      Calculated = True
    end
    object zqActividadesdActual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dActual'
      Calculated = True
    end
    object zqActividadesdAcumulado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dAcumulado'
      Calculated = True
    end
    object zqActividadesanterior: TFloatField
      FieldName = 'anterior'
    end
    object zqActividadesactual: TFloatField
      FieldName = 'actual'
    end
    object zqActividadesAnteriorDia: TFloatField
      FieldName = 'AnteriorDia'
    end
  end
  object PopupMenu1: TPopupMenu
    Images = connection.cxIconos16
    Left = 338
    Top = 280
    object ExportaExcel: TMenuItem
      Tag = 4
      Caption = 'Exportar Excel Grafica'
      ImageIndex = 10
    end
  end
  object PopupMenu2: TPopupMenu
    Images = connection.cxIconos16
    Left = 410
    Top = 280
    object MenuItem1: TMenuItem
      Tag = 4
      Caption = 'Exportar Partias a Excel'
      ImageIndex = 10
      OnClick = MenuItem1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 528
    Top = 424
  end
  object ds_Materiales: TDataSource
    DataSet = zqMateriales
    Left = 424
    Top = 168
  end
  object zqMateriales: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zqActividadesCalcFields
    SQL.Strings = (
      
        'select o.sContrato, b.dIdFecha, o.sNumeroOrden, o.sIdFolio, i.mD' +
        'escripcion, b.sIdMaterial, i.dCantidad, '
      
        '(select sum(dCantidad) as anterior from bitacorademateriales whe' +
        're sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sIdMaterial = b.sIdMaterial and dIdFecha < b.dIdFecha group ' +
        'by sContrato ) as anteriorDia,'
      
        '(select sum(dCantidad) as anterior from bitacorademateriales whe' +
        're sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sIdMaterial = b.sIdMaterial and dIdFecha = b.dIdFecha group ' +
        'by sContrato ) as anterior,'
      
        '((select sum(dCantidad) as actual from bitacorademateriales wher' +
        'e sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden'
      
        'and sIdMaterial = b.sIdMaterial and dIdFecha <= b.dIdFecha group' +
        ' by sContrato) ) as actual'
      'from ordenesdetrabajo o'
      'inner join insumos i on (i.sContrato = o.sContrato )'
      
        'inner join bitacorademateriales b on (b.sContrato = o.sContrato ' +
        'and b.dIdFecha >=:FechaI and b.dIdFecha <=:fechaF and b.sNumeroO' +
        'rden = o.sNumeroOrden'
      'and b.sIdMaterial = i.sIdInsumo)'
      'where o.sContrato =:contrato and b.sNumeroOrden like :folio'
      'order by o.sNumeroOrden, i.sIdInsumo, b.dIdFecha ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 424
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
  end
end
