object frmBuscar: TfrmBuscar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FrmBuscar'
  ClientHeight = 529
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 35
    Width = 752
    Height = 453
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabProveedor
    Properties.CustomButtons.Buttons = <>
    OnClick = FormShow
    ClientRectBottom = 451
    ClientRectLeft = 2
    ClientRectRight = 750
    ClientRectTop = 30
    object cxTabCliente: TcxTabSheet
      Caption = 'Clientes'
      ImageIndex = 0
      object PDatosCliente: TPanel
        Left = 0
        Top = 329
        Width = 748
        Height = 92
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dxLayoutControl3: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 740
          Height = 84
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxRFC: TcxTextEdit
            Left = 65
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxNombre: TcxTextEdit
            Left = 65
            Top = 40
            ParentFont = False
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
          object cxRazonSocial: TcxTextEdit
            Left = 429
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'RFC:'
            Control = cxRFC
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutControl3Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Nombre:'
            Control = cxNombre
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Raz'#243'n Social:'
            Control = cxRazonSocial
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl3Group_Root
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
        end
      end
      object grid_clientes: TcxGrid
        Left = 0
        Top = 0
        Width = 748
        Height = 329
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ViewClientes: TcxGridDBTableView
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
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = 'Buscar...'
          DataController.DataSource = dsCliente
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object ViewClientesColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 120
          end
          object ViewClientesColumn3: TcxGridDBColumn
            Tag = 7
            Caption = 'FRC'
            DataBinding.FieldName = 'RFC'
            Width = 120
          end
          object ViewClientesColumn2: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RazonSocial'
            Width = 120
          end
          object ViewClientesColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 120
          end
        end
        object grid_clientesLevel1: TcxGridLevel
          GridView = ViewClientes
        end
      end
    end
    object cxTabProveedor: TcxTabSheet
      Caption = 'Proveedores'
      ImageIndex = 1
      object PDatosProveedor: TPanel
        Left = 0
        Top = 329
        Width = 748
        Height = 92
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dxLayoutControl1: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 740
          Height = 84
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxRFCprov: TcxTextEdit
            Left = 65
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxNombreProv: TcxTextEdit
            Left = 65
            Top = 40
            ParentFont = False
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
          object cxRSProveedor: TcxTextEdit
            Left = 429
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object dxLayoutGroup1: TdxLayoutGroup
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
            AlignVert = avTop
            CaptionOptions.Text = 'RFC:'
            Control = cxRFCprov
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Nombre:'
            Control = cxNombreProv
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Raz'#243'n Social:'
            Control = cxRSProveedor
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
        end
      end
      object gridProveedor: TcxGrid
        Left = 0
        Top = 0
        Width = 748
        Height = 329
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ViewProveedor: TcxGridDBTableView
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
          FindPanel.InfoText = 'Buscar...'
          DataController.DataSource = dsProveedor
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
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
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 120
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Tag = 7
            DataBinding.FieldName = 'RFC'
            Width = 120
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RazonSocial'
            Width = 120
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 120
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = ViewProveedor
        end
      end
    end
    object cxTabBanco: TcxTabSheet
      Caption = 'Bancos'
      ImageIndex = 2
      object PDatosBanco: TPanel
        Left = 0
        Top = 329
        Width = 748
        Height = 92
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dxLayoutControl2: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 740
          Height = 84
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxNombreCorto: TcxTextEdit
            Left = 422
            Top = 11
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object cxClave: TcxCurrencyEdit
            Left = 59
            Top = 11
            ParentFont = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0;-,0'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxBanco: TcxLookupComboBox
            Left = 59
            Top = 40
            ParentFont = False
            Properties.KeyFieldNames = 'IdBanco'
            Properties.ListColumns = <
              item
                FieldName = 'NombreCorto'
              end>
            Properties.ListSource = dsListaBancos
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 145
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'RFC:'
            Control = cxNombreCorto
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'CLABE:'
            Control = cxClave
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Banco'
            Control = cxBanco
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup2
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 748
        Height = 329
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
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
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = 'Buscar...'
          DataController.DataSource = dsBanco
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'banco'
            Width = 120
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Tag = 7
            Caption = 'RFC'
            DataBinding.FieldName = 'RFCBanco'
            Width = 120
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RazonSocial'
            Width = 120
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 488
    Width = 752
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelar: TcxButton
      Left = 640
      Top = 6
      Width = 104
      Height = 31
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
      OnClick = btnCancelarClick
    end
    object btnAgregar: TcxButton
      Left = 539
      Top = 6
      Width = 104
      Height = 31
      Caption = 'Agregar'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnAgregarClick
    end
    object btnSave: TcxButton
      Left = 436
      Top = 6
      Width = 104
      Height = 31
      Caption = 'Guardar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnSaveClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 35
    Align = alTop
    TabOrder = 2
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Caption = 'Buscar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnNuevo: TcxButton
      Left = 451
      Top = 4
      Width = 104
      Height = 25
      Caption = 'Nuevo'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnNuevoClick
    end
    object cxComprobantes: TcxButton
      Left = 561
      Top = 4
      Width = 185
      Height = 25
      Caption = 'Listado de Comprobantes'
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxComprobantesClick
    end
  end
  object Clientes: TUniQuery
    Left = 227
    Top = 5
  end
  object dsCliente: TDataSource
    DataSet = Clientes
    Left = 288
  end
  object dsBanco: TDataSource
    DataSet = Banco
    Left = 496
    Top = 115
  end
  object Proveedor: TUniQuery
    FilterOptions = [foCaseInsensitive]
    Left = 360
    Top = 8
  end
  object dsProveedor: TDataSource
    DataSet = Proveedor
    Left = 464
    Top = 67
  end
  object Banco: TUniQuery
    FilterOptions = [foCaseInsensitive]
    Left = 592
    Top = 91
  end
  object zListaBancos: TUniQuery
    Connection = connection.Uconnection
    Left = 562
    Top = 185
  end
  object dsListaBancos: TDataSource
    DataSet = zListaBancos
    Left = 490
    Top = 209
  end
end
