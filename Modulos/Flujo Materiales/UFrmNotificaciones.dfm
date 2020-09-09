object FrmNotificaciones: TFrmNotificaciones
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Notificaciones'
  ClientHeight = 477
  ClientWidth = 819
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
  object cxGridNotificaciones: TcxGrid
    Left = 0
    Top = 35
    Width = 819
    Height = 233
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGridNotificacionesView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGridNotificacionesViewCellDblClick
      DataController.DataSource = dsNotificaciones
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      object cxGridNotificacionesViewColumn1: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Mensaje'
        Width = 138
      end
      object cxGridNotificacionesViewColumn8: TcxGridDBColumn
        Caption = 'Tipo Alerta'
        DataBinding.FieldName = 'TipoAlerta'
      end
      object cxGridNotificacionesViewColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tabla'
        Width = 70
      end
      object cxGridNotificacionesViewColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'CampoPrincipal'
        Width = 140
      end
      object cxGridNotificacionesViewColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'IdentificadorTabla'
        Visible = False
        Width = 125
      end
      object cxGridNotificacionesViewColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Tiempo'
        Visible = False
        Width = 132
      end
      object cxGridNotificacionesViewColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'LimiteDias'
        Width = 130
      end
      object cxGridNotificacionesViewColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Si'
        Properties.ValueUnchecked = 'No'
        Width = 82
      end
    end
    object cxGridNotificacionesLevel1: TcxGridLevel
      GridView = cxGridNotificacionesView
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 256
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 256
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
          Tag = 13
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
      Align = alLeft
      Caption = 'Tabla...Agregando Datos'
      ParentColor = False
      ParentFont = False
      Style.Color = clNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 276
    Width = 819
    Height = 201
    Align = alBottom
    ParentBackground = False
    TabOrder = 2
    object panelInferior: TPanel
      Left = 1
      Top = 165
      Width = 817
      Height = 35
      Align = alBottom
      TabOrder = 0
      inline frmBarraH21: TfrmBarraH2
        Left = 636
        Top = 1
        Width = 180
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 636
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Height = 33
          ExplicitHeight = 33
          inherited btnPost: TcxButton
            Top = 1
            OnClick = btnPostClick
            ExplicitTop = 1
          end
          inherited btnCancel: TcxButton
            Top = 1
            OnClick = btnCancelClick
            ExplicitTop = 1
          end
        end
      end
    end
    object panelDatos: TPanel
      Left = 1
      Top = 1
      Width = 817
      Height = 164
      Align = alClient
      TabOrder = 1
      object dxLayoutControl1: TdxLayoutControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 809
        Height = 156
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxGDatos: TcxGroupBox
          Left = 10
          Top = 10
          Caption = 'Informac'#243'n General'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 14803425
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 135
          Width = 1033
          object dxLayoutControl4: TdxLayoutControl
            Left = 3
            Top = 17
            Width = 1027
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
            object cxTabla: TcxDBTextEdit
              Left = 84
              Top = 40
              DataBinding.DataField = 'Tabla'
              DataBinding.DataSource = dsNotificaciones
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
              Width = 292
            end
            object cxCampo: TcxDBTextEdit
              Left = 604
              Top = 40
              DataBinding.DataField = 'CampoPrincipal'
              DataBinding.DataSource = dsNotificaciones
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
              Width = 101
            end
            object cxLimiteDias: TcxDBSpinEdit
              Left = 84
              Top = 69
              DataBinding.DataField = 'LimiteDias'
              DataBinding.DataSource = dsNotificaciones
              ParentFont = False
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
              Width = 286
            end
            object crrTiempo: TcxDBCurrencyEdit
              Left = 490
              Top = 69
              DataBinding.DataField = 'Tiempo'
              DataBinding.DataSource = dsNotificaciones
              ParentFont = False
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
              Width = 98
            end
            object tgActivo: TdxDBToggleSwitch
              Left = 594
              Top = 69
              Caption = 'Notificaci'#243'n Activa'
              DataBinding.DataField = 'Activo'
              DataBinding.DataSource = dsNotificaciones
              ParentFont = False
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
              TabOrder = 7
            end
            object cxMensaje: TcxDBLookupComboBox
              Left = 84
              Top = 11
              DataBinding.DataField = 'IdMensaje'
              DataBinding.DataSource = dsNotificaciones
              ParentFont = False
              Properties.KeyFieldNames = 'IdMensaje'
              Properties.ListColumns = <
                item
                  FieldName = 'Mensaje'
                end>
              Properties.ListSource = ds_mensaje
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
            object cxAlerta: TcxDBComboBox
              Left = 484
              Top = 11
              DataBinding.DataField = 'TipoAlerta'
              DataBinding.DataSource = dsNotificaciones
              ParentFont = False
              Properties.Items.Strings = (
                'Fecha'
                'Estatus'
                'Notificaci'#243'n'
                'Documento')
              Properties.OnChange = cxAlertaPropertiesChange
              Properties.OnEditValueChanged = cxAlertaPropertiesEditValueChanged
              Style.HotTrack = False
              TabOrder = 1
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxFecha: TcxDBDateEdit
              Left = 651
              Top = 11
              DataBinding.DataField = 'Fecha'
              DataBinding.DataSource = dsNotificaciones
              Enabled = False
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 2
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object dxLayoutControl4Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Tabla:'
              Control = cxTabla
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Campo Principal:'
              Control = cxCampo
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'D'#237'as Limite'
              Control = cxLimiteDias
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tiempo:'
              Visible = False
              Control = crrTiempo
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'dxDBToggleSwitch1'
              CaptionOptions.Visible = False
              Control = tgActivo
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Notificaci'#243'n:'
              Control = cxMensaje
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo Alerta:'
              Control = cxAlerta
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl4Group_Root
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha'
              Control = cxFecha
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 2
            end
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avParentManaged
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemControlAreaAlignment = catOwn
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'cxGroupBox1'
          CaptionOptions.Visible = False
          Control = cxGDatos
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object cxSplitterMedio: TcxSplitter
    Left = 0
    Top = 268
    Width = 819
    Height = 8
    AlignSplitter = salBottom
  end
  object zNotificaciones: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select * from master_notificaciones')
    Left = 224
    Top = 152
  end
  object dsNotificaciones: TDataSource
    DataSet = zNotificaciones
    Left = 224
    Top = 200
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 352
    Top = 120
  end
  object ds_mensaje: TDataSource
    DataSet = zMensaje
    Left = 416
    Top = 152
  end
end
