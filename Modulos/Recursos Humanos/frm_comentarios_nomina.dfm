object frmComentariosNomina: TfrmComentariosNomina
  Left = 406
  Top = 268
  AlphaBlend = True
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Comentarios por N'#243'mina'
  ClientHeight = 473
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object grid_Personal: TcxGrid
    Left = 0
    Top = 33
    Width = 768
    Height = 440
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 0
    object Grid_cuadrilla: TcxGridDBTableView
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
      DataController.DataSource = ds_empleados
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.TranslateBetween = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object Grid_cuadrillaColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Empresa'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Width = 79
      end
      object Grid_cuadrillaColumn2: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombrePersonal'
        Options.Editing = False
        Width = 151
      end
      object Grid_cuadrillaColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Puesto'
        Options.Editing = False
        Width = 139
      end
      object Grid_cuadrillaColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Proyecto'
        Visible = False
        GroupIndex = 1
        Options.Editing = False
        Width = 85
      end
      object Grid_cuadrillaColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Comentarios'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnEditValueChanged = Grid_cuadrillaColumn5PropertiesEditValueChanged
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
        Width = 422
      end
    end
    object cxViewCuadrilla: TcxGridLevel
      GridView = Grid_cuadrilla
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 33
    Align = alTop
    TabOrder = 1
    object cxLabelTitulo: TcxLabel
      Left = 1
      Top = 34
      Align = alClient
      Caption = 'Agregar Personal a Guardia'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object cxTexGuardia: TcxTextEdit
      Left = 407
      Top = 34
      Align = alRight
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 360
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 766
      Height = 33
      Align = alTop
      TabOrder = 2
      object cxLabel3: TcxLabel
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Agregar Comentarios a N'#243'mina'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.TextColor = clHighlight
        Style.IsFontAssigned = True
      end
      object cxTextEdit1: TcxTextEdit
        Left = 330
        Top = 1
        Align = alRight
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 360
      end
      object cxButton1: TcxButton
        Left = 690
        Top = 1
        Width = 75
        Height = 31
        Align = alRight
        Caption = 'Imprimir'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 2
        OnClick = cxButton1Click
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Tag = 9
    Images = connection.cxIconos16
    Left = 113
    Top = 96
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      Enabled = False
      ImageIndex = 0
      ShortCut = 16429
    end
    object Editar1: TMenuItem
      Tag = 1
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
    end
    object Can1: TMenuItem
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
    end
    object Copiar1: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object Pegar1: TMenuItem
      Caption = '&Pegar'
      ShortCut = 16470
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 1
      Caption = 'Eliminar'
      Enabled = False
      ImageIndex = 4
      ShortCut = 16452
    end
    object Refresh1: TMenuItem
      Tag = 1
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = Refresh1Click
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
      OnClick = frmBarra1btnExitClick
    end
  end
  object ds_empleados: TDataSource
    DataSet = empleados
    Left = 376
    Top = 168
  end
  object empleados: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 304
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43287.803997696760000000
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
    OnGetValue = frxReport1GetValue
    OnReportPrint = 'no '
    Left = 648
    Top = 200
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
          Left = 0.093611490000000000
          Top = 125.480314960000000000
          Width = 341.405151840000000000
          Height = 30.249488150995100000
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
          Left = 340.913385830000000000
          Top = 125.480314960000000000
          Width = 254.362204724409000000
          Height = 30.249488150995100000
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
          Left = 595.525509730000000000
          Top = 125.533521890000000000
          Width = 871.820017670000000000
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
            'COMENTARIOS')
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
            'COMENTARIOS POR PREN'#211'MINA')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 4.444444440000000000
          Top = 9.991238889999997000
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
        Height = 16.684188890000000000
        Top = 287.244280000000000000
        Width = 1481.575760000000000000
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
          Width = 341.413877150000000000
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
          Left = 340.913385830000000000
          Width = 254.362204720000000000
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
            '[dsGeneradorFolio."Salario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 595.314948750000000000
          Width = 871.895821000000000000
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
            '[dsGeneradorFolio."Comentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456685590000000000
        Top = 196.535560000000000000
        Width = 1481.575760000000000000
        Condition = 'dsGeneradorFolio."sIdProyecto"'
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
            'PROYECTO: [dsGeneradorFolio."Proy"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 325.039580000000000000
        Width = 1481.575760000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'dsComentariosN'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 600
    Top = 208
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 352
    Top = 256
  end
end
