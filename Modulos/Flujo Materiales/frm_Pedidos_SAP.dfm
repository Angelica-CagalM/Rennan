object frmPedidos_SAP: TfrmPedidos_SAP
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordenes de Compra'
  ClientHeight = 581
  ClientWidth = 1326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1326
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 763
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 763
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        Align = alRight
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = frmBarra2btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = frmBarra2btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = frmBarra2btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          OnClick = Imprimir1Click
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
          OnClick = frmBarra2btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = #211'rdenes de Compra'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clHighlight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Height = 33
      Width = 256
    end
    object btnInfoD: TcxButton
      Left = 663
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Ver Datos'
      OptionsImage.ImageIndex = 108
      OptionsImage.Images = frmrepositorio.cxIconosMenus16
      TabOrder = 2
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnInfoDClick
    end
    object cxImportar: TcxButton
      Left = 417
      Top = 1
      Width = 132
      Height = 33
      Align = alLeft
      Caption = 'Importar PO SAP'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxImportarClick
    end
    object TsArchivo: TcxTextEdit
      Left = 210
      Top = 6
      Hint = 'Nombre de su archivo.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Visible = False
      Width = 41
    end
    object cxImportarOC: TcxButton
      Left = 257
      Top = 1
      Width = 160
      Height = 33
      Align = alLeft
      Caption = 'Importar O.C. SUBTEC'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxImportarOCClick
    end
    object cxConcentradoOC: TcxButton
      Left = 549
      Top = 1
      Width = 132
      Height = 33
      Align = alLeft
      Caption = 'Reporte OC'#39's'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxConcentradoOCClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 107
    Width = 1326
    Height = 474
    Align = alClient
    TabOrder = 2
    object PanelDatos: TPanel
      Left = 1
      Top = 120
      Width = 1324
      Height = 353
      Align = alBottom
      TabOrder = 0
      object PanelTopD: TPanel
        Left = 1
        Top = 317
        Width = 1322
        Height = 35
        Align = alBottom
        TabOrder = 0
        inline frmBarraH21: TfrmBarraH2
          Left = 1141
          Top = 1
          Width = 180
          Height = 33
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 1141
          ExplicitTop = 1
          ExplicitHeight = 33
          inherited Panel1: TPanel
            Height = 33
            Align = alRight
            ExplicitHeight = 33
            inherited btnPost: TcxButton
              Left = 5
              Top = 1
              Height = 31
              Align = alRight
              OnClick = frmBarra2btnPostClick
              ExplicitLeft = 5
              ExplicitTop = 1
              ExplicitHeight = 31
            end
            inherited btnCancel: TcxButton
              Left = 92
              Top = 1
              Height = 31
              Align = alRight
              OnClick = frmBarra2btnCancelClick
              ExplicitLeft = 92
              ExplicitTop = 1
              ExplicitHeight = 31
            end
          end
        end
      end
      object pgControl: TcxPageControl
        Left = 1
        Top = 1
        Width = 1322
        Height = 316
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Properties.ActivePage = ts1
        Properties.CustomButtons.Buttons = <>
        Properties.Images = connection.cxIconos16
        OnChange = pgControlChange
        ClientRectBottom = 314
        ClientRectLeft = 2
        ClientRectRight = 1320
        ClientRectTop = 30
        object ts1: TcxTabSheet
          Caption = 'Informaci'#243'n Orden Compra'
          ImageIndex = 1
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 1318
            Height = 284
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object cxProveedor: TcxDBLookupComboBox
              Left = 175
              Top = 69
              DataBinding.DataField = 'IdProveedor'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'IdProveedor'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = ds_proveedores
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              OnEnter = EnterControl
              OnExit = cxProveedorExit
              OnKeyUp = GlobalKeyUp
              Width = 398
            end
            object cxReferencia: TcxDBLookupComboBox
              Left = 175
              Top = 100
              DataBinding.DataField = 'sNumeroOrden'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'sNumeroOrden'
              Properties.ListColumns = <
                item
                  Caption = 'Proyecto'
                  FieldName = 'ProyectoN'
                end>
              Properties.ListSource = dsOrdenes
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
              Width = 310
            end
            object sLugarEntrega: TcxDBTextEdit
              Left = 175
              Top = 131
              DataBinding.DataField = 'sLugarEntrega'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 9
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 590
            end
            object btnProveedores: TcxButton
              Left = 782
              Top = 69
              Width = 25
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
              TabOrder = 5
              TabStop = False
              OnClick = btnProveedoresClick
            end
            object cxButton1: TcxButton
              Left = 491
              Top = 100
              Width = 25
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
              TabOrder = 7
              TabStop = False
              OnClick = cxButton1Click
            end
            object dxLayoutControl2: TdxLayoutControl
              Left = 813
              Top = 11
              Width = 494
              Height = 250
              TabOrder = 14
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object cxGroupBox1: TcxGroupBox
                Left = 11
                Top = 11
                Caption = 'Informaci'#243'n Moneda'
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
                Height = 203
                Width = 464
                object dxLayoutControl3: TdxLayoutControl
                  Left = 3
                  Top = 17
                  Width = 458
                  Height = 176
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  object cxIva: TcxDBCalcEdit
                    Left = 102
                    Top = 42
                    DataBinding.DataField = 'dIva'
                    DataBinding.DataSource = ds_anexo_ocompras
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
                    Width = 76
                  end
                  object cxRetencion: TcxDBCalcEdit
                    Left = 252
                    Top = 42
                    DataBinding.DataField = 'dRetencionIVa'
                    DataBinding.DataSource = ds_anexo_ocompras
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
                    Width = 62
                  end
                  object dCambio: TcxDBCurrencyEdit
                    Left = 389
                    Top = 42
                    DataBinding.DataField = 'dDescuento'
                    DataBinding.DataSource = ds_anexo_ocompras
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -12
                    Style.Font.Name = 'Arial'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    OnEnter = EnterControl
                    OnExit = SalidaControl
                    OnKeyUp = GlobalKeyUp
                    Width = 58
                  end
                  object idMoneda: TcxDBLookupComboBox
                    Left = 102
                    Top = 11
                    DataBinding.DataField = 'IdMoneda'
                    DataBinding.DataSource = ds_anexo_ocompras
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdMoneda'
                    Properties.ListColumns = <
                      item
                        FieldName = 'FK_Moneda'
                      end>
                    Properties.ListSource = ds_moneda
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
                    Width = 160
                  end
                  object cxButton3: TcxButton
                    Left = 422
                    Top = 11
                    Width = 25
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
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 1
                  end
                  object cxCuenta: TcxDBLookupComboBox
                    Left = 102
                    Top = 71
                    DataBinding.DataField = 'IdCuenta'
                    DataBinding.DataSource = ds_anexo_ocompras
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdCuenta'
                    Properties.ListColumns = <
                      item
                        FieldName = 'Cuenta'
                      end>
                    Properties.ListSource = ds_cuentas
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
                    Width = 145
                  end
                  object btnCuentas: TcxButton
                    Left = 422
                    Top = 71
                    Width = 25
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
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = connection.cxIconos16
                    TabOrder = 6
                    OnClick = btnCuentasClick
                  end
                  object cxFormaPago: TcxDBLookupComboBox
                    Left = 102
                    Top = 102
                    DataBinding.DataField = 'IdFormaPago'
                    DataBinding.DataSource = ds_anexo_ocompras
                    ParentFont = False
                    Properties.KeyFieldNames = 'IdFormaPago'
                    Properties.ListColumns = <
                      item
                        FieldName = 'sDescripcion'
                      end>
                    Properties.ListSource = ds_forma_pago
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
                    Width = 145
                  end
                  object dxLayoutGroup2: TdxLayoutGroup
                    AlignHorz = ahClient
                    AlignVert = avTop
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem18: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Impuesto IVA'
                    Control = cxIva
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem19: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignVert = avClient
                    CaptionOptions.Text = 'Retenci'#243'n'
                    Control = cxRetencion
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup2
                    LayoutDirection = ldHorizontal
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutItem15: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup5
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Descuento:'
                    Control = dCambio
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem14: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Moneda:'
                    SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                    SizeOptions.SizableHorz = False
                    SizeOptions.SizableVert = False
                    Control = idMoneda
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem26: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup8
                    AlignVert = avClient
                    CaptionOptions.Visible = False
                    Control = cxButton3
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup2
                    LayoutDirection = ldHorizontal
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem22: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Cuenta'
                    Control = cxCuenta
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem25: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignVert = avClient
                    CaptionOptions.Text = 'cxButton2'
                    CaptionOptions.Visible = False
                    Control = btnCuentas
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutGroup2
                    LayoutDirection = ldHorizontal
                    Index = 2
                    AutoCreated = True
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    Parent = dxLayoutGroup2
                    CaptionOptions.Text = 'Forma de Pago'
                    Control = cxFormaPago
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                end
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahRight
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                CaptionOptions.Visible = False
                Control = cxGroupBox1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
            object cxEntrega: TcxDBTextEdit
              Left = 659
              Top = 131
              DataBinding.DataField = 'sEntrega'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 10
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 239
            end
            object cxNota: TcxDBMemo
              Left = 175
              Top = 160
              DataBinding.DataField = 'mComentarios'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
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
              Height = 64
              Width = 675
            end
            object cxFirma: TcxDBLookupComboBox
              Left = 175
              Top = 230
              DataBinding.DataField = 'IdFirma'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'IdFirma'
              Properties.ListColumns = <
                item
                  FieldName = 'sDescripcion'
                end>
              Properties.ListSource = ds_firma
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 12
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 299
            end
            object btnFirma: TcxButton
              Left = 775
              Top = 230
              Width = 32
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
              TabOrder = 13
              OnClick = btnFirmaClick
            end
            object cxPlanta: TcxDBLookupComboBox
              Left = 566
              Top = 102
              DataBinding.DataField = 'IdPlanta'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'IdPlanta'
              Properties.ListColumns = <
                item
                  Caption = 'N'#250'mero'
                  FieldName = 'Numero'
                end
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsPlanta
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 145
            end
            object iIdFecha: TcxDBDateEdit
              Left = 175
              Top = 40
              DataBinding.DataField = 'dIdFecha'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyUp = GlobalKeyUp
              Width = 166
            end
            object dFechaEntrega: TcxDBDateEdit
              Left = 521
              Top = 40
              DataBinding.DataField = 'dFechaEntrega'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = dFechaEntregaExit
              OnKeyUp = GlobalKeyUp
              Width = 153
            end
            object sCodigo: TcxDBTextEdit
              Left = 175
              Top = 11
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = ds_anexo_ocompras
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
              Width = 166
            end
            object cxSolicitud: TcxDBTextEdit
              Left = 521
              Top = 11
              DataBinding.DataField = 'NumeroCotizacion'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 1
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 153
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
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              CaptionOptions.Text = 'Proveedor:'
              Control = cxProveedor
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Proyecto:'
              Control = cxReferencia
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Lugar de Entrega:'
              Control = sLugarEntrega
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avBottom
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnProveedores
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahRight
              Control = dxLayoutControl2
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Tiempo Entrega'
              Control = cxEntrega
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Notas'
              Control = cxNota
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              CaptionOptions.Text = 'Firma:'
              Control = cxFirma
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnFirma
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 6
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Text = 'Planta:'
              Control = cxPlanta
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Fecha Compra:'
              Control = iIdFecha
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha Entrega:'
              Control = dFechaEntrega
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'No. Orden de Compra (P.O.):'
              Control = sCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'No. Solicitud de Compra (P.R.)'
              Control = cxSolicitud
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 112
      Width = 1324
      Height = 8
      AlignSplitter = salBottom
    end
    object PanelTopDD: TPanel
      Left = 1
      Top = 1
      Width = 1324
      Height = 111
      Align = alClient
      TabOrder = 2
      object Grid_Entradas: TcxGrid
        Left = 1
        Top = 1
        Width = 754
        Height = 109
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dbg_OCVista: TcxGridDBTableView
          OnKeyUp = dbg_OCVistaKeyUp
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
          OnCellClick = dbg_OCVistaCellClick
          OnCellDblClick = dbg_OCVistaCellDblClick
          DataController.DataSource = ds_anexo_ocompras
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = dbg_OCVistaDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = dbg_OCVistaDataControllerFilterBeforeChange
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ' #,00.00'
              Kind = skSum
              Column = Col_montomn
            end
            item
              Format = 'Total Ordenes Compra'
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupRowHeight = 20
          OptionsView.Indicator = True
          object Col_ordenCompra: TcxGridDBColumn
            Caption = 'Orden Compra'
            DataBinding.FieldName = 'Codigo'
            Width = 127
          end
          object Col_fecha: TcxGridDBColumn
            Caption = 'Fecha PO'
            DataBinding.FieldName = 'dIdFecha'
            Width = 111
          end
          object Col_folio: TcxGridDBColumn
            Caption = 'Fecha Entrega'
            DataBinding.FieldName = 'dFechaEntrega'
            Width = 108
          end
          object dbg_OCVistaColumn1: TcxGridDBColumn
            Caption = 'No. Cotizaci'#243'n'
            DataBinding.FieldName = 'NumeroCotizacion'
            Width = 127
          end
          object Col_fechasuministro: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'NombreProveedor'
            Width = 270
          end
          object dbg_OCVistaColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Planta'
            Width = 101
          end
          object Col_Frente: TcxGridDBColumn
            Caption = 'Proyecto'
            DataBinding.FieldName = 'ProyectoN'
            Width = 123
          end
          object Col_montomn: TcxGridDBColumn
            Caption = 'Total O.C.'
            DataBinding.FieldName = 'dMontoMN'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 141
          end
          object Col_Moneda: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'TituloMoneda'
            Width = 81
          end
          object cxEstatus: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Width = 76
          end
        end
        object dbgLevOC: TcxGridLevel
          GridView = dbg_OCVista
        end
      end
      object PanelDetalle: TPanel
        Left = 763
        Top = 1
        Width = 560
        Height = 109
        Align = alRight
        TabOrder = 1
        object PanelDetalleT: TPanel
          Left = 1
          Top = 1
          Width = 558
          Height = 30
          Align = alTop
          TabOrder = 0
          object cxEliminarDetalle: TcxButton
            Tag = 12
            Left = 476
            Top = 1
            Width = 81
            Height = 28
            Align = alRight
            Caption = 'Eliminar'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = btnDeleteClick
          end
          object cxEditaDetalle: TcxButton
            Tag = 11
            Left = 395
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
            OnClick = btnEditClick
          end
          object cxNuevoDetalle: TcxButton
            Tag = 10
            Left = 314
            Top = 1
            Width = 81
            Height = 28
            Align = alRight
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = btnAddClick
          end
          object labelSeleccion: TcxLabel
            Left = 1
            Top = 1
            Align = alClient
            Caption = 'Seleccionado: '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clHighlight
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxCreaEntrada: TcxButton
            Tag = 10
            Left = 190
            Top = 1
            Width = 124
            Height = 28
            Align = alRight
            Caption = 'Generar Entrrada'
            OptionsImage.ImageIndex = 61
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxCreaEntradaClick
          end
        end
        object pgControlDetalle: TcxPageControl
          Left = 1
          Top = 31
          Width = 558
          Height = 77
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 75
          ClientRectLeft = 2
          ClientRectRight = 556
          ClientRectTop = 30
          object cxTabSheet2: TcxTabSheet
            Caption = 'Lista de Materiales'
            ImageIndex = 10
            object GridPartidas: TcxGrid
              Left = 0
              Top = 0
              Width = 554
              Height = 8
              Align = alClient
              TabOrder = 0
              object cxViewDetalleOC: TcxGridDBTableView
                PopupMenu = PopupPrincipal
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
                OnCellClick = cxViewDetalleOCCellClick
                OnCellDblClick = cxViewDetalleOCCellDblClick
                DataController.DataSource = ds_anexo_pocompras
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.TranslateBetween = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Total'
                    Kind = skCount
                    Column = Col_PrecioUnit
                  end
                  item
                    Format = '#,0.0000;-#,0.0000'
                    Kind = skSum
                    FieldName = 'dMontoMN'
                    Column = Col_Total
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.Indicator = True
                Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
                object Col_requisicion: TcxGridDBColumn
                  Caption = 'Requisicion'
                  DataBinding.FieldName = 'sNumFolio'
                  Width = 74
                end
                object Col_Partida: TcxGridDBColumn
                  Caption = 'Partida'
                  DataBinding.FieldName = 'sNumeroActividad'
                  Visible = False
                  Width = 71
                end
                object Col_idInsumo: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  Width = 77
                end
                object Col_Descripcion: TcxGridDBColumn
                  DataBinding.FieldName = 'Material'
                  Width = 183
                end
                object Col_Medida: TcxGridDBColumn
                  DataBinding.FieldName = 'Medida'
                  Width = 48
                end
                object Col_Cantidad: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 49
                end
                object Col_PrecioUnit: TcxGridDBColumn
                  Caption = 'Precio U.'
                  DataBinding.FieldName = 'dCosto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '$,0.0000;-$,0.0000'
                  Width = 56
                end
                object Col_Total: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'dMontoMN'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '$,0.0000;-$,0.0000'
                  Width = 50
                end
                object Col_Descuento: TcxGridDBColumn
                  Caption = 'Descuento'
                  DataBinding.FieldName = 'dMontoDescuento'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.ReadOnly = True
                  Width = 43
                end
                object Col_Estatus: TcxGridDBColumn
                  Caption = 'Estatus'
                  DataBinding.FieldName = 'sStatus'
                  Width = 55
                end
              end
              object dbg2: TcxGridLevel
                GridView = cxViewDetalleOC
              end
            end
            object cxSplitMaterial: TcxSplitter
              Left = 0
              Top = -58
              Width = 554
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelMaterial: TPanel
              Left = 0
              Top = -50
              Width = 554
              Height = 95
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl6: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 552
                Height = 93
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxFechaEntregaMat: TcxDBDateEdit
                  Left = 96
                  Top = 11
                  DataBinding.DataField = 'FechaEntrega'
                  DataBinding.DataSource = ds_anexo_pocompras
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Aril'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  OnKeyUp = GlobalKeyUp
                  Width = 105
                end
                object cxEntregaMaterial: TcxDBMemo
                  Left = 242
                  Top = 11
                  DataBinding.DataField = 'sTiempoEntrega'
                  DataBinding.DataSource = ds_anexo_pocompras
                  ParentFont = False
                  Properties.ScrollBars = ssVertical
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
                  Height = 38
                  Width = 283
                end
                object cxGuardaMaterial: TcxButton
                  Left = 366
                  Top = 55
                  Width = 84
                  Height = 25
                  Caption = 'Guardar'
                  OptionsImage.ImageIndex = 2
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 2
                  OnClick = cxGuardaMaterialClick
                end
                object cxCancelaMaterial: TcxButton
                  Left = 456
                  Top = 55
                  Width = 85
                  Height = 25
                  Caption = 'Cancelar'
                  OptionsImage.ImageIndex = 3
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 3
                  OnClick = cxCancelaMaterialClick
                end
                object dxLayoutControl6Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem40: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup13
                  CaptionOptions.Text = 'Fecha entrega'
                  Control = cxFechaEntregaMat
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem35: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup13
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Text = 'Nota:'
                  Control = cxEntregaMaterial
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem37: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup14
                  AlignHorz = ahRight
                  AlignVert = avTop
                  CaptionOptions.Text = 'cxButton5'
                  CaptionOptions.Visible = False
                  Control = cxGuardaMaterial
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl6Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutItem36: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup14
                  AlignHorz = ahRight
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton4'
                  CaptionOptions.Visible = False
                  Control = cxCancelaMaterial
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl6Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
              end
            end
          end
          object tabInforme: TcxTabSheet
            Caption = 'Informe'
            ImageIndex = 31
            OnShow = tabInformeShow
            object PanelSuperiorInforme: TPanel
              Left = 0
              Top = 0
              Width = 554
              Height = 45
              Align = alClient
              TabOrder = 0
              object dxLayoutControl4: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 546
                Height = 37
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object opcionImprimir: TcxRadioGroup
                  Left = 11
                  Top = 11
                  Caption = 'Tipo de Reporte'
                  ParentFont = False
                  Properties.Items = <
                    item
                      Caption = 'Imprimir datos filtrados'
                      Value = '1'
                    end
                    item
                      Caption = 'Imprimir datos filtrados con detalles'
                      Value = '2'
                    end>
                  TabOrder = 0
                  Height = 126
                  Width = 495
                end
                object btnImpInforme: TcxButton
                  Left = 373
                  Top = 143
                  Width = 145
                  Height = 25
                  Caption = 'Imprimir'
                  OptionsImage.ImageIndex = 5
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 1
                  OnClick = btnImpInformeClick
                end
                object cxComprasxProveedor: TcxButton
                  Left = 11
                  Top = 203
                  Width = 174
                  Height = 35
                  Caption = 'Compras x Proveedor'
                  OptionsImage.ImageIndex = 27
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 4
                  OnClick = cxComprasxProveedorClick
                end
                object cxCentroCostoxCompras: TcxButton
                  Left = 11
                  Top = 244
                  Width = 174
                  Height = 35
                  Caption = 'Compras Vs Presupuesto'
                  OptionsImage.ImageIndex = 67
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 5
                  OnClick = cxCentroCostoxComprasClick
                end
                object FechaInicio: TcxDateEdit
                  Left = 86
                  Top = 174
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 121
                end
                object FechaFin: TcxDateEdit
                  Left = 276
                  Top = 174
                  ParentFont = False
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 121
                end
                object cxGraficaPresupuesto: TcxButton
                  Left = 11
                  Top = 285
                  Width = 174
                  Height = 35
                  Caption = 'Gr'#225'fico Presupuestado'
                  OptionsImage.ImageIndex = 66
                  OptionsImage.Images = connection.cxIconos16
                  TabOrder = 7
                  OnClick = cxGraficaPresupuestoClick
                end
                object cxCheckAgrupa: TcxCheckBox
                  Left = 191
                  Top = 244
                  Caption = 'Agrupado por Proveedor'
                  ParentFont = False
                  State = cbsChecked
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
                object dxLayoutGroup1: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem30: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  CaptionOptions.Text = 'cxRadioGroup1'
                  CaptionOptions.Visible = False
                  Control = opcionImprimir
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem31: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahRight
                  CaptionOptions.Text = 'cxButton1'
                  CaptionOptions.Visible = False
                  Control = btnImpInforme
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem41: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxComprasxProveedor
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem42: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup12
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxButton4'
                  CaptionOptions.Visible = False
                  Control = cxCentroCostoxCompras
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem44: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Fecha Inicio:'
                  Control = FechaInicio
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem43: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup11
                  AlignHorz = ahLeft
                  AlignVert = avBottom
                  CaptionOptions.Text = 'Fecha Fin:'
                  Control = FechaFin
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup1
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutItem45: TdxLayoutItem
                  Parent = dxLayoutGroup1
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = cxGraficaPresupuesto
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object dxLayoutItem46: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup12
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  Control = cxCheckAgrupa
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutGroup1
                  LayoutDirection = ldHorizontal
                  Index = 4
                  AutoCreated = True
                end
              end
            end
          end
        end
      end
      object cxSplitterD: TcxSplitter
        Left = 755
        Top = 1
        Width = 8
        Height = 109
        AlignSplitter = salRight
      end
    end
  end
  object panelInsumos: TPanel
    Left = 643
    Top = 130
    Width = 497
    Height = 279
    TabOrder = 0
    Visible = False
    object Grid_Insumos: TcxGrid
      Left = 1
      Top = 41
      Width = 495
      Height = 150
      Align = alClient
      TabOrder = 0
      object Grid_InsumosView: TcxGridDBTableView
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
        OnCellClick = Grid_InsumosViewCellClick
        OnCellDblClick = Grid_InsumosViewCellDblClick
        DataController.DataSource = ds_insumo
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object Grid_InsumosViewColumn2: TcxGridDBColumn
          Caption = 'Requisicion'
          DataBinding.FieldName = 'sNumFolio'
          Width = 72
        end
        object Col_dbgGrid_InsumosViewColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 67
        end
        object Col_dbgGrid_InsumosViewColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Material'
          Width = 205
        end
        object Col_dbgGrid_InsumosViewColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Width = 39
        end
        object Grid_InsumosViewColumn1: TcxGridDBColumn
          Caption = 'Cantidad Req.'
          DataBinding.FieldName = 'Faltante'
          Width = 60
        end
        object Col_dbgGrid_InsumosViewColumn6: TcxGridDBColumn
          Caption = 'Costo M.N.'
          DataBinding.FieldName = 'dCosto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 38
        end
      end
      object dbgGrid_InsumosLevel1: TcxGridLevel
        GridView = Grid_InsumosView
      end
    end
    object ListaPanelGuardar: TPanel
      Left = 1
      Top = 243
      Width = 495
      Height = 35
      Align = alBottom
      TabOrder = 1
      object btnPost: TcxButton
        Left = 320
        Top = 1
        Width = 87
        Height = 33
        Hint = 'Salvar cambios (F10)'
        Align = alRight
        Caption = 'Agregar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 0
        OnClick = frmBarra1btnPostClick
      end
      object btnCancel: TcxButton
        Left = 407
        Top = 1
        Width = 87
        Height = 33
        Hint = 'Cancelar cambios (F12)'
        Align = alRight
        Caption = 'Cancelar'
        ModalResult = 2
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
    object PanelListaTitulo: TPanel
      Left = 1
      Top = 1
      Width = 495
      Height = 40
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object cxLeyenda2: TcxLabel
        Left = 10
        Top = 7
        Caption = 'Lista de Materiales'
        ParentColor = False
        ParentFont = False
        Style.Color = clNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object PaneListaDatos: TPanel
      Left = 1
      Top = 191
      Width = 495
      Height = 52
      Align = alBottom
      TabOrder = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 493
        Height = 50
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object tdCantidad: TcxCalcEdit
          Left = 67
          Top = 11
          EditValue = 0.000000000000000000
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
          Width = 110
        end
        object tdCostoNuevo: TcxCurrencyEdit
          Left = 224
          Top = 11
          ParentFont = False
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = '$,0.0000;-$,0.0000'
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
          Width = 121
        end
        object tDescuentoMat: TcxCurrencyEdit
          Left = 427
          Top = 11
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
          Width = 115
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem29: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'Cantidad'
          Control = tdCantidad
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem32: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahRight
          CaptionOptions.Text = 'Precio'
          Control = tdCostoNuevo
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem33: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Text = 'Descuento $'
          Control = tDescuentoMat
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  object PanelProgreso: TPanel
    Left = 0
    Top = 35
    Width = 1326
    Height = 22
    Align = alTop
    TabOrder = 3
    Visible = False
    object LabelProceso: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = 'Procesando'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Visible = False
      Height = 20
      Width = 104
    end
    object progreso: TcxProgressBar
      Left = 105
      Top = 1
      Align = alClient
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      Width = 1220
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 1326
    Height = 50
    Align = alTop
    TabOrder = 4
    object dxLayoutControl7: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1324
      Height = 48
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
      object btnLimpiarF: TcxButton
        Left = 1207
        Top = 11
        Width = 106
        Height = 25
        Caption = 'Limpiar Filtro'
        OptionsImage.ImageIndex = 62
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 4
        OnClick = btnLimpiarFClick
      end
      object cxFiltroRequerido: TcxButton
        Left = 281
        Top = 11
        Width = 71
        Height = 25
        Caption = 'Filtrar'
        OptionsImage.ImageIndex = 63
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxFiltroRequeridoClick
      end
      object cxInicioRequerido: TcxDateEdit
        Left = 46
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 100
      end
      object cxFinRequerido: TcxDateEdit
        Left = 175
        Top = 12
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 100
      end
      object cxImprimeNota: TcxCheckBox
        Left = 1041
        Top = 11
        Caption = 'Incluye notas por Partida '
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
      end
      object dxLayoutGroup3: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnLimpiarF
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxFiltroRequerido
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem27: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Inicio'
        Control = cxInicioRequerido
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem28: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avCenter
        CaptionOptions.Text = 'Fin'
        Control = cxFinRequerido
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxImprimeNota
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object ds_anexo_ocompras: TDataSource
    AutoEdit = False
    DataSet = anexo_ocompras
    Left = 392
    Top = 59
  end
  object ds_anexo_pocompras: TDataSource
    AutoEdit = False
    DataSet = anexo_pocompras
    Left = 504
    Top = 58
  end
  object frxEntrada: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.429600810200000000
    ReportOptions.LastChange = 43825.414932013890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure GroupFooter4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo27.Text := FormatFloat('#39'#,##0.00'#39',(<frxOrdenCompra."dCos' +
        'to">*<frxOrdenCompra."dCantidad">))'
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ''
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo26.Text := FormatFloat('#39',#0.00'#39',(<frxOrdenCompra."dCosto"' +
        '>))'
      'end;'
      ''
      'begin'
      ''
      ''
      ''
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 312
    Top = 440
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxOrdenCompra
        DataSetName = 'frxOrdenCompra'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 979.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 1084.725110000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
        object Memo11: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 64.251968500000000000
          Width = 92.598454490000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ord Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 156.850422990000000000
          Width = 68.031503390000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 224.881933700000000000
          Width = 275.905511810000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Description')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 501.039370080000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Net Value')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677167800000000000
        Top = 1130.079470000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxOrdenCompra
        DataSetName = 'frxOrdenCompra'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '000[Line#]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.251968500000000000
          Width = 92.598454490000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."dCantidad"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 156.850422990000000000
          Width = 68.031503390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Medida"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 224.881933700000000000
          Width = 275.905511810000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxOrdenCompra."mDescripcion"]'
            
              '[IIF(<IMPRIME_NOTA> = '#39'Si'#39',#13+<frxOrdenCompra."ComentarioStatus' +
              '">+#13,'#39#39')]'
            'Deliv. date: [frxOrdenCompra."sTiempoEntrega"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          Left = 501.165354330000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxOrdenCompra."dCosto"> ]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxOrdenCompra."dCosto">*<frxOrdenCompra."dCantidad">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 1727.245195350000000000
        Top = 1262.363020000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Stretched = True
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 22.677179999999910000
          Width = 716.220782440000000000
          Height = 642.520085350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'La cotizaci'#243'n aplicar'#225' a esta Orden de Compra en lo que respecta' +
              ' a precio y alcance del servicio '#250'nicamente, y cualquier otro t'#233 +
              'rmino o condici'#243'n contenido en dichas'
            
              'cotizaciones es aqu'#237' revocado y reemplazado en su totalidad por ' +
              'los t'#233'rminos y condiciones de Subsea 7 aqu'#237' se'#241'alados: FO-GL-SCM' +
              '-016.'
            ''
            'Las facturas deber'#225'n enviarse a InvoiceAPMex@Subsea7.com'
            ''
            
              'Por favor facture de acuerdo a la Orden de Compra adjunta, con l' +
              'as mismas partidas, descripciones y cantidades, no se debe inclu' +
              'ir m'#225's de una Orden de Compra por factura. Cualquier desviaci'#243'n ' +
              'a lo anterior retrasar'#225' el ciclo de proceso de su factura y pued' +
              'e potencialmente retrasar su pago.'
            ''
            
              'La factura deber'#225' indicar en su texto en caso de Maquinaria, equ' +
              'ipos y materiales permanentes ya sea renta o suministro: N'#250'mero ' +
              'de serie, n'#250'mero de parte, N'#250'mero'
            
              'econ'#243'mico, TAG, Marca y/o Modelo, N'#250'mero de pedimento, pa'#237's de o' +
              'rigen, todo aquello que aplique para identificar y relacionar de' +
              ' manera clara el material f'#237'sicamente con la factura y toda esta' +
              ' informaci'#243'n tambi'#233'n deber'#225' estar indicada en los documentos de ' +
              'entrega de los bienes ya que de no tenerlos almac'#233'n no podr'#225' rec' +
              'ibirlos.'
            ''
            
              'Para todos los proveedores deber'#225'n enviar v'#237'a electr'#243'nica para l' +
              'a recepci'#243'n de sus'
            'facturas la siguiente informaci'#243'n:'
            ''
            '- Factura'
            '- Archivo Xml'
            '- Remisi'#243'n y/o factura sellada y firmada por almac'#233'n.'
            '- Orden de compra.'
            ''
            
              'Se deber'#225'n apegar a los horarios y reglamentos de seguridad de e' +
              'ntrega en almac'#233'n, as'#237' tambi'#233'n cuando se traten de servicios con' +
              ' personal Offshore (se anexa oficio).'
            ''
            
              'Con el fin de eliminar retrasos adicionales en el pago, la factu' +
              'ra deber'#225' indicar claramente la Compa'#241#237'a Subsea 7 seg'#250'n la Orden' +
              ' de Compra y deber'#225' incluir el n'#250'mero de Orden de Compra, Nombre' +
              ' de Proyecto y de Embarcaci'#243'n, cuando aplique.'
            ''
            
              'Si su servicios o materiales adicionales son solicitados pero no' +
              ' se han acompa'#241'ado con una orden de compra revisada, por favor c' +
              'ontacte al firmante para obtener aprobaci'#243'n de los mismos por el' +
              ' proyecto y agregarlos a esta orden de compra. La omisi'#243'n de lo ' +
              'anterior ocasionar'#225' retraso en el pago de su factura.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Width = 716.220782440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Terms of delivery')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 699.213050000000100000
          Width = 716.220782440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'Shipping instructions')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 721.890230000000000000
          Width = 716.220782440000000000
          Height = 1001.575435350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'El proveedor es responsable de lo siguiente:'
            ''
            
              'Todos los bienes deber'#225'n etiquetarse con toda la correspondencia' +
              ' relacionada con esta orden de compra y deber'#225'n hacer referencia' +
              ' a los siguientes detalles: Subsea 7 M'#233'xico | REQ. 6482S1256|108' +
              '99641 PO 4400015609. Esta informaci'#243'n necesita colocarse donde s' +
              'ea f'#225'cilmente identificable por el receptor'
            ''
            
              'Proporcionar copias electr'#243'nicas de las Hojas de Datos de Seguri' +
              'dad del material apropiadas, antes del embarque de los bienes, c' +
              'uando aplique.'
            ''
            
              'Entregar copias electr'#243'nicas de Certificados de Conformidad, o C' +
              'ertificados que identifiquen cualquier informaci'#243'n que sea relev' +
              'ante a la operaci'#243'n o el manejo de los'
            'bienes, y todos los Certificados de Calidad de relevancia.'
            ''
            
              'Proporcionar un aviso de embarque as'#237' como la informaci'#243'n de ras' +
              'treo y documentaci'#243'n requeridas.'
            ''
            
              'Notificar a Subsea 7 contra entrega de los bienes, y proporciona' +
              'r Comprobante de Entrega electr'#243'nico.'
            ''
            
              'Proporcionar, cuando as'#237' apliqu'#233', la documentaci'#243'n necesaria par' +
              'a importaci'#243'n-exportaci'#243'n. Subsea 7 deber'#225' notificar al proveedo' +
              'r cuando los bienes ser'#225'n importados o exportados.'
            ''
            
              'Si tiene cualquier duda o requiere de mayor asistencia, por favo' +
              'r contacte al aqu'#237' firmante.'
            ''
            
              'Para en caso de materiales y equipos que sea necesario el uso de' +
              ' gr'#250'a, Hiab o Montacargas y que no est'#233' al alcance de su propues' +
              'ta deber'#225' avisar al almac'#233'n y al comprador con 24 horas de antic' +
              'ipaci'#243'n, para que se programe la disposici'#243'n de los mismos, en l' +
              'os horarios previos establecidos.'
            ''
            
              'Todos los materiales deber'#225'n venir debidamente embalados e ident' +
              'ificados con su trazabilidad que le corresponda.'
            ''
            
              'Los proveedores deber'#225'n presentar el documento de contenido naci' +
              'onal anexo. Para el caso de equipo favor de revisar el Check lis' +
              't anexo para evitar retrasos en la'
            'recepci'#243'n.'
            ''
            
              'Para entrega de material al almac'#233'n el personal deber'#225' traer su ' +
              'equipo EPP para permitirles el acceso.'
            ''
            
              'POR FAVOR CONFIRME LA RECEPCI'#211'N DE ESTA ORDEN DE COMPRA DENTRO D' +
              'E LAS SIGUIENTES 24 HORAS, PASADO ESTE TIEMPO SE DA COMO ACEPTAD' +
              'O LA ORDEN DE COMPRA Y SUS TERMINOS Y'
            'CONDICIONES QUE APLIQUE.'
            ''
            
              '"NOTA: Si el servicio solicitado en esta P.O., es realizado dent' +
              'ro de las instalaciones bajo control de Subsea 7, el proveedor a' +
              ' quien se manda esta P.O. ser'#225' responsable de cualquier da'#241'o cau' +
              'sado como consecuencia del servicio realizado, as'#237' mismo debe de' +
              ' retirar todos los materiales utilizados y todos aquellos residu' +
              'os generados, aplica tambi'#233'n cualquier da'#241'o ocasionado en la ent' +
              'rega de material si hay una mala maniobra por parte del proveedo' +
              'r que cause un da'#241'o a las instalaciones."'
            ''
            
              'Para el caso de alg'#250'n incumplimiento por parte de su representad' +
              'a ya sea en su tiempo de entrega, procesos, documentaci'#243'n no pre' +
              'sentada en tiempo y forma, incumplimiento de lineamientos de HSE' +
              ', operaciones, calidad y SCM, de manera conciliada se realizar'#225' ' +
              'una penalizaci'#243'n que no podr'#225' ser mayor al 5% del valor total de' +
              ' la P.O.'
            ''
            
              'Los d'#237'as de cr'#233'dito contaran a partir de que la factura sea conf' +
              'irmada de recibido por INVOICEAPMEX@SUBSEA7.COM')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Top = 1062.047930000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Top = 1039.370750000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Top = 1016.693570000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 3012.285410000000000000
        Width = 740.409927000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 51.338590000000000000
        Top = 3076.537420000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Memo32: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779529999999795000
          Width = 262.677182440000000000
          Height = 37.795285350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Signed and Approved by:')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 850.394201180000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 550.488560000000000000
          Top = 3.779530000000001000
          Width = 174.458192930000000000
          Height = 52.913371180000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Frame.Style = fsDouble
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Top = 117.165430000000000000
          Width = 368.503937010000000000
          Height = 170.078801180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxOrdenCompra."RazonSocial"]'
            
              '[<frxOrdenCompra."Calle"> +'#39' '#39'+ <frxOrdenCompra."Interior"> +'#39' '#39 +
              '+<frxOrdenCompra."Exterior">+'#39' '#39'+ <frxOrdenCompra."Colonia">+'#39' C' +
              '.P. '#39'+ <frxOrdenCompra."CodigoPostal"> +'#39' '#39'+<frxOrdenCompra."Ciu' +
              'dad">+'#39' '#39'+ <frxOrdenCompra."Estado">] ')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 518.575140000000000000
          Top = 60.472480000000000000
          Width = 208.196435500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            'Page [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 219.771800000000000000
          Top = 26.456710000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Purchase Order')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo50: TfrxMemoView
          Left = 219.771800000000000000
          Top = 59.692950000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'PO Date:[frxOrdenCompra."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 8.118120000000000000
          Top = 37.015770000000010000
          Width = 200.637375500000000000
          Height = 41.574781180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'PO Number: [frxOrdenCompra."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 98.267780000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SELLER COMPANY')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo56: TfrxMemoView
          Left = 368.503937010000000000
          Top = 117.165430000000000000
          Width = 368.503937010000000000
          Height = 79.370081180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo57: TfrxMemoView
          Left = 368.503937007874000000
          Top = 98.267780000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BUYER COMPANY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 321.260050000000000000
          Width = 368.503937010000000000
          Height = 154.960681180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            ''
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 287.244280000000000000
          Width = 368.503937010000000000
          Height = 15.118071180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SHIP TO ADDRESS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 368.503937010000000000
          Top = 306.141930000000000000
          Width = 368.503937010000000000
          Height = 170.078801180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            ''
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 368.503937007874000000
          Top = 287.244280000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INVOICE ADDRESS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 302.362400000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'As Follow unless otherwise especified at line item level')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 368.503937010000000000
          Top = 196.535560000000000000
          Width = 368.503937010000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Buyer Contact Datails')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 368.503937010000000000
          Top = 215.433210000000000000
          Width = 368.503937010000000000
          Height = 71.811021180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sucursal'
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo59: TfrxMemoView
          Top = 476.220780000000000000
          Width = 368.503937010000000000
          Height = 34.015721180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Delivery Terms/Trade Terms:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 368.614410000000000000
          Top = 476.220780000000000000
          Width = 368.503937010000000000
          Height = 34.015721180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Currency'
            '[frxOrdenCompra."Moneda"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 510.236549999999900000
          Width = 731.338817010000000000
          Height = 83.149611180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Note:'
            
              'All correspondence and/or concerting this purchase order must in' +
              'clude the purchase order and line item number.'
            'Payment terms: Net 30 Days from inv. receipt')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 593.386210000000000000
          Width = 716.220697010000000000
          Height = 226.771751180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Toda la correspondencia relacionada a esta orden de compra debe ' +
              'hacer referencia a los siguientes detalles: [frxOrdenCompra."Raz' +
              'onSocial"]/ Solicitud de Compra [frxOrdenCompra."NumeroCotizacio' +
              'n"] Solicitante Original: JUAN CASTELLANOS'
            ''
            
              'Todo servicio tendr'#225' un plazo no mayor a 60 d'#237'as posterior en ha' +
              'berse realizado y/o enviado la P.O. para la presentaci'#243'n de su e' +
              'stimaci'#243'n para su aprobaci'#243'n, posterior a dicho periodo no se po' +
              'dr'#225' regularizar no se conceder'#225' ning'#250'n servicio.'
            ''
            
              'Se tendr'#225' como limite los primeros 20 d'#237'as de cada mes para que ' +
              'el proveedor presente su estimaci'#243'n liberada y firmada al depart' +
              'amento de "Servicios de Proyectos" para la autorizaci'#243'n de factu' +
              'ra.'
            ''
            
              'Favor de enviar los T&C firmados en caso de no mandarlos en 24 h' +
              'oras ser'#225'n tomados como aceptados.')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 7.559060000000000000
          Top = 823.937540000000000000
          Width = 731.338817010000000000
          Height = 22.677131180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Account Queries and Statements, email to S7US_AP@subsea7.com')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 891.969080000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Memo9: TfrxMemoView
          Left = 518.016080000000000000
          Top = 31.574830000000020000
          Width = 208.196435500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            'Page [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 219.212740000000000000
          Top = 2.559060000000045000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'Purchase Order')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo55: TfrxMemoView
          Left = 219.212740000000000000
          Top = 30.795300000000000000
          Width = 249.771265500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'PO Date:[frxOrdenCompra."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.795300000000000000
          Width = 211.975965500000000000
          Height = 18.897601180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'PO Number: [frxOrdenCompra."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 1175.433830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Stretched = True
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.558784170000000000
          Width = 100.535450160000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677179999999910000
          Width = 701.102662440000000000
          Height = 37.795285350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxOrdenCompra."mDescripcion"]'
            ''
            '[frxOrdenCompra."sTiempoEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ds_proveedores: TDataSource
    AutoEdit = False
    DataSet = Proveedores
    Left = 1042
    Top = 62
  end
  object OpenXLS: TOpenDialog
    OnClose = OpenXLSClose
    DefaultExt = 'XLS;xlsx'
    Filter = 
      'Archivo de Microsoft Excel 2003|*.XLS|Archivo de Microsoft Excel' +
      ' |*.XLSX'
    OnFolderChange = OpenXLSFolderChange
    OnSelectionChange = OpenXLSSelectionChange
    Left = 376
    Top = 434
  end
  object dtsPartidas: TDataSource
    AutoEdit = False
    DataSet = Partidas
    Left = 772
    Top = 57
  end
  object ds_insumo: TDataSource
    AutoEdit = False
    DataSet = Insumos
    Left = 551
    Top = 62
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 196
    Top = 513
  end
  object frxPrecios: TfrxDBDataset
    UserName = 'frxPrecios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdInsumo=sIdInsumo'
      'mDescripcion=mDescripcion'
      'sIdProveedor=sIdProveedor'
      'dFecha1=dFecha1'
      'dFecha2=dFecha2'
      'dFecha3=dFecha3'
      'dFecha4=dFecha4'
      'dFecha5=dFecha5'
      'dFecha6=dFecha6'
      'dFecha7=dFecha7'
      'dFecha8=dFecha8'
      'dCosto1=dCosto1'
      'dCosto2=dCosto2'
      'dCosto3=dCosto3'
      'dCosto4=dCosto4'
      'dCosto5=dCosto5'
      'dCosto6=dCosto6'
      'dCosto7=dCosto7'
      'dCosto8=dCosto8'
      'Item=Item'
      'sOrdenCompra1=sOrdenCompra1'
      'sOrdenCompra2=sOrdenCompra2'
      'sOrdenCompra3=sOrdenCompra3'
      'sOrdenCompra4=sOrdenCompra4'
      'sOrdenCompra5=sOrdenCompra5'
      'sOrdenCompra6=sOrdenCompra6'
      'sOrdenCompra7=sOrdenCompra7'
      'sOrdenCompra8=sOrdenCompra8')
    BCDToCurrency = False
    Left = 243
    Top = 438
  end
  object styleGrid: TcxStyleRepository
    Scalable = True
    Left = 428
    Top = 440
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 233
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      Visible = False
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
      Visible = False
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
      Visible = False
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 4
      ShortCut = 122
      Visible = False
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ImageIndex = 11
      ShortCut = 16451
      Visible = False
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ImageIndex = 12
      ShortCut = 16470
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      Visible = False
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      Visible = False
    end
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      ImageIndex = 5
      Visible = False
      OnClick = Imprimir1Click
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      Visible = False
    end
    object VerAccesorios1: TMenuItem
      Caption = 'Agregar Accesorios'
      ImageIndex = 41
      OnClick = VerAccesorios1Click
    end
    object ActualizarnotasporPartida1: TMenuItem
      Caption = 'Actualizar notas por Partida'
      ImageIndex = 6
      OnClick = ActualizarnotasporPartida1Click
    end
  end
  object cxmglst1: TcxImageList
    FormatVersion = 1
    DesignInfo = 34079368
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 488
    Top = 432
  end
  object datasetfrximgfirmas: TfrxDBDataset
    UserName = 'datasetfrximgfirmas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'bimagen14=bimagen14'
      'bimagen16=bimagen16'
      'bImagen14Sello=bImagen14Sello')
    DataSet = zimgfirmas
    BCDToCurrency = False
    Left = 576
    Top = 528
  end
  object dsOrdenes: TDataSource
    DataSet = zqOrdenes
    Left = 600
    Top = 64
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 144
    Top = 512
  end
  object Insumos: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = InsumosAfterScroll
    Left = 544
    Top = 111
  end
  object Partidas: TUniQuery
    Connection = connection.Uconnection
    Left = 768
    Top = 104
  end
  object anexo_ocompras: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 392
    Top = 104
  end
  object zimgfirmas: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'SELECT bimagen14,bimagen16,bImagen14Sello FROM firmas WHERE sCon' +
        'trato = :contrato '
      'and sNumeroOrden =:Orden AND '
      'dIdFecha <= :fecha ORDER BY dIdFecha DESC')
    Left = 872
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        Value = nil
      end>
  end
  object zqDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 648
    Top = 104
  end
  object anexo_pocompras: TUniQuery
    Connection = connection.Uconnection
    Left = 500
    Top = 104
  end
  object Proveedores: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select RazonSocial as sRazon, IdProveedor as sIdProveedor, Nombr' +
        'e as sVendedor, '#39#39' as sEmail '
      'from master_proveedores '
      'Order by sRazon             ')
    Left = 1044
    Top = 112
  end
  object zqOrdenes: TUniQuery
    Connection = connection.Uconnection
    Left = 596
    Top = 102
  end
  object forma_pago: TUniQuery
    Connection = connection.Uconnection
    Left = 264
    Top = 512
  end
  object ds_forma_pago: TDataSource
    AutoEdit = False
    DataSet = forma_pago
    Left = 340
    Top = 513
  end
  object Cuentas: TUniQuery
    Connection = connection.Uconnection
    Left = 32
    Top = 512
  end
  object ds_cuentas: TDataSource
    AutoEdit = False
    DataSet = Cuentas
    Left = 92
    Top = 513
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
    Left = 64
    Top = 96
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 1089
    Top = 113
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 808
    Top = 64
  end
  object zFirma: TUniQuery
    Left = 808
    Top = 112
  end
  object frxMailExport1: TfrxMailExport
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
    Left = 128
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 
      'Archivo de Microsoft Excel 2010|*.XLSX|Archivo de Microsoft Exce' +
      'l 2003|*.XLS'
    Left = 552
    Top = 439
  end
  object dsReq: TDataSource
    DataSet = zReq
    Left = 916
    Top = 506
  end
  object zReq: TUniQuery
    Connection = connection.Uconnection
    Left = 916
    Top = 450
  end
  object zPlanta: TUniQuery
    Connection = connection.Uconnection
    Left = 868
    Top = 450
  end
  object dsPlanta: TDataSource
    DataSet = zPlanta
    Left = 868
    Top = 506
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 24
    Top = 542
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 96
    Top = 542
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 168
    Top = 542
  end
  object zInspeccion: TUniQuery
    Connection = connection.Uconnection
    Left = 938
    Top = 108
  end
  object dsInspeccion: TDataSource
    DataSet = zInspeccion
    Left = 938
    Top = 60
  end
  object zInspeccionDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 714
    Top = 108
  end
  object dsInspeccionDetalle: TDataSource
    DataSet = zInspeccionDetalle
    Left = 714
    Top = 60
  end
  object zConsult: TUniQuery
    Connection = connection.Uconnection
    Left = 962
    Top = 452
  end
  object dsConsult: TDataSource
    DataSet = zConsult
    Left = 964
    Top = 506
  end
  object zInspeccionMaterial: TUniQuery
    Connection = connection.Uconnection
    Left = 1036
    Top = 450
  end
  object dsInspeccionMaterial: TDataSource
    DataSet = zInspeccionMaterial
    Left = 1044
    Top = 506
  end
  object SaveDialog1: TSaveDialog
    Left = 624
    Top = 440
  end
  object zRequi: TUniQuery
    Left = 992
    Top = 112
  end
  object dsRequi: TDataSource
    DataSet = zRequi
    Left = 992
    Top = 64
  end
  object frxOrdenCompra_detalle: TfrxDBDataset
    UserName = 'frxOrdenCompra_detalle'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 488
    Top = 525
  end
end
