object frmEstatus_Requisiciones: TfrmEstatus_Requisiciones
  Left = 0
  Top = 0
  Caption = 'Seguimiento Requisiciones'
  ClientHeight = 594
  ClientWidth = 1153
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 594
    Align = alClient
    TabOrder = 0
    object PanelCentral: TPanel
      Left = 1
      Top = 86
      Width = 1151
      Height = 507
      Align = alClient
      TabOrder = 0
      object cxGridRequisciones: TcxGrid
        Left = 1
        Top = 1
        Width = 1149
        Height = 505
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxView_Requsicion: TcxGridDBTableView
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellClick = cxView_RequsicionCellClick
          OnCellDblClick = cxView_RequsicionCellDblClick
          DataController.DataSource = dsRequisciones
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skAverage
              FieldName = 'Cantidad'
              Column = cxView_RequsicionColumn2
              DisplayText = 'Comprado '
            end
            item
              Kind = skAverage
              FieldName = 'Avance2'
              Column = cxView_RequsicionColumn4
              DisplayText = 'Recibido '
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skAverage
              FieldName = 'cantidad'
              Column = cxView_RequsicionColumn2
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = cxView_RequsicionStylesGetContentStyle
          object ColCodigoReq: TcxGridDBColumn
            Caption = 'Requisici'#243'n'
            DataBinding.FieldName = 'sNumFolio'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Sorting = False
            Width = 120
          end
          object colIdMaterial: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'sIdInsumo'
            Options.Editing = False
            Width = 42
          end
          object colDescripcionMat: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'mDescripcion'
            Options.Editing = False
            Width = 54
          end
          object cxView_RequsicionColumn18: TcxGridDBColumn
            Caption = 'Partida'
            DataBinding.FieldName = 'Extraordinario'
            Width = 40
          end
          object cxView_RequsicionColumn19: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'mComentarios'
            Width = 54
          end
          object ColUnidad: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
            Options.Editing = False
            Width = 53
          end
          object cxView_RequsicionColumn17: TcxGridDBColumn
            Caption = 'Trazabilidad'
            DataBinding.FieldName = 'NumeroMaterial'
            Width = 79
          end
          object ColEntrega: TcxGridDBColumn
            Caption = 'Requisitado'
            DataBinding.FieldName = 'dCantidad'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '#,##.##'
            Options.Editing = False
            Width = 55
          end
          object cxView_RequsicionColumn16: TcxGridDBColumn
            Caption = 'Planta'
            DataBinding.FieldName = 'NombrePlanta'
            Width = 53
          end
          object cxViewOC: TcxGridDBColumn
            Caption = 'Orden Compra'
            DataBinding.FieldName = 'OC'
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxView_RequsicionColumn13: TcxGridDBColumn
            Caption = 'Centro Costo'
            DataBinding.FieldName = 'CentroCosto'
            Width = 54
          end
          object cxView_RequsicionColumn14: TcxGridDBColumn
            Caption = 'Proyecto '
            DataBinding.FieldName = 'Proyecto'
            Width = 53
          end
          object cxView_RequsicionColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Comprador'
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxView_RequsicionColumn15: TcxGridDBColumn
            Caption = 'Prioridad'
            DataBinding.FieldName = 'sPrioridad'
            Width = 53
          end
          object cxView_RequsicionColumn11: TcxGridDBColumn
            Caption = 'Fecha Alta'
            DataBinding.FieldName = 'FechaAlta'
            Width = 54
          end
          object cxView_RequsicionColumn12: TcxGridDBColumn
            Caption = 'Fecha Vigencia'
            DataBinding.FieldName = 'Vigencia'
            Width = 54
          end
          object cxView_RequsicionColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Proveedor'
            Width = 52
          end
          object cxView_RequsicionColumn1: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sEstado'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 54
          end
          object cxView_RequsicionColumn6: TcxGridDBColumn
            Caption = 'Comprado'
            DataBinding.FieldName = 'CantidadCompra'
            HeaderAlignmentHorz = taCenter
            Width = 53
          end
          object cxView_RequsicionColumn2: TcxGridDBColumn
            Caption = '% O.C.'
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxProgressBarProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 54
          end
          object cxView_RequsicionColumn5: TcxGridDBColumn
            Caption = 'Recibido'
            DataBinding.FieldName = 'FechaEntrega'
            Width = 54
          end
          object cxView_RequsicionColumn4: TcxGridDBColumn
            Caption = 'Recibe'
            DataBinding.FieldName = 'Recibido'
            Width = 53
          end
          object cxView_RequsicionColumn3: TcxGridDBColumn
            Caption = '% Recibido'
            DataBinding.FieldName = 'Avance2'
            PropertiesClassName = 'TcxProgressBarProperties'
            Options.Editing = False
            Width = 54
          end
          object cxView_RequsicionColumn8: TcxGridDBColumn
            Caption = 'Entregado'
            DataBinding.FieldName = 'CantidadAlmacen'
            Width = 53
          end
          object cxView_RequsicionColumn9: TcxGridDBColumn
            Caption = '% Entregado'
            DataBinding.FieldName = 'AvanceAlmacen'
            PropertiesClassName = 'TcxProgressBarProperties'
            Width = 54
          end
        end
        object cxGridRequiscionesLevel1: TcxGridLevel
          GridView = cxView_Requsicion
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1151
      Height = 35
      Align = alTop
      TabOrder = 1
      inline frmBarraH11: TfrmBarraH1
        Left = 594
        Top = 1
        Width = 556
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 594
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
            OnClick = btnPrinterClick
            ExplicitLeft = 395
            ExplicitHeight = 31
          end
          inherited btnDetalle: TcxButton
            Left = 475
            Height = 31
            Enabled = False
            ExplicitLeft = 475
            ExplicitHeight = 31
          end
          inherited btnRefresh: TcxButton
            Height = 31
            OnClick = btnRefreshClick
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
      object cxLeyenda: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Seguimiento Requisiciones/OC'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxCancelarMaterial: TcxButton
        Tag = 10
        Left = 488
        Top = 1
        Width = 106
        Height = 33
        Hint = 'Nuevo Registro'
        Align = alRight
        Caption = 'No Autorizar'
        Enabled = False
        OptionsImage.ImageIndex = 47
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object PanelOpciones: TPanel
      Left = 1
      Top = 36
      Width = 1151
      Height = 50
      Align = alTop
      TabOrder = 2
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1149
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
          Left = 1032
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
          Top = 13
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 3
          Width = 100
        end
        object cxFinRequerido: TcxDateEdit
          Left = 574
          Top = 13
          ParentFont = False
          Style.HotTrack = False
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
            'Fecha Requerida'
            'Fecha de Compra'
            'Fecha de Entrega Proveedor'
            'Fecha de Recibido')
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
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxLimpiaFiltro
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxFiltroRequerido
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avCenter
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avCenter
          CaptionOptions.Text = 'Inicio'
          Control = cxInicioRequerido
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avCenter
          CaptionOptions.Text = 'Fin'
          Control = cxFinRequerido
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avCenter
          CaptionOptions.Text = 'Filtrar por:'
          Control = cxOpcionesFiltro
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  object anexo_ocompras: TUniQuery
    Connection = connection.Uconnection
    Left = 592
    Top = 176
  end
  object dsCompras: TDataSource
    DataSet = anexo_ocompras
    Left = 592
    Top = 248
  end
  object anexo_prequisicion: TUniQuery
    Connection = connection.Uconnection
    Left = 457
    Top = 156
  end
  object dsRequisciones: TDataSource
    DataSet = anexo_prequisicion
    Left = 465
    Top = 212
  end
  object frxEntrada: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.429600810200000000
    ReportOptions.LastChange = 43441.674665428240000000
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
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <Filtro> = '#39'Todas las requisiciones'#39' then'
      
        '      Memo15.Text := '#39#39';                                        ' +
        '        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 328
    Top = 216
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxSeguimientoReq
        DataSetName = 'frxSeguimientoReq'
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
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 134.173138030000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Picture1: TfrxPictureView
          Left = 1.897650000000000000
          Width = 174.458192930000000000
          Height = 75.590551180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Frame.Style = fsDouble
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 336.055884500000000000
          Width = 302.684685500000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 83.149606300000000000
          Width = 977.007874015748000000
          Height = 26.659878700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SEGUIMIENTO DE REQUISICIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 768.465060000000000000
          Width = 208.196435500000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            ''
            ''
            ''
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 109.606370000000000000
          Width = 680.314960630000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            ' Periodo:  Del [Fecha_I] al [Fecha_F]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo27: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 680.315400000000000000
          Top = 109.606370000000000000
          Width = 296.692474020000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            'Filtro por:  [Filtro]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 257.008040000000000000
        Width = 978.898270000000000000
        Condition = 'frxSeguimientoReq."iFoliorequisicion"'
        object Memo11: TfrxMemoView
          Width = 75.518632910000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 482.889832130000000000
          Width = 93.732268820000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'O.C.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 886.299212600000000000
          Width = 90.330708661417320000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Entregado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 804.661756610000000000
          Width = 81.259840080000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Width = 204.022652910000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Material/Servicio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 279.307086610000000000
          Width = 66.141720080000050000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Medida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 345.448823780000000000
          Width = 66.141720080000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Requisitado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 576.268090000000000000
          Width = 74.834618820000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Estatus')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 731.338582680000000000
          Width = 72.944881890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Comprado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 650.079160000000000000
          Width = 81.259840080000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrega')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 410.968770000000000000
          Width = 71.811023620000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Requerido')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.007871570000000000
        Top = 298.582870000000000000
        Width = 978.898270000000000000
        DataSet = frxSeguimientoReq
        DataSetName = 'frxSeguimientoReq'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 75.590412050000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxSeguimientoReq."sIdInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 482.889832130000000000
          Width = 93.732268820000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."OC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 804.661756610000000000
          Width = 81.259840080000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."FechaEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 886.299212600000000000
          Width = 90.330708661417320000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."Recibido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 75.590600000000000000
          Width = 204.094432050000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxSeguimientoReq."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 279.307086610000000000
          Width = 66.141720080000050000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 345.448823780000000000
          Width = 66.141720080000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 576.268090000000000000
          Width = 74.834618820000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."sEstado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 731.338582677165300000
          Width = 72.944881890000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."CantidadCompra"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 650.079160000000000000
          Width = 81.259840080000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."FechaEstimada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 410.968770000000000000
          Width = 71.811023620000000000
          Height = 17.007874020000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxSeguimientoReq."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 396.850650000000000000
        Width = 978.898270000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Top = 457.323130000000000000
        Width = 978.898270000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 340.157700000000000000
        Width = 978.898270000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 978.898270000000000000
        Condition = 'frxSeguimientoReq."iFolioRequisicion"'
        object Memo17: TfrxMemoView
          Width = 977.007874020000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Requisici'#243'n: [frxSeguimientoReq."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 374.173470000000000000
        Width = 978.898270000000000000
      end
    end
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 384
    Top = 216
  end
  object frxSeguimientoReq: TfrxDBDataset
    UserName = 'frxSeguimientoReq'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 248
    Top = 213
  end
end
