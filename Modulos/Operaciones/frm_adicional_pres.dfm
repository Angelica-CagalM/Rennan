object frmAdicionalesPres: TfrmAdicionalesPres
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Adicionales Proyecto'
  ClientHeight = 509
  ClientWidth = 993
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
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = ' Recursos Adicionales por Proyecto'
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
  object PanelListado: TPanel
    Left = 0
    Top = 41
    Width = 233
    Height = 468
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxLeyenda2: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Listado de Proyectos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxGridProyectos: TcxGrid
      Left = 1
      Top = 24
      Width = 231
      Height = 443
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxViewProyectos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_listado
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxColumnL1: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          SortIndex = 0
          SortOrder = soDescending
        end
        object cxColumnL3: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sIdFolio'
          Options.Editing = False
        end
        object cxColumnL2: TcxGridDBColumn
          Caption = 'Centro de Costo'
          DataBinding.FieldName = 'EsCentroCosto'
          Visible = False
          Options.Editing = False
        end
      end
      object cxGridProyectosLevel1: TcxGridLevel
        GridView = cxViewProyectos
      end
    end
  end
  object PanelInfo: TPanel
    Left = 233
    Top = 41
    Width = 760
    Height = 468
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 7
      Top = 1
      Width = 752
      Height = 466
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabPresupuestado
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 464
      ClientRectLeft = 2
      ClientRectRight = 750
      ClientRectTop = 29
      object cxTabPresupuestado: TcxTabSheet
        Caption = 'Presupuestado'
        ImageIndex = 0
        object cxGridPresupuestado: TcxGrid
          Left = 0
          Top = 0
          Width = 748
          Height = 435
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridPresupuestadoView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_presupuestado
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.ColumnAutoWidth = True
            object cxColumnP1: TcxGridDBColumn
              Caption = 'Tipo Recurso'
              DataBinding.FieldName = 'TipoRecurso'
              Visible = False
              GroupIndex = 0
            end
            object cxColumnP2: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
            end
            object cxColumnP3: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'Descripcion'
            end
            object cxColumnP4: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
            end
            object cxColumnP5: TcxGridDBColumn
              Caption = 'Medida'
              DataBinding.FieldName = 'UMedida'
            end
          end
          object cxGridPresupuestadoLevel1: TcxGridLevel
            GridView = cxGridPresupuestadoView
          end
        end
      end
      object cxTabAdicional: TcxTabSheet
        Caption = 'Adicional'
        ImageIndex = 1
        object cxGridAdicional: TcxGrid
          Left = 0
          Top = 0
          Width = 748
          Height = 435
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridAdicionalView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_adicionales
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.ColumnAutoWidth = True
            object cxColumnA1: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CodigoMat'
            end
            object cxColumnA2: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'mDescripcion'
            end
            object cxColumnA3: TcxGridDBColumn
              Caption = 'Medida'
              DataBinding.FieldName = 'uMedida'
            end
            object cxColumnA4: TcxGridDBColumn
              Caption = 'Cantidad'
              DataBinding.FieldName = 'dCantidad'
            end
            object cxColumnA5: TcxGridDBColumn
              Caption = 'Orden de Compra'
              DataBinding.FieldName = 'cOrdenCompra'
              Visible = False
              GroupIndex = 0
            end
          end
          object cxGridAdicionalLevel1: TcxGridLevel
            GridView = cxGridAdicionalView
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 1
      Width = 6
      Height = 466
    end
  end
  object uListado: TUniQuery
    AfterScroll = uListadoAfterScroll
    Left = 48
    Top = 169
  end
  object ds_listado: TDataSource
    DataSet = uListado
    Left = 48
    Top = 225
  end
  object uPresupuestado: TUniQuery
    Left = 228
    Top = 183
  end
  object uAdicionales: TUniQuery
    Left = 516
    Top = 175
  end
  object ds_presupuestado: TDataSource
    DataSet = uPresupuestado
    Left = 228
    Top = 231
  end
  object ds_adicionales: TDataSource
    DataSet = uAdicionales
    Left = 516
    Top = 223
  end
end
