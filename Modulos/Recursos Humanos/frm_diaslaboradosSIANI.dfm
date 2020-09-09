object frmDiasLaboradosSIANI: TfrmDiasLaboradosSIANI
  Left = 336
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'D'#237'as Laborados'
  ClientHeight = 662
  ClientWidth = 1378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1378
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = ' D'#237'as Laborados'
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
      Left = 815
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 815
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
  object PanelGlobal: TPanel
    Left = 0
    Top = 69
    Width = 1378
    Height = 593
    Align = alClient
    TabOrder = 1
    object PanelCenral: TPanel
      Left = 1
      Top = 1
      Width = 960
      Height = 591
      Align = alClient
      TabOrder = 0
      object cxAsistencia: TcxGrid
        Left = 1
        Top = 1
        Width = 958
        Height = 320
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        object cxGridDBTableView3: TcxGridDBTableView
          PopupMenu = PopupMenu1
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
          FilterBox.Visible = fvNever
          DataController.DataSource = DsDiasM
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBTableView3Column1
            end
            item
              Kind = skSum
              Column = cxGridDBColumn15
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGridDBTableView3Column7: TcxGridDBColumn
            Caption = 'Proyecto'
            DataBinding.FieldName = 'NombreProyecto'
            Width = 76
          end
          object cxGridDBTableView3Column4: TcxGridDBColumn
            Caption = 'C'#243'digo de Personal'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 114
          end
          object cxGridDBTableView3Column5: TcxGridDBColumn
            Caption = 'Nombre de Personal'
            DataBinding.FieldName = 'Nombre'
            Width = 135
          end
          object cxGridDBTableView3Column6: TcxGridDBColumn
            Caption = 'Puesto Personal'
            DataBinding.FieldName = 'PuestoPersonal'
            Width = 100
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Proyecto'
            DataBinding.FieldName = 'NombreProyecto'
            Visible = False
            Options.Editing = False
            Width = 94
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 59
          end
          object cxGridDBTableView3Column2: TcxGridDBColumn
            Caption = 'Hora de entrada'
            DataBinding.FieldName = 'HoraEntrada'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Width = 88
          end
          object cxGridDBTableView3Column3: TcxGridDBColumn
            AlternateCaption = 'Hora de salida'
            Caption = 'Hora Salida'
            DataBinding.FieldName = 'HoraSalida'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Width = 94
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = 'Jornadas (Hrs)'
            DataBinding.FieldName = 'Jornada'
            Width = 88
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Asistencia'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object cxGridDBTableView3Column8: TcxGridDBColumn
            DataBinding.FieldName = 'Empresa'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object PanelDatos: TPanel
        Left = 1
        Top = 327
        Width = 958
        Height = 263
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        object dxLayoutControl6: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 956
          Height = 225
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 121
            Top = 67
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = DsDiasM
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
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 255
            Top = 95
            DataBinding.DataField = 'asistencia'
            DataBinding.DataSource = DsDiasM
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
            Width = 362
          end
          object cxPersonal: TcxDBLookupComboBox
            Left = 121
            Top = 39
            DataBinding.DataField = 'IdPersonal'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'IdPersonal'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsPersonal
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = cxPersonalExit
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 121
            Top = 11
            DataBinding.DataField = 'IdProyecto'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'sNumeroOrden'
            Properties.ListColumns = <
              item
                Caption = 'Seleccione un Proyecto'
                FieldName = 'sIdFolio'
              end>
            Properties.ListSource = dsProyecto
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
            Width = 384
          end
          object cxHoraEntrada: TcxDBTimeEdit
            Left = 569
            Top = 95
            DataBinding.DataField = 'HoraEntrada'
            DataBinding.DataSource = DsDiasM
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
            Width = 179
          end
          object cxHoraSalida: TcxDBTimeEdit
            Left = 713
            Top = 95
            DataBinding.DataField = 'HoraSalida'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 139
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 569
            Top = 39
            DataBinding.DataField = 'IdPlataforma'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'sIdPlataforma'
            Properties.ListColumns = <
              item
                Caption = 'Listado de Ubicaciones'
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = dsUbicacion
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
            Width = 329
          end
          object cxDBMemo4: TcxDBMemo
            Left = 121
            Top = 123
            DataBinding.DataField = 'Nota'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 12
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 64
            Width = 863
          end
          object lcbPuesto: TcxDBLookupComboBox
            Left = 569
            Top = 11
            DataBinding.DataField = 'IdSalario'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'IdSalario'
            Properties.ListColumns = <
              item
                Caption = 'Salario'
                Width = 70
                FieldName = 'TituloSalario'
              end
              item
                Caption = '$'
                Width = 40
                FieldName = 'SalarioR'
              end>
            Properties.ListSource = ds_salarios
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
            Width = 387
          end
          object edtJornada: TcxDBTextEdit
            Left = 824
            Top = 95
            AutoSize = False
            DataBinding.DataField = 'Jornada'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 11
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 21
            Width = 121
          end
          object cxTurno: TcxDBLookupComboBox
            Left = 569
            Top = 67
            DataBinding.DataField = 'sIdTurno'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'sIdTurno'
            Properties.ListColumns = <
              item
                Caption = 'Listado de turnos'
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = dsTurno
            Properties.OnChange = cxTurnoPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 145
          end
          object cmbTipoA: TcxDBLookupComboBox
            Left = 121
            Top = 95
            DataBinding.DataField = 'IdTipoAsistencia'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'IdTipoAsistencia'
            Properties.ListColumns = <
              item
                Caption = 'Descripci'#243'n'
                Width = 70
                FieldName = 'Descripcion'
              end
              item
                Caption = 'C'#243'digo'
                Width = 30
                FieldName = 'Codigo'
              end>
            Properties.ListSource = ds_tipos_asistencias
            Properties.OnEditValueChanged = cmbTipoAPropertiesEditValueChanged
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
            Width = 145
          end
          object cxCantidadA: TcxDBCurrencyEdit
            Left = 824
            Top = 11
            DataBinding.DataField = 'CantidadAdicional'
            DataBinding.DataSource = DsDiasM
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
          object dxLayoutControl6Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem31: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Fecha'
            Control = cxDBDateEdit4
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem32: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Asistencia'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem30: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Personal'
            Control = cxPersonal
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem24: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Proyecto'
            Control = cxDBLookupComboBox4
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem35: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Hora Entrada'
            Control = cxHoraEntrada
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem36: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Hora Salida'
            Control = cxHoraSalida
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avBottom
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem34: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Ubicacion'
            Control = cxDBLookupComboBox5
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem33: TdxLayoutItem
            Parent = dxLayoutControl6Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Observaci'#243'n'
            Control = cxDBMemo4
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl6Group_Root
            AlignHorz = ahClient
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object db: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Salario'
            Control = lcbPuesto
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem37: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Text = 'Jornadas'
            Control = edtJornada
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem41: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Turno'
            Control = cxTurno
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Tipo de Asistencia '
            Control = cmbTipoA
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignVert = avClient
            CaptionOptions.Text = 'Pago'
            Visible = False
            Control = cxCantidadA
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup9
            AlignVert = avBottom
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
        end
        object pnlBtn2: TPanel
          Left = 1
          Top = 226
          Width = 956
          Height = 36
          Align = alBottom
          TabOrder = 1
          inline frmBarraH21: TfrmBarraH2
            Left = 766
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 766
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
      end
      object Splitter1: TcxSplitter
        Left = 1
        Top = 321
        Width = 958
        Height = 6
        AlignSplitter = salBottom
        Color = 14803425
        ParentColor = False
      end
    end
    object PanelLateral: TPanel
      Left = 967
      Top = 1
      Width = 410
      Height = 591
      Align = alRight
      TabOrder = 1
      Visible = False
    end
    object cxSplitter2: TcxSplitter
      Left = 961
      Top = 1
      Width = 6
      Height = 591
      AlignSplitter = salRight
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 1378
    Height = 34
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1378
      34)
    object Label1: TLabel
      Left = 42
      Top = 8
      Width = 41
      Height = 15
      Caption = 'F. Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 221
      Top = 9
      Width = 57
      Height = 15
      Caption = 'F. Termino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dFechaInicio: TcxDateEdit
      Left = 89
      Top = 6
      ParentFont = False
      Properties.OnChange = dFechaInicioPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnExit = SalidaControl
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object dFechaTermino: TcxDateEdit
      Left = 284
      Top = 6
      ParentFont = False
      Properties.OnChange = dFechaTerminoPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnExit = SalidaControl
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object LabelProceso: TcxLabel
      Left = 427
      Top = 6
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
      Left = 504
      Top = 6
      Anchors = [akLeft]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 201
    end
    object chkContinuo: TCheckBox
      Left = 1097
      Top = 6
      Width = 73
      Height = 17
      Caption = 'Continuo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object cxCompacto: TcxCheckBox
      Left = 1176
      Top = 5
      Caption = 'Compacto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Visible = False
    end
    object CheckDescuento: TCheckBox
      Left = 1336
      Top = 6
      Width = 25
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = CheckDescuentoClick
    end
    object CheckCompleto: TCheckBox
      Left = 1261
      Top = 6
      Width = 35
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Proyecci'#243'n'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
      Visible = False
      OnClick = CheckCompletoClick
    end
    object cxCBProyectos: TcxLookupComboBox
      Left = 935
      Top = 5
      Properties.KeyFieldNames = 'sNumeroOrden'
      Properties.ListColumns = <
        item
          FieldName = 'sIdFolio'
        end>
      Properties.ListSource = dsProyecto
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      TabOrder = 8
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 827
      Top = 5
      Caption = 'Cambiar Proyecto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object ds_asistencias: TDataSource
    DataSet = asistencias
    Left = 24
    Top = 368
  end
  object frxAsistencia: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43297.836855706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  mesGenerador : string;'
      ''
      'procedure Memo78OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  mes,Cadena : string;'
      'begin'
      
        '    Cadena := '#39'DEL '#39'+ '#39'01'#39' +'#39' AL '#39'+  copy(dateToStr(<fecha_final' +
        '>),1,2) +'#39' DE '#39'+ ;'
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      '    if StrToInt(mes)=1 then'
      '       mes := '#39'ENERO'#39
      '    else'
      '    if StrToInt(mes)=2 then'
      '       mes := '#39'FEBRERO'#39
      '    else'
      '    if StrToInt(mes)=3 then'
      '       mes := '#39'MARZO'#39
      '    else'
      '    if StrToInt(mes)=4 then'
      '       mes := '#39'ABRIL'#39
      '    else'
      '    if StrToInt(mes)=5 then'
      '       mes := '#39'MAYO'#39
      '    else'
      '    if StrToInt(mes)=6 then'
      '       mes := '#39'JUNIO'#39
      '    else'
      '    if StrToInt(mes)=7 then'
      '       mes := '#39'JULIO'#39
      '    else'
      '    if StrToInt(mes)=8 then'
      '       mes := '#39'AGOSTO'#39
      '    else'
      '    if StrToInt(mes)=9 then'
      '       mes := '#39'SEPTIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=10 then'
      '       mes := '#39'OCTUBRE'#39
      '    else'
      '    if StrToInt(mes)=11 then'
      '       mes := '#39'NOVIEMBRE'#39
      '    else'
      '    if StrToInt(mes)=12 then'
      '       mes := '#39'DICIEMBRE'#39';'
      ''
      '    mesGenerador := mes;'
      ''
      
        '    Memo78.Text := '#39'PERIODO: '#39' + cadena +mes+ '#39' DEL '#39'+ copy(date' +
        'Tostr(<fecha_final>),7,4);'
      'end;'
      ''
      
        'procedure ConcentradoEmpleadosOnBeforePrint(Sender: TfrxComponen' +
        't);'
      'var'
      '   FecAux : tDateTime;'
      '   Resultado : boolean;'
      '   iDia, iLeft : double;'
      '   mes : String;'
      'begin'
      '  try'
      
        '     FecAux := StrToDate('#39'29/02/'#39'+copy(dateTostr(<fecha_final>),' +
        '7,4));'
      '     Resultado := True;'
      '   except'
      '     Resultado := False;'
      '   end;'
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      '//Ahora oculta o mostrar si el mes tiene 30, 29, o 28'
      
        '  {  if (StrToInt(mes) = 2) or (StrToInt(mes) = 4) or (StrToInt(' +
        'mes) = 6)  or (StrToInt(mes) = 9)  or (StrToInt(mes) = 11) then'
      '    begin'
      '        if (StrToInt(mes) = 2) then'
      '           iDia := 74'
      '        else'
      '           iDia := 5;'
      ''
      '        if (StrToInt(mes)=2) and (Resultado =True) then'
      '          iDia := 40;'
      ''
      ''
      '        memo177.Width  := memo177.Width + iDia;'
      '        memo51.Width  := memo51.Width + iDia;'
      '        memo75.Width := memo75.Width + iDia;'
      ''
      '        //Salarios'
      ''
      '        memo174.Left  := memo174.Left + iDia;'
      '        memo48.Left  := memo48.Left + iDia;'
      ''
      '        iLeft := ( memo174.Left + (memo174.Width+1));'
      ''
      '        //Dia 1'
      '        memo173.Left  := iLeft ;'
      '        memo1.Left    := iLeft ;'
      '        memo73.Left  := iLeft ;'
      ''
      ''
      '        iLeft := iLeft + (memo173.Width+1);'
      ''
      '        //Dia 2'
      '        memo172.Left  := iLeft;'
      '        memo4.Left    := iLeft;'
      '        memo72.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo172.Width+1);'
      ''
      '        //Dia 3'
      '        memo171.Left  := iLeft;'
      '        memo47.Left   := iLeft;'
      '        memo71.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo171.Width+1);'
      ''
      '        //Dia 4'
      ''
      '        memo170.Left  := iLeft;'
      '        memo3.Left    := iLeft;'
      '        memo69.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo170.Width+1);'
      ''
      '        //Dia 5'
      '        memo169.Left  := iLeft;'
      '        memo7.Left    := iLeft  ;'
      '        memo68.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo169.Width+1);'
      ''
      '        //Dia 6'
      '        memo167.Left  := iLeft;'
      '        memo8.Left    := iLeft  ;'
      '        memo67.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo167.Width+1);'
      ''
      '        //Dia 7'
      '        memo166.Left  := iLeft ;'
      '        memo9.Left    := iLeft   ;'
      '        memo66.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo166.Width+1);'
      ''
      '        //Dia 8'
      ''
      '        memo165.Left  := iLeft ;'
      '        memo10.Left   := iLeft  ;'
      '        memo65.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo165.Width+1);'
      ''
      '        //Dia 9'
      '        memo164.Left  := iLeft ;'
      '        memo11.Left   := iLeft ;'
      '        memo64.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo164.Width+1);'
      ''
      '        //Dia 10'
      '        memo163.Left  := iLeft ;'
      '        memo13.Left   := iLeft  ;'
      '        memo62.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo163.Width+1);'
      ''
      '        //Dia 11'
      '        memo162.Left  := iLeft ;'
      '        memo14.Left   := iLeft  ;'
      '        memo61.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo162.Width+1);'
      ''
      '        //Dia 12'
      '        memo160.Left  := iLeft ;'
      '        memo15.Left   := iLeft  ;'
      '        memo60.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo160.Width+1);'
      ''
      '        //Dia 13'
      '        memo159.Left  := iLeft ;'
      '        memo16.Left   := iLeft  ;'
      '        memo59.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo159.Width+1);'
      ''
      '        //Dia 14'
      '        memo158.Left  := iLeft ;'
      '        memo17.Left   := iLeft  ;'
      '        memo58.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo158.Width+1);'
      ''
      '        //Dia 15'
      '        memo157.Left  := iLeft ;'
      '        memo25.Left   := iLeft  ;'
      '        memo57.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo157.Width+1);'
      ''
      '        //Dia 16'
      '        memo156.Left  := iLeft ;'
      '        memo27.Left   := iLeft  ;'
      '        memo55.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo156.Width+1);'
      ''
      '        //Dia 17'
      '        memo155.Left  := iLeft ;'
      '        memo6.Left   := iLeft  ;'
      '        memo52.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo155.Width+1);'
      ''
      '        //Dia 18'
      '        memo153.Left  := iLeft;'
      '        memo29.Left   := iLeft;'
      '        memo50.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo153.Width+1);'
      ''
      '        //Dia 19'
      '        memo152.Left  := iLeft ;'
      '        memo30.Left   := iLeft;'
      '        memo45.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo152.Width+1);'
      ''
      '        //Dia 20'
      '        memo151.Left  := iLeft;'
      '        memo31.Left   := iLeft;'
      '        memo137.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo151.Width+1);'
      ''
      '        //Dia 21'
      '        memo150.Left  := iLeft;'
      '        memo32.Left   := iLeft;'
      '        memo136.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo150.Width+1);'
      ''
      '        //Dia 22'
      '        memo149.Left  := iLeft;'
      '        memo33.Left   := iLeft;'
      '        memo135.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo149.Width+1);'
      ''
      '        //Dia 23'
      '        memo148.Left  := iLeft;'
      '        memo34.Left   := iLeft;'
      '        memo134.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo148.Width+1);'
      ''
      '        //Dia 24'
      '        memo146.Left  := iLeft;'
      '        memo18.Left   := iLeft;'
      '        memo39.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo146.Width+1);'
      ''
      '        //Dia 25'
      '        memo145.Left  := iLeft;'
      '        memo38.Left   := iLeft;'
      '        memo132.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo145.Width+1);'
      ''
      '        //Dia 26'
      '        memo144.Left  := iLeft;'
      '        memo40.Left   := iLeft;'
      '        memo131.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo144.Width+1);'
      ''
      '        //Dia 27'
      '        memo143.Left  := iLeft;'
      '        memo41.Left   := iLeft;'
      '        memo99.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo143.Width+1);'
      ''
      '        //Dia 28'
      '        memo142.Left  := iLeft;'
      '        memo19.Left   := iLeft;'
      '        memo37.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo142.Width+1);'
      ''
      '        //Dia 29'
      '        memo141.Left  := iLeft;'
      '        memo43.Left   := iLeft;'
      '        memo36.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo141.Width+1);'
      ''
      '        //Dia 30'
      '        memo139.Left  := iLeft;'
      '        memo44.Left   := iLeft;'
      '        memo26.Left   := iLeft;'
      ''
      '        if (StrToInt(mes) <> 2) then'
      '           iLeft := iLeft + (memo139.Width+1);'
      ''
      '        if (StrToInt(mes) = 2)  and (Resultado =True) then'
      '        begin'
      '           memo139.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo26.Visible   := False;'
      '           iLeft := iLeft - (memo141.Width+1);'
      '        end;'
      ''
      '        if (StrToInt(mes) = 2) and (Resultado =False) then'
      '        begin'
      '           memo139.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo26.Visible   := False;'
      ''
      '           memo141.Visible  := False;'
      '           memo43.Visible   := False;'
      '           memo36.Visible   := False;'
      ''
      '           iLeft := iLeft - (memo141.Width+1);'
      '        end;'
      ''
      '        memo138.Visible:= False;'
      '        memo46.Visible := False;'
      '        memo54.Visible := False;'
      ''
      '        memo178.Left := iLeft ;'
      '        memo21.Left  := iLeft ;'
      '        memo76.Left := iLeft ;'
      ''
      '        memo5.Left  := iLeft + memo178.Width ;'
      '        memo2.Left  := iLeft + memo178.Width ;'
      '        memo24.Left := iLeft + memo178.Width ;'
      ''
      '        memo5.Width  := 1370 - iLefT;'
      '        memo2.Width  := 1370 - iLefT;'
      '        memo24.Width := 1370 - iLefT;'
      ''
      '    end; }     '
      'end;'
      ''
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxAsistenciaGetValue
    OnReportPrint = 'no '
    Left = 464
    Top = 120
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSetName = 'dsGeneradorFolio'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clNavy
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object ConcentradoEmpleados: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 400.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ConcentradoEmpleadosOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 152.949391610000000000
        Top = 18.897650000000000000
        Width = 1436.221400000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        ReprintOnNewPage = True
        object Memo23: TfrxMemoView
          Left = 113.385826770000000000
          Top = 4.453205560000000000
          Width = 1320.566929133860000000
          Height = 37.039370080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '                         TIEMPO LABORADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo465: TfrxMemoView
          Left = 113.385826770000000000
          Top = 41.490290190000000000
          Width = 303.874015750000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PROYECTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo466: TfrxMemoView
          Left = 113.385826770000000000
          Top = 59.492606360000000000
          Width = 303.874015748032000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UBICACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo467: TfrxMemoView
          Left = 113.385826770000000000
          Top = 77.494922540000000000
          Width = 303.874015750000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo470: TfrxMemoView
          Left = 417.637795280000000000
          Top = 59.492606370000000000
          Width = 828.776683540000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Ubicacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo471: TfrxMemoView
          Left = 417.637795280000000000
          Top = 41.490290190000000000
          Width = 828.776683540000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Proyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo472: TfrxMemoView
          Left = 1246.459603110000000000
          Top = 41.490290190000000000
          Width = 187.948602380000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo474: TfrxMemoView
          Left = 1246.459603110000000000
          Top = 59.492606370000000000
          Width = 187.948602380000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo476: TfrxMemoView
          Left = 1246.459603110000000000
          Top = 77.494922540000000000
          Width = 187.948602380000000000
          Height = 18.205243230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Top = 4.535433070000000000
          Width = 113.569475690000000000
          Height = 90.708661417322800000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo78: TfrxMemoView
          Left = 417.637795280000000000
          Top = 77.480314960000000000
          Width = 828.850369290000000000
          Height = 18.141732280000000000
          OnBeforePrint = 'Memo78OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 275.905690000000000000
        Width = 1436.221400000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 417.637795280000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo1OnAfterData'
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.488164570000000000
          Width = 187.842544090000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 442.204724409449000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad2"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 491.338582677165000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo5OnAfterData'
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad4"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.905511811024000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo7OnAfterData'
          OnBeforePrint = 'Memo7OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad5"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 540.472440944882000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo8OnAfterData'
          OnBeforePrint = 'Memo8OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad6"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 565.039370078740000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo9OnAfterData'
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad7"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606299212598000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo10OnAfterData'
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad8"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 614.173228346457000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo11OnAfterData'
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad9"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 638.740157480315000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo13OnAfterData'
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad10"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 663.307086614173100000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo14OnAfterData'
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad11"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 687.874015748031000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo15OnAfterData'
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad12"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 712.440944880000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo16OnAfterData'
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad13"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 737.007874015748000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo17OnAfterData'
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad14"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 786.141732283465000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo27OnAfterData'
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad16"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 810.708661417323000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo28OnAfterData'
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad17"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 835.275590551181100000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo29OnAfterData'
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad18"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 859.842519685039000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo30OnAfterData'
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad19"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.409448818898000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo31OnAfterData'
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad20"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 908.976377952756000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo32OnAfterData'
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad21"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 933.543307086614000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo33OnAfterData'
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad22"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 958.110236220471900000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo34OnAfterData'
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad23"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 982.677165354331000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo35OnAfterData'
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad24"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1007.244094488190000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo38OnAfterData'
          OnBeforePrint = 'Memo38OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad25"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1031.811023622050000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo40OnAfterData'
          OnBeforePrint = 'Memo40OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad26"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1056.377952755910000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo41OnAfterData'
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad27"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1080.944881889760000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo42OnAfterData'
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad28"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1105.511811023620000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo43OnAfterData'
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad29"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1130.078740157480000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo44OnAfterData'
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad30"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1154.645669291340000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo46OnAfterData'
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad31"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 466.771653543307000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo47OnAfterData'
          OnBeforePrint = 'Memo47OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad3"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 295.937034720000000000
          Width = 121.700787400000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Puesto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Width = 113.385862170000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Width = 182.173213700000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Nombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 761.574803149606000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo25OnAfterData'
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1180.480290550000000000
          Width = 65.385812130000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantTotal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 385.512060000000000000
        Width = 1436.221400000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 445.984540000000000000
        Width = 1436.221400000000000000
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#] ')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Left = 1213.229130000000000000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[date]'
            'Sofware No'#237'l [time]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 196.535560000000000000
        Width = 1436.221400000000000000
        Condition = 'dsGeneradorFolio."Mes"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.488164570000000000
          Top = 30.236240000000000000
          Width = 187.842544090000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1154.645669290000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '31')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1130.078740160000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '30')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1105.511811020000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '29')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1080.944881890000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '28')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1056.377952760000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '27')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1031.811023620000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '26')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1007.244094490000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '25')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 982.677165350000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '24')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 958.110236220000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '23')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 933.543307090000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '22')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          ShiftMode = smDontShift
          Left = 908.976377950000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '21')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.409448820000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '20')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          ShiftMode = smDontShift
          Left = 859.842519690000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '19')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          ShiftMode = smDontShift
          Left = 835.275590550000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '18')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          ShiftMode = smDontShift
          Left = 810.708661420000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '17')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 786.141732280000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 761.574803150000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 737.007874020000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          ShiftMode = smDontShift
          Left = 712.440944880000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          ShiftMode = smDontShift
          Left = 687.874015750000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 663.307086610000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          ShiftMode = smDontShift
          Left = 638.740157480000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          ShiftMode = smDontShift
          Left = 614.173228350000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606299210000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          ShiftMode = smDontShift
          Left = 565.039370080000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          ShiftMode = smDontShift
          Left = 540.472440940000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.905511810000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          ShiftMode = smDontShift
          Left = 491.338582680000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          ShiftMode = smDontShift
          Left = 466.771653540000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          ShiftMode = smDontShift
          Left = 442.204724410000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          ShiftMode = smDontShift
          Left = 417.637795280000000000
          Top = 30.236240000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          ShiftMode = smDontShift
          Left = 295.937034720000000000
          Top = 30.236240000000000000
          Width = 121.700824020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          ShiftMode = smDontShift
          Top = 30.236240000000000000
          Width = 113.385880470000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'PDA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 182.173213700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'PERSONAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1180.480290550000000000
          Top = 30.236369370000000000
          Width = 65.385812130000000000
          Height = 22.677153150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL DE JORNADAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Top = 11.338590000000000000
          Width = 1434.708661420000000000
          Height = 18.897637800000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Mes"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 321.260050000000000000
        Width = 1436.221400000000000000
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1246.488164570000000000
          Top = 7.559060000000000000
          Width = 187.842544090000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1154.645669290000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1130.078740160000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1105.511811020000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1080.944881890000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1056.377952760000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1031.811023620000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1007.244094490000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 982.677165350000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          ShiftMode = smDontShift
          Left = 958.110236220000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          ShiftMode = smDontShift
          Left = 933.543307090000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 908.976377950000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          ShiftMode = smDontShift
          Left = 884.409448820000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smDontShift
          Left = 859.842519690000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          ShiftMode = smDontShift
          Left = 835.275590550000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          ShiftMode = smDontShift
          Left = 810.708661420000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          ShiftMode = smDontShift
          Left = 786.141732280000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          ShiftMode = smDontShift
          Left = 761.574803150000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          ShiftMode = smDontShift
          Left = 737.007874020000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smDontShift
          Left = 712.440944880000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          ShiftMode = smDontShift
          Left = 687.874015750000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          ShiftMode = smDontShift
          Left = 663.307086610000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          ShiftMode = smDontShift
          Left = 638.740157480000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          ShiftMode = smDontShift
          Left = 614.173228350000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606299210000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          ShiftMode = smDontShift
          Left = 565.039370080000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          ShiftMode = smDontShift
          Left = 540.472440940000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.905511810000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          ShiftMode = smDontShift
          Left = 491.338582680000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          ShiftMode = smDontShift
          Left = 466.771653540000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          ShiftMode = smDontShift
          Left = 442.204724410000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          ShiftMode = smDontShift
          Left = 417.637795280000000000
          Top = 7.559060000000000000
          Width = 24.566929130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          ShiftMode = smDontShift
          Top = 7.559060000000000000
          Width = 417.259915750000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL POR DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1180.480290550000000000
          Top = 7.559060000000000000
          Width = 65.385812130000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 128
    object DiasxContrato: TMenuItem
      Caption = 'Ingresar Dias Laborados de Acuerdo a Contrataci'#243'n'
      OnClick = DiasxContratoClick
    end
    object Copiararangodefechas1: TMenuItem
      Caption = 'Copiar a rango de fechas'
      Hint = 'Copia el registro a un rango de fechas seleccionado'
      OnClick = CopiarXRangoClick
    end
    object raerDiasLaboradoselperiodoanterior1: TMenuItem
      Caption = 'Traer Dias Laborados el periodo anterior'
      Enabled = False
      OnClick = raerDiasLaboradoselperiodoanterior1Click
    end
  end
  object ds_empleados: TDataSource
    DataSet = empleados
    Left = 24
    Top = 280
  end
  object ds_folios: TDataSource
    AutoEdit = False
    DataSet = zFolios
    Left = 544
    Top = 368
  end
  object zFolios: TZReadOnlyQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    SQL.Strings = (
      
        'select "<todos>" as sNumeroOrden, "<<Todos los Folios>>" as sIdF' +
        'olio from ordenesdetrabajo'
      'union'
      'select o.sNumeroOrden, o.sIdFolio from ordenesdetrabajo o'
      'where o.sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 1040
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 536
    Top = 120
  end
  object zContrato: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT sContrato,sMascara, mDescripcion FROM rd_proyectos')
    Left = 328
    Top = 256
  end
  object dsContrato: TDataSource
    DataSet = zContrato
    Left = 320
    Top = 312
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 608
    Top = 480
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 616
    Top = 432
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    Left = 22
    Top = 241
  end
  object asistencias: TUniQuery
    Connection = connection.Uconnection
    Left = 22
    Top = 319
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 320
    Top = 176
    object dxMemData1uno: TStringField
      FieldName = 'uno'
    end
    object dxMemData1dos: TIntegerField
      FieldName = 'dos'
    end
  end
  object Folios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select '#39'<todos>'#39' as sNumeroOrden, '#39'<<Todos los Folios>>'#39' as sIdF' +
        'olio from ordenesdetrabajo'
      'union'
      'select o.sNumeroOrden, o.sIdFolio from ordenesdetrabajo o'
      'where o.sContrato =:Contrato')
    Left = 536
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object generador_diario: TUniQuery
    Connection = connection.Uconnection
    Left = 288
    Top = 361
  end
  object Personal: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT IdPersonal, IdEmpresa,'
      'concat(Nombre,'#39' '#39',APaterno,'#39' '#39',AMaterno) as Nombre'
      'FROM master_personal WHERE Activo = '#39'Si'#39';')
    Left = 434
    Top = 169
  end
  object dsPersonal: TDataSource
    DataSet = Personal
    Left = 370
    Top = 169
  end
  object dlgSavePDF: TSaveDialog
    DefaultExt = 'pdf'
    Left = 984
    Top = 328
  end
  object dlgPDF: TFileOpenDialog
    DefaultExtension = 'PDF'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 1038
    Top = 327
  end
  object XML: TXMLDocument
    Left = 1036
    Top = 380
  end
  object iconPDF_XML: TcxImageList
    FormatVersion = 1
    DesignInfo = 23331812
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFFF7EDE6FF5B524CFF4E443EFF4C413AFF484038FF463D36FF443A
          33FF413731FF3F362FFF3E352DFF3C312BFF393129FF382F27FF0000000BB079
          66FFFDFBFBFFF8EEE8FF5D544DFFFAF8F7FF4D433DFFF9F6F5FF473E37FFF9F4
          F2FF433932FFF7F1EFFF3F362FFFF7F0EDFFF7EEECFF393029FF0000000AB37C
          69FFFEFCFBFFF8F0EAFF5F564FFFFAF8F7FF4E443EFFF9F6F5FF494038FFF8F5
          F3FF453A35FFF7F3F0FF403730FFF7F0EEFF3C322CFF3A312BFF00000009B67F
          6CFFFEFDFCFFF9F0EBFF625952FF88817BFFFAF8F7FF857E78FF4B4139FFF9F6
          F3FF463D36FFF8F2F0FF413831FFF7F1EEFF3E332CFF3C312BFF00000009B983
          71FFFEFDFCFFFAF3EEFF645B55FFFAF9F8FF514740FFFAF8F6FF4D433CFFF9F6
          F5FFF9F5F2FFF9F3F2FF433932FFF7F2EFFF3F352DFF3D322CFF00000008BC88
          77FFFEFEFDFFFBF4EFFF675C56FFFBF9F8FF524841FFFAF8F7FF4E443EFFF9F7
          F5FF493F38FFF9F5F3FF443A33FFF8F2EFFF403630FF3E352DFF00000007BF8C
          7AFFFEFEFDFFFBF6F1FF685E59FF665C55FF635853FF5F564FFF5D524CFF594F
          49FF564B44FF524941FF4E453EFF4B413AFF493F38FF463D35FF00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFF7674D8FF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
          C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD0000000BB079
          66FFFDFBFBFF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
          EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF0000000AB37C
          69FFFEFCFBFF3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
          C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF00000009B67F
          6CFFFEFDFCFF4040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
          CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF00000009B983
          71FFFEFDFCFF4042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
          CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF00000008BC88
          77FFFEFEFDFF4243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
          F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF00000007BF8C
          7AFFFEFEFDFF7F7DE1FF4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
          CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
      end>
  end
  object temE: TUniQuery
    Connection = connection.Uconnection
    Left = 232
    Top = 401
  end
  object DiasLaboradosM: TUniQuery
    Connection = connection.Uconnection
    Left = 165
    Top = 402
  end
  object DsDiasM: TDataSource
    DataSet = DiasLaboradosM
    Left = 165
    Top = 458
  end
  object Proyecto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '(Select sNumeroOrden,sIdFolio from  ordenesdetrabajo)')
    Left = 181
    Top = 266
  end
  object dsProyecto: TDataSource
    DataSet = Proyecto
    Left = 181
    Top = 314
  end
  object zProyec: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      ''
      
        'Select v.IdProyecto, (Select ot.sIdFolio from ordenesdetrabajo o' +
        't where ot.sNumeroOrden=v.IdProyecto) as Proyecto'
      'from  rh_verificar_manual as v '
      'Group By v.IdProyecto'
      ';')
    Left = 327
    Top = 442
  end
  object DiasPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 23
    Top = 426
  end
  object dsDiasPersonal: TDataSource
    DataSet = DiasPersonal
    Left = 23
    Top = 466
  end
  object Ubicacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select  sIdPlataforma, sDescripcion, lStatus,sIdActivo '
      'from plataformas where lStatus = '#39'Activa'#39)
    Left = 127
    Top = 170
  end
  object dsUbicacion: TDataSource
    DataSet = Ubicacion
    Left = 119
    Top = 218
  end
  object uSalarios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select pm.IdPuestoEmpleado,pm.IdPersonal,'
      'concat (mp.Nombre,'#39' NO ESPECIALIDAD'#39') as Puesto'
      'from rh_puesto_empleado as pm'
      'inner join master_puesto as mp on (mp.IdPuesto = pm.IdPuesto)')
    Left = 104
    Top = 264
  end
  object ds_salarios: TDataSource
    DataSet = uSalarios
    Left = 112
    Top = 312
  end
  object Empresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select mp.IdPersonal, mp.CodigoPersonal, '
      'concat (mp.Nombre,'#39' '#39',mp.APaterno,'#39' '#39',mp.AMaterno) as Nombre, '
      
        '(Select FK_Titulo from master_empresa as me where mp.IdEmpresa =' +
        ' me.IdEmpresa) as Empresa'
      'from master_personal as mp where mp.Activo='#39'Si'#39)
    Left = 127
    Top = 122
  end
  object dsEmpresa: TDataSource
    DataSet = Empresa
    Left = 23
    Top = 114
  end
  object dsProyec: TDataSource
    DataSet = zProyec
    Left = 259
    Top = 461
  end
  object zTurno: TUniQuery
    Connection = connection.Uconnection
    Left = 603
    Top = 581
  end
  object dsTurno: TDataSource
    DataSet = zTurno
    Left = 531
    Top = 581
  end
  object uTiposAsistencias: TUniQuery
    Connection = connection.Uconnection
    Left = 449
    Top = 246
  end
  object ds_tipos_asistencias: TDataSource
    DataSet = uTiposAsistencias
    Left = 529
    Top = 262
  end
  object zProyectos: TUniQuery
    Connection = connection.Uconnection
    Left = 529
    Top = 198
  end
  object dsProyectos: TDataSource
    DataSet = zProyectos
    Left = 577
    Top = 206
  end
  object zUpdate: TUniQuery
    Connection = connection.Uconnection
    Left = 393
    Top = 238
  end
end
