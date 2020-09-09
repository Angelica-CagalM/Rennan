object FrmConfGuardias: TFrmConfGuardias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Periodos de Guardias'
  ClientHeight = 475
  ClientWidth = 1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
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
      AutoSize = True
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
          OnClick = btnAddClick
          ExplicitLeft = -5
          ExplicitTop = -2
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
          Tag = 13
          Height = 31
          Visible = False
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
  object PanelEmpresa: TPanel
    Left = 0
    Top = 35
    Width = 217
    Height = 440
    Align = alLeft
    TabOrder = 1
    object Grid_Bitacora: TcxGrid
      Left = 1
      Top = 1
      Width = 215
      Height = 438
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      object BView_empresa: TcxGridDBTableView
        OnDblClick = BView_empresaDblClick
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
        Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellClick = BView_empresaCellClick
        DataController.DataSource = dsGuardias
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object BView_empresaColumn1: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sIdFolio'
          Width = 94
        end
        object BView_empresaColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Guardia'
          Width = 107
        end
      end
      object Grid_BitacoraLevel1: TcxGridLevel
        GridView = BView_empresa
      end
    end
  end
  object cxSplitterLateral: TcxSplitter
    Left = 217
    Top = 35
    Width = 6
    Height = 440
  end
  object PanelDatos: TPanel
    Left = 223
    Top = 35
    Width = 536
    Height = 440
    Align = alClient
    TabOrder = 3
    object Grid_Guardias: TcxGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 243
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_GuardiasDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsGuardiasDetalle
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
        OptionsView.Indicator = True
        object colIdGiardia: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 43
        end
        object colProyecto: TcxGridDBColumn
          Caption = 'Guardia Num.'
          DataBinding.FieldName = 'GuardiaNum'
          Width = 83
        end
        object colFechaInicio: TcxGridDBColumn
          Caption = 'Periodo Inicio'
          DataBinding.FieldName = 'FechaInicio'
          Width = 35
        end
        object ColFechaFinal: TcxGridDBColumn
          Caption = 'Periodo Final'
          DataBinding.FieldName = 'FechaFinal'
          Width = 35
        end
        object colSubida: TcxGridDBColumn
          DataBinding.FieldName = 'FechaSubida'
          Width = 33
        end
        object colBajada: TcxGridDBColumn
          DataBinding.FieldName = 'FechaBajada'
          Width = 29
        end
        object colPlataforma: TcxGridDBColumn
          DataBinding.FieldName = 'Plataforma'
          Width = 32
        end
        object colPernocta: TcxGridDBColumn
          DataBinding.FieldName = 'Pernocta'
          Width = 34
        end
        object ColActivo: TcxGridDBColumn
          DataBinding.FieldName = 'Activo'
          Width = 30
        end
      end
      object Grid_GuardiasLevel1: TcxGridLevel
        GridView = Grid_GuardiasDBTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 244
      Width = 534
      Height = 12
      AlignSplitter = salBottom
    end
    object PanelD: TPanel
      Left = 1
      Top = 256
      Width = 534
      Height = 183
      Align = alBottom
      TabOrder = 2
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 532
        Height = 146
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxFechaInicio: TcxDBDateEdit
          Left = 118
          Top = 40
          DataBinding.DataField = 'FechaInicio'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnExit = cxFechaInicioExit
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxGuardiaNumero: TcxDBTextEdit
          Left = 118
          Top = 11
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsGuardiasDetalle
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
          Width = 80
        end
        object cxFechaTermino: TcxDBDateEdit
          Left = 233
          Top = 40
          DataBinding.DataField = 'FechaFinal'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxGuardia: TcxDBTextEdit
          Left = 287
          Top = 11
          DataBinding.DataField = 'GuardiaNum'
          DataBinding.DataSource = dsGuardiasDetalle
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
          Width = 371
        end
        object cxFechaSubida: TcxDBDateEdit
          Left = 341
          Top = 40
          TabStop = False
          DataBinding.DataField = 'FechaSubida'
          DataBinding.DataSource = dsGuardiasDetalle
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyUp = GlobalKeyUp
          Width = 114
        end
        object cxFechaBajada: TcxDBDateEdit
          Left = 543
          Top = 40
          TabStop = False
          DataBinding.DataField = 'FechaBajada'
          DataBinding.DataSource = dsGuardiasDetalle
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyUp = GlobalKeyUp
          Width = 125
        end
        object cxTipoNomina: TcxDBLookupComboBox
          Left = 118
          Top = 68
          DataBinding.DataField = 'IdTipoNomina'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.KeyFieldNames = 'IdTipoNomina'
          Properties.ListColumns = <
            item
              FieldName = 'Titulo'
            end>
          Properties.ListSource = ds_tiponomina
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnEnter = EnterControl
          OnExit = cxTipoNominaExit
          OnKeyUp = GlobalKeyUp
          Width = 55
        end
        object cxPlataforma: TcxDBLookupComboBox
          Left = 416
          Top = 11
          DataBinding.DataField = 'sIdPlataforma'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.KeyFieldNames = 'sIdPlataforma'
          Properties.ListColumns = <
            item
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = ds_plataformas
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
          Width = 252
        end
        object cxRegimenContrato: TcxDBLookupComboBox
          Left = 118
          Top = 97
          DataBinding.DataField = 'id_tipo_regimen'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'descripcion'
            end>
          Properties.ListSource = ds_regimencontrato
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 191
        end
        object cxTipoJornada: TcxDBLookupComboBox
          Left = 543
          Top = 68
          DataBinding.DataField = 'id_tipo_jornada'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'descripcion'
            end>
          Properties.ListSource = ds_tipojornada
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 125
        end
        object dxDBToggleSwitch1: TdxDBToggleSwitch
          Left = 553
          Top = 97
          TabStop = False
          Caption = 'Activo'
          DataBinding.DataField = 'Activo'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'No'
          Properties.StateIndicator.OnText = 'Si'
          Properties.StateIndicator.Position = sipInside
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 11
        end
        object cxTipoContrato: TcxDBLookupComboBox
          Left = 282
          Top = 97
          DataBinding.DataField = 'id_tipo_contrato'
          DataBinding.DataSource = dsGuardiasDetalle
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'descripcion'
            end>
          Properties.ListSource = ds_tipoContrato
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 265
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = 'Fecha Inicio'
          Control = cxFechaInicio
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'digo'
          Control = cxGuardiaNumero
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Termino'
          Control = cxFechaTermino
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Guardia Num.'
          Control = cxGuardia
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Subida'
          Control = cxFechaSubida
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha Bajada'
          Control = cxFechaBajada
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 3
        end
        object cbGuardia: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Tipo N'#243'mina'
          Control = cxTipoNomina
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Plataforma'
          Control = cxPlataforma
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Regimen Contrato'
          Control = cxRegimenContrato
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignVert = avClient
          CaptionOptions.Text = 'Tipo de Jornada'
          Control = cxTipoJornada
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Activo'
          CaptionOptions.Visible = False
          Control = dxDBToggleSwitch1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 3
          AutoCreated = True
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignVert = avClient
          CaptionOptions.Text = 'Tipo de Contrato'
          Control = cxTipoContrato
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 147
        Width = 532
        Height = 35
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 352
          Top = 1
          Width = 179
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 352
          ExplicitTop = 1
          ExplicitWidth = 179
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Left = 1
            Width = 178
            Height = 33
            Align = alRight
            ExplicitLeft = 1
            ExplicitWidth = 178
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 3
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnPostClick
              ExplicitLeft = 3
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 90
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnCancelClick
              ExplicitLeft = 90
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
    end
  end
  object PanelDetalle: TPanel
    Left = 765
    Top = 35
    Width = 316
    Height = 440
    Align = alRight
    TabOrder = 4
    Visible = False
    object cxPageDetalle: TcxPageControl
      Left = 1
      Top = 1
      Width = 314
      Height = 438
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
      ClientRectBottom = 436
      ClientRectLeft = 2
      ClientRectRight = 312
      ClientRectTop = 29
      object tabInformes: TcxTabSheet
        Caption = 'Informes'
        ImageIndex = 31
        object PanelInferiorInforme: TPanel
          Left = 0
          Top = 183
          Width = 310
          Height = 224
          Align = alClient
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 308
            Height = 222
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
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
          Width = 310
          Height = 6
          AlignSplitter = salTop
        end
        object PanelSuperiorInforme: TPanel
          Left = 0
          Top = 0
          Width = 310
          Height = 177
          Align = alTop
          TabOrder = 2
          object dxLayoutControl3: TdxLayoutControl
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 302
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
              Left = 147
              Top = 127
              Width = 145
              Height = 25
              Caption = 'Imprimir'
              OptionsImage.ImageIndex = 5
              OptionsImage.Images = connection.cxIconos16
              TabOrder = 1
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
    Left = 759
    Top = 35
    Width = 6
    Height = 440
    AlignSplitter = salRight
    Visible = False
  end
  object zGuardias: TUniQuery
    Connection = connection.Uconnection
    Left = 25
    Top = 99
  end
  object dsGuardias: TDataSource
    DataSet = zGuardias
    Left = 81
    Top = 99
  end
  object zGuardiasDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 209
    Top = 107
  end
  object dsGuardiasDetalle: TDataSource
    DataSet = zGuardiasDetalle
    Left = 289
    Top = 107
  end
  object dsTraerGuardias: TDataSource
    DataSet = TraerGuardias
    Left = 677
    Top = 382
  end
  object TraerGuardias: TUniQuery
    Connection = connection.Uconnection
    Left = 757
    Top = 382
  end
  object zTipoNomina: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT g.*,'
      
        '(SELECT Embarcacion FROM master_embarcaciones as e WHERE e.IdEmb' +
        'arcacion = g.IdEmbarcacion) as Embarcacion'
      'FROM rh_guardias as g')
    Left = 49
    Top = 163
  end
  object ds_tiponomina: TDataSource
    DataSet = zTipoNomina
    Left = 105
    Top = 163
  end
  object plataformas: TUniQuery
    Connection = connection.Uconnection
    Left = 65
    Top = 243
  end
  object ds_plataformas: TDataSource
    DataSet = plataformas
    Left = 121
    Top = 243
  end
  object zTipoJornada: TUniQuery
    Connection = connection.Uconnection
    Left = 65
    Top = 291
  end
  object ds_tipojornada: TDataSource
    DataSet = zTipoJornada
    Left = 121
    Top = 291
  end
  object zTipoContrato: TUniQuery
    Connection = connection.Uconnection
    Left = 65
    Top = 339
  end
  object ds_tipoContrato: TDataSource
    DataSet = zTipoContrato
    Left = 121
    Top = 339
  end
  object zRegimenContrato: TUniQuery
    Connection = connection.Uconnection
    Left = 65
    Top = 387
  end
  object ds_regimencontrato: TDataSource
    DataSet = zRegimenContrato
    Left = 121
    Top = 387
  end
  object asistencias: TUniQuery
    Connection = connection.Uconnection
    Left = 646
    Top = 103
  end
  object ds_asistencias: TDataSource
    DataSet = asistencias
    Left = 648
    Top = 144
  end
  object frxAsistencia: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43421.826959409720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   xCaracter : byte ;'
      '   dJornadasNormales,'
      '   dJornadasExtras : Double ;'
      '   Separador : string;'
      '   Cadena    : string;'
      '   mes, dia : string;'
      '   diasTotales : integer;'
      '   SumaTotal : double;'
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   dJornadasNormales := 0 ;'
      '   dJornadasExtras := 0 ;'
      'end;'
      ''
      
        'procedure ReporteDiarioBarcoOnBeforePrint(Sender: TfrxComponent)' +
        ';'
      'var'
      '   FecAux : tDateTime;'
      '   Resultado : boolean;'
      '   iDia, iLeft : double;'
      'begin'
      ''
      '   try'
      
        '     FecAux := StrToDate('#39'29/02/'#39'+copy(dateTostr(<fecha_final>),' +
        '7,4));'
      '     Resultado := True;'
      '   except'
      '     Resultado := False;'
      '   end;'
      ''
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      ''
      
        '    if (StrToInt(mes) =1) or (StrToInt(mes)=3) or (StrToInt(mes)' +
        '=5) or (StrToInt(mes)=7) or (StrToInt(mes)=8) or (StrToInt(mes)=' +
        '10) or (StrToInt(mes) = 12) then'
      '       diasTotales := 31;'
      ''
      '    if (StrToInt(mes)=2) then'
      '       diasTotales := 28;'
      ''
      '    if (StrToInt(mes)=2) and (Resultado =True) then'
      '       diasTotales := 29;'
      ''
      
        '    if (StrToInt(mes)=4) or (StrToInt(mes)=6) or (StrToInt(mes)=' +
        '9) or (StrToInt(mes)=11) then'
      '       diasTotales := 30;'
      ''
      '    memo100.text := '#39'1'#39' ;'
      '    memo101.text := '#39'2'#39' ;'
      '    memo102.text := '#39'3'#39' ;'
      '    memo103.text := '#39'4'#39' ;'
      '    memo104.text := '#39'5'#39' ;'
      '    memo105.text := '#39'6'#39' ;'
      '    memo106.text := '#39'7'#39' ;'
      '    memo107.text := '#39'8'#39' ;'
      '    memo108.text := '#39'9'#39' ;'
      '    memo109.text := '#39'10'#39' ;'
      '    memo110.text := '#39'11'#39' ;'
      '    memo111.text := '#39'12'#39' ;'
      '    memo112.text := '#39'13'#39' ;'
      '    memo113.text := '#39'14'#39' ;'
      '    memo114.text := '#39'15'#39' ;'
      '    memo115.text := '#39'16'#39' ;'
      '    memo116.text := '#39'17'#39' ;'
      '    memo117.text := '#39'18'#39' ;'
      '    memo118.text := '#39'19'#39' ;'
      '    memo119.text := '#39'20'#39' ;'
      '    memo120.text := '#39'21'#39' ;'
      '    memo121.text := '#39'22'#39' ;'
      '    memo122.text := '#39'23'#39' ;'
      '    memo123.text := '#39'24'#39' ;'
      '    memo124.text := '#39'25'#39' ;'
      '    memo125.text := '#39'26'#39' ;'
      '    memo126.text := '#39'27'#39' ;'
      '    memo127.text := '#39'28'#39' ;'
      '    memo128.text := '#39'29'#39' ;'
      '    memo129.text := '#39'30'#39' ;'
      ''
      '    if (StrToInt(mes) = 2) then'
      '         memo129.text := '#39#39' ;'
      ''
      '    if (StrToInt(mes) = 2)  and (Resultado =False) then'
      '        memo128.text := '#39#39' ;'
      ''
      ''
      
        '    if (StrToInt(mes) = 1) or (StrToInt(mes) = 3)  or (StrToInt(' +
        'mes) = 5)  or (StrToInt(mes) = 7)'
      
        '        or (StrToInt(mes) = 8)  or (StrToInt(mes) = 10)  or (Str' +
        'ToInt(mes) = 12) then'
      '         memo130.text := '#39'31'#39' ;'
      ''
      ''
      '    //Ahora oculta o mostrar si el mes tiene 30, 29, o 28'
      
        '    if (StrToInt(mes) = 2) or (StrToInt(mes) = 4) or (StrToInt(m' +
        'es) = 6)  or (StrToInt(mes) = 9)  or (StrToInt(mes) = 11) then'
      '    begin'
      '        if (StrToInt(mes) = 2) then'
      '           iDia := 74'
      '        else'
      '           iDia := 5;'
      ''
      '        if (StrToInt(mes)=2) and (Resultado =True) then'
      '          iDia := 40;'
      ''
      ''
      '        memo59.Width  := memo59.Width + iDia;'
      '        memo51.Width  := memo51.Width + iDia;'
      '        memo158.Width := memo158.Width + iDia;'
      ''
      '        //Salarios}'
      ''
      '        memo22.Left  := memo22.Left + iDia;'
      '        memo48.Left  := memo48.Left + iDia;'
      '        memo157.Left := memo157.Left + iDia;'
      ''
      '        iLeft := ( memo22.Left + (memo22.Width+1));'
      ''
      '        memo37.Left  := iLeft ;'
      '        memo39.Left  := iLeft ;'
      '        memo92.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo37.Width+1);'
      ''
      '        //Dia 1'
      '        memo100.Left  := iLeft ;'
      '        memo1.Left    := iLeft ;'
      '        memo156.Left  := iLeft ;'
      ''
      ''
      '        iLeft := iLeft + (memo100.Width+1);'
      ''
      '        //Dia 2'
      '        memo101.Left  := iLeft;'
      '        memo4.Left    := iLeft;'
      '        memo155.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo101.Width+1);'
      ''
      '        //Dia 3'
      '        memo102.Left  := iLeft;'
      '        memo47.Left   := iLeft;'
      '        memo154.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo102.Width+1);'
      ''
      '        //Dia 4'
      ''
      '        memo103.Left  := iLeft;'
      '        memo5.Left    := iLeft;'
      '        memo153.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo103.Width+1);'
      ''
      '        //Dia 5'
      '        memo104.Left  := iLeft;'
      '        memo7.Left    := iLeft  ;'
      '        memo152.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo104.Width+1);'
      ''
      '        //Dia 6'
      '        memo105.Left  := iLeft;'
      '        memo8.Left    := iLeft  ;'
      '        memo151.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo105.Width+1);'
      ''
      '        //Dia 7'
      '        memo106.Left  := iLeft ;'
      '        memo9.Left    := iLeft   ;'
      '        memo150.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo106.Width+1);'
      ''
      '        //Dia 8'
      ''
      '        memo107.Left  := iLeft ;'
      '        memo10.Left   := iLeft  ;'
      '        memo149.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo107.Width+1);'
      ''
      '        //Dia 9'
      '        memo108.Left  := iLeft ;'
      '        memo11.Left   := iLeft ;'
      '        memo148.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo108.Width+1);'
      ''
      '        //Dia 10'
      '        memo109.Left  := iLeft ;'
      '        memo13.Left   := iLeft  ;'
      '        memo147.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo109.Width+1);'
      ''
      '        //Dia 11'
      '        memo110.Left  := iLeft ;'
      '        memo14.Left   := iLeft  ;'
      '        memo146.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo110.Width+1);'
      ''
      '        //Dia 12'
      '        memo111.Left  := iLeft ;'
      '        memo15.Left   := iLeft  ;'
      '        memo145.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo111.Width+1);'
      ''
      '        //Dia 13'
      '        memo112.Left  := iLeft ;'
      '        memo16.Left   := iLeft  ;'
      '        memo144.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo112.Width+1);'
      ''
      '        //Dia 14'
      '        memo113.Left  := iLeft ;'
      '        memo17.Left   := iLeft  ;'
      '        memo143.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo113.Width+1);'
      ''
      '        //Dia 15'
      '        memo114.Left  := iLeft ;'
      '        memo25.Left   := iLeft  ;'
      '        memo142.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo114.Width+1);'
      ''
      '        //Dia 16'
      '        memo115.Left  := iLeft ;'
      '        memo27.Left   := iLeft  ;'
      '        memo141.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo115.Width+1);'
      ''
      '        //Dia 17'
      '        memo116.Left  := iLeft ;'
      '        memo28.Left   := iLeft  ;'
      '        memo140.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo116.Width+1);'
      ''
      '        //Dia 18'
      '        memo117.Left  := iLeft;'
      '        memo29.Left   := iLeft;'
      '        memo139.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo117.Width+1);'
      ''
      '        //Dia 19'
      '        memo118.Left  := iLeft ;'
      '        memo30.Left   := iLeft;'
      '        memo138.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo118.Width+1);'
      ''
      '        //Dia 20'
      '        memo119.Left  := iLeft;'
      '        memo31.Left   := iLeft;'
      '        memo137.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo119.Width+1);'
      ''
      '        //Dia 21'
      '        memo120.Left  := iLeft;'
      '        memo32.Left   := iLeft;'
      '        memo136.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo120.Width+1);'
      ''
      '        //Dia 22'
      '        memo121.Left  := iLeft;'
      '        memo33.Left   := iLeft;'
      '        memo135.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo121.Width+1);'
      ''
      '        //Dia 23'
      '        memo122.Left  := iLeft;'
      '        memo34.Left   := iLeft;'
      '        memo134.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo122.Width+1);'
      ''
      '        //Dia 24'
      '        memo123.Left  := iLeft;'
      '        memo35.Left   := iLeft;'
      '        memo133.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo123.Width+1);'
      ''
      '        //Dia 25'
      '        memo124.Left  := iLeft;'
      '        memo38.Left   := iLeft;'
      '        memo132.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo124.Width+1);'
      ''
      '        //Dia 26'
      '        memo125.Left  := iLeft;'
      '        memo40.Left   := iLeft;'
      '        memo131.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo125.Width+1);'
      ''
      '        //Dia 27'
      '        memo126.Left  := iLeft;'
      '        memo41.Left   := iLeft;'
      '        memo99.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo126.Width+1);'
      ''
      '        //Dia 28'
      '        memo127.Left  := iLeft;'
      '        memo42.Left   := iLeft;'
      '        memo98.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo127.Width+1);'
      ''
      '        //Dia 29'
      '        memo128.Left  := iLeft;'
      '        memo43.Left   := iLeft;'
      '        memo91.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo128.Width+1);'
      ''
      '        //Dia 30'
      '        memo129.Left  := iLeft;'
      '        memo44.Left   := iLeft;'
      '        memo56.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo129.Width+1);'
      ''
      '        if (StrToInt(mes) = 2)  and (Resultado =True) then'
      '        begin'
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        if (StrToInt(mes) = 2) and (Resultado =False) then'
      '        begin'
      '           memo128.Visible  := False;'
      '           memo43.Visible   := False;'
      '           memo91.Visible   := False;'
      ''
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        memo130.Visible:= False;'
      '        memo46.Visible := False;'
      '        memo54.Visible := False;'
      ''
      '        memo26.Left := memo26.Left - 6;'
      '        memo2.Left  := memo2.Left  - 6;'
      '        memo20.Left := memo20.Left - 6;'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  mes : string;'
      'begin'
      
        '    Cadena := '#39'DEL '#39'+ '#39'01'#39' +'#39' AL '#39'+  copy(dateToStr(<fecha_final' +
        '>),1,2) +'#39' DE '#39'+ ;'
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      '    if StrToInt(mes)=1 then'
      '       mes := '#39'ENERO'#39
      '    else'
      '    if StrToInt(mes)=2 then'
      '       mes := '#39'FEBRERO'#39
      '    else'
      '    if StrToInt(mes)=3 then'
      '       mes := '#39'MARZO'#39
      '    else'
      '    if StrToInt(mes)=4 then'
      '       mes := '#39'ABRIL'#39
      '    else'
      '    if StrToInt(mes)=5 then'
      '       mes := '#39'MAYO'#39
      '    else'
      '    if StrToInt(mes)=6 then'
      '       mes := '#39'JUNIO'#39
      '    else'
      '    if StrToInt(mes)=7 then'
      '       mes := '#39'JULIO'#39
      '    else'
      '    if StrToInt(mes)=8 then'
      '       mes := '#39'AGOSTO'#39
      '    else'
      '    if StrToInt(mes)=9 then'
      '       mes := '#39'SEPTIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=10 then'
      '       mes := '#39'OCTUBRE'#39
      '    else'
      '    if StrToInt(mes)=11 then'
      '       mes := '#39'NOVIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=12 then'
      '       mes := '#39'DICIEMBRE'#39';'
      ''
      
        '    memo55.Text := cadena +mes+ '#39' DEL '#39'+ copy(dateTostr(<fecha_f' +
        'inal>),7,4);'
      'end;'
      ''
      ''
      'procedure Memo24OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COMPACTO> = '#39'Si'#39' then'
      '    begin'
      '       memo24.Color := $00D8D8D8 ;'
      '       memo59.Color := $00D8D8D8 ;'
      '       memo22.Color  := $00D8D8D8 ;'
      '       memo100.Color := $00D8D8D8 ;'
      '       memo101.Color := $00D8D8D8 ;'
      '       memo102.Color := $00D8D8D8 ;'
      '       memo103.Color := $00D8D8D8 ;'
      '       memo104.Color := $00D8D8D8 ;'
      '       memo105.Color := $00D8D8D8 ;'
      '       memo106.Color := $00D8D8D8 ;'
      '       memo107.Color := $00D8D8D8 ;'
      '       memo108.Color := $00D8D8D8 ;'
      '       memo109.Color := $00D8D8D8 ;'
      '       memo110.Color := $00D8D8D8 ;'
      '       memo111.Color := $00D8D8D8 ;'
      '       memo112.Color := $00D8D8D8 ;'
      '       memo113.Color := $00D8D8D8 ;'
      '       memo114.Color := $00D8D8D8 ;'
      '       memo115.Color := $00D8D8D8 ;'
      '       memo116.Color := $00D8D8D8 ;'
      '       memo117.Color := $00D8D8D8 ;'
      '       memo118.Color := $00D8D8D8 ;'
      '       memo119.Color := $00D8D8D8 ;'
      '       memo120.Color := $00D8D8D8 ;'
      '       memo121.Color := $00D8D8D8 ;'
      '       memo122.Color := $00D8D8D8 ;'
      '       memo123.Color := $00D8D8D8 ;'
      '       memo124.Color := $00D8D8D8 ;'
      '       memo125.Color := $00D8D8D8 ;'
      '       memo126.Color := $00D8D8D8 ;'
      '       memo127.Color := $00D8D8D8 ;'
      '       memo128.Color := $00D8D8D8 ;'
      '       memo129.Color := $00D8D8D8 ;'
      '       memo130.Color := $00D8D8D8 ;'
      '       memo26.Color  := $00D8D8D8 ;'
      '    end'
      '    else'
      '    begin'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo2OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '   SumaTotal := SumaTotal + (<dsGeneradorFolio."dCantTotal">*(<d' +
        'sGeneradorFolio."Salario">/diasTotales));'
      'end;'
      '  '
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial1"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo1.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial1"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo1.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial1"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo1.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial1"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo1.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial1"> = '#39'Especial' +
        #39' then           '
      '                       Memo1.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial1"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo1.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial1"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo1.Color :=$00F0F0F0'
      '                         else'
      
        '                            Memo1.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo1.Color :=clNone;                                '
      'end;'
      ''
      'procedure Memo4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial2"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo4.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial2"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo4.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial2"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo4.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial2"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo4.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial2"> = '#39'Especial' +
        #39' then           '
      '                       Memo4.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial2"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo4.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial2"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo4.Color :=$00F0F0F0'
      '                         else'
      
        '                            Memo4.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo4.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial3"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo47.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial3"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo47.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial3"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo47.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial3"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo47.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial3"> = '#39'Especial' +
        #39' then           '
      '                       Memo47.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial3"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo47.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial3"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo47.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo47.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo47.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial4"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo5.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial4"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo5.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial4"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo5.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial4"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo5.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial4"> = '#39'Especial' +
        #39' then           '
      '                       Memo5.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial4"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo5.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial4"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo5.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo5.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo5.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial5"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo7.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial5"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo7.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial5"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo7.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial5"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo7.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial5"> = '#39'Especial' +
        #39' then           '
      '                       Memo7.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial5"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo7.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial5"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo7.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo7.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo7.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo8OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial6"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo8.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial6"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo8.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial6"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo8.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial6"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo8.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial6"> = '#39'Especial' +
        #39' then           '
      '                       Memo8.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial6"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo8.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial6"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo8.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo8.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo8.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial7"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo9.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial7"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo9.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial7"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo9.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial7"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo9.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial7"> = '#39'Especial' +
        #39' then           '
      '                       Memo9.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial7"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo9.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial7"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo9.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo9.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo9.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin  '
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial8"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo10.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial8"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo10.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial8"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo10.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial8"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo10.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial8"> = '#39'Especial' +
        #39' then           '
      '                       Memo10.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial8"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo10.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial8"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo10.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo10.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo10.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial9"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo11.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial9"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo11.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial9"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo11.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial9"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo11.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial9"> = '#39'Especial' +
        #39' then           '
      '                       Memo11.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial9"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo11.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial9"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo11.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo11.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo11.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial10"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo13.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial10"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo13.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial10"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo13.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial10"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo13.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial10"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo13.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial10"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo13.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial10"> = '#39'F' +
        'in'#39' then           '
      '                            Memo13.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo13.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo13.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial11"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo14.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial11"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo14.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial11"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo14.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial11"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo14.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial11"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo14.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial11"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo14.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial11"> = '#39'F' +
        'in'#39' then           '
      '                            Memo14.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo14.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo14.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial12"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo15.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial12"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo15.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial12"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo15.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial12"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo15.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial12"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo15.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial12"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo15.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial12"> = '#39'F' +
        'in'#39' then           '
      '                            Memo15.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo15.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo15.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial13"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo16.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial13"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo16.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial13"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo16.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial13"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo16.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial13"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo16.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial13"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo16.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial13"> = '#39'F' +
        'in'#39' then           '
      '                            Memo16.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo16.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo16.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial14"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo17.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial14"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo17.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial14"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo17.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial14"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo17.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial14"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo17.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial14"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo17.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial14"> = '#39'F' +
        'in'#39' then           '
      '                            Memo17.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo17.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo17.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial15"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo25.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial15"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo25.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial15"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo25.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial15"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo25.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial15"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo25.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial15"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo25.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial15"> = '#39'F' +
        'in'#39' then           '
      '                            Memo25.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo25.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo25.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial16"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo27.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial16"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo27.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial16"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo27.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial16"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo27.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial16"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo27.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial16"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo27.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial16"> = '#39'F' +
        'in'#39' then           '
      '                            Memo27.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo27.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo27.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial17"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo28.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial17"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo28.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial17"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo28.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial17"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo28.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial17"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo28.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial17"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo28.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial17"> = '#39'F' +
        'in'#39' then           '
      '                            Memo28.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo28.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo28.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo29OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial18"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo29.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial18"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo29.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial18"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo29.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial18"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo29.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial18"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo29.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial18"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo29.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial18"> = '#39'F' +
        'in'#39' then           '
      '                            Memo29.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo29.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo29.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial19"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo30.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial19"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo30.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial19"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo30.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial19"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo30.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial19"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo30.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial19"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo30.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial19"> = '#39'F' +
        'in'#39' then           '
      '                            Memo30.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo30.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo30.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial20"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo31.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial20"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo31.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial20"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo31.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial20"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo31.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial20"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo31.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial20"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo31.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial20"> = '#39'F' +
        'in'#39' then           '
      '                            Memo31.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo31.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo31.Color :=clNone;    '
      'end;'
      ''
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial21"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo32.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial21"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo32.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial21"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo32.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial21"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo32.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial21"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo32.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial21"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo32.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial21"> = '#39'F' +
        'in'#39' then           '
      '                            Memo32.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo32.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo32.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo33OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial22"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo33.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial22"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo33.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial22"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo33.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial22"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo33.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial22"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo33.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial22"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo33.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial22"> = '#39'F' +
        'in'#39' then           '
      '                            Memo33.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo33.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo33.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial23"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo34.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial23"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo34.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial23"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo34.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial23"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo34.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial23"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo34.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial23"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo34.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial23"> = '#39'F' +
        'in'#39' then           '
      '                            Memo34.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo34.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo34.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial24"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo35.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial24"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo35.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial24"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo35.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial24"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo35.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial24"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo35.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial24"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo35.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial24"> = '#39'F' +
        'in'#39' then           '
      '                            Memo35.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo35.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo35.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial25"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo38.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial25"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo38.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial25"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo38.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial25"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo38.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial25"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo38.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial25"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo38.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial25"> = '#39'F' +
        'in'#39' then           '
      '                            Memo38.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo38.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo38.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo40OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial26"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo40.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial26"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo40.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial26"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo40.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial26"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo40.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial26"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo40.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial26"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo40.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial26"> = '#39'F' +
        'in'#39' then           '
      '                            Memo40.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo40.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo40.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial27"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo41.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial27"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo41.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial27"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo41.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial27"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo41.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial27"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo41.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial27"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo41.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial27"> = '#39'F' +
        'in'#39' then           '
      '                            Memo41.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo41.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo41.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial28"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo42.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial28"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo42.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial28"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo42.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial28"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo42.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial28"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo42.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial28"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo42.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial28"> = '#39'F' +
        'in'#39' then           '
      '                            Memo42.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo42.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo42.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo43OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial29"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo43.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial29"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo43.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial29"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo43.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial29"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo43.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial29"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo43.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial29"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo43.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial29"> = '#39'F' +
        'in'#39' then           '
      '                            Memo43.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo43.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo43.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial30"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo44.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial30"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo44.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial30"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo44.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial30"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo44.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial30"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo44.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial30"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo44.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial30"> = '#39'F' +
        'in'#39' then           '
      '                            Memo44.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo44.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo44.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial31"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo46.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial31"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo46.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial31"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo46.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial31"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo46.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial31"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo46.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial31"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo46.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial31"> = '#39'F' +
        'in'#39' then           '
      '                            Memo46.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo46.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo46.Color :=clNone;    '
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnReportPrint = 'no '
    Left = 384
    Top = 136
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSetName = 'dsGeneradorFolio'
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
    object ReporteDiarioBarco: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 162.519645980000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        ReprintOnNewPage = True
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 35.015770000000010000
          Width = 1515.591505590000000000
          Height = 52.913405350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Top = 139.842480630000000000
          Width = 74.614730580000000000
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
            'M.N.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1399.692974410000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1365.677226380000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1331.661478350000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1263.629982280000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1229.614234250000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1195.598486220000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1127.566990160000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1093.551242130000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1059.535494090000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.519746060000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          ShiftMode = smDontShift
          Left = 991.503998030000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.488250000000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          ShiftMode = smDontShift
          Left = 889.456753940000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          ShiftMode = smDontShift
          Left = 821.425257870000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          ShiftMode = smDontShift
          Left = 787.409509840000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          ShiftMode = smDontShift
          Left = 753.393761810000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          ShiftMode = smDontShift
          Left = 719.378013780000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          ShiftMode = smDontShift
          Left = 685.362265750000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          ShiftMode = smDontShift
          Left = 651.346517720000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 617.330769690000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          ShiftMode = smDontShift
          Left = 583.315021650000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.299273620000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.283525590000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          ShiftMode = smDontShift
          Left = 447.252029530000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 254.362204724409000000
          Top = 139.842480630000000000
          Width = 65.007874020000000000
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
            'SUELDO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Top = 139.842480630000000000
          Width = 49.133865590000000000
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
            'CODIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Top = 139.842480630000000000
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
            'NOMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Width = 151.181102360000000000
          Height = 41.574793390000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 1243.465370000000000000
          Width = 151.181102360000000000
          Height = 49.133853390000000000
          Visible = False
          DataField = 'bImagen'
          DataSet = frmReportePeriodo.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 35.905533780000000000
          Top = 57.133890000000010000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO DE COLORES')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 154.519790000000000000
          Top = 57.070831970000000000
          Width = 336.378170000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 566.929500000000000000
          Top = 21.456710000000000000
          Width = 336.378170000000000000
          Height = 22.677170240000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DIAS LABORADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 672.756340000000000000
          Top = 58.511771970000000000
          Width = 325.039580000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo55OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 553.701048580000000000
          Top = 58.133890000000010000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PERIODO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 51.023558580000000000
          Top = 76.590600000000000000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RETARDO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 111.606370000000000000
          Top = 76.590600000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661417320000000
          Top = 139.842610000000000000
          Width = 45.293192430000000000
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
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 1421.103280000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984251969000000
          Top = 139.842610000000000000
          Width = 58.582694250000000000
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
            'S. D.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 34.015770000000010000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'JUSTIFICADO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 111.496231420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16700346
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 179.196970000000000000
          Top = 98.267716540000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCUENTO')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 256.677431420000000000
          Top = 98.267716540000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 9803263
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 196.535560000000000000
          Top = 76.724409448818890000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESPECIAL')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 256.629921259842600000
          Top = 76.724409450000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434828
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 325.039580000000000000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VACACIONES')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 402.520041420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 328.819110000000000000
          Top = 76.724409448818890000
          Width = 68.031466770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FIN SEMANA')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 402.520041420000000000
          Top = 76.724409448818890000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677172680000000000
        Top = 226.771800000000000000
        Width = 1556.410454000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smActualHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad1"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo2OnAfterData'
          OnBeforePrint = 'Memo2OnBeforePrint'
          StretchMode = smActualHeight
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
          Memo.UTF8W = (
            
              '[<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario">/<' +
              'dsGeneradorFolio."DiasMes">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad2"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad4"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.283525589999900000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad5"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.299273620000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad6"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 583.315021650000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad7"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 617.330769690000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad8"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 651.346517720000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad9"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 685.362265750000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad10"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 719.378013780000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad11"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 753.393761810000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad12"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 787.409509840000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad13"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 821.425257870000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad14"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 889.456753940000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad16"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad17"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.488250000000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad18"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 991.503998030000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad19"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.519746060000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad20"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1059.535494090000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad21"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1093.551242130000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad22"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1127.566990160000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad23"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad24"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1195.598486220000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad25"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1229.614234250000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad26"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1263.629982280000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad27"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad28"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1331.661478350000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad29"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1365.677226380000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad30"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1399.692974410000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad31"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 447.252029530000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad3"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 254.362204720000000000
          Width = 65.007874020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
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
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Salario"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Width = 49.133865590000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Codigo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [dsGeneradorFolio."Nombre"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantidad15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661420000000000
          Width = 45.293192430000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
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
            '[dsGeneradorFolio."dCantTotal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984250000000000
          Top = 0.000129369999996243
          Width = 58.582684490000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
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
          HAlign = haRight
          Memo.UTF8W = (
            '[<dsGeneradorFolio."SD">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 355.275820000000000000
        Width = 1556.410454000000000000
        object Memo6: TfrxMemoView
          Left = 1353.071740000000000000
          Top = 20.338590000000010000
          Width = 196.535560000000000000
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
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 1556.410454000000000000
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario' +
              '">/<dsGeneradorFolio."DiasMes">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          ShiftMode = smDontShift
          Width = 49.133865590000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1399.692974410000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1365.677226380000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1331.661478350000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1263.629982280000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1229.614234250000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1195.598486220000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1127.566990160000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1093.551242130000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1059.535494090000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.519746060000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 991.503998030000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.488250000000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 889.456753940000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 821.425257870000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 787.409509840000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 753.393761810000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 719.378013780000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          ShiftMode = smDontShift
          Left = 685.362265750000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 651.346517720000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 617.330769690000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          ShiftMode = smDontShift
          Left = 583.315021650000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.299273620000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.283525590000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          ShiftMode = smDontShift
          Left = 447.252029530000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 254.362204724409000000
          Width = 65.007874020000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661420000000000
          Width = 45.293192430000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."dCantTotal">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984251969000000
          Top = 0.000129370000024664
          Width = 58.582694250000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 0.000014650000000000
        Top = 204.094620000000000000
        Width = 1556.410454000000000000
        Condition = 'contrato."sContrato"'
        Stretched = True
      end
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
    Left = 384
    Top = 96
  end
end
