object FrmCatalogoNominas: TFrmCatalogoNominas
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de N'#243'minas'
  ClientHeight = 503
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 503
    Align = alClient
    TabOrder = 0
    object PanelD: TPanel
      Left = 1
      Top = 1
      Width = 1099
      Height = 35
      Align = alTop
      TabOrder = 0
      inline frmBarraH11: TfrmBarraH1
        Left = 536
        Top = 1
        Width = 562
        Height = 33
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 536
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
      end
    end
    object PanelDetalle: TPanel
      Left = 595
      Top = 36
      Width = 505
      Height = 466
      Align = alRight
      TabOrder = 1
      Visible = False
      object cxGrid1: TcxGrid
        Left = 1
        Top = 36
        Width = 503
        Height = 214
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsNominaDetalle
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
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          object ColCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodPersonal'
            Width = 98
          end
          object ColNombre: TcxGridDBColumn
            Caption = 'Nombre de Personal'
            DataBinding.FieldName = 'NombrePersonal'
            Width = 217
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'Descuento'
            Width = 97
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Bonos'
            Width = 89
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object PanelCentro: TPanel
        Left = 1
        Top = 250
        Width = 503
        Height = 174
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object dxLayoutControl1: TdxLayoutControl
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 495
          Height = 166
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cbEmpleados: TcxDBLookupComboBox
            Left = 87
            Top = 11
            DataBinding.DataField = 'IdPersonal'
            DataBinding.DataSource = dsNominaDetalle
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
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = EnterControl
            OnExit = SalidaControl
            OnKeyUp = GlobalKeyUp
            Width = 345
          end
          object crDescuento: TcxDBCurrencyEdit
            Left = 87
            Top = 39
            DataBinding.DataField = 'Descuentos'
            DataBinding.DataSource = dsNominaDetalle
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
            OnKeyUp = GlobalKeyUp
            Width = 121
          end
          object crBonos: TcxDBCurrencyEdit
            Left = 315
            Top = 39
            DataBinding.DataField = 'Bonos'
            DataBinding.DataSource = dsNominaDetalle
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
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahParentManaged
            AlignVert = avParentManaged
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Empleado'
            Control = cbEmpleados
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Descuentos:'
            Control = crDescuento
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Bonos'
            Control = crBonos
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object PanelTop: TPanel
        Left = 1
        Top = 1
        Width = 503
        Height = 35
        Align = alTop
        TabOrder = 2
        object cxNuevoDetalle: TcxButton
          Tag = 10
          Left = 239
          Top = 5
          Width = 81
          Height = 26
          Caption = 'Nuevo'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 0
          Visible = False
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
          Left = 326
          Top = 5
          Width = 81
          Height = 26
          Caption = 'Editar'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 1
          Visible = False
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
          Align = alLeft
          Caption = 'Detalle Nomina'
          ParentColor = False
          ParentFont = False
          Style.Color = clNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clHighlight
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHighlight
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxEliminarDetalle: TcxButton
          Tag = 11
          Left = 413
          Top = 5
          Width = 81
          Height = 26
          Caption = 'Eliminar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = connection.cxIconos16
          TabOrder = 3
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = cxEliminarDetalleClick
        end
      end
      object PanelDown: TPanel
        Left = 1
        Top = 424
        Width = 503
        Height = 41
        Align = alBottom
        TabOrder = 3
        Visible = False
        DesignSize = (
          503
          41)
        object cxCancelarDetalle: TcxButton
          Left = 408
          Top = 6
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
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
          Left = 315
          Top = 6
          Width = 87
          Height = 28
          Anchors = [akTop, akRight]
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
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 589
      Top = 36
      Width = 6
      Height = 466
      AlignSplitter = salRight
      Visible = False
    end
    object PanelDatos: TPanel
      Left = 1
      Top = 36
      Width = 588
      Height = 466
      Align = alClient
      TabOrder = 3
      object Grid_Nomina: TcxGrid
        Left = 1
        Top = 1
        Width = 586
        Height = 269
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Grid_NominaDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsNomina
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
          OptionsView.Indicator = True
          object colIdGiardia: TcxGridDBColumn
            Caption = 'N'#243'mina'
            DataBinding.FieldName = 'Titulo'
            Width = 101
          end
          object colFechaInicio: TcxGridDBColumn
            Caption = 'Fecha de Inicio'
            DataBinding.FieldName = 'FechaInicioN'
            Width = 133
          end
          object ColFechaFinal: TcxGridDBColumn
            Caption = 'Fecha de Termino'
            DataBinding.FieldName = 'FechaTerminoN'
            Width = 123
          end
          object Grid_NominaDBTableView1Column1: TcxGridDBColumn
            Caption = 'Tipo de N'#243'mina'
            DataBinding.FieldName = 'TipoNomina'
            Width = 78
          end
          object ColActivo: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 137
          end
        end
        object Grid_NominaLevel1: TcxGridLevel
          GridView = Grid_NominaDBTableView1
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 270
        Width = 586
        Height = 6
        AlignSplitter = salBottom
      end
      object Panel1: TPanel
        Left = 1
        Top = 276
        Width = 586
        Height = 189
        Align = alBottom
        TabOrder = 2
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 584
          Height = 151
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object lcbTipoNomina: TcxDBLookupComboBox
            Left = 108
            Top = 38
            DataBinding.DataField = 'IdTipoNomina'
            DataBinding.DataSource = dsNomina
            ParentFont = False
            Properties.KeyFieldNames = 'IdTipoNomina'
            Properties.ListColumns = <
              item
                FieldName = 'Titulo'
              end>
            Properties.ListSource = dsTipoNom
            Properties.OnChange = lcbTipoNominaPropertiesChange
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
            OnKeyUp = GlobalKeyUp
            Width = 583
          end
          object dtFechaInicio: TcxDBDateEdit
            Left = 108
            Top = 66
            DataBinding.DataField = 'FechaInicioN'
            DataBinding.DataSource = dsNomina
            ParentFont = False
            Properties.OnEditValueChanged = dtFechaInicioPropertiesEditValueChanged
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
            Width = 85
          end
          object dtFechaFin: TcxDBDateEdit
            Left = 423
            Top = 66
            DataBinding.DataField = 'FechaTerminoN'
            DataBinding.DataSource = dsNomina
            ParentFont = False
            Properties.OnEditValueChanged = dtFechaFinPropertiesEditValueChanged
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
          object spDiasT: TcxDBSpinEdit
            Left = 620
            Top = 94
            DataBinding.DataField = 'Dias'
            DataBinding.DataSource = dsNomina
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 71
          end
          object edtTitulo: TcxDBTextEdit
            Left = 108
            Top = 10
            DataBinding.DataField = 'Titulo'
            DataBinding.DataSource = dsNomina
            ParentFont = False
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
            Width = 121
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object cbGuardia: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'Tipo de N'#243'mina'
            Control = lcbTipoNomina
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Fecha de Inicio'
            Control = dtFechaInicio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahLeft
            AlignVert = avTop
            Index = 0
            AutoCreated = True
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Fecha de Termino'
            Control = dtFechaFin
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup2
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Dias Trabajados'
            Control = spDiasT
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'T'#237'tulo de Nomina'
            Control = edtTitulo
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
        object pnlBtn2: TPanel
          Left = 1
          Top = 152
          Width = 584
          Height = 36
          Align = alBottom
          TabOrder = 1
          inline frmBarraH21: TfrmBarraH2
            Left = 394
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 394
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
  end
  object dsNomina: TDataSource
    DataSet = zNomina
    Left = 81
    Top = 92
  end
  object zNominaDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 625
    Top = 140
  end
  object dsNominaDetalle: TDataSource
    DataSet = zNominaDetalle
    Left = 625
    Top = 188
  end
  object zNomina: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT g.*,'
      
        '(SELECT Embarcacion FROM master_embarcaciones as e WHERE e.IdEmb' +
        'arcacion = g.IdEmbarcacion) as Embarcacion'
      'FROM rh_guardias as g')
    AfterScroll = zNominaAfterScroll
    Left = 17
    Top = 92
  end
  object zEmpleados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT IdPersonal,'
      'concat(Nombre,'#39' '#39',APaterno,'#39' '#39',AMaterno) as Nombre'
      'FROM master_personal')
    Left = 641
    Top = 332
  end
  object dsEmpleados: TDataSource
    DataSet = zEmpleados
    Left = 641
    Top = 268
  end
  object zTipoNom: TUniQuery
    Connection = connection.Uconnection
    Left = 17
    Top = 164
  end
  object dsTipoNom: TDataSource
    DataSet = zTipoNom
    Left = 81
    Top = 164
  end
end
