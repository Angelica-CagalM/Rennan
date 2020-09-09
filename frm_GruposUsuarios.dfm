object frmGrupos: TfrmGrupos
  Left = 342
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Perfiles de Usuario'
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
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 474
    Height = 454
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 472
      Height = 227
      Align = alClient
      TabOrder = 0
      object grid_fases: TcxGrid
        Left = 1
        Top = 1
        Width = 470
        Height = 225
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupPrincipal
        TabOrder = 0
        object dbg_fasesDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ds_grupos
          DataController.Filter.OnChanged = dbg_fasesDBTableView1DataControllerFilterChanged
          DataController.Filter.OnBeforeChange = dbg_fasesDBTableView1DataControllerFilterBeforeChange
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object Grid__fase1: TcxGridDBColumn
            Caption = 'Perfil'
            DataBinding.FieldName = 'sIdGrupo'
            Width = 117
          end
          object Grid__fases2: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'sDescripcion'
            Width = 301
          end
          object Grid__fases3: TcxGridDBColumn
            DataBinding.FieldName = 'Mail'
            Width = 102
          end
          object Grid__fases4: TcxGridDBColumn
            DataBinding.FieldName = 'Imagen'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TdxPNGImage'
          end
        end
        object dbg_fasesLevel1: TcxGridLevel
          GridView = dbg_fasesDBTableView1
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 228
      Width = 472
      Height = 8
      AlignSplitter = salBottom
    end
    object Panel2: TPanel
      Left = 1
      Top = 236
      Width = 472
      Height = 217
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 470
        Height = 180
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object sMail: TcxDBTextEdit
          Left = 167
          Top = 69
          Hint = 'Mail del Grupo (ejemplo: usuario@intel.code.com.mx)'
          DataBinding.DataField = 'sMail'
          DataBinding.DataSource = ds_grupos
          ParentFont = False
          Style.Color = clWhite
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
          Width = 186
        end
        object sPassword: TcxDBTextEdit
          Left = 167
          Top = 98
          Hint = 'Contrase'#241'a del Mail'
          DataBinding.DataField = 'sPassword'
          DataBinding.DataSource = ds_grupos
          ParentFont = False
          Properties.PasswordChar = '*'
          Properties.ReadOnly = False
          Style.Color = clWhite
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
          Width = 186
        end
        object tsDescripcion: TcxDBTextEdit
          Left = 167
          Top = 40
          Hint = 'Descripci'#243'n'
          DataBinding.DataField = 'sDescripcion'
          DataBinding.DataSource = ds_grupos
          ParentFont = False
          Properties.CharCase = ecUpperCase
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
          Width = 428
        end
        object tsIdGrupo: TcxDBTextEdit
          Left = 167
          Top = 11
          Hint = 'Id del Grupo'
          DataBinding.DataField = 'sIdGrupo'
          DataBinding.DataSource = ds_grupos
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Color = clWhite
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
          Width = 130
        end
        object imgEmp: TcxDBImage
          Left = 601
          Top = 11
          DataBinding.DataField = 'Imagen'
          DataBinding.DataSource = ds_grupos
          Properties.Caption = '<Dar doble clic para cargar>'
          Properties.GraphicClassName = 'TdxSmartImage'
          Properties.GraphicTransparency = gtTransparent
          Style.HotTrack = False
          TabOrder = 5
          OnDblClick = imgEmpDblClick
          Height = 108
          Width = 393
        end
        object EvaluaProveedor: TcxDBComboBox
          Left = 167
          Top = 127
          DataBinding.DataField = 'EvaluaProveedor'
          DataBinding.DataSource = ds_grupos
          ParentFont = False
          Properties.Items.Strings = (
            'Todo'
            'Compras'
            'Otros')
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
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Mail Grupo'
          Control = sMail
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Contrase'#241'a'
          Control = sPassword
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Descripci'#242'n'
          Control = tsDescripcion
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Id Perfil'
          Control = tsIdGrupo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avClient
          Control = imgEmp
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Evaluaci'#243'n de Proveedores'
          Control = EvaluaProveedor
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 181
        Width = 470
        Height = 35
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        inline frmBarraH21: TfrmBarraH2
          Left = 289
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 289
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 5
              Top = 1
              Height = 31
              Align = alRight
              OnClick = btnPostClick
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
    end
  end
  object panelBotones: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 35
    Align = alTop
    TabOrder = 1
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Tabla...Perfiles de Usuario'
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
    inline frmBarraH11: TfrmBarraH1
      Left = 447
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 447
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
  object PanelDetalle: TPanel
    Left = 480
    Top = 35
    Width = 530
    Height = 454
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 528
      Height = 30
      Align = alTop
      TabOrder = 0
      object cxNuevoDetalle: TcxButton
        Tag = 10
        Left = 284
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
        Left = 365
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
        Left = 446
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
    object PanelLeyenda2: TPanel
      Left = 1
      Top = 31
      Width = 528
      Height = 27
      Align = alTop
      TabOrder = 1
      object cxLeyenda3: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Seleccionado: '
        ParentColor = False
        ParentFont = False
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHighlight
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object PanelInfoD: TPanel
      Left = 1
      Top = 358
      Width = 528
      Height = 95
      Align = alBottom
      TabOrder = 2
      Visible = False
      object PanelDown: TPanel
        Left = 1
        Top = 59
        Width = 526
        Height = 35
        Align = alBottom
        Color = 14803425
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object cxCancelarDetalle: TcxButton
          Left = 438
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
          Left = 351
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
      object dxLayoutControl2: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 526
        Height = 58
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxCC: TcxDBLookupComboBox
          Left = 113
          Top = 11
          DataBinding.DataField = 'sNumeroOrden'
          DataBinding.DataSource = ds_ccPerfil
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              Caption = 'Elija un Centro de Costos'
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = ds_cc
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
          Width = 145
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Centro de Costo :'
          Control = cxCC
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 352
      Width = 528
      Height = 6
      AlignSplitter = salBottom
    end
    object gridDetalle: TcxGrid
      Left = 1
      Top = 58
      Width = 528
      Height = 294
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object gridDetalleDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_ccPerfil
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        object gridColumnD1: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
        end
        object gridColumnD2: TcxGridDBColumn
          Caption = 'Centro de Costo'
          DataBinding.FieldName = 'sIdFolio'
        end
      end
      object gridDetalleLevel1: TcxGridLevel
        GridView = gridDetalleDBTableView1
      end
    end
  end
  object cxSplitterDetalle: TcxSplitter
    Left = 474
    Top = 35
    Width = 6
    Height = 454
    AlignSplitter = salRight
  end
  object ds_grupos: TDataSource
    AutoEdit = False
    DataSet = Grupos
    Left = 120
    Top = 56
  end
  object PopupPrincipal: TPopupMenu
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
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
      ImageIndex = 3
      ShortCut = 122
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar Excel'
      ImageIndex = 15
      OnClick = ExportarExcel1Click
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 5
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
  object dlgSave1: TSaveDialog
    Left = 248
    Top = 104
  end
  object uCCPerfil: TUniQuery
    Connection = connection.Uconnection
    Left = 481
    Top = 124
  end
  object uCC: TUniQuery
    Connection = connection.Uconnection
    Left = 537
    Top = 124
  end
  object ds_ccPerfil: TDataSource
    DataSet = uCCPerfil
    Left = 465
    Top = 28
  end
  object ds_cc: TDataSource
    DataSet = uCC
    Left = 537
    Top = 68
  end
  object Grupos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from grupos')
    AfterScroll = GruposAfterScroll
    Left = 241
    Top = 76
  end
end
