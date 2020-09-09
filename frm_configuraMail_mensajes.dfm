object frmConfiguraMail_mensajes: TfrmConfiguraMail_mensajes
  Left = 121
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n notificaci'#243'n correo'
  ClientHeight = 575
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelOpciones: TPanel
    Left = 0
    Top = 0
    Width = 113
    Height = 575
    Align = alLeft
    TabOrder = 0
    object cxLista: TcxListView
      Left = 1
      Top = 1
      Width = 113
      Height = 573
      Align = alLeft
      Columns = <>
      IconOptions.AutoArrange = True
      Items.ItemData = {
        057C0200000C0000003100000001000000FFFFFFFF00000000FFFFFFFF000000
        000D5200650071007500690073006900630069006F006E006500730027000000
        02000000FFFFFFFF00000000FFFFFFFF00000000114F007200640065006E0065
        007300200064006500200063006F006D007000720061006A00000003000000FF
        FFFFFF00000000FFFFFFFF0000000003520049004D002200000004000000FFFF
        FFFF00000000FFFFFFFF000000000845006E0074007200610064006100730023
        00000005000000FFFFFFFF00000000FFFFFFFF0000000007530061006C006900
        6400610073002400000006000000FFFFFFFF00000000FFFFFFFF000000001141
        007600690073006F00200064006500200045006D006200610072007100750065
        000300000007000000FFFFFFFF00000000FFFFFFFF0000000019560061006C00
        69006400610063006900F3006E00200064006500200050007200650073007500
        700075006500730074006F001F00000008000000FFFFFFFF00000000FFFFFFFF
        000000001B4100750074006F00720069007A00610063006900F3006E00200064
        006500200050007200650073007500700075006500730074006F002200000009
        000000FFFFFFFF00000000FFFFFFFF0000000009520065006300650070006300
        6900F3006E00230000000A000000FFFFFFFF00000000FFFFFFFF000000000B44
        006500730065006D00620061007200710075006500250000000B000000FFFFFF
        FF00000000FFFFFFFF000000000E4D006100740065007200690061006C002000
        4E007500650076006F00800000000C000000FFFFFFFF00000000FFFFFFFF0000
        00000B53006F006C0069006300690074007500640065007300}
      LargeImages = frmrepositorio.IconosTodos32
      ParentFont = False
      RowSelect = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = clWhite
      StyleFocused.TextColor = clNone
      TabOrder = 0
      OnClick = cxListaClick
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 113
    Top = 0
    Width = 8
    Height = 575
  end
  object Panel1: TPanel
    Left = 121
    Top = 0
    Width = 888
    Height = 575
    Align = alClient
    TabOrder = 2
    object cxPageProceso: TcxPageControl
      Left = 1
      Top = 1
      Width = 886
      Height = 573
      Align = alClient
      Color = 14803425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabRechazar
      Properties.CustomButtons.Buttons = <>
      Properties.Images = frmrepositorio.IconosTodos16
      OnClick = cxPageProcesoClick
      ClientRectBottom = 571
      ClientRectLeft = 2
      ClientRectRight = 884
      ClientRectTop = 30
      object cxTabValida: TcxTabSheet
        Caption = 'Validar'
        ImageIndex = 8
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox1: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 738
            object dxLayoutControl2: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 732
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox2: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 710
                object dxLayoutControl3: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 682
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 206
                  object cxTextCorreo: TcxTextEdit
                    Left = 74
                    Top = 89
                    Enabled = False
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
                    Width = 223
                  end
                  object cxCheckOtros: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 15
                    Width = 378
                  end
                  object cxGrid_Correos: TcxGrid
                    Left = 407
                    Top = 11
                    Width = 374
                    Height = 105
                    TabOrder = 6
                    object cxViewCorreos: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxViewCorreosColumn1: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxViewCorreosColumn2: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxViewCorreosColumn3: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGrid_CorreosLevel1: TcxGridLevel
                      GridView = cxViewCorreos
                    end
                  end
                  object cxEmpleado: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
                    Properties.OnChange = cxEmpleadoPropertiesChange
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
                  object cxTextNombre: TcxTextEdit
                    Left = 74
                    Top = 60
                    Enabled = False
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
                  object cxAgregar: TcxButton
                    Left = 11
                    Top = 118
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxEliminar: TcxButton
                    Left = 246
                    Top = 118
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutControl3Group_Root: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem4: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreo
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem6: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = cxCheckOtros
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem8: TdxLayoutItem
                    Parent = dxLayoutControl3Group_Root
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid_Correos
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl3Group_Root
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem3: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleado
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem5: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombre
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem7: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup12
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxAgregar
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem13: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup12
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxEliminar
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox3: TcxGroupBox
                Left = 11
                Top = 229
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 165
                Width = 832
                object dxLayoutControl4: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 804
                  Height = 159
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitHeight = 205
                  object cxAsunto: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoValidar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensaje: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeValidar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 617
                  end
                  object cxPiePagina: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaValidar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox1: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Validar Documentos'
                    DataBinding.DataField = 'EnviarAlValidar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object ckEVRequisitor: TcxDBCheckBox
                    Left = 467
                    Top = 116
                    Caption = 'Enviar Correo a Requisitor'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 6
                    Transparent = True
                  end
                  object ckEVComprador: TcxDBCheckBox
                    Left = 11
                    Top = 141
                    Caption = 'Enviar Correo a Comprador'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Transparent = True
                  end
                  object ckEVGerencia: TcxDBCheckBox
                    Left = 467
                    Top = 141
                    Caption = 'Enviar Correo a Gerencia'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
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
                    Transparent = True
                  end
                  object ckLiderMR: TcxDBCheckBox
                    Left = 11
                    Top = 166
                    Caption = 'Enviar Correo a Lider MR.'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 5
                    Transparent = True
                  end
                  object ckCalidad: TcxDBCheckBox
                    Left = 467
                    Top = 166
                    Caption = 'Enviar Correo a Calidad'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
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
                  object dxLayoutControl4Group_Root: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    Parent = dxLayoutControl4Group_Root
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsunto
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem11: TdxLayoutItem
                    Parent = dxLayoutControl4Group_Root
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensaje
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem12: TdxLayoutItem
                    Parent = dxLayoutControl4Group_Root
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePagina
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem15: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup22
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox1
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem129: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup23
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Control = ckEVRequisitor
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl4Group_Root
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 3
                    AutoCreated = True
                  end
                  object dxLayoutItem130: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup22
                    CaptionOptions.Visible = False
                    Control = ckEVComprador
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup22: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup21
                    AlignHorz = ahClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem131: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup23
                    CaptionOptions.Visible = False
                    Control = ckEVGerencia
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup21
                    AlignHorz = ahClient
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutItem132: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup22
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Control = ckLiderMR
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem178: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup23
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Control = ckCalidad
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                end
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox2
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox3
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object PanelInferior: TPanel
            Left = 11
            Top = 495
            Width = 764
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH21: TfrmBarraH2
              Left = 583
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  OnClick = btnCancelClick
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem57: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'PanelInferior'
            CaptionOptions.Visible = False
            Control = PanelInferior
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabAutorizar: TcxTabSheet
        Caption = 'Autorizar'
        ImageIndex = 9
        object dxLayoutControl5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox4: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 438
            Width = 867
            object dxLayoutControl6: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 861
              Height = 411
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox5: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 212
                Width = 832
                object dxLayoutControl7: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 804
                  Height = 206
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitHeight = 202
                  object cxTextCorreoAutoriza: TcxTextEdit
                    Left = 110
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckAutoriza: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid1: TcxGrid
                    Left = 399
                    Top = 11
                    Width = 374
                    Height = 132
                    TabOrder = 7
                    object cxGridDBTableView1: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn1: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn2: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBTableView1Column1: TcxGridDBColumn
                        Caption = 'Centro Costo'
                        DataBinding.FieldName = 'sNumeroOrdenCentroCosto'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.KeyFieldNames = 'sNumeroOrden'
                        Properties.ListColumns = <
                          item
                            FieldName = 'sIdFolio'
                          end>
                        Properties.ListSource = dsCosto
                        Options.Editing = False
                      end
                      object cxGridDBColumn3: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel1: TcxGridLevel
                      GridView = cxGridDBTableView1
                    end
                  end
                  object cxTextNombreAutoriza: TcxTextEdit
                    Left = 110
                    Top = 64
                    Enabled = False
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
                  object cxEmpleadoAutoriza: TcxLookupComboBox
                    Left = 110
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
                    Properties.OnChange = cxEmpleadoAutorizaPropertiesChange
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
                    Width = 264
                  end
                  object cxButton1: TcxButton
                    Left = 11
                    Top = 149
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton2: TcxButton
                    Left = 238
                    Top = 149
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 6
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object lcbCentroCosto: TcxLookupComboBox
                    Left = 110
                    Top = 122
                    ParentFont = False
                    Properties.KeyFieldNames = 'sNumeroOrden'
                    Properties.ListColumns = <
                      item
                        FieldName = 'sIdFolio'
                      end
                      item
                        FieldName = 'mDescripcion'
                      end>
                    Properties.ListSource = dsCosto
                    Style.HotTrack = False
                    TabOrder = 4
                    Width = 145
                  end
                  object dxLayoutGroup1: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem17: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoAutoriza
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem18: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckAutoriza
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem20: TdxLayoutItem
                    Parent = dxLayoutGroup1
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid1
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup1
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem21: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoAutoriza
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem23: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreAutoriza
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem19: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup13
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton1
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem22: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup13
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton2
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 5
                    AutoCreated = True
                  end
                  object dxLayoutItem181: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    CaptionOptions.Text = 'Centro de Costo:'
                    Control = lcbCentroCosto
                    ControlOptions.ShowBorder = False
                    Index = 4
                  end
                end
              end
              object cxGroupBox6: TcxGroupBox
                Left = 11
                Top = 225
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 220
                Width = 832
                object dxLayoutControl8: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 804
                  Height = 214
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitHeight = 209
                  object cxAsuntoAutorizar: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoAutorizar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeAutorizar: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeAutorizar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaAutorizar: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaAutorizar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox2: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Autorizar Documentos'
                    DataBinding.DataField = 'EnviarAlAutorizar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.Alignment = taLeftJustify
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object ckEGerencia: TcxDBCheckBox
                    Left = 475
                    Top = 141
                    Caption = 'Enviar Correo a Gerencia'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
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
                    Transparent = True
                  end
                  object ckERequisitor: TcxDBCheckBox
                    Left = 475
                    Top = 116
                    Caption = 'Enviar Correo a Requisitor'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 6
                    Transparent = True
                  end
                  object ckEComprador: TcxDBCheckBox
                    Left = 11
                    Top = 141
                    Caption = 'Enviar Correo a Comprador'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Transparent = True
                  end
                  object ckELiderMR: TcxDBCheckBox
                    Left = 11
                    Top = 166
                    Caption = 'Enviar Correo a Lider MR'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 5
                    Transparent = True
                  end
                  object dxLayoutGroup2: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem24: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoAutorizar
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem25: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeAutorizar
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem26: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaAutorizar
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem27: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup9
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox2
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup2
                    AlignHorz = ahClient
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 3
                    AutoCreated = True
                  end
                  object dxLayoutItem128: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup24
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = ckEGerencia
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup20
                    AlignHorz = ahClient
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutItem109: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup24
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = ckERequisitor
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem127: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup9
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = ckEComprador
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup20
                    AlignHorz = ahClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem179: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup9
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Control = ckELiderMR
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                end
              end
              object dxLayoutGroup3: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem29: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox5
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem30: TdxLayoutItem
                Parent = dxLayoutGroup3
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox6
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel2: TPanel
            Left = 11
            Top = 495
            Width = 764
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH22: TfrmBarraH2
              Left = 583
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup4: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem31: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox4
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem16: TdxLayoutItem
            Parent = dxLayoutGroup4
            CaptionOptions.Text = 'Panel2'
            CaptionOptions.Visible = False
            Control = Panel2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabLiberar: TcxTabSheet
        Caption = 'Liberar'
        ImageIndex = 10
        object dxLayoutControl9: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox7: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl10: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox8: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl11: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoLibera: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckLibera: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid2: TcxGrid
                    Left = 378
                    Top = 11
                    Width = 374
                    Height = 105
                    TabOrder = 6
                    object cxGridDBTableView2: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn4: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn5: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn6: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel2: TcxGridLevel
                      GridView = cxGridDBTableView2
                    end
                  end
                  object cxTextNombreLibera: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxEmpleadoLibera: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                    Width = 263
                  end
                  object cxButton3: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton4: TcxButton
                    Left = 217
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup5: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem32: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoLibera
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem33: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckLibera
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem35: TdxLayoutItem
                    Parent = dxLayoutGroup5
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid2
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup5
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem38: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreLibera
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem36: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoLibera
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem34: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup14
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton3
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem37: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup14
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton4
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox9: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl12: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoLiberar: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoLiberar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeLiberar: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeLiberar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaLiberar: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaLiberar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox5: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Liberar Documentos'
                    DataBinding.DataField = 'EnviarAlLiberar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup6: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem39: TdxLayoutItem
                    Parent = dxLayoutGroup6
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoLiberar
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem40: TdxLayoutItem
                    Parent = dxLayoutGroup6
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeLiberar
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem41: TdxLayoutItem
                    Parent = dxLayoutGroup6
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaLiberar
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem43: TdxLayoutItem
                    Parent = dxLayoutGroup6
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox5
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup7: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem44: TdxLayoutItem
                Parent = dxLayoutGroup7
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox8
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem45: TdxLayoutItem
                Parent = dxLayoutGroup7
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox9
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel3: TPanel
            Left = 11
            Top = 495
            Width = 764
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH23: TfrmBarraH2
              Left = 583
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup8: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem46: TdxLayoutItem
            Parent = dxLayoutGroup8
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox7
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem42: TdxLayoutItem
            Parent = dxLayoutGroup8
            CaptionOptions.Text = 'Panel3'
            CaptionOptions.Visible = False
            Control = Panel3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabAsignarCC: TcxTabSheet
        Caption = 'Asignar CC'
        ImageIndex = 11
        object dxLayoutControl13: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox10: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl14: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox11: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl15: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoAsigna: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckAsigna: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid3: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView3: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn7: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn8: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn9: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel3: TcxGridLevel
                      GridView = cxGridDBTableView3
                    end
                  end
                  object cxEmpleadoAsigna: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreAsigna: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton5: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton6: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup9: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem47: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoAsigna
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem48: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckAsigna
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem50: TdxLayoutItem
                    Parent = dxLayoutGroup9
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid3
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup9
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem51: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoAsigna
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem53: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreAsigna
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem49: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup15
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton5
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem52: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup15
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton6
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox12: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl16: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoAsignar: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoAsignar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeAsignar: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeAsignar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaAsignar: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaAsignar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox7: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Asignar CC Documentos'
                    DataBinding.DataField = 'EnviarAlAsignar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object ckEASolicitante: TcxDBCheckBox
                    Left = 476
                    Top = 116
                    Caption = 'Enviar Correos al Solicitante'
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Transparent = True
                  end
                  object dxLayoutGroup10: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem54: TdxLayoutItem
                    Parent = dxLayoutGroup10
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoAsignar
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem55: TdxLayoutItem
                    Parent = dxLayoutGroup10
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeAsignar
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem56: TdxLayoutItem
                    Parent = dxLayoutGroup10
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaAsignar
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem58: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup25
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox7
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem180: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup25
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Control = ckEASolicitante
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup25: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup10
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 3
                    AutoCreated = True
                  end
                end
              end
              object dxLayoutGroup11: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem59: TdxLayoutItem
                Parent = dxLayoutGroup11
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox11
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem60: TdxLayoutItem
                Parent = dxLayoutGroup11
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox12
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel4: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH24: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup12: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem61: TdxLayoutItem
            Parent = dxLayoutGroup12
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox10
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutGroup12
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabPR: TcxTabSheet
        Caption = 'P. R.'
        ImageIndex = 12
        object dxLayoutControl31: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox23: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl32: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox24: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl33: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 203
                  object cxTextCorreoPR: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckPR: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid7: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView7: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn19: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn20: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn21: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel7: TcxGridLevel
                      GridView = cxGridDBTableView7
                    end
                  end
                  object cxEmpleadoPR: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombrePR: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton13: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton14: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup25: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem110: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup11
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoPR
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem111: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup11
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckPR
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem113: TdxLayoutItem
                    Parent = dxLayoutGroup25
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid7
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup25
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem114: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup11
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoPR
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem116: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup11
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombrePR
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem112: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup16
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton13
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem115: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup16
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton14
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup11
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox25: TcxGroupBox
                Left = 11
                Top = 226
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 170
                Width = 839
                object dxLayoutControl34: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 811
                  Height = 164
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 208
                  object cxAsuntoPR: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoGenerarPR'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajePR: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeGenerarPR'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 583
                  end
                  object cxPiePaginaPR: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaGenerarPR'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox10: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Generar P.R.'
                    DataBinding.DataField = 'EnviarAlGenerarPR'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup26: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem117: TdxLayoutItem
                    Parent = dxLayoutGroup26
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoPR
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem118: TdxLayoutItem
                    Parent = dxLayoutGroup26
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajePR
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem119: TdxLayoutItem
                    Parent = dxLayoutGroup26
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaPR
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem120: TdxLayoutItem
                    Parent = dxLayoutGroup26
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox10
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup29: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem121: TdxLayoutItem
                Parent = dxLayoutGroup29
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox24
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem122: TdxLayoutItem
                Parent = dxLayoutGroup29
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox25
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel9: TPanel
            Left = 11
            Top = 495
            Width = 764
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH29: TfrmBarraH2
              Left = 583
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup30: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem125: TdxLayoutItem
            Parent = dxLayoutGroup30
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox23
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem126: TdxLayoutItem
            Parent = dxLayoutGroup30
            CaptionOptions.Text = 'Panel5'
            CaptionOptions.Visible = False
            Control = Panel9
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabComprar: TcxTabSheet
        Caption = 'P.O.'
        ImageIndex = 12
        object dxLayoutControl17: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox13: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl18: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox14: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl19: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoCompra: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckCompra: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid4: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView4: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn10: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn11: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn12: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel4: TcxGridLevel
                      GridView = cxGridDBTableView4
                    end
                  end
                  object cxEmpleadoCompra: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreCompra: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton7: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton8: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup13: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem62: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoCompra
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem63: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckCompra
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem65: TdxLayoutItem
                    Parent = dxLayoutGroup13
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid4
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup13
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem66: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoCompra
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem68: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreCompra
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem64: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton7
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem67: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup17
                    AlignHorz = ahRight
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton8
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup10
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox15: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl20: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoComprar: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoComprar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeComprar: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeComprar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaComprar: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaComprar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox9: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Comprar Documentos'
                    DataBinding.DataField = 'EnviarAlComprar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup14: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem69: TdxLayoutItem
                    Parent = dxLayoutGroup14
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoComprar
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem70: TdxLayoutItem
                    Parent = dxLayoutGroup14
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeComprar
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem71: TdxLayoutItem
                    Parent = dxLayoutGroup14
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaComprar
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem73: TdxLayoutItem
                    Parent = dxLayoutGroup14
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox9
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup15: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem74: TdxLayoutItem
                Parent = dxLayoutGroup15
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox14
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem75: TdxLayoutItem
                Parent = dxLayoutGroup15
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox15
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel5: TPanel
            Left = 11
            Top = 495
            Width = 764
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH25: TfrmBarraH2
              Left = 583
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup16: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem76: TdxLayoutItem
            Parent = dxLayoutGroup16
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox13
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem28: TdxLayoutItem
            Parent = dxLayoutGroup16
            CaptionOptions.Text = 'Panel5'
            CaptionOptions.Visible = False
            Control = Panel5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabRechazar: TcxTabSheet
        Caption = 'Rechazar'
        ImageIndex = 13
        object dxLayoutControl21: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox16: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl22: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox17: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl23: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoRechaza: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckRechaza: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid5: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView5: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn13: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn14: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn15: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel5: TcxGridLevel
                      GridView = cxGridDBTableView5
                    end
                  end
                  object cxEmpleadoRechaza: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreRechaza: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton9: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton10: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup17: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem77: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoRechaza
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem78: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckRechaza
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem80: TdxLayoutItem
                    Parent = dxLayoutGroup17
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid5
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup17
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem81: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoRechaza
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem83: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreRechaza
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem79: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup18
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton9
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem82: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup18
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton10
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox18: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl24: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoRechaza: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoRechazar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeRechaza: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeRechazar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaRechaza: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaRechazar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox3: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Rechazar Documentos'
                    DataBinding.DataField = 'EnviarAlRechazar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object cxDBCheckBox6: TcxDBCheckBox
                    Left = 479
                    Top = 116
                    Caption = 'Enviar Correo a Requisitor'
                    DataBinding.DataField = 'EnviarAlRechazarReq'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Transparent = True
                  end
                  object dxLayoutGroup18: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem84: TdxLayoutItem
                    Parent = dxLayoutGroup18
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoRechaza
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem85: TdxLayoutItem
                    Parent = dxLayoutGroup18
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeRechaza
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem86: TdxLayoutItem
                    Parent = dxLayoutGroup18
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaRechaza
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem87: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox3
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup18
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 3
                    AutoCreated = True
                  end
                  object dxLayoutItem72: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = cxDBCheckBox6
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                end
              end
              object dxLayoutGroup19: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem88: TdxLayoutItem
                Parent = dxLayoutGroup19
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox17
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem89: TdxLayoutItem
                Parent = dxLayoutGroup19
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox18
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel6: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH26: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup20: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem90: TdxLayoutItem
            Parent = dxLayoutGroup20
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox16
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem91: TdxLayoutItem
            Parent = dxLayoutGroup20
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabCancelar: TcxTabSheet
        Caption = 'Cancelar'
        ImageIndex = 14
        object dxLayoutControl25: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox19: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl26: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox20: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl27: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoCancela: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckCancela: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid6: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView6: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn16: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn17: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn18: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel6: TcxGridLevel
                      GridView = cxGridDBTableView6
                    end
                  end
                  object cxEmpleadoCancela: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreCancela: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton11: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton12: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup21: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem92: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoCancela
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem93: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckCancela
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem95: TdxLayoutItem
                    Parent = dxLayoutGroup21
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid6
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup21
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem96: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoCancela
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem98: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreCancela
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem94: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup19
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton11
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem97: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup19
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton12
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox21: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl28: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoCancela: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoCancelar'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeCancela: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeCancelar'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaCancela: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaCancelar'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox4: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Cancelar Documentos'
                    DataBinding.DataField = 'EnviarAlCancelar'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object cxDBCheckBox8: TcxDBCheckBox
                    Left = 478
                    Top = 116
                    Caption = 'Enviar Correo a Requisitor'
                    DataBinding.DataField = 'EnviarAlCancelarReq'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Transparent = True
                  end
                  object dxLayoutGroup22: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem99: TdxLayoutItem
                    Parent = dxLayoutGroup22
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoCancela
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem100: TdxLayoutItem
                    Parent = dxLayoutGroup22
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeCancela
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem101: TdxLayoutItem
                    Parent = dxLayoutGroup22
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaCancela
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem102: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup7
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox4
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem107: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup7
                    AlignHorz = ahClient
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = cxDBCheckBox8
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup22
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 3
                    AutoCreated = True
                  end
                end
              end
              object dxLayoutGroup23: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem103: TdxLayoutItem
                Parent = dxLayoutGroup23
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox20
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem104: TdxLayoutItem
                Parent = dxLayoutGroup23
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox21
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel7: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH27: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup24: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem105: TdxLayoutItem
            Parent = dxLayoutGroup24
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox19
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem106: TdxLayoutItem
            Parent = dxLayoutGroup24
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabNotasGenerales: TcxTabSheet
        Caption = 'Notas Generales'
        ImageIndex = 15
        object dxLayoutControl29: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox22: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Notas Generales'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 374
            Width = 721
            object dxLayoutControl30: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 715
              Height = 347
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxNotasGenerales: TcxDBMemo
                Left = 114
                Top = 11
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
                Height = 238
                Width = 635
              end
              object dxLayoutGroup27: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem108: TdxLayoutItem
                Parent = dxLayoutGroup27
                CaptionOptions.Text = 'Notas Generales:'
                Control = cxNotasGenerales
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object Panel8: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH28: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup28: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem123: TdxLayoutItem
            Parent = dxLayoutGroup28
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox22
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem124: TdxLayoutItem
            Parent = dxLayoutGroup28
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel8
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabRechazarMateriales: TcxTabSheet
        Caption = 'Rechazar Materiales'
        ImageIndex = 9
        object dxLayoutControl35: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox26: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl36: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox27: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl37: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoRechazarMateriales: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckRechazarMateriales: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid8: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView8: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn22: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn23: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn24: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel8: TcxGridLevel
                      GridView = cxGridDBTableView8
                    end
                  end
                  object cxEmpleadoRechazarMateriales: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreRechazarMateriales: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton15: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton16: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup31: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem133: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup26
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem134: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup26
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem135: TdxLayoutItem
                    Parent = dxLayoutGroup31
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid8
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup26: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup31
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem136: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup26
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem137: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup26
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem138: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup27
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton15
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem139: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup27
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton16
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup27: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup26
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox28: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl38: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoRechazarMateriales: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoRechazarMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeRechazarMateriales: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeRechazarMateriales'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaRechazarMateriales: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaRechazarMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox11: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Rechazar Materiales'
                    DataBinding.DataField = 'EnviarAlRechazarMateriales'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup32: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem140: TdxLayoutItem
                    Parent = dxLayoutGroup32
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem141: TdxLayoutItem
                    Parent = dxLayoutGroup32
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem142: TdxLayoutItem
                    Parent = dxLayoutGroup32
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaRechazarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem143: TdxLayoutItem
                    Parent = dxLayoutGroup32
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox11
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup33: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem145: TdxLayoutItem
                Parent = dxLayoutGroup33
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox27
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem146: TdxLayoutItem
                Parent = dxLayoutGroup33
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox28
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel10: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH210: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup34: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem147: TdxLayoutItem
            Parent = dxLayoutGroup34
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox26
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem148: TdxLayoutItem
            Parent = dxLayoutGroup34
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel10
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabCondicionarMateriales: TcxTabSheet
        Caption = 'Condicionar Materiales'
        ImageIndex = 10
        object dxLayoutControl39: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox29: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl40: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox30: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl41: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoCondicionarMateriales: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckCondicionarMateriales: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid9: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView9: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn25: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn26: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn27: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel9: TcxGridLevel
                      GridView = cxGridDBTableView9
                    end
                  end
                  object cxEmpleadoCondicionarMateriales: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreCondicionarMateriales: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton17: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton18: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup35: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem144: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup28
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem149: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup28
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem150: TdxLayoutItem
                    Parent = dxLayoutGroup35
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid9
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup35
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem151: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup28
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem152: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup28
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem153: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup29
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton17
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem154: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup29
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton18
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup29: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup28
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox31: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl42: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoCondicionarMateriales: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoCondicionarMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeCondicionarMateriales: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeCondicionarMateriales'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaCondicionarMateriales: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaCondicionarMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox12: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Condicionar Materiales'
                    DataBinding.DataField = 'EnviarAlCondicionarMateriales'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup36: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem155: TdxLayoutItem
                    Parent = dxLayoutGroup36
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem156: TdxLayoutItem
                    Parent = dxLayoutGroup36
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem157: TdxLayoutItem
                    Parent = dxLayoutGroup36
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaCondicionarMateriales
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem158: TdxLayoutItem
                    Parent = dxLayoutGroup36
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Control = cxDBCheckBox12
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup37: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem159: TdxLayoutItem
                Parent = dxLayoutGroup37
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox30
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem160: TdxLayoutItem
                Parent = dxLayoutGroup37
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox31
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel11: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH211: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup38: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem161: TdxLayoutItem
            Parent = dxLayoutGroup38
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox29
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem162: TdxLayoutItem
            Parent = dxLayoutGroup38
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel11
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabMateriales: TcxTabSheet
        Caption = 'Materiales'
        ImageIndex = 1
        object dxLayoutControl43: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox32: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl44: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox33: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl45: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxTextCorreoMateriales: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckMateriales: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid10: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView10: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn28: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn29: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn30: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel10: TcxGridLevel
                      GridView = cxGridDBTableView10
                    end
                  end
                  object cxEmpleadoMateriales: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxTextNombreMateriales: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object cxButton19: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object cxButton20: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup39: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem163: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup30
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxTextCorreoMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem164: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup30
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckMateriales
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem165: TdxLayoutItem
                    Parent = dxLayoutGroup39
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid10
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup30: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup39
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem166: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup30
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoMateriales
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem167: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup30
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxTextNombreMateriales
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem168: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup31
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton19
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem169: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup31
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = cxButton20
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup31: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup30
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox34: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl46: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoMaterialesServicio: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoCrearMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeMaterialesServicio: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeCrearMateriales'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaMaterialesServicio: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaCrearMateriales'
                    DataBinding.DataSource = ds_datos
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
                  object dxLayoutGroup40: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem170: TdxLayoutItem
                    Parent = dxLayoutGroup40
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoMaterialesServicio
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem171: TdxLayoutItem
                    Parent = dxLayoutGroup40
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeMaterialesServicio
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem172: TdxLayoutItem
                    Parent = dxLayoutGroup40
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaMaterialesServicio
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                end
              end
              object dxLayoutGroup41: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem174: TdxLayoutItem
                Parent = dxLayoutGroup41
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox33
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem175: TdxLayoutItem
                Parent = dxLayoutGroup41
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox34
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel12: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH212: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup42: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem176: TdxLayoutItem
            Parent = dxLayoutGroup42
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox32
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem177: TdxLayoutItem
            Parent = dxLayoutGroup42
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel12
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabServicio: TcxTabSheet
        Caption = 'Servicio'
        ImageIndex = 1
        object dxLayoutControl47: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 882
          Height = 541
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxGroupBox35: TcxGroupBox
            Left = 11
            Top = 11
            Caption = 'Detalle de configuraci'#243'n'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 382
            Width = 777
            object dxLayoutControl48: TdxLayoutControl
              Left = 3
              Top = 17
              Width = 771
              Height = 355
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              ExplicitWidth = 854
              ExplicitHeight = 451
              object cxGroupBox36: TcxGroupBox
                Left = 11
                Top = 11
                Alignment = alLeftBottom
                Caption = 'Destinatarios'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                Height = 166
                Width = 732
                object dxLayoutControl49: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 160
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 213
                  object cxCorreoServicio: TcxTextEdit
                    Left = 74
                    Top = 93
                    Enabled = False
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
                    Width = 223
                  end
                  object ckServicio: TcxCheckBox
                    Left = 11
                    Top = 39
                    AutoSize = False
                    Caption = 'Otros'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Transparent = True
                    OnClick = cxCheckOtrosClick
                    Height = 19
                    Width = 159
                  end
                  object cxGrid11: TcxGrid
                    Left = 372
                    Top = 11
                    Width = 374
                    Height = 131
                    TabOrder = 6
                    object cxGridDBTableView11: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      DataController.DataSource = ds_destino
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnsQuickCustomization = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Indicator = True
                      object cxGridDBColumn31: TcxGridDBColumn
                        DataBinding.FieldName = 'Nombre'
                        Options.Editing = False
                        Width = 100
                      end
                      object cxGridDBColumn32: TcxGridDBColumn
                        Caption = 'Correo'
                        DataBinding.FieldName = 'Mail'
                        Options.Editing = False
                        Width = 138
                      end
                      object cxGridDBColumn33: TcxGridDBColumn
                        Caption = 'Estado'
                        DataBinding.FieldName = 'Activo'
                        Width = 63
                      end
                    end
                    object cxGridLevel11: TcxGridLevel
                      GridView = cxGridDBTableView11
                    end
                  end
                  object cxEmpleadoServicio: TcxLookupComboBox
                    Left = 74
                    Top = 11
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdPersonal'
                    Properties.ListColumns = <
                      item
                        Width = 100
                        FieldName = 'NombreCompleto'
                      end
                      item
                        Width = 50
                        FieldName = 'Empresa'
                      end>
                    Properties.ListSource = ds_empleado
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
                  object cxNombreServicio: TcxTextEdit
                    Left = 74
                    Top = 64
                    Enabled = False
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
                  object btnAgrega: TcxButton
                    Left = 11
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Agregar'
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxAgregarClick
                  end
                  object btnImprime: TcxButton
                    Left = 211
                    Top = 122
                    Width = 155
                    Height = 25
                    Caption = 'Eliminar'
                    OptionsImage.ImageIndex = 4
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    OnClick = cxEliminarClick
                  end
                  object dxLayoutGroup43: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem183: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup33
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Correo'
                    Control = cxCorreoServicio
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 3
                  end
                  object dxLayoutItem184: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup33
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Otros'
                    CaptionOptions.Visible = False
                    Control = ckServicio
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem185: TdxLayoutItem
                    Parent = dxLayoutGroup43
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Control = cxGrid11
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup33: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup43
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem186: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup33
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Empleado'
                    Control = cxEmpleadoServicio
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem187: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup33
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'Nombre'
                    Control = cxNombreServicio
                    ControlOptions.ShowBorder = False
                    Enabled = False
                    Index = 2
                  end
                  object dxLayoutItem188: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup34
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnAgrega
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem189: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup34
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnImprime
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup34: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup33
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 4
                    AutoCreated = True
                  end
                end
              end
              object cxGroupBox37: TcxGroupBox
                Left = 11
                Top = 236
                Alignment = alLeftBottom
                Caption = 'Contenido'
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                Style.Color = 14803425
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Height = 154
                Width = 732
                object dxLayoutControl50: TdxLayoutControl
                  Left = 18
                  Top = 3
                  Width = 704
                  Height = 148
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ExplicitWidth = 804
                  ExplicitHeight = 198
                  object cxAsuntoServicio: TcxDBTextEdit
                    Left = 93
                    Top = 11
                    DataBinding.DataField = 'AsuntoServicio'
                    DataBinding.DataSource = ds_datos
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
                  object cxMensajeServicio: TcxDBMemo
                    Left = 93
                    Top = 40
                    DataBinding.DataField = 'MensajeServicio'
                    DataBinding.DataSource = ds_datos
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
                    Height = 41
                    Width = 600
                  end
                  object cxPiePaginaServicio: TcxDBTextEdit
                    Left = 93
                    Top = 87
                    DataBinding.DataField = 'PiePaginaServicio'
                    DataBinding.DataSource = ds_datos
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
                  object cxDBCheckBox14: TcxDBCheckBox
                    Left = 11
                    Top = 116
                    Caption = 'Enviar Correos al Rechazar Materiales'
                    DataBinding.DataField = 'EnviarAlRechazarMateriales'
                    DataBinding.DataSource = ds_datos
                    ParentFont = False
                    Properties.DisplayChecked = 'Si'
                    Properties.DisplayUnchecked = 'No'
                    Properties.ValueChecked = 'Si'
                    Properties.ValueUnchecked = 'No'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Transparent = True
                  end
                  object dxLayoutGroup44: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem190: TdxLayoutItem
                    Parent = dxLayoutGroup44
                    CaptionOptions.Text = 'Asunto'
                    Control = cxAsuntoServicio
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem191: TdxLayoutItem
                    Parent = dxLayoutGroup44
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Mensaje'
                    Control = cxMensajeServicio
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem192: TdxLayoutItem
                    Parent = dxLayoutGroup44
                    CaptionOptions.Text = 'Pie de pagina'
                    Control = cxPiePaginaServicio
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem193: TdxLayoutItem
                    Parent = dxLayoutGroup44
                    AlignHorz = ahClient
                    AlignVert = avTop
                    CaptionOptions.Text = 'cxDBCheckBox1'
                    CaptionOptions.Visible = False
                    Visible = False
                    Control = cxDBCheckBox14
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutGroup45: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem194: TdxLayoutItem
                Parent = dxLayoutGroup45
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox2'
                CaptionOptions.Visible = False
                Control = cxGroupBox36
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem195: TdxLayoutItem
                Parent = dxLayoutGroup45
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxGroupBox3'
                CaptionOptions.Visible = False
                Control = cxGroupBox37
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object Panel13: TPanel
            Left = 11
            Top = 495
            Width = 744
            Height = 35
            Color = 14803425
            ParentBackground = False
            TabOrder = 1
            inline frmBarraH213: TfrmBarraH2
              Left = 563
              Top = 1
              Width = 180
              Height = 33
              Align = alRight
              TabOrder = 0
              ExplicitLeft = 679
              ExplicitTop = 1
              ExplicitHeight = 33
              inherited Panel1: TPanel
                Left = 4
                Width = 176
                Height = 33
                Align = alRight
                AutoSize = True
                ExplicitLeft = 4
                ExplicitWidth = 176
                ExplicitHeight = 33
                inherited btnPost: TcxButton
                  Left = 1
                  Top = 1
                  Height = 31
                  Align = alRight
                  OnClick = btnPostClick
                  ExplicitLeft = 1
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
                inherited btnCancel: TcxButton
                  Left = 88
                  Top = 1
                  Height = 31
                  Align = alRight
                  Visible = False
                  ExplicitLeft = 88
                  ExplicitTop = 1
                  ExplicitHeight = 31
                end
              end
            end
          end
          object dxLayoutGroup46: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem196: TdxLayoutItem
            Parent = dxLayoutGroup46
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox35
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem197: TdxLayoutItem
            Parent = dxLayoutGroup46
            CaptionOptions.Text = 'Panel4'
            CaptionOptions.Visible = False
            Control = Panel13
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  object ds_datos: TDataSource
    DataSet = zqDatos
    Left = 566
    Top = 208
  end
  object ds_salida: TDataSource
    AutoEdit = False
    DataSet = QrySalida
    Left = 832
    Top = 72
  end
  object zqDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 616
    Top = 248
  end
  object QrySalida: TUniQuery
    Connection = connection.Uconnection
    Left = 784
    Top = 176
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 386
    Top = 258
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 588
    Top = 41
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 856
    Top = 336
  end
  object zEmpleado: TUniQuery
    Connection = connection.Uconnection
    Left = 320
    Top = 264
  end
  object zValida: TUniQuery
    Connection = connection.Uconnection
    Left = 296
    Top = 264
  end
  object zConfigMail: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 729
    Top = 240
  end
  object ds_empleado: TDataSource
    DataSet = zEmpleado
    Left = 318
    Top = 168
  end
  object ds_destino: TDataSource
    DataSet = zDestino
    Left = 558
    Top = 160
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 664
    Top = 232
  end
  object dsCosto: TDataSource
    DataSet = zCosto
    Left = 734
    Top = 82
  end
  object zCosto: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from segmentos')
    Left = 678
    Top = 82
  end
end
