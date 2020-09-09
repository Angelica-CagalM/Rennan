object frmUsuariosXproyectos: TfrmUsuariosXproyectos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaciones a Usuarios'
  ClientHeight = 515
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelCentro: TPanel
    Left = 0
    Top = 35
    Width = 1040
    Height = 480
    Align = alClient
    TabOrder = 0
    object PanelUsuario: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 478
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridUsuarios: TcxGrid
        Left = 1
        Top = 1
        Width = 271
        Height = 476
        Align = alClient
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
          OnCellClick = cxViewUsuariosCellClick
          DataController.DataSource = dsUsuarios
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para filtro personalizado'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay usuarios>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Usuario'
            DataBinding.FieldName = 'sIdUsuario'
            Width = 53
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'sNombre'
            HeaderAlignmentHorz = taCenter
            Width = 241
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
            Properties.ListSource = ds_perfiles
            Visible = False
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            Width = 169
          end
          object cxViewUsuariosColumn2: TcxGridDBColumn
            Caption = 'Puesto'
            DataBinding.FieldName = 'sPuesto'
            Width = 113
          end
          object cxViewUsuariosColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
            Width = 113
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxViewUsuarios
        end
      end
    end
    object PanelDetalle: TPanel
      Left = 280
      Top = 1
      Width = 759
      Height = 478
      Align = alRight
      TabOrder = 1
      Visible = False
      object PanelInfoD: TPanel
        Left = 1
        Top = 360
        Width = 757
        Height = 117
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        Visible = False
        object PanelDown: TPanel
          Left = 1
          Top = 83
          Width = 755
          Height = 33
          Align = alBottom
          Color = 14803425
          TabOrder = 0
          object cxCancelarDetalle: TcxButton
            Left = 667
            Top = 1
            Width = 87
            Height = 31
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
            Left = 580
            Top = 1
            Width = 87
            Height = 31
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
        object cxPageControlInfoD: TcxPageControl
          Left = 1
          Top = 1
          Width = 755
          Height = 82
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
          TabOrder = 1
          Properties.ActivePage = cxTabInfoD1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 80
          ClientRectLeft = 2
          ClientRectRight = 753
          ClientRectTop = 30
          object cxTabInfoD1: TcxTabSheet
            Caption = 'cxTabInfoD1'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 751
              Height = 50
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cmbProyecto: TcxDBLookupComboBox
                Left = 130
                Top = 11
                DataBinding.DataField = 'sContrato'
                DataBinding.DataSource = dsProyectoUsuario
                ParentFont = False
                Properties.KeyFieldNames = 'sContrato'
                Properties.ListColumns = <
                  item
                    Caption = 'Listado de Proyectos'
                    FieldName = 'sMascara'
                  end>
                Properties.ListSource = dsProyectos
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 145
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
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'Empresa / Proyecto :'
                Control = cmbProyecto
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object cxTabInfoD2: TcxTabSheet
            Caption = 'cxTabInfoD2'
            ImageIndex = 1
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 751
              Height = 50
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxAlmacen: TcxDBLookupComboBox
                Left = 79
                Top = 11
                DataBinding.DataField = 'IdAlmacen'
                DataBinding.DataSource = ds_datosDetalle
                ParentFont = False
                Properties.KeyFieldNames = 'IdAlmacen'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'Codigo'
                  end
                  item
                    Caption = 'Descripci'#243'n'
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_infoLook
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
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
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Almacenes'
                Control = cxAlmacen
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
          object cxTabInfoD3: TcxTabSheet
            Caption = 'cxTabInfoD3'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 751
              Height = 50
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cmbCC: TcxDBLookupComboBox
                Left = 114
                Top = 11
                DataBinding.DataField = 'sNumeroOrden'
                DataBinding.DataSource = ds_datosCC
                ParentFont = False
                Properties.KeyFieldNames = 'sNumeroOrden'
                Properties.ListColumns = <
                  item
                    Caption = 'Listado de Centros de Costo'
                    FieldName = 'sIdFolio'
                  end>
                Properties.ListSource = ds_infoLook
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Arial'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 145
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'Centros de Costo'
                Control = cmbCC
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 757
        Height = 30
        Align = alTop
        TabOrder = 1
        object cxNuevoDetalle: TcxButton
          Tag = 10
          Left = 513
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
          Left = 594
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
          Caption = 'Proyectos por Usuario'
          ParentColor = False
          ParentFont = False
          Style.Color = clNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clHighlight
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHighlight
          Style.IsFontAssigned = True
          Transparent = True
        end
        object btnEliminarDetalle: TcxButton
          Tag = 12
          Left = 675
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
      object cxPageControl: TcxPageControl
        Left = 1
        Top = 31
        Width = 757
        Height = 329
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Properties.ActivePage = cxTabProyectos
        Properties.CustomButtons.Buttons = <>
        OnChange = cxPageControlChange
        ClientRectBottom = 327
        ClientRectLeft = 2
        ClientRectRight = 755
        ClientRectTop = 30
        object cxTabProyectos: TcxTabSheet
          Caption = 'Proyectos por Usuario'
          ImageIndex = 0
          object cxGridUsuariosProyecto: TcxGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 297
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxViewUsuariosProyecto: TcxGridDBTableView
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
              DataController.DataSource = dsProyectoUsuario
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay proyectos asignados>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxViewUsuariosProyectoColumn1: TcxGridDBColumn
                Caption = 'Proyecto'
                DataBinding.FieldName = 'sContrato'
                Width = 92
              end
              object cxViewUsuariosProyectoColumn2: TcxGridDBColumn
                Caption = 'T'#237'tulo'
                DataBinding.FieldName = 'sTitulo'
                Width = 146
              end
              object cxViewUsuariosProyectoColumn3: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'mDescripcion'
                Width = 189
              end
            end
            object cxGridUsuariosProyectoLevel1: TcxGridLevel
              GridView = cxViewUsuariosProyecto
            end
          end
        end
        object cxTabAlmacenes: TcxTabSheet
          Caption = 'Almacenes por Usuario'
          ImageIndex = 1
          object cxGridAlmacenes: TcxGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 297
            Align = alClient
            TabOrder = 0
            object cxViewAlmacenes: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = ds_datosDetalle
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxColumnInfoD21: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'sIdAlmacen'
                Width = 76
              end
              object cxColumnInfoD22: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'sDescripcion'
                Width = 162
              end
              object cxColumnInfoD23: TcxGridDBColumn
                Caption = 'Direcci'#243'n'
                DataBinding.FieldName = 'sDireccion'
                Width = 189
              end
            end
            object cxGridAlmacenesLevel1: TcxGridLevel
              GridView = cxViewAlmacenes
            end
          end
        end
        object cxTabCC: TcxTabSheet
          Caption = 'Centros de Costo por Usuario'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGridCentroCosto: TcxGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 297
            Align = alClient
            TabOrder = 0
            object cxViewCentroCosto: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              DataController.DataSource = ds_datosCC
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxColumnInfoD31: TcxGridDBColumn
                Caption = 'Centro de Costo'
                DataBinding.FieldName = 'sIdFolio'
                Width = 122
              end
              object cxColumnInfoD32: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 305
              end
            end
            object cxGridCentroCostoLevel1: TcxGridLevel
              GridView = cxViewCentroCosto
            end
          end
        end
        object cxTabAutorizaciones: TcxTabSheet
          Caption = 'Autorizaciones por Usuario'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 81
            Width = 753
            Height = 216
            Align = alClient
            TabOrder = 0
            object cxGridAutorizaciones: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              DataController.DataSource = dsAutorizaciones
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'Pendientes'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = 'Si'
                Properties.DisplayUnchecked = 'No'
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Width = 173
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'Validadas'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = 'Si'
                Properties.DisplayUnchecked = 'No'
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Width = 128
              end
              object cxGridAutorizacionesColumn3: TcxGridDBColumn
                Caption = 'Validadas T'#233'cnicas'
                DataBinding.FieldName = 'ValidadasTecnicas'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = 'Si'
                Properties.DisplayUnchecked = 'No'
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Width = 123
              end
              object cxGridAutorizacionesColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Autorizadas'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = 'Si'
                Properties.DisplayUnchecked = 'No'
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Width = 151
              end
              object cxGridAutorizacionesColumn2: TcxGridDBColumn
                Caption = 'Aplica Firmantes'
                DataBinding.FieldName = 'AplicaFirmas'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = 'Si'
                Properties.DisplayUnchecked = 'No'
                Properties.ValueChecked = 'Si'
                Properties.ValueUnchecked = 'No'
                Width = 164
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridAutorizaciones
            end
          end
          object cxLista: TcxListView
            Left = 0
            Top = 0
            Width = 753
            Height = 81
            Align = alTop
            Columns = <>
            IconOptions.Arrangement = iaLeft
            IconOptions.AutoArrange = True
            Items.ItemData = {
              057E010000080000004A000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
              000D5200650071007500690073006900630069006F006E006500730012000000
              FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000114F007200640065006E0065
              007300200064006500200063006F006D007000720061000C000000FFFFFFFFFF
              FFFFFF00000000FFFFFFFF0000000007530061006C0069006400610073002700
              0000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000845006E007400720061
              0064006100730069000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000011
              41007600690073006F00200064006500200045006D0062006100720071007500
              65001F000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000B5000720065
              0073007500700075006500730074006F000A00000006000000FFFFFFFF000000
              00FFFFFFFF00000000035300410050008000000007000000FFFFFFFF00000000
              FFFFFFFF000000000B53006F006C0069006300690074007500640065007300}
            LargeImages = frmrepositorio.IconosTodos32
            ParentFont = False
            ReadOnly = True
            RowSelect = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleFocused.Color = clWhite
            StyleFocused.TextColor = clNone
            TabOrder = 1
            OnClick = cxListaClick
          end
        end
        object cxTabAutorizacionSAP: TcxTabSheet
          Caption = 'Autorizaciones SAP'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 753
            Height = 297
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxSAPRelease: TcxDBLookupComboBox
              Left = 156
              Top = 11
              DataBinding.DataField = 'IdGerente'
              DataBinding.DataSource = dsUsuarios
              ParentFont = False
              Properties.KeyFieldNames = 'IdGerente'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsGerentes
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 501
            end
            object cxManagerAprobador: TcxDBLookupComboBox
              Left = 156
              Top = 40
              DataBinding.DataField = 'IdAutorizador'
              DataBinding.DataSource = dsUsuarios
              ParentFont = False
              Properties.KeyFieldNames = 'IdAutorizador'
              Properties.ListColumns = <
                item
                  FieldName = 'NombreCompleto'
                end>
              Properties.ListSource = dsAutorizaciones
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = True
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 212
            end
            object dxLayoutControl4Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'SAP Release'
              Control = cxSAPRelease
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Project Manager Approval'
              Control = cxManagerAprobador
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 274
      Top = 1
      Width = 6
      Height = 478
      AlignSplitter = salRight
      Visible = False
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1040
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 468
      Top = 1
      Width = 571
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 468
      ExplicitTop = 1
      ExplicitWidth = 571
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Left = 9
        Height = 33
        Align = alRight
        ExplicitLeft = 9
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          Visible = False
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
          Visible = False
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          Visible = False
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Asignaciones a Usuarios'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
  end
  object dsProyectos: TDataSource
    DataSet = zProyectos
    Left = 40
    Top = 80
  end
  object dsUsuarios: TDataSource
    DataSet = zUsuarios
    Left = 8
    Top = 256
  end
  object dsProyectoUsuario: TDataSource
    DataSet = zProyectoUsuario
    Left = 72
    Top = 152
  end
  object zProyectoUsuarioUpt: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 144
    Top = 424
  end
  object ds_perfiles: TDataSource
    DataSet = zPerfiles
    Left = 8
    Top = 344
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 96
    Top = 424
  end
  object zProyectos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select p.* from rd_proyectos as p;')
    CachedUpdates = True
    Left = 9
    Top = 148
  end
  object zUsuarios: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select '
      '  u.sIdUsuario, '
      '  u.sNombre, '
      '  u.sMail, '
      '  u.IdDepartamento, '
      '  u.sPuesto,'
      '  u.sIdGrupo,'
      '  u.IdGerente,'
      '  u.IdAutorizador,'
      
        '  (select Nombre from master_departamento where IdDepartamento =' +
        ' u.idDepartamento) as Departamento'
      'from usuarios as u where u.lActivo = '#39'Si'#39';')
    FilterOptions = [foCaseInsensitive]
    AfterScroll = zUsuariosAfterScroll
    Left = 9
    Top = 204
  end
  object zPerfiles: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select '
      '*'
      'from grupos')
    CachedUpdates = True
    Left = 9
    Top = 300
  end
  object zProyectoUsuario: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select'
      '  up.sIdUsuario, '
      '  up.sContrato,'
      '  p.sCodigo,'
      '  p.mDescripcion,'
      '  p.sTitulo,'
      '  p.sUbicacion'
      'from usuarios_proyectos as up'
      'inner join usuarios as u on u.sIdUsuario = up.sIdUsuario'
      'inner join rd_proyectos as p on p.sContrato = up.sContrato'
      'where '
      
        '  (:sIdUsuario = -1 or (:sIdUsuario <> -1 and :sIdUsuario = up.s' +
        'IdUsuario))'
      ';')
    CachedUpdates = True
    FilterOptions = [foCaseInsensitive]
    Left = 153
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sIdUsuario'
        Value = nil
      end>
  end
  object uProyectoUsuarioUpt: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 193
    Top = 428
  end
  object uDatosDetalle: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 209
    Top = 156
  end
  object ds_datosDetalle: TDataSource
    DataSet = uDatosDetalle
    Left = 209
    Top = 204
  end
  object uInfoLook: TUniQuery
    Connection = connection.Uconnection
    Left = 321
    Top = 220
  end
  object ds_infoLook: TDataSource
    DataSet = uInfoLook
    Left = 329
    Top = 268
  end
  object uDatosCC: TUniQuery
    Connection = connection.Uconnection
    Left = 209
    Top = 260
  end
  object ds_datosCC: TDataSource
    DataSet = uDatosCC
    Left = 209
    Top = 308
  end
  object zAutorizaciones: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select '
      '  u.sIdUsuario, '
      '  u.sNombre, '
      '  u.sMail, '
      '  u.IdDepartamento, '
      '  u.sPuesto,'
      '  u.sIdGrupo,'
      
        '  (select Nombre from master_departamento where IdDepartamento =' +
        ' u.idDepartamento) as Departamento'
      'from usuarios as u where u.lActivo = '#39'Si'#39';')
    CachedUpdates = True
    FilterOptions = [foCaseInsensitive]
    AfterScroll = zUsuariosAfterScroll
    Left = 409
    Top = 204
  end
  object dsAutorizaciones: TDataSource
    DataSet = zAutorizaciones
    Left = 408
    Top = 256
  end
  object dsGerentes: TDataSource
    DataSet = uGerentes
    Left = 96
    Top = 256
  end
  object uGerentes: TUniQuery
    Connection = connection.Uconnection
    Left = 96
    Top = 298
  end
  object dsApruebaRequisicion: TDataSource
    DataSet = zApruebaRequisicion
    Left = 637
    Top = 243
  end
  object zApruebaRequisicion: TUniQuery
    Left = 638
    Top = 190
  end
end
