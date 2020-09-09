object frmAlmacenamiento: TfrmAlmacenamiento
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  Caption = 'Adjuntar Documentos'
  ClientHeight = 374
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Almacenamiento'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxNuevoDetalle: TcxButton
      Left = 531
      Top = 2
      Width = 81
      Height = 28
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
      OnClick = cxNuevoDetalleClick
    end
    object cxEliminar: TcxButton
      Left = 691
      Top = 2
      Width = 81
      Height = 28
      Caption = 'Eliminar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxEliminarClick
    end
    object cxEditaDetalle: TcxButton
      Left = 612
      Top = 2
      Width = 81
      Height = 28
      Caption = 'Editar'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxEditaDetalleClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 789
    Height = 339
    Align = alClient
    TabOrder = 1
    object PanelDatos: TPanel
      Left = 1
      Top = 1
      Width = 448
      Height = 302
      Align = alLeft
      TabOrder = 0
      object cxGridAlmacenamiento: TcxGrid
        Left = 1
        Top = 1
        Width = 446
        Height = 174
        Align = alClient
        TabOrder = 0
        object view_Almacenamiento: TcxGridDBTableView
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
          OnCellClick = view_AlmacenamientoCellClick
          OnCellDblClick = view_AlmacenamientoCellDblClick
          DataController.DataSource = dsDocumento
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object view_AlmacenamientoColumn1: TcxGridDBColumn
            Caption = 'Tipo Documento'
            DataBinding.FieldName = 'Documento'
            Width = 100
          end
          object view_AlmacenamientoColumn2: TcxGridDBColumn
            Caption = 'Ruta'
            DataBinding.FieldName = 'DocumentoDigital'
            Width = 150
          end
        end
        object cxGridAlmacenamientoLevel1: TcxGridLevel
          GridView = view_Almacenamiento
        end
      end
      object PanelDown4: TPanel
        Left = 1
        Top = 186
        Width = 446
        Height = 115
        Align = alBottom
        TabOrder = 1
        Visible = False
        object dxLayoutControl3: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 438
          Height = 107
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxDocumento: TcxDBLookupComboBox
            Left = 135
            Top = 11
            DataBinding.DataField = 'IdDocumento'
            DataBinding.DataSource = dsDocumento
            ParentFont = False
            Properties.KeyFieldNames = 'IdDocumento'
            Properties.ListColumns = <
              item
                FieldName = 'Documento'
              end>
            Properties.ListSource = dsTipDoc
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 278
          end
          object cxDireccion: TcxDBShellComboBox
            Left = 135
            Top = 40
            DataBinding.DataField = 'DocumentoDigital'
            DataBinding.DataSource = dsDocumento
            ParentFont = False
            Properties.FastSearch = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 301
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AlignHorz = ahParentManaged
            AlignVert = avParentManaged
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem19: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo Documento'
            Control = cxDocumento
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Direcci'#243'n de Archivos'
            Control = cxDireccion
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxSplit4: TcxSplitter
        Left = 1
        Top = 175
        Width = 446
        Height = 11
        AlignSplitter = salBottom
        Visible = False
      end
    end
    object PanelTopD: TPanel
      Left = 1
      Top = 303
      Width = 787
      Height = 35
      Align = alBottom
      TabOrder = 1
      inline frmBarraH21: TfrmBarraH2
        Left = 606
        Top = 1
        Width = 180
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 606
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Left = 4
          Width = 176
          Height = 33
          Align = alRight
          AutoSize = True
          ExplicitLeft = 4
          ExplicitWidth = 176
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Left = 1
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 31
          end
          inherited btnCancel: TcxButton
            Left = 88
            Top = 1
            Height = 31
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 88
            ExplicitTop = 1
            ExplicitHeight = 31
          end
        end
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 449
      Top = 1
      Width = 339
      Height = 302
      Align = alClient
      TabOrder = 2
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxVentana: TcxShellListView
        Left = 11
        Top = 40
        Width = 425
        Height = 347
        ParentFont = False
        TabOrder = 1
        OnChange = cxVentanaChange
        OnSelectItem = cxVentanaSelectItem
      end
      object cxDirectorio: TdxShellBreadcrumbEdit
        Left = 137
        Top = 11
        Width = 159
        Height = 23
        Properties.Buttons = <>
        Properties.PathEditor.RecentPaths = <>
        ShellListView = cxVentana
        TabOrder = 0
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        Control = cxVentana
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Direcci'#243'n Compartida'
        Control = cxDirectorio
        ControlOptions.ShowBorder = False
        Index = 0
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
  object zDocumento: TUniQuery
    Connection = connection.Uconnection
    Left = 257
    Top = 92
  end
  object dsDocumento: TDataSource
    DataSet = zDocumento
    Left = 273
    Top = 164
  end
  object zTipDoc: TUniQuery
    Connection = connection.Uconnection
    Left = 489
    Top = 108
  end
  object dsTipDoc: TDataSource
    DataSet = zTipDoc
    Left = 625
    Top = 116
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 449
    Top = 176
  end
end
