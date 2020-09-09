object frmPedidos: TfrmPedidos
  Left = 255
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordenes de Compra'
  ClientHeight = 570
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
      Align = alClient
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
    end
    object btnInfoD: TcxButton
      Left = 663
      Top = 1
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'Ver Datos'
      OptionsImage.ImageIndex = 30
      OptionsImage.Images = frmrepositorio.IconosTodos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnInfoDClick
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1326
    Height = 535
    Align = alClient
    TabOrder = 2
    object PanelDatos: TPanel
      Left = 1
      Top = 192
      Width = 1324
      Height = 342
      Align = alBottom
      TabOrder = 0
      object PanelTopD: TPanel
        Left = 1
        Top = 306
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
        Height = 305
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
        ClientRectBottom = 303
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
            Height = 273
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
            object sCodigo: TcxDBTextEdit
              Left = 130
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
              Width = 87
            end
            object iIdFecha: TcxDBDateEdit
              Left = 130
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
              Width = 121
            end
            object cxRequisicion: TcxDBLookupComboBox
              Left = 130
              Top = 69
              DataBinding.DataField = 'iFolioRequisicion'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'iFolioRequisicion'
              Properties.ListColumns = <
                item
                  FieldName = 'sNumFolio'
                end>
              Properties.ListSource = ds_requisiciones
              Properties.OnChange = cxRequisicionPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 4
              OnEnter = EnterControl
              OnExit = cxRequisicionExit
              OnKeyUp = GlobalKeyUp
              Width = 145
            end
            object cxProveedor: TcxDBLookupComboBox
              Left = 130
              Top = 98
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
              TabOrder = 6
              OnEnter = EnterControl
              OnExit = cxProveedorExit
              OnKeyUp = GlobalKeyUp
              Width = 145
            end
            object sReferencia: TcxDBLookupComboBox
              Left = 130
              Top = 129
              DataBinding.DataField = 'sNumeroOrden'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.KeyFieldNames = 'sNumeroOrden'
              Properties.ListColumns = <
                item
                  FieldName = 'sIdFolio'
                end>
              Properties.ListSource = dsOrdenes
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
            object dFechaEntrega: TcxDBDateEdit
              Left = 346
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
              Width = 121
            end
            object sLugarEntrega: TcxDBTextEdit
              Left = 130
              Top = 160
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
              TabOrder = 10
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxGroupBox1: TcxGroupBox
              Left = 473
              Top = 11
              Caption = 'Informaci'#243'n Fiscal'
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Style.Color = 14803425
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 14
              Height = 215
              Width = 464
              object dxLayoutControl2: TdxLayoutControl
                Left = 3
                Top = 16
                Width = 458
                Height = 189
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxIva: TcxDBCalcEdit
                  Left = 101
                  Top = 155
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
                  TabOrder = 6
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 76
                end
                object cxRetencion: TcxDBCalcEdit
                  Left = 237
                  Top = 155
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
                  TabOrder = 7
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 62
                end
                object dCambio: TcxDBCurrencyEdit
                  Left = 373
                  Top = 155
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
                  TabOrder = 8
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 58
                end
                object cxUsoCFDI: TcxDBLookupComboBox
                  Left = 101
                  Top = 10
                  DataBinding.DataField = 'IdUso'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdUso'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Descripcion'
                    end>
                  Properties.ListSource = ds_usocfdi
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
                  Width = 145
                end
                object cxMetodoPagoCFDI: TcxDBLookupComboBox
                  Left = 101
                  Top = 39
                  DataBinding.DataField = 'IdMetodoPago'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdMetodoPago'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Descripcion'
                    end>
                  Properties.ListSource = ds_metodopago_cfdi
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
                  Width = 145
                end
                object cxFormaPagoCFDI: TcxDBLookupComboBox
                  Left = 101
                  Top = 68
                  DataBinding.DataField = 'IdFormaPagoCFDI'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdFormaPago'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Titulo'
                    end>
                  Properties.ListSource = ds_formapago_cfdi
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
                  Width = 145
                end
                object idMoneda: TcxDBLookupComboBox
                  Left = 101
                  Top = 97
                  DataBinding.DataField = 'IdMoneda'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdMoneda'
                  Properties.ListColumns = <
                    item
                      FieldName = 'FK_Moneda'
                    end>
                  Properties.ListSource = ds_moneda
                  Properties.OnChange = idMonedaPropertiesChange
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
                  Width = 160
                end
                object cxButton3: TcxButton
                  Left = 406
                  Top = 97
                  Width = 25
                  Height = 23
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
                  TabOrder = 4
                end
                object cxCuenta: TcxDBLookupComboBox
                  Left = 101
                  Top = 213
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
                  TabOrder = 11
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 145
                end
                object cxOtrosCargos: TcxDBCurrencyEdit
                  Left = 101
                  Top = 184
                  DataBinding.DataField = 'OtrosCargos'
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
                  Width = 121
                end
                object btnCuentas: TcxButton
                  Left = 406
                  Top = 213
                  Width = 25
                  Height = 23
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
                  TabOrder = 12
                  OnClick = btnCuentasClick
                end
                object cxCotizacionInicial: TcxDBCurrencyEdit
                  Left = 310
                  Top = 184
                  DataBinding.DataField = 'CotizacionInicial'
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
                  Width = 121
                end
                object cxTipoCambio: TcxDBCurrencyEdit
                  Left = 101
                  Top = 126
                  DataBinding.DataSource = ds_anexo_ocompras
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
                  Width = 58
                end
                object dxLayoutControl2Group_Root: TdxLayoutGroup
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
                  AlignVert = avTop
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
                  Parent = dxLayoutControl2Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 5
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
                object dxLayoutItem9: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'Uso CFDI:'
                  Control = cxUsoCFDI
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem27: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'Metodo Pago:'
                  Control = cxMetodoPagoCFDI
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutItem28: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'Forma de Pago:'
                  Control = cxFormaPagoCFDI
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
                  Parent = dxLayoutControl2Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 3
                  AutoCreated = True
                end
                object dxLayoutItem22: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup15
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Cuenta'
                  Control = cxCuenta
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem47: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup3
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'Otros Cargos:'
                  Control = cxOtrosCargos
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem25: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup15
                  AlignVert = avClient
                  CaptionOptions.Text = 'cxButton2'
                  CaptionOptions.Visible = False
                  Control = btnCuentas
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl2Group_Root
                  AlignHorz = ahClient
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 7
                  AutoCreated = True
                end
                object dxLayoutItem48: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup3
                  AlignVert = avClient
                  CaptionOptions.Text = 'Cotizaci'#243'n Inicial:'
                  Control = cxCotizacionInicial
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl2Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 6
                  AutoCreated = True
                end
                object dxLayoutItem49: TdxLayoutItem
                  Parent = dxLayoutControl2Group_Root
                  CaptionOptions.Text = 'Tipo Cambio:'
                  Control = cxTipoCambio
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
              end
            end
            object cxGroupBox2: TcxGroupBox
              Left = 943
              Top = 11
              Caption = 'Informaci'#243'n de Origen O.C.'
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Style.Color = 14803425
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 15
              Height = 232
              Width = 399
              object dxLayoutControl3: TdxLayoutControl
                Left = 3
                Top = 16
                Width = 393
                Height = 206
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                AutoSize = True
                LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                object cxNota: TcxDBMemo
                  Left = 185
                  Top = 156
                  DataBinding.DataField = 'Notas'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.ScrollBars = ssVertical
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
                  Height = 38
                  Width = 197
                end
                object cxFormaPago: TcxDBLookupComboBox
                  Left = 185
                  Top = 11
                  DataBinding.DataField = 'IdFormaPago'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
                  Properties.KeyFieldNames = 'IdFormaPago'
                  Properties.ListColumns = <
                    item
                      Caption = 'FormaPago'
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
                  TabOrder = 0
                  OnEnter = EnterControl
                  OnExit = SalidaControl
                  OnKeyUp = GlobalKeyUp
                  Width = 265
                end
                object sPrecios: TcxDBTextEdit
                  Left = 185
                  Top = 69
                  DataBinding.DataField = 'sPrecios'
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
                  Width = 125
                end
                object sVigencia: TcxDBTextEdit
                  Left = 298
                  Top = 69
                  DataBinding.DataField = 'sVigencia'
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
                  OnKeyUp = GlobalKeyUp
                  Width = 84
                end
                object sMail: TcxDBTextEdit
                  Left = 185
                  Top = 127
                  DataBinding.DataField = 'Correo'
                  DataBinding.DataSource = ds_anexo_ocompras
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
                  Width = 253
                end
                object sVendedor: TcxDBTextEdit
                  Left = 185
                  Top = 98
                  DataBinding.DataField = 'sVendedor'
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
                  Width = 257
                end
                object dtFechaVencimientoCredito: TcxDBDateEdit
                  Left = 185
                  Top = 40
                  DataBinding.DataField = 'FechaVencimientoCredito'
                  DataBinding.DataSource = ds_anexo_ocompras
                  ParentFont = False
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
                object dxLayoutControl3Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avTop
                  LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutItem17: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Text = 'Notas:'
                  Control = cxNota
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object dxLayoutItem16: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Text = 'Condici'#243'n de Pago:'
                  Control = cxFormaPago
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem10: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup4
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Precios:'
                  Control = sPrecios
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutItem12: TdxLayoutItem
                  Parent = dxLayoutAutoCreatedGroup4
                  CaptionOptions.Text = 'Vigencia:'
                  Control = sVigencia
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutItem20: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'E-mail:'
                  Control = sMail
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutItem21: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Contacto:'
                  Control = sVendedor
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutItem50: TdxLayoutItem
                  Parent = dxLayoutControl3Group_Root
                  CaptionOptions.Text = 'Fecha Vencimiento de Credito:'
                  Control = dtFechaVencimientoCredito
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
              end
            end
            object btnProveedores: TcxButton
              Left = 442
              Top = 98
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
              OnClick = btnProveedoresClick
            end
            object cxButton1: TcxButton
              Left = 442
              Top = 129
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
              TabOrder = 9
              OnClick = cxButton1Click
            end
            object cxEntrega: TcxDBTextEdit
              Left = 130
              Top = 189
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
              TabOrder = 11
              OnEnter = EnterControl
              OnExit = SalidaControl
              OnKeyUp = GlobalKeyUp
              Width = 121
            end
            object cxMultipleReq: TdxToggleSwitch
              Left = 337
              Top = 69
              Caption = 'M'#250'ltiples'
              Checked = False
              ParentFont = False
              Properties.StateIndicator.Kind = sikText
              Properties.StateIndicator.OffText = 'No'
              Properties.StateIndicator.OnText = 'Si'
              Properties.StateIndicator.Position = sipInside
              Properties.OnChange = cxMultipleReqPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 5
            end
            object cxFirma: TcxDBLookupComboBox
              Left = 130
              Top = 218
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
              Width = 299
            end
            object btnFirma: TcxButton
              Left = 435
              Top = 218
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
            object cbCategoria: TcxDBComboBox
              Left = 320
              Top = 11
              DataBinding.DataField = 'Categoria'
              DataBinding.DataSource = ds_anexo_ocompras
              ParentFont = False
              Properties.Items.Strings = (
                'Materiales y consumible'
                'EPP'
                'Renta'
                'Servicio'
                'Renta de herramienta'
                'Comisiones'
                'UNIFIN'
                'AQWISE'
                'Papeler'#237'a')
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 147
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
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignHorz = ahClient
              CaptionOptions.Text = 'No. Compra:'
              Control = sCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fecha Compra:'
              Control = iIdFecha
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              CaptionOptions.Text = 'Requisici'#243'n:'
              Control = cxRequisicion
              ControlOptions.ShowBorder = False
              Index = 0
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
              AlignHorz = ahClient
              CaptionOptions.Text = 'Referencia/Proyecto:'
              Control = sReferencia
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Fecha Entrega:'
              Control = dFechaEntrega
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Lugar de Entrega:'
              Control = sLugarEntrega
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignVert = avClient
              CaptionOptions.Text = 'cxGroupBox1'
              CaptionOptions.Visible = False
              Control = cxGroupBox1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignVert = avBottom
              CaptionOptions.Text = 'cxGroupBox2'
              CaptionOptions.Visible = False
              Control = cxGroupBox2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
              Index = 2
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
              Index = 3
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
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Tiempo Entrega'
              Control = cxEntrega
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutItem34: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avClient
              CaptionOptions.Text = 'M'#250'ltiples'
              CaptionOptions.Visible = False
              Control = cxMultipleReq
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Firma:'
              Control = cxFirma
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnFirma
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 7
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItemCategoria: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignVert = avClient
              CaptionOptions.Text = 'Categor'#237'a:'
              Visible = False
              Control = cbCategoria
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 184
      Width = 1324
      Height = 8
      AlignSplitter = salBottom
    end
    object PanelTopDD: TPanel
      Left = 1
      Top = 1
      Width = 1324
      Height = 183
      Align = alClient
      TabOrder = 2
      object Grid_Entradas: TcxGrid
        Left = 1
        Top = 1
        Width = 753
        Height = 181
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
          DataController.DataSource = ds_anexo_ocompras
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = dbg_OCVistaDataControllerFilterChanged
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.OnBeforeChange = dbg_OCVistaDataControllerFilterBeforeChange
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'MN = #,00.00'
              Kind = skSum
              FieldName = 'dMontoMXN'
              Column = Col_montomn
            end
            item
              Format = 'Total Ordenes Compra'
              Kind = skCount
              Column = Col_lugarentrega
            end
            item
              Format = 'MN = #,00.00'
              Kind = skSum
              FieldName = 'AhorroMXN'
              Column = col_CotizacionInicial
            end
            item
              Format = 'USD= #,00.00'
              Kind = skSum
              FieldName = 'dMontoUSD'
              Column = Col_montomn
            end
            item
              Format = 'USD= #,00.00'
              Kind = skSum
              FieldName = 'AhorroUSD'
              Column = col_CotizacionInicial
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
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupRowHeight = 20
          OptionsView.Indicator = True
          object Col_ordenCompra: TcxGridDBColumn
            Caption = 'Orden Compra'
            DataBinding.FieldName = 'Codigo'
            Width = 45
          end
          object Col_fecha: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dIdFecha'
            Width = 45
          end
          object Col_folio: TcxGridDBColumn
            Caption = 'Requisicion'
            DataBinding.FieldName = 'sNumFolio'
            Width = 45
          end
          object col_Comprador: TcxGridDBColumn
            Caption = 'Comprador'
            DataBinding.FieldName = 'sUsuarioCompra'
            Width = 45
          end
          object Col_fechasuministro: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'NombreProveedor'
            Width = 45
          end
          object Col_Frente: TcxGridDBColumn
            Caption = 'Proyecto/Ref.'
            DataBinding.FieldName = 'sIdFolio'
            Width = 44
          end
          object Col_lugarentrega: TcxGridDBColumn
            Caption = 'Uso CFDI'
            DataBinding.FieldName = 'UsoCfdi'
            Width = 46
          end
          object col_CentroCosto: TcxGridDBColumn
            Caption = 'Centro Costo'
            DataBinding.FieldName = 'CentroCosto'
            Width = 45
          end
          object Col_montomn: TcxGridDBColumn
            Caption = 'Total O.C.'
            DataBinding.FieldName = 'dMontoMN'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            OnGetProperties = Col_montomnGetProperties
            Width = 44
          end
          object col_CotizacionInicial: TcxGridDBColumn
            DataBinding.FieldName = 'Ahorro'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 46
          end
          object Col_Moneda: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'TituloMoneda'
            Width = 44
          end
          object col_sap: TcxGridDBColumn
            DataBinding.FieldName = 'SAP'
            Width = 45
          end
          object cxEstatus: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'sStatus'
            Width = 45
          end
          object col_porcentajeCantidad: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'scantidad'
            PropertiesClassName = 'TcxProgressBarProperties'
            Width = 45
          end
          object col_estatuscompra: TcxGridDBColumn
            Caption = 'Estatus Compra'
            DataBinding.FieldName = 'EstatusCompra'
            Width = 41
          end
          object Col_Prioridad: TcxGridDBColumn
            DataBinding.FieldName = 'Prioridad'
            Width = 69
          end
          object Col_Categoria: TcxGridDBColumn
            Caption = 'Categor'#237'a'
            DataBinding.FieldName = 'Categoria'
            Visible = False
            Width = 70
          end
        end
        object dbgLevOC: TcxGridLevel
          GridView = dbg_OCVista
        end
      end
      object PanelDetalle: TPanel
        Left = 762
        Top = 1
        Width = 561
        Height = 181
        Align = alRight
        TabOrder = 1
        object PanelDetalleT: TPanel
          Left = 1
          Top = 1
          Width = 559
          Height = 30
          Align = alTop
          TabOrder = 0
          object cxEliminarDetalle: TcxButton
            Tag = 12
            Left = 477
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
            Left = 396
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
            Left = 315
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
            Left = 191
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
          Width = 559
          Height = 149
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 147
          ClientRectLeft = 2
          ClientRectRight = 557
          ClientRectTop = 30
          object cxTabSheet2: TcxTabSheet
            Caption = 'Lista de Materiales'
            ImageIndex = 10
            object GridPartidas: TcxGrid
              Left = 0
              Top = 0
              Width = 555
              Height = 14
              Align = alClient
              TabOrder = 0
              object cxViewDetalleOC: TcxGridDBTableView
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
                    Format = '#,0.00;-#,0.00'
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
                  Width = 77
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
                  Caption = 'Material'
                  DataBinding.FieldName = 'mDescripcion'
                  Width = 215
                end
                object Col_Medida: TcxGridDBColumn
                  DataBinding.FieldName = 'Medida'
                  Width = 55
                end
                object Col_Cantidad: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  Width = 60
                end
                object Col_PrecioUnit: TcxGridDBColumn
                  Caption = 'Precio U.'
                  DataBinding.FieldName = 'dCosto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = '$,0.00;-$,0.00'
                  OnGetProperties = Col_PrecioUnitGetProperties
                  Width = 66
                end
                object Col_Total: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'dMontoMN'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 2
                  Properties.DisplayFormat = '$,0.00;-$,0.00'
                  OnGetProperties = Col_TotalGetProperties
                  Width = 59
                end
                object Col_Descuento: TcxGridDBColumn
                  Caption = 'Descuento'
                  DataBinding.FieldName = 'dMontoDescuento'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.ReadOnly = True
                  Width = 51
                end
                object Col_Estatus: TcxGridDBColumn
                  Caption = 'Estatus'
                  DataBinding.FieldName = 'sStatus'
                  Width = 64
                end
              end
              object dbg2: TcxGridLevel
                GridView = cxViewDetalleOC
              end
            end
            object cxSplitMaterial: TcxSplitter
              Left = 0
              Top = 14
              Width = 555
              Height = 8
              AlignSplitter = salBottom
              Visible = False
            end
            object PanelMaterial: TPanel
              Left = 0
              Top = 22
              Width = 555
              Height = 95
              Align = alBottom
              TabOrder = 2
              Visible = False
              object dxLayoutControl6: TdxLayoutControl
                Left = 1
                Top = 1
                Width = 553
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
                  Left = 367
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
                  Left = 457
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
              Width = 555
              Height = 117
              Align = alClient
              TabOrder = 0
              object dxLayoutControl4: TdxLayoutControl
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 547
                Height = 109
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
                  Left = 374
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
                  Top = 201
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
                  Top = 242
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
                  Top = 283
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
                  Top = 242
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
        Left = 754
        Top = 1
        Width = 8
        Height = 181
        AlignSplitter = salRight
      end
    end
  end
  object panelInsumos: TPanel
    Left = 955
    Top = 71
    Width = 260
    Height = 193
    TabOrder = 0
    Visible = False
    object Grid_Insumos: TcxGrid
      Left = 1
      Top = 41
      Width = 258
      Height = 64
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
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object Grid_InsumosViewColumn2: TcxGridDBColumn
          Caption = 'Requisicion'
          DataBinding.FieldName = 'sNumFolio'
          Width = 71
        end
        object Col_dbgGrid_InsumosViewColumn1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Width = 46
        end
        object Col_dbgGrid_InsumosViewColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Material'
          Width = 294
        end
        object Col_dbgGrid_InsumosViewColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Medida'
          Width = 42
        end
        object Grid_InsumosViewColumn1: TcxGridDBColumn
          Caption = 'Cantidad Req.'
          DataBinding.FieldName = 'dRequisicion'
          Width = 55
        end
        object Col_dbgGrid_InsumosViewColumn5: TcxGridDBColumn
          Caption = 'Existencias'
          DataBinding.FieldName = 'dExistencia'
          Visible = False
          Width = 69
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
      Top = 157
      Width = 258
      Height = 35
      Align = alBottom
      TabOrder = 1
      object btnPost: TcxButton
        Left = 83
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
        Left = 170
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
      Width = 258
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
      Top = 105
      Width = 258
      Height = 52
      Align = alBottom
      TabOrder = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 256
        Height = 50
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object tdCantidad: TcxCalcEdit
          Left = -152
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
          Left = 5
          Top = 11
          ParentFont = False
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '$,0.00;-$,0.00'
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
          Left = 208
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
  object ds_anexo_ocompras: TDataSource
    AutoEdit = False
    DataSet = anexo_ocompras
    Left = 64
    Top = 123
  end
  object ds_anexo_pocompras: TDataSource
    AutoEdit = False
    DataSet = anexo_pocompras
    Left = 328
    Top = 210
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
    ReportOptions.CreateDate = 41899.829232916700000000
    ReportOptions.LastChange = 43673.849901770800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    //if <frxDBRequisicion."Existencia"> >= <frxDBRequisicion."d' +
        'Cantidad"> then'
      '    //   Memo19.Visible := True'
      '   // else'
      '   //    Memo19.Visible := False;'
      'end;'
      
        '// EXISTENCIA SE DEJO EN 0 PARA NO CONFUNDIRLO, SE AGREGA LA LIN' +
        'EA DE ABAJO PARA CUANDO ESTE FUNCIONANDO ALMACEN'
      '     // [frxDBRequisicion."Existencia"]'
      
        '     // [<frxDBRequisicion."dCantidad">-<frxDBRequisicion."Exist' +
        'encia">]'
      'procedure Memo22OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBRequisicion."UsuarioValido"> = '#39#39' then'
      '       Memo22.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo22.Text :=  <frxDBRequisicion."sFicha4"> +#13+ <frxDB' +
        'Requisicion."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBRequisicio' +
        'n."FechaValido">);'
      '    end;'
      'end;'
      ''
      'procedure Memo23OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBRequisicion."UsuarioAutorizo"> = '#39#39' then'
      '       Memo23.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo23.Text :=  <frxDBRequisicion."sFicha3"> +#13+ <frxDB' +
        'Requisicion."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBRequisic' +
        'ion."FechaAutorizo">);'
      '    end;'
      'end;'
      ''
      'procedure Memo34OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBRequisicion."sPrioridad"> = '#39'Normal'#39' then'
      '        Memo34.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBRequisicion."sPrioridad"> = '#39'Importante'#39' then'
      '        Memo35.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo36OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBRequisicion."sPrioridad"> = '#39'Cr'#237'tica'#39' then'
      '        Memo36.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frxDBRequisicion."sUsuarioCompra"> <> '#39#39' then'
      
        '       Memo16.Text := <frxDBRequisicion."sFicha2"> +#13#13#13+ <' +
        'frxDBRequisicion."sUsuarioCompra">'
      '    else'
      '    begin'
      
        '       Memo16.Text := <frxDBRequisicion."sFicha2"> +#13#13#13+ <' +
        'frxDBRequisicion."sFirmante2">;'
      '    end;'
      'end;'
      'begin'
      ''
      'end.')
    OnGetValue = frxEntradaGetValue
    OnReportPrint = 'no '
    Left = 304
    Top = 24
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
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
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590590240000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 11.382368200000000000
          Top = 3.779530000000001000
          Width = 156.507503940000000000
          Height = 52.593669910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo54: TfrxMemoView
          Left = 569.205966400000000000
          Top = 56.795716630000000000
          Width = 142.272435980000000000
          Height = 16.905109830000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 190.488188980000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Memo9: TfrxMemoView
          Width = 740.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Requisici'#243'n de materiales y/o servicios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 58.960629921259900000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitado por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 30.236227799999990000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 113.385826770000000000
          Top = 58.960629920000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sSolicito"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 113.385826770000000000
          Top = 30.236227799999990000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Top = 87.685039370000000000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 113.385826770000000000
          Top = 87.685039370000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaSolicitado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 116.409448820000000000
          Width = 113.385826770000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Proyecto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 113.385826770000000000
          Top = 116.409448820000000000
          Width = 340.157480310000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."DescripcionCentroC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 580.157480314961000000
          Top = 58.960629920000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sRequisita"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 580.157480314961000000
          Top = 30.236227799999990000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 580.157480314961000000
          Top = 87.685039370000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaRequerido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 580.157480310000000000
          Top = 116.409448820000000000
          Width = 159.496060550000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaVigencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 453.543307090000000000
          Top = 30.236227799999990000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'No. de req.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 453.543307090000000000
          Top = 58.960629920000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Requisitado por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 453.543307090000000000
          Top = 87.685039370000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha requerida:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 453.543307090000000000
          Top = 116.409448820000000000
          Width = 126.614175670000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Vigencia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 145.133858270000000000
          Width = 113.385826770000000000
          Height = 45.354330708661400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Prioridad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 113.385826770000000000
          Top = 145.133858270000000000
          Width = 340.157480310000000000
          Height = 45.354330708661400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 580.157480310000000000
          Top = 145.133858270000000000
          Width = 159.496060550000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBRequisicion."mReferencia"]  [frxDBRequisicion."Descripcion' +
              'CentroC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 453.543307090000000000
          Top = 145.133858270000000000
          Width = 126.614175670000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Centro de costo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 128.504020000000000000
          Top = 158.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo34OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 234.330860000000000000
          Top = 158.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 355.275820000000000000
          Top = 158.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 151.181200000000000000
          Top = 161.960730000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NORMAL')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 260.787570000000000000
          Top = 161.960730000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IMPORTANTE')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 381.732530000000000000
          Top = 161.960730000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CRITICA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 29.478053280000000000
        Top = 434.645950000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo25: TfrxMemoView
          Left = 580.157480314961000000
          Width = 159.496062990000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 453.543307090000000000
          Width = 126.614173228346000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 113.385826770000000000
          Width = 340.157480310000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Width = 37.795275590000000000
          Height = 29.478053280000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 260.362180320000000000
        Top = 589.606680000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Top = 113.385900000000000000
          Width = 246.425196850000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto1"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Top = 34.015769999999980000
          Width = 246.425196850000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFicha1"] '
            ''
            ''
            '[frxDBRequisicion."sFirmante1"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 246.425196850000000000
          Top = 113.385900000000000000
          Width = 245.669291340000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 246.425196850000000000
          Top = 34.015769999999980000
          Width = 245.669291340000000000
          Height = 79.370093390000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFicha2"]'
            ''
            ''
            '[frxDBRequisicion."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          Left = 492.118430000000000000
          Top = 113.385900000000000000
          Width = 247.937007870000000000
          Height = 25.700784960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sPuesto3"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Left = 492.118430000000000000
          Top = 34.015769999999980000
          Width = 247.937007870000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFicha3"] '
            ''
            ''
            '[frxDBRequisicion."sFirmante3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 241.464566930000000000
          Width = 246.425196850000000000
          Height = 18.897613390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Anexo 1.0 CMMI-COM-01 Rev. 0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 7.559059999999931000
          Width = 246.425196850000000000
          Height = 25.700784960000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFicha4"]:'
            
              '[frxDBRequisicion."UsuarioValido"], [frxDBRequisicion."FechaVali' +
              'do"]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000045000
          Width = 250.204726850000000000
          Height = 25.700784960000000000
          OnBeforePrint = 'Memo23OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFicha3"]:'
            
              '[frxDBRequisicion."UsuarioAutorizo"], [frxDBRequisicion."FechaAu' +
              'torizo"]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end>
        end
        object Rich1: TfrxRichView
          Top = 147.401574803150000000
          Width = 492.094488190000000000
          Height = 83.149606299212600000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E6732323533387B5C666F6E7474626C7B5C
            66305C666E696C5C66636861727365743020417269616C3B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31383336327D5C76
            6965776B696E64345C756331200D0A5C706172645C625C66733134205072696F
            72696461643A5C7061720D0A5C62305C7061720D0A4E6F726D616C3A4174656E
            63695C2766336E206465203720645C276564617320656E206164656C616E7465
            207365675C2766616E20766967656E6369612E5C7061720D0A5C7061720D0A49
            6D706F7274616E74653A204174656E63695C2766336E20646520322061203720
            645C27656461732E5C7061720D0A5C7061720D0A43725C276564746963613A20
            4174656E63695C2766336E20496E6D6564696174612E5C7061720D0A7D0D0A00}
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.402064850000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBRequisicion."iFolioRequisicion"'
        object Memo10: TfrxMemoView
          Width = 37.795275590000000000
          Height = 45.402064850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Part.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 45.207823060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 453.543307090000000000
          Width = 126.614173228346000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 113.385826770000000000
          Width = 340.157480310000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n del Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 580.157480310000000000
          Width = 159.496062990000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad'
            'Requerida')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 525.354670000000100000
        Width = 740.409927000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 113.385826770000000000
          Width = 626.645669290000000000
          Height = 41.574803150000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 113.385875590000000000
          Height = 41.574803150000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ds_proveedores: TDataSource
    AutoEdit = False
    DataSet = Proveedores
    Left = 482
    Top = 174
  end
  object OpenXLS: TOpenDialog
    DefaultExt = 'XLS'
    Filter = 'Archivo de Microsoft Excel|*.XLS'
    Left = 360
    Top = 26
  end
  object ds_requisiciones: TDataSource
    DataSet = requisiciones
    Left = 144
    Top = 123
  end
  object dtsPartidas: TDataSource
    AutoEdit = False
    DataSet = Partidas
    Left = 452
    Top = 201
  end
  object ds_insumo: TDataSource
    AutoEdit = False
    DataSet = Insumos
    Left = 543
    Top = 174
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 196
    Top = 513
  end
  object rxPrecios: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sIdInsumo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sIdProveedor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dFecha1'
        DataType = ftDate
      end
      item
        Name = 'dFecha2'
        DataType = ftDate
      end
      item
        Name = 'dFecha3'
        DataType = ftDate
      end
      item
        Name = 'dFecha4'
        DataType = ftDate
      end
      item
        Name = 'dFecha5'
        DataType = ftDate
      end
      item
        Name = 'dFecha6'
        DataType = ftDate
      end
      item
        Name = 'dFecha7'
        DataType = ftDate
      end
      item
        Name = 'dFecha8'
        DataType = ftDate
      end
      item
        Name = 'dCosto1'
        DataType = ftFloat
      end
      item
        Name = 'dCosto2'
        DataType = ftFloat
      end
      item
        Name = 'dCosto3'
        DataType = ftFloat
      end
      item
        Name = 'dCosto4'
        DataType = ftFloat
      end
      item
        Name = 'dCosto5'
        DataType = ftFloat
      end
      item
        Name = 'dCosto6'
        DataType = ftFloat
      end
      item
        Name = 'dCosto7'
        DataType = ftFloat
      end
      item
        Name = 'dCosto8'
        DataType = ftFloat
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'sOrdenCompra1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sOrdenCompra8'
        DataType = ftString
        Size = 20
      end>
    Left = 216
    Top = 168
    object rxPreciossContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxPreciossIdInsumo: TStringField
      FieldName = 'sIdInsumo'
      Size = 40
    end
    object rxPreciosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxPreciossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
    end
    object rxPreciosdFecha1: TDateField
      FieldName = 'dFecha1'
    end
    object rxPreciosdFecha2: TDateField
      FieldName = 'dFecha2'
    end
    object rxPreciosdFecha3: TDateField
      FieldName = 'dFecha3'
    end
    object rxPreciosdFecha4: TDateField
      FieldName = 'dFecha4'
    end
    object rxPreciosdFecha5: TDateField
      FieldName = 'dFecha5'
    end
    object rxPreciosdFecha6: TDateField
      FieldName = 'dFecha6'
    end
    object rxPreciosdFecha7: TDateField
      FieldName = 'dFecha7'
    end
    object rxPreciosdFecha8: TDateField
      FieldName = 'dFecha8'
    end
    object rxPreciosdCosto1: TFloatField
      FieldName = 'dCosto1'
    end
    object rxPreciosdCosto2: TFloatField
      FieldName = 'dCosto2'
    end
    object rxPreciosdCosto3: TFloatField
      FieldName = 'dCosto3'
    end
    object rxPreciosdCosto4: TFloatField
      FieldName = 'dCosto4'
    end
    object rxPreciosdCosto5: TFloatField
      FieldName = 'dCosto5'
    end
    object rxPreciosdCosto6: TFloatField
      FieldName = 'dCosto6'
    end
    object rxPreciosdCosto7: TFloatField
      FieldName = 'dCosto7'
    end
    object rxPreciosdCosto8: TFloatField
      FieldName = 'dCosto8'
    end
    object rxPreciosItem: TIntegerField
      FieldName = 'Item'
    end
    object rxPreciossOrdenCompra1: TStringField
      FieldName = 'sOrdenCompra1'
    end
    object rxPreciossOrdenCompra2: TStringField
      FieldName = 'sOrdenCompra2'
    end
    object rxPreciossOrdenCompra3: TStringField
      FieldName = 'sOrdenCompra3'
    end
    object rxPreciossOrdenCompra4: TStringField
      FieldName = 'sOrdenCompra4'
    end
    object rxPreciossOrdenCompra5: TStringField
      FieldName = 'sOrdenCompra5'
    end
    object rxPreciossOrdenCompra6: TStringField
      FieldName = 'sOrdenCompra6'
    end
    object rxPreciossOrdenCompra7: TStringField
      FieldName = 'sOrdenCompra7'
    end
    object rxPreciossOrdenCompra8: TStringField
      FieldName = 'sOrdenCompra8'
    end
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
    DataSet = rxPrecios
    BCDToCurrency = False
    Left = 483
    Top = 70
  end
  object styleGrid: TcxStyleRepository
    Scalable = True
    Left = 420
    Top = 24
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
    Left = 217
    Top = 120
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
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
      ImageIndex = 4
      ShortCut = 122
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ImageIndex = 12
      ShortCut = 16470
    end
    object N2: TMenuItem
      Caption = '-'
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
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      ImageIndex = 5
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
    end
  end
  object cxmglst1: TcxImageList
    FormatVersion = 1
    DesignInfo = 2621976
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 480
    Top = 24
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
    Left = 224
    Top = 24
  end
  object dsOrdenes: TDataSource
    DataSet = zqOrdenes
    Left = 288
    Top = 128
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
    Top = 127
  end
  object Partidas: TUniQuery
    Connection = connection.Uconnection
    Left = 408
    Top = 176
  end
  object anexo_ocompras: TUniQuery
    Connection = connection.Uconnection
    FilterOptions = [foCaseInsensitive]
    Left = 64
    Top = 168
  end
  object zimgfirmas: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'SELECT bimagen14,bimagen16,bImagen14Sello FROM firmas WHERE sCon' +
        'trato = :contrato '
      'and sNumeroOrden =:Orden AND '
      'dIdFecha <= :fecha ORDER BY dIdFecha DESC')
    Left = 856
    Top = 96
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
    Left = 344
    Top = 128
  end
  object requisiciones: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'select * from anexo_requisicion Where sContrato = :Contrato and ' +
        'sStatus = '#39'AUTORIZADO'#39' '
      'and sEstado = '#39'PENDIENTE'#39)
    Left = 140
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object anexo_pocompras: TUniQuery
    Connection = connection.Uconnection
    Left = 220
    Top = 224
  end
  object Proveedores: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      
        'Select RazonSocial as sRazon, IdProveedor as sIdProveedor, Nombr' +
        'e as sVendedor, '#39#39' as sEmail '
      'from master_proveedores '
      'Order by sRazon             ')
    Left = 484
    Top = 128
  end
  object zqOrdenes: TUniQuery
    Connection = connection.Uconnection
    Left = 284
    Top = 174
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
  object UsoCFDI: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 512
  end
  object ds_usocfdi: TDataSource
    AutoEdit = False
    DataSet = UsoCFDI
    Left = 476
    Top = 513
  end
  object MetodoPagoCFDI: TUniQuery
    Connection = connection.Uconnection
    Left = 560
    Top = 512
  end
  object ds_metodopago_cfdi: TDataSource
    AutoEdit = False
    DataSet = MetodoPagoCFDI
    Left = 668
    Top = 513
  end
  object FormaPagoCFDI: TUniQuery
    Connection = connection.Uconnection
    Left = 760
    Top = 512
  end
  object ds_formapago_cfdi: TDataSource
    AutoEdit = False
    DataSet = FormaPagoCFDI
    Left = 844
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
    Left = 608
    Top = 152
  end
  object zReporteDetalle: TUniQuery
    Connection = connection.Uconnection
    Left = 1257
    Top = 385
  end
  object ds_firma: TDataSource
    DataSet = zFirma
    Left = 624
    Top = 232
  end
  object zFirma: TUniQuery
    Left = 664
    Top = 232
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
    Left = 664
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 96
  end
end
