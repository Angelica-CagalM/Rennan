object frmSolicitudDetalle: TfrmSolicitudDetalle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'frmSolicitudDetalle'
  ClientHeight = 419
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1078
      35)
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Solicitud de Embarque Detalle'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object LabelProceso: TcxLabel
      Left = 323
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
      Left = 397
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Visible = False
      Width = 72
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 35
    Width = 1078
    Height = 384
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxGridSolicitudDetalle: TcxGridDBTableView
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
      OnCellDblClick = cxGridSolicitudDetalleCellDblClick
      DataController.DataSource = frmSolicitudDeMateriales.dsDetalleMaterial
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridSolicitudDetalleColumn1: TcxGridDBColumn
        Caption = 'Partida'
        DataBinding.FieldName = 'iItem'
        Options.Editing = False
        Width = 42
      end
      object cxGridSolicitudDetalleColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Options.Editing = False
        Width = 50
      end
      object cxGridSolicitudDetalleColumn3: TcxGridDBColumn
        Caption = 'Descripci'#243'n del Concepto'
        DataBinding.FieldName = 'mDescripcion'
        Options.Editing = False
        Width = 150
      end
      object cxGridSolicitudDetalleColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Dimensiones'
        Width = 50
      end
      object cxGridSolicitudDetalleColumn5: TcxGridDBColumn
        Caption = 'Peso (KG)'
        DataBinding.FieldName = 'Peso'
        Width = 50
      end
      object cxGridSolicitudDetalleColumn6: TcxGridDBColumn
        Caption = 'Fecha requerida de embarque'
        DataBinding.FieldName = 'dFechaRequerida'
        Options.Editing = False
        Width = 60
      end
      object cxGridSolicitudDetalleColumn7: TcxGridDBColumn
        Caption = 'Tipo de Material'
        DataBinding.FieldName = 'TipoMaterial'
        Options.Editing = False
        Width = 60
      end
      object cxGridSolicitudDetalleColumn8: TcxGridDBColumn
        Caption = 'N'#250'mero de Trazabilidad'
        DataBinding.FieldName = 'NumeroMaterial'
        Options.Editing = False
        Width = 60
      end
      object cxGridSolicitudDetalleColumn9: TcxGridDBColumn
        Caption = 'RIM'
        DataBinding.FieldName = 'codigoRim'
        Options.Editing = False
        Width = 50
      end
      object cxGridSolicitudDetalleColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Editing = False
        Width = 50
      end
      object cxGridSolicitudDetalleColumn11: TcxGridDBColumn
        Caption = 'Origen Embarque'
        DataBinding.FieldName = 'sIdPlataformaOrigen'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'sIdPlataforma'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = frmSolicitudDeMateriales.dsPlataforma
        Width = 60
      end
      object cxGridSolicitudDetalleColumn12: TcxGridDBColumn
        Caption = 'Destino Embarque'
        DataBinding.FieldName = 'sIdPlataformaDestino'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'sIdPlataforma'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcion'
          end>
        Properties.ListSource = frmSolicitudDeMateriales.dsPlataforma
        Width = 60
      end
      object cxGridSolicitudDetalleColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'Comentarios'
        Width = 100
      end
      object cxGridSolicitudDetalleColumn14: TcxGridDBColumn
        Caption = 'L'#243'gistica'
        DataBinding.FieldName = 'Logistica'
        Width = 60
      end
      object cxGridSolicitudDetalleColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'Embalaje'
        Width = 60
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridSolicitudDetalle
    end
  end
end
