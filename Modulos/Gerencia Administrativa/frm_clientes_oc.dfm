object frmClientesOC: TfrmClientesOC
  Left = 244
  Top = 219
  Caption = #211'rdenes de Compra Clientes'
  ClientHeight = 466
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 35
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = #211'rdenes de Compra Clientes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    inline frmBarraH11: TfrmBarraH1
      Left = 400
      Top = 1
      Width = 560
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 400
      ExplicitTop = 1
      ExplicitWidth = 560
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 560
        Height = 33
        ExplicitWidth = 560
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 4
          Height = 31
          ExplicitLeft = 4
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 84
          Height = 31
          ExplicitLeft = 84
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 159
          Height = 31
          ExplicitLeft = 159
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 399
          Height = 31
          ExplicitLeft = 399
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 479
          Height = 31
          ExplicitLeft = 479
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 239
          Height = 31
          ExplicitLeft = 239
          ExplicitTop = 1
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 319
          Height = 31
          ExplicitLeft = 319
          ExplicitHeight = 31
        end
      end
    end
  end
  object PanelCentro: TPanel
    Left = 0
    Top = 35
    Width = 961
    Height = 293
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 959
      Height = 285
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
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        object cxColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
        end
        object cxColumn2: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
        end
        object cxColumn3: TcxGridDBColumn
          Caption = 'Fecha'
        end
        object cxColumn4: TcxGridDBColumn
          Caption = 'Moneda'
        end
        object cxColumn5: TcxGridDBColumn
          Caption = 'Cantidad'
        end
        object cxColumn6: TcxGridDBColumn
          Caption = 'Proyecto'
          Visible = False
          GroupIndex = 1
        end
        object cxColumn7: TcxGridDBColumn
          Caption = 'Cliente'
          Visible = False
          GroupIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxSplitterInfo: TcxSplitter
      Left = 1
      Top = 286
      Width = 959
      Height = 6
      AlignSplitter = salBottom
    end
  end
  object PanelDown: TPanel
    Left = 0
    Top = 328
    Width = 961
    Height = 138
    Align = alBottom
    TabOrder = 2
    object PanelBotones: TPanel
      Left = 1
      Top = 103
      Width = 959
      Height = 34
      Align = alBottom
      TabOrder = 0
      inline frmBarraH21: TfrmBarraH2
        Left = 778
        Top = 1
        Width = 180
        Height = 32
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 778
        ExplicitTop = 1
        inherited Panel1: TPanel
          ExplicitHeight = 32
        end
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 959
      Height = 102
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object cxCliente: TcxDBLookupComboBox
        Left = 64
        Top = 38
        ParentFont = False
        Properties.ListColumns = <>
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
      object cxProyecto: TcxDBLookupComboBox
        Left = 64
        Top = 66
        ParentFont = False
        Properties.ListColumns = <>
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 145
      end
      object cxCodigo: TcxDBTextEdit
        Left = 64
        Top = 10
        ParentFont = False
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
      object cxFecha: TcxDBDateEdit
        Left = 325
        Top = 10
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 121
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
        CaptionOptions.Text = 'Cliente'
        Control = cxCliente
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Proyecto'
        Control = cxProyecto
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'C'#243'digo'
        Control = cxCodigo
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Fecha Ingreso O.C.'
        Control = cxFecha
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        Index = 0
        AutoCreated = True
      end
    end
  end
  object uOCClientes: TUniQuery
    Left = 40
    Top = 113
  end
  object uMonedas: TUniQuery
    Left = 40
    Top = 161
  end
  object uClientes: TUniQuery
    Left = 40
    Top = 209
  end
  object uProyectos: TUniQuery
    Left = 40
    Top = 265
  end
  object ds_OCClientes: TDataSource
    DataSet = uOCClientes
    Left = 120
    Top = 113
  end
  object ds_monedas: TDataSource
    DataSet = uMonedas
    Left = 120
    Top = 161
  end
  object ds_clientes: TDataSource
    DataSet = uClientes
    Left = 120
    Top = 209
  end
  object ds_proyectos: TDataSource
    DataSet = uProyectos
    Left = 120
    Top = 265
  end
end
