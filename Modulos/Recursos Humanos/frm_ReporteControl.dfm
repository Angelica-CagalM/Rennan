object FrmReporteControl: TFrmReporteControl
  Left = 0
  Top = 0
  Caption = 'Control Subida  / Bajada'
  ClientHeight = 548
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 548
    Align = alClient
    TabOrder = 0
    object PanelMenu: TPanel
      Left = 1
      Top = 1
      Width = 1101
      Height = 35
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1101
        35)
      object LabelProceso: TcxLabel
        Left = 202
        Top = 10
        Caption = 'Procesando'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object progreso: TcxProgressBar
        Left = 276
        Top = 7
        Anchors = [akLeft, akRight]
        ParentFont = False
        Properties.AssignedValues.Max = True
        TabOrder = 1
        Visible = False
        Width = 63
      end
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
        Transparent = True
        ExplicitWidth = 541
      end
      inline frmBarraH11: TfrmBarraH1
        Left = 538
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 3
        ExplicitLeft = 538
        ExplicitTop = 1
        ExplicitHeight = 33
        inherited Panel1: TPanel
          Height = 33
          Align = alRight
          ExplicitLeft = 1
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
    end
    object cxGridGenerador: TcxGrid
      Left = 1
      Top = 36
      Width = 1101
      Height = 320
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object CxGridMoePersonal: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsControl
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total Folio'
            Kind = skCount
            DisplayText = 'Total Empleados'
          end
          item
            Kind = skCount
            FieldName = 'CodigoPersonal'
            Column = CxColFechaFin
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object CxColNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 268
        end
        object CxColCategoria: TcxGridDBColumn
          Caption = 'Categor'#237'a'
          DataBinding.FieldName = 'Puesto'
          Options.Editing = False
          Width = 122
        end
        object CxColProyecto: TcxGridDBColumn
          DataBinding.FieldName = 'Proyecto'
          Options.Editing = False
          Width = 122
        end
        object CxEembarque: TcxGridDBColumn
          Caption = 'Ubicaci'#243'n'
          DataBinding.FieldName = 'Ubicacion'
          Options.Editing = False
          Width = 145
        end
        object CxColFechaInicio: TcxGridDBColumn
          Caption = 'Fecha Embarque'
          DataBinding.FieldName = 'Inicio'
          Options.Editing = False
          Width = 109
        end
        object CxColFechaFin: TcxGridDBColumn
          Caption = 'Fecha Desembarque'
          DataBinding.FieldName = 'Fin'
          Options.Editing = False
          Width = 101
        end
        object CxColDias: TcxGridDBColumn
          Caption = 'D'#237'as'
          DataBinding.FieldName = 'Dias'
          Width = 68
        end
        object CxColComentarios: TcxGridDBColumn
          DataBinding.FieldName = 'Comentarios'
          Width = 152
        end
      end
      object CxLevel1: TcxGridLevel
        GridView = CxGridMoePersonal
      end
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 356
      Width = 1101
      Height = 191
      Align = alBottom
      TabOrder = 2
      Visible = False
      object pnlBtn2: TPanel
        Left = 1
        Top = 154
        Width = 1099
        Height = 36
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 909
          Top = 1
          Width = 189
          Height = 34
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 909
          ExplicitTop = 1
          ExplicitWidth = 189
          ExplicitHeight = 34
          inherited Panel1: TPanel
            Width = 189
            Height = 34
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited btnPost: TcxButton
              Left = 3
              Top = 1
              OnClick = btnPostClick
              ExplicitLeft = 3
              ExplicitTop = 1
            end
            inherited btnCancel: TcxButton
              Left = 96
              Top = 1
              OnClick = btnCancelClick
              ExplicitLeft = 96
              ExplicitTop = 1
            end
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1099
        Height = 153
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cbEmpleado: TcxDBLookupComboBox
          Left = 68
          Top = 10
          DataBinding.DataField = 'IdEmpleado'
          DataBinding.DataSource = dsControl
          ParentFont = False
          Properties.KeyFieldNames = 'IdPersonal'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsEmpleados
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
          Width = 260
        end
        object cbCategoria: TcxDBLookupComboBox
          Left = 68
          Top = 39
          DataBinding.DataField = 'IdCategoria'
          DataBinding.DataSource = dsControl
          ParentFont = False
          Properties.KeyFieldNames = 'IdPuesto'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsCargo
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
          Width = 145
        end
        object cbProyecto: TcxDBLookupComboBox
          Left = 68
          Top = 68
          DataBinding.DataField = 'IdProyecto'
          DataBinding.DataSource = dsControl
          ParentFont = False
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              FieldName = 'sIdFolio'
            end>
          Properties.ListSource = dsProyecto
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
          Width = 145
        end
        object mmComentarios: TcxDBMemo
          Left = 746
          Top = 10
          DataBinding.DataField = 'Comentarios'
          DataBinding.DataSource = dsControl
          ParentFont = False
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
          Height = 79
          Width = 324
        end
        object edtTotalDias: TcxDBTextEdit
          Left = 450
          Top = 68
          DataBinding.DataField = 'Dias'
          DataBinding.DataSource = dsControl
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
          Width = 121
        end
        object cbDesembarque: TcxDBDateEdit
          Left = 450
          Top = 39
          DataBinding.DataField = 'FechaFin'
          DataBinding.DataSource = dsControl
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
          Width = 218
        end
        object cbEmbarque: TcxDBDateEdit
          Left = 450
          Top = 10
          DataBinding.DataField = 'FechaInicio'
          DataBinding.DataSource = dsControl
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
          Width = 218
        end
        object cbUbicacion: TcxDBLookupComboBox
          Left = 68
          Top = 97
          DataBinding.DataField = 'sIdPlataforma'
          DataBinding.DataSource = dsControl
          ParentFont = False
          Properties.KeyFieldNames = 'sIdPlataforma'
          Properties.ListColumns = <
            item
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = dsUbicacion
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
          Width = 145
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
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Empleado'
          Control = cbEmpleado
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Categoria'
          Control = cbCategoria
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Proyecto'
          Control = cbProyecto
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avClient
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Comentarios'
          Control = mmComentarios
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          AlignVert = avClient
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          CaptionOptions.Text = 'Total Dias'
          Control = edtTotalDias
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Desembarque'
          Control = cbDesembarque
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Fecha Embarque'
          Control = cbEmbarque
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Ubicaci'#243'n'
          Control = cbUbicacion
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
  end
  object zEmpleados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'SELECT p.IdPersonal, CONCAT(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMater' +
        'no) as Nombre FROM master_personal as p WHERE p.Activo = '#39'Si'#39)
    Left = 96
    Top = 144
  end
  object dsEmpleados: TDataSource
    DataSet = zEmpleados
    Left = 24
    Top = 144
  end
  object zCargo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from master_puesto')
    Left = 16
    Top = 208
  end
  object dsCargo: TDataSource
    DataSet = zCargo
    Left = 88
    Top = 208
  end
  object Proyecto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '(Select sNumeroOrden,sIdFolio from  ordenesdetrabajo)')
    Left = 149
    Top = 146
  end
  object dsProyecto: TDataSource
    DataSet = Proyecto
    Left = 144
    Top = 208
  end
  object Control: TUniQuery
    Connection = connection.Uconnection
    Left = 208
    Top = 152
  end
  object dsControl: TDataSource
    DataSet = Control
    Left = 208
    Top = 208
  end
  object Ubicacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select  sIdPlataforma, sDescripcion, lStatus,sIdActivo '
      'from plataformas where lStatus = '#39'Activa'#39)
    Left = 279
    Top = 154
  end
  object dsUbicacion: TDataSource
    DataSet = Ubicacion
    Left = 280
    Top = 208
  end
end
