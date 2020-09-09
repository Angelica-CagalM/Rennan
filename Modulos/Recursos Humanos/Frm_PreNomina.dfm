object FrmPreNomina: TFrmPreNomina
  Left = 0
  Top = 0
  Caption = 'Pre N'#243'mina'
  ClientHeight = 580
  ClientWidth = 1143
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
    Top = 69
    Width = 1143
    Height = 511
    Align = alClient
    TabOrder = 0
    object cxSplitterLateral: TcxSplitter
      Left = 1136
      Top = 1
      Width = 6
      Height = 509
      AlignSplitter = salRight
      Visible = False
    end
    object grid_Nomina: TcxGrid
      Left = 1
      Top = 1
      Width = 1135
      Height = 509
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
            Column = cxView_NominaColumn7
          end
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn5
          end
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn10
          end
          item
            Format = '$,0.00'
            Kind = skSum
            Column = cxView_NominaColumn13
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
          Visible = False
          GroupIndex = 1
          Width = 83
        end
        object cxView_NominaColumn4: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NombrePersonal'
          Width = 164
        end
        object cxView_NominaColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
          Width = 196
        end
        object cxView_NominaColumn6: TcxGridDBColumn
          Caption = 'D'#237'as'
          DataBinding.FieldName = 'Dias'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 50
        end
        object cxView_NominaColumn11: TcxGridDBColumn
          Caption = 'Otros Pagos'
          DataBinding.FieldName = 'OtrosPagos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.OnEditValueChanged = cxView_NominaColumn11PropertiesEditValueChanged
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
          Width = 105
        end
        object cxView_NominaColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.UseDisplayFormatWhenEditing = True
          Width = 64
        end
        object cxView_NominaColumn5: TcxGridDBColumn
          Caption = 'Bono'
          DataBinding.FieldName = 'Bonos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.OnEditValueChanged = cxView_NominaColumn5PropertiesEditValueChanged
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
          Width = 95
        end
        object cxView_NominaColumn10: TcxGridDBColumn
          Caption = 'Anticipo'
          DataBinding.FieldName = 'Anticipos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.OnEditValueChanged = cxView_NominaColumn10PropertiesEditValueChanged
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
          Width = 103
        end
        object cxView_NominaColumn7: TcxGridDBColumn
          Caption = 'Descuento'
          DataBinding.FieldName = 'Descuentos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseDisplayFormatWhenEditing = True
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
          Width = 100
        end
        object cxView_NominaColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'INFONAVIT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseDisplayFormatWhenEditing = True
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
          Width = 101
        end
        object cxView_NominaColumn13: TcxGridDBColumn
          Caption = 'Monto Total'
          DataBinding.FieldName = 'MontoTotal'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Width = 70
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
    Width = 1143
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
      Left = 528
      Top = 1
      Width = 614
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 528
      ExplicitTop = 1
      ExplicitWidth = 614
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Width = 614
        Height = 33
        ExplicitWidth = 614
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Left = 38
          Width = 77
          Height = 31
          Visible = False
          ExplicitLeft = 38
          ExplicitWidth = 77
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Left = 115
          Height = 31
          Visible = False
          ExplicitLeft = 115
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Left = 195
          Height = 31
          Visible = False
          ExplicitLeft = 195
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Left = 435
          Width = 77
          Height = 31
          Caption = 'Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = connection.cxIconos16
          OnClick = btnPrenominaClick
          ExplicitLeft = 435
          ExplicitWidth = 77
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Left = 512
          Width = 101
          Height = 31
          Caption = 'Comentarios'
          OnClick = btnDetalleClick
          ExplicitLeft = 512
          ExplicitWidth = 101
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Left = 275
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 275
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Left = 355
          Height = 31
          ExplicitLeft = 355
          ExplicitHeight = 31
        end
      end
    end
    object cxActualizar: TcxButton
      Left = 313
      Top = 1
      Width = 107
      Height = 33
      Align = alRight
      Caption = 'Actualizar'
      OptionsImage.ImageIndex = 54
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxActualizarClick
    end
    object btnPrenomina: TcxButton
      Left = 420
      Top = 1
      Width = 108
      Height = 33
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'Pre N'#243'mina'
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPrenominaClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 1143
    Height = 34
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1143
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
      Left = 942
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
      Left = 848
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
      Left = 29
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
      Left = 82
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
      Width = 303
    end
    object LabelProceso: TcxLabel
      Left = 426
      Top = 5
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
      Left = 510
      Top = 5
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
    ReportOptions.LastChange = 43280.456239918980000000
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
      PaperWidth = 491.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ConcentradoEmpleadosOnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 166.745516670000000000
        Top = 18.897650000000000000
        Width = 1783.182254000000000000
        AllowSplit = True
        Condition = 'dsConfiguracion."sContrato"'
        object Memo2: TfrxMemoView
          Left = 1.601113330000000000
          Top = 89.756780400000000000
          Width = 243.394661110000000000
          Height = 69.361368890000000000
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
            'Trabajador')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 244.995774440000000000
          Top = 89.574803150000000000
          Width = 224.059575560000000000
          Height = 69.361368890000000000
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
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 469.055350000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN1"][dsGeneradorFolio."FDiasN16"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 499.291590000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN2"][dsGeneradorFolio."FDiasN17"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.527830000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN3"][dsGeneradorFolio."FDiasN18"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 559.764070000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN4"][dsGeneradorFolio."FDiasN19"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 590.000310000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN5"][dsGeneradorFolio."FDiasN20"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          Left = 620.236550000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN6"][dsGeneradorFolio."FDiasN21"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 650.472790000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN7"][dsGeneradorFolio."FDiasN22"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.709030000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN8"][dsGeneradorFolio."FDiasN23"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 710.945270000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN9"][dsGeneradorFolio."FDiasN24"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 741.181510000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN10"][dsGeneradorFolio."FDiasN25"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 771.417750000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN11"][dsGeneradorFolio."FDiasN26"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 801.653990000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN12"][dsGeneradorFolio."FDiasN27"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 831.890230000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
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
            '[dsGeneradorFolio."FDiasN13"][dsGeneradorFolio."FDiasN28"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 862.126470000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
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
            '[dsGeneradorFolio."FDiasN14"][dsGeneradorFolio."FDiasN29"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 892.362710000000000000
          Top = 140.288806670000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
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
            '[dsGeneradorFolio."FDiasN15"][dsGeneradorFolio."FDiasN30"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 469.055350000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias1"][dsGeneradorFolio."FDias16"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 499.291590000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias2"][dsGeneradorFolio."FDias17"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Left = 529.527830000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias3"][dsGeneradorFolio."FDias18"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Left = 559.764070000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias4"][dsGeneradorFolio."FDias19"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Left = 590.000310000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias5"][dsGeneradorFolio."FDias20"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Left = 620.236550000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias6"][dsGeneradorFolio."FDias21"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo25: TfrxMemoView
          Left = 650.472790000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias7"][dsGeneradorFolio."FDias22"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          Left = 680.709030000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias8"][dsGeneradorFolio."FDias23"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo27: TfrxMemoView
          Left = 710.945270000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias9"][dsGeneradorFolio."FDias24"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo28: TfrxMemoView
          Left = 741.181510000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias10"][dsGeneradorFolio."FDias25"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Left = 771.417750000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias11"][dsGeneradorFolio."FDias26"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo30: TfrxMemoView
          Left = 801.653990000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias12"][dsGeneradorFolio."FDias27"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 831.890230000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias13"][dsGeneradorFolio."FDias28"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo32: TfrxMemoView
          Left = 862.126470000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias14"][dsGeneradorFolio."FDias29"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo33: TfrxMemoView
          Left = 892.362710000000000000
          Top = 89.574803150000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias15"][dsGeneradorFolio."FDias30"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo34: TfrxMemoView
          Left = 952.598950000000000000
          Top = 89.574803150000000000
          Width = 37.795300000000000000
          Height = 69.543307090000000000
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
            'D'#237'as')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 990.394250000000000000
          Top = 89.574803150000000000
          Width = 77.480365000000000000
          Height = 69.543307090000000000
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
            'Alta IMSS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 1067.874615000000000000
          Top = 89.574803150000000000
          Width = 77.480365000000000000
          Height = 69.543307090000000000
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
            'Baja IMSS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 1145.354980000000000000
          Top = 89.574803150000000000
          Width = 62.645709750000000000
          Height = 69.543307090000000000
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
            'SDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 1208.000689750000000000
          Top = 89.574803150000000000
          Width = 73.984299750000100000
          Height = 69.543307090000000000
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
            'SDR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 1281.984989500000000000
          Top = 89.574803150000000000
          Width = 73.728734040000000000
          Height = 69.543307090000000000
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
            'S.Neto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 1355.713723540000000000
          Top = 89.574803150000000000
          Width = 59.230183230000000000
          Height = 69.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'Bonos'
            'Comida /'
            'Pasajes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 1414.943906770000000000
          Top = 89.574803150000000000
          Width = 59.230183230000000000
          Height = 69.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'Anticipos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 1538.645691260000000000
          Top = 89.574803150000000000
          Width = 60.472480000000000000
          Height = 69.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'INFONAVIT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 1599.496070310000000000
          Top = 89.574803150000000000
          Width = 79.370130000000000000
          Height = 69.543307090000000000
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
            'Total '
            'Descuentos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 1679.244094488190000000
          Top = 89.574803150000000000
          Width = 102.047310000000000000
          Height = 69.543307090000000000
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
            'Total '
            'Nomina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 10.897650000000000000
          Top = 26.834591970000000000
          Width = 336.378170000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[contrato."sCodigo"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 922.432178890000000000
          Top = 140.220472440000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
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
            '[dsGeneradorFolio."FDiasN31"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Left = 922.432178890000000000
          Top = 89.991238890000000000
          Width = 30.236240000000000000
          Height = 51.023622050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."FDias31"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo74: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 336.378170000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRE- N'#211'MINA')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 1474.016700000000000000
          Top = 89.574803150000000000
          Width = 64.251968500000000000
          Height = 69.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 10965258
          HAlign = haCenter
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 20.463718890000000000
        Top = 294.803340000000000000
        Width = 1783.182254000000000000
        object Memo53: TfrxMemoView
          Left = 1679.244094490000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalNomina">,MasterData2)]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Width = 1353.071740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Fill.BackColor = 16700346
          Memo.UTF8W = (
            'Total por Proyecto')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 1353.071740000000000000
          Width = 63.009713230000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Bonos">,MasterData2)]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 1415.055118110000000000
          Width = 59.230183230000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Anticipos">,MasterData2)]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 1474.016700000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Descuento">,MasterData2)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 1538.645669290000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalInf">,MasterData2)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 1599.496062990000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 16700346
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalDeduciones">,MasterData2)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 1783.182254000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSetName = 'dsGeneradorFolio'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Left = 1.511811020000000000
          Width = 243.401557720000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Nombre"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 244.913368740000000000
          Width = 224.125984250000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Puesto"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 469.055350000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad1"][dsGeneradorFolio."dCantidad16"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo51: TfrxMemoView
          Left = 499.291590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad2"][dsGeneradorFolio."dCantidad17"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo52: TfrxMemoView
          Left = 529.527830000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo52OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad3"][dsGeneradorFolio."dCantidad18"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo54: TfrxMemoView
          Left = 559.764070000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad4"][dsGeneradorFolio."dCantidad19"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo55: TfrxMemoView
          Left = 590.000310000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo55OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad5"][dsGeneradorFolio."dCantidad20"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 620.236550000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo56OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad6"][dsGeneradorFolio."dCantidad21"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 650.472790000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo57OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad7"][dsGeneradorFolio."dCantidad22"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo58: TfrxMemoView
          Left = 680.709030000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo58OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad8"][dsGeneradorFolio."dCantidad23"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo59: TfrxMemoView
          Left = 710.945270000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad9"][dsGeneradorFolio."dCantidad24"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 741.181510000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo60OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad10"][dsGeneradorFolio."dCantidad25"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 771.417750000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo61OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad11"][dsGeneradorFolio."dCantidad26"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo62: TfrxMemoView
          Left = 801.653990000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo62OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad12"][dsGeneradorFolio."dCantidad27"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 831.890230000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo63OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad13"][dsGeneradorFolio."dCantidad28"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 862.126470000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo64OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad14"][dsGeneradorFolio."dCantidad29"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 892.362710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo65OnBeforePrint'
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad15"][dsGeneradorFolio."dCantidad30"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo66: TfrxMemoView
          Left = 952.598950000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dcantTotal"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 990.394250000000000000
          Top = -0.000000000000056843
          Width = 77.480365000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Alta"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 1067.874615000000000000
          Top = -0.000000000000056843
          Width = 77.480365000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dsGeneradorFolio."Baja"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 1145.354980000000000000
          Top = -0.000000000000056843
          Width = 62.645709750000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."SDI"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 1208.000689750000000000
          Top = -0.000000000000028422
          Width = 73.984299750000100000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."SDR"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 1281.984989500000000000
          Width = 73.728734040000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."SNeto"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 1355.713723540000000000
          Width = 59.230183230000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Bonos"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 1414.943906770000000000
          Width = 59.230183230000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Anticipos"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 1538.645691260000000000
          Width = 60.472480000000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."TotalInf"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 1599.496070310000000000
          Width = 79.370130000000000000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."TotalDeduciones"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 1679.244094490000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."TotalNomina"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 922.432178890000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsGeneradorFolio."dCantidad31"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo79: TfrxMemoView
          Left = 1474.016700000000000000
          Width = 64.251968503937010000
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
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[dsGeneradorFolio."Descuento"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 1783.182254000000000000
        Condition = 'dsGeneradorFolio."Proyecto"'
        object Memo45: TfrxMemoView
          Left = 1.511811020000000000
          Width = 1780.158630000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[dsGeneradorFolio."Proyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 1783.182254000000000000
        object Memo75: TfrxMemoView
          Left = 1679.244094490000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalNomina">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Top = 3.779530000000022000
          Width = 1353.071740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL GLOBAL')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 1353.071740000000000000
          Top = 3.779530000000022000
          Width = 63.009713230000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Bonos">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 1415.055118110000000000
          Top = 3.779530000000022000
          Width = 59.230183230000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Anticipos">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 1474.016700000000000000
          Top = 3.779530000000022000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."Descuento">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 1538.645669290000000000
          Top = 3.779530000000022000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalInf">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 1599.496062990000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSetName = 'dsGeneradorFolio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clMoneyGreen
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsGeneradorFolio."TotalDeduciones">,MasterData2,2)]')
          ParentFont = False
        end
      end
    end
  end
  object zNomina: TUniQuery
    Connection = connection.Uconnection
    Left = 344
    Top = 185
  end
  object dsNomina: TDataSource
    DataSet = zNomina
    Left = 392
    Top = 192
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
    object raerDasLaboradosdelPeriodoAnterior1: TMenuItem
      Caption = 'Traer D'#237'as Laborados del Periodo Anterior'
      Enabled = False
      OnClick = raerDasLaboradosdelPeriodoAnterior1Click
    end
  end
  object zDiasL: TUniQuery
    Connection = connection.Uconnection
    Left = 448
    Top = 177
  end
end
