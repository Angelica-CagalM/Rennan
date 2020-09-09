object FrmAsignarGuardias: TFrmAsignarGuardias
  Left = 0
  Top = 0
  Caption = 'Definir Guardias'
  ClientHeight = 494
  ClientWidth = 1036
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
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelEmpresa: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 494
    Align = alLeft
    TabOrder = 0
    object Grid_Bitacora: TcxGrid
      Left = 1
      Top = 42
      Width = 135
      Height = 451
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
        DataController.DataSource = dsEmpresa
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
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object BView_empresaColumn1: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'FK_titulo'
          Width = 68
        end
      end
      object Grid_BitacoraLevel1: TcxGridLevel
        GridView = BView_empresa
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 135
      Height = 41
      Align = alTop
      TabOrder = 1
      object cxDBImage2: TcxDBImage
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'Logotipo'
        DataBinding.DataSource = dsEmpresa
        Properties.FitMode = ifmProportionalStretch
        Properties.GraphicClassName = 'TJPEGImage'
        TabOrder = 0
        Transparent = True
        Height = 39
        Width = 133
      end
    end
  end
  object SplitterLeft: TcxSplitter
    Left = 137
    Top = 0
    Width = 6
    Height = 494
  end
  object PanelCentro: TPanel
    Left = 143
    Top = 0
    Width = 893
    Height = 494
    Align = alClient
    TabOrder = 2
    object Grid_Guardias: TcxGrid
      Left = 1
      Top = 36
      Width = 891
      Height = 258
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
        DataController.DataSource = dsGuardias
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object colIdGiardia: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 131
        end
        object colFechaInicio: TcxGridDBColumn
          DataBinding.FieldName = 'Guardia'
          Width = 292
        end
        object colProyecto: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sNumeroOrden'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_proyectos
          Width = 145
        end
        object colEmbarcacion: TcxGridDBColumn
          DataBinding.FieldName = 'Embarcacion'
          Width = 228
        end
        object ColActivo: TcxGridDBColumn
          DataBinding.FieldName = 'Activo'
          Width = 93
        end
      end
      object Grid_GuardiasLevel1: TcxGridLevel
        GridView = Grid_GuardiasDBTableView1
      end
    end
    object SplitterDown: TcxSplitter
      Left = 1
      Top = 294
      Width = 891
      Height = 6
      AlignSplitter = salBottom
      Visible = False
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 300
      Width = 891
      Height = 193
      Align = alBottom
      TabOrder = 2
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 889
        Height = 151
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCodigo: TcxDBTextEdit
          Left = 112
          Top = 10
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsGuardias
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
          Width = 121
        end
        object cxImgActivo: TdxDBToggleSwitch
          Left = 767
          Top = 10
          TabStop = False
          Caption = 'Activo'
          DataBinding.DataField = 'Activo'
          DataBinding.DataSource = dsGuardias
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
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
        end
        object cxGuardias: TcxDBTextEdit
          Left = 284
          Top = 10
          DataBinding.DataField = 'Guardia'
          DataBinding.DataSource = dsGuardias
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
          Width = 364
        end
        object cxEmbarcacion: TcxDBLookupComboBox
          Left = 112
          Top = 39
          DataBinding.DataField = 'IdEmbarcacion'
          DataBinding.DataSource = dsGuardias
          ParentFont = False
          Properties.KeyFieldNames = 'IdEmbarcacion'
          Properties.ListColumns = <
            item
              FieldName = 'Embarcacion'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmbarcacion
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 373
        end
        object cxProyecto: TcxDBLookupComboBox
          Left = 112
          Top = 68
          DataBinding.DataField = 'sNumeroOrden'
          DataBinding.DataSource = dsGuardias
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_proyectos
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxContrato: TcxDBLookupComboBox
          Left = 112
          Top = 97
          DataBinding.DataField = 'IdDoctoContrato'
          DataBinding.DataSource = dsGuardias
          ParentFont = False
          Properties.KeyFieldNames = 'IdDoctoReporte'
          Properties.ListColumns = <
            item
              FieldName = 'Documento'
            end>
          Properties.ListSource = ds_formato_contrato
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
          Width = 366
        end
        object cxCredencial: TcxDBLookupComboBox
          Left = 580
          Top = 97
          DataBinding.DataField = 'IdDoctoCredencial'
          DataBinding.DataSource = dsGuardias
          ParentFont = False
          Properties.KeyFieldNames = 'IdDoctoReporte'
          Properties.ListColumns = <
            item
              FieldName = 'Documento'
            end>
          Properties.ListSource = ds_formato_credencial
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 6
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 311
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
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Codigo'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cxImgActivo
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Guardia'
          Control = cxGuardias
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Embarcacion'
          Control = cxEmbarcacion
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Proyecto'
          Control = cxProyecto
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Formato Contrato'
          Control = cxContrato
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Formato Credencial'
          Control = cxCredencial
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 3
          AutoCreated = True
        end
      end
      object pnlBtn2: TPanel
        Left = 1
        Top = 152
        Width = 889
        Height = 40
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 699
          Top = 1
          Width = 189
          Height = 38
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 699
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 38
          inherited Panel1: TPanel
            Width = 189
            Height = 38
            ExplicitWidth = 189
            ExplicitHeight = 38
            inherited btnPost: TcxButton
              Left = 3
              Top = 5
              OnClick = btnPostClick
              ExplicitLeft = 3
              ExplicitTop = 5
            end
            inherited btnCancel: TcxButton
              Left = 96
              Top = 4
              OnClick = btnCancelClick
              ExplicitLeft = 96
              ExplicitTop = 4
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 891
      Height = 35
      Align = alTop
      TabOrder = 3
      inline frmBarraH11: TfrmBarraH1
        Left = 328
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        AutoSize = True
        TabOrder = 0
        ExplicitLeft = 328
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
            ExplicitLeft = 1
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
            Height = 31
            Visible = False
            ExplicitLeft = 401
            ExplicitHeight = 31
          end
          inherited btnDetalle: TcxButton
            Height = 31
            Enabled = False
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
        Align = alClient
        Caption = 'Tabla...Agregando Datos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
    end
  end
  object zEmpresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select IdEmpresa,Codigo,FK_Titulo, RazonSocial From master_empre' +
        'sa')
    Left = 8
    Top = 40
  end
  object dsEmpresa: TDataSource
    DataSet = zEmpresa
    Left = 64
    Top = 40
  end
  object zGuardias: TUniQuery
    Connection = connection.Uconnection
    Left = 673
    Top = 107
  end
  object dsGuardias: TDataSource
    DataSet = zGuardias
    Left = 753
    Top = 115
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT * FROM master_embarcaciones')
    Left = 169
    Top = 107
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 241
    Top = 107
  end
  object zProyectos: TUniQuery
    Connection = connection.Uconnection
    Left = 673
    Top = 163
  end
  object ds_proyectos: TDataSource
    DataSet = zProyectos
    Left = 753
    Top = 171
  end
  object ds_formato_contrato: TDataSource
    DataSet = FormatoContrato
    Left = 561
    Top = 171
  end
  object FormatoContrato: TUniQuery
    Connection = connection.Uconnection
    Left = 497
    Top = 171
  end
  object FormatoCredencial: TUniQuery
    Connection = connection.Uconnection
    Left = 497
    Top = 219
  end
  object ds_formato_credencial: TDataSource
    DataSet = FormatoCredencial
    Left = 561
    Top = 219
  end
end
