object frmUsuarios: TfrmUsuarios
  Left = 177
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Usuarios'
  ClientHeight = 525
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grid_usuarios: TcxGrid
    Left = 0
    Top = 35
    Width = 1172
    Height = 178
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxViewUsuarios: TcxGridDBTableView
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
      DataController.DataSource = ds_usuarios
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.TranslateBetween = True
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Click Aqui para Definir un Filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object Grid__usuarios1: TcxGridDBColumn
        Caption = 'Usuario'
        DataBinding.FieldName = 'sIdUsuario'
        Width = 107
      end
      object Grid__camNombre: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'sNombre'
        Width = 226
      end
      object Grid__camarea: TcxGridDBColumn
        Caption = 'Area'
        DataBinding.FieldName = 'IdDepartamento'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'IdDepartamento'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = ds_deptos
        Width = 263
      end
      object Grid__campuesto: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'sPuesto'
        Width = 219
      end
      object cxViewUsuariosColumn1: TcxGridDBColumn
        Caption = 'Perfil'
        DataBinding.FieldName = 'sIdGrupo'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'sIdGrupo'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = ds_grupos
        Width = 208
      end
      object Grid__camActivo: TcxGridDBColumn
        Caption = 'Correo'
        DataBinding.FieldName = 'sMail'
        Visible = False
        Width = 167
      end
      object Grid__camIp: TcxGridDBColumn
        Caption = 'Ip'
        DataBinding.FieldName = 'sIp'
        Visible = False
        Width = 103
      end
      object Grid__camAutoriza: TcxGridDBColumn
        Caption = 'Acesso'
        DataBinding.FieldName = 'lAcceso'
        Width = 75
      end
    end
    object grid_usuariosLevel1: TcxGridLevel
      GridView = cxViewUsuarios
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 213
    Width = 1172
    Height = 6
    AlignSplitter = salBottom
  end
  object cxPageUsuarios: TcxPageControl
    Left = 0
    Top = 219
    Width = 1172
    Height = 306
    Align = alBottom
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 304
    ClientRectLeft = 2
    ClientRectRight = 1170
    ClientRectTop = 2
    object cxTabSheet1: TcxTabSheet
      Caption = 'Datos Generales'
      ImageIndex = 0
      TabVisible = False
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1168
        Height = 302
        Align = alClient
        TabOrder = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 1166
          Height = 265
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object tsIdUsuario: TcxDBTextEdit
            Left = 84
            Top = 11
            DataBinding.DataField = 'sIdUsuario'
            DataBinding.DataSource = ds_usuarios
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
            Width = 33
          end
          object tsNombre: TcxDBTextEdit
            Left = 84
            Top = 69
            DataBinding.DataField = 'sNombre'
            DataBinding.DataSource = ds_usuarios
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
            Width = 377
          end
          object tsCorreo: TcxDBTextEdit
            Left = 84
            Top = 127
            DataBinding.DataField = 'sMail'
            DataBinding.DataSource = ds_usuarios
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
            Width = 334
          end
          object tsIdDepartamento: TcxDBLookupComboBox
            Left = 84
            Top = 156
            DataBinding.DataField = 'IdDepartamento'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.KeyFieldNames = 'IdDepartamento'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = ds_deptos
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
            Width = 145
          end
          object tsPuesto: TcxDBTextEdit
            Left = 84
            Top = 185
            DataBinding.DataField = 'sPuesto'
            DataBinding.DataSource = ds_usuarios
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
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object tsIdGrupo: TcxDBLookupComboBox
            Left = 84
            Top = 214
            DataBinding.DataField = 'sIdGrupo'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.KeyFieldNames = 'sIdGrupo'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListSource = ds_grupos
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 145
          end
          object tlActivo: TcxDBComboBox
            Left = 261
            Top = 245
            DataBinding.DataField = 'lActivo'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.Items.Strings = (
              'Si'
              'No')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 11
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object DBCheckBox5: TcxDBCheckBox
            Left = 472
            Top = 11
            Caption = 'Asigna Automaticamente Proyectos'
            DataBinding.DataField = 'lAsignaFrentes'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
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
          end
          object cxGroupBox1: TcxGroupBox
            Left = 695
            Top = 11
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = 14803425
            TabOrder = 12
            Height = 198
            Width = 267
            object dxLayoutControl2: TdxLayoutControl
              Left = 3
              Top = 22
              Width = 261
              Height = 173
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 10
                Top = 10
                Caption = 'Ajusta Cantidad de Material.'
                DataBinding.DataField = 'lRealizaAjustes'
                DataBinding.DataSource = ds_usuarios
                ParentFont = False
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Transparent = True
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
              end
              object tspasword: TcxDBTextEdit
                Left = 116
                Top = 35
                DataBinding.DataField = 'sPasswordEspecial'
                DataBinding.DataSource = ds_usuarios
                ParentFont = False
                Properties.EchoMode = eemPassword
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 121
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                CaptionOptions.Text = 'cxDBCheckBox1'
                CaptionOptions.Visible = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                CaptionOptions.Text = 'Password Especial:'
                Control = tspasword
                ControlOptions.ShowBorder = False
                Index = 1
              end
            end
          end
          object tsPassword: TcxDBTextEdit
            Left = 84
            Top = 40
            DataBinding.DataField = 'sPassword'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.EchoMode = eemPassword
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
            Width = 212
          end
          object dxDBToggleSwitch1: TdxDBToggleSwitch
            Left = 11
            Top = 245
            Caption = 'Aplicar Mantenimiento'
            DataBinding.DataField = 'AplicarMantenimiento'
            DataBinding.DataSource = ds_usuarios
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Properties.DisplayChecked = 'Si'
            Properties.DisplayUnchecked = 'No'
            Properties.StateIndicator.Kind = sikText
            Properties.StateIndicator.OffText = 'No'
            Properties.StateIndicator.OnText = 'Si'
            Properties.StateIndicator.Position = sipInside
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
          end
          object imgFirma: TcxDBImage
            Left = 968
            Top = 36
            DataBinding.DataField = 'bImagenFirma'
            DataBinding.DataSource = ds_usuarios
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ReadOnly = False
            Style.HotTrack = False
            TabOrder = 15
            Height = 141
            Width = 170
          end
          object cxLabel2: TcxLabel
            Left = 1016
            Top = 11
            Caption = 'Firma Digital'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            Transparent = True
          end
          object btnFirma: TcxButton
            Left = 968
            Top = 183
            Width = 75
            Height = 25
            Caption = 'Agregar Frima'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 16
            OnClick = btnFirmaClick
          end
          object cxEmpleado: TcxDBLookupComboBox
            Left = 758
            Top = 215
            DataBinding.DataField = 'IdPersonal'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.KeyFieldNames = 'IdPersonal'
            Properties.ListColumns = <
              item
                Caption = 'Nombre '
                FieldName = 'NombreCompleto'
              end
              item
                Caption = 'Empresa'
                FieldName = 'Empresa'
              end>
            Properties.ListSource = ds_PersonalUsuario
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 145
          end
          object cxTelefono: TcxDBMaskEdit
            Left = 84
            Top = 98
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = ds_usuarios
            ParentFont = False
            Properties.EditMask = '!\(999\)000-0000;0;_'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object btnPerfil: TcxButton
            Left = 659
            Top = 214
            Width = 30
            Height = 25
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              000000000000000000000000000000000000000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 9
            OnClick = btnPerfilClick
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
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Usuario:'
            Control = tsIdUsuario
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Nombre:'
            Control = tsNombre
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'E-Mail:'
            Control = tsCorreo
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Area/ Depto.'
            Control = tsIdDepartamento
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Puesto:'
            Control = tsPuesto
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Perfil:'
            Control = tsIdGrupo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Activo: '
            Control = tlActivo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'cxDBCheckBox1'
            CaptionOptions.Visible = False
            Control = DBCheckBox5
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group3
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGroupBox1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'Password:'
            Control = tsPassword
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group2
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignVert = avClient
            CaptionOptions.Text = 'dxDBToggleSwitch1'
            CaptionOptions.Visible = False
            Control = dxDBToggleSwitch1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group3
            LayoutDirection = ldHorizontal
            Index = 7
            AutoCreated = True
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.AlignVert = tavTop
            Control = imgFirma
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahCenter
            CaptionOptions.Text = 'Frima Digital'
            CaptionOptions.Visible = False
            Control = cxLabel2
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'cxButton3'
            CaptionOptions.Visible = False
            Control = btnFirma
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'Empleado'
            Control = cxEmpleado
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Tel'#233'fono:'
            Control = cxTelefono
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = btnPerfil
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group3
            LayoutDirection = ldHorizontal
            Index = 6
            AutoCreated = True
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = 266
          Width = 1166
          Height = 35
          Align = alBottom
          TabOrder = 1
          inline frmBarraH22: TfrmBarraH2
            Left = 957
            Top = 1
            Width = 208
            Height = 33
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 957
            ExplicitTop = 1
            ExplicitWidth = 208
            ExplicitHeight = 33
            inherited Panel1: TPanel
              Width = 208
              Height = 33
              BevelEdges = []
              ExplicitWidth = 208
              ExplicitHeight = 33
              inherited btnPost: TcxButton
                Left = 33
                Top = 1
                Height = 31
                Align = alRight
                OnClick = btnPostClick
                ExplicitLeft = 33
                ExplicitTop = 1
                ExplicitHeight = 31
              end
              inherited btnCancel: TcxButton
                Left = 120
                Top = 1
                Height = 31
                Align = alRight
                OnClick = btnCancelClick
                ExplicitLeft = 120
                ExplicitTop = 1
                ExplicitHeight = 31
              end
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Asignar Modulos'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      TabVisible = False
      OnShow = cxTabSheet2Show
      object Panel2: TPanel
        Left = 0
        Top = 264
        Width = 1168
        Height = 38
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 959
          Top = 1
          Width = 208
          Height = 36
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 959
          ExplicitTop = 1
          ExplicitWidth = 208
          ExplicitHeight = 36
          inherited Panel1: TPanel
            Width = 208
            Height = 36
            BevelEdges = []
            ExplicitWidth = 208
            ExplicitHeight = 36
            inherited btnPost: TcxButton
              Left = 15
              Top = 5
              Height = 27
              OnClick = btnPostClick
              ExplicitLeft = 15
              ExplicitTop = 5
              ExplicitHeight = 27
            end
            inherited btnCancel: TcxButton
              Left = 108
              Top = 4
              Height = 27
              OnClick = btnCancelClick
              ExplicitLeft = 108
              ExplicitTop = 4
              ExplicitHeight = 27
            end
          end
        end
      end
      object PanelATop: TPanel
        Left = 0
        Top = 0
        Width = 1168
        Height = 35
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxDetalleModulos: TcxButton
          Left = 1092
          Top = 1
          Width = 75
          Height = 33
          Align = alRight
          Caption = 'Detalle'
          OptionsImage.ImageIndex = 11
          OptionsImage.Images = frmrepositorio.IconosBarra
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxDetalleModulosClick
        end
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'M'#243'dulos [Asignando]'
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clHighlight
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHighlight
          Style.IsFontAssigned = True
        end
        object cxLimpia: TcxButton
          Left = 984
          Top = 1
          Width = 108
          Height = 33
          Align = alRight
          Caption = 'Actualiza Lista'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = frmrepositorio.IconosBarra
          TabOrder = 2
          OnClick = cxLimpiaClick
        end
      end
      object gridMod: TcxGrid
        Left = 0
        Top = 35
        Width = 691
        Height = 229
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxvVewModulos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsModulos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxvVewModulosPrograma: TcxGridDBColumn
            Caption = 'Programa'
            DataBinding.FieldName = 'NombrePrograma'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'sIdPrograma'
            Properties.ListColumns = <
              item
                FieldName = 'sDescripcion'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsProgramas
            Properties.ReadOnly = True
            Width = 391
          end
          object cxvVewModulosAcceder: TcxGridDBColumn
            Caption = 'Acceder'
            DataBinding.FieldName = 'acceder'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Width = 180
          end
          object cxvVewModulosInsertar: TcxGridDBColumn
            Caption = 'Insertar'
            DataBinding.FieldName = 'insertar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Width = 154
          end
          object cxvVewModulosEditar: TcxGridDBColumn
            Caption = 'Editar'
            DataBinding.FieldName = 'editar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Width = 157
          end
          object cxvVewModulosEliminar: TcxGridDBColumn
            Caption = 'Eliminar'
            DataBinding.FieldName = 'eliminar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Width = 151
          end
          object cxvVewModulosImprimir: TcxGridDBColumn
            Caption = 'Imprimir'
            DataBinding.FieldName = 'imprimir'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Width = 133
          end
          object cxvVewModulosColumn1: TcxGridDBColumn
            Caption = 'Modulo'
            DataBinding.FieldName = 'IdTab'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'IdTab'
            Properties.ListColumns = <
              item
                FieldName = 'Descripcion'
              end>
            Properties.ListSource = dsTabs
            Properties.ReadOnly = True
            Visible = False
            GroupIndex = 0
          end
        end
        object gridModLevel1: TcxGridLevel
          GridView = cxvVewModulos
        end
      end
      object PanelDetalle: TPanel
        Left = 696
        Top = 35
        Width = 472
        Height = 229
        Align = alRight
        TabOrder = 3
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 470
          Height = 35
          Align = alTop
          Alignment = taLeftJustify
          Caption = 'Subventanas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cxGridDetalleModulo: TcxGrid
          Left = 1
          Top = 36
          Width = 470
          Height = 192
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxViewDetalleModulo: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_submodulos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            object cxColumnD1: TcxGridDBColumn
              Caption = 'Sub-M'#243'dulo'
              DataBinding.FieldName = 'FieldNombre'
              Width = 84
            end
            object cxColumnD2: TcxGridDBColumn
              Caption = 'Acceso'
              DataBinding.FieldName = 'FieldVisualiza'
              Width = 96
            end
            object cxColumnD3: TcxGridDBColumn
              Caption = 'Pertenece a: '
              DataBinding.FieldName = 'FieldAgrupa'
              Visible = False
              GroupIndex = 1
            end
            object cxColumnD4: TcxGridDBColumn
              Caption = 'M'#243'dulo'
              DataBinding.FieldName = 'Modulo'
              Visible = False
              GroupIndex = 0
              Width = 271
            end
          end
          object cxGridDetalleModuloLevel1: TcxGridLevel
            GridView = cxViewDetalleModulo
          end
        end
      end
      object cxSplitterDetalle: TcxSplitter
        Left = 691
        Top = 35
        Width = 5
        Height = 229
        AlignSplitter = salRight
      end
    end
  end
  object panelBotones: TPanel
    Left = 0
    Top = 0
    Width = 1172
    Height = 35
    Align = alTop
    TabOrder = 3
    inline frmBarraH11: TfrmBarraH1
      Left = 609
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 609
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        Align = alRight
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
          Visible = False
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
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
      Caption = 'Usuarios'
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
    object cxButton1: TcxButton
      Left = 472
      Top = 1
      Width = 137
      Height = 33
      Align = alRight
      Caption = 'Asignar Modulos'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF000000000000
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF312315449469
        3ECDB37E4BF8B8824DFFB8824DFFB8824DFFB8824DFFBA8552FFC69B71FFEFE3
        D7FFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFF848484FFA17243DFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFC294
        66FFFFFFFFFFC1C1C1FFFFFFFFFFC1C1C1FFFFFFFFFF848484FFA97747EAB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFBF8E
        5EFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFF848484FF7B5734ABB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFD2B0
        8FFFFFFFFFFFC1C1C1FFFFFFFFFFC1C1C1FFFFFFFFFF848484FF23180E30B47F
        4BF9B8824DFF956A3FCFF5EDE6FFF4ECE4FFC4976BFFB8824DFFBA8551FFF3EA
        E2FFFFFFFFFF848484FF848484FF848484FFFFFFFFFF848484FF000000003E2C
        1A56A37344E219110A22FFFFFFFFFFFFFFFFF6EFE8FFC19163FFE9D8C7FFFFFF
        FFFFFFFFFFFF848484FF848484FF848484FFFFFFFFFF848484FF000000000000
        0000000000003E2C1A56BF8E5EFFBF8E5EFFE7D4C2FFFFFFFFFFFFFFFFFFC1C1
        C1FFC1C1C1FF848484FF848484FF848484FFFFFFFFFF848484FF000000000000
        000024190F32B47F4BFAB8824DFFB8824DFFB98450FFF1E6DCFFFFFFFFFFC1C1
        C1FFFFFFFFFFC1C1C1FFFFFFFFFFC1C1C1FFFFFFFFFF848484FF000000000000
        00007B5734ABB8824DFFB8824DFFB8824DFFB8824DFFD0AC89FFFFFFFFFF8484
        84FF848484FF848484FF848484FF848484FFFFFFFFFF848484FF000000000000
        0000AD7A48F0B8824DFFB8824DFFB8824DFFB8824DFFBE8C5BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFFFFFFFFF848484FF000000000000
        0000B47F4BFAB8824DFFB8824DFFB8824DFFB8824DFFB27E4BF7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF000000000000
        0000775432A5B8824DFFB8824DFFB8824DFFB8824DFF735230A0FFFFFFFFFFFF
        FFFFFFFFFFFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
        00000A07040E6B4B2D94A57545E5AA7847EB6B4B2D94FBF9F6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        00000000000000000000000000000000000000000000848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF0000000000000000}
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object btnPermisos: TcxButton
      Left = 340
      Top = 1
      Width = 132
      Height = 33
      Align = alRight
      Caption = 'Acceso a Datos'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003A4035463A403546363E2F46393F33463A4036463A4035464E4A48614B47
        455C4B47455C4B47465C544D4B5C564E4C5C554E4C5C554E4C5C564E4C5C5E5B
        526E5FAA26F652A414F679B649F660AB29F65BA820F660AB28F6735044FF704C
        40FF745146FF765347FFC18978FFCA907EFFC68E7CFFC68E7CFFCC8C80FFB991
        70FF53A813FF88C55CFFE8F3E0FFBCDDA3FF5EAD21FF55A915FF3B3837467B62
        5ADC714E42FF795A4FFFAC8072FDD59E8CFECD9987FFCA9685FFCF9489FFBB98
        76FF63B029FF93CA6CFFA4D182FF9ECE7AFF7FBE4FFF4FA60EFF000000000C0C
        0B0C6559559378574CFD7B5C51FE9E7769FCC69483FDD09A89FECF9489FFBE99
        7AFF5CAD1FFF48A504FFAAD389FF6AB432FF54A813FF5FAE23FF000000000000
        0000000000005F565382714F43FF77594FFE805F54FDAE8172FDD3978CFEBC99
        79FF52B016FF43A400FF99CB72FF62B026FF49A305FF4EA60CFF000000000000
        000000000000645A578D745145FF806055FF775A4FFF806055FCCC9587FDC598
        80FF959F52FF5B6F498758684B78556648785366467854664678000000000000
        00002A29292F78574BFF7E5E53FF806055FF785A50FE956F62FDCD9987FECC96
        86FFD08B85FF4B42444D00000000000000000000000000000000000000000000
        00006F615BAB745145FF806055FF7E5E53FF7A5B50FDBC8C7CFDCF9A88FFCA97
        86FFC89180FFBE8F81EC07070707000000000000000000000000000000000000
        000072625CB5765448FF806055FF795B50FF946E61FDCE9988FDCB9786FFCB97
        86FFCB9786FFC58C79FF816E6893000000000000000000000000000000000000
        00005C54527B735044FF806055FF78594FFF9D7568FCD19A89FECA9685FFCB97
        86FFCB9786FFC68E7CFFA08379BF000000000000000000000000000000000000
        0000544E4C6D6E493DFF806055FF7A5B51FF8B675AFFCB9785FECB9786FFCB97
        86FFCB9786FFC68D7AFF72646080000000000000000000000000000000000000
        000014141415786158D6714D41FF704F44FF88665AF9CA9785FDCB9686FFCB97
        86FFCB9786FFC58C79FF685D5973000000000000000000000000000000000000
        000000000000070707073F3C3B4C413E3D4F2A28282DCA9483FFC78F7DFFCA95
        84FFC99483FFC28672FF59514E61000000000000000000000000000000000000
        00000000000000000000000000000000000000000000655A5770B6897BE3C291
        82F4BD8D7EED907871A808080808000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000016161617413C
        3B462C2A292E0000000000000000000000000000000000000000}
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPermisosClick
    end
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
    object mniExportarExcel: TMenuItem
      Caption = 'Exportar Excel'
      ImageIndex = 15
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
  object Usuarios: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from usuarios where sidusuario<>:user'
      'order by sIdUsuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end>
    Left = 592
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end>
  end
  object ds_usuarios: TDataSource
    DataSet = Usuarios
    Left = 432
    Top = 88
  end
  object ds_grupos: TDataSource
    AutoEdit = False
    DataSet = grupos
    Left = 429
    Top = 185
  end
  object ds_deptos: TDataSource
    AutoEdit = False
    DataSet = deptos
    Left = 429
    Top = 134
  end
  object deptos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from master_departamento')
    Params = <>
    Left = 501
    Top = 134
    object deptosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Required = True
    end
    object deptosIdPadre: TIntegerField
      FieldName = 'IdPadre'
    end
    object deptosCodigo: TWideStringField
      FieldName = 'Codigo'
      Required = True
      Size = 45
    end
    object deptosNombre: TWideStringField
      FieldName = 'Nombre'
      Required = True
      Size = 75
    end
    object deptosActivo: TWideStringField
      FieldName = 'Activo'
      Size = 2
    end
    object deptosIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
  end
  object grupos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from grupos')
    Params = <>
    Left = 501
    Top = 185
  end
  object zpassUser: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select '
      'AES_DECRYPT( u.sPassword,'#39'AES2016'#39') AS Pass,'
      'AES_DECRYPT( u.sPasswordEspecial,'#39'AES2016'#39') AS PassEsp '
      'from usuarios as u '
      'WHERE '
      'sIdUsuario = :Usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    Left = 656
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object dsModulos: TDataSource
    DataSet = mModulos
    Left = 264
    Top = 88
  end
  object mModulos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 336
    Top = 88
    object mModulosNombrePrograma: TStringField
      FieldName = 'NombrePrograma'
      Size = 100
    end
    object mModulosAcceder: TStringField
      FieldName = 'acceder'
    end
    object mModulosinsertar: TStringField
      FieldName = 'insertar'
      Size = 2
    end
    object mModuloseditar: TStringField
      FieldName = 'editar'
      Size = 2
    end
    object mModuloseliminar: TStringField
      FieldName = 'eliminar'
      Size = 2
    end
    object mModulosexportar: TStringField
      FieldName = 'exportar'
      Size = 2
    end
    object mModulosplantilla: TStringField
      FieldName = 'plantilla'
      Size = 2
    end
    object mModulosimportar: TStringField
      FieldName = 'importar'
      Size = 2
    end
    object mModulosimprimir: TStringField
      FieldName = 'imprimir'
      Size = 2
    end
    object mModulosIdTab: TStringField
      FieldName = 'IdTab'
    end
  end
  object zUsuPermisos: TUniQuery
    Connection = connection.Uconnection
    Left = 659
    Top = 170
  end
  object zProgramas: TUniQuery
    Connection = connection.Uconnection
    Left = 810
    Top = 129
  end
  object dsProgramas: TDataSource
    DataSet = mProgramas
    Left = 266
    Top = 345
  end
  object mProgramas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 328
    Top = 348
    object mProgramassDescripcion: TStringField
      FieldName = 'sDescripcion'
    end
    object mProgramassIdPrograma: TStringField
      FieldName = 'sIdPrograma'
      Size = 100
    end
    object mProgramasIdTab: TIntegerField
      FieldName = 'IdTab'
    end
    object mProgramassClase: TStringField
      FieldName = 'sClase'
      Size = 100
    end
  end
  object mTabs: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 204
    Top = 348
    object mTabsIdTab: TIntegerField
      FieldName = 'IdTab'
    end
    object mTabsNombre: TStringField
      FieldName = 'Nombre'
    end
    object mTabsDescripcion: TStringField
      FieldName = 'Descripcion'
    end
  end
  object dsTabs: TDataSource
    DataSet = mTabs
    Left = 154
    Top = 345
  end
  object mSubModulos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 330
    Top = 137
    object mSubModulosFieldSubModulo: TStringField
      FieldName = 'FieldSubModulo'
      Size = 100
    end
    object mSubModulosFieldVisualiza: TStringField
      FieldName = 'FieldVisualiza'
      Size = 2
    end
    object mSubModulosFieldNombre: TStringField
      FieldName = 'FieldNombre'
      Size = 100
    end
    object mSubModulosFieldAgrupa: TStringField
      FieldName = 'FieldAgrupa'
      Size = 100
    end
    object mSubModulosModulo: TStringField
      FieldName = 'Modulo'
      Size = 200
    end
    object mSubModulosusuario: TStringField
      FieldName = 'usuario'
      Size = 100
    end
  end
  object ds_submodulos: TDataSource
    DataSet = mSubModulos
    Left = 266
    Top = 137
  end
  object uPermisosDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 736
    Top = 116
  end
  object personal: TDataSource
    AutoEdit = False
    DataSet = ds_personal
    Left = 741
    Top = 369
  end
  object ds_personal: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from master_personal')
    Params = <>
    Left = 805
    Top = 377
  end
  object ds_PersonalUsuario: TDataSource
    AutoEdit = False
    DataSet = zPersonalUsuario
    Left = 560
    Top = 319
  end
  object zPersonalUsuario: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select IdPersonal, CONCAT(p.Nombre,'#39' '#39',p.APaterno,'#39' '#39',p.AMaterno' +
        ') as NombreCompleto,'
      'e.FK_Titulo as Empresa  '
      'from master_personal as p '
      'INNER JOIN master_empresa as e on (p.IdEmpresa = e.IdEmpresa)'
      'WHERE'
      '(:Id = -1 OR (:Id<> -1 AND :Id = p.IdPersonal))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end>
  end
end
