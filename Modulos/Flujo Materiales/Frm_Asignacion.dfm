object FrmAsignacion: TFrmAsignacion
  Left = 0
  Top = 0
  Caption = 'Asignados'
  ClientHeight = 594
  ClientWidth = 1148
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
  object PanelCentral: TPanel
    Left = 0
    Top = 35
    Width = 586
    Height = 559
    Align = alClient
    TabOrder = 0
    object Grid_Entradas: TcxGrid
      Left = 1
      Top = 1
      Width = 584
      Height = 557
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Grid_EntradasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Enabled = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Enabled = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellClick = Grid_EntradasDBTableView1CellClick
        DataController.DataSource = dsResguardo
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object Grid_EntradasDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 62
        end
        object Grid_EntradasDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 92
        end
        object Grid_EntradasDBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'Embarcacion'
          Width = 107
        end
        object Grid_EntradasDBTableView1Column6: TcxGridDBColumn
          Caption = 'Personal'
          DataBinding.FieldName = 'Nombre'
          Width = 126
        end
        object Grid_EntradasDBTableView1Column8: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 96
        end
        object Grid_EntradasDBTableView1Column10: TcxGridDBColumn
          DataBinding.FieldName = 'Comentario'
          Width = 95
        end
      end
      object Grid_EntradasLevel1: TcxGridLevel
        GridView = Grid_EntradasDBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1148
    Height = 35
    Align = alTop
    TabOrder = 1
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Asignados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnAdd: TcxButton
      Tag = 10
      Left = 987
      Top = 1
      Width = 80
      Height = 33
      Hint = 'Nuevo Registro'
      Align = alRight
      Caption = 'Devolver'
      OptionsImage.ImageIndex = 21
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnAddClick
    end
    object btnDetalle: TcxButton
      Left = 1067
      Top = 1
      Width = 80
      Height = 33
      Hint = 'Detalle de Registro Seleccionado'
      Align = alRight
      Caption = 'Detalle'
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnDetalleClick
    end
  end
  object PanelDetalle: TPanel
    Left = 592
    Top = 35
    Width = 556
    Height = 559
    Align = alRight
    TabOrder = 2
    Visible = False
    object PanelTop: TPanel
      Left = 1
      Top = 1
      Width = 554
      Height = 35
      Align = alTop
      TabOrder = 0
      object cxLeyenda2: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Material Asignado'
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
    end
    object GridPartidas: TcxGrid
      Left = 1
      Top = 36
      Width = 554
      Height = 487
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object GridPartidasView: TcxGridDBTableView
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
        DataController.DataSource = dsDetalle
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Options.Editing = False
          Width = 96
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'Insumo'
          Options.Editing = False
          Width = 202
        end
        object cxGridDBColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Options.Editing = False
          Width = 72
        end
        object GridPartidasViewColumn1: TcxGridDBColumn
          Caption = 'Fecha Entrega'
          DataBinding.FieldName = 'Fecha'
          Options.Editing = False
          Width = 83
        end
        object GridPartidasViewColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Options.Editing = False
          Width = 79
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = GridPartidasView
      end
    end
    object PanelDown: TPanel
      Left = 1
      Top = 523
      Width = 554
      Height = 35
      Align = alBottom
      TabOrder = 2
      Visible = False
      DesignSize = (
        554
        35)
      object cxCancelarDetalle: TcxButton
        Left = 456
        Top = 6
        Width = 84
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
        Left = 363
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
  object cxSplitterDetalle: TcxSplitter
    Left = 586
    Top = 35
    Width = 6
    Height = 559
    AlignSplitter = salRight
    Visible = False
  end
  object zResguardo: TUniQuery
    Left = 64
    Top = 147
  end
  object dsResguardo: TDataSource
    DataSet = zResguardo
    Left = 128
    Top = 147
  end
  object zDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 448
    Top = 147
  end
  object dsDetalle: TDataSource
    DataSet = zDetalle
    Left = 496
    Top = 147
  end
  object Busca: TUniQuery
    Connection = connection.Uconnection
    Left = 1024
    Top = 179
  end
end
