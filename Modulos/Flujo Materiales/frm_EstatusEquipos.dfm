object frmEstatusEquipos: TfrmEstatusEquipos
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Estatus Equipos'
  ClientHeight = 311
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poDesktopCenter
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 74
    Height = 232
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 74
    ExplicitHeight = 232
    inherited Panel1: TPanel
      Width = 74
      Height = 232
      ExplicitWidth = 74
      ExplicitHeight = 232
      inherited btnAdd: TcxButton
        Left = 2
        Top = 3
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 2
        ExplicitTop = 3
      end
      inherited btnEdit: TcxButton
        Left = 2
        Top = 25
        OnClick = frmBarra1btnEditClick
        ExplicitLeft = 2
        ExplicitTop = 25
      end
      inherited btnPost: TcxButton
        Left = 2
        Top = 47
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 2
        ExplicitTop = 47
      end
      inherited btnCancel: TcxButton
        Left = 2
        Top = 70
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 2
        ExplicitTop = 70
      end
      inherited btnDelete: TcxButton
        Left = 2
        Top = 93
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 2
        ExplicitTop = 93
      end
      inherited btnPrinter: TcxButton
        Left = 2
        Top = 116
        ExplicitLeft = 2
        ExplicitTop = 116
      end
      inherited btnRefresh: TcxButton
        Left = 2
        Top = 138
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 2
        ExplicitTop = 138
      end
      inherited btnExit: TcxButton
        Left = 2
        Top = 162
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 2
        ExplicitTop = 162
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
  end
  object grid_EstadosEquipos: TcxGrid
    Left = 74
    Top = 0
    Width = 434
    Height = 232
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 1
    object grid_EstadosEquiposDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEstados
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grid_EstadosEquiposDBTableView1Column1: TcxGridDBColumn
        Caption = 'Clave'
        DataBinding.FieldName = 'IdEstadoEquipo'
        Width = 59
      end
      object grid_EstadosEquiposDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Estatus'
        Width = 373
      end
    end
    object grid_EstadosEquiposLevel1: TcxGridLevel
      GridView = grid_EstadosEquiposDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 508
    Height = 79
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 19
      Width = 87
      Height = 15
      Caption = 'Estatus Equipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tsEstados: TDBEdit
      Left = 105
      Top = 16
      Width = 300
      Height = 23
      Hint = 'Ingrese una descripcion general.'
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'Estatus'
      DataSource = dsEstados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 0
      OnEnter = tsEstadosEnter
      OnExit = tsEstadosExit
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = Insertar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Editar1: TMenuItem
      Tag = 1
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
      OnClick = Editar1Click
    end
    object Registrar1: TMenuItem
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Can1Click
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
      OnClick = Copiar1Click
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
      OnClick = Pegar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 1
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Tag = 1
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = Refresh1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object zqEstados: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from rd_estatus_equipos')
    Params = <>
    Left = 328
    Top = 128
    object zqEstadosIdEstadoEquipo: TIntegerField
      FieldName = 'IdEstadoEquipo'
    end
    object zqEstadosEstatus: TStringField
      FieldName = 'Estatus'
      Size = 35
    end
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = zqEstados
    Left = 360
    Top = 128
  end
end
