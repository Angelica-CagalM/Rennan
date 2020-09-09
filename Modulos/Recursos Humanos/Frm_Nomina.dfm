object FrmNomina: TFrmNomina
  Left = 0
  Top = 0
  Caption = 'N'#243'mina'
  ClientHeight = 648
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PanelCentral: TPanel
    Left = 0
    Top = 69
    Width = 1200
    Height = 579
    Align = alClient
    TabOrder = 0
    object cxSplitterLateral: TcxSplitter
      Left = 1193
      Top = 1
      Width = 6
      Height = 577
      AlignSplitter = salRight
      Visible = False
    end
    object grid_Nomina: TcxGrid
      Left = 1
      Top = 1
      Width = 1192
      Height = 577
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = grid_NominaExit
      object cxView_Nomina: TcxGridDBTableView
        PopupMenu = PopupMenu1
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
        DataController.DataSource = dsNominaEmpleados
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn9
          end
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn8
          end
          item
            Format = '$,0.00'
            Kind = skSum
          end
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn5
          end
          item
            Format = '$,0.00'
            Kind = skSum
          end
          item
            Format = '$ ,0.00'
            Kind = skSum
            Column = cxView_NominaColumn7
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Styles.Content = connection.cxNormal
        object cxView_NominaColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Empresa'
          Visible = False
          GroupIndex = 0
          Width = 105
        end
        object cxView_NominaColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Proyecto'
          Width = 129
        end
        object cxView_NominaColumn4: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NombreCompleto'
          Width = 312
        end
        object cxView_NominaColumn3: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'SalarioTexto'
          Width = 212
        end
        object cxView_NominaColumn6: TcxGridDBColumn
          Caption = 'D'#237'as'
          DataBinding.FieldName = 'Dias'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 51
        end
        object cxView_NominaColumn5: TcxGridDBColumn
          Caption = 'Complemento'
          DataBinding.FieldName = 'complemento'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxView_NominaColumn5PropertiesEditValueChanged
          Visible = False
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000040000000F000000110000
            000B000000040000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000E431B10FF31130BE1190A
            0598030407420000000C00000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000D673C29DCB8C7D2FF7789
            A3FF224084FF040F34960000000F000000020000000000000000000000000000
            0000000000000000000000000000000000000000000841261A91869AB3FFC7E3
            F6FF1B65B9FF286BABFF041237950000000E0000000200000000000000000000
            000000000000000000000000000000000000000000031013163E458BC6FFDDFE
            FDFF4DB4E6FF1B67BAFF2E73B1FF051439940000000D00000002000000000000
            00000000000000000000000000000000000000000001000000081B44628D439F
            D5FFDDFEFDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000CA5A5A5A7A1A1
            A1A9A1A1A1A9A5A5A5A74C4C4C4DBBBBBBC0B8B8B8C1B8B8B8C1B1B1B1C46D96
            B5E348A5D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E90A1A1A1A8744E
            42F7744E42F7B8B8B8C18989898E94847EDC6A4132FF978883D86A4032FF7457
            4DF04F6981FC4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FFA2A2A2A89275
            6BE86E4332FFA6A19ECCB2B2B2C38C695CF0734737FFAAA7A6C97B4E3EFF7D51
            3FFF917C76E259758FF64EAFDDFFDDFEFDFF6BDEFBFF287AC5FF72727275A79A
            95D3744534FF704232FF7E4F3CFF845342FF7C584BF4B2B2B2C4835342FF8563
            56F0B5B5B5C2ABA8A6C853667DFF51B2DFFFDDFEFDFF4CA7D7FF33333334B5B1
            B0C6895541FF8F6556F49A8279E182513EFF8E756CE3B5B5B5C27F4F3DFF7F5D
            52F0B7B7B7C2B1AEACC77B4E3CFF58728AF8327FBFFF163A5A860D0D0D0DBBBB
            BBC1916A5BEF855848F79F8A82DC804D3AFFA49792D2B8B8B8C284503DFF7443
            32FF947E76E0937366EC7F4E3DFF927D75DF8888889000000003000000008A8A
            8A8DA2887EDF824C37FF956D5DF0804F3DFBBABABAC1BABABAC18B5540FF8558
            48F78C6253F38C5C48FB916F62EBBBBBBBC15959595A00000000000000005959
            595AB0A5A1CD8B533CFF8E5740FF8B6154EFAFAFAFB3BBBBBBC18A543FFF926A
            5CEFACACACB5AFAFAFB4AFAFAFB37F7F7F800000000000000000000000002626
            2626BCBCBCC0966450F78B523BFFA18A83DA8B8B8B8DBCBCBCC08B513DFF8C63
            54EF8A8A8A8D0000000000000000000000000000000000000000000000000000
            0000A5A5A5A6BDBDBDC0BDBDBDC0BEBEBEC04C4C4C4CBEBEBEBFBDBDBDC0BDBD
            BDC08B8B8B8C0000000000000000000000000000000000000000}
          Width = 120
        end
        object cxView_NominaColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Transferencia'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxView_NominaColumn7PropertiesEditValueChanged
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000040000000F000000110000
            000B000000040000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000E431B10FF31130BE1190A
            0598030407420000000C00000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000D673C29DCB8C7D2FF7789
            A3FF224084FF040F34960000000F000000020000000000000000000000000000
            0000000000000000000000000000000000000000000841261A91869AB3FFC7E3
            F6FF1B65B9FF286BABFF041237950000000E0000000200000000000000000000
            000000000000000000000000000000000000000000031013163E458BC6FFDDFE
            FDFF4DB4E6FF1B67BAFF2E73B1FF051439940000000D00000002000000000000
            00000000000000000000000000000000000000000001000000081B44628D439F
            D5FFDDFEFDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000CA5A5A5A7A1A1
            A1A9A1A1A1A9A5A5A5A74C4C4C4DBBBBBBC0B8B8B8C1B8B8B8C1B1B1B1C46D96
            B5E348A5D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E90A1A1A1A8744E
            42F7744E42F7B8B8B8C18989898E94847EDC6A4132FF978883D86A4032FF7457
            4DF04F6981FC4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FFA2A2A2A89275
            6BE86E4332FFA6A19ECCB2B2B2C38C695CF0734737FFAAA7A6C97B4E3EFF7D51
            3FFF917C76E259758FF64EAFDDFFDDFEFDFF6BDEFBFF287AC5FF72727275A79A
            95D3744534FF704232FF7E4F3CFF845342FF7C584BF4B2B2B2C4835342FF8563
            56F0B5B5B5C2ABA8A6C853667DFF51B2DFFFDDFEFDFF4CA7D7FF33333334B5B1
            B0C6895541FF8F6556F49A8279E182513EFF8E756CE3B5B5B5C27F4F3DFF7F5D
            52F0B7B7B7C2B1AEACC77B4E3CFF58728AF8327FBFFF163A5A860D0D0D0DBBBB
            BBC1916A5BEF855848F79F8A82DC804D3AFFA49792D2B8B8B8C284503DFF7443
            32FF947E76E0937366EC7F4E3DFF927D75DF8888889000000003000000008A8A
            8A8DA2887EDF824C37FF956D5DF0804F3DFBBABABAC1BABABAC18B5540FF8558
            48F78C6253F38C5C48FB916F62EBBBBBBBC15959595A00000000000000005959
            595AB0A5A1CD8B533CFF8E5740FF8B6154EFAFAFAFB3BBBBBBC18A543FFF926A
            5CEFACACACB5AFAFAFB4AFAFAFB37F7F7F800000000000000000000000002626
            2626BCBCBCC0966450F78B523BFFA18A83DA8B8B8B8DBCBCBCC08B513DFF8C63
            54EF8A8A8A8D0000000000000000000000000000000000000000000000000000
            0000A5A5A5A6BDBDBDC0BDBDBDC0BEBEBEC04C4C4C4CBEBEBEBFBDBDBDC0BDBD
            BDC08B8B8B8C0000000000000000000000000000000000000000}
          Width = 108
        end
        object cxView_NominaColumn9: TcxGridDBColumn
          Caption = 'Pago Fuera'
          DataBinding.FieldName = 'PagoFuera'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxView_NominaColumn9PropertiesEditValueChanged
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000040000000F000000110000
            000B000000040000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000E431B10FF31130BE1190A
            0598030407420000000C00000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000D673C29DCB8C7D2FF7789
            A3FF224084FF040F34960000000F000000020000000000000000000000000000
            0000000000000000000000000000000000000000000841261A91869AB3FFC7E3
            F6FF1B65B9FF286BABFF041237950000000E0000000200000000000000000000
            000000000000000000000000000000000000000000031013163E458BC6FFDDFE
            FDFF4DB4E6FF1B67BAFF2E73B1FF051439940000000D00000002000000000000
            00000000000000000000000000000000000000000001000000081B44628D439F
            D5FFDDFEFDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000CA5A5A5A7A1A1
            A1A9A1A1A1A9A5A5A5A74C4C4C4DBBBBBBC0B8B8B8C1B8B8B8C1B1B1B1C46D96
            B5E348A5D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E90A1A1A1A8744E
            42F7744E42F7B8B8B8C18989898E94847EDC6A4132FF978883D86A4032FF7457
            4DF04F6981FC4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FFA2A2A2A89275
            6BE86E4332FFA6A19ECCB2B2B2C38C695CF0734737FFAAA7A6C97B4E3EFF7D51
            3FFF917C76E259758FF64EAFDDFFDDFEFDFF6BDEFBFF287AC5FF72727275A79A
            95D3744534FF704232FF7E4F3CFF845342FF7C584BF4B2B2B2C4835342FF8563
            56F0B5B5B5C2ABA8A6C853667DFF51B2DFFFDDFEFDFF4CA7D7FF33333334B5B1
            B0C6895541FF8F6556F49A8279E182513EFF8E756CE3B5B5B5C27F4F3DFF7F5D
            52F0B7B7B7C2B1AEACC77B4E3CFF58728AF8327FBFFF163A5A860D0D0D0DBBBB
            BBC1916A5BEF855848F79F8A82DC804D3AFFA49792D2B8B8B8C284503DFF7443
            32FF947E76E0937366EC7F4E3DFF927D75DF8888889000000003000000008A8A
            8A8DA2887EDF824C37FF956D5DF0804F3DFBBABABAC1BABABAC18B5540FF8558
            48F78C6253F38C5C48FB916F62EBBBBBBBC15959595A00000000000000005959
            595AB0A5A1CD8B533CFF8E5740FF8B6154EFAFAFAFB3BBBBBBC18A543FFF926A
            5CEFACACACB5AFAFAFB4AFAFAFB37F7F7F800000000000000000000000002626
            2626BCBCBCC0966450F78B523BFFA18A83DA8B8B8B8DBCBCBCC08B513DFF8C63
            54EF8A8A8A8D0000000000000000000000000000000000000000000000000000
            0000A5A5A5A6BDBDBDC0BDBDBDC0BEBEBEC04C4C4C4CBEBEBEBFBDBDBDC0BDBD
            BDC08B8B8B8C0000000000000000000000000000000000000000}
          Width = 114
        end
        object cxView_NominaColumn8: TcxGridDBColumn
          Caption = 'Monto Total'
          DataBinding.FieldName = 'TotalNomina'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Width = 111
        end
      end
      object grid_NominaLevel1: TcxGridLevel
        GridView = cxView_Nomina
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 35
    Align = alTop
    TabOrder = 1
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
    inline frmBarraH11: TfrmBarraH1
      Left = 560
      Top = 1
      Width = 639
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 560
      ExplicitTop = 1
      ExplicitWidth = 639
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 639
        Height = 33
        ExplicitWidth = 639
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 47
          Width = 85
          Height = 31
          Visible = False
          ExplicitLeft = 47
          ExplicitWidth = 85
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 132
          Width = 82
          Height = 31
          Visible = False
          ExplicitLeft = 132
          ExplicitWidth = 82
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 214
          Width = 90
          Height = 31
          Visible = False
          ExplicitLeft = 214
          ExplicitWidth = 90
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 472
          Width = 86
          Height = 31
          Caption = 'Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = connection.cxIconos16
          OnClick = btnPrinterClick
          ExplicitLeft = 472
          ExplicitWidth = 86
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 558
          Height = 31
          ExplicitLeft = 558
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 304
          Width = 88
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 304
          ExplicitWidth = 88
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 392
          Height = 31
          ExplicitLeft = 392
          ExplicitHeight = 31
        end
      end
    end
    object btnPrinter: TcxButton
      Left = 440
      Top = 1
      Width = 120
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'N'#243'mina'
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPrinterClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 1200
    Height = 34
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1200
      34)
    object chkContinuo: TCheckBox
      Left = 763
      Top = 4
      Width = 73
      Height = 17
      Caption = 'Continuo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object cxCompacto: TcxCheckBox
      Left = 850
      Top = 4
      Caption = 'Compacto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
    end
    object CheckDescuento: TCheckBox
      Left = 999
      Top = 6
      Width = 88
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object CheckCompleto: TCheckBox
      Left = 905
      Top = 6
      Width = 88
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Proyecci'#243'n'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 13
      Top = 5
      Caption = 'N'#243'mina'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object lcbNomina: TcxLookupComboBox
      Left = 66
      Top = 5
      ParentFont = False
      Properties.KeyFieldNames = 'IdNomina'
      Properties.ListColumns = <
        item
          FieldName = 'Titulo'
        end>
      Properties.ListSource = dsNomina
      Properties.OnEditValueChanged = lcbNominaPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 260
    end
    object LabelProceso: TcxLabel
      Left = 355
      Top = 6
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
      Left = 432
      Top = 6
      Anchors = [akLeft]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Visible = False
      Width = 153
    end
  end
  object EmpleadosDiasL: TUniQuery
    Connection = connection.Uconnection
    Left = 672
    Top = 165
  end
  object frxReportPreNomina: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43286.783205046300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure ConcentradoEmpleadosOnBeforePrint(Sender: TfrxComponen' +
        't);'
      'var'
      '   FecAux : tDateTime;'
      '   Resultado : boolean;'
      '   iDia, iLeft : double;'
      '   mes:String;'
      '   diasTotales : integer;'
      'begin'
      ''
      '   try'
      
        '     FecAux := StrToDate('#39'29/02/'#39'+copy(dateTostr(<fecha_final>),' +
        '7,4));'
      '     Resultado := True;'
      '   except'
      '     Resultado := False;'
      '   end;'
      ''
      '    mes    := copy(dateTostr(<fecha_final>),4,2);'
      ''
      
        '    if (StrToInt(mes) =1) or (StrToInt(mes)=3) or (StrToInt(mes)' +
        '=5) or (StrToInt(mes)=7) or (StrToInt(mes)=8) or (StrToInt(mes)=' +
        '10) or (StrToInt(mes) = 12) then'
      '       diasTotales := 31;'
      ''
      '    if (StrToInt(mes)=2) then'
      '       diasTotales := 28;'
      ''
      '    if (StrToInt(mes)=2) and (Resultado =True) then'
      '       diasTotales := 29;'
      ''
      
        '    if (StrToInt(mes)=4) or (StrToInt(mes)=6) or (StrToInt(mes)=' +
        '9) or (StrToInt(mes)=11) then'
      '       diasTotales := 30;'
      'end;'
      ''
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'Begin'
      ''
      'End.')
    OnGetValue = frxReportPreNominaGetValue
    OnReportPrint = 'no '
    Left = 203
    Top = 235
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSetName = 'dsGeneradorFolio'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clNavy
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object ConcentradoEmpleados: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 412.000000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ConcentradoEmpleadosOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 155.783010040000000000
        Top = 18.897650000000000000
        Width = 1481.575760000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        object Memo2: TfrxMemoView
          Left = 0.093611490000000010
          Top = 125.480314960000000000
          Width = 309.921259840000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'TRABAJADOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 309.921259840000000000
          Top = 125.480314960000000000
          Width = 200.314960630000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 9.786538890000000000
          Top = 64.612369750000000000
          Width = 40.822614440000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[contrato."sCodigo"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 510.236220470000000000
          Top = 125.533521890000000000
          Width = 420.661441730000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'NUMERO DE CUENTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 930.948930380000000000
          Top = 125.533521890000000000
          Width = 138.917441450000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'TRANSFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 1069.606350470000000000
          Top = 125.533521890000000000
          Width = 147.977274600000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'POR FUERA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 1217.385878030000000000
          Top = 125.533521890000000000
          Width = 136.818897640000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 1354.204775670000000000
          Top = 125.533521890000000000
          Width = 113.385826770000000000
          Height = 30.249488150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 247.460317460000000000
          Top = 76.657905560000000000
          Width = 1026.609462120000000000
          Height = 36.675427780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NUMERO DE CTAS. PARA TRANSFERENCIAS')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 4.444444440000000000
          Top = 9.991238890000003000
          Width = 212.266027780000000000
          Height = 98.897650000000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 24.243248890000000000
        Top = 287.244280000000000000
        Width = 1481.575760000000000000
        object Memo4: TfrxMemoView
          Top = 3.779530000000022000
          Width = 929.764380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 16629143
          Memo.UTF8W = (
            'TOTALES POR PROYECTO')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 929.764380000000000000
          Top = 3.779530000000022000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16629143
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Transferencia">,MasterData2)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1069.606990000000000000
          Top = 3.779530000000022000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16629143
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."PagoFuera">,MasterData2)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 1217.385826771653000000
          Top = 3.779530000000022000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16629143
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalNomina">,MasterData2)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 245.669450000000000000
        Width = 1481.575760000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Width = 309.921259840000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 309.921259840000000000
          Width = 200.314960630000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."SalarioTexto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 510.236220470000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Banamex"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 930.948930380000000000
          Width = 138.865511200000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Transferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 1069.606350470000000000
          Width = 147.977274600000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."PagoFuera"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 1217.385878030000000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."TotalNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 1354.204724409449000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."CodigoPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 680.315400000000000000
          Width = 250.582701570000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."OtroBanco"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456685590000000000
        Top = 196.535560000000000000
        Width = 1481.575760000000000000
        Condition = 'dsGeneradorFolio."Proyecto"'
        KeepTogether = True
        object Memo1: TfrxMemoView
          Width = 1468.346456690000000000
          Height = 26.456685590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 13421772
          Memo.UTF8W = (
            'PROYECTO: [dsGeneradorFolio."Proyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 332.598640000000000000
        Width = 1481.575760000000000000
        object Memo19: TfrxMemoView
          Top = 3.779530000000022000
          Width = 929.764380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16744576
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL GLOBAL')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 929.764380000000000000
          Top = 3.779530000000022000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16744576
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Transferencia">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 1069.606990000000000000
          Top = 3.779530000000022000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16744576
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."PagoFuera">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 1217.385826771653000000
          Top = 3.779530000000022000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 16744576
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalNomina">,MasterData2,2)]')
          ParentFont = False
        end
      end
    end
  end
  object zNomina: TUniQuery
    Connection = connection.Uconnection
    Left = 416
    Top = 193
  end
  object dsNomina: TDataSource
    DataSet = zNomina
    Left = 464
    Top = 200
  end
  object zNominaEmpleados: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 112
    Top = 169
  end
  object dsNominaEmpleados: TDataSource
    DataSet = zNominaEmpleados
    Left = 216
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 241
    object ActualizarNmina1: TMenuItem
      Caption = 'Actualizar N'#243'mina'
      Hint = 
        'Llena o actualiza la informaci'#243'n de la n'#243'mina seleccionada en ba' +
        'se a la pren'#243'mina correspondiente'
      OnClick = ActualizarNmina1Click
    end
    object raerDasLaboradosdelPeriodoAnterior1: TMenuItem
      Caption = 'Traer D'#237'as Laborados del Periodo Anterior'
      Enabled = False
      OnClick = raerDasLaboradosdelPeriodoAnterior1Click
    end
  end
  object zDiasL: TUniQuery
    Connection = connection.Uconnection
    Left = 368
    Top = 241
  end
end
