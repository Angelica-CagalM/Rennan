object FrmAsistenciaPersonal: TFrmAsistenciaPersonal
  Left = 0
  Top = 0
  Caption = 'Asistencia Personal'
  ClientHeight = 412
  ClientWidth = 847
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
  object panelTop: TPanel
    Left = 0
    Top = 0
    Width = 847
    Height = 57
    Align = alTop
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 845
      Height = 55
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object FechaInicio: TcxDateEdit
        Left = 83
        Top = 11
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object FechaFinal: TcxDateEdit
        Left = 280
        Top = 11
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 121
      end
      object cxBtnFiltrar: TcxButton
        Left = 407
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxBtnFiltrarClick
      end
      object btnActualizar: TcxButton
        Left = 488
        Top = 11
        Width = 105
        Height = 25
        Caption = 'Actualizar'
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        OnClick = btnActualizarClick
      end
      object cxExport: TcxButton
        Left = 599
        Top = 11
        Width = 98
        Height = 25
        Caption = 'Exportar'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = cxExportClick
      end
      object cxBtnPersonal: TcxButton
        Left = 703
        Top = 11
        Width = 130
        Height = 25
        Caption = 'Personal en  piso'
        OptionsImage.ImageIndex = 54
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 5
        OnClick = cxBtnPersonalClick
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Fecha Inicio'
        Control = FechaInicio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avClient
        CaptionOptions.Text = 'Fecha Final'
        Control = FechaFinal
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxBtnFiltrar
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnActualizar
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxExport
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxBtnPersonal
        ControlOptions.ShowBorder = False
        Index = 5
      end
    end
  end
  object cxGridAsistenciaPErsonal: TcxGrid
    Left = 0
    Top = 57
    Width = 847
    Height = 355
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxGridAsistenciaPErsonalDBTableView1: TcxGridDBTableView
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
      Navigator.InfoPanel.DisplayMask = 'Elemento [RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsAsistencia
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object cxGridAsistenciaPErsonalDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 105
      end
      object cxGridAsistenciaPErsonalDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Hora'
        PropertiesClassName = 'TcxTimeEditProperties'
        Width = 103
      end
      object cxGridAsistenciaPErsonalDBTableView1Column3: TcxGridDBColumn
        AlternateCaption = 'Codigo'
        DataBinding.FieldName = 'Codigo'
        Width = 131
      end
      object cxGridAsistenciaPErsonalDBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 240
      end
      object cxGridAsistenciaPErsonalDBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'Nivel'
        Width = 104
      end
      object cxGridAsistenciaPErsonalDBTableView1Column4: TcxGridDBColumn
        Caption = 'Entrada/Salida'
        DataBinding.FieldName = 'puerta'
        Width = 150
      end
    end
    object cxGridAsistenciaPErsonalLevel1: TcxGridLevel
      GridView = cxGridAsistenciaPErsonalDBTableView1
    end
  end
  object CZKEM1: TCZKEM
    Left = 651
    Top = 324
    Width = 120
    Height = 88
    TabOrder = 2
    Visible = False
    ControlData = {00090000670C000018090000}
  end
  object zAsistencia: TUniQuery
    Connection = connection.Uconnection
    Left = 160
    Top = 168
  end
  object dsAsistencia: TDataSource
    DataSet = zAsistencia
    Left = 224
    Top = 176
  end
  object zActualizar: TUniQuery
    Connection = connection.Uconnection
    Left = 424
    Top = 192
  end
  object zConfiguracion: TUniQuery
    Left = 376
    Top = 176
  end
  object frxReportPersonal: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43720.503276319400000000
    ReportOptions.LastChange = 43846.479514687500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 584
    Top = 152
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBDatasetPersonal
        DataSetName = 'frxDBDatasetPersonal'
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
      Orientation = poLandscape
      PaperWidth = 277.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 971.339210000000000000
        object Memo25: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.897650000000000000
          Width = 268.346630000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE PERSONAS DENTRO DEL EDIFICIO')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 1024.252630000000000000
          Top = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'www.subsea7.com')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 971.339210000000000000
        DataSet = frxDBDatasetPersonal
        DataSetName = 'frxDBDatasetPersonal'
        Filter = '<frxDBDatasetPersonal."puerta">='#39'Entrada'#39
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 374.173470000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEvaluacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetPersonal."Nombre"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 196.535560000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEvaluacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetPersonal."Codigo"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 83.149660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 355.275820000000000000
        Width = 971.339210000000000000
        object TotalPages: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 7.559059999999988000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Pagina [Page#] de [TotalPages#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 139.842610000000000000
        Width = 971.339210000000000000
        Condition = 'frxDBDatasetPersonal."Nivel"'
        object Memo1: TfrxMemoView
          Left = 83.149660000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 374.173470000000000000
          Top = 49.133890000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133890000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SAP ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 684.094930000000000000
          Top = 15.118120000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NIVEL:[frxDBDatasetPersonal."Nivel"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 83.149660000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha: [frxDBDatasetPersonal."Fecha"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 971.339210000000000000
      end
    end
  end
  object frxDBDatasetPersonal: TfrxDBDataset
    UserName = 'frxDBDatasetPersonal'
    CloseDataSource = False
    DataSet = zPersonal
    BCDToCurrency = False
    Left = 584
    Top = 208
  end
  object zPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 696
    Top = 192
  end
end
