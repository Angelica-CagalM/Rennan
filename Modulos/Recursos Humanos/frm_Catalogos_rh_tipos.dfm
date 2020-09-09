object frmCatalogosRHTipos: TfrmCatalogosRHTipos
  Left = 488
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logos RH Generales'
  ClientHeight = 551
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 151
    Top = 0
    Width = 859
    Height = 551
    Align = alClient
    TabOrder = 0
    object pnl1: TPanel
      Left = 1
      Top = 342
      Width = 857
      Height = 208
      Align = alBottom
      TabOrder = 0
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 855
        Height = 171
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCampo4: TcxDBTextEdit
          Left = 416
          Top = 44
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 172
        end
        object cxDBImage1: TcxDBImage
          Left = 89
          Top = 101
          DataBinding.DataField = 'ImagenP'
          DataBinding.DataSource = ds_catalogos_generales
          Properties.Caption = 'Clic derecho para agregar imagen'
          Properties.GraphicClassName = 'TJPEGImage'
          Style.HotTrack = False
          TabOrder = 8
          OnClick = cxDBImage1Click
          OnDblClick = cxDBImage1DblClick
          Height = 66
          Width = 202
        end
        object cxSubCatalogo: TcxDBLookupComboBox
          Left = 89
          Top = 12
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <>
          Properties.ListSource = ds_subcatalogo
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
          Width = 19
        end
        object cxSubCatalogo2: TcxDBLookupComboBox
          Left = 221
          Top = 12
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <>
          Properties.ListSource = ds_subcatalogo2
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 308
        end
        object dxDBToggleSwitch1: TdxDBToggleSwitch
          Left = 711
          Top = 12
          Caption = 'Activo'
          DataBinding.DataField = 'Activo'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.DisplayChecked = 'S'#237
          Properties.DisplayUnchecked = 'No'
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'No'
          Properties.StateIndicator.OnText = 'S'#237
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
          TabOrder = 9
          Transparent = True
          OnKeyUp = GlobalKeyUp
        end
        object cxDescripcion: TcxDBTextEdit
          Left = 89
          Top = 41
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
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
          Width = 200
        end
        object cxCampo3: TcxDBTextEdit
          Left = 245
          Top = 41
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 202
        end
        object cxFecha: TcxDBDateEdit
          Left = 553
          Top = 41
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 121
        end
        object cxCargarDocumento: TcxButton
          Left = 620
          Top = 41
          Width = 134
          Height = 25
          Caption = 'Cargar Archivo'
          OptionsImage.ImageIndex = 26
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 6
          OnClick = cxCargarDocumentoClick
        end
        object cxSimbolo: TcxDBTextEdit
          Left = 89
          Top = 73
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 7
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
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'Campo 4'
          Control = cxCampo4
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup6
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Imagen'
          Control = cxDBImage1
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Pa'#237's:'
          Visible = False
          Control = cxSubCatalogo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Empresa:'
          Control = cxSubCatalogo2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup6
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'dxDBToggleSwitch1'
          CaptionOptions.Visible = False
          Visible = False
          Control = dxDBToggleSwitch1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Descripci'#243'n:'
          Control = cxDescripcion
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Estatus:'
          Visible = False
          Control = cxCampo3
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha:'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cxCargarDocumento
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          CaptionOptions.Text = 'Simbolo:'
          Control = cxSimbolo
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 172
        Width = 855
        Height = 35
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 674
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 674
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              OnClick = btnPostClick
            end
            inherited btnCancel: TcxButton
              OnClick = btnCancelClick
            end
          end
        end
      end
    end
    object panelBotones: TPanel
      Left = 1
      Top = 1
      Width = 857
      Height = 35
      Align = alTop
      TabOrder = 1
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
      inline frmBarraH11: TfrmBarraH1
        Left = 294
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 294
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Height = 33
          ExplicitWidth = 562
          ExplicitHeight = 33
          inherited btnAdd: TcxButton
            Height = 31
            OnClick = frmBarraH11btnAddClick
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
            ExplicitLeft = 321
            ExplicitHeight = 31
          end
        end
      end
    end
    object grid_catalogos: TcxGrid
      Left = 1
      Top = 36
      Width = 857
      Height = 300
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 2
      object cxViewCatalogos: TcxGridDBTableView
        OnDblClick = cxViewCatalogosDblClick
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
        OnCellDblClick = cxViewCatalogosCellDblClick
        DataController.DataSource = ds_catalogos_generales
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click Aqui para Definir un Filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxViewCatalogosColumn1: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'iIdDiasdescanso'
        end
        object cxViewCatalogosColumn2: TcxGridDBColumn
          Caption = 'Dia Descanso'
          DataBinding.FieldName = 'sDescripcion'
        end
        object cxViewCatalogosColumn3: TcxGridDBColumn
          Caption = 'Estatus'
        end
        object cxViewCatalogosColumn4: TcxGridDBColumn
        end
        object cxViewCatalogosColumn5: TcxGridDBColumn
          Caption = 'Activo'
        end
        object cxViewCatalogosColumn6: TcxGridDBColumn
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxViewCatalogos
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 336
      Width = 857
      Height = 6
      AlignSplitter = salBottom
    end
  end
  object panelOpciones: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 551
    Align = alLeft
    TabOrder = 1
    object dxNavBar1: TdxNavBar
      Left = 1
      Top = 1
      Width = 143
      Height = 549
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ActiveGroupIndex = 2
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeelSchemes.Flat = 8
      LookAndFeelSchemes.Standard = 8
      LookAndFeelSchemes.UltraFlat = 9
      LookAndFeelSchemes.Native = 18
      LookAndFeelSchemes.Office11 = 16
      LookAndFeelSchemes.Skin = 14
      View = 13
      OptionsImage.LargeImages = frmrepositorio.IconosTodos32
      OptionsImage.SmallImages = connection.cxIconos16
      OptionsView.NavigationPane.ShowActiveGroupCaptionWhenCollapsed = True
      object dxCatalogoNav: TdxNavBarGroup
        Caption = 'Cat'#225'logos RH'
        LargeImageIndex = 11
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        ShowAsIconView = True
        TopVisibleLinkIndex = 0
        UseRestSpace = True
        OnClick = dxCatalogoNavClick
        Links = <
          item
            Item = dxNavBar1Item1
          end
          item
            Item = dxNavBar1Item2
          end
          item
            Item = dxNavBar1Item3
          end
          item
            Item = dxNavBar1Item16
          end
          item
            Item = dxNavBar1Item17
          end>
      end
      object dxUbicaciones: TdxNavBarGroup
        Caption = 'Ubicaciones'
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OnClick = dxUbicacionesClick
        Links = <
          item
            Item = dxNavBar1Item4
          end
          item
            Item = dxNavBar1Item5
          end
          item
            Item = dxNavBar1Item6
          end
          item
            Item = dxNavBar1Item14
          end>
      end
      object dxMasters: TdxNavBarGroup
        Caption = 'Adicionales'
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OnClick = dxMastersClick
        Links = <
          item
            Item = dxNavBar1Item7
          end
          item
            Item = dxNavBar1Item9
          end
          item
            Item = dxNavBar1Separator2
          end
          item
            Item = dxNavBar1Item8
          end
          item
            Item = dxNavBar1Item10
          end
          item
            Item = dxNavBar1Item11
          end
          item
            Item = dxNavBar1Item12
          end
          item
            Item = dxNavBar1Item13
          end
          item
            Item = dxNavBar1Item15
          end
          item
            Item = dxNavBar1Item18
          end>
      end
      object dxNavBar1Item2: TdxNavBarItem
        Caption = 'D'#237'as de descanso'
        LargeImageIndex = 45
        SmallImageIndex = 14
        OnClick = dxNavBar1Item2Click
      end
      object dxNavBar1Item1: TdxNavBarItem
        Caption = 'Horario Laboral'
        LargeImageIndex = 101
        SmallImageIndex = 19
        OnClick = dxNavBar1Item1Click
      end
      object dxNavBar1Item3: TdxNavBarItem
        Caption = 'Estatus de Empleados'
        LargeImageIndex = 110
        SmallImageIndex = 23
        OnClick = dxNavBar1Item3Click
      end
      object dxNavBar1Separator1: TdxNavBarSeparator
        Caption = 'dxNavBar1Separator1'
      end
      object dxNavBar1Item6: TdxNavBarItem
        Caption = 'Ciudades'
        LargeImageIndex = 68
        OnClick = dxNavBar1Item6Click
      end
      object dxNavBar1Item5: TdxNavBarItem
        Caption = 'Estados'
        LargeImageIndex = 73
        OnClick = dxNavBar1Item5Click
      end
      object dxNavBar1Item4: TdxNavBarItem
        Caption = 'Paises'
        LargeImageIndex = 60
        OnClick = dxNavBar1Item4Click
      end
      object dxNavBar1Item8: TdxNavBarItem
        Caption = 'Especialidades'
        LargeImageIndex = 114
        OnClick = dxNavBar1Item8Click
      end
      object dxNavBar1Item7: TdxNavBarItem
        Caption = 'Monedas'
        LargeImageIndex = 23
        OnClick = dxNavBar1Item7Click
      end
      object dxNavBar1Item9: TdxNavBarItem
        Caption = 'Bancos'
        LargeImageIndex = 0
        OnClick = dxNavBar1Item9Click
      end
      object dxNavBar1Item10: TdxNavBarItem
        Caption = 'D'#237'as Festivos'
        LargeImageIndex = 58
        OnClick = dxNavBar1Item10Click
      end
      object dxNavBar1Item11: TdxNavBarItem
        Caption = 'Puesto'
        LargeImageIndex = 112
        OnClick = dxNavBar1Item11Click
      end
      object dxNavBar1Item12: TdxNavBarItem
        Caption = 'Profesiones'
        LargeImageIndex = 122
        OnClick = dxNavBar1Item12Click
      end
      object dxNavBar1Item13: TdxNavBarItem
        Caption = 'Nivel Firmas'
        LargeImageIndex = 12
        OnClick = dxNavBar1Item13Click
      end
      object dxNavBar1Separator2: TdxNavBarSeparator
        Caption = 'dxNavBar1Separator2'
        Visible = False
      end
      object dxNavBar1Item14: TdxNavBarItem
        Caption = 'C'#243'digos Postales'
        LargeImageIndex = 69
        OnClick = dxNavBar1Item14Click
      end
      object dxNavBar1Item15: TdxNavBarItem
        Caption = 'Documentos'
        LargeImageIndex = 83
        OnClick = dxNavBar1Item15Click
      end
      object dxNavBar1Item16: TdxNavBarItem
        Caption = 'Lista de Verificaci'#243'n'
        LargeImageIndex = 84
        OnClick = dxNavBar1Item16Click
      end
      object dxNavBar1Item17: TdxNavBarItem
        Caption = 'Fomato de Documentos'
        LargeImageIndex = 83
        OnClick = dxNavBar1Item17Click
      end
      object dxNavBar1Item18: TdxNavBarItem
        Caption = 'Segmentos Clases'
        LargeImageIndex = 46
        OnClick = dxNavBar1Item18Click
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 145
    Top = 0
    Width = 6
    Height = 551
  end
  object PopupPrincipal: TPopupMenu
    Left = 529
    Top = 32
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
      OnClick = Editar1Click
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
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Can1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object ds_catalogos_generales: TDataSource
    AutoEdit = False
    DataSet = zqCatalogosGenerales
    Left = 528
    Top = 16
  end
  object ds_subcatalogo: TDataSource
    AutoEdit = False
    DataSet = zqSubCatalogo
    Left = 705
    Top = 32
  end
  object zqCatalogosGenerales: TUniQuery
    Connection = connection.Uconnection
    Left = 633
    Top = 136
  end
  object zqSubCatalogo2: TUniQuery
    Connection = connection.Uconnection
    Left = 917
    Top = 96
  end
  object ds_subcatalogo2: TDataSource
    AutoEdit = False
    DataSet = zqSubCatalogo2
    Left = 917
    Top = 8
  end
  object zqSubCatalogo: TUniQuery
    Connection = connection.Uconnection
    Left = 743
    Top = 96
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 334
    Top = 151
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 280
    Top = 152
  end
end
