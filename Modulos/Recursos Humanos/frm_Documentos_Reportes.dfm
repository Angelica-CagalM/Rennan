object FrmDocumentos_Reportes: TFrmDocumentos_Reportes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Documentos Reportes'
  ClientHeight = 559
  ClientWidth = 1113
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
  object PanelDatos: TPanel
    Left = 0
    Top = 377
    Width = 1113
    Height = 182
    Align = alBottom
    TabOrder = 0
    Visible = False
    object Panel5: TPanel
      Left = 1
      Top = 141
      Width = 1111
      Height = 40
      Align = alBottom
      TabOrder = 0
      inline frmBarraH2: TfrmBarraH2
        Left = 930
        Top = 1
        Width = 180
        Height = 38
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 930
        ExplicitTop = 1
        ExplicitHeight = 38
        inherited Panel1: TPanel
          Height = 38
          ExplicitHeight = 38
          inherited btnPost: TcxButton
            Left = 5
            Top = 1
            Height = 36
            Align = alRight
            OnClick = btnPostClick
            ExplicitLeft = 5
            ExplicitTop = 1
            ExplicitHeight = 36
          end
          inherited btnCancel: TcxButton
            Left = 92
            Top = 1
            Height = 36
            Align = alRight
            OnClick = btnCancelClick
            ExplicitLeft = 92
            ExplicitTop = 1
            ExplicitHeight = 36
          end
        end
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1111
      Height = 140
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object edtCodigo: TcxDBTextEdit
        Left = 83
        Top = 11
        DataBinding.DataField = 'Codigo'
        DataBinding.DataSource = dsDocumnetos
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 382
      end
      object edtdocumento: TcxDBTextEdit
        Left = 83
        Top = 40
        DataBinding.DataField = 'documento'
        DataBinding.DataSource = dsDocumnetos
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 430
      end
      object edtNombreReporte: TcxDBTextEdit
        Left = 584
        Top = 11
        DataBinding.DataField = 'NombreReporte'
        DataBinding.DataSource = dsDocumnetos
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 482
      end
      object cbTipo: TcxDBComboBox
        Left = 83
        Top = 69
        DataBinding.DataField = 'Tipo'
        DataBinding.DataSource = dsDocumnetos
        ParentFont = False
        Properties.Items.Strings = (
          'Contrato'
          'Credencial')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 209
      end
      object edtExtension: TcxDBTextEdit
        Left = 584
        Top = 40
        DataBinding.DataField = 'Extension'
        DataBinding.DataSource = dsDocumnetos
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 510
      end
      object cxCargarDocumento: TcxButton
        Left = 963
        Top = 69
        Width = 137
        Height = 30
        Caption = 'Cargar Docuemento'
        OptionsImage.ImageIndex = 26
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        OnClick = cxCargarDocumentoClick
      end
      object cxvalidarActivo: TdxDBToggleSwitch
        Tag = 13
        Left = 842
        Top = 69
        Caption = 'Activo'
        DataBinding.DataField = 'Activo'
        DataBinding.DataSource = dsDocumnetos
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
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 5
        Transparent = True
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
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.ShowAccelChar = False
        CaptionOptions.Text = 'C'#243'digo'
        Control = edtCodigo
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Descripci'#243'n'
        Control = edtdocumento
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nombre'
        Control = edtNombreReporte
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        Index = 0
        AutoCreated = True
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Tipo'
        Control = cbTipo
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Extension'
        Control = edtExtension
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxCargarDocumento
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avClient
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxvalidarActivo
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 35
    Width = 1113
    Height = 334
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDocumnetos
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
      object ColCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
      end
      object ColDocumento: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Documento'
      end
      object ColDescripcion: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'descripcion'
      end
      object Coltipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
      end
      object ColNombre: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'NombreReporte'
      end
      object ColExtencion: TcxGridDBColumn
        DataBinding.FieldName = 'Extension'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 35
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1113
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
      Left = 312
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      TabOrder = 1
      Visible = False
      Width = 172
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
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
    inline frmBarraH11: TfrmBarraH1
      Left = 550
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 3
      ExplicitLeft = 550
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
  object cxSplitterDown: TcxSplitter
    Left = 0
    Top = 369
    Width = 1113
    Height = 8
    AlignSplitter = salBottom
    Visible = False
  end
  object zDocumentos: TUniQuery
    Left = 752
    Top = 208
  end
  object dsDocumnetos: TDataSource
    DataSet = zDocumentos
    Left = 840
    Top = 208
  end
  object dlgPDF: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 752
    Top = 264
  end
end
