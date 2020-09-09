object frmApruebaRequisiciones: TfrmApruebaRequisiciones
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Solicitud de Aprobaci'#243'n de Requisiciones'
  ClientHeight = 570
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 408
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 408
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        Align = alRight
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = frmBarra2btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = frmBarra2btnEditClick
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
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Aprobaci'#243'n de Requisiciones'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 971
    Height = 535
    Align = alClient
    TabOrder = 1
    object PanelDatos: TPanel
      Left = 1
      Top = 344
      Width = 969
      Height = 190
      Align = alBottom
      TabOrder = 0
      object PanelTopD: TPanel
        Left = 1
        Top = 154
        Width = 967
        Height = 35
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 786
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 786
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            Align = alRight
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 5
              Top = 1
              Height = 31
              Align = alRight
              OnClick = frmBarra2btnPostClick
              ExplicitLeft = 5
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 92
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 92
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 967
        Height = 153
        Align = alClient
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCodigoAutoriza: TcxDBTextEdit
          Left = 146
          Top = 11
          DataBinding.DataField = 'CodigoAutoriza'
          DataBinding.DataSource = ds_AprRequisiciones
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
          Width = 183
        end
        object cxCodigoArea: TcxDBTextEdit
          Left = 146
          Top = 154
          DataBinding.DataField = 'CodigoArea'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 264
        end
        object cxNombre: TcxDBTextEdit
          Left = 146
          Top = 40
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxApellidos: TcxDBTextEdit
          Left = 146
          Top = 69
          DataBinding.DataField = 'Apellidos'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxNumeroPersonal: TcxDBTextEdit
          Left = 146
          Top = 98
          DataBinding.DataField = 'NumeroPersonal'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
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
          Width = 121
        end
        object cxCodigoPerfil: TcxDBTextEdit
          Left = 146
          Top = 126
          DataBinding.DataField = 'CodigoPerfil'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxAutoridadLibera: TcxDBTextEdit
          Left = 565
          Top = 67
          DataBinding.DataField = 'AutoridadLibera'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxMontoAutorizado: TcxDBCurrencyEdit
          Left = 565
          Top = 95
          DataBinding.DataField = 'MontoAutorizado'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 9
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 374
        end
        object cxMontoMensual: TcxDBCurrencyEdit
          Left = 565
          Top = 123
          DataBinding.DataField = 'MontoMensual'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 10
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxCodigoCentroCosto: TcxDBTextEdit
          Left = 565
          Top = 11
          DataBinding.DataField = 'CodigoCentroCosto'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxTipoAutorizacion: TcxDBComboBox
          Left = 565
          Top = 39
          DataBinding.DataField = 'TipoAutorizacion'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Properties.Items.Strings = (
            'PO'
            'Req')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxTelefono: TcxDBTextEdit
          Left = 565
          Top = 151
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = ds_AprRequisiciones
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 11
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
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo de Autorizaci'#243'n:'
          Control = cxCodigoAutoriza
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo de '#193'rea:'
          Control = cxCodigoArea
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem16: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Nombre:'
          Control = cxNombre
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Apellidos:'
          Control = cxApellidos
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'N'#250'mero de Personal:'
          Control = cxNumeroPersonal
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'C'#243'digo de Perfil:'
          Control = cxCodigoPerfil
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Autoridad Libera:'
          Control = cxAutoridadLibera
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Monto Autorizado:'
          Control = cxMontoAutorizado
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Monto Mensual:'
          Control = cxMontoMensual
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo de Centro de Costos:'
          Control = cxCodigoCentroCosto
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Tipo de Autorizaci'#243'n:'
          Control = cxTipoAutorizacion
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Telefono:'
          Control = cxTelefono
          ControlOptions.ShowBorder = False
          Index = 5
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 332
      Width = 969
      Height = 12
      AlignSplitter = salBottom
    end
    object PanelTopDD: TPanel
      Left = 1
      Top = 1
      Width = 969
      Height = 331
      Align = alClient
      TabOrder = 2
      object Grid_Entradas: TcxGrid
        Left = 1
        Top = 1
        Width = 967
        Height = 329
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = pm1
        TabOrder = 0
        object dbg_OCVista: TcxGridDBTableView
          PopupMenu = pm1
          OnKeyUp = dbg_OCVistaKeyUp
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
          DataController.DataSource = ds_AprRequisiciones
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = dbg_OCVistaDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = dbg_OCVistaDataControllerFilterBeforeChange
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupRowHeight = 20
          OptionsView.Indicator = True
          object dbg_Codigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoAutoriza'
            SortIndex = 0
            SortOrder = soDescending
            Width = 150
          end
          object dbg_CodPerfil: TcxGridDBColumn
            Caption = 'C'#243'digo Perfil'
            DataBinding.FieldName = 'CodigoPerfil'
            Width = 150
          end
          object dbg_NombreC: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreCompleto'
            Width = 150
          end
          object dbg_Telefono: TcxGridDBColumn
            Caption = 'Tel'#233'fono'
            DataBinding.FieldName = 'Telefono'
            Width = 150
          end
          object dbg_TipoAutorizacion: TcxGridDBColumn
            Caption = 'Tipo de Autorizaci'#243'n'
            DataBinding.FieldName = 'TipoAutorizacion'
            Width = 150
          end
        end
        object dbgLevOC: TcxGridLevel
          GridView = dbg_OCVista
        end
      end
    end
  end
  object frxOrdenCompra: TfrxDBDataset
    UserName = 'frxOrdenCompra'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 952
    Top = 229
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
    ReportOptions.CreateDate = 41899.829232916700000000
    ReportOptions.LastChange = 43431.380123356480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBRequisicion."sPrioridad"> = '#39'Normal'#39' then'
      '       Memo33.text := '#39'X'#39
      '  else'
      '       Memo34.text := '#39'X'#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 224
    Top = 88
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 49.133880240000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Picture1: TfrxPictureView
          Width = 120.944881890000000000
          Height = 49.133858270000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Width = 309.921203700000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6160640
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'REQUISICI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 431.102660000000000000
          Width = 230.551207950000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 661.653990000000000000
          Width = 64.251973390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prioridad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 661.653990000000000000
          Top = 18.897650000000000000
          Width = 49.133853390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Normal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 661.653990000000000000
          Top = 34.015770000000010000
          Width = 49.133853390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Urgente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 725.906000000000000000
          Width = 94.488213390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' de Folio')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 725.906000000000000000
          Top = 18.897650000000000000
          Width = 94.488213390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha de Solicitud')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 725.906000000000000000
          Top = 34.015770000000010000
          Width = 94.488213390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' de Proyecto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 820.158010000000000000
          Width = 154.960693390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicion."sNumFolio"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 820.158010000000000000
          Top = 18.897650000000000000
          Width = 154.960693390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[Fecha]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 820.158010000000000000
          Top = 34.015770000000010000
          Width = 154.960693390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicion."mReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 710.787880000000000000
          Top = 18.897650000000000000
          Width = 15.118083390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 710.787880000000000000
          Top = 34.015770000000010000
          Width = 15.118083390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692937800000000000
        Top = 128.504020000000000000
        Width = 980.410081999999900000
        Condition = 'frxDBRequisicion."iFolioRequisicion"'
        object Memo9: TfrxMemoView
          Top = 3.779529999999994000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Datos de la Requisici'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 22.677179999999990000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Part.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795278029999990000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Solicitada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Top = 22.677179999999990000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidades')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Existencia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 177.637910000000000000
          Top = 22.677179999999990000
          Width = 83.149660000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.677179999999990000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' de Parte')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 260.787570000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Interno')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 325.039580000000000000
          Top = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Comercial')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677179999999990000
          Width = 128.504020000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 540.472790000000000000
          Top = 22.677179999999990000
          Width = 64.252010000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677179999999990000
          Width = 370.393940000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n del Producto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897659770000000000
        Top = 207.874150000000000000
        Width = 980.410081999999900000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo24: TfrxMemoView
          Top = 0.000021970000005922
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicion."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 105.826840000000000000
          Top = 0.000021970000005922
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicion."Existencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 177.637910000000000000
          Top = 0.000021970000005922
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 260.787570000000000000
          Top = 0.000021970000005922
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 325.039580000000000000
          Top = 0.000021970000005922
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 411.968770000000000000
          Top = 0.000021970000005922
          Width = 128.504020000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sMarca"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 540.472790000000000000
          Top = 0.000021970000005922
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sModelo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 604.724800000000000000
          Top = 0.000021970000005922
          Width = 370.393940000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 240.000146460000000000
        Top = 287.244280000000000000
        Width = 980.410081999999900000
        object Memo35: TfrxMemoView
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 491.338900000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones (Solicitante) de la urgencia del material:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 18.897650000000000000
          Width = 491.338900000000000000
          Height = 56.692913390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mComentarios"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 483.779840000000000000
          Height = 56.692913390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mObsUrgencia"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 627.401577240000000000
          Top = 79.370130000000010000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Autoriza')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 279.685220000000000000
          Top = 79.370130000000010000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Datos del Solicitante')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 79.370130000000010000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Informaci'#243'n Adicional')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 279.685220000000000000
          Top = 98.267780000000010000
          Width = 347.716760000000000000
          Height = 94.488188980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            ''
            'Firma:'
            '[frxDBRequisicion."sSolicito"]'
            'Nombre:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 627.401980000000000000
          Top = 98.267780000000010000
          Width = 347.716760000000000000
          Height = 94.488188980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            ''
            'Firma:'
            '[frxDBRequisicion."AutorizoR"]'
            'Nombre:'
            '[frxDBRequisicion."CargoAutorizo"]'
            'Cargo:')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end>
        end
        object Memo44: TfrxMemoView
          Top = 98.267780000000010000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'Lugar de Entrega:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 117.165430000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'Referencia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 136.063080000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Top = 154.960730000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'Requisita por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 173.858380000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Fecha Requerida:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 113.385900000000000000
          Top = 98.267780000000010000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRequisicion."lugarentrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 113.385900000000000000
          Top = 117.165430000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRequisicion."mReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 113.385900000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRequisicion."departamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 113.385900000000000000
          Top = 154.960730000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRequisicion."sRequisita"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 113.385900000000000000
          Top = 173.858380000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 786.142240000000000000
          Top = 222.992270000000000000
          Width = 188.966981390000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 786.142240000000000000
          Top = 196.535560000000000000
          Width = 188.966981390000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Formato: FOR-SIG-66 AGO 2018 REV. 0 ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenXLS: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 'Archivo de Microsoft Excel|*.XLS'
    Left = 400
    Top = 106
  end
  object rxPrecios: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sIdInsumo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sIdProveedor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dFecha1'
        DataType = ftDate
      end
      item
        Name = 'dFecha2'
        DataType = ftDate
      end
      item
        Name = 'dFecha3'
        DataType = ftDate
      end
      item
        Name = 'dFecha4'
        DataType = ftDate
      end
      item
        Name = 'dFecha5'
        DataType = ftDate
      end
      item
        Name = 'dFecha6'
        DataType = ftDate
      end
      item
        Name = 'dFecha7'
        DataType = ftDate
      end
      item
        Name = 'dFecha8'
        DataType = ftDate
      end
      item
        Name = 'dCosto1'
        DataType = ftFloat
      end
      item
        Name = 'dCosto2'
        DataType = ftFloat
      end
      item
        Name = 'dCosto3'
        DataType = ftFloat
      end
      item
        Name = 'dCosto4'
        DataType = ftFloat
      end
      item
        Name = 'dCosto5'
        DataType = ftFloat
      end
      item
        Name = 'dCosto6'
        DataType = ftFloat
      end
      item
        Name = 'dCosto7'
        DataType = ftFloat
      end
      item
        Name = 'dCosto8'
        DataType = ftFloat
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'sOrdenCompra1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra8'
        DataType = ftString
        Size = 20
      end>
    Left = 592
    Top = 112
    object rxPreciossContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxPreciossIdInsumo: TStringField
      FieldName = 'sIdInsumo'
      Size = 40
    end
    object rxPreciosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxPreciossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
    end
    object rxPreciosdFecha1: TDateField
      FieldName = 'dFecha1'
    end
    object rxPreciosdFecha2: TDateField
      FieldName = 'dFecha2'
    end
    object rxPreciosdFecha3: TDateField
      FieldName = 'dFecha3'
    end
    object rxPreciosdFecha4: TDateField
      FieldName = 'dFecha4'
    end
    object rxPreciosdFecha5: TDateField
      FieldName = 'dFecha5'
    end
    object rxPreciosdFecha6: TDateField
      FieldName = 'dFecha6'
    end
    object rxPreciosdFecha7: TDateField
      FieldName = 'dFecha7'
    end
    object rxPreciosdFecha8: TDateField
      FieldName = 'dFecha8'
    end
    object rxPreciosdCosto1: TFloatField
      FieldName = 'dCosto1'
    end
    object rxPreciosdCosto2: TFloatField
      FieldName = 'dCosto2'
    end
    object rxPreciosdCosto3: TFloatField
      FieldName = 'dCosto3'
    end
    object rxPreciosdCosto4: TFloatField
      FieldName = 'dCosto4'
    end
    object rxPreciosdCosto5: TFloatField
      FieldName = 'dCosto5'
    end
    object rxPreciosdCosto6: TFloatField
      FieldName = 'dCosto6'
    end
    object rxPreciosdCosto7: TFloatField
      FieldName = 'dCosto7'
    end
    object rxPreciosdCosto8: TFloatField
      FieldName = 'dCosto8'
    end
    object rxPreciosItem: TIntegerField
      FieldName = 'Item'
    end
    object rxPreciossOrdenCompra1: TStringField
      FieldName = 'sOrdenCompra1'
    end
    object rxPreciossOrdenCompra2: TStringField
      FieldName = 'sOrdenCompra2'
    end
    object rxPreciossOrdenCompra3: TStringField
      FieldName = 'sOrdenCompra3'
    end
    object rxPreciossOrdenCompra4: TStringField
      FieldName = 'sOrdenCompra4'
    end
    object rxPreciossOrdenCompra5: TStringField
      FieldName = 'sOrdenCompra5'
    end
    object rxPreciossOrdenCompra6: TStringField
      FieldName = 'sOrdenCompra6'
    end
    object rxPreciossOrdenCompra7: TStringField
      FieldName = 'sOrdenCompra7'
    end
    object rxPreciossOrdenCompra8: TStringField
      FieldName = 'sOrdenCompra8'
    end
  end
  object frxPrecios: TfrxDBDataset
    UserName = 'frxPrecios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdInsumo=sIdInsumo'
      'mDescripcion=mDescripcion'
      'sIdProveedor=sIdProveedor'
      'dFecha1=dFecha1'
      'dFecha2=dFecha2'
      'dFecha3=dFecha3'
      'dFecha4=dFecha4'
      'dFecha5=dFecha5'
      'dFecha6=dFecha6'
      'dFecha7=dFecha7'
      'dFecha8=dFecha8'
      'dCosto1=dCosto1'
      'dCosto2=dCosto2'
      'dCosto3=dCosto3'
      'dCosto4=dCosto4'
      'dCosto5=dCosto5'
      'dCosto6=dCosto6'
      'dCosto7=dCosto7'
      'dCosto8=dCosto8'
      'Item=Item'
      'sOrdenCompra1=sOrdenCompra1'
      'sOrdenCompra2=sOrdenCompra2'
      'sOrdenCompra3=sOrdenCompra3'
      'sOrdenCompra4=sOrdenCompra4'
      'sOrdenCompra5=sOrdenCompra5'
      'sOrdenCompra6=sOrdenCompra6'
      'sOrdenCompra7=sOrdenCompra7'
      'sOrdenCompra8=sOrdenCompra8')
    DataSet = rxPrecios
    BCDToCurrency = False
    Left = 656
    Top = 141
  end
  object styleGrid: TcxStyleRepository
    Scalable = True
    Left = 108
    Top = 144
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object PopupPrincipal: TPopupMenu
    Left = 169
    Top = 120
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 4
      ShortCut = 122
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ImageIndex = 12
      ShortCut = 16470
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      ImageIndex = 5
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object ComentariosAdicionales: TMenuItem
      Caption = 'ComentariosAdicionales'
      ImageIndex = 8
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object cxmglst1: TcxImageList
    FormatVersion = 1
    DesignInfo = 11011016
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 1072
    Top = 112
  end
  object datasetfrximgfirmas: TfrxDBDataset
    UserName = 'datasetfrximgfirmas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'bimagen14=bimagen14'
      'bimagen16=bimagen16'
      'bImagen14Sello=bImagen14Sello')
    BCDToCurrency = False
    Left = 896
    Top = 144
  end
  object pm1: TPopupMenu
    Images = connection.cxIconos16
    Left = 257
    Top = 144
    object MenuItem1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object MenuItem2: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object MenuItem5: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object MenuItem6: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object MenuItem7: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
    end
    object MenuItem8: TMenuItem
      Caption = '-'
    end
    object MenuItem9: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object MenuItem10: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object MenuItem11: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object MenuItem12: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 488
    Top = 136
  end
  object ds_ordenTrabajo: TDataSource
    DataSet = zOrdenTrabajo
    Left = 704
    Top = 147
  end
  object ds_Pedidos: TDataSource
    DataSet = zPedidos
    Left = 832
    Top = 107
  end
  object zOrdenTrabajo: TUniQuery
    Left = 704
    Top = 184
  end
  object zPedidos: TUniQuery
    Left = 784
    Top = 160
  end
  object ds_requisicion: TDataSource
    DataSet = zRequisicion
    Left = 736
    Top = 176
  end
  object ds_cuentaBanco: TDataSource
    DataSet = zCuentaBanco
    Left = 936
    Top = 112
  end
  object zRequisicion: TUniQuery
    Left = 768
    Top = 104
  end
  object zCuentaBanco: TUniQuery
    Left = 800
    Top = 176
  end
  object ds_FormaPago: TDataSource
    DataSet = zFormaPago
    Left = 872
    Top = 128
  end
  object zFormaPago: TUniQuery
    Left = 880
    Top = 200
  end
  object ds_Proveedor: TDataSource
    DataSet = zProveedor
    Left = 320
    Top = 163
  end
  object zProveedor: TUniQuery
    Left = 248
    Top = 203
  end
  object zDepartamento: TUniQuery
    Left = 528
    Top = 152
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 856
    Top = 56
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 144
    Top = 512
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 196
    Top = 513
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 416
    Top = 203
  end
  object zFirma: TUniQuery
    Left = 392
    Top = 163
  end
  object zAprRequisiciones: TUniQuery
    Left = 562
    Top = 435
  end
  object ds_AprRequisiciones: TDataSource
    DataSet = zAprRequisiciones
    Left = 658
    Top = 435
  end
end
