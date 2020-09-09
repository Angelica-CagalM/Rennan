object frmRangoSalarios: TfrmRangoSalarios
  Left = 0
  Top = 0
  Caption = 'Rangos de Salarios'
  ClientHeight = 502
  ClientWidth = 1012
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
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 449
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 449
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
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
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Rangos de Salarios'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
  end
  object PanelCentral: TPanel
    Left = 0
    Top = 35
    Width = 1012
    Height = 467
    Align = alClient
    TabOrder = 1
    object PanelInfo: TPanel
      Left = 1
      Top = 336
      Width = 1010
      Height = 130
      Align = alBottom
      TabOrder = 0
      object PanelDown: TPanel
        Left = 1
        Top = 95
        Width = 1008
        Height = 34
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 827
          Top = 1
          Width = 180
          Height = 32
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 827
          ExplicitTop = 1
          inherited Panel1: TPanel
            ExplicitHeight = 32
            inherited btnPost: TcxButton
              OnClick = btnPostClick
            end
            inherited btnCancel: TcxButton
              OnClick = btnCancelClick
            end
          end
        end
      end
      object dxLayoutControlInfo: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1008
        Height = 94
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxTitulo: TcxDBTextEdit
          Left = 109
          Top = 38
          DataBinding.DataField = 'Titulo'
          DataBinding.DataSource = ds_rangos
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
          Width = 241
        end
        object cxImporte: TcxDBCurrencyEdit
          Left = 694
          Top = 38
          DataBinding.DataField = 'Importe'
          DataBinding.DataSource = ds_rangos
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 91
        end
        object cxFecha: TcxDBDateEdit
          Left = 851
          Top = 38
          DataBinding.DataField = 'FechaAplicacion'
          DataBinding.DataSource = ds_rangos
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
          Width = 121
        end
        object cxSD: TcxDBCurrencyEdit
          Left = 518
          Top = 38
          DataBinding.DataField = 'SalarioDiario'
          DataBinding.DataSource = ds_rangos
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
        object cxEmpresa: TcxDBLookupComboBox
          Left = 109
          Top = 10
          DataBinding.DataField = 'IdEmpresa'
          DataBinding.DataSource = ds_rangos
          ParentFont = False
          Properties.KeyFieldNames = 'IdEmpresa'
          Properties.ListColumns = <
            item
              Caption = 'Empresa'
              FieldName = 'Titulo'
            end>
          Properties.ListSource = ds_empresas
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 153
        end
        object cxTipoNomina: TcxDBLookupComboBox
          Left = 438
          Top = 10
          DataBinding.DataField = 'IdTipoNomina'
          DataBinding.DataSource = ds_rangos
          ParentFont = False
          Properties.KeyFieldNames = 'IdTipoNomina'
          Properties.ListColumns = <
            item
              Caption = 'Tipos de N'#243'mina'
              FieldName = 'Titulo'
            end>
          Properties.ListSource = ds_tiposNomina
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 356
        end
        object cxMoneda: TcxDBLookupComboBox
          Left = 848
          Top = 10
          DataBinding.DataField = 'IdMoneda'
          DataBinding.DataSource = ds_rangos
          ParentFont = False
          Properties.KeyFieldNames = 'IdMoneda'
          Properties.ListColumns = <
            item
              Caption = 'Moneda'
              FieldName = 'MonedaCheque'
            end>
          Properties.ListSource = ds_monedas
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 150
        end
        object dxLayoutControlInfoGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Puesto/Categor'#237'a'
          Control = cxTitulo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Importe'
          Control = cxImporte
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControlInfoGroup_Root
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Salario Diario'
          Control = cxSD
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Empresa'
          Control = cxEmpresa
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Tipo de N'#243'mina'
          Control = cxTipoNomina
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControlInfoGroup_Root
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Moneda'
          Control = cxMoneda
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxSplitterInfo: TcxSplitter
      Left = 1
      Top = 330
      Width = 1010
      Height = 6
      AlignSplitter = salBottom
    end
    object cxGridRangos: TcxGrid
      Left = 1
      Top = 1
      Width = 1010
      Height = 329
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cxGridRangosDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = ds_rangos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColumn1: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'NEmpresa'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
        end
        object cxColumn6: TcxGridDBColumn
          Caption = 'Tipo de N'#243'mina'
          DataBinding.FieldName = 'TNomina'
          Visible = False
          GroupIndex = 1
          Options.Editing = False
        end
        object cxColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          GroupIndex = 2
          Options.Editing = False
        end
        object cxColumn2: TcxGridDBColumn
          Caption = 'Puesto/Categor'#237'a'
          DataBinding.FieldName = 'Titulo'
          Options.Editing = False
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Salario Diario'
          DataBinding.FieldName = 'SalarioDiario'
          Options.Editing = False
        end
        object cxColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
        end
        object cxColumn5: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'MonedaCheque'
          Options.Editing = False
        end
      end
      object cxGridRangosLevel1: TcxGridLevel
        GridView = cxGridRangosDBTableView1
      end
    end
  end
  object uRangos: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 139
  end
  object uEmpresas: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 187
  end
  object uTiposNomina: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 235
  end
  object uMonedas: TUniQuery
    Connection = connection.Uconnection
    Left = 224
    Top = 147
  end
  object ds_rangos: TDataSource
    DataSet = uRangos
    Left = 96
    Top = 139
  end
  object ds_empresas: TDataSource
    DataSet = uEmpresas
    Left = 96
    Top = 187
  end
  object ds_tiposNomina: TDataSource
    DataSet = uTiposNomina
    Left = 96
    Top = 235
  end
  object ds_monedas: TDataSource
    DataSet = uMonedas
    Left = 288
    Top = 147
  end
end
