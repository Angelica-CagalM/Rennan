object frmCatalogosOperacion: TfrmCatalogosOperacion
  Left = 488
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logos Generales Operaci'#243'n'
  ClientHeight = 528
  ClientWidth = 1086
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
    Top = 35
    Width = 372
    Height = 493
    Align = alClient
    TabOrder = 0
    object pnl1: TPanel
      Left = 1
      Top = 346
      Width = 370
      Height = 146
      Align = alBottom
      TabOrder = 0
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 368
        Height = 109
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxDescripciones: TcxDBTextEdit
          Left = 189
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = False
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
          Width = 159
        end
        object cxDescripcion2: TcxDBTextEdit
          Left = 309
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ReadOnly = False
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
          Width = 121
        end
        object edtFecha: TcxDBDateEdit
          Left = 388
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxCodigo: TcxDBTextEdit
          Left = 91
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.MaxLength = 255
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
          Width = 131
        end
        object cbCombo2: TcxDBLookupComboBox
          Left = 496
          Top = 11
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <>
          Properties.ListSource = dsSub
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 145
        end
        object cxFamilia: TcxDBLookupComboBox
          Left = 174
          Top = 39
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.ListColumns = <
            item
            end>
          Properties.ListSource = ds_sub
          Style.HotTrack = False
          TabOrder = 6
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 109
        end
        object cxCampo3: TcxDBComboBox
          Left = 91
          Top = 39
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
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object dxActivo: TdxDBToggleSwitch
          Left = 437
          Top = 39
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
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 10
          Transparent = True
        end
        object cbCombo: TcxDBComboBox
          Left = 251
          Top = 39
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.Items.Strings = (
            'Instrumentos'
            'N/A')
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
          Width = 94
        end
        object edtCampo6: TcxDBTextEdit
          Left = 411
          Top = 39
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
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
          Width = 121
        end
        object edtCampo5: TcxDBTextEdit
          Left = 331
          Top = 39
          DataBinding.DataSource = ds_catalogos_generales
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
        object dxLayoutControl1Group_Root: TdxLayoutGroup
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
          AlignVert = avClient
          CaptionOptions.Text = 'Campo2:'
          Control = cxDescripciones
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Campo3'
          Control = cxDescripcion2
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Date'
          Control = edtFecha
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo1:'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'campo7'
          Control = cbCombo2
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo0:'
          Control = cxFamilia
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Clasificaci'#243'n:'
          Control = cxCampo3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 1
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
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'campo4'
          Control = cbCombo
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo6'
          Control = edtCampo6
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo5'
          Control = edtCampo5
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 110
        Width = 368
        Height = 35
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 187
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 187
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
    object grid_catalogos: TcxGrid
      Left = 1
      Top = 1
      Width = 370
      Height = 333
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 1
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
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxViewCatalogosColumn1: TcxGridDBColumn
          Caption = 'Campo1'
          MinWidth = 10
          Width = 39
        end
        object cxViewCatalogosColumn2: TcxGridDBColumn
          Caption = 'Campo2'
          Width = 88
        end
        object cxViewCatalogosColumn3: TcxGridDBColumn
          Caption = 'Campo3'
          Width = 170
        end
        object cxViewCatalogosColumn4: TcxGridDBColumn
          Caption = 'Campo4'
          Width = 58
        end
        object cxViewCatalogosColumn5: TcxGridDBColumn
          Caption = 'Campo5'
          Width = 20
        end
        object cxViewCatalogosColumn6: TcxGridDBColumn
          Caption = 'Campo6'
          Width = 20
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxViewCatalogos
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 334
      Width = 370
      Height = 12
      AlignSplitter = salBottom
    end
  end
  object panelOpciones: TPanel
    Left = 0
    Top = 35
    Width = 145
    Height = 493
    Align = alLeft
    TabOrder = 1
    object dxNavBar1: TdxNavBar
      Left = 1
      Top = 1
      Width = 143
      Height = 491
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
        Caption = 'Cat'#225'logos OP'
        LargeImageIndex = 38
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 9
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
            Item = dxNavBar1Item7
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item14
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item15
          end
          item
            Item = dxNavBar1Separator1
          end
          item
            Item = dxNavBar1Item6
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
          end>
      end
      object dxNavBar1Item1: TdxNavBarItem
        Caption = 'Familias'
        LargeImageIndex = 94
        OnClick = dxNavBar1Item1Click
      end
      object dxNavBar1Item2: TdxNavBarItem
        Caption = 'Subfamilias'
        LargeImageIndex = 68
        OnClick = dxNavBar1Item2Click
      end
      object dxNavBar1Item3: TdxNavBarItem
        Caption = 'Marcas'
        LargeImageIndex = 126
        OnClick = dxNavBar1Item3Click
      end
      object dxNavBar1Item4: TdxNavBarItem
        Caption = 'Movimientos de Almac'#233'n'
        LargeImageIndex = 12
        OnClick = dxNavBar1Item4Click
      end
      object dxNavBar1Item5: TdxNavBarItem
        Caption = 'Tipos de Insumos'
        LargeImageIndex = 7
        Visible = False
        OnClick = dxNavBar1Item5Click
      end
      object dxNavBar1Item6: TdxNavBarItem
        Caption = 'Ingenieria'
        LargeImageIndex = 109
        OnClick = dxNavBar1Item6Click
      end
      object dxNavBar1Separator1: TdxNavBarSeparator
        Caption = 'dxNavBar1Separator1'
      end
      object dxNavBar1Item7: TdxNavBarItem
        Caption = 'Unidades de Medida'
        LargeImageIndex = 8
        OnClick = dxNavBar1Item7Click
      end
      object dxNavBar1Item8: TdxNavBarItem
        Caption = 'Logistica'
        LargeImageIndex = 103
        OnClick = dxNavBar1Item8Click
      end
      object dxNavBar1Item9: TdxNavBarItem
        Caption = 'KIT Equipos'
        LargeImageIndex = 7
        OnClick = dxNavBar1Item9Click
      end
      object dxNavBar1Item10: TdxNavBarItem
        Caption = 'Fabricantes'
        LargeImageIndex = 91
        OnClick = dxNavBar1Item10Click
      end
      object dxNavBar1Item11: TdxNavBarItem
        Caption = 'Grupos'
        LargeImageIndex = 40
        OnClick = dxNavBar1Item11Click
      end
      object dxNavBar1Item12: TdxNavBarItem
        Caption = 'Grupos de Check List'
        LargeImageIndex = 9
        OnClick = dxNavBar1Item12Click
      end
      object dxNavBar1Item13: TdxNavBarItem
        Caption = 'Detalle del Check List'
        LargeImageIndex = 107
        OnClick = dxNavBar1Item13Click
      end
      object dxNavBar1Item14: TdxNavBarItem
        Caption = 'Grupos Presupuesto'
        LargeImageIndex = 95
        OnClick = dxNavBar1Item14Click
      end
      object dxNavBar1Item15: TdxNavBarItem
        Caption = 'Mano de Obra'
        LargeImageIndex = 41
        OnClick = dxNavBar1Item15Click
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 145
    Top = 35
    Width = 6
    Height = 493
  end
  object PanelLateral: TPanel
    Left = 529
    Top = 35
    Width = 557
    Height = 493
    Align = alRight
    TabOrder = 3
    Visible = False
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 555
      Height = 30
      Align = alTop
      TabOrder = 0
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 311
        Top = 1
        Width = 81
        Height = 28
        Align = alRight
        Caption = 'Nuevo'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxNuevoDetalleClick
      end
      object cxEditaDetalle: TcxButton
        Tag = 11
        Left = 392
        Top = 1
        Width = 81
        Height = 28
        Align = alRight
        Caption = 'Editar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxEditaDetalleClick
      end
      object cxLeyenda2: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Tabla...Agregando Datos'
        ParentColor = False
        ParentFont = False
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnEliminarDetalle: TcxButton
        Tag = 12
        Left = 473
        Top = 1
        Width = 81
        Height = 28
        Align = alRight
        Caption = 'Eliminar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEliminarDetalleClick
      end
    end
    object PanelDown: TPanel
      Left = 1
      Top = 457
      Width = 555
      Height = 35
      Align = alBottom
      Color = 14803425
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object cxCancelarDetalle: TcxButton
        Left = 467
        Top = 1
        Width = 87
        Height = 33
        Align = alRight
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
        OnClick = cxCancelarDetalleClick
      end
      object cxGuardarDetalle: TcxButton
        Left = 380
        Top = 1
        Width = 87
        Height = 33
        Align = alRight
        Caption = 'Guardar'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxGuardarDetalleClick
      end
    end
    object cxPageControl: TcxPageControl
      Left = 1
      Top = 31
      Width = 555
      Height = 426
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Properties.ActivePage = cxTabKit
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 424
      ClientRectLeft = 2
      ClientRectRight = 553
      ClientRectTop = 30
      object cxTabKit: TcxTabSheet
        Caption = 'cxTabKit'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PanelCentalDetalle: TPanel
          Left = 0
          Top = 0
          Width = 551
          Height = 394
          Align = alClient
          Caption = 'object PanelTop: TPanelobject PanelTop: TPanel'
          TabOrder = 0
          object cxGrid_Detalle: TcxGrid
            Left = 1
            Top = 1
            Width = 549
            Height = 288
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object ViewDetalle: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = ViewDetalleCellDblClick
              DataController.DataSource = dsDetalleCatalogos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Indicator = True
              object ViewDetalleColumn1: TcxGridDBColumn
                Caption = 'campo1'
                Options.Editing = False
                Width = 452
              end
              object ViewDetalleColumn2: TcxGridDBColumn
                Caption = 'campo2'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.00;-,0.00'
                Options.Editing = False
                Width = 83
              end
            end
            object cxViewDetalle: TcxGridLevel
              GridView = ViewDetalle
            end
          end
          object PanelDetalleDatos: TPanel
            Left = 1
            Top = 295
            Width = 549
            Height = 98
            Align = alBottom
            TabOrder = 1
            Visible = False
            object dxLayoutControl2: TdxLayoutControl
              Left = 1
              Top = 1
              Width = 547
              Height = 96
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object edtDetalle: TcxDBTextEdit
                Left = 346
                Top = 11
                DataBinding.DataSource = dsDetalleCatalogos
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
              object cbDetalle: TcxDBLookupComboBox
                Left = 65
                Top = 11
                DataBinding.DataSource = dsDetalleCatalogos
                ParentFont = False
                Properties.ListColumns = <
                  item
                  end>
                Properties.ListSource = ds_sub
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
                Width = 144
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'campo2'
                Control = edtDetalle
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'Campo1'
                Control = cbDetalle
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object cxSplitterDatos: TcxSplitter
            Left = 1
            Top = 289
            Width = 549
            Height = 6
            AlignSplitter = salBottom
            Visible = False
          end
        end
      end
      object cxTabMO: TcxTabSheet
        Caption = 'cxTabMO'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object panelDatosMO: TPanel
          Left = 0
          Top = 256
          Width = 551
          Height = 138
          Align = alBottom
          TabOrder = 0
          Visible = False
          object dxLayoutControl3: TdxLayoutControl
            Left = 1
            Top = 1
            Width = 549
            Height = 136
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            ExplicitTop = 0
            ExplicitHeight = 108
            object cxClienteMOD: TcxDBLookupComboBox
              Left = 110
              Top = 11
              DataBinding.DataField = 'IdCliente'
              DataBinding.DataSource = dsDetalleCatalogos
              ParentFont = False
              Properties.KeyFieldNames = 'IdCliente'
              Properties.ListColumns = <
                item
                  Caption = 'Clientes'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsSub
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
              Width = 145
            end
            object cxCosto: TcxDBCurrencyEdit
              Left = 110
              Top = 39
              DataBinding.DataField = 'Costo'
              DataBinding.DataSource = dsDetalleCatalogos
              ParentFont = False
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
              Width = 121
            end
            object cxCostoHEMOD: TcxDBCurrencyEdit
              Left = 110
              Top = 67
              DataBinding.DataField = 'CostoHoraExtra'
              DataBinding.DataSource = dsDetalleCatalogos
              ParentFont = False
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
              Width = 121
            end
            object cbMoneda: TcxDBLookupComboBox
              Left = 110
              Top = 95
              DataBinding.DataField = 'IdMoneda'
              DataBinding.DataSource = dsDetalleCatalogos
              ParentFont = False
              Properties.KeyFieldNames = 'IdMoneda'
              Properties.ListColumns = <
                item
                  FieldName = 'FK_Moneda'
                end>
              Properties.ListSource = dsSub2
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 145
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Cliente'
              Control = cxClienteMOD
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Costo'
              Control = cxCosto
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Costo Hora Extra'
              Control = cxCostoHEMOD
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignVert = avClient
              CaptionOptions.Text = 'Moneda'
              Control = cbMoneda
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 551
          Height = 256
          Align = alClient
          TabOrder = 1
          ExplicitHeight = 285
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDetalleCatalogos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Indicator = True
            object cxColumnMOD1: TcxGridDBColumn
              Caption = 'Cliente / Tabulador'
              DataBinding.FieldName = 'IdCliente'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.GridMode = True
              Properties.KeyFieldNames = 'IDCliente'
              Properties.ListColumns = <
                item
                  Caption = 'Cliente'
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsSub
              Options.Editing = False
              Width = 327
            end
            object cxColumnMOD2: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 94
            end
            object cxColumnMOD3: TcxGridDBColumn
              Caption = 'Costo Hora Extra'
              DataBinding.FieldName = 'CostoHoraExtra'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 116
            end
            object cxColumnMOD4: TcxGridDBColumn
              DataBinding.FieldName = 'Moneda'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object panelBotones: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 35
    Align = alTop
    TabOrder = 4
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
      Left = 523
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 523
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
  end
  object cxSplitterLateral: TcxSplitter
    Left = 523
    Top = 35
    Width = 6
    Height = 493
    AlignSplitter = salRight
    Visible = False
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
    AfterScroll = zqCatalogosGeneralesAfterScroll
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
  object zqDetalleCatalogos: TUniQuery
    Connection = connection.Uconnection
    Left = 778
    Top = 164
  end
  object dsDetalleCatalogos: TDataSource
    DataSet = zqDetalleCatalogos
    Left = 778
    Top = 124
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
  object Reporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43390.774955983800000000
    ReportOptions.LastChange = 43392.752970729170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 796
    Top = 264
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = ds_tabulador
        DataSetName = 'ds_tabulador'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1122.520410000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
        DataSet = ds_tabulador
        DataSetName = 'ds_tabulador'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 34.015770000000010000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataField = 'Descripcion'
          DataSet = ds_tabulador
          DataSetName = 'ds_tabulador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_tabulador."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 317.480520000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'Costo'
          DataSet = ds_tabulador
          DataSetName = 'ds_tabulador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_tabulador."Costo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'CostoHoraExtra'
          DataSet = ds_tabulador
          DataSetName = 'ds_tabulador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_tabulador."CostoHoraExtra"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 514.016080000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        Condition = 'ds_tabulador."IdCliente"'
        StartNewPage = True
        object Memo1: TfrxMemoView
          Top = 211.653680000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds_tabulador."Nombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 272.126160000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'TABULADOR DE MANO DE OBRA 2018')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 328.819109999999900000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CD. DEL CARMEN, CAMP., ENERO 2018')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 302.362400000000000000
          Top = 22.677180000000050000
          Width = 113.385826770000000000
          Height = 113.385826770000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 34.015770000000010000
          Top = 495.118430000000100000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'CATEGOR'#205'A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 317.480520000000000000
          Top = 495.118430000000100000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 468.661720000000000000
          Top = 495.118430000000100000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA EXTRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 619.842920000000000000
        Width = 718.110700000000000000
        Condition = 'ds_tabulador."IdManoObra"'
        Stretched = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 309.921460000000000000
        Top = 752.126470000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo28: TfrxMemoView
          Left = 188.976500000000000000
          Top = 22.677179999999910000
          Width = 291.023810000000000000
          Height = 166.299320000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Atentamente'
            ''
            ''
            ''
            'Direcci'#243'n General'
            'ING. ABELARDO RENDON MEDEL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object uTabulador: TUniQuery
    Connection = connection.Uconnection
    Left = 588
    Top = 304
  end
  object ds_tabulador: TfrxDBDataset
    UserName = 'ds_tabulador'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCliente=IdCliente'
      'IdManoObra=IdManoObra'
      'Costo=Costo'
      'CostoHoraExtra=CostoHoraExtra'
      'Descripcion=Descripcion'
      'Nombre=Nombre'
      'IdMODetalle=IdMODetalle')
    DataSet = uTabulador
    BCDToCurrency = False
    Left = 596
    Top = 256
  end
  object zSub2: TUniQuery
    Left = 569
    Top = 187
  end
  object dsSub2: TDataSource
    DataSet = zSub2
    Left = 641
    Top = 211
  end
end
