object frmSalarios: TfrmSalarios
  Left = 488
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Salarios'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 489
    Align = alClient
    TabOrder = 0
    object pnl1: TPanel
      Left = 1
      Top = 328
      Width = 1008
      Height = 160
      Align = alBottom
      TabOrder = 0
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1006
        Height = 123
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxNombre: TcxDBTextEdit
          Left = 262
          Top = 39
          DataBinding.DataField = 'TituloSalario'
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
          TabOrder = 4
          OnEnter = EnterControl
          OnExit = SalidaControl
          OnKeyUp = GlobalKeyUp
          Width = 239
        end
        object cxSalario: TcxDBTextEdit
          Left = 636
          Top = 39
          DataBinding.DataField = 'Salario'
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 56
        end
        object cxCodigo: TcxDBTextEdit
          Left = 96
          Top = 39
          DataBinding.DataField = 'CodigoSalario'
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
          Width = 109
        end
        object cxSalarioIntegrado: TcxDBCurrencyEdit
          Left = 762
          Top = 39
          DataBinding.DataField = 'SalarioIntegrado'
          DataBinding.DataSource = ds_catalogos_generales
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
          Width = 66
        end
        object cxRangoSalario: TcxDBLookupComboBox
          Left = 96
          Top = 67
          DataBinding.DataField = 'IdRangoSalarios'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.KeyFieldNames = 'IdRangoSalarios'
          Properties.ListColumns = <
            item
              FieldName = 'LeyendaRango'
            end>
          Properties.ListSource = ds_rango_salarios
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
          Width = 145
        end
        object dxDBToggleSwitch1: TdxDBToggleSwitch
          Left = 880
          Top = 67
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
          TabOrder = 10
          Transparent = True
          OnKeyUp = GlobalKeyUp
        end
        object cxAddRango: TcxButton
          Left = 841
          Top = 67
          Width = 33
          Height = 25
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 9
          OnClick = cxAddRangoClick
        end
        object cxSubCatalogo2: TcxDBLookupComboBox
          Left = 457
          Top = 11
          DataBinding.DataField = 'IdTipoNomina'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'IdTipoNomina'
          Properties.ListColumns = <
            item
              Caption = 'Tipos de N'#243'minas'
              FieldName = 'Titulo'
            end>
          Properties.ListSource = ds_subcatalogo2
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = EnterControl
          OnExit = cxSubCatalogo2Exit
          OnKeyUp = GlobalKeyUp
          Width = 600
        end
        object cxFecha: TcxDBDateEdit
          Left = 874
          Top = 39
          DataBinding.DataField = 'FechaAplicacion'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyUp = GlobalKeyUp
          Width = 121
        end
        object cxCmbMoneda: TcxDBLookupComboBox
          Left = 874
          Top = 11
          DataBinding.DataField = 'IdMoneda'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.KeyFieldNames = 'Idmoneda'
          Properties.ListColumns = <
            item
              Caption = 'Monedas'
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
          Width = 121
        end
        object cxSubCatalogo: TcxDBLookupComboBox
          Left = 96
          Top = 11
          DataBinding.DataField = 'IdEmpresa'
          DataBinding.DataSource = ds_catalogos_generales
          ParentFont = False
          Properties.KeyFieldNames = 'IdEmpresa'
          Properties.ListColumns = <
            item
              FieldName = 'Titulo'
            end>
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
          OnExit = cxSubCatalogoExit
          OnKeyUp = GlobalKeyUp
          Width = 305
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Nombre'
          Control = cxNombre
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'S.D.R.'
          Control = cxSalario
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'digo'
          Control = cxCodigo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          CaptionOptions.Text = 'S.D.I.'
          Control = cxSalarioIntegrado
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Rango Salario'
          Control = cxRangoSalario
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'dxDBToggleSwitch1'
          CaptionOptions.Visible = False
          Control = dxDBToggleSwitch1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cxAddRango
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'N'#243'mina'
          Control = cxSubCatalogo2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Fecha'
          Control = cxFecha
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'Moneda'
          Control = cxCmbMoneda
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Empresa'
          Control = cxSubCatalogo
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 124
        Width = 1006
        Height = 35
        Align = alBottom
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 825
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 825
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
      Width = 1008
      Height = 35
      Align = alTop
      TabOrder = 1
      object cxLeyenda: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Salarios'
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
        Left = 445
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 445
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
      Width = 1008
      Height = 286
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
        OnCellClick = cxViewCatalogosCellClick
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
        object cxViewCatalogosColumn9: TcxGridDBColumn
          Caption = 'Fecha Aplicaci'#243'n'
          DataBinding.FieldName = 'FechaAplicacion'
          Options.Editing = False
          Width = 63
        end
        object cxViewCatalogosColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoSalario'
          Options.Editing = False
          Width = 119
        end
        object cxViewCatalogosColumn2: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'TituloSalario'
          Options.Editing = False
          Width = 207
        end
        object cxViewCatalogosColumn3: TcxGridDBColumn
          Caption = 'S.D.'
          DataBinding.FieldName = 'Salario'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Options.Editing = False
          Width = 109
        end
        object cxViewCatalogosColumn8: TcxGridDBColumn
          Caption = 'S.D.I'
          DataBinding.FieldName = 'SalarioIntegrado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Options.Editing = False
          Width = 89
        end
        object cxViewCatalogosColumn10: TcxGridDBColumn
          Caption = 'Sueldo Neto'
          DataBinding.FieldName = 'Importe'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Width = 98
        end
        object cxViewCatalogosColumn4: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'TMoneda'
          Options.Editing = False
          Width = 135
        end
        object cxViewCatalogosColumn5: TcxGridDBColumn
          Caption = 'N'#243'mina'
          DataBinding.FieldName = 'TNomina'
          Visible = False
          GroupIndex = 1
          Options.Editing = False
          Width = 116
        end
        object cxViewCatalogosColumn6: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'TEmpresa'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Width = 116
        end
        object cxViewCatalogosColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Activo'
          Options.Editing = False
          Width = 132
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxViewCatalogos
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 322
      Width = 1008
      Height = 6
      AlignSplitter = salBottom
    end
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
    Left = 616
    Top = 40
  end
  object ds_subcatalogo: TDataSource
    AutoEdit = False
    DataSet = zqSubCatalogo
    Left = 745
    Top = 40
  end
  object zqCatalogosGenerales: TUniQuery
    Connection = connection.Uconnection
    Left = 617
    Top = 88
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
    Top = 40
  end
  object zqSubCatalogo: TUniQuery
    Connection = connection.Uconnection
    Left = 743
    Top = 96
  end
  object uqMonedas: TUniQuery
    Connection = connection.Uconnection
    Left = 432
    Top = 200
  end
  object ds_monedas: TDataSource
    DataSet = uqMonedas
    Left = 432
    Top = 152
  end
  object ds_rango_salarios: TDataSource
    DataSet = zRangoSalarios
    Left = 536
    Top = 168
  end
  object zRangoSalarios: TUniQuery
    Connection = connection.Uconnection
    Left = 536
    Top = 216
  end
end
