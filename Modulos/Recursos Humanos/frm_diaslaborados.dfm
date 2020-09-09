object frmDiasLaborados: TfrmDiasLaborados
  Left = 336
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'D'#237'as Laborados'
  ClientHeight = 661
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Tag = 13
      Left = 234
      Top = 1
      Width = 88
      Height = 33
      Align = alRight
      Caption = 'Nomina Oficina'
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 0
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Tag = 11
      Left = 322
      Top = 1
      Width = 94
      Height = 33
      Align = alRight
      Caption = 'Nomina A Bordo'
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      WordWrap = True
      OnClick = cxButton2Click
    end
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
      Left = 513
      Top = 1
      Width = 589
      Height = 33
      Align = alRight
      TabOrder = 3
      ExplicitLeft = 513
      ExplicitTop = 1
      ExplicitWidth = 589
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 589
        Height = 33
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 28
          Height = 31
          OnClick = frmBarraH11btnAddClick
          ExplicitLeft = 28
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 108
          Height = 31
          Visible = False
          OnClick = btnEditClick
          ExplicitLeft = 108
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 188
          Height = 31
          Visible = False
          OnClick = btnDeleteClick
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 428
          Height = 31
          OnClick = btnPrinterClick
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 508
          Height = 31
          OnClick = btnDetalleClick
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 268
          Height = 31
          Visible = False
          OnClick = btnRefreshClick
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 348
          Height = 31
          OnClick = btnExportaClick
          ExplicitHeight = 31
        end
      end
    end
    object cxButton9: TcxButton
      Tag = 10
      Left = 416
      Top = 1
      Width = 97
      Height = 33
      Align = alRight
      Caption = 'Descuentos'
      OptionsImage.ImageIndex = 52
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 4
      WordWrap = True
      OnClick = cxButton9Click
    end
  end
  object PanelGlobal: TPanel
    Left = 0
    Top = 69
    Width = 1103
    Height = 592
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 354
      Height = 590
      Align = alLeft
      TabOrder = 0
      object cxGridEmpleado: TcxGrid
        Left = 1
        Top = 1
        Width = 346
        Height = 588
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.InfoPanel.Visible = True
          OnCellClick = cxGridDBTableView4CellClick
          DataController.DataSource = dsEmpresa
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoPersonal'
            Width = 76
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Nombre del Empleado'
            DataBinding.FieldName = 'Nombre'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 222
          end
          object colEmpresa: TcxGridDBColumn
            DataBinding.FieldName = 'Empresa'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object Grid_Bitacora: TcxGrid
        Left = 1
        Top = 1
        Width = 346
        Height = 588
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object BView_Empleados: TcxGridDBTableView
          OnDblClick = BView_EmpleadosDblClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
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
          OnCellClick = BView_EmpleadosCellClick
          DataController.DataSource = ds_empleados
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object BView_EmpleadosColumn2: TcxGridDBColumn
            Caption = 'Area'
            DataBinding.FieldName = 'Departamento'
            Options.Editing = False
            Width = 115
          end
          object BView_EmpleadosColumn1: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoPersonal'
            Options.Editing = False
            Width = 69
          end
          object mDescripcion: TcxGridDBColumn
            Caption = 'Nombre del Empleado'
            DataBinding.FieldName = 'NombreCompleto'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 204
          end
          object colCheck: TcxGridDBColumn
            DataBinding.FieldName = 'TallaFaja'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            IsCaptionAssigned = True
          end
          object FechaI: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'Fechas'
            Visible = False
          end
        end
        object Grid_BitacoraLevel1: TcxGridLevel
          GridView = BView_Empleados
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 347
        Top = 1
        Width = 6
        Height = 588
        AlignSplitter = salRight
      end
    end
    object PanelCenral: TPanel
      Left = 355
      Top = 1
      Width = 229
      Height = 590
      Align = alClient
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 1
        Top = 320
        Width = 227
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = -1
        ExplicitTop = 315
        ExplicitWidth = 309
      end
      object cxAsistencia: TcxGrid
        Left = 1
        Top = 1
        Width = 227
        Height = 319
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        Visible = False
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = CxGridAsistenciaPersonalDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = DsDiasM
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Total'
            end
            item
              Format = 'Total Generador'
              Kind = skCount
              Column = cxGridDBColumn16
              DisplayText = 'Total Generador'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGridDBTableView3Column4: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreCompleto'
            Visible = False
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Proyecto'
            DataBinding.FieldName = 'IdProyecto'
            Options.Editing = False
            Width = 32
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 40
          end
          object cxGridDBTableView3Column2: TcxGridDBColumn
            Caption = 'Hora de entrada'
            DataBinding.FieldName = 'HoraEntrada'
          end
          object cxGridDBTableView3Column3: TcxGridDBColumn
            AlternateCaption = 'Hora de salida'
            DataBinding.FieldName = 'HoraSalida'
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = 'horas de Jornada'
            DataBinding.FieldName = 'Jornada'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Asistencia'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxGridAsistencia: TcxGrid
        Left = 1
        Top = 1
        Width = 227
        Height = 319
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        Visible = False
        object CxGridAsistenciaPersonal: TcxGridDBTableView
          OnDblClick = CxGridAsistenciaPersonalDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = ds_asistencias
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Total'
            end
            item
              Format = 'Total Generador'
              Kind = skCount
              Column = CxColumnCxGridMoePersonalColumn3
              DisplayText = 'Total Generador'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object CxGridAsistenciaPersonalColumn1: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreCompleto'
          end
          object cxOrdenar: TcxGridDBColumn
            DataBinding.FieldName = 'FechaHoraRegistro'
            Options.Editing = False
            Width = 32
          end
          object CxOrdenaPersonal: TcxGridDBColumn
            Caption = 'Embarcaci'#243'n'
            DataBinding.FieldName = 'Embarcacion'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 40
          end
          object CxColumnCxGridMoePersonalColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Turno'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object CxColumnCxGridMoePersonalColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Guardia'
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
        end
        object CxLevel1: TcxGridLevel
          GridView = CxGridAsistenciaPersonal
        end
      end
      object PanelDatos: TPanel
        Left = 1
        Top = 326
        Width = 227
        Height = 263
        Align = alBottom
        TabOrder = 1
        Visible = False
        object dxLayoutControl6: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 225
          Height = 225
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 86
            Top = 65
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
            Left = 86
            Top = 93
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
            TabOrder = 3
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 362
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 86
            Top = 38
            DataBinding.DataField = 'IdPersonal'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'IdPersonal'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsPersonal
            Style.HotTrack = False
            TabOrder = 1
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 86
            Top = 11
            DataBinding.DataField = 'IdProyecto'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'sNumeroOrden'
            Properties.ListColumns = <
              item
                FieldName = 'sIdFolio'
              end>
            Properties.ListSource = dsProyecto
            Style.HotTrack = False
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 384
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 555
            Top = 94
            AutoSize = False
            DataBinding.DataField = 'Jornada'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 21
            Width = 121
          end
          object cxDBTimeEdit1: TcxDBTimeEdit
            Left = 555
            Top = 67
            DataBinding.DataField = 'HoraEntrada'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 6
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 179
          end
          object cxDBTimeEdit2: TcxDBTimeEdit
            Left = 811
            Top = 67
            DataBinding.DataField = 'HoraSalida'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 7
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 139
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 555
            Top = 40
            DataBinding.DataField = 'IdPlataforma'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'sIdPlataforma'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = dsUbicacion
            Style.HotTrack = False
            TabOrder = 5
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 329
          end
          object cxDBMemo4: TcxDBMemo
            Left = 86
            Top = 121
            DataBinding.DataField = 'Nota'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 9
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Height = 64
            Width = 863
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 555
            Top = 13
            DataBinding.DataField = 'IdPuesto'
            DataBinding.DataSource = DsDiasM
            ParentFont = False
            Properties.KeyFieldNames = 'IdPuestoEmpleado'
            Properties.ListColumns = <
              item
                FieldName = 'Puesto'
              end>
            Properties.ListSource = dsPuesto
            Style.HotTrack = False
            TabOrder = 4
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 387
          end
          object dxLayoutControl6Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
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
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Asistencia'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem30: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Personal'
            Control = cxDBLookupComboBox3
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
            AlignHorz = ahLeft
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup7
            AlignHorz = ahLeft
            AlignVert = avClient
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem37: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Jornadas'
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem35: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Hora Entrada'
            Control = cxDBTimeEdit1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem36: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'Hora Salida'
            Control = cxDBTimeEdit2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahLeft
            AlignVert = avBottom
            LayoutDirection = ldHorizontal
            Index = 2
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
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object db: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup9
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Puesto'
            Control = cxDBLookupComboBox6
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
        object pnlBtn2: TPanel
          Left = 1
          Top = 226
          Width = 225
          Height = 36
          Align = alBottom
          TabOrder = 1
          inline frmBarraH21: TfrmBarraH2
            Left = 35
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 35
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
    end
    object PanelLateral: TPanel
      Left = 590
      Top = 1
      Width = 512
      Height = 590
      Align = alRight
      TabOrder = 2
      Visible = False
      object cxPageDetalle: TcxPageControl
        Left = 1
        Top = 49
        Width = 510
        Height = 494
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 492
        ClientRectLeft = 2
        ClientRectRight = 508
        ClientRectTop = 30
        object pageReembolso: TcxTabSheet
          Caption = 'Reembolso'
          ImageIndex = 0
          object PanelCentro: TPanel
            Left = 0
            Top = 0
            Width = 506
            Height = 462
            Align = alClient
            Color = 14803425
            ParentBackground = False
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 1
              Top = 1
              Width = 504
              Height = 312
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGrid1DBTableView1CellDblClick
                DataController.DataSource = dsRem
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total'
                    Kind = skCount
                    Column = ColNota
                    DisplayText = 'Total'
                  end
                  item
                    Format = '$ #,00.00'
                    Kind = skSum
                    FieldName = 'Monto'
                    Column = Cantidad
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.Indicator = True
                object ColNom: TcxGridDBColumn
                  DataBinding.FieldName = 'Nombre'
                  Width = 82
                end
                object ColMes: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.AssignedValues.DisplayFormat = True
                  Width = 88
                end
                object ColNota: TcxGridDBColumn
                  DataBinding.FieldName = 'Nota'
                  Width = 89
                end
                object Cantidad: TcxGridDBColumn
                  DataBinding.FieldName = 'Monto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 76
                end
                object cxGrid1DBTableView1Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'Cantidad'
                  Width = 78
                end
                object Documento: TcxGridDBColumn
                  Caption = 'Documento'
                  DataBinding.FieldName = 'Icono'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = iconPDF_XML
                  Properties.Items = <
                    item
                      ImageIndex = 0
                      Value = 0
                    end
                    item
                      ImageIndex = 1
                      Value = 1
                    end>
                  Width = 77
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutControl1: TdxLayoutControl
              Left = 1
              Top = 313
              Width = 504
              Height = 148
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              DesignSize = (
                504
                148)
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 82
                Top = 11
                DataBinding.DataField = 'IdPersonal'
                DataBinding.DataSource = dsDoctoXML
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
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object cxDBMemo1: TcxDBMemo
                Left = 82
                Top = 39
                DataBinding.DataField = 'Nota'
                DataBinding.DataSource = dsDoctoXML
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
                Height = 44
                Width = 185
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 82
                Top = 89
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsDoctoXML
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
                Width = 166
              end
              object cxDBCurrencyEdit1: TcxDBCurrencyEdit
                Left = 82
                Top = 235
                DataBinding.DataField = 'Monto'
                DataBinding.DataSource = dsDoctoXML
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
                OnExit = cxDBCurrencyEdit1Exit
                OnKeyUp = GlobalKeyUp
                Width = 121
              end
              object cxGuardarDetalle: TcxButton
                Left = 174
                Top = 291
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Guardar'
                OptionsImage.ImageIndex = 2
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxGuardarDetalleClick
              end
              object cxCancelarDetalle: TcxButton
                Left = 267
                Top = 291
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Cancelar'
                OptionsImage.ImageIndex = 3
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxCancelarDetalleClick
              end
              object btnCargarXML: TcxButton
                Left = 360
                Top = 11
                Width = 116
                Height = 72
                Caption = 'Cargar XML / PDF'
                OptionsImage.Glyph.Data = {
                  D61E0000424DD61E000000000000360000002800000038000000230000000100
                  200000000000A01E000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000001000000020000
                  0002000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000040000000E0000
                  000B000000010000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000003010102330B0B
                  20860B0B1D7B06060B5D03030141000000260000001000000005000000010000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000020E050524751616
                  CDF91616BEEF17179BDD171779CB131351B60C0C2E9307071874040409580202
                  013B000000240000001200000004000000000000000000000000000000000101
                  010B0404041A0505051F05050521040404240101012602020227020202290202
                  022B0202022C0202022D0202022D0202022D0202022D0202022D0202022C0202
                  022C02020229010101260000001E00000026000000230000001F000000190000
                  000E000000030000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000001010F25040474B50707
                  FFFF0505FFFF0B0BFFFF1212FFFF1717F9FF1818DBFB1111B3EC13138DD71414
                  66C00B0B45AA06062D9006061A7305050D5A03030442010100260303012C3030
                  288353534BAA54544EAB555553AE585859B05D5D5EB25D5D5DB35B5B5CB45C5C
                  5CB55C5C5CB55C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C5DB65C5C
                  5CB55E5E5FB6535353AA11111164000000300000002D00000029000000210000
                  0012000000030000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000020219370303B9DF0202
                  FFFF0202FBFF0202FBFF0101FFFF0101FFFF0707FFFF2F2FFFFF2424FFFF0D0D
                  FFFF1F1FFDFF2525EDFF1A1AC7F7151597E00D0D70C80B0B48A922224FB68080
                  A3F0ABABBEFFB6B6BAFFC7C7BFFFD3D3C7FFDADAD1FFDEDEDEFFE7E7E9FFECEC
                  EBFFECEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
                  EBFFEFEFEFFFE8E8E7F75F5F5E9A0000000B0000000600000008000000050000
                  0001000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000030324490404E4FE0404
                  FFFF0505FBFF0909FBFF0C0CFBFF0707FBFF1616FBFF9090F9FF5C5CFBFF0505
                  FEFF4D4DFFFF6A6AFFFF3232FFFF1111FFFF2121FFFF1515FFFF1A1AF8FF2020
                  DDFF2C2CC4FF4040AFFF5858A1FF6E6E9BFF868699FFB0B0ACFFD7D7D2FFD9D9
                  D5FFD9D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8D5FFD8D8
                  D5FFD9D9D6FFD8D8D4F8888886A2010101080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000103033F6E0101F8FF0505
                  FFFF0909FBFF0D0DFBFF1111FCFF0404FCFF3939FDFFAFAFF4FF9090F3FF5E5E
                  FCFF9595F8FFA7A7EAFF8A8AEDFF4E4EFDFF8B8BFBFF1C1CFFFF0101FFFF0000
                  FFFF0000FFFF0000FFFF0202FAFF0909E7FF3939C3FFA0A0ABFFBABBC7FF9696
                  BCFF9797BDFF9A9ABFFF9999BEFF9696BCFF9797BDFF9898BEFF9898BDFF9898
                  BDFF9797BDFF9799BCFA646480BC0C0D185101010C4B00000B4D00000B4D0000
                  0C4F00000B4E0000082F0000030D000000000000000000000000000000000000
                  00000000000000000000000000000000000001010F1D04046C9F0606FFFF0707
                  FEFF0C0CFCFF1010FCFF1414FCFF0000FCFF7070FAFF9B9BF5FFA0A0F2FFBBBB
                  F6FF8888FDFF3C3CFCFF7D7DF6FFA0A0F9FFD7D7F6FF5050FBFF1010FBFF0808
                  FBFF0606FCFF0303FCFF0101FEFF0000FFFF2121F3FF7D7EC0FF323498FF0000
                  8AFF00008AFF00008CFF00008BFF00008BFF00008CFF00008CFF00008BFF0000
                  8BFF00008AFF00008CFF000088FF02028EFF020396FF080996FF0C0C96FF0D0D
                  96FF0A0A9FFF05065ECA02021964000000000000000000000000000000000000
                  0000000000000000000000000000000000000A0A1E34343489C55959F1FF3636
                  EFFF2020F5FF1616F9FF1212FDFF0909FFFF3737F5FF7A7AE9FF7676E9FF8282
                  EEFF9F9FF1FF8989F2FFA6A6F0FF8888F8FFB0B0F1FF5959EDFF1515FBFF0B0B
                  FCFF0A0AFBFF0505FBFF0404FDFF0000FDFF2525EAFF7374BAFF0B0D96FF6E6F
                  C3FF595BBAFF090992FF13149BFF7071C3FF5052B6FF4749B2FF4446B1FF1F22
                  A3FF6C6DC2FF2123A4FF5657B9FF4142B1FF2426A6FF6E6FC3FF8D8ED0FF9092
                  D1FF7C7DCCFF30329BEC03035DAE000000000000000000000000000000000000
                  0000000000000000000000000000000000001F1F204AB2B2B0E8F3F3EEFFDCDC
                  E2FFC9C9E2FFB8B8E3FF9696E6FF7272EAFF4F4FEEFF3434F1FF1E1EF7FF1D1D
                  F8FF3737F1FF4444EEFF3333F4FF5D5DF2FF9A9AE7FF4F4FF3FF1818FCFF0F0F
                  FDFF0E0EFBFF0909FBFF0202FEFF0000FAFF3D3EE4FF9294BFFF000197FF5E60
                  C1FFF7F8FCFF4646B4FFA2A2D9FFD7D7F0FF5254BCFF7F80CCFFA1A2D9FF595B
                  BEFFF2F2FAFF6F71C6FFB1B2E1FF8587CEFF5758BBFFD3D3EDFF9D9DD8FF6F70
                  C6FF686BC5FF2B2D9DED050565AF000000000000000000000000000000000000
                  0000000000000000000000000000000000002E2E2D61DCDCD9FFF6F6F1FFEFEF
                  EAFFF7F7EDFFDDDDF0FFF1F1EFFFF2F2EEFFE6E6EDFFD7D7EEFFBEBEE9FF9999
                  E4FF7272E8FF4F4FF0FF2F2FF4FF2020F6FF1C1CF5FF1313FAFF0808FEFF0909
                  FFFF0A0AFFFF0909FCFF0000FEFF0303F6FF5858E0FFACADC9FF00009BFF0C0D
                  9FFF9091D6FFDBDBF1FFF0F1FAFF5D5EC1FF0507A0FF8385D0FFB3B4E3FF8788
                  D2FFF6F7FCFF9FA1DCFFB1B2E2FF8384CFFF5D5FC2FFC6C6EAFF4E4EB8FF0000
                  9AFF0B0BA2FF090A93EC080B6AAE000000000000000000000000000000000000
                  00000000000000000000000000000000000046464680E8E8E9FFF3F3EFFFEFEF
                  EEFFB3B3F4FF6F6FFAFFA0A0F9FFF2F2F4FFFFFFF5FFFEFEF6FFFCFCF6FFF4F4
                  F4FFE9E9F3FFDDDDF1FFCACAEEFFAFAFEBFF9090E9FF7676EAFF5454EDFF3131
                  F0FF1515F5FF0404F9FF0000FFFF0E0EF6FF7474E0FFBABBD2FF0000A2FF0000
                  A0FF282CB3FFECECF8FFC1C2EAFF2425A9FF00009DFF8082D3FFDCDCF3FFAEAF
                  E2FF9999DAFFC0C1E9FFCACAECFF8081D1FF5B5DC5FFC2C2EAFF4241B9FF0000
                  9DFF0204A6FF060999EC0A0C6FAE000000000000000000000000000000000000
                  0000000000000000000000000000090909166464649EF3F3F4FFF2F2EFFFF1F1
                  EFFFC8C8F4FF6767FBFF5C5CFBFFBDBDF9FFF9F9F9FFFFFFFAFFFDFDFBFFFFFF
                  FBFFFFFFFBFFFFFFF8FFFFFFF4FFFBFBF3FFF3F3F1FFE9E9EEFFDADAEAFFC5C5
                  E7FFAEAEE5FF9393E5FF6363E5FF5453DEFF9FA0DCFFB8BADAFF0000A8FF0203
                  AAFF9B9CDDFFD2D2EFFFEFEFF9FF6A6BCBFF0608AAFF8788D6FFFFFFFFFFBBBC
                  E8FF3335BAFFC7C8ECFFF9F9FDFF8283D5FF6062C9FFD1D1EFFF4647C1FF0000
                  A6FF0A0EAEFF0A0D9EEC0A0C73AE000000000000000000000000000000000000
                  000000000000000000000000000019191931848484BDF9F9F9FFEFEFEFFFF2F2
                  F0FFF4F4F3FFCFCFF8FF6D6DFCFF6161FDFFD9D9FBFFFFFFFCFFFFFFFDFFFEFE
                  FDFFFBFBFDFFFBFBFCFFFBFBFBFFFBFBF9FFFDFDF7FFFFFFF5FFFFFFF0FFFCFC
                  ECFFF8F8E8FFF2F2E6FFD8D8DCFFC1C1CEFFD0D0D8FFA6A7DEFF0000ABFF5355
                  C8FFE9E9F9FF5354C8FFA0A1E1FFC2C3ECFF4447C4FF8183D7FFFFFFFFFF9797
                  DEFF0103AEFF9A9BDFFFFBFBFEFF797BD5FF575ACAFFBDBDE9FF4043C3FF0000
                  ACFF0A0EB2FF0C0FA7F00C0F7EB7000000000000000000000000000000000000
                  00000000000000000000000000002A2A2A4DADADADDEFAFAFAFFEFEFEFFFF3F3
                  F4FFFAFAF5FFFFFFF8FFD1D1FBFF6A6AFFFF7F7FFEFFB9B9FFFFECECFFFFFFFF
                  FFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFAFFFFFFF7FFFFFFF5FFFFFFF2FFFCFC
                  F0FFF2F2EEFFF1F1EFFFEAEADFFFE3E3D2FFEFEFE4FFB3B4E5FF0001B3FF2F32
                  C5FF4D50CEFF0909AFFF1213B8FF4E51CDFF2428C0FF2529C0FF5659D0FF282A
                  C0FF0000B0FF2023C0FF575AD0FF3539C6FF292CC2FF4B4DCCFF2124BFFF080B
                  B7FF0E11BAFF0D11A3E30A0C6C9B000000000000000000000000000000000000
                  00000000000000000000000000003B3B3B6ADADADAFCF8F8F8FFF2F2F2FFF5F5
                  F6FFF6F6F7FFFBFBFAFFFFFFFDFFB7B7FFFF7878FFFF8B8BFFFFA6A6FFFFBFBF
                  FFFFE7E7FFFFF5F5FFFFEDEDFFFFDDDDFCFFCECEFAFFC8C8F8FFC3C3F6FFDCDC
                  F2FFF0F0EDFFF0F0EEFFDADADDFFD7D7D8FFF8F7F3FFE1E1F0FF6B6ED1FF393D
                  C6FF2E30C3FF4346C8FF3A3DC5FF3335C4FF4043C8FF3B3EC6FF2C2FC1FF393C
                  C5FF484BCAFF393CC4FD191CAAE6020586BD020584BA000083BB070A86BB0B0F
                  89BC0B0F8FC40709628B0203293D000000000000000000000000000000000000
                  000000000000000000000000000054545487EAEAEAFFF6F6F6FFF3F3F3FFF7F7
                  F7FFF9F9F9FFFCFCFCFFFFFFFFFFD9D9FFFFBDBDFFFFD9D9FFFFB7B7FFFF7878
                  FFFF8080FFFF9D9DFFFF9595FFFF7474FEFF6C6CFDFF7272FBFF7979F9FF7B7B
                  F8FFBBBBF2FFEEEEEDFFE1E1DCFFDBDBDCFFF8F8F7FFF9F9F5FFF6F6F5FFDDDE
                  EFFFDFE0F0FFE0E0F0FFE0E1F0FFDFE0F0FFDFE0F0FFDFE0F0FFDFDFF0FFDFE0
                  F0FFE1E2F1FFDCDDEAF87C7C93A8010119240001131C0102151E0102151E0102
                  16200102141D0001090D00000000000000000000000000000000000000000000
                  000000000000000000000606060E717171A4F4F4F4FFF5F5F5FFF5F5F5FFF8F8
                  F8FFFBFBFBFFFDFDFDFFFFFFFFFFE3E3FFFFABABFFFFD9D9FFFFF7F7FFFFADAD
                  FFFF6868FFFF7373FFFF7F7FFFFF7272FFFF8C8CFDFFA0A0FAFFB1B1F8FF6363
                  FBFF8D8DF7FFE1E1ECFFE6E6DAFFDFDFE0FFFAFAFAFFF5F5F4FFFCFCF6FFFFFF
                  F9FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFF
                  F8FFFFFFF9FFF7F7F2F797978F99020206080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000001818182E8E8E8EBDF9F9F9FFF3F3F3FFF6F6F6FFF9F9
                  F9FFFCFCFCFFFEFEFEFFFFFFFFFFEAEAFFFFADADFFFFA5A5FFFF8E8EFFFFA4A4
                  FFFFF2F2FFFFFFFFFFFFFFFFFFFFFEFEFFFFE8E8FCFFCCCCFAFFB4B4F9FFBDBD
                  F5FFE4E4F2FFEBEBE7FFDEDEDCFFEBEBE9FFFEFEFDFFF9F9F8FFF9F9F8FFF8F8
                  F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
                  F8FFF9F9F9FFF2F2F2F89393949F080808080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000002A2A2A4DAEAEAED6F9F9F9FFF3F3F3FFF6F6F6FFFAFA
                  FAFFFDFDFDFFFFFFFFFFFFFFFFFFEDEDFFFF6868FFFF6969FFFFD7D7FFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFAFFFFFFF6FFFFFF
                  F2FFF8F8F2FFE3E3E4FFE2E2DEFFF4F4F1FFFAFAFEFFF9F9FAFFF9F9FAFFF9F9
                  FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9FAFFF9F9
                  FAFFF9F9FBFFF1F2F4F89696949F080807080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000014343436DD0D0D0F0F9F9F9FFF4F4F4FFF7F7F7FFFBFB
                  FBFFFEFEFEFFFFFFFFFFFFFFFFFF8D8DFFFF7B7BFFFFD9D9FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF6F6F6FFF2F2
                  F3FFF7F7F5FFE5E5E2FFAAAAC4FF8284BDFF8E90C6FF8E8FC4FF8E8FC4FF8E8F
                  C4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8FC4FF8E8F
                  C4FF8C8DC3FF9394C2F88080899F060607080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000080808105F5F5F8EE6E6E6FFF8F8F8FFF4F4F4FFF8F8F8FFFBFB
                  FBFFFEFEFEFFFFFFFFFFC6C6FFFF4545FFFFABABFFFFFEFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF6F6F6FFF1F1
                  F2FFFEFEF7FFDADBDDFF5758A5FF000089FF0A0A91FF0B0A91FF0B0A91FF0B0A
                  91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A91FF0B0A
                  91FF0A0A92FF0D0D8EF81516579F010104080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000001C1C1C32818181B0F2F2F2FFFAFAFAFFF6F6F6FFF8F8F8FFFBFB
                  FBFFFEFEFEFFE0E0FFFF9393FFFF7979FFFFD5D5FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF9F9F9FFF6F6F6FFF1F1
                  F2FFFFFFF7FFC4C4D4FF3A3BA0FF000092FF000398FF000398FF000398FF0003
                  98FF000398FF000398FF000398FF000398FF000398FF000398FF000398FF0003
                  98FF000399FF000395F80102529F000004080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000003D3D3D61A2A2A2C9FCFCFCFFFBFBFBFFF7F7F7FFF7F7F6FFFCFC
                  FAFFF3F3FEFF9595FFFFCACAFFFF9191FFFFDCDCFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1
                  F2FFFFFFF4FFA8A9CBFF2021A1FF0000A0FF070AA3FF0609A3FF0609A3FF0609
                  A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609
                  A3FF0609A4FF06099FF804065A9F000005080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000002626263E8A8A8AB2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                  FFFFE0E0FFFF6666FFFF9B9BFFFFAAAAFFFFEBEBFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFBFBFBFFF7F7F7FFF4F4F4FFF2F2
                  F3FFFFFFEFFF8D8EC4FF0C0FA4FF0000A9FF090DA9FF080CA9FF080CA9FF080C
                  A9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080C
                  A9FF080CAAFF080CA5F70608609E000005080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000606060A232323366464647A8787879D949494B5B8B8B7D2DBDB
                  DBEEEBEBFCFFA2A2FFFFA2A2FFFFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F9F9FFF5F5F5FFF3F3F3FFF6F6
                  F4FFF4F4E7FF6F71BFFF0002AAFF0408B1FF0B0FB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB1FF0A0EACF8070A6EA8000005080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000A0A0A0E1B1B1B29343434454F4F
                  4E605D5D5B7B72727A988E8E9DB9C0C0BFD7E1E1DEF0F8F8F8FDFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF8F8F8FFF5F5F5FFF0F0F1FFFBFA
                  F3FFDFDFE0FF4F52C0FF0000B4FF0E12B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0F12B3F7080A6A99000106080000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000001B1B18263A3A394D5B5B5B6C707070898A8A8AA8A7A7
                  A7C0BCBCBCD1D1D1D1E3E9E9E9F5FCFCFCFFFBFBFBFFFAFAFAFFF6F6F7FFFFFF
                  F9FFC9C9CBF3393A84B703056A930B0E739A0C0E739A0C0E739A0C0E739A0C0E
                  739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E739A0C0E
                  739A0C0F749D0A0C6A9003042F43000002030000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000020202031010
                  101A2C2C2C404C4C4C636E6E6E85878787A7A5A5A5C2B8B8B8D0CACACAE0D8D8
                  D6ED7A7A719C0E0E172400000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000010101010606060B171717252F2F2F47575757786161
                  6287252520350000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OptionsImage.Layout = blGlyphTop
                TabOrder = 8
                OnClick = btnCargarXMLClick
              end
              object cxCheckViaje: TcxCheckBox
                Left = 360
                Top = 89
                Caption = 'Aplica Viaje'
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 9
                Transparent = True
                OnClick = cxCheckViajeClick
              end
              object cxGroupViaje: TcxGroupBox
                Left = 11
                Top = 117
                Caption = 'Fechas de Viaje'
                Enabled = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                TabOrder = 3
                Transparent = True
                Height = 112
                Width = 360
                object dxLayoutControl8: TdxLayoutControl
                  Left = 3
                  Top = 15
                  Width = 354
                  Height = 87
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  object cbFechaI: TcxDBDateEdit
                    Left = 72
                    Top = 38
                    DataBinding.DataField = 'FechaInicio'
                    DataBinding.DataSource = dsDoctoXML
                    ParentFont = False
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    OnEnter = EnterControl
                    OnExit = cbFechaIExit
                    OnKeyUp = GlobalKeyUp
                    Width = 81
                  end
                  object cbFechaF: TcxDBDateEdit
                    Left = 218
                    Top = 38
                    DataBinding.DataField = 'FechaFinal'
                    DataBinding.DataSource = dsDoctoXML
                    ParentFont = False
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 2
                    OnEnter = EnterControl
                    OnExit = cbFechaFExit
                    OnKeyUp = GlobalKeyUp
                    Width = 87
                  end
                  object cbPolitica: TcxDBComboBox
                    Left = 72
                    Top = 10
                    DataBinding.DataField = 'Politica'
                    DataBinding.DataSource = dsDoctoXML
                    ParentFont = False
                    Properties.Items.Strings = (
                      'Cd.de Carmen'
                      'Villa Hermosa'
                      'Cd de Mexico')
                    Properties.OnChange = cbPoliticaPropertiesChange
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    OnEnter = EnterControl
                    OnExit = cbPoliticaExit
                    OnKeyUp = GlobalKeyUp
                    Width = 234
                  end
                  object dxLayoutControl8Group_Root: TdxLayoutGroup
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem44: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'Fecha Inicio'
                    Control = cbFechaI
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem45: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignVert = avClient
                    CaptionOptions.Text = 'Fecha Final'
                    Control = cbFechaF
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem46: TdxLayoutItem
                    Parent = dxLayoutControl8Group_Root
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Politica'
                    Control = cbPolitica
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl8Group_Root
                    AlignHorz = ahClient
                    LayoutDirection = ldHorizontal
                    Index = 1
                    AutoCreated = True
                  end
                end
              end
              object edtTotal: TcxDBTextEdit
                Left = 82
                Top = 263
                DataBinding.DataField = 'Cantidad'
                DataBinding.DataSource = dsDoctoXML
                Enabled = False
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
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem1: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                CaptionOptions.Text = 'Personal'
                Control = cxDBLookupComboBox1
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                CaptionOptions.Text = 'Nota'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                CaptionOptions.Text = 'Fecha'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Reembolso'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem5: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahRight
                CaptionOptions.Visible = False
                Control = cxGuardarDetalle
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = cxCancelarDetalle
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutAutoCreatedGroup2
                LayoutDirection = ldHorizontal
                Index = 6
                AutoCreated = True
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup11
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'cxButton5'
                CaptionOptions.Visible = False
                Control = btnCargarXML
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem43: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup11
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'cxCheckBox1'
                CaptionOptions.Visible = False
                Control = cxCheckViaje
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem41: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                CaptionOptions.Text = 'cxGroupBox1'
                CaptionOptions.Visible = False
                Control = cxGroupViaje
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 3
              end
              object dxLayoutItem47: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                CaptionOptions.Text = 'Total'
                Control = edtTotal
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 5
              end
            end
          end
        end
        object PageBonos: TcxTabSheet
          Caption = 'Bonos'
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 506
            Height = 462
            Align = alClient
            Color = 14803425
            ParentBackground = False
            TabOrder = 0
            object cxGrid2: TcxGrid
              Left = 1
              Top = 1
              Width = 504
              Height = 273
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object GridBonos: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsBonos
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total'
                    Kind = skCount
                    Column = cxGridDBColumn3
                    DisplayText = 'Total'
                  end
                  item
                    Format = '$ #,00.00'
                    Kind = skSum
                    FieldName = 'Monto'
                    Column = cxGridDBColumn4
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Nombre'
                  Width = 73
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.AssignedValues.DisplayFormat = True
                  Width = 79
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'Nota'
                  Width = 79
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  DataBinding.FieldName = 'Monto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 78
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = GridBonos
              end
            end
            object dxLayoutControl3: TdxLayoutControl
              Left = 1
              Top = 274
              Width = 504
              Height = 187
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              DesignSize = (
                504
                187)
              object CbPersonasB: TcxDBLookupComboBox
                Left = 82
                Top = 11
                DataBinding.DataField = 'IdPersonal'
                DataBinding.DataSource = dsBonos
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
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object NotasB: TcxDBMemo
                Left = 82
                Top = 39
                DataBinding.DataField = 'Nota'
                DataBinding.DataSource = dsBonos
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
                Height = 44
                Width = 185
              end
              object FechaB: TcxDBDateEdit
                Left = 82
                Top = 89
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsBonos
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
                Width = 166
              end
              object MontoB: TcxDBCurrencyEdit
                Left = 82
                Top = 117
                DataBinding.DataField = 'Monto'
                DataBinding.DataSource = dsBonos
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
                Width = 121
              end
              object cxButton3: TcxButton
                Left = 87
                Top = 145
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Guardar'
                OptionsImage.ImageIndex = 2
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxGuardarDetalleClick
              end
              object cxButton4: TcxButton
                Left = 180
                Top = 145
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Cancelar'
                OptionsImage.ImageIndex = 3
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxCancelarDetalleClick
              end
              object dxLayoutGroup1: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutGroup1
                CaptionOptions.Text = 'Personal'
                Control = CbPersonasB
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem12: TdxLayoutItem
                Parent = dxLayoutGroup1
                CaptionOptions.Text = 'Nota'
                Control = NotasB
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem13: TdxLayoutItem
                Parent = dxLayoutGroup1
                CaptionOptions.Text = 'Fecha'
                Control = FechaB
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem14: TdxLayoutItem
                Parent = dxLayoutGroup1
                CaptionOptions.Text = 'Reembolso'
                Control = MontoB
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem15: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahRight
                CaptionOptions.Visible = False
                Control = cxButton3
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem16: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup3
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = cxButton4
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup1
                LayoutDirection = ldHorizontal
                Index = 4
                AutoCreated = True
              end
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Tiempo Extra'
          ImageIndex = 2
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 506
            Height = 462
            Align = alClient
            Color = 14803425
            ParentBackground = False
            TabOrder = 0
            object cxGrid3: TcxGrid
              Left = 1
              Top = 1
              Width = 504
              Height = 211
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsTiempo
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total'
                    Kind = skCount
                    Column = cxGridDBColumn7
                    DisplayText = 'Total'
                  end
                  item
                    Format = '$ #,00.00'
                    Kind = skSum
                    FieldName = 'Monto'
                    Column = cxGridDBColumn8
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                object cxGridDBColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'Nombre'
                  Width = 73
                end
                object cxGridDBColumn6: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.AssignedValues.DisplayFormat = True
                  Width = 79
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  DataBinding.FieldName = 'Nota'
                  Width = 79
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  DataBinding.FieldName = 'Monto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 78
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object dxLayoutControl4: TdxLayoutControl
              Left = 1
              Top = 212
              Width = 504
              Height = 249
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              DesignSize = (
                504
                249)
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 67
                Top = 67
                DataBinding.DataField = 'IdPersonal'
                DataBinding.DataSource = dsTiempo
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
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 145
              end
              object cxDBMemo2: TcxDBMemo
                Left = 67
                Top = 95
                DataBinding.DataField = 'Nota'
                DataBinding.DataSource = dsTiempo
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
                Height = 44
                Width = 185
              end
              object cxDBDateEdit2: TcxDBDateEdit
                Left = 67
                Top = 145
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsTiempo
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
                Width = 166
              end
              object cxDBCurrencyEdit2: TcxDBCurrencyEdit
                Left = 67
                Top = 173
                DataBinding.DataField = 'Monto'
                DataBinding.DataSource = dsTiempo
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
                Width = 121
              end
              object cxButton5: TcxButton
                Left = 189
                Top = 201
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Guardar'
                OptionsImage.ImageIndex = 2
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxGuardarDetalleClick
              end
              object cxButton6: TcxButton
                Left = 282
                Top = 201
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Cancelar'
                OptionsImage.ImageIndex = 3
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxCancelarDetalleClick
              end
              object cxDBComboBox2: TcxDBComboBox
                Left = 67
                Top = 11
                DataBinding.DataField = 'Nomina'
                DataBinding.DataSource = dsTiempo
                ParentFont = False
                Properties.Items.Strings = (
                  'Nomina RH'
                  'Nomina OP'
                  'Nomina Abordo'
                  'Tiempo Extra')
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 121
              end
              object cxDBLookupComboBox8: TcxDBLookupComboBox
                Left = 67
                Top = 39
                DataBinding.DataField = 'IdGuardia'
                DataBinding.DataSource = dsTiempo
                ParentFont = False
                Properties.KeyFieldNames = 'IdGuardiaDetalle'
                Properties.ListColumns = <
                  item
                    FieldName = 'Guardia'
                  end>
                Properties.ListSource = dsGuar
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 302
              end
              object dxLayoutGroup2: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem18: TdxLayoutItem
                Parent = dxLayoutGroup2
                CaptionOptions.Text = 'Personal'
                Control = cxDBLookupComboBox2
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem19: TdxLayoutItem
                Parent = dxLayoutGroup2
                CaptionOptions.Text = 'Nota'
                Control = cxDBMemo2
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem20: TdxLayoutItem
                Parent = dxLayoutGroup2
                CaptionOptions.Text = 'Fecha'
                Control = cxDBDateEdit2
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem21: TdxLayoutItem
                Parent = dxLayoutGroup2
                CaptionOptions.Text = 'Monto'
                Control = cxDBCurrencyEdit2
                ControlOptions.ShowBorder = False
                Index = 5
              end
              object dxLayoutItem22: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahRight
                CaptionOptions.Visible = False
                Control = cxButton5
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem23: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup5
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = cxButton6
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup2
                LayoutDirection = ldHorizontal
                Index = 6
                AutoCreated = True
              end
              object dxLayoutItem39: TdxLayoutItem
                Parent = dxLayoutGroup2
                AlignHorz = ahClient
                CaptionOptions.Text = 'Nomina'
                Control = cxDBComboBox2
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem40: TdxLayoutItem
                Parent = dxLayoutGroup2
                AlignHorz = ahClient
                CaptionOptions.Text = 'Guardia'
                Control = cxDBLookupComboBox8
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Anticipo'
          ImageIndex = 3
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 506
            Height = 462
            Align = alClient
            Color = 14803425
            ParentBackground = False
            TabOrder = 0
            object dxLayoutControl5: TdxLayoutControl
              Left = 1
              Top = 239
              Width = 504
              Height = 222
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Visible = False
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              DesignSize = (
                504
                222)
              object cxDBMemo3: TcxDBMemo
                Left = 67
                Top = 67
                DataBinding.DataField = 'Nota'
                DataBinding.DataSource = dsAnticipo
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
                Height = 44
                Width = 185
              end
              object cxDBDateEdit3: TcxDBDateEdit
                Left = 67
                Top = 117
                DataBinding.DataField = 'Fecha'
                DataBinding.DataSource = dsAnticipo
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
                Width = 166
              end
              object cxDBCurrencyEdit3: TcxDBCurrencyEdit
                Left = 67
                Top = 145
                DataBinding.DataField = 'Monto'
                DataBinding.DataSource = dsAnticipo
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
                Width = 121
              end
              object cxButton7: TcxButton
                Left = 137
                Top = 173
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Guardar'
                OptionsImage.ImageIndex = 2
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxGuardarDetalleClick
              end
              object cxButton8: TcxButton
                Left = 230
                Top = 173
                Width = 87
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Cancelar'
                OptionsImage.ImageIndex = 3
                OptionsImage.Images = connection.cxIconos16
                TabOrder = 6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                OnClick = cxCancelarDetalleClick
              end
              object cxDBComboBox1: TcxDBComboBox
                Left = 67
                Top = 11
                DataBinding.DataField = 'Nomina'
                DataBinding.DataSource = dsAnticipo
                ParentFont = False
                Properties.Items.Strings = (
                  'Nomina RH'
                  'Nomina OP'
                  'Nomina Abordo'
                  'Tiempo Extra')
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 250
              end
              object cxDBLookupComboBox7: TcxDBLookupComboBox
                Left = 67
                Top = 39
                DataBinding.DataField = 'IdGuardia'
                DataBinding.DataSource = dsAnticipo
                ParentFont = False
                Properties.KeyFieldNames = 'IdGuardiaDetalle'
                Properties.ListColumns = <
                  item
                    FieldName = 'Guardia'
                  end>
                Properties.ListSource = dsGuar
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 145
              end
              object dxLayoutGroup3: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem25: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Nota'
                Control = cxDBMemo3
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem26: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha'
                Control = cxDBDateEdit3
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutItem27: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Monto'
                Control = cxDBCurrencyEdit3
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutItem28: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahRight
                CaptionOptions.Visible = False
                Control = cxButton7
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem29: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup6
                AlignHorz = ahRight
                AlignVert = avClient
                CaptionOptions.Visible = False
                Control = cxButton8
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                LayoutDirection = ldHorizontal
                Index = 5
                AutoCreated = True
              end
              object dxLayoutItem17: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Nomina'
                Control = cxDBComboBox1
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem38: TdxLayoutItem
                Parent = dxLayoutGroup3
                CaptionOptions.Text = 'Cuadrilla'
                Control = cxDBLookupComboBox7
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
            object cxGrid4: TcxGrid
              Left = 1
              Top = 1
              Width = 504
              Height = 238
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object cxGridDBTableView2: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGrid1DBTableView1CellDblClick
                DataController.DataSource = dsAnticipo
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total'
                    Kind = skCount
                    Column = cxGridDBColumn11
                    DisplayText = 'Total'
                  end
                  item
                    Format = '$ #,00.00'
                    Kind = skSum
                    FieldName = 'Monto'
                    Column = cxGridDBColumn12
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.Indicator = True
                object cxGridDBColumn9: TcxGridDBColumn
                  DataBinding.FieldName = 'Nomina'
                  Width = 73
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'Fecha'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.AssignedValues.DisplayFormat = True
                  Width = 79
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = 'Nota'
                  Width = 79
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  DataBinding.FieldName = 'Monto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 78
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridDBTableView2
              end
            end
          end
        end
      end
      object PanelBotones: TPanel
        Left = 1
        Top = 1
        Width = 510
        Height = 48
        Align = alTop
        TabOrder = 1
        object dxLayoutControl2: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 508
          Height = 46
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxNuevoDetalle: TcxButton
            Tag = 10
            Left = 208
            Top = 10
            Width = 81
            Height = 26
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
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
            Left = 295
            Top = 10
            Width = 81
            Height = 26
            Caption = 'Editar'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxEditaDetalleClick
          end
          object cxLabel1: TcxLabel
            Left = 10
            Top = 10
            Caption = 'Detalle Dias Laborados'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHighlight
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clHotLight
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'cxNuevoDetalle'
            CaptionOptions.Visible = False
            Control = cxNuevoDetalle
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahRight
            CaptionOptions.Text = 'cxEditaDetalle'
            CaptionOptions.Visible = False
            Control = cxEditaDetalle
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignVert = avClient
            CaptionOptions.Text = '                      '
            CaptionOptions.Visible = False
            Control = cxLabel1
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 543
        Width = 510
        Height = 46
        Align = alBottom
        TabOrder = 2
        object dxLayoutControl7: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 508
          Height = 44
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object btnExpExcel: TcxButton
            Left = 364
            Top = 10
            Width = 134
            Height = 23
            Caption = 'Exportar a Excel'
            OptionsImage.Glyph.Data = {
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
            TabOrder = 0
            OnClick = btnExpExcelClick
          end
          object dxLayoutControl7Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem42: TdxLayoutItem
            Parent = dxLayoutControl7Group_Root
            AlignHorz = ahRight
            AlignVert = avClient
            CaptionOptions.Text = 'cxButton9'
            CaptionOptions.Visible = False
            Control = btnExpExcel
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 584
      Top = 1
      Width = 6
      Height = 590
      AlignSplitter = salRight
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 35
    Width = 1103
    Height = 34
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1103
      34)
    object Label1: TLabel
      Left = 23
      Top = 6
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
      Left = 185
      Top = 6
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
    object Label3: TLabel
      Left = 393
      Top = 6
      Width = 44
      Height = 15
      Caption = 'Guardia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LabelProceso: TcxLabel
      Left = 756
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
      Left = 833
      Top = 7
      Anchors = [akLeft]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 1
      Visible = False
      Width = 201
    end
    object chkContinuo: TCheckBox
      Left = 709
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Continuo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object cxCompacto: TcxCheckBox
      Left = 636
      Top = 22
      Caption = 'Compacto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
    end
    object CheckValidar: TCheckBox
      Left = 799
      Top = 14
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Validar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckCompleto: TCheckBox
      Left = 1005
      Top = 14
      Width = 88
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
      TabOrder = 5
      OnClick = CheckCompletoClick
    end
    object dFechaInicio: TcxDateEdit
      Left = 70
      Top = 5
      ParentFont = False
      TabOrder = 6
      OnExit = dFechaInicioExit
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object dFechaTermino: TcxDateEdit
      Left = 248
      Top = 5
      ParentFont = False
      TabOrder = 7
      OnExit = dFechaTerminoExit
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object CheckDescuento: TCheckBox
      Left = 902
      Top = 14
      Width = 88
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = CheckDescuentoClick
    end
    object cxGuardias: TcxLookupComboBox
      Left = 443
      Top = 4
      ParentFont = False
      Properties.KeyFieldNames = 'IdGuardia'
      Properties.ListColumns = <
        item
          FieldName = 'Guardia'
        end>
      Properties.ListSource = dsGuardias
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      TabOrder = 9
      OnEnter = EnterControl
      OnExit = cxGuardiasExit
      OnKeyUp = GlobalKeyUp
      Width = 280
    end
    object CheckAutorizar: TCheckBox
      Left = 696
      Top = 14
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Autorizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object chkColores: TCheckBox
      Left = 513
      Top = 14
      Width = 160
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Incluir c'#243'digo de colores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object panelAdd: TPanel
    Left = 161
    Top = 406
    Width = 401
    Height = 198
    TabOrder = 3
    Visible = False
    object cxGrid_cuadrilla: TcxGrid
      Left = 1
      Top = 1
      Width = 399
      Height = 155
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_cuadrilla: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEmTemporal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        object Grid_cuadrillaColumn1: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CodigoPersonal'
        end
        object colName: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'nombre'
        end
      end
      object cxGrid_cuadrillaLevel1: TcxGridLevel
        GridView = Grid_cuadrilla
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 156
      Width = 399
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        399
        41)
      object btnAddpersonal: TcxButton
        Left = 236
        Top = 6
        Width = 75
        Height = 25
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Agregar'
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddpersonalClick
      end
      object btnCancelarAdd: TcxButton
        Left = 317
        Top = 6
        Width = 75
        Height = 25
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarAddClick
      end
    end
  end
  object ds_asistencias: TDataSource
    DataSet = asistencias
    Left = 24
    Top = 360
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
    ReportOptions.LastChange = 43421.826959409720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   xCaracter : byte ;'
      '   dJornadasNormales,'
      '   dJornadasExtras : Double ;'
      '   Separador : string;'
      '   Cadena    : string;'
      '   mes, dia : string;'
      '   diasTotales : integer;'
      '   SumaTotal : double;'
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   dJornadasNormales := 0 ;'
      '   dJornadasExtras := 0 ;'
      'end;'
      ''
      
        'procedure ReporteDiarioBarcoOnBeforePrint(Sender: TfrxComponent)' +
        ';'
      'var'
      '   FecAux : tDateTime;'
      '   Resultado : boolean;'
      '   iDia, iLeft : double;'
      'begin'
      ''
      '   try'
      
        '     FecAux := StrToDate('#39'29/02/'#39'+copy(dateTostr(<fecha_final>),' +
        '7,4));'
      '     Resultado := True;'
      '   except'
      '     Resultado := False;'
      '   end;'
      ''
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      ''
      
        '    if (StrToInt(mes) =1) or (StrToInt(mes)=3) or (StrToInt(mes)' +
        '=5) or (StrToInt(mes)=7) or (StrToInt(mes)=8) or (StrToInt(mes)=' +
        '10) or (StrToInt(mes) = 12) then'
      '       diasTotales := 31;'
      ''
      '    if (StrToInt(mes)=2) then'
      '       diasTotales := 28;'
      ''
      '    if (StrToInt(mes)=2) and (Resultado =True) then'
      '       diasTotales := 29;'
      ''
      
        '    if (StrToInt(mes)=4) or (StrToInt(mes)=6) or (StrToInt(mes)=' +
        '9) or (StrToInt(mes)=11) then'
      '       diasTotales := 30;'
      ''
      '    memo100.text := '#39'1'#39' ;'
      '    memo101.text := '#39'2'#39' ;'
      '    memo102.text := '#39'3'#39' ;'
      '    memo103.text := '#39'4'#39' ;'
      '    memo104.text := '#39'5'#39' ;'
      '    memo105.text := '#39'6'#39' ;'
      '    memo106.text := '#39'7'#39' ;'
      '    memo107.text := '#39'8'#39' ;'
      '    memo108.text := '#39'9'#39' ;'
      '    memo109.text := '#39'10'#39' ;'
      '    memo110.text := '#39'11'#39' ;'
      '    memo111.text := '#39'12'#39' ;'
      '    memo112.text := '#39'13'#39' ;'
      '    memo113.text := '#39'14'#39' ;'
      '    memo114.text := '#39'15'#39' ;'
      '    memo115.text := '#39'16'#39' ;'
      '    memo116.text := '#39'17'#39' ;'
      '    memo117.text := '#39'18'#39' ;'
      '    memo118.text := '#39'19'#39' ;'
      '    memo119.text := '#39'20'#39' ;'
      '    memo120.text := '#39'21'#39' ;'
      '    memo121.text := '#39'22'#39' ;'
      '    memo122.text := '#39'23'#39' ;'
      '    memo123.text := '#39'24'#39' ;'
      '    memo124.text := '#39'25'#39' ;'
      '    memo125.text := '#39'26'#39' ;'
      '    memo126.text := '#39'27'#39' ;'
      '    memo127.text := '#39'28'#39' ;'
      '    memo128.text := '#39'29'#39' ;'
      '    memo129.text := '#39'30'#39' ;'
      ''
      '    if (StrToInt(mes) = 2) then'
      '         memo129.text := '#39#39' ;'
      ''
      '    if (StrToInt(mes) = 2)  and (Resultado =False) then'
      '        memo128.text := '#39#39' ;'
      ''
      ''
      
        '    if (StrToInt(mes) = 1) or (StrToInt(mes) = 3)  or (StrToInt(' +
        'mes) = 5)  or (StrToInt(mes) = 7)'
      
        '        or (StrToInt(mes) = 8)  or (StrToInt(mes) = 10)  or (Str' +
        'ToInt(mes) = 12) then'
      '         memo130.text := '#39'31'#39' ;'
      ''
      ''
      '    //Ahora oculta o mostrar si el mes tiene 30, 29, o 28'
      
        '    if (StrToInt(mes) = 2) or (StrToInt(mes) = 4) or (StrToInt(m' +
        'es) = 6)  or (StrToInt(mes) = 9)  or (StrToInt(mes) = 11) then'
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
      '        memo59.Width  := memo59.Width + iDia;'
      '        memo51.Width  := memo51.Width + iDia;'
      '        memo158.Width := memo158.Width + iDia;'
      ''
      '        //Salarios}'
      ''
      '        memo22.Left  := memo22.Left + iDia;'
      '        memo48.Left  := memo48.Left + iDia;'
      '        memo157.Left := memo157.Left + iDia;'
      ''
      '        iLeft := ( memo22.Left + (memo22.Width+1));'
      ''
      '        memo37.Left  := iLeft ;'
      '        memo39.Left  := iLeft ;'
      '        memo92.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo37.Width+1);'
      ''
      '        //Dia 1'
      '        memo100.Left  := iLeft ;'
      '        memo1.Left    := iLeft ;'
      '        memo156.Left  := iLeft ;'
      ''
      ''
      '        iLeft := iLeft + (memo100.Width+1);'
      ''
      '        //Dia 2'
      '        memo101.Left  := iLeft;'
      '        memo4.Left    := iLeft;'
      '        memo155.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo101.Width+1);'
      ''
      '        //Dia 3'
      '        memo102.Left  := iLeft;'
      '        memo47.Left   := iLeft;'
      '        memo154.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo102.Width+1);'
      ''
      '        //Dia 4'
      ''
      '        memo103.Left  := iLeft;'
      '        memo5.Left    := iLeft;'
      '        memo153.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo103.Width+1);'
      ''
      '        //Dia 5'
      '        memo104.Left  := iLeft;'
      '        memo7.Left    := iLeft  ;'
      '        memo152.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo104.Width+1);'
      ''
      '        //Dia 6'
      '        memo105.Left  := iLeft;'
      '        memo8.Left    := iLeft  ;'
      '        memo151.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo105.Width+1);'
      ''
      '        //Dia 7'
      '        memo106.Left  := iLeft ;'
      '        memo9.Left    := iLeft   ;'
      '        memo150.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo106.Width+1);'
      ''
      '        //Dia 8'
      ''
      '        memo107.Left  := iLeft ;'
      '        memo10.Left   := iLeft  ;'
      '        memo149.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo107.Width+1);'
      ''
      '        //Dia 9'
      '        memo108.Left  := iLeft ;'
      '        memo11.Left   := iLeft ;'
      '        memo148.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo108.Width+1);'
      ''
      '        //Dia 10'
      '        memo109.Left  := iLeft ;'
      '        memo13.Left   := iLeft  ;'
      '        memo147.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo109.Width+1);'
      ''
      '        //Dia 11'
      '        memo110.Left  := iLeft ;'
      '        memo14.Left   := iLeft  ;'
      '        memo146.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo110.Width+1);'
      ''
      '        //Dia 12'
      '        memo111.Left  := iLeft ;'
      '        memo15.Left   := iLeft  ;'
      '        memo145.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo111.Width+1);'
      ''
      '        //Dia 13'
      '        memo112.Left  := iLeft ;'
      '        memo16.Left   := iLeft  ;'
      '        memo144.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo112.Width+1);'
      ''
      '        //Dia 14'
      '        memo113.Left  := iLeft ;'
      '        memo17.Left   := iLeft  ;'
      '        memo143.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo113.Width+1);'
      ''
      '        //Dia 15'
      '        memo114.Left  := iLeft ;'
      '        memo25.Left   := iLeft  ;'
      '        memo142.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo114.Width+1);'
      ''
      '        //Dia 16'
      '        memo115.Left  := iLeft ;'
      '        memo27.Left   := iLeft  ;'
      '        memo141.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo115.Width+1);'
      ''
      '        //Dia 17'
      '        memo116.Left  := iLeft ;'
      '        memo28.Left   := iLeft  ;'
      '        memo140.Left  := iLeft ;'
      ''
      '        iLeft := iLeft + (memo116.Width+1);'
      ''
      '        //Dia 18'
      '        memo117.Left  := iLeft;'
      '        memo29.Left   := iLeft;'
      '        memo139.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo117.Width+1);'
      ''
      '        //Dia 19'
      '        memo118.Left  := iLeft ;'
      '        memo30.Left   := iLeft;'
      '        memo138.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo118.Width+1);'
      ''
      '        //Dia 20'
      '        memo119.Left  := iLeft;'
      '        memo31.Left   := iLeft;'
      '        memo137.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo119.Width+1);'
      ''
      '        //Dia 21'
      '        memo120.Left  := iLeft;'
      '        memo32.Left   := iLeft;'
      '        memo136.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo120.Width+1);'
      ''
      '        //Dia 22'
      '        memo121.Left  := iLeft;'
      '        memo33.Left   := iLeft;'
      '        memo135.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo121.Width+1);'
      ''
      '        //Dia 23'
      '        memo122.Left  := iLeft;'
      '        memo34.Left   := iLeft;'
      '        memo134.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo122.Width+1);'
      ''
      '        //Dia 24'
      '        memo123.Left  := iLeft;'
      '        memo35.Left   := iLeft;'
      '        memo133.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo123.Width+1);'
      ''
      '        //Dia 25'
      '        memo124.Left  := iLeft;'
      '        memo38.Left   := iLeft;'
      '        memo132.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo124.Width+1);'
      ''
      '        //Dia 26'
      '        memo125.Left  := iLeft;'
      '        memo40.Left   := iLeft;'
      '        memo131.Left  := iLeft;'
      ''
      '        iLeft := iLeft + (memo125.Width+1);'
      ''
      '        //Dia 27'
      '        memo126.Left  := iLeft;'
      '        memo41.Left   := iLeft;'
      '        memo99.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo126.Width+1);'
      ''
      '        //Dia 28'
      '        memo127.Left  := iLeft;'
      '        memo42.Left   := iLeft;'
      '        memo98.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo127.Width+1);'
      ''
      '        //Dia 29'
      '        memo128.Left  := iLeft;'
      '        memo43.Left   := iLeft;'
      '        memo91.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo128.Width+1);'
      ''
      '        //Dia 30'
      '        memo129.Left  := iLeft;'
      '        memo44.Left   := iLeft;'
      '        memo56.Left   := iLeft;'
      ''
      '        iLeft := iLeft + (memo129.Width+1);'
      ''
      '        if (StrToInt(mes) = 2)  and (Resultado =True) then'
      '        begin'
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        if (StrToInt(mes) = 2) and (Resultado =False) then'
      '        begin'
      '           memo128.Visible  := False;'
      '           memo43.Visible   := False;'
      '           memo91.Visible   := False;'
      ''
      '           memo129.Visible  := False;'
      '           memo44.Visible   := False;'
      '           memo56.Visible   := False;'
      '        end;'
      ''
      '        memo130.Visible:= False;'
      '        memo46.Visible := False;'
      '        memo54.Visible := False;'
      ''
      '        memo26.Left := memo26.Left - 6;'
      '        memo2.Left  := memo2.Left  - 6;'
      '        memo20.Left := memo20.Left - 6;'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  mes : string;'
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
      
        '    memo55.Text := cadena +mes+ '#39' DEL '#39'+ copy(dateTostr(<fecha_f' +
        'inal>),7,4);'
      'end;'
      ''
      ''
      'procedure Memo24OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COMPACTO> = '#39'Si'#39' then'
      '    begin'
      '       memo24.Color := $00D8D8D8 ;'
      '       memo59.Color := $00D8D8D8 ;'
      '       memo22.Color  := $00D8D8D8 ;'
      '       memo100.Color := $00D8D8D8 ;'
      '       memo101.Color := $00D8D8D8 ;'
      '       memo102.Color := $00D8D8D8 ;'
      '       memo103.Color := $00D8D8D8 ;'
      '       memo104.Color := $00D8D8D8 ;'
      '       memo105.Color := $00D8D8D8 ;'
      '       memo106.Color := $00D8D8D8 ;'
      '       memo107.Color := $00D8D8D8 ;'
      '       memo108.Color := $00D8D8D8 ;'
      '       memo109.Color := $00D8D8D8 ;'
      '       memo110.Color := $00D8D8D8 ;'
      '       memo111.Color := $00D8D8D8 ;'
      '       memo112.Color := $00D8D8D8 ;'
      '       memo113.Color := $00D8D8D8 ;'
      '       memo114.Color := $00D8D8D8 ;'
      '       memo115.Color := $00D8D8D8 ;'
      '       memo116.Color := $00D8D8D8 ;'
      '       memo117.Color := $00D8D8D8 ;'
      '       memo118.Color := $00D8D8D8 ;'
      '       memo119.Color := $00D8D8D8 ;'
      '       memo120.Color := $00D8D8D8 ;'
      '       memo121.Color := $00D8D8D8 ;'
      '       memo122.Color := $00D8D8D8 ;'
      '       memo123.Color := $00D8D8D8 ;'
      '       memo124.Color := $00D8D8D8 ;'
      '       memo125.Color := $00D8D8D8 ;'
      '       memo126.Color := $00D8D8D8 ;'
      '       memo127.Color := $00D8D8D8 ;'
      '       memo128.Color := $00D8D8D8 ;'
      '       memo129.Color := $00D8D8D8 ;'
      '       memo130.Color := $00D8D8D8 ;'
      '       memo26.Color  := $00D8D8D8 ;'
      '    end'
      '    else'
      '    begin'
      ''
      '    end;'
      'end;'
      ''
      'procedure Memo2OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '   SumaTotal := SumaTotal + (<dsGeneradorFolio."dCantTotal">*(<d' +
        'sGeneradorFolio."Salario">/diasTotales));'
      'end;'
      '  '
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial1"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo1.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial1"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo1.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial1"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo1.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial1"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo1.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial1"> = '#39'Especial' +
        #39' then           '
      '                       Memo1.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial1"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo1.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial1"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo1.Color :=$00F0F0F0'
      '                         else'
      
        '                            Memo1.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo1.Color :=clNone;                                '
      'end;'
      ''
      'procedure Memo4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial2"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo4.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial2"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo4.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial2"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo4.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial2"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo4.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial2"> = '#39'Especial' +
        #39' then           '
      '                       Memo4.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial2"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo4.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial2"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo4.Color :=$00F0F0F0'
      '                         else'
      
        '                            Memo4.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo4.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial3"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo47.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial3"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo47.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial3"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo47.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial3"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo47.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial3"> = '#39'Especial' +
        #39' then           '
      '                       Memo47.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial3"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo47.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial3"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo47.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo47.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo47.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial4"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo5.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial4"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo5.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial4"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo5.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial4"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo5.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial4"> = '#39'Especial' +
        #39' then           '
      '                       Memo5.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial4"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo5.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial4"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo5.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo5.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo5.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial5"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo7.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial5"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo7.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial5"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo7.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial5"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo7.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial5"> = '#39'Especial' +
        #39' then           '
      '                       Memo7.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial5"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo7.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial5"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo7.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo7.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo7.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo8OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial6"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo8.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial6"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo8.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial6"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo8.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial6"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo8.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial6"> = '#39'Especial' +
        #39' then           '
      '                       Memo8.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial6"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo8.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial6"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo8.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo8.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo8.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial7"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo9.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial7"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo9.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial7"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo9.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial7"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo9.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial7"> = '#39'Especial' +
        #39' then           '
      '                       Memo9.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial7"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo9.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial7"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo9.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo9.Color :=clNone;               ' +
        '                                                                ' +
        '                                     '
      '    end'
      '    else'
      '         Memo9.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin  '
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial8"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo10.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial8"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo10.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial8"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo10.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial8"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo10.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial8"> = '#39'Especial' +
        #39' then           '
      '                       Memo10.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial8"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo10.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial8"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo10.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo10.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo10.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial9"> = '#39'Justi'#39' then         ' +
        '                                         '
      '          Memo11.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial9"> = '#39'Retardo'#39' then    ' +
        '       '
      '             Memo11.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial9"> = '#39'Falta'#39' then   ' +
        '        '
      '                 Memo11.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial9"> = '#39'Descuento'#39' ' +
        'then           '
      '                    Memo11.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial9"> = '#39'Especial' +
        #39' then           '
      '                       Memo11.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial9"> = '#39'Vacac' +
        'ion'#39' then           '
      '                         Memo11.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial9"> = '#39'Fi' +
        'n'#39' then           '
      '                            Memo11.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo11.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo11.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial10"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo13.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial10"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo13.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial10"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo13.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial10"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo13.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial10"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo13.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial10"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo13.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial10"> = '#39'F' +
        'in'#39' then           '
      '                            Memo13.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo13.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo13.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial11"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo14.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial11"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo14.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial11"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo14.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial11"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo14.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial11"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo14.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial11"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo14.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial11"> = '#39'F' +
        'in'#39' then           '
      '                            Memo14.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo14.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo14.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial12"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo15.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial12"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo15.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial12"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo15.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial12"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo15.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial12"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo15.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial12"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo15.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial12"> = '#39'F' +
        'in'#39' then           '
      '                            Memo15.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo15.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo15.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial13"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo16.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial13"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo16.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial13"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo16.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial13"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo16.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial13"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo16.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial13"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo16.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial13"> = '#39'F' +
        'in'#39' then           '
      '                            Memo16.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo16.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo16.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial14"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo17.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial14"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo17.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial14"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo17.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial14"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo17.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial14"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo17.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial14"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo17.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial14"> = '#39'F' +
        'in'#39' then           '
      '                            Memo17.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo17.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo17.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial15"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo25.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial15"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo25.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial15"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo25.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial15"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo25.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial15"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo25.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial15"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo25.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial15"> = '#39'F' +
        'in'#39' then           '
      '                            Memo25.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo25.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo25.Color :=clNone;  '
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial16"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo27.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial16"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo27.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial16"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo27.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial16"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo27.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial16"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo27.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial16"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo27.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial16"> = '#39'F' +
        'in'#39' then           '
      '                            Memo27.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo27.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo27.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial17"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo28.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial17"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo28.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial17"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo28.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial17"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo28.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial17"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo28.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial17"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo28.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial17"> = '#39'F' +
        'in'#39' then           '
      '                            Memo28.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo28.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo28.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo29OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial18"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo29.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial18"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo29.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial18"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo29.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial18"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo29.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial18"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo29.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial18"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo29.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial18"> = '#39'F' +
        'in'#39' then           '
      '                            Memo29.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo29.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo29.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial19"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo30.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial19"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo30.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial19"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo30.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial19"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo30.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial19"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo30.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial19"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo30.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial19"> = '#39'F' +
        'in'#39' then           '
      '                            Memo30.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo30.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo30.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial20"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo31.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial20"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo31.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial20"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo31.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial20"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo31.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial20"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo31.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial20"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo31.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial20"> = '#39'F' +
        'in'#39' then           '
      '                            Memo31.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo31.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo31.Color :=clNone;    '
      'end;'
      ''
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial21"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo32.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial21"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo32.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial21"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo32.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial21"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo32.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial21"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo32.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial21"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo32.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial21"> = '#39'F' +
        'in'#39' then           '
      '                            Memo32.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo32.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo32.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo33OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial22"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo33.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial22"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo33.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial22"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo33.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial22"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo33.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial22"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo33.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial22"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo33.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial22"> = '#39'F' +
        'in'#39' then           '
      '                            Memo33.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo33.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo33.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial23"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo34.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial23"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo34.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial23"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo34.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial23"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo34.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial23"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo34.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial23"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo34.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial23"> = '#39'F' +
        'in'#39' then           '
      '                            Memo34.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo34.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo34.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial24"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo35.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial24"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo35.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial24"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo35.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial24"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo35.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial24"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo35.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial24"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo35.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial24"> = '#39'F' +
        'in'#39' then           '
      '                            Memo35.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo35.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo35.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial25"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo38.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial25"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo38.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial25"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo38.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial25"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo38.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial25"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo38.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial25"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo38.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial25"> = '#39'F' +
        'in'#39' then           '
      '                            Memo38.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo38.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo38.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo40OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial26"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo40.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial26"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo40.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial26"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo40.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial26"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo40.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial26"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo40.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial26"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo40.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial26"> = '#39'F' +
        'in'#39' then           '
      '                            Memo40.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo40.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo40.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial27"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo41.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial27"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo41.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial27"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo41.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial27"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo41.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial27"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo41.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial27"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo41.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial27"> = '#39'F' +
        'in'#39' then           '
      '                            Memo41.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo41.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo41.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial28"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo42.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial28"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo42.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial28"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo42.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial28"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo42.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial28"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo42.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial28"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo42.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial28"> = '#39'F' +
        'in'#39' then           '
      '                            Memo42.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo42.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo42.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo43OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial29"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo43.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial29"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo43.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial29"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo43.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial29"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo43.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial29"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo43.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial29"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo43.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial29"> = '#39'F' +
        'in'#39' then           '
      '                            Memo43.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo43.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo43.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial30"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo44.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial30"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo44.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial30"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo44.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial30"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo44.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial30"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo44.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial30"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo44.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial30"> = '#39'F' +
        'in'#39' then           '
      '                            Memo44.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo44.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo44.Color :=clNone;    '
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <COLORES> = '#39'Si'#39' then'
      '    begin                '
      
        '       if <dsGeneradorFolio."Especial31"> = '#39'Justi'#39' then        ' +
        '                                          '
      '          Memo46.Color :=$00FED3BA'
      '       else'
      
        '          if <dsGeneradorFolio."Especial31"> = '#39'Retardo'#39' then   ' +
        '        '
      '             Memo46.Color :=$00FFF4CC'
      '          else'
      
        '             if <dsGeneradorFolio."Especial31"> = '#39'Falta'#39' then  ' +
        '         '
      '                 Memo46.Color :=$0098FFFF'
      '             else                           '
      
        '                if <dsGeneradorFolio."Especial31"> = '#39'Descuento'#39 +
        ' then           '
      '                    Memo46.Color :=$009595FF'
      '                else'
      
        '                   if <dsGeneradorFolio."Especial31"> = '#39'Especia' +
        'l'#39' then           '
      '                       Memo46.Color :=$00CCFFCC'
      '                   else'
      
        '                      if <dsGeneradorFolio."Especial31"> = '#39'Vaca' +
        'cion'#39' then           '
      '                         Memo46.Color :=$00CAE4FF'
      '                      else'
      
        '                         if <dsGeneradorFolio."Especial31"> = '#39'F' +
        'in'#39' then           '
      '                            Memo46.Color :=$00F0F0F0  '
      '                         else'
      
        '                            Memo46.Color :=clNone;              ' +
        '                                                                ' +
        '                                      '
      '    end'
      '    else'
      '         Memo46.Color :=clNone;    '
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxAsistenciaGetValue
    OnReportPrint = 'no '
    Left = 104
    Top = 168
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
        DataSet = frmDiarioTurno2.dsGeneradorFolio
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
    object ReporteDiarioBarco: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 162.519645980000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        ReprintOnNewPage = True
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 35.015770000000010000
          Width = 1515.591505590000000000
          Height = 52.913405350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Top = 139.842480630000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'M.N.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1399.692974410000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1365.677226380000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1331.661478350000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1263.629982280000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1229.614234250000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1195.598486220000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1127.566990160000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1093.551242130000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1059.535494090000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.519746060000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          ShiftMode = smDontShift
          Left = 991.503998030000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.488250000000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          ShiftMode = smDontShift
          Left = 889.456753940000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          ShiftMode = smDontShift
          Left = 821.425257870000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          ShiftMode = smDontShift
          Left = 787.409509840000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          ShiftMode = smDontShift
          Left = 753.393761810000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          ShiftMode = smDontShift
          Left = 719.378013780000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          ShiftMode = smDontShift
          Left = 685.362265750000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          ShiftMode = smDontShift
          Left = 651.346517720000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 617.330769690000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          ShiftMode = smDontShift
          Left = 583.315021650000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.299273620000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.283525590000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          ShiftMode = smDontShift
          Left = 447.252029530000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Top = 139.842480630000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 254.362204724409000000
          Top = 139.842480630000000000
          Width = 65.007874020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'SUELDO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Top = 139.842480630000000000
          Width = 49.133865590000000000
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
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Top = 139.842480630000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Width = 151.181102360000000000
          Height = 41.574793390000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 1243.465370000000000000
          Width = 151.181102360000000000
          Height = 49.133853390000000000
          Visible = False
          DataField = 'bImagen'
          DataSet = frmReportePeriodo.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 35.905533780000000000
          Top = 57.133890000000010000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO DE COLORES')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 154.519790000000000000
          Top = 57.070831970000000000
          Width = 336.378170000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 566.929500000000000000
          Top = 21.456710000000000000
          Width = 336.378170000000000000
          Height = 22.677170240000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DIAS LABORADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 672.756340000000000000
          Top = 58.511771970000000000
          Width = 325.039580000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo55OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 553.701048580000000000
          Top = 58.133890000000010000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PERIODO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 51.023558580000000000
          Top = 76.590600000000000000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RETARDO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 111.606370000000000000
          Top = 76.590600000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661417320000000
          Top = 139.842610000000000000
          Width = 45.293192430000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 1421.103280000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984251969000000
          Top = 139.842610000000000000
          Width = 58.582694250000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'S. D.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 34.015770000000010000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'JUSTIFICADO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 111.496231420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16700346
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 179.196970000000000000
          Top = 98.267716540000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCUENTO')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 256.677431420000000000
          Top = 98.267716540000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 9803263
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 196.535560000000000000
          Top = 76.724409448818890000
          Width = 52.913346770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESPECIAL')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 256.629921259842600000
          Top = 76.724409450000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434828
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 325.039580000000000000
          Top = 98.267780000000000000
          Width = 71.810996770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VACACIONES')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 402.520041420000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 328.819110000000000000
          Top = 76.724409448818890000
          Width = 68.031466770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FIN SEMANA')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 402.520041420000000000
          Top = 76.724409448818890000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677172680000000000
        Top = 226.771800000000000000
        Width = 1556.410454000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frmDiarioTurno2.dsGeneradorFolio
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
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
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          OnAfterData = 'Memo2OnAfterData'
          OnBeforePrint = 'Memo2OnBeforePrint'
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario">/<' +
              'dsGeneradorFolio."DiasMes">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 515.283525589999900000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 549.299273620000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 583.315021650000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 617.330769690000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 651.346517720000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 685.362265750000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 719.378013780000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 753.393761810000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 787.409509840000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 821.425257870000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 889.456753940000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo28OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 957.488250000000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo29OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 991.503998030000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1025.519746060000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1059.535494090000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo32OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1093.551242130000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1127.566990160000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1195.598486220000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1229.614234250000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1263.629982280000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1331.661478350000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1365.677226380000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 1399.692974410000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 447.252029530000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
          Left = 254.362204720000000000
          Width = 65.007874020000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Salario"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Width = 49.133865590000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."Codigo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [dsGeneradorFolio."Nombre"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo167: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661420000000000
          Width = 45.293192430000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2n'
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
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984250000000000
          Top = 0.000129369999996243
          Width = 58.582684490000000000
          Height = 22.677165350000000000
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGeneradorFolio
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
          HAlign = haRight
          Memo.UTF8W = (
            '[<dsGeneradorFolio."SD">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 355.275820000000000000
        Width = 1556.410454000000000000
        object Memo6: TfrxMemoView
          Left = 1353.071740000000000000
          Top = 20.338590000000010000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Software No'#237'l Control de Personal *')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 1556.410454000000000000
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1480.550963040000000000
          Width = 74.614730580000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo20OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dsGeneradorFolio."dCantTotal">*(<dsGeneradorFolio."Salario' +
              '">/<dsGeneradorFolio."DiasMes">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          ShiftMode = smDontShift
          Width = 49.133865590000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1399.692974410000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1365.677226380000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1331.661478350000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1297.645730310000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1263.629982280000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1229.614234250000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1195.598486220000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1161.582738190000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1127.566990160000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1093.551242130000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1059.535494090000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1025.519746060000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 991.503998030000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 957.488250000000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          ShiftMode = smDontShift
          Left = 923.472501970000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 889.456753940000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 855.441005910000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 821.425257870000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 787.409509840000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 753.393761810000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 719.378013780000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          ShiftMode = smDontShift
          Left = 685.362265750000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 651.346517720000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 617.330769690000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          ShiftMode = smDontShift
          Left = 583.315021650000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          ShiftMode = smDontShift
          Left = 549.299273620000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          ShiftMode = smDontShift
          Left = 515.283525590000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          ShiftMode = smDontShift
          Left = 481.267777560000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          ShiftMode = smDontShift
          Left = 447.252029530000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          ShiftMode = smDontShift
          Left = 413.236281500000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          ShiftMode = smDontShift
          Left = 379.393835040000000000
          Width = 34.015748030000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          ShiftMode = smDontShift
          Left = 254.362204724409000000
          Width = 65.007874020000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 49.133890000000000000
          Width = 204.850393700000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1434.708661420000000000
          Width = 45.293192430000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."dCantTotal">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          ShiftMode = smDontShift
          Left = 320.125984251969000000
          Top = 0.000129370000024664
          Width = 58.582694250000000000
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
          Fill.BackColor = 14211288
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 0.000014650000000000
        Top = 204.094620000000000000
        Width = 1556.410454000000000000
        Condition = 'contrato."sContrato"'
        Stretched = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 184
  end
  object ds_empleados: TDataSource
    DataSet = empleados
    Left = 24
    Top = 280
  end
  object ds_folios: TDataSource
    AutoEdit = False
    DataSet = zFolios
    Left = 552
    Top = 176
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
    Left = 104
    Top = 128
  end
  object zContrato: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT sContrato,sMascara, mDescripcion FROM rd_proyectos')
    Left = 232
    Top = 320
  end
  object dsContrato: TDataSource
    DataSet = zContrato
    Left = 232
    Top = 360
  end
  object zEmbarcacion: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 232
  end
  object dsEmbarcacion: TDataSource
    DataSet = zEmbarcacion
    Left = 368
    Top = 232
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
    Left = 272
    Top = 232
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
    Left = 504
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object Guardias: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '(SELECT rg.IdGuardia,'
      
        'concat(rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FROM master_embarcac' +
        'iones AS m WHERE m.IdEmbarcacion = rg.IdEmbarcacion)) AS Guardia'
      'FROM rh_guardias AS rg where rg.Activo = '#39'Si'#39
      'order by rg.iOrdenamiento)'
      'union'
      '(Select -1,'#39'TODOS'#39')')
    Left = 24
    Top = 153
  end
  object dsGuardias: TDataSource
    DataSet = Guardias
    Left = 24
    Top = 201
  end
  object generador_diario: TUniQuery
    Connection = connection.Uconnection
    Left = 288
    Top = 441
  end
  object dsRem: TDataSource
    DataSet = Reembolso
    Left = 362
    Top = 169
  end
  object Reembolso: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre ' +
        'From rh_reembolso as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 738
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object Personal: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT IdPersonal,'
      'concat(Nombre,'#39' '#39',APaterno,'#39' '#39',AMaterno) as Nombre'
      'FROM master_personal WHERE Activo = '#39'Si'#39';')
    Left = 162
    Top = 241
  end
  object dsPersonal: TDataSource
    DataSet = Personal
    Left = 162
    Top = 281
  end
  object zBonos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre,'
      'r.* From rh_bonos as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 403
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object dsBonos: TDataSource
    DataSet = zBonos
    Left = 449
    Top = 170
  end
  object temG: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT rg.IdGuardia,'
      
        'concat(rg.IdGuardia,'#39' '#39',rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FRO' +
        'M master_embarcaciones AS m WHERE m.IdEmbarcacion = rg.IdEmbarca' +
        'cion)) AS Guardia,'
      
        'concat(rg.Guardia,'#39' '#39',(SELECT m.Embarcacion FROM master_embarcac' +
        'iones AS m WHERE m.IdEmbarcacion = rg.IdEmbarcacion)) AS Guardia' +
        '2'
      'FROM rh_guardias AS rg'
      'order by rg.iOrdenamiento asc')
    Left = 104
    Top = 393
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
    Left = 1004
    Top = 332
  end
  object DoctoXML: TUniQuery
    Connection = connection.Uconnection
    Left = 1044
    Top = 308
  end
  object dsDoctoXML: TDataSource
    DataSet = DoctoXML
    Left = 972
    Top = 324
  end
  object iconPDF_XML: TcxImageList
    FormatVersion = 1
    DesignInfo = 21234644
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
  object zTiempo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select concat(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno) as Nombre,' +
        'r.IdGuardia,'
      'r.Nomina,r.IdTiempoExtra, r.IdPersonal, '
      'r.Nota, r.Monto, r.Fecha From rh_tiempoextra as r'
      'inner join master_personal as p on r.IdPersonal = p.IdPersonal '
      'where  Date(r.Fecha) Between :FechaI and :FechaF')
    Left = 280
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        Value = nil
      end>
  end
  object dsTiempo: TDataSource
    DataSet = zTiempo
    Left = 288
    Top = 368
  end
  object zAnticipo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select * from rh_anticipo')
    Left = 627
    Top = 231
  end
  object dsAnticipo: TDataSource
    DataSet = zAnticipo
    Left = 619
    Top = 175
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
    Top = 434
  end
  object Proyecto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select sNumeroOrden,sIdFolio from  ordenesdetrabajo;')
    Left = 165
    Top = 314
  end
  object dsProyecto: TDataSource
    DataSet = Proyecto
    Left = 165
    Top = 362
  end
  object zProyec: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select v.IdProyecto'
      'from  rh_verificar_manual as v'
      'Group By v.IdProyecto;')
    Left = 231
    Top = 442
  end
  object DiasPersonal: TUniQuery
    Connection = connection.Uconnection
    Left = 23
    Top = 394
  end
  object dsDiasPersonal: TDataSource
    DataSet = DiasPersonal
    Left = 23
    Top = 434
  end
  object Ubicacion: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select  sIdPlataforma, sDescripcion, lStatus,sIdActivo '
      'from plataformas where lStatus = '#39'Activa'#39)
    Left = 103
    Top = 242
  end
  object dsUbicacion: TDataSource
    DataSet = Ubicacion
    Left = 103
    Top = 282
  end
  object Puesto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select pm.IdPuestoEmpleado,'
      'concat (mp.Nombre,'#39' '#39',es.Especialidad) as Puesto'
      'from rh_puesto_empleado as pm'
      'inner join master_puesto as mp on (mp.IdPuesto = pm.IdPuesto)'
      
        'inner join master_puesto_especialidad as es on (es.IdEspecialida' +
        'd = pm.IdEspecialidad)')
    Left = 104
    Top = 312
  end
  object dsPuesto: TDataSource
    DataSet = Puesto
    Left = 104
    Top = 352
  end
  object dsTemG: TDataSource
    DataSet = temG
    Left = 103
    Top = 434
  end
  object Empresa: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select mp.IdPersonal, mp.CodigoPersonal, '
      'concat (mp.Nombre,'#39' '#39',mp.APaterno,'#39' '#39',mp.AMaterno) as Nombre, '
      
        '(Select FK_Titulo from master_empresa as me where mp.IdEmpresa =' +
        ' me.IdEmpresa) as Empresa'
      'from master_personal as mp where mp.Activo='#39'Si'#39)
    Left = 103
    Top = 202
  end
  object dsEmpresa: TDataSource
    DataSet = Empresa
    Left = 23
    Top = 122
  end
  object zGuar: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT rg.IdGuardiaDetalle,'
      
        'concat((Select g.Guardia from rh_guardias as g where g.IdGuardia' +
        ' = rg.IdGuardia),'
      
        #39' '#39',FechaLetra(rg.FechaInicio),'#39' al '#39',FechaLetra(rg.FechaFinal))' +
        ' AS Guardia'
      'FROM rh_guardia_detalle as rg')
    Left = 1043
    Top = 225
  end
  object dsGuar: TDataSource
    DataSet = zGuar
    Left = 1003
    Top = 225
  end
  object frxMailNominas: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 163
    Top = 186
  end
  object zValidar: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT * FROM validacion_nomina')
    Left = 739
    Top = 273
  end
  object zEmTemporal: TUniQuery
    Connection = connection.Uconnection
    Left = 531
    Top = 238
  end
  object dsEmTemporal: TDataSource
    DataSet = zEmTemporal
    Left = 499
    Top = 238
  end
  object zAdd: TUniQuery
    Connection = connection.Uconnection
    Left = 873
    Top = 237
  end
  object zActualiza: TUniQuery
    Connection = connection.Uconnection
    Left = 681
    Top = 317
  end
  object mLista: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 921
    Top = 301
    object mListaCodigo: TStringField
      FieldName = 'Codigo'
    end
    object mListaNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object zVerificar: TUniQuery
    Connection = connection.Uconnection
    Left = 625
    Top = 277
  end
end
