object frmTurnos: TfrmTurnos
  Left = 288
  Top = 322
  BorderIcons = [biSystemMenu]
  Caption = 'Turnos/Origen de la Informaci'#243'n'
  ClientHeight = 412
  ClientWidth = 931
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
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelSuperior: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 35
    Align = alTop
    TabOrder = 0
    inline frmBarraH11: TfrmBarraH1
      Left = 368
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 368
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
      Caption = 'Turnos'
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
  object panelInferior: TPanel
    Left = 0
    Top = 377
    Width = 931
    Height = 35
    Align = alBottom
    TabOrder = 1
    inline frmBarraH21: TfrmBarraH2
      Left = 741
      Top = 1
      Width = 189
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 741
      ExplicitTop = 1
      ExplicitWidth = 189
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 189
        Height = 33
        ExplicitWidth = 189
        ExplicitHeight = 33
        inherited btnPost: TcxButton
          Left = 14
          Top = 1
          Height = 31
          Align = alRight
          OnClick = btnPostClick
          ExplicitLeft = 14
          ExplicitTop = 1
          ExplicitHeight = 31
        end
        inherited btnCancel: TcxButton
          Left = 101
          Top = 1
          Height = 31
          Align = alRight
          OnClick = btnCancelClick
          ExplicitLeft = 101
          ExplicitTop = 1
          ExplicitHeight = 31
        end
      end
    end
  end
  object PanelDatos: TPanel
    Left = 0
    Top = 267
    Width = 931
    Height = 110
    Align = alBottom
    Caption = 'PanelDatos'
    TabOrder = 2
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 929
      Height = 108
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxTurno: TcxDBTextEdit
        Left = 79
        Top = 11
        DataBinding.DataField = 'sIdTurno'
        DataBinding.DataSource = ds_turnos
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
      object cxHoraInicio: TcxDBTimeEdit
        Left = 79
        Top = 40
        DataBinding.DataField = 'sHoraInicio'
        DataBinding.DataSource = ds_turnos
        ParentFont = False
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
        Width = 121
      end
      object cxDescripcion: TcxDBTextEdit
        Left = 534
        Top = 11
        DataBinding.DataField = 'sDescripcion'
        DataBinding.DataSource = ds_turnos
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
      object cxHoraFin: TcxDBTimeEdit
        Left = 538
        Top = 40
        DataBinding.DataField = 'sHoraFin'
        DataBinding.DataSource = ds_turnos
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
      object cxHoras: TcxDBTimeEdit
        Left = 79
        Top = 69
        DataBinding.DataField = 'Horas'
        DataBinding.DataSource = ds_turnos
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
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Turno:'
        Control = cxTurno
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Hora Inicio:'
        Control = cxHoraInicio
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object Desw: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Descripci'#243'n:'
        Control = cxDescripcion
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Hora Fin:'
        Control = cxHoraFin
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Horas:'
        Control = cxHoras
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object cxSplitterMedio: TcxSplitter
    Left = 0
    Top = 259
    Width = 931
    Height = 8
    AlignSplitter = salBottom
  end
  object grid_turnos: TcxGrid
    Left = 0
    Top = 35
    Width = 931
    Height = 224
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 4
    object grid_turnosDBTableView1: TcxGridDBTableView
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
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.UnderscoreWildcard = '%'
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00'
          Kind = skSum
        end
        item
          Format = '$ ,0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object cxVistaTurno: TcxGridDBColumn
        Caption = 'Turno'
      end
      object cxVistaDescripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
      end
      object cxVistaHoraInicio: TcxGridDBColumn
        Caption = 'Hora Inicio'
      end
      object cxVistaHoraFin: TcxGridDBColumn
        Caption = 'Hora Fin'
      end
      object cxVistaHoras: TcxGridDBColumn
        Caption = 'Horas '
      end
    end
    object grid_turnosLevel1: TcxGridLevel
      GridView = grid_turnosDBTableView1
    end
  end
  object ds_turnos: TDataSource
    AutoEdit = False
    DataSet = zTurnos
    Left = 240
    Top = 192
  end
  object PopupPrincipal: TPopupMenu
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 6
      ShortCut = 16457
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 10
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
      ImageIndex = 8
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
      ImageIndex = 5
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 13
      ShortCut = 116
      OnClick = Refresh1Click
    end
    object Imprimir1: TMenuItem
      Tag = 4
      Caption = 'Im&primir'
      ImageIndex = 14
      ShortCut = 16464
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 1
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 2
      ShortCut = 16470
      OnClick = Paste1Click
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 43
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object Turnos: TZQuery
    SQL.Strings = (
      
        'select * from turnos where sContrato = :contrato order by sIdtur' +
        'no')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 816
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object TurnossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object TurnossIdTurno: TStringField
      FieldName = 'sIdTurno'
      Required = True
      Size = 2
    end
    object TurnossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object TurnossOrigenTierra: TStringField
      FieldName = 'sOrigenTierra'
      Required = True
      Size = 2
    end
    object TurnossPrefijo: TStringField
      FieldName = 'sPrefijo'
      Required = True
      Size = 4
    end
    object TurnosiJornadas: TIntegerField
      FieldName = 'iJornadas'
    end
  end
  object zTurnos: TUniQuery
    Connection = connection.Uconnection
    Left = 376
    Top = 152
  end
end
