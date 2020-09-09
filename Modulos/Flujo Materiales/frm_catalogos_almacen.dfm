object frmCatalogosAlmacen: TfrmCatalogosAlmacen
  Left = 488
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logos Generales Almac'#233'n'
  ClientHeight = 489
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 153
    Top = 0
    Width = 857
    Height = 489
    Align = alClient
    TabOrder = 0
    object pnl1: TPanel
      Left = 1
      Top = 360
      Width = 855
      Height = 128
      Align = alBottom
      TabOrder = 0
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 853
        Height = 91
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbCombo: TcxDBComboBox
          Left = 650
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.Items.Strings = (
            'Instrumentos'
            'N/A')
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
          Width = 189
        end
        object cxFamilia: TcxDBLookupComboBox
          Left = 487
          Top = 40
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <
            item
            end>
          Properties.ListSource = ds_sub
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
          Width = 232
        end
        object dxActivo: TdxDBToggleSwitch
          Left = 713
          Top = 40
          Caption = 'Activo'
          DataBinding.DataField = 'Activo'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.DisplayChecked = 'Si'
          Properties.DisplayUnchecked = 'No'
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
          TabOrder = 8
          Transparent = True
        end
        object cxCampo3: TcxDBComboBox
          Left = 393
          Top = 40
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.Items.Strings = (
            'Entrada'
            'Salida'
            'Traspaso Entrada'
            'Traspaso Salida')
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
          Width = 121
        end
        object cbCombo2: TcxDBLookupComboBox
          Left = 651
          Top = 40
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSub
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 145
        end
        object cxCodigo: TcxDBTextEdit
          Left = 94
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 211
        end
        object cxDescripciones: TcxDBTextEdit
          Left = 348
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 264
        end
        object cxDescripcion: TcxDBMemo
          Left = 94
          Top = 69
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 9
          OnEnter = EnterControl
          OnExit = SalidaControl
          Height = 74
          Width = 345
        end
        object cxComentarios: TcxDBMemo
          Left = 552
          Top = 69
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 10
          OnEnter = EnterControl
          OnExit = SalidaControl
          Height = 74
          Width = 235
        end
        object cxCodigoMat: TcxDBTextEdit
          Left = 94
          Top = 40
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
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
          Width = 121
        end
        object cxCode: TcxDBTextEdit
          Left = 186
          Top = 40
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
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
          Width = 121
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'campo3'
          Control = cbCombo
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo0:'
          Control = cxFamilia
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Activo'
          CaptionOptions.Visible = False
          Control = dxActivo
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Clasificaci'#243'n:'
          Control = cxCampo3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo4'
          Control = cbCombo2
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo1'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo2'
          Control = cxDescripciones
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'cxDescripcion'
          Control = cxDescripcion
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'cxMemo'
          Control = cxComentarios
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'campo4'
          Control = cxCodigoMat
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'CampoC'
          Control = cxCode
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 92
        Width = 853
        Height = 35
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 672
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 672
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
      Width = 855
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
        Left = 292
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 292
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
      Width = 855
      Height = 316
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
        DataController.DataSource = ds_catalogos_generales
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.AutoDataSetFilter = True
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
          Caption = 'Campo1'
          Width = 136
        end
        object cxViewCatalogosColumn2: TcxGridDBColumn
          Caption = 'Campo2'
          Width = 175
        end
        object cxViewCatalogosColumn3: TcxGridDBColumn
          Caption = 'Campo3'
          Width = 184
        end
        object cxViewCatalogosColumn4: TcxGridDBColumn
          Caption = 'Campo4'
          Width = 207
        end
        object cxViewCatalogosColumn5: TcxGridDBColumn
          Caption = 'Campo5'
          Width = 75
        end
        object cxViewCatalogosColumn6: TcxGridDBColumn
          Caption = 'Campo6'
          Width = 66
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxViewCatalogos
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 352
      Width = 855
      Height = 8
      AlignSplitter = salBottom
    end
  end
  object panelOpciones: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 489
    Align = alLeft
    TabOrder = 1
    object dxNavBar1: TdxNavBar
      Left = 1
      Top = 1
      Width = 143
      Height = 487
      Align = alClient
      ActiveGroupIndex = 0
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
      object dxGenerales: TdxNavBarGroup
        Caption = 'Cat'#225'logos Almacen'
        LargeImageIndex = 38
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 1
        OnClick = dxGeneralesClick
        Links = <
          item
            Item = dxNavBar1Item11
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item1
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item2
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item3
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item4
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item5
          end
          item
            Item = dxNavBar1Item6
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item7
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item8
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item9
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item10
          end>
      end
      object dxMantenimiento: TdxNavBarGroup
        Caption = 'Mantenimiento'
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OnClick = dxMantenimientoClick
        Links = <
          item
            Item = dxNavBar1Item14
          end
          item
            Item = dxNavBar1Item12
          end
          item
            Item = dxNavBar1Item13
          end
          item
            Item = dxNavBar1Item18
          end>
      end
      object dxCompras: TdxNavBarGroup
        Caption = 'Compras'
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Visible = False
        OnClick = dxComprasClick
        Links = <
          item
            Item = dxNavBar1Item15
          end>
      end
      object dxContabilidad: TdxNavBarGroup
        Caption = 'Contabilidad'
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Visible = False
        OnClick = dxContabilidadClick
        Links = <
          item
            Item = dxNavBar1Item16
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item17
          end>
      end
      object dxNavBar1Item1: TdxNavBarItem
        Caption = 'Familias'
        LargeImageIndex = 28
        OnClick = dxNavBar1Item1Click
      end
      object dxNavBar1Item2: TdxNavBarItem
        Caption = 'Subfamilias'
        LargeImageIndex = 27
        OnClick = dxNavBar1Item2Click
      end
      object dxNavBar1Item3: TdxNavBarItem
        Caption = 'Marcas'
        LargeImageIndex = 5
        OnClick = dxNavBar1Item3Click
      end
      object dxNavBar1Item4: TdxNavBarItem
        Caption = 'Movimientos de Almac'#233'n'
        LargeImageIndex = 97
        OnClick = dxNavBar1Item4Click
      end
      object dxNavBar1Item5: TdxNavBarItem
        Caption = 'Tipos de Insumos'
        LargeImageIndex = 7
        Visible = False
        OnClick = dxNavBar1Item5Click
      end
      object dxNavBar1Item6: TdxNavBarItem
        Caption = 'Formas de Pago'
        LargeImageIndex = 10
        OnClick = dxNavBar1Item6Click
      end
      object dxNavBar1Separator1: TdxNavBarSeparator
        Caption = 'dxNavBar1Separator1'
      end
      object dxNavBar1Item7: TdxNavBarItem
        Caption = 'Unidades de Medida'
        LargeImageIndex = 72
        OnClick = dxNavBar1Item7Click
      end
      object dxNavBar1Item8: TdxNavBarItem
        Caption = 'Productos/Servicios'
        LargeImageIndex = 11
        OnClick = dxNavBar1Item8Click
      end
      object dxNavBar1Item9: TdxNavBarItem
        Caption = 'Giro de la Empresa'
        LargeImageIndex = 4
        OnClick = dxNavBar1Item9Click
      end
      object dxNavBar1Item10: TdxNavBarItem
        Caption = 'Fabricantes'
        LargeImageIndex = 18
        OnClick = dxNavBar1Item10Click
      end
      object dxNavBar1Item11: TdxNavBarItem
        Caption = 'Grupos'
        LargeImageIndex = 24
        OnClick = dxNavBar1Item11Click
      end
      object dxNavBar1Item12: TdxNavBarItem
        Caption = 'Grupos de Check List'
        LargeImageIndex = 85
        OnClick = dxNavBar1Item12Click
      end
      object dxNavBar1Item13: TdxNavBarItem
        Caption = 'Detalle del Check List'
        LargeImageIndex = 86
        OnClick = dxNavBar1Item13Click
      end
      object dxNavBar1Item14: TdxNavBarItem
        Caption = 'Check List'
        LargeImageIndex = 84
        OnClick = dxNavBar1Item14Click
      end
      object dxNavBar1Item15: TdxNavBarItem
        Caption = 'Porcentajes de Tiempos Centro Costos'
        LargeImageIndex = 137
        OnClick = dxNavBar1Item15Click
      end
      object dxNavBar1Item16: TdxNavBarItem
        Caption = 'Tipo Movimiento'
        LargeImageIndex = 92
        OnClick = dxNavBar1Item16Click
      end
      object dxNavBar1Item17: TdxNavBarItem
        Caption = 'Clases'
        LargeImageIndex = 85
        OnClick = dxNavBar1Item17Click
      end
      object dxNavBar1Item18: TdxNavBarItem
        Caption = 'Rutas RIM'
        LargeImageIndex = 24
        OnClick = dxNavBar1Item18Click
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 145
    Top = 0
    Width = 8
    Height = 489
  end
  object PopupPrincipal: TPopupMenu
    Left = 265
    Top = 80
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
    Left = 264
    Top = 144
  end
  object zqCatalogosGenerales: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 265
    Top = 200
  end
  object zqSub: TUniQuery
    Connection = connection.Uconnection
    Left = 391
    Top = 168
  end
  object ds_sub: TDataSource
    AutoEdit = False
    DataSet = zqSub
    Left = 391
    Top = 120
  end
  object zSub: TUniQuery
    Connection = connection.Uconnection
    Left = 487
    Top = 176
  end
  object dsSub: TDataSource
    DataSet = zSub
    Left = 487
    Top = 136
  end
end
