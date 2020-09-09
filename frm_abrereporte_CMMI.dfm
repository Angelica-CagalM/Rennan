object frmAbreReporte_CMMI: TfrmAbreReporte_CMMI
  Left = 469
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desautorizar Documentos'
  ClientHeight = 489
  ClientWidth = 1134
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 41
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 40
      Width = 1132
      Height = 39
      Align = alTop
      TabOrder = 0
      object btnEnviar: TcxButton
        Tag = 13
        Left = 1025
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object btnAutoriza: TcxButton
        Tag = 11
        Left = 571
        Top = 1
        Width = 121
        Height = 37
        Align = alRight
        Caption = 'Des-Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAutorizaClick
      end
      object btnValida: TcxButton
        Tag = 10
        Left = 296
        Top = 1
        Width = 120
        Height = 37
        Align = alRight
        Caption = 'Des-Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object cxVisualizar: TcxButton
        Tag = 12
        Left = 919
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVisualizarClick
      end
      object btnHabilita: TcxButton
        Tag = 11
        Left = 692
        Top = 1
        Width = 121
        Height = 37
        Align = alRight
        Caption = 'Habilitar'
        OptionsImage.ImageIndex = 15
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnHabilitaClick
      end
      object cxRefrescar1: TcxButton
        Tag = 12
        Left = 813
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Refrescar'
        OptionsImage.ImageIndex = 19
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnValidaTecnico: TcxButton
        Left = 416
        Top = 1
        Width = 155
        Height = 37
        Align = alRight
        Caption = 'Desvalidar T'#233'cnico'
        OptionsImage.ImageIndex = 48
        OptionsImage.Images = frmrepositorio.IconosTodos32
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaTecnicoClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1132
      Height = 39
      Align = alTop
      TabOrder = 1
      object btnEnviar2: TcxButton
        Tag = 13
        Left = 1025
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object btnAutoriza2: TcxButton
        Tag = 11
        Left = 109
        Top = 1
        Width = 121
        Height = 37
        Align = alRight
        Caption = 'Des-Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAutorizaClick
      end
      object btnValida2: TcxButton
        Tag = 10
        Left = -11
        Top = 1
        Width = 120
        Height = 37
        Align = alRight
        Caption = 'Des-Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object cxVisualizar2: TcxButton
        Tag = 12
        Left = 919
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVisualizarClick
      end
      object btnHabilita2: TcxButton
        Tag = 11
        Left = 230
        Top = 1
        Width = 121
        Height = 37
        Align = alRight
        Caption = 'Habilitar'
        OptionsImage.ImageIndex = 15
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnHabilitaClick
      end
      object btnDComprar2: TcxButton
        Tag = 11
        Left = 692
        Top = 1
        Width = 121
        Height = 37
        Align = alRight
        Caption = 'Des-P.O.'
        OptionsImage.ImageIndex = 14
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = btnDComprarClick
      end
      object cxSAP2: TcxButton
        Tag = 10
        Left = -124
        Top = 1
        Width = 113
        Height = 37
        Hint = 'Nuevo Registro'
        Align = alRight
        Caption = 'Formato SAP'
        OptionsImage.ImageIndex = 57
        OptionsImage.Images = connection.cxIconos16
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxSAPClick
      end
      object btnPR: TcxButton
        Tag = 11
        Left = 586
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Des-P.R.'
        OptionsImage.ImageIndex = 14
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnPRClick
      end
      object btnAsignarCC: TcxButton
        Tag = 11
        Left = 457
        Top = 1
        Width = 129
        Height = 37
        Align = alRight
        Caption = 'Des-Asignar CC'
        OptionsImage.ImageIndex = 18
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = btnAsignarCCClick
      end
      object cxRefrescar: TcxButton
        Tag = 12
        Left = 813
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Refrescar'
        OptionsImage.ImageIndex = 19
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxRefrescarClick
      end
      object btnDLiberar: TcxButton
        Tag = 11
        Left = 351
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Des-Liberar'
        OptionsImage.ImageIndex = 16
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnDLiberarClick
      end
    end
  end
  object cxLista: TcxListView
    Left = 0
    Top = 41
    Width = 1134
    Height = 70
    Align = alTop
    Columns = <>
    IconOptions.Arrangement = iaLeft
    IconOptions.AutoArrange = True
    Items.ItemData = {
      05180200000B0000003100000001000000FFFFFFFF00000000FFFFFFFF000000
      000D5200650071007500690073006900630069006F006E006500730027000000
      02000000FFFFFFFF00000000FFFFFFFF00000000114F007200640065006E0065
      007300200064006500200063006F006D007000720061006A00000003000000FF
      FFFFFF00000000FFFFFFFF00000000125200650070006F007200740065002000
      49006E00730070006500630063006900F3006E002200000004000000FFFFFFFF
      00000000FFFFFFFF000000000845006E00740072006100640061007300230000
      0005000000FFFFFFFF00000000FFFFFFFF0000000007530061006C0069006400
      610073002400000006000000FFFFFFFF00000000FFFFFFFF0000000011410076
      00690073006F00200064006500200045006D0062006100720071007500650003
      00000007000000FFFFFFFF00000000FFFFFFFF000000000B5000720065007300
      7500700075006500730074006F000200000008000000FFFFFFFF00000000FFFF
      FFFF00000000035300410050002200000009000000FFFFFFFF00000000FFFFFF
      FF00000000095200650063006500700063006900F3006E00230000000A000000
      FFFFFFFF00000000FFFFFFFF000000000B44006500730065006D006200610072
      00710075006500800000000B000000FFFFFFFF00000000FFFFFFFF000000000B
      53006F006C0069006300690074007500640065007300}
    LargeImages = frmrepositorio.IconosTodos32
    ParentFont = False
    ReadOnly = True
    RowSelect = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleFocused.Color = clWhite
    StyleFocused.TextColor = clNone
    TabOrder = 1
    OnClick = cxListaClick
    ExplicitLeft = -4
    ExplicitTop = 35
  end
  object grid_datos: TcxGrid
    Left = 0
    Top = 111
    Width = 1134
    Height = 378
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object grid_datosView: TcxGridDBTableView
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
      OnCellClick = grid_datosViewCellClick
      OnCellDblClick = grid_datosViewCellDblClick
      DataController.DataSource = ds_datos
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = grid_datosViewStylesGetContentStyle
      object col_id: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Folio'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 78
      end
      object Col_Referencia: TcxGridDBColumn
        Caption = 'Proyecto / Ref.'
        DataBinding.FieldName = 'Referencia'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object Col_Solicitado: TcxGridDBColumn
        DataBinding.FieldName = 'Solicitado'
        HeaderAlignmentHorz = taCenter
        Width = 78
      end
      object col_entrega: TcxGridDBColumn
        DataBinding.FieldName = 'Entrega'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object col_usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        HeaderAlignmentHorz = taCenter
        Width = 78
      end
      object col_correo: TcxGridDBColumn
        Caption = 'Enviado'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object col_ImgEstado: TcxGridDBColumn
        Caption = 'Simbolo'
        Width = 78
      end
      object col_estatus: TcxGridDBColumn
        Caption = 'Estatus'
        DataBinding.FieldName = 'Estado'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object grid_datosViewColumn3: TcxGridDBColumn
        Visible = False
        Width = 79
      end
      object grid_datosViewColumn2: TcxGridDBColumn
        Visible = False
        Width = 80
      end
      object grid_datosViewColumn4: TcxGridDBColumn
        Visible = False
        Width = 59
      end
      object grid_datosViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Periodo'
        Width = 72
      end
      object col_est: TcxGridDBColumn
        Visible = False
        Width = 80
      end
      object grid_datosViewColumn5: TcxGridDBColumn
        Visible = False
        Width = 60
      end
      object grid_datosViewColumn6: TcxGridDBColumn
        Visible = False
        Width = 74
      end
    end
    object grid_datosLevel: TcxGridLevel
      GridView = grid_datosView
    end
  end
  object rDiario: TfrxReport
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
    ReportOptions.LastChange = 43455.853802418980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frxDBEntrada."UsuarioValido"> = '#39#39' then'
      '       Memo3.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo3.Text :=  <frxDBEntrada."sFicha4"> +#13+ <frxDBEntra' +
        'da."UsuarioValido"> +'#39' '#39'+DateTimeToStr(<frxDBEntrada."FechaValid' +
        'o">);'
      '    end;'
      'end;'
      ''
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBEntrada."UsuarioAutorizo"> = '#39#39' then'
      '       Memo2.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo2.Text :=  <frxDBEntrada."sFicha3"> +#13+ <frxDBEntra' +
        'da."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxDBEntrada."FechaAut' +
        'orizo">);'
      '    end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    OnReportPrint = 'no '
    Left = 408
    Top = 216
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 154.960693390000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo92: TfrxMemoView
          Left = 590.451490160000000000
          Top = 136.494129430000000000
          Width = 143.077172790000000000
          Height = 16.813067030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [<Page>] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 45.354360000000100000
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
            '[frxDBEntrada."sFicha1"] '
            ''
            ''
            '[frxDBEntrada."sEntrega"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 246.425196850000000000
          Top = 45.354359999999990000
          Width = 245.669291340000000000
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
            '[frxDBEntrada."sFicha2"]'
            ''
            ''
            '[frxDBEntrada."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo43: TfrxMemoView
          Left = 492.118430000000000000
          Top = 45.354359999999990000
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
            '[frxDBEntrada."sFicha2"]'
            ''
            ''
            '[frxDBEntrada."sFirmante3"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo44: TfrxMemoView
          Top = 136.063080000000100000
          Width = 246.425196850000000000
          Height = 18.897613390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Anexo 1.0 CMMI-ALM-01 Rev.  4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559059999999988000
          Width = 244.913139290000000000
          Height = 34.015743150000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntrada."sFicha3"]: [frxDBEntrada."UsuarioAutorizo"], [frx' +
              'DBEntrada."FechaAutorizo"]')
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
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 237.354079290000000000
          Height = 34.015743150000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxDBEntrada."sFicha4"]: [frxDBEntrada."UsuarioValido"], [frxDB' +
              'Entrada."FechaValido"]')
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 65.000000000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture2: TfrxPictureView
          Left = 7.602838200000000000
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
        object Picture3: TfrxPictureView
          Left = 533.993589250000000000
          Top = 11.292915920000000000
          Width = 175.409400000000000000
          Height = 43.440940000000000000
          Center = True
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Picture.Data = {
            07544269746D61703AC80000424D3AC80000000000003600000028000000FB00
            000033000000010020000000000004C800000000000000000000000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFF
            FF00FFFEFF00FFFFFF00FFFFFE00FFFFFF00FFFEFF00FFFEFF00FFFFFF00FFFF
            FE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFF
            FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFFFF00FFFEFF00FFFF
            FF00FFFFFE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFE
            FF00FFFFFF00FFFFFF00FDFFFE00FDFFFE00FFFFFF00FFFFFF00FFFFFE00FFFF
            FF00FFFEFF00FFFEFF00FFFEFF00FFFFFF00FFFFFE00FFFFFE00FFFFFF00FFFF
            FF00FDFFFF00FDFFFF00FFFEFF00FFFFFF00FFFFFF00FFFFFE00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFBFF00FFFDFF00FFFDFF00FEFEFE00FEFFFB00FFFFFE00FFFC
            FF00FFFCFF00FFFFFE00FFFFFB00FFFFFC00FDFFFE00FDFFFE00FFFFFF00FFFE
            FF00FFFEFF00FEFEFE00FFFFFE00FFFFFF00FFFFFF00FFFDFF00FFFEFE00FFFE
            FD00FFFFFB00FFFFFB00FAFEF900FDFFFE00FDFFFF00FDFFFF00FFFEFF00FDFC
            FF00FFFEFF00FFFDFF00FFFFFF00FDFFF900FDFFF900FDFFFE00FFFEFF00FFFE
            FF00FFFEFF00FFFDFF00FFFDFF00FFFFFF00FDFFFE00FBFFFC00FAFFFB00FCFF
            FD00FFFFFE00FDFFFC00FEFFFD00FFFCFF00FFFDFF00FDFDFF00FDFFFF00FFFF
            FC00FFFFFC00FFFFFE00FFFFFF00FAFFFF00FAFFFF00FFFEFF00FFFEFF00FFFF
            FE00FDFFFC00FFFFFE00FDFDFD00FFFFFF00FEFEFE00FFFFFF00FBFBFB00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFF00FFFDFF00FFFEFF00FEFE
            FE00FDFFFC00FDFFFE00FFFBFF00FFFBFF00FFFFFF00FFFFFC00FDFFFC00FDFF
            FE00FDFFFF00FFFEFF00FFFEFF00FFFEFF00FFFFFE00FCFFFD00FDFDFD00FEFD
            FF00FFFFFF00FFFFFF00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FDFFFE00FAFC
            FC00FAFCFD00FDFFFF00FEFDFF00FFFDFF00FFFDFF00FFFEFF00FDFFFB00FDFF
            FB00FDFFFE00FFFFFF00FFFEFF00FFFEFF00FFFDFF00FFFEFF00FDFEFC00FAFE
            F900FBFFFE00FBFFFE00FDFFFF00FCFDFB00FDFFFC00FFFFFE00FFFDFF00FFFC
            FF00FDFDFF00FDFFFF00FFFFFB00FFFFFB00FFFFFE00FFFFFF00FAFFFF00FAFF
            FF00FFFDFF00FFFDFF00FFFFFE00FFFFFC00FFFFFE00FFFFFF00FDFDFD00FEFE
            FE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFE00FDFFFC00FBFFFC00FBFFFE00FBFFFF00FBFDFF00FDFCFF00FDFD
            FF00FDFFFF00FDFFFC00FDFFFE00FFFCFF00FFFCFF00FFFEFF00FFFFFE00FFFF
            FE00FDFFFE00FDFFFF00FDFFFF00FDFFFF00FBFEFC00FDFEFC00FFFFFF00FFFE
            FE00FEFCFC00FFFFFF00FFFFFF00FFFFFF00FCFFFD00FDFFFC00FFFFFC00FFFE
            FF00FFFCFF00FFFDFF00FDFFFF00FDFFFE00FDFFFE00FFFEFF00FFFEFF00FFFF
            FE00FFFFF900FFFFFB00FFFFFE00F9FAFE00FDFDFF00FBFAFC00FFFFFF00FEFF
            FD00FFFFFF00FFFEFF00FFFDFF00FCFDFF00FCFEFF00FFFDFE00FFFEFD00FFFC
            FD00FFFEFE00FAFFFE00FBFFFF00FFFEFF00FFFEFF00FFFFFF00FFFFFF00FBFB
            FB00FFFFFF00FBFBFB00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFDFD00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F6F6FF00F3F5FF00F4F6FF00F3F7FF00F2F6FF00F3F5
            FF00F3F3FF00F4F3FF00F6F2FF00F6F4FF00F6F6FF00F6F6FF00F8F2FF00F8F1
            FF00F8F4FF00FAF5FF00FAF5FF00F6F3FF00F3F2FF00F6F5FF00F6F5FF00F6F6
            FF00F8F6FF00FAF6FF00FBF5FF00FFF8FF00FDF8FF00FDFAFF00FEFDFF00FCFF
            FD00FDFFFB00FFFFFC00FFFEFF00FFFDFF00FFFBFF00FFFCFF00FDFFFF00FBFF
            FF00FBFEFF00FDFFFF00FFFFFB00FFFFF900FAFCF600FFFFFF00FFFDFF00FBF8
            FF00FEFDFF00FFFEFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FDFF
            FF00FFFEFF00FFFEFF00FFFEFF00FFFEFF00FDFFFF00FBFFFF00FFFEFF00FFFE
            FF00FFFEFF00FFFDFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00F9F9
            F900FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00928EED008A86E6008C86
            EB008C86EB008B87E6008E88E7008C84E8008E86EB008D84EC008D85EA008F87
            E6008F87E6008F84EA008F84EC008F86E7008F87E6009083E5009386E800958A
            EB009187EB008B80E6008F85E900A59BF800BDB3FF00DED5FF00F6EEFF00F7EF
            FF00F8F4FF00FDFCFF00FCFEFF00F8FAFA00FFFFFE00FFFFFE00FFFEFF00FFFC
            FF00FFFCFF00FDFEFF00FBFEFF00FAFFFF00FAFFFF00F5FDF300FDFFF900FFFF
            FE00FFFEFF00FFFCFF00FFFCFF00E1E0E400CCCBCF00D0D0D000D2D3D100D4D5
            D300D2D5D300D0D5D300D2D4D400D8D3D400DAD4D500DAD5D400D9D5D400D3D6
            D400D2D5D300D3D3D300D4D1D300D5D0D200D2CFD100D7D7D700F7F7F700FFFF
            FF00FFFFFF00FCFCFC00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF003832B9002A23AC002C21B3002E21B3002D23AC003125AD002F22AE002E22
            B0002D20B1002D20B1002F22AC002F22AC002F22AE002D22AE002D23AC002D23
            AC003021AB003020AD003121AE003123B1003122B3002F21AF003022AA003226
            A4003E32A2005B50B1008E81D500C9BFFF00F0EAFF00F8F6FF00FAFAFF00FDFC
            FF00FFFFFF00FFFFFE00FFFEFF00FFFDFF00FFFDFF00FDFDFF00FAFFFF00FAFF
            FF00FAFFFB00FDFFFB00FCFAF900FFFEFF00FEF9FB00C4C1C300CFCCCE00F9F8
            FA00FEFFFD00FFFFFC00FFFFFC00FDFFFC00FBFFFE00FBFFFF00FFFEFF00FFFE
            FF00FFFFFC00FFFFFC00FDFFFE00FDFFFE00FFFFFF00FFFFFF00FFFEFF00FFFD
            FF00E7E7E700C5C5C500E1E1E100FFFFFF00FDFDFD00FDFDFD00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00352FC400251CB3002618B6002717B8002816
            B5002B19B8002816B5002819B7002717B8002716B9002716B9002718B600261A
            B400261AB2002419B6002419B600281CB6002619B5002415B6002215B7002317
            B7002419B600251AB700251AB600251AB6002C20B8003121B4003423AA005E4E
            BE00AEA3F900EAE7FF00F6F7FF00FAFCFF00FDFFFF00FFFFFE00FFFFFE00FFFE
            FF00FFFEFF00FBFEFF00FAFFFF00F9FFFE00FBFFFE00FFFFFB00FEFDF900C4BF
            C000F9F6F800FFFFFE00FFFFFC00FFFFFA00FFFFFA00FEFFFB00FDFFFC00FAFF
            FD00FAFFFE00FEFDFF00FFFEFE00FFFEF900FFFFFA00FCFFFB00FBFFFE00FDFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00BEBEBE00E8E8E800FFFF
            FF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00362FCC00241A
            BA002517BD002716BB002816B7002E1CB7002A19B0002A1CB0002A1BB2002A1B
            B3002A1BB300281CB000281DAF00271DAF00251CB200251CB200271DAF00291E
            B000291CB400271BB500281CB400261DB300231CB3001F18B5001E17BC001D14
            BF002111C2002817BF002F1EB5003125A300635BBA00B8B6F800F1F3FF00F6FA
            FF00FBFFFF00FFFFFE00FFFEFF00FFFDFF00FFFEFF00FDFFFF00FBFFFF00FAFF
            FD00FDFEFA00E9E8E400D4CFD000FFFFFF00FFFFFC00FCFEF800FFFFFB00FFFF
            FC00FFFFFC00FDFFFE00FBFFFF00FBFFFF00FDFCFF00FFFDFF00FFFFFE00FFFF
            FC00FDFFFE00FBFFFE00FDFFFF00FCFEFE00FCFEFE00FEFEFE00FEFEFE00FFFF
            FF00FFFFFF00C5C5C500FFFFFF00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00342DD1002017BB002517BD00291AB8002A1BAC00382AAD00372E
            A300342D9C00342C9E00372FA100312B960036329C00322C9D00312BA000322C
            A300322A9F00332C9B00382F9D00382DA10035299F0031289D0031299E002E2B
            9F002A27A5002824B300221CB7001E14BB002419C3001F14B600261BB700281C
            B4002D22A6008583DD00E8EBFF00F6FAFF00FDFFFF00FFFDFF00FFFDFF00FFFD
            FF00FDFEFC00FCFFFB00FDFFFE00FFFFFF00DDDDDD00FDFBFB00FFFEFE00FFFF
            FC00FFFFFC00FFFFFE00FFFDFE00FEFCFC00FDFFFF00FBFFFF00FBFEFF00F9F9
            FF00F9F8FF00FBFDFF00FBFFFF00FDFFFF00FBFDFD00F8FCFD00FBFEFF00F8FB
            FF00FDFFFF00FFFEFF00FEFEFE00FFFFFF00BEBEBE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FEFEFE00FDFDFD00FFFFFF00FFFF
            FF00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FFFFFF00FDFDFD00FFFF
            FF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFF
            FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FEFE
            FE00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FBFB
            FB00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FEFEFE00FDFD
            FD00FFFFFF00FFFFFF00F9F9F900FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFF
            FF00FDFDFD00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
            FE00FEFEFE00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FEFEFE00FDFDFD00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FFFF
            FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F9F9F900FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FBFB
            FB00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FEFE
            FE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFDFD00FFFFFF00F9F9
            F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FFFFFF00FDFDFD00FEFE
            FE00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FDFDFD00FFFFFF00FBFBFB00FFFF
            FF00FFFFFF00FFFFFF00FDFDFD00FEFEFE00FFFFFF00FCFCFC00FFFFFF00FFFF
            FF00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FEFEFE00FEFE
            FE00FEFEFE00FEFEFE00FFFFFF00FCFCFC00FDFDFD00FFFFFF00FFFFFF00F9F9
            F900FFFFFF00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FCFCFC00FCFCFC00FFFF
            FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003930D4002217BB002312BA002E1E
            B900584CCA00CAC2FF00CFCAFF00D0CCFF00D0C9FF00CFCBFF00CCCCFF00D0CF
            FF00CFCBFF00CEC9FF00CFCBFF00D3CEFF00D3CCFF00D1CBFF00D0C9FF00D3CC
            FF00D4CFFF00CBC7FF00B5B3FF009E9EF2007170D2003E3BAE00312CAF00221B
            AC00251DB7002419BD001E11C1002315BA003129AB006664BE00E1E0FF00F9F6
            FF00FFFAFF00FFF9FE00FFFEFF00FFFFFC00FEFFFB00FDFFFE00FFFEFF00DDDC
            DE00FBFAFC00FEFEFE00FDFFFE00FFFFFC00FFFCFB00FFFEFF00FFFFFF00FFFE
            FF00FCFEFF00FAFBFF00DBD7FF00C1BCE900CCCCEA00F1F1FF00FCFCFF00FFFF
            FF00FFFEFF00FAFCFD00FDFFFF00F9FBFC00FFFFFF00FEFEFE00FFFFFF00BEBE
            BE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00E5E5E500A7A7
            A700C5C5C500FFFFFF00E9E9E900CBCBCB00FBFBFB00B9B9B900ADADAD00FEFE
            FE00FFFFFF00BFBFBF00B4B4B400FDFDFD00E3E3E300AAAAAA00CCCCCC00FCFC
            FC00D1D1D100DFDFDF00FDFDFD00C5C5C500F9F9F900EDEDED00C8C8C800FFFF
            FF00BABABA00B4B4B400D0D0D000EAEAEA00FFFFFF00FDFDFD00FFFFFF00CECE
            CE00ABABAB00CDCDCD00CECECE00FFFFFF00E6E6E600A6A6A600C6C6C600FFFF
            FF00FFFFFF00FDFDFD00FFFFFF00FDFDFD00E2E2E200ACACAC00A9A9A900E1E1
            E100FFFFFF00FFFFFF00CCCCCC00ACACAC00DDDDDD00FFFFFF00D9D9D900A9A9
            A900D9D9D900FCFCFC00F2F2F200A9A9A900E5E5E500CCCCCC00F0F0F000FCFC
            FC00C6C6C600ACACAC00EFEFEF00FDFDFD00BFBFBF00F3F3F300FEFEFE00C2C2
            C200F5F5F500FBFBFB00FCFCFC00FFFFFF00C5C5C500ADADAD00CBCBCB00D9D9
            D900FFFFFF00DCDCDC00A2A2A200D9D9D900FFFFFF00FEFEFE00FFFFFF00FEFE
            FE00FFFFFF00D4D4D400ABABAB00C5C5C500FFFFFF00FDFDFD00B7B7B700B8B8
            B800CDCDCD00EDEDED00C7C7C700FAFAFA00C2C2C200F2F2F200FFFFFF00B6B6
            B600B4B4B400C8C8C800E9E9E900EDEDED00ACACAC00C7C7C700CFCFCF00FFFF
            FF00F1F1F100AAAAAA00CDCDCD00C6C6C600F5F5F500FEFEFE00FFFFFF00FBFB
            FB00FFFFFF00BDBDBD00A7A7A700D8D8D800FFFFFF00FBFBFB00CACACA00A9A9
            A900E6E6E600FFFFFF00C7C7C700F6F6F600FDFDFD00FBFBFB00B5B5B500D3D3
            D300D2D2D200DFDFDF00E9E9E900CCCCCC00FDFDFD00CBCBCB00E7E7E700FEFE
            FE00C5C5C500ADADAD00EAEAEA00F6F6F600ACACAC00C4C4C400D1D1D100FFFF
            FF00EEEEEE00ACACAC00C9C9C900C8C8C800F6F6F600FCFCFC00B9B9B900ADAD
            AD00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B2D
            CB002516B8002E18C400301CB5006459C100EFEBFF00F6F3FF00FAF7FF00FBF6
            FF00FAF6FF00F8F7FF00F2F3FF00F4F5FF00F8F6FF00F9F4FF00FBF6FF00F9F5
            FF00F8F6FF00F8F7FF00F7F6FF00F8F7FF00F8F7FF00F8F6FF00F6F5FF00F3F3
            FF00E0E0FF00ADABED00605AB9002E23A200291CB400251ABE002418BE00271B
            B5002F24A8005D52B800E2D9FF00FDF6FF00FFFDFF00FFFCFB00FFFFFC00FFFF
            FE00FFFFFF00FDFFFF00DBDDDE00F9FAFE00FCFEFF00FDFFFF00FFFFFE00FFFF
            FC00FFFFFC00FEFDF900FFFFFF00FDFDFF00F6F2FF008C81C9002E2274004B43
            8400EBE4FF00FFF9FF00FFFEFF00FFFDFC00FFFFFC00FFFFFB00FFFFFC00FFFF
            FE00FEFEFE00FFFFFF00BEBEBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00E9E9E90074747400888888007A7A7A00D4D4D400D8D8D800A1A1A100C4C4
            C4007878780088888800B8B8B800F4F4F40075757500A3A3A300F5F5F5008181
            81008D8D8D007C7C7C00E2E2E200ADADAD00CECECE00FEFEFE0097979700F1F1
            F100DFDFDF009D9D9D00D9D9D900797979008B8B8B006D6D6D00DBDBDB00FDFD
            FD00FFFFFF00E4E4E400777777009090900074747400A0A0A000FAFAFA008F8F
            8F008A8A8A007A7A7A00C9C9C900FFFFFF00FFFFFF00FEFEFE00E1E1E1007575
            75008B8B8B008989890074747400E7E7E700E5E5E50078787800909090008383
            8300E4E4E400878787008888880084848400FAFAFA00A5A5A50081818100D8D8
            D80095959500E8E8E800D1D1D1007A7A7A008B8B8B0093939300FEFEFE009A9A
            9A00E1E1E100FFFFFF0095959500F1F1F100FFFFFF00FFFFFF00CBCBCB007272
            72008A8A8A0074747400B7B7B700F2F2F200747474009595950075757500E2E2
            E200FFFFFF00FFFFFF00FCFCFC00CFCFCF007A7A7A008E8E8E0075757500AFAF
            AF00C9C9C9007D7D7D008D8D8D0079797900E1E1E1009C9C9C00EEEEEE008F8F
            8F00F3F3F300C5C5C5007A7A7A008D8D8D0074747400C6C6C600A7A7A7008888
            8800828282008D8D8D00FDFDFD008B8B8B00888888007D7D7D007D7D7D00F2F2
            F200FCFCFC00FFFFFF00FFFFFF00ADADAD007A7A7A009090900073737300D1D1
            D100DBDBDB0077777700898989008C8C8C00E9E9E90093939300FEFEFE00FFFF
            FF00C9C9C9007A7A7A00CCCCCC00AEAEAE00C4C4C400D7D7D7009B9B9B00FFFF
            FF009B9B9B00D7D7D700D9D9D9007A7A7A0085858500A3A3A300A4A4A4008282
            82008686860087878700FDFDFD00979797008B8B8B007E7E7E0075757500F7F7
            F700BCBCBC007F7F7F0082828200AAAAAA00FCFCFC00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003A2EC8002617B8002815C0002F1FB300665EBB00EEEE
            FF00FAFAFF00FEFDFF00FFFCFF00FFFBFF00F5F1FF00F8F8FF00FAFBFF00FDFD
            FF00FFFEFF00FFFCFE00FFFDFF00FDFDFF00FDFFFF00FDFFFF00FEFEFE00FEFE
            FE00FFFBFF00FFFBFF00FFFDFF00FFFBFF00F9F6FF00F1EBFF00ACA3FD004B40
            B4002F25AD002217AD002314B5002D1FBB003424AE006556BF00EBE4FF00FBF9
            FF00FDFCFF00FFFFFC00FFFFFE00FFFFFF00FFFEFF00DBDCE000F9FAFE00FCFE
            FF00FDFFFF00FFFFFF00FFFEFD00FFFFFE00FFFFFE00FFFDFD00FDFBFF00FAF4
            FF008A7FD5002C1F8500493F9200E7DEFF00FFF8FF00FFFEFE00FFFFFC00FFFD
            F800FFFFFB00FFFEFA00FFFFFE00FEFEFE00FFFFFF00BEBEBE00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E1E1E100B3B3B300FFFFFF00C8C8C8009C9C
            9C00DFDFDF00A4A4A400E8E8E800F4F4F400E3E3E30098989800E0E0E0009B9B
            9B00FFFFFF00C1C1C100A4A4A400FFFFFF00ECECEC00F4F4F400AAAAAA00D0D0
            D000FEFEFE009A9A9A00F5F5F500DBDBDB00ADADAD00B5B5B500B8B8B800FEFE
            FE0092929200D7D7D700FFFFFF00FFFFFF00B3B3B300A9A9A900FEFEFE00ABAB
            AB00A1A1A100D4D4D4009C9C9C00FFFFFF00EDEDED00EEEEEE00FDFDFD00FFFF
            FF00FEFEFE0090909000A8A8A800FEFEFE00FFFFFF0096969600D3D3D300B3B3
            B300BFBFBF00FBFBFB00E1E1E100F6F6F600DDDDDD00FFFFFF0097979700DDDD
            DD00A2A2A200DCDCDC00FFFFFF009B9B9B00E4E4E4009F9F9F00CDCDCD00FDFD
            FD008B8B8B00D8D8D800A7A7A700DEDEDE00FEFEFE009F9F9F00EFEFEF00FDFD
            FD00FFFFFF0097979700CACACA00FFFFFF0091919100BFBFBF00BFBFBF00B3B3
            B300FEFEFE00E4E4E400F6F6F600FFFFFF00FFFFFF00F5F5F50084848400CDCD
            CD00FBFBFB00E4E4E400B8B8B800A5A5A500CBCBCB00FFFFFF008F8F8F00DEDE
            DE00A0A0A000F5F5F50099999900E0E0E00095959500D7D7D700FDFDFD008E8E
            8E00C1C1C10096969600F3F3F300DFDFDF009F9F9F00D8D8D8008D8D8D00FFFF
            FF00DBDBDB007D7D7D00EFEFEF00FFFFFF00FBFBFB00DDDDDD0081818100E8E8
            E800FCFCFC00C1C1C100C6C6C600A5A5A500D0D0D000FFFFFF00E3E3E300EDED
            ED0098989800F8F8F800FEFEFE00BABABA00B1B1B100FFFFFF00ABABAB00C5C5
            C500DBDBDB00A1A1A100FBFBFB00A0A0A000DBDBDB009C9C9C00BBBBBB00FFFF
            FF00E2E2E20095959500EBEBEB00E7E7E70098989800D7D7D70091919100FCFC
            FC00E4E4E40080808000DEDEDE0090909000EBEBEB00F8F8F80083838300ECEC
            EC00FEFEFE00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003832C7002921BC001D11
            B7002A20B2005958B400EDF1FF00F8FBFF00FEFEFE00FDFCFF00FDF7FF00B5AC
            E500A6A0DB00F3F5FF00F6FAFF00FDFCFE00FFFFFF00FFFEFF00FDFFFF00FEFE
            FE00FEFFFD00FFFFFE00FFFFFE00FFFEFF00FFFCFF00FFFBFF00FFFAFF00FFFB
            FF00FDF8FF00F8F4FF00DCD8FF006A61B800392DA300291AB1002615BA002B16
            B9003725AE007D75CC00EFECFF00F6F9FF00FDFFFF00FFFFFE00FFFFFF00FFFD
            FF00DDDBE100FBFBFB00FEFEFE00FFFEFF00FFFDFF00FEFCFF00FFFDFF00FFFC
            FF00FFFDFF00FEFEFE00F8F6FF008B82D9002B218B004A449600F1EAFF00E7D9
            E5009C898400B5A1A000FFFDFE00FFFBFD00FFFEFF00FFFFFF00FEFEFE00FFFF
            FF00BEBEBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00E5E5E50094949400D4D4D400A3A3A300FEFEFE00E6E6E6008B8B
            8B00A9A9A900E4E4E400A1A1A100FAFAFA00B6B6B60094949400A3A3A300B2B2
            B200D4D4D400B2B2B200CDCDCD00FEFEFE00A1A1A100F3F3F300E0E0E000ABAB
            AB00DCDCDC0089898900DDDDDD009F9F9F00D4D4D400FDFDFD00FCFCFC009494
            9400D8D8D800FEFEFE00D2D2D200A9A9A900C2C2C20092929200A5A5A500ADAD
            AD00C7C7C700FFFFFF00FEFEFE00E8E8E80088888800F7F7F700FFFFFF00FDFD
            FD00A2A2A200D2D2D2009C9C9C009F9F9F00A5A5A500B1B1B100DFDFDF00FFFF
            FF00B6B6B6007E7E7E00EEEEEE009D9D9D00DCDCDC00FFFFFF009D9D9D00D8D8
            D8008E8E8E00F6F6F600FFFFFF00B6B6B600BCBCBC00AAAAAA00E6E6E600FAFA
            FA009F9F9F00E8E8E800FFFFFF00F9F9F9008D8D8D00E8E8E800FFFFFF00BBBB
            BB00BABABA00AFAFAF009B9B9B00A2A2A200B3B3B300D3D3D300FFFFFF00FDFD
            FD00CBCBCB009D9D9D00FBFBFB00FFFFFF00FAFAFA00FFFFFF00CACACA009595
            9500DBDBDB009F9F9F00E3E3E3009F9F9F00F0F0F0009F9F9F00D6D6D6009595
            9500F4F4F400FCFCFC00B4B4B400C2C2C200AFAFAF00AEAEAE00DCDCDC009E9E
            9E00B9B9B900B0B0B000FDFDFD00F4F4F40096969600EDEDED00FBFBFB00FFFF
            FF00B0B0B000B3B3B300FFFFFF00FEFEFE00FFFFFF00FEFEFE0092929200A3A3
            A300A3A3A300ADADAD00D9D9D9009E9E9E00F9F9F900FFFFFF00B7B7B700BABA
            BA00FDFDFD00ABABAB00CDCDCD00D6D6D600A6A6A600FFFFFF00A2A2A200CECE
            CE009A9A9A00E8E8E800FFFFFF00FBFBFB00B0B0B000A9A9A900D7D7D700A2A2
            A200C1C1C100A7A7A700FFFFFF00FBFBFB0098989800C8C8C80095959500FFFF
            FF00FFFFFF00A0A0A000DADADA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00372DC700231AB7002319C0002922B3005B5CB700EDF1FF00F8FBFF00FFFF
            FF00FFFEFF00F9F4FF00897FCC00413791009696D200F3F5FF00FBFBFF00FFFE
            FF00FAFCFD00FCFEFF00FFFFFE00FFFFFC00FFFFFC00FFFFFB00FFFDFE00FFFD
            FF00FFF9FF00FFF9FF00FFFDFF00FFFEFF00F8F9FF00F8F8FF00F0EAFF008176
            CC003528AC002616B7002714BF002917B6002E239D00ABA8F700F2F4FF00FAFE
            FF00FFFFFE00FFFFFC00FFFDFF00DFDBE100FDFBFB00FEFEFE00FFFEFF00FFFD
            FF00FDFCFF00FDFCFF00FFFDFF00FFFEFF00FFFEFA00F6F6FF00837DD400251E
            870046429400F7EEFF008E7B8400291006003317160099818300FFFAFD00FFFC
            FE00FFFEFF00FEFEFE00FFFFFF00BEBEBE00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FDFDFD00FFFFFF00FFFFFF00FEFEFE00B2B2B200A0A0A000DBDBDB00A5A5
            A500E2E2E20074747400A0A0A000F6F6F600DEDEDE009D9D9D00FFFFFF00AFAF
            AF008A8A8A008F8F8F0087878700ACACAC00B2B2B200CECECE00FFFFFF009797
            9700F4F4F400E1E1E1009F9F9F00FDFDFD00D2D2D2009F9F9F007D7D7D00E1E1
            E100FFFFFF00FFFFFF0096969600D4D4D400FFFFFF00D6D6D600AAAAAA00BEBE
            BE00868686008A8A8A008F8F8F0094949400FAFAFA00FFFFFF00CCCCCC009B9B
            9B00FDFDFD00FFFFFF00FCFCFC00A2A2A200D3D3D3009E9E9E00929292009191
            91007D7D7D00C4C4C400A5A5A50084848400BFBFBF00FFFFFF009F9F9F00D9D9
            D900FDFDFD009B9B9B00D9D9D90097979700FAFAFA00FEFEFE00B4B4B400BABA
            BA00A9A9A900E0E0E000FFFFFF0099999900F1F1F100FEFEFE00F2F2F2008F8F
            8F00F2F2F200FEFEFE00BFBFBF00BABABA00AAAAAA008D8D8D008F8F8F007F7F
            7F00B3B3B300FCFCFC00FFFFFF00B2B2B200B5B5B500FEFEFE00FFFFFF00FFFF
            FF00FCFCFC00FDFDFD00C0C0C0009A9A9A0085858500E3E3E300A0A0A000F3F3
            F3009A9A9A00D1D1D10092929200FDFDFD00FFFFFF00ACACAC00C2C2C200F6F6
            F600ACACAC00989898009E9E9E00BDBDBD00AFAFAF00FFFFFF00F6F6F6009A9A
            9A00EFEFEF00FFFFFF00FAFAFA0096969600D4D4D400FEFEFE00FFFFFF00FCFC
            FC00FFFFFF008B8B8B00949494008F8F8F007C7C7C00C1C1C1009C9C9C00FAFA
            FA00FCFCFC00B7B7B700B6B6B600FFFFFF00ABABAB00C9C9C900DADADA00A2A2
            A200FBFBFB00A9A9A900CECECE0097979700E6E6E600FFFFFF00FCFCFC00F9F9
            F900B2B2B2009B9B9B009B9B9B00BFBFBF00A3A3A300FFFFFF00FFFFFF00A0A0
            A000C6C6C6009C9C9C00FBFBFB00FEFEFE009F9F9F00D0D0D000FEFEFE00FEFE
            FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00402BD4002512BD002919C500291EB0005F5F
            B900EFF2FF00FBFAFF00FFFFFF00FFFEFF00F6F1FF009A8EE8003C2FA2003329
            9300B5AFFE00F6F5FF00F9FBFF00FDFDFF00FDFFFF00FEFFFB00FDFFF900FFFF
            FA00FFFFFC00FFFEFF00FFFDFF00FFFDFF00FFFEFF00FDFFFF00F9FDFE00FBFE
            FF00FBFBFF00F7F5FF00F4EFFF006C63CB002C20AE002717BC002918BF002A1E
            B4003B35A600DFE0FF00F6FAFF00FFFFFE00FFFFF900FFFEFF00E2DBE000FDF9
            FF00FFFCFF00FFFFFE00FDFFFE00FBFFFF00FCFEFF00FFFCFE00FFFEFF00FFFF
            FB00F8F9FF008885DA002420890047449400F4ECFF008D777C003B1E10003F1F
            1A00381A1900C0ACA700FFFFFB00FFFFFE00FEFEFE00FFFFFF00BEBEBE00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00EEEEEE00969696007777
            7700D8D8D800DEDEDE00ABABAB00BDBDBD00A5A5A500FBFBFB00FFFFFF00E1E1
            E1009F9F9F00FFFFFF00BEBEBE00ACACAC00FFFFFF00BEBEBE00BCBCBC00B4B4
            B400B3B3B300FFFFFF0081818100E6E6E600DADADA00A0A0A000FEFEFE00FFFF
            FF00FDFDFD009E9E9E00D2D2D200FCFCFC00FDFDFD00ABABAB00B8B8B800FDFD
            FD00B7B7B7009F9F9F00D0D0D000A9A9A900FCFCFC00CACACA00ACACAC00FFFF
            FF00FFFFFF00B9B9B900ADADAD00FFFFFF00EFEFEF008B8B8B0077777700D8D8
            D800AFAFAF00C6C6C600FFFFFF00A9A9A900C3C3C3008A8A8A00E8E8E800FFFF
            FF00FDFDFD009E9E9E00E2E2E200FDFDFD00A0A0A000E0E0E00092929200DCDC
            DC00FFFFFF0097979700D4D4D4009C9C9C00C8C8C800F8F8F80093939300F0F0
            F000FFFFFF00FFFFFF0094949400CDCDCD00FFFFFF009E9E9E00BEBEBE00BEBE
            BE00B9B9B900FCFCFC00B4B4B400BEBEBE00FDFDFD00FFFFFF00AAAAAA00C1C1
            C100FDFDFD00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FDFDFD00FFFFFF009F9F
            9F00DCDCDC009E9E9E00F3F3F3009F9F9F00DEDEDE0096969600E4E4E400FFFF
            FF0090909000C5C5C500FDFDFD00FFFFFF00EAEAEA00A0A0A000D1D1D1009191
            9100FFFFFF00E7E7E7007E7E7E00EFEFEF00FEFEFE00FFFFFF0090909000E2E2
            E200FCFCFC00FFFFFF00FFFFFF00FFFFFF009F9F9F00D7D7D700FDFDFD00A0A0
            A000CACACA0090909000E9E9E900FFFFFF00C0C0C000B9B9B900FDFDFD00ACAC
            AC00CBCBCB00E1E1E100A5A5A500FFFFFF009F9F9F00D5D5D500A2A2A200CACA
            CA00FFFFFF00EEEEEE00FDFDFD00F9F9F900F8F8F8009B9B9B00D7D7D7009595
            9500F9F9F900EFEFEF0080808000D8D8D8008E8E8E00F3F3F300FFFFFF008E8E
            8E00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F2BB4003623
            AE003323AD00362DA1005C5AA000F4F4FF00FCF9FF00FFFEFF00FFFDFD00FAF5
            FF00A499F6003022A5003224AC00453BAD00E2DEFF00F8F7FF00F9F9FF00FEFD
            FF00FFFFFE00FFFFFC00FFFFFB00FFFFFC00FFFEFF00FFFEFF00FAFDFF00FAFF
            FF00F8FEFD00FAFFFF00FBFCFF00FBFBFF00FFFEFF00F8F7FF00E2E1FF004F49
            B8002A1DB5002313BE002517BD003026AF008785D700F1F1FF00FBFEFF00FFFF
            F800FFFFFC00E1DCDE00FDF9FF00FEFDFF00FFFFFE00FDFFFC00F9FEFC00FDFF
            FF00FFFFFF00FFFFFE00FFFFFB00F6F6FF008684DD001F1D870048479700EBE1
            FF0071575D00411F12006D4D47004426210042261F00DCC9C200FFFEFE00FFFD
            FF00FFFEFF00BCBEBF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FFFDFD00FEFE
            FE009694940096949400E5E3E300FFFFFF00D0D0D000A3A3A300DAD9DB007F7E
            80009C9C9C00BABDBB00A6A6A60088888800B8B8B800F1F1F100838181009E9E
            9E007B7B7B00ECECEC00B0B3B10072757300979797007C7C7C00959393008583
            8300BDBCBE00FAF9FB00919393009EA0A00080828200EFEFEF00FFFFFF00FFFF
            FF00D8D8D80077777700A0A0A00075757500A8A6A600F9F6F80083828400A4A3
            A5007D7C7E00D5D4D600FFFEFF00FDFDFD00C0C0C000A6A6A600FEFEFE00FBFB
            FB00C0C1BF00C0C1BF00F4F4F400DDDDDD007C7B7D009EA0A00087878700EFEF
            EF009B9A9C009C9B9D00A3A3A300C7CAC8007F81810098989800E6E5E7009693
            9500EEEBED00CBCBCB007D7D7D009D9E9C0089878700FDFBFB009A9A9A007F7F
            7F009594960095949600FBFEFC00FBFEFC00FDFFFF00C2C1C3007E7C7C009B99
            990076747400BDBDBD00EFEFEF007B7B7B00A2A3A10081828000E8E8E800FFFF
            FF00FEFEFE00AFAFAF00BEBEBE00FFFEFF00FCFBFD00FFFFFF00FFFFFE00E5E6
            E40090918F009B9B9B008B8A8C00F3F3F300A1A1A100F0F1EF0090909000F0F0
            F000B6B6B6007F7F7F009B9B9B0072727200D4D4D400CFCFCF009A9A9A008B8B
            8B00AAAAAA00F9F9F900828282009B9B9B008181810081808200F2F1F300FFFF
            FF00FDFEFC0093949200DCDDDB00FFFFFF00FDFDFD00FFFFFF00FFFFFF00C9C9
            C9007D7B7B00A4A2A200918E9000F5F4F6007D7D7D008C8C8C00B9B9B9008989
            89008E8F8D00D7D8D400AFB0AE00AEB0B000A09FA10086858700D0CFD100A09F
            A100DBDADC00CCCECE007D7F7F00999999009E9E9E00D5D2D400989898009090
            9000A3A3A300FDFDFD00898B8C00999B9C00888789007B7A7C00F9F8FA00AEAD
            AF008C8C8C00909090009A9D9B00FDFFFE00FBFBFB00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00C5BDFA00BEB6F300C0B6F800C0BAF100D1CDF000FAF8FF00FFFB
            FF00FFFDFF00FFFEFF00F8F3FF00A095F2003223AA002819B1003023AD007D75
            D200F0ECFF00F9F7FF00FFFEFF00FFFEFF00FCFBFD00FFFFFE00FFFFFC00FFFD
            FF00FFFEFF00FBFFFF00FAFFFC00FAFFFB00FDFFFC00FFFEFF00FFFDFF00FFFE
            FF00FAFCFF00F1F8FF00C0C2FF003225A9002816BD002618BE002B1FB3003A30
            A200DCD7FF00F8F8FF00FFFFF900FEFCFB00DFDDDD00FAF9FD00FDFEFF00FAFC
            FD00FDFFFF00FEFEFE00FFFFFE00FFFFFC00FFFFFC00FFFFFF00F6F3FF00827F
            DB0023208D004A489A00D6CAFC0054323D003E191100C2A8A200AE969000310F
            090060403B00FCE7E900FFFCFF00F9F8FF00BCBFC700F7FCFF00FAFEFF00FFFF
            FF00FFFCFD00FFFDFE00E9E7E7008D888A00FFFAFC00FFFEFF00FFFDFC00DFE0
            DE00C0C2C200FDFBFF00B4B2B800999C9A00D6DCD7009497950082848400AAA8
            A700FFFDFC00DBD7D60095939200C3C3C300FDFFFE00CAD1CA00B7BEB7009B9E
            9C00DADADA00C2BDBC00A59FA000FBF7FC00FDFEFF00B5BAB9008E939100CCD1
            CF00FDFFFE00FDFFFF00FDFFFF00FDFFFF00BDBFC00098979900B3B0B200AAA5
            A700FFFCFF00DFDBE0009A969C00C0BEC400FEFCFF00FDFEFF00FCFEFF00D3D5
            D60093959600FEFEFE00FFFFFE00FFFFFC00FCFDF900FCFFFD00FDFFFF00C2C3
            C70091959600D7DAD800FDFFFF00DDDBE1009A989E00C2C5C300BEC4BF007A7F
            7D0087898900DDD9DE00C4BEC300F0EAEF00FFFEFF00B8B9B7009B9C9800E7E2
            E300FFFEFF00C2C3C100B8BBB9009C9B9F00E1E2E600F6FCF700FAFFFA00FBFF
            FF00FCFBFF00B4AFB1009E979A00AEA9AB00B8B5B700FDFCFE00CED0D0009296
            9100CED2CD00FDFFFF00FBFDFE00FFFFFF00C0BEBE00AAA7A900FFFCFF00FFFE
            FF00FEFDFF00FFFFFC00F9FBF500AFB3AD0091949200DDDEE200FDFFFF009A9B
            9900EFF0EC00B9BAB800F3F4F200FAF8F800A6A4A400A5A3A300A5A3A300C9C7
            C700F1EFEF00A2A2A2009D9D9D00F0F2F300FDFFFF00DEDEDE0094949400B8B5
            B7009C989D00ECEBEF00FFFEFF00FFFFFB00A1A19B00C9C8C400FEFFFD00FFFF
            FF00FBFDFE00FFFEFF00FFFEFF00C1BCBD0096919300E6E0E500FFFBFF00B8BA
            BB00B4B6B600A4A3A5008381810088898000CDD1C600D0D4CE00BBC0BF008E8F
            9300807F8800C8C3CC00C7C3C900DFE0E400FBFFFF00AFB4B20096999700DEDB
            DD00F7F1F600A29FA100A1A0A200EBEDEE00FDFFFF00E0E3E70090939700B3B3
            B90099979D00F1ECF500FAF6FC00A2A1A300A1A4A200ECF2ED00FBFFFC00FDFF
            FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFAFF00FBFAFF00FBF9FF00F8F7
            FF00FDFCFF00FFFCFF00FFFBFF00FFFDFF00FFFEFF00F5F3FF00A197F4002E20
            A8002718B6002C1FB70032269C00B8AFFF00F6F3FF00FAF9FF00FBF9FF00FFFE
            FF00FEFCFC00FFFFFF00FFFEFF00FBFDFE00FBFFFE00FBFFFC00FDFFFB00FFFF
            FC00FFFEFF00FFFDFF00FFFEFF00FBFEFF00F8FFFF00EDEEFF00796CD800311E
            B5002314B6002619B5003426AE00998FEC00F4F5FF00FBFEFC00FFFFFE00E3E1
            E100F7F9F900FDFFFF00FFFEFF00FCFBFD00FFFFFF00FEFFFD00FBFCF800FEFC
            FB00FFFEFF00F6F2FF008380DC0025228F004F4D9F00CABEF0004B273300421A
            1500C2ACA700FFFEF9007B595300340F0B0082666500FFF5F800FFFDFF00B6B9
            C100FAFFFF00F9FEFD00FFFDFE00FFFEFF00FFFEFF00E3E0E2008F8C8E00FFFD
            FF00FFFBFC00FFFFFE00FFFFFE00FDFDFD00FFFEFF00FAF9FD00FDFFFC00FBFF
            FA00DADCDC0098989800FFFFFE00FFFFFB00FFFFFE00FDFBFA00FFFFFF00FDFF
            FE00FAFFFA00FBFFF900FFFFFF00FFFCFE00FFFFFE00FFF9FA00FFFDFF00FAFB
            FF00FDFFFF00FBFFFF00FCFFFD00FDFFFE00FDFDFD00FFFEFF00FDFFFF00FDFF
            FF00FEFEFE00D7D7D700A49FA100FFFEFF00FFFEFF00FBF7FC00FDFCFF00FFFE
            FF00FBFDFE00FDFFFF00F3F5F60082828200E3E3E300FFFDFC00FFFFFE00F0EE
            ED00FFFFFF00FFFEFF00FBFDFE00FDFFFF00FDFFFF00FAFCFC00FFFCFF00FDF9
            FE00FEFFFD00FDFFFB00949A9500DADDDB00FFFEFF00FFFAFF00FFFCFF00FFFD
            FF00FBFCFA00FCFDF900FFFFFE00FFFEFD00FFFEFA00FFFFFE00FDF9FE00FFFE
            FF00FDFFFC00FBFFFC00FBFFFF00FEFDFF00FFFBFC00FFFEFF00C2BDBF00B3AF
            B400FFFEFF00F8FAFB00FDFFFE00FAFEF900F9FBFB00FDFFFF00FFFFFF00E0DE
            DE0083808200F7F3F800FFFEFF00F8F8F800EAECE600FCFEF800FCFDF900FDFF
            FF00FAFBFF00F4F5F900999A9800F5F6F200FEFFFD00FCFCFC00FFFEFF00FFFE
            FF00FFFFFF00B5B3B300C4C2C200FFFEFE00FDFDFD00FDFDFD00FDFFFF00FDFF
            FF00FFFEFF00FFFEFF00FCF9FB009A999D00EAE9ED00FFFEFF00FFFEFD00C0BD
            B9009C9A9900FFFFFE00FFFEFF00F0F2F300EEEEEE00FFFFFF00FFFDFE00FFFE
            FF00FFFDFF00FFFDFF00FDFCFE00FDFFFF00FFFEFF00B5B3B300BCBCB600FDFF
            F700FDFFFC00FDFFFF00CFCFD500A6A4AA00FFFCFF00FFFDFF00FCFBFD00FAFF
            FE00FBFFFC00F9FCFA00FFFEFF00FFFDFF00FFFCFE00FEFDFF00FEFDFF00FDFF
            FF00FBFFFF00FDFEFF00FDFCFF0099959B00E9E5EB00FFFDFF00FEFEFE00FBFE
            FC00FBFFFE00FDFFFE00FDFDFD00FEFBFD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
            FF00F9FBFC00F4F8F900FBFFFF00FCFDFF00FEFDFF00FFFEFF00FEFBFD00FDFF
            FF00F6F6FF008B84E5003023AD00291DB7003626C1004531BA00503FA600E7E4
            FF00F6FAFF00FAFDFF00FFFFFE00FFFEFF00FFFDFF00FCF9FF00FBFEFF00FBFF
            FF00FDFFFE00FFFEFF00FFFFFF00FFFEFF00FDFEFF00FDFDFF00FFFEFF00FEFD
            FF00FBF6FF00D1C4FF003C2DA600291AB2002718BA002C1CB700554BBD00F3F2
            FF00F8FBFF00FDFDFD00E1E0DC00FCFBF700FCFBF700FFFFFE00FFFFFF00FCFD
            FB00FDFFFF00FFFEFF00FFFEFF00FFFEFF00F9F4FF008381DA00212088004C4B
            9B00DBD1FF0067455000350F0A009D888600FFFDFC00DABFBB003E211A003D20
            1700E2CCC600FFF8FB00BEBFC300FBFFFE00F9FFF900FFFFFE00FFFEFF00FFFD
            FF00ECEBEF00858A8900C8CDCB00C4C6C600C7C6C800D3D2D4009F9C9E00FFFD
            FC00FFFFFC00FFFEFA00FFFFFE00E4E0E500B2AEB300FFFFFF00FFFFFE00FFFF
            FE00FFFFFF00FBFDFE00FBFDFE00FFFFFE00FFFDFD00FFFAFF00FFFCFF00FFFE
            FF00FFFFFF00FDFDFD00FFFFFF00FCFBFD00FEFDFF00FFFEFE00FFFDFC00FFFF
            FE00FFFDFC00FBF9F900FFFFFF00FFFFFE00D1D2CE00A0A19F00FDFEFC00FFFD
            FC00FFFFFC00FFFFFC00FDFEFA00FFFFFC00FEFFFD00FEFFFD00B4B2B1008583
            8200DED9DA00CBC6C70089848600F2ECF100FFFBFF00FFFEFF00FFFFFF00FEFD
            FF00FFFEFF00FFFDFF00FFFEFF00FFFBFC00FFFDFC00ADB2A900E1E6DD00FEFC
            FB0097949600E3DFE500FFFDFF00EEEDEF009B9C9A00EFEEEA00FFFFFB00FFFE
            FD00FFFCFB00FFFEFF00FEF9FA00FFFDFF00FFFEFF00FFFEFF00FFFFFF00FFFF
            FC00FFFFFC00BCBBBD00B0AFB300FDFEFF00FDFEFF00FFFEFF00FEFEFE00FFFF
            FE00FEFFFD00FEFFFD00FFFFFF00969696009C9C9C00E2E2E200A0A19F009B9A
            9600FFFFFE00FFFFFF00FFFEFF00FFFDFF00FDFCFF009A999B00E8E8E8009797
            9700E1E0E200FFFEFF00FEFDFF00FCFBFD00ADADAD00C0BFC100FFFFFF00FDFE
            FC00FFFFFE00FDFCFE00FDFCFF00FDFCFF00FCFBFF00F4F3F50097979700F0F2
            F200FBFDFD00FFFEFF00F8F5F70078737500B6B3B500DFDEE00084848400C0C5
            BC00FFFFF900FFFFFC00FAF8F700FFFFFE00FFFDFD00FFFFFF00FEFDFF00FCFB
            FF00C7C6CA00C1C0C200FEFDFF00A8A7AB00C5C4C800DBD8DA00A6A1A200FFFE
            FD00A29D9C00D3D1D000FFFFFE00FAFDFB00FDFFFF00FFFFFF00FEFCFC00FFFF
            FF00FFFFFE00FEFCFB00FFFFFE00FCFCFC00FCFCFC00FEFCFC0095939300EEEC
            EB00FBFCFA00FDFFFE00F9FCFA00FBFDFD00FFFEFF00FFFBFF00FFFDFF00FFFE
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00DDDFDF00A4A7A500A4AAA500BAC0BB00F7FAF800FFFF
            FF00FFFFFF00FFFFFE00FDFFFE00F1F3FF007E77DF002E24B4002E22BA00574A
            DC00B39FFF00402E91007871BA00F3F2FF00F7FAFF00FDFFF900FFFFFE00FFFD
            FF00FFFCFF00FCFBFF00FFFEFF00FFFFFF00FFFEFF00FFFEFF00FDFFFF00FBFE
            FF00FDFDFF00FFFEFF00FFFDFF00FCF6FF00F6EDFF006358B8002F22B3002617
            BF002517BD003329AB00D2D0FF00F8FBFF00FFFEFF00DFDCD800FFFDF800FFFF
            FB00FFFDFE00FFFDFD00FDFFFF00FDFFFF00FFFCFF00FFF9FE00FFFEFF00FBF6
            FF008983DA002421880043429200F8EFFF009A7C87003717110057444100FAED
            EB00FFFEFB00624A44002B1105009A847900FFFEFE00BEBDBF00FBFFFA00FDFF
            FB00FFFDFC00FFFEFF00FFFDFF00FCFBFF00C1C8C500707774006D727100C9CB
            CC00CFCED00092909000FFFFFC00FFFFFB00FEFBF700FFFEFF00FFF9FF00FFFC
            FF00FFFDFF00FAFAFA00FDFDFD00FDFFFF00FDFDFF00FDFEFF00FBF8FA00FFFE
            FF00FFF9FF00FFFCFF00FFFEFF00FDFFFF00FDFEFA00FEFFFB00FFFFFF00FFFD
            FF00FFFEFF00FFFEFF00FFFCFB00FFFFFE00FFFEFF00FFFFFE00FFFFFC00CCD0
            CB009B9F9A00FBFFFA00FFFFFB00FCFDF400FFFFF900FEFFF800FDFFF900FFFF
            FC00FFFFFE00FAF8F8009E9C9C007C7778007A757700B4AEB300FFFAFF00FFFC
            FE00FFFEFF00FFFEFD00FEFDFF00FFFEFF00FFFDFE00FFFCFD00FFFDFF00FFFD
            FF00FAFEF800FAFFF600FAFBF70086848400DCD8DE00FFFBFF00FFFEFF00A6A8
            A800ACADA900FFFFFC00FFFFFE00FFFEFF00FFFBFC00FFFEFF00FFFDFF00FFFB
            FF00FDFCFE00FFFFFE00FFFFFB00F8FCF600B5B7B700ADAFB000FAFBFF00FEFD
            FF00FBFAFC00FFFFFE00FDFEFA00FFFFFC00FFFFFE00FFFFFF00EAEAEA009192
            9000767773007D7F7900DDDCD800FDFBFA00FEFCFC00FFFEFF00FDFCFF00F7F6
            FA0096959900E5E4E6008A8B8900DFDFDF00FCFBFF00FFFEFF00FFFEFF00AAAC
            AC00B8B8B800FEFEFE00FCFDFB00FFFFFE00FFFFFF00FBFAFC00FFFEFF00FFFF
            FF00F7F7F7008E918F00E5EAE800FCFEFE00FEFDFF00FFFBFF00DBD7DC007F7C
            7E0079787A008E8E8E00EDF1EB00F9FEF500FDFFFC00FFFFFE00FFFFFE00FFFE
            FD00FFFFFE00FFFFFE00FFFFFF00FEFDFF00FFFDFF00FFFCFF009B969F00C1BD
            C200F7F5F5007B787400AAA7A20098959000CBC9C800FFFFFE00FEFFFD00FDFF
            FE00FDFFFF00FEFEFE00FEFCFB00FFFDFC00FFFFFC00FFFFFB00FFFFFE00FFFF
            FF00FFFFFF00908E8D00E4E5E100FEFFFA00FDFFFC00FDFFFE00FFFEFF00FFFB
            FF00FFFAFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C1CA00ABABB100D4D9
            D800979D9800F7FBF600FFFFFC00FFFFFC00FFFEFA00FBFFFA00F3F5FF006A62
            D4002A1EB600261DB400514AC900EBE5FF008A83C60041359900A69EF100F8F9
            FF00FCFFF800FFFFF900FCFDFB00FFFDFF00FFFBFF00FFFDFF00FFFEFF00FFFF
            FF00FFFFFF00FFFFFF00FDFFFF00FDFEFF00FFFEFF00FFFEFF00FFFAFF00F5F1
            FF00A29CE9002C20AE002011C0002114C4002920AD00ADACF000F6F8FF00FFFC
            FF00E0DBD800FFFCF700FFFFFE00FFFAFF00FFFDFF00FBFFFF00FBFFFF00FEFD
            FF00FFFEFF00FFFEFF00F9F4FF008980D70028218A004A449600F4EBFF00DBC5
            D100321B130024181200C7BEBA00FFFBF9009788850029140C004E3B3300FFFD
            FA00C5C3C300FEFEFE00FFFFFF00FFFBFC00FFFEFF00FFFEFF00FCFEFF00FBFF
            FE00E5ECE700E6EBE900FBFEFC00FBFCF800F3F5EF00FFFFFB00FFFFFB00FFFF
            FC00FFFDFD00FFFCFF00FFFBFF00FDF9FE00FFFEFF00FDFEFF00FBFBFF00F9F8
            FF00FDFCFF00FFFDFF00FEFCFC00FFFFFE00FFFDFD00F9FAFE00FBFFFF00FDFF
            FC00F9FEF500FFFFFC00FDFDFD00FFFBFF00FFFDFF00FFFEFF00FEFCFC00FFFF
            FF00FEFFFD00FEFEFE00E1E3E300C2C9C600FBFFFC00FBFDF700FFFFF900FFFF
            FB00FFFFFC00FFFFFE00FEFCFC00FDFCFE00FFFEFF00FFFEFF00E5E3E300E6E3
            E500FFFFFF00FFFFFF00FFFFFE00FFFFFF00FEFFFD00FDFFFC00FFFFFC00FFFC
            FB00FFFCFF00FFFBFF00FEFBFF00FBFFFF00FBFFFC00FBFFFA00FAF8F700FCF8
            FE00FFFDFF00FEFDFF00F6F8F900E4E8E900FCFEFE00FCFCFC00FFFEFF00FCFB
            FF00FFFEFF00FEFDFF00FFFEFF00FFFEFF00FFFFFE00F9FDF700FBFFF900D6DD
            D600D1D4D200FDFEFF00FFFEFF00FFFFFC00FDFFF900FFFFFB00FFFFFB00FEFF
            FD00FFFFFF00FAFCFC00F7FAF800ECEEE800F7FAF100FFFFF800FFFFF900FFFF
            FE00FDFBFB00FFFDFF00FEFDFF00C4C3C700F8FAFA00EFF0EC00FFFFFB00FBFE
            FC00FCFEFE00FAFCFD00D0D5D400DCDEDE00FBFDFD00FFFEFF00FBFAFC00FCFC
            FC00FFFFFC00FCFFFA00F9FDF700F5F9F400C1C6C400F2F7F500FBFFFF00FDFE
            FF00FCFAFF00FFFEFF00F4F3F500E5E4E600FEFDFF00FCFCFF00FDFEFF00FDFF
            FF00F9FCFA00FBFDFE00FFFEFF00FEFDF900FFFFFB00FAFDF400FFFFFC00FDFE
            FF00F8F7FF00F9F6FF00F6F5F900FEFEFE00C6C7C300B4B5B300F4F7F500FFFF
            FE00FCFDFB00FFFFFC00FDFFFC00F6F9F700FDFFFE00FDFFFF00F9FCFA00FCFE
            F800FFFFFB00FEFCFC00FFFCFE00FDF9FE00C6C3C500F5F6F400FDFFFC00FAFD
            FB00FDFFFF00FFFEFF00FDFCFE00FFFFFE00FDFBFA00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00EAE6F100BBB8C100A4A5A900ABB0AF00FDFFFE00FCFDF900FFFEFA00FFFF
            FC00FBFFFE00EDF0FF00554CC400281DBA00271EB400625ECF00F1F0FF00EBE8
            FF005548AA003C2F9100CFCCFA00F8FBFF00FAFFFF00FBFFFE00FDFAFC00FFFD
            FF00FFFDFF00FFFEFF00FFFFFE00FDFFFE00FDFFFE00FDFFFF00FDFFFF00FFFF
            FF00FFFFFE00FFFEFF00F7FAFF00CACAFF002D24AA001F13BF001E13C3002922
            B3008A87D600F4F3FF00FFFBFF00E5E0DF00FCFAF900FDFEFF00FBFAFF00FAFA
            FF00F7FAFF00F8FCFF00F7FBFF00F7F9FF00FBFBFF00F7F2FF008A7FDB00281D
            8B0047419A00E6DEFF00FFF5FF00C8B9BD00BDB6B900F0ECF100FFFBFF00F5ED
            F800C8B9C100BCAEB200FFFDFC00C5C4C000FEFCFC00FDFAFC00FFFEFF00FFFE
            FF00FFFEFE00FFFFFF00F9FCFA00FDFFFE00FFFFFE00FFFFFE00FEFFFB00FDFF
            FB00FDFFFC00FCFFFB00FFFFFC00FFFFFE00FFFCFF00FFFDFF00FFFEFF00FAFB
            FF00FAFCFD00FDFEFF00FDFCFF00FEFBFF00FFFDFF00FFFFFF00FFFFFE00FCFD
            FB00FBFEFF00F6FAFB00FDFFFC00FFFFF900FEFFFA00FFFFFE00FFFEFF00FFFE
            FF00FFFEFF00FFFEFF00FFFFFF00FFFEFF00FBFCFF00FDFFFF00FAFFFF00FAFF
            FD00FFFFFE00FFFFFC00FEFDF900FFFDFC00FFFFFF00FFFCFE00FFFEFF00FFFE
            FF00FFFEFF00FEFDFF00FFFEFF00FAFAFA00FBFFFA00FDFFFC00FCFEFE00FDFF
            FE00FDFFFB00F7FBF500FFFFFE00FFFEFF00F9F6FF00FDFCFF00FAFFFF00F7FC
            FB00FEFFFB00FFFFFE00FFF9FF00FFFCFF00FFFEFF00FBFDFD00FBFFFF00FAFE
            FF00FDFFFE00FCFEFE00FDFDFF00FBFBFF00FDFEFF00FFFEFF00FEFDFF00FEFF
            FD00FDFFFC00FBFFF900FDFFFB00FCFDF900FFFEFF00FDFCFE00FEFFFD00FFFF
            FC00FFFFFE00FFFFFE00FFFFFF00FFFFFF00FDFFFF00FDFFFF00F9FAF600FFFF
            FB00FCFFF600FFFFFB00FFFEFE00FFFEFF00FFFDFF00FFFDFF00FCFCFC00FDFF
            FE00FFFFFB00FCFEF800FFFFFC00FDFFFF00FDFEFF00F9FBFC00FDFFFE00FDFF
            FE00FFFEFF00FFFEFF00FFFFFE00FFFFFB00FEFFF800FDFFF900FDFFFC00FAFD
            FB00FDFFFE00FBFDFD00FBFCFF00FEFDFF00FFFEFF00FAF9FB00FFFFFF00FFFE
            FF00FFFDFF00FEFCFF00FBFDFD00FDFFFF00FDFEFF00FFFEFF00FFFFFE00FFFF
            F900FFFFF800FFFFFB00FDFCFE00FDFDFF00FEFDFF00FFFEFF00FFFFFF00FCFF
            FD00FBFFFF00FAFFFE00FCFFFD00FCFDF900FEFFFB00FFFFFC00FDFFFE00FBFF
            FF00FAFEFF00FBFFFF00FDFFFB00FEFFFA00FFFEFD00FFFEFF00FFFDFF00FDF9
            FE00FEFEFE00FCFFFB00FFFFFE00FFFFFF00FCFBFD00FFFEFF00FDFFFE00FDFF
            FC00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C7C3C800908F93009F9EA700A4A4AA00F4F6
            F700FFFFFE00FFFFFE00FFFFFE00FBFFFF00DEE0FF00372DA900281DB9002721
            B0006C68D100F0EFFF00FAF5FF00DDCFFF0044368E005950A600DDDCFF00F1F7
            FF00F9FEFF00FFFEFF00FFFAFB00FFFDFF00FFFEFF00FFFFFC00FDFFFC00FDFF
            FE00FDFFFE00FFFFFC00FFFFFB00FEFFF700F9FEF500F8FFFF00DCDFFF003E37
            B000251ABC001D15BC002B25B4006B66BB00F6F1FF00FFF9FF00DBD7DD00F5F9
            FE00F1F9FF00F1F7FF00EFF5FF00F0F4FF00F1F5FF00EFF6FF00EFF6FF00F1F5
            FF00EEECFF00877CE200281D91004941A500E3DEFF00F8F0FF00F7F1FF00F6F5
            FF00F5F6FF00F6F4FF00F2EEFF00F7EFFF00FBF6FF00FDFFFF00BABDB400FFFE
            FF00FFFDFF00FFFBFD00FEFCFC00FCFDFB00FFFFFC00FEFCFB00FFFEFF00FFFC
            FD00FFFFFF00FDFFFF00FAFFFE00FBFFFE00F8FBF900FFFFFC00FEFFFD00FCFB
            FF00FEFCFF00FFFEFF00FDFFFF00FDFFFC00FEFFFA00FFFFFB00FFFFFC00FFFD
            FD00FFFEFF00F9F8FC00FDFEFF00F8FCFD00FBFFFF00FEFFFB00FDFDF700FFFE
            FA00FFFFFE00FDFDFD00FDFCFE00FBFDFD00FDFFFF00FBFAFE00FCFAFF00FFFC
            FF00FCFCFF00FDFFFF00FDFFFF00FFFEFF00FDFCFF00FFFFFF00FFFDFD00FFFE
            FF00FFFEFF00FDF9FE00FDF9FE00FFFEFF00FAF9FD00FDFFFF00FDFFFF00F7FB
            F600FDFFFC00FDFFFF00FCFFFD00FCFFFA00FFFFFB00FEFEFE00FCFDFF00FBFE
            FF00F8FBFF00FBFEFF00FDFFFF00FFFEFD00FFFEFF00FFFCFF00FFF9FF00FFFE
            FE00FFFFFE00FBFFFF00FBFFFE00FBFFFB00F7FDF800FAFFFF00FAFEFF00FBFF
            FF00FCFEFE00FCFCFC00FFFFFE00FFFFFC00FFFEFA00FFFFFE00FFFEFF00FFFE
            FF00FFFDFF00FFFEFF00FBFAFE00FFFAFF00FFFDFF00FDFCFE00FDFFFF00FBFC
            FF00FDFEFF00FFFEFF00FFFEFF00FFFFFF00FAF9FB00FFFCFF00FFFAFF00FFFC
            FF00FFFEFE00FFFFFB00FDFFF700FFFFFB00FFFDFC00FFFFFE00FEFEFE00FDFA
            FF00FFFDFF00FEFFFD00FFFFFC00FEFBFD00FFFEFF00FFFFFE00FFFEFA00FFFF
            FC00FCFDFB00FEFDFF00FFFEFF00FFFFFE00FFFDFD00FFFBFF00FFFDFF00FEFC
            FC00FFFFFE00FFFFFC00FFFCF800FFFCFD00FFFEFF00FFFEFF00FFFEFF00FDFC
            FF00FFFBFF00FFFEFF00FFFEFF00FFFEFD00FEFFFD00FCFCFC00FFFFFF00FFFE
            FE00FEFEFE00FFFEFF00FCFEFF00F7FCFB00FBFFFE00FCFFFB00FFFFFC00FFFF
            FE00FAF8F800FDFFFF00F8FBFF00F9FCFF00FBFFFF00FDFFFC00FDFFF900FFFF
            FE00FFFBFC00FFFBFF00FFFDFF00FFFFFF00FFFFFE00FFFFFE00FDFBFB00FFFD
            FF00FFFEFF00F8FDFB00FBFFFE00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D7D600BFBD
            BD00B9B8BC00B5B6BA00F1F3F400FFFFFF00FFFFFF00FCFBFF00FAFBFF00C2C0
            F4003124A8002618B6002A22AB00807CDC00F6F5FF00FCF9FF00F9EFFF00BAAC
            F3003A2F8F006E6AC300EDF1FF00F2F8FF00FFFDFF00FFFEFF00FFFDFF00FFFE
            FF00FFFFFE00FFFFFC00FDFFFE00FDFFFE00FFFFFC00FFFFFB00FFFFF700FDFF
            F800F7FEF900EDF0FF00514ABD00281DBA002017BB002A22AF005E55AF00F0EA
            FF00FEF7FF00E1E0EA00F0F6FF00A2ABCC00767DB600787DC2007E7EC4007A7A
            C000797EC300787EC500767AC1007F7ED4005048BD002D25A2003734A2007170
            CE00817CCB00807BC0008281C1008180C2007E7BC300827CC9007F76C6008680
            BB00F7F7FF00C2C6C100FFFDFD00FFFDFF00FFFEFF00FFFFFF00FFFFFE00FEFF
            FD00FFFFFE00FFFEFF00FFFDFE00FFFFFF00FDFFFF00FDFFFF00FDFFFF00FFFF
            FF00FFFFFF00FBFDFD00FDFFFF00FBFEFF00F9FCFF00FBFFFF00FDFFFB00FDFF
            F700FFFFF800FFFFF800FFFFFA00FFFFFF00FFFEFF00FCFCFF00FDFFFF00FDFF
            FF00FFFFFE00FFFFFE00FFFFFE00FEFCFB00FFFFFF00FFFEFF00FDFFFF00FBFD
            FE00FDFEFF00FFFEFF00FDFBFF00FEFCFF00FFFEFF00FFFEFF00FFFEFF00FDFC
            FF00FEFDFF00FFFFFF00FFFCFE00FFFEFF00FFFEFF00FFFFFF00FFFEFF00FFFE
            FF00FDFFFF00F9FBFB00FDFFFB00FBFFF900FDFFFF00FDFFFF00FFFFFC00FFFF
            FC00FAFCFD00FDFEFF00FBFEFF00FAFEFF00FDFFFF00FDFDFD00FFFFFC00FFFF
            FE00FFF7FE00FFFCFF00FEFCFC00FFFFFE00FDFFFF00F9FEFC00FDFFF900FBFF
            FB00FBFEFF00FBFEFF00FCFEFE00FDFFFE00FFFFFF00FEFCFC00FEFEFE00FFFF
            FF00FFFEFF00FFFAFC00FFFEFF00FFFEFF00FFFCFF00FFFDFF00FFFCFF00FFFD
            FF00FFFEFF00FDFFFF00FDFDFF00FDFDFF00FCFBFF00FDFEFF00FBFFFF00FBFE
            FF00FDFCFF00FFFBFF00FFFDFF00FFFDFC00FFFFFB00FDFFF900FFFEFD00FFFF
            FF00FFFFFE00FFFEFE00FEFBFF00FFFDFF00FEFCFB00FFFFFC00FFFFFF00FFFE
            FF00FFFDFC00FFFFFE00FFFDFF00FFFEFF00FFFEFF00FCFBFD00FFFFFF00FFFE
            FE00FFFEFF00FFFEFF00FFFFFE00FFFCF800FFFFFC00FFFFFC00FFFFFC00FFFD
            FC00FFFEFF00FFFEFF00FFFEFF00FFFEFF00FFFAFC00FFFEFF00FFFFFF00FFFF
            FE00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFDFF00FEFDFF00FDFFFF00FDFF
            FF00FEFFFD00FFFFFE00FFFFFF00FFFEFF00FDFEFF00FDFEFF00FDFDFF00FBFC
            FF00FBFEFC00FDFFFC00FDFEFC00FFFFFF00FFFDFF00FFFBFF00FEFDFF00FFFF
            FF00FFFFFE00FFFFFE00FFFEFF00FFFEFE00FBFFFE00FBFFFE00FDFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00D0CDC9008D8C880090918D00BFC0BC00FDFFFF00FEFDFF00FFFC
            FF00FFFBFF00FBF7FF00988ED4003320B2002915BB003227AD009993EC00FAF5
            FF00FFFDFF00FFFAFF00FAF2FF00958EDF003B3692008583CF00F1EFFF00F7F9
            FF00FCFEFF00FFFEFF00FFFDFF00FEFDFF00FFFFFF00FFFFFC00FFFFFC00FFFE
            FE00FFFDFD00FFFFFB00FFFFFB00FDFFFF00F6F2FF00574BC1002B1BBC002216
            BC002B22AF006055B100F7EEFF00FDFAFF00DADAE600EEF2FF006B6DAD001D19
            7E0028229700252192002B26990025209B0025229D0024209700211E99002A24
            B1002B28B4002A2CA90022229800252296002B2398002D249C00251C94002821
            9A002B219D002C1B9A0036298B00F1EEFF00BEC1C600FFFFFF00FFFFFE00FDFF
            FF00FAFFFE00F9FDFE00FBFFFF00FBFDFD00FFFFFE00FEFCFC00FFFEFF00FCFD
            FF00FFFEFF00FFFDFF00FFFEFF00FFFEFF00FBFFFF00F8FFFF00F4FFFD00F6FF
            FF00F8FFFF00FBFFFF00FCFFFD00FFFFF800FFFFF800FFFFF800FFFDF800FFFE
            FF00FFFDFF00FFFEFF00FCFCFC00FFFEFF00FFFEFF00FFFDFD00FFFFFF00FDFC
            FF00FFFDFF00FDFEFF00F9FDFE00FBFFFE00FDFFFC00FCFDFB00FFFFFF00FFFD
            FF00FFFDFF00FDFFFF00FDFFFE00FFFFFF00FFFEFF00FFFDFF00FFFDFF00FFFF
            FC00FFFFFB00FDFFF900FFFFFC00FCFEFE00FDFFFF00FDFFFB00FDFFFB00FFFF
            FF00FFFEFF00FFFFFF00FBFCFA00FDFFFF00FDFFFF00FDFDFD00FFFFFC00FFFF
            F900FFFFF700FFFFF800FFFFFA00FEFDFF00FCFCFF00FDFEFF00FBFDFE00FCFE
            FF00FDFFFF00FFFFFB00FFFFFC00FFFDFF00FFFBFF00FFFEFD00FFFFFC00FFFE
            FF00FDFAFF00FDFDFF00F9FCFF00FAFDFF00FCFEFF00FFFFFE00FFFFFC00FFFC
            FD00FFFEFF00FFFEFF00FEF9FA00FDFFFE00FBFFFF00F9FAFE00FDFEFF00FDFF
            FF00FBFFFE00F8FFFE00F7FFFE00FAFFFF00FDFFFF00FCFAF900FFFFFE00FFFE
            FF00FCFEFF00FFFFFE00FDFEFC00FEFEFE00FCFBFD00FFFEFF00FFFEFF00FEFE
            FE00FFFFFE00FFFFFF00FDFDFD00FFFFFF00FFFEFF00FDFCFF00FDFCFF00FAFB
            FF00FDFFFF00FDFFFF00FDFFFF00FFFFFF00FFFEFF00FFFCFD00FFFFFE00FFFB
            FA00FFFFFE00FCFDFB00FDFFFF00FAFDFF00FBFEFF00FAFFFE00FFFFFE00FFFF
            FF00FFFBFC00FFFFFC00FFFEFA00FFFEFF00FFFDFF00FFFCFE00FFFFFF00FFFF
            FF00FFFDFF00FFFEFF00FFFDFF00FEFDFF00FCFBFF00FFFEFF00FEFDFF00FFFE
            FF00FFFEFF00FFFEFF00FFFDFF00FBFFFF00F7FEFB00F9FFFE00FBFFFF00FDFE
            FF00FBFCFF00FBFEFF00FBFDFE00FFFEFE00FFFFFE00FFFDFA00FFFCF900FFFF
            FE00FDFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0DCDB008F8D8C00A2A29C00B5B6
            B200F0F2F200FDFEFF00FDFCFF00FFFBFF00FBF8FF00BBB3F0003826A700321F
            B4002F269B00C0BAFF00F8F4FF00FFFBFC00FFFDFE00F9F5FF00F3EEFF007F7B
            C7003E3891009A96E100F3F4FF00F8FBFF00F7FAFF00FDFFFF00FFFEFF00FEFD
            FF00FFFFFE00FFFEFD00FFFEFF00FFFEFF00FFFFFF00FFFFFF00FFFEFF00F8F1
            FF00594AC3002B1BBC002216BC002D20B1005E50AE00F8EDFF00FEF9FF00DADB
            E500F3F5FF007271AF00352D8A00372D980038319900372F9A0033299B00382D
            A10038309B00362FA2002C26AD002F2CB7002F2FAB002D2EA000322F9C00322C
            9900382EA000362C9E003931A30031299B0037279C00483C9600ECE9FF00C2C4
            CC00FBFDFD00FEFFFB00F7FCFA00FAFFFF00F8FBFF00F6F7FF00F4F2FF00F8F6
            FF00F8F4FF00FBF8FF00FDFCFF00FFFDFF00FFFDFF00FFFAFF00F6F2FF00F6F6
            FF00EFF4FF00EFF6FF00EFF5FF00F0F2FF00F4F2FF00F3EFFF00FBF8FF00FDFC
            FF00F8F7F900FFFFFE00FFFCFE00FFFDFF00FBFAFE00FDFCFF00FDFAFF00FBF7
            FF00FAF3FF00FAF2FF00FAF1FF00F4EDFF00F3EFFF00F4F4FF00F3F7FF00F8FB
            FF00FBFEFF00FAF9FB00FFFCFF00FFFEFF00FFFFFE00FDFFFE00FFFFFE00FFFF
            FF00FFFDFF00FFFDFF00FFFFFC00FDFFF900FBFFFC00F9FDFF00F8F9FF00F8F6
            FF00F7F4FF00F5F1FF00F6F1FF00F8F1FF00F8F3FF00FBF9FF00FAFBFF00FDFF
            FF00FEFFFD00FFFFFB00FFFFF800FFFEFD00FCFBFF00F7F7FF00F6F3FF00F4F2
            FF00F6F2FF00F5F3FF00F8F4FF00FAF7FF00F8F7FF00FFFEFF00FFFCFF00FFFC
            FF00FFFFFE00FDFCFF00FBF6FF00F8F2FF00F1EEFF00F2F1FF00F3F2FF00F4F3
            FF00F7F5FF00FBFAFF00FFFDFF00FFFCFD00FFFBFC00FFFFFE00FDFFFE00FBFF
            FE00FDFFFF00FBFCFF00FAFAFF00F9FBFF00F2F8FF00F1F6FF00F5F7FF00FAFA
            FF00FFFEFF00FFFEFD00FEFDFF00FBFCFF00F9F9FF00F8F7FF00FAF5FF00FAF5
            FF00FAF8FF00F5F4FF00FBF8FF00F7F4FF00FAF5FF00F8F6FF00F5F4FF00F6F4
            FF00F2EEFF00F6F2FF00F4F3FF00F5F5FF00F4F6FF00F4F5FF00FBF9FF00FCF8
            FF00FFFCFF00FFFEFF00FFFBFF00F9F7FF00F6F6FF00F3F4FF00F1F0FF00EFEE
            FF00F4F3FF00F7F5FF00F5F2FF00FDFBFF00FEFDFF00FFFFFE00FDFCFE00FDFD
            FF00F9F9FF00F6F5FF00FAF6FF00F8F2FF00FBF1FF00F7EDFF00FAF1FF00FAF4
            FF00F9F8FF00F9F9FF00FFFDFF00FFFDFF00FFFEFF00FFFDFF00F5F8FF00F3F8
            FF00F3F5FF00EFF0FF00F1F0FF00F6F2FF00F1F0FF00F4F4FF00FAF8FF00FFFB
            FF00FFFEFF00FFFFFE00FFFFFE00FAFDFB00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAE5
            EE00BEBAC000DEDBDD00C0C0C000F0F1F500FAFBFF00FFFEFF00FFFEFF00F9FC
            FF00F6F5FF00887FD6003D319B0036308700DFDBFF00FDF9FF00FFFFFE00FFFD
            FF00FDFCFF00FBF9FF00ECE8FF006D64BA003C349100A7A4E900F1F3FF00F8FB
            FF00F6FBFA00FDFFFF00FFFEFF00FFFDFF00FFFBFD00FFFEFF00FFFEFF00FFFD
            FF00FFFCFF00FFFCFF00F8F1FF00594BC1002B1CBA002215BD002D20B2006756
            B700F8EAFF00FFFAFF00E1DEE000F4F3FF00EFECFF00E0D8FD00E5DBFF00DAD4
            FD00DCD5FF00DED3FF00EBE0FF00E6DCFF00DAD2FF007770D800231D94003D3A
            A100BCBAFF00D8D5FF00D8D3FF00D9D1FF00DAD4FF00D1CEFF00D6D6FF00D8D5
            FF00DAD9F900F6F7FF00B7BBBC00FDFFFE00FBFFFC00F8FFF800F8FEFF00EDEC
            FF00ACA7E500A198EE00A096F300A39AF100BEB4F600FBF5FF00FFFDFF00FFFD
            FF00FBF5FF00F4ECFF00B2A9FF008078DC005751BC004F48B7005045B9005345
            BB008273DF00AAA1F200EDE8FF00F6F7FF00F7FAFF00FCFBFF00FFFEFF00FEFC
            FF00FBF9FF00F5EFFF00D4CBFF009789E900705ECF005745BA005747BC005346
            B9006F65CF009995EE00CFCFFF00F2F5FF00FAFCFF00FFFDFF00FFF9FA00FFFE
            FF00FDFFFF00FFFFFC00FFFFFC00FFFEFF00FFFEFF00FDFFFE00FAFFFE00F4FE
            FF00F0F6FF00CFCCFF009085E5006454C3005643BA005B49BE007162CB00A699
            EF00E2DBFF00F5F5FF00F6F8FF00FFFFFE00FFFFFA00FFFFFF00FBF8FF00E0DC
            FF009E96ED00645CC7004E43B7005447B5006355BE009688E600CDC2FF00F8F4
            FF00FAF8FF00FDF7FC00FFFEFF00FFFFFF00F8F6FF00D3CCFF009388E9006255
            C8005045BF005147BF00605AC7009791EA00DCD7FF00FAF7FF00FFFDFF00FFFE
            FF00FFFEFF00FCFEFE00F9FEFD00FCFEFE00FDFCFF00FBF9FF00BFBBE400A59F
            E600A09AEC00A49CE900C9C3FA00FDF9FF00FFFFFF00FFFEFE00F9F8FF00B4AF
            EC009E96ED009F92F400A294EC00BCB6EF00F3F0FF00C4BBFE00A69BEB009D92
            EE009C94F3009A94F3009892F1009992F3009B92F300A196F600A096F3009B96
            F1009D9AE900ABA5DE00F2EFFF00F8F9FF00FAFCFF00F6F7FF00E5E4FF009C98
            F100645ECB004F46BA005448BE005D4FC5009084E800C5C1FF00F4F3FF00FDFA
            FF00FFFEFF00F9FBFC00F8FDFF00F1F6FF00D8D9FF009992E7006658C2005640
            B7005C45BF006D5AC900968AE400D7D3FF00F3F2FF00FDFCFF00FFFFFE00FFFC
            F800FDFBFF00EDECFF00A29FEF00786FD700584BBF005343B8005647BA00685E
            C800908AE300C7C6FF00F2F1FF00FAF9FF00FFFEFF00F9FBFB00FDFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00E8E3EC0088838C00B2AEB300C0BDBF00F1F0F200FCFE
            FF00FDFFFF00FCFFFD00FDFFFE00F7F7FF00F3EEFF00A19CDA008B88BF00F4F4
            FF00FDFCFF00FFFFFE00FFFEFF00F9FBFC00FFFFFF00F9F7FF00E7DFFF005B52
            A9003B328C00B5B1F800F2F4FF00F8FCFF00F8FCFD00FAFAFA00FFFDFF00FFFD
            FF00FFFFFF00FCFCFC00FFFDFF00FFFCFF00FFFCFF00F6F1FF00574BC1002A1C
            BA002215BD002D20B200614FB200F8EAFF00FFF9FF00E1DADD00FDF9FF00EAE3
            EA00ECDEE200FFF8FA00FFFBFF00FFF7FF00FFF9FF00F3E1E800EEDFE300FFF4
            FF008E85DB0029238E0048439E00E8E5FF00F5F2FF00FFFCFF00FFF8FF00FEF9
            FF00F8F9FF00FAFCFF00F9FBFF00FAFBFF00FDFFFF00BBBDBD00F9FCFA00FBFF
            FB00FBFFF900F8FCFF00E6E1FF00382D8900342AA2003023A7003F31AE006258
            B200FBF4FF00FFFCFF00FBF9FF00DFD9FF006356B8003426A4003326B2003124
            B6002B1DB1003120B700341EBD002F1CB3003528A8004D46A700BFC0FA00F4F6
            FF00FBFCFF00FDFBFF00FBF9FF00F0ECFF008E87D2004134A0003421AC00341F
            B8003521BA002C18B1002D1CB3003124B5002E25AB003F3AA7009F9FE500F4F3
            FF00FCF8FF00FFFEFF00FFFEFF00FDFFFF00FFFFFC00FFFFFC00FFFEFF00FDFF
            FF00FBFFFF00F6FEFF00EEF5FF00BEBFFC00433BA6003527AF00311EB3002E1A
            B300311EB3003424B1003A2CAA005348AE00C7C3FF00F4F6FF00FBFEFF00FBFC
            FF00FAF8FF00D3CEFF005048AC00342AAC002B21B1002F21B5003525B3002F1F
            A8003221A6004336A400ACA2E800F8F4FF00FDFCFF00F9FAFE00F8F7FF00C2C0
            F400483FA7003325AC002E1EB1002D1EB6002A1EB6002B22B2002C24A6004742
            A500C0BBF200FBF7FF00FFFCFF00FEFCFC00FBFFFF00FBFFFF00F9FBFB00FDFC
            FF00F5F0FF006A61A0003F32A0003729A7003D30A4008B81D400F5F1FF00FFFE
            FF00FFFFFF00FAF6FF005751AA00382DAC003522AF004432AF00645EAB00ECEB
            FF00938BDE004236A0003225A5003427B300281FAB002E26AF002E25AB003429
            AD003122A9003021A8002D22A6003B34A7003A318700DEDAFF00F8F9FF00F1F6
            FF00D4D4FF005652B200352DB000291FB1002C23B0002D20B2002D1BB6003523
            B200352F9C009A97DF00F7F3FF00FBF8FF00FAFDFF00F0F5FF00BEC3FF004241
            A3002F28A7003022B0003722B4003520B2002E1BAE00392BAE00413BA000BAB6
            F800F8F3FF00FFFBFF00FFFAFF00DFDBFF005E58B100332BA7003223B4002E1C
            B5003420B5002E1BAE002E1EB1002B23A60035319A009695DF00F3F4FF00FAFB
            FF00FBFEFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F7F900B7B4B600D4D0
            D500B0ADAF00CCCDC900FDFFFC00F9FCFA00FDFFFF00FCFBFF00FDFCFF00FAFA
            FF00F8F9FF00F2F7FF00F8FDFF00FDFCFF00FFFEFD00FEFFFD00FDFFFE00FFFE
            FD00FFFCFF00FAF5FF00E2D9FF005749AE003C2E9700B7B1F800F4F3FF00FBFD
            FF00FBFFFA00FBFFFF00F9FBFC00FFFFFF00FFFFFF00FFFFFE00FDFFFF00FBFF
            FF00F3F2FF00544BC300281CBC002016BC002B21B1006254B200F9EBFF00FFF7
            FF00E7E0E500FDF5FC0084767800281109007B635700FFF7F200FFF9F800D0B8
            B8003A211F0039231E00CEBED5009791E2001D1C830043409600E4E3FF00FAFA
            FF00FFFDFF00FFFCFF00FFFBFF00FDFDFF00F8FAFB00FFFEFF00FFFEFF00FFFD
            FF00C6C3C500FCFFFD00FBFFFC00FBFFFB00F4F7FF00E4DCFF00463BA3002E23
            A900271EAE002C22AA006E66CA00F8F2FF00F8F4FF00F2EEFF005D54AB003729
            AD002B1BB6002214B0002A1DB5002F21AF003020B3002C19BC002917BE002516
            B7003129B2003C3B9D00D1D2FF00F6F7FF00F8F8FF00F4F3FF00807BC6003A2D
            A7002D1DB1002B1CBA002516B4002B1CB4003122B9002B1EB600271AB600241B
            B800261EB100322AA600948DE200FAF5FF00FFFEFF00FFFFFF00FFFFFE00FFFF
            FE00FFFFFE00FFFFFF00FFFFFE00FAFFFF00F4FBFF00DFDDFF00463EA2002E1F
            A9002B1BB600271BAF002C22B200261DA900281EAE002416B1002B1EAF004439
            A700DBD5FF00F4F5FF00F4F7FF00E9E5FF00554EAF002A22AB00251BB500261C
            AF002B22AF003123AA002F20AA00291DB3002E21AD00382B9900CFC7FF00F5F8
            FF00F6FAFF00D5D3FF0040389C002B21A900261CAF002E24AD002A20A8002B23
            B000261FB000231DB2002D26AC00443CA000E1DAFF00FDF8FF00FFFFFF00F8FD
            FB00FBFFFE00FDFFFE00FDFBFF00FAF2FF007166B6003223AA002A1AB5003121
            AE00867CE000F8F4FF00FFFEFF00FFFCFD00F7F1FF005C56C1002B1FB3002E18
            B700321EA6006E69B800EDEEFF00D5D4FF00342F9200291DAB002719BE002218
            BE002018B900261DB400271BAF002E1DB4003220B9003121BC002E1FA9004538
            9E00DBD4FF00F3F7FF00EFF2FF005952BB002E21B2002318B400221CB1002927
            A3002723A0002E1FB6002A18B700291EB4002F289B00CCC6FF00F7F6FF00F4F8
            FF00DEE3FF003D3DA9002722B3002119B400261DB3002F27A3002B229B002D21
            B5002115AF00281DAF00443AAC00E1D6FF00FDF3FF00F4E9FF006F66BC00342A
            AC00241BB200261AB200291CAE003323AC003120AD002B1CBA00241ABA00241F
            B000312FA000B8B8F800F3F5FF00FAFDFF00FDFFFE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFE00C3C3C300A19BA000928F9100A4A5A100FDFFFB00FBFFFE00FBFD
            FD00FFFEFF00FFFBFF00FCFBFD00FDFFFF00FBFFFF00FBFFFE00FFFFFF00FEFF
            FD00FDFFFC00FAFEF900FFFFFF00FFFEFF00FFFDFF00FBF5FF00DDD0FF004B3E
            A0003F368D00AAA4E500F6F5FF00FAFCFF00F8FDFF00FBFFFF00FDFBFB00FFFF
            FE00FFFFFC00FDFFFC00FDFFFF00F3F3FF00544BC300261CBC001E17BC002A21
            B1005E53AF00FAEEFF00FCF5FF00E1DDE200FFFDFF00E9DBDC00492D22004121
            1400634942007056500062423C0046271E003B201600C7B4C900948EE0002625
            8D0048459A00DEDDFF00F9F9FF00FFFFFE00FDFCFF00FDFCFF00FEFEFE00FFFF
            FE00F9F9F900FFFEFF00FBF6F800C3BEC000FFFFFE00FAFBF900FDFFFC00F8F9
            FF00E7DCFF003B2D9D002C1FB000271DB7002A21B1006760C900F6F4FF00FAF7
            FF00B0AAF10039309E002C1CAF002617B5002E21B3003026A800786FDE007F72
            E5005647CE002C1DB5001F12BC002318BA002E29AA007A77CD00F6F5FF00F8F7
            FF00A9A5ED003C35A4002718AF002718BA00291DB700281EA7006A61D6007E75
            E4005F55CD002C20A8002317B7002216BC002517B20031259B00CCC7FE00F7F7
            FF00FDFDFF00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFFFF00FDFFFF00F8F9
            FF00928DCA00433899003526A6002F21A9003F38B100AFABFF00B7B2FF00433E
            B900291EBB002416BB003323B1007A6ED200F0F3FF00F1F6FF00A09AF3003327
            A900281DBA00261BB8003A33B200B0AAFF00B7AEFF005347BD002A1EB6002216
            B6003424B1007E75D600F0F5FF00EEF6FF00827DD9003429AF001F14B0002A1F
            B5004940B400BEB6FF00AAA4FF003C36B300261EB8002116B200362CAE009E95
            EC00F9F3FF00FFFFFF00FBFFFE00FBFFFE00FDFFFE00F8F5FF00F5EDFF006E62
            BC002C1EB2002617BF002E22B800867FE800F6F4FF00FDFDFD00FFFCFD00FAF5
            FF005752B5002F25AD00311EB0004430AB006A64AB00EFEFFF00EAEDFF007877
            C7003125AD002012B8002013C3002418C4002C22BC003930BC003E31B500362A
            A800392DAB004034A400544A9D00E4DEFF00F2F2FF00AEADED002E21A5002918
            BD00281AB800362FB500A4A5FF00BDBDFF005649C9002A1BB3002519BF002A22
            AF00716BBA00F3F1FF00F1F3FF00888AD0002D26AD002217BB00271DBD003B34
            BB00B6B3FF00B7B5FF00413AC000241BB8002117BD002D23AC00998DD900F7EA
            FF00D3C4FF0031249700281CB4001F15B5002D24B0006A60D800C7BBFF00B2A5
            FF003C2FC000261BBD001812B3002C28AF006664B600F3F2FF00F8F8FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FCFEFE00DCDCDC00928D8F0099949600F1F1
            F100F9FBFB00F9FFFA00FBFFFE00FFFCFE00FFFDFF00FFFEFF00FFFAFB00FFFF
            FF00FAFCFC00FEFEFE00FFFFFF00FDFFFE00FCFFFD00FFFEFF00FFFEFF00FDFB
            FA00FDFBFF00FBF6FF00DAD4FF00584CA4003E329200A49CE900F1EEFF00FAFA
            FF00FAFCFD00FFFEFF00FFFFFF00FFFFFE00FFFFFC00FFFFFF00F6F2FF00554B
            C300281CBC002016BC002A21B1005C53AE00F4EEFF00F5F8FF00DAE0DF00F8FD
            FB00FFFEFB00B9A09E003B1B160044241F004120170044201000482616004629
            1B00E0CBE100968DE400201D8A0046429B00E3DFFF00E4E4F400DADED900BBC0
            BF00D4D6D600E8E7E300E1E0DC00F5F7F700FDFFFF00FFFFFE00C5C0BF00FFFA
            FB00FFFFFF00FFFFFF00F8F5FF00E5D8FF004432A7002E1EB2002516B700281C
            B2006761CE00F2F1FF00F6F6FF006A67B700372FA4002C20AE003225B100392F
            A100BAB4FF00F2ECFF00F4EFFF00EEE6FF00665DCC00291DB700261AC000281C
            B2004A3FAD00F4EDFF00F7EFFF005549BF00281AB5001E14B4002921B4002F2A
            A500B4B0FF00EEEBFF00F8F4FF00F6EFFF00A297ED003323B0002715BC002A1B
            BD003427B1006F67BE00F3F0FF00F8F9FF00FDFFFF00FFFFF900FFFFF900FFFE
            FF00FFFCFF00FFFBFF00FDF9FF00C8C4E800A29CD3008C82CE00786FC000A49F
            E400EFEDFF00EEEBFF00ADA7F8002B24AF002012B800311ABC004939AF00E3E8
            FF00EAF2FF00635CCB002D1EB6002818BD00291DAB00938CE100F1EDFF00F6F0
            FF00B8B0FD003227B3002315BB002A18B9004539B100EBF0FF00E8EEFF00433D
            B200291CB8002919BE003021AB00BBAEFC00F7EEFF00F4EEFF009A91E8002F22
            B3002313B8002A1CB000665AC400F8F0FF00FFFEFF00FBFFFE00FAFFFB00FBFC
            FA00FDFAFF00F8EFFF006E63C0002A1EB4002016BD002721B400827FE600F3F4
            FF00FFFFFF00FFFDFE00FDF7FF007A7BBF005352AE005649AB005F50A4008F84
            B600F8F4FF00F6F9FF00E1E1FF004E43B1003221B8002312BA002818BD00473A
            C600B8AFFF00ECE7FF00E6E5FF00E5E5FF00ECEBFF00F0EBFF00F5F0FF00F6F0
            FF00796FC2003422B1002B16B8003325AD00847BDC00F3F0FF00F4F1FF00C5B6
            FF003929AC002016B6002920B700473EA600E5DEFF00EDECFF005A54AB002F21
            AF002A18B7002D1EA800A79CFF00F3F0FF00EFEDFF009B97FE002A23AE001C18
            B4002E26B3005E52AA00F4E8FF00AC9EFF003125A300291CB800271EB4004943
            B000E9E5FF00F8F2FF00F6EFFF00ACA3FF002C22AB00251DB8002821AC004742
            9D00EFE9FF00FDF8FF00FFFDFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00E7E7
            E700B9B4B500C3C1C100A5A4A600BDBFC000FAFFFD00FCFFFD00FFFEFF00FFFA
            FC00FFFDFF00FFFEFF00FFFDFD00FFFFFF00FFFFFF00FCFEFE00FBFFFE00FBFF
            FF00FAFCFD00FFFFFF00FEFCFB00FFFFFE00FFFEFF00F9F6FF00DED6FF006357
            AF00403592008F83D500F4EEFF00FAF7FF00FBFBFF00FDFFFF00FFFFFE00FFFF
            FC00FFFFFF00F8F1FF00574BC3002A1BBD002016BD002A21B1006057B100F0ED
            FF00F8FBFF00D4DBD800F6FDFA00FFFFFE00FFFCFF00795D5D0034140F00815D
            5300D1A9970056301E00472A1C00FAE6FD00948AE400221F8D0046419C00DFDB
            FF00A7A7B9008F938E008F94920092969100A1A19B00A1A09C00C0C4C500FBFF
            FF00FFFFFE00C1BDBC00FFFDFF00FFFCFF00FEFDFF00FAF7FF00E7DCFF004131
            A6002C1DB4002415B7002C1FB7006A61D000F3F2FF00F8F8FF00ABA7E800958D
            EA007E76E1006962CA00908BE000EFEBFF00F3EEFF00F6F0FF00EBE4FF00645B
            CA002D21B9002014BA002C1EB9004B3DB300F2E9FF00D3CBFF002A1DA9002616
            C7002216BC002B22AF00736FCF00F0EDFF00FDFBFF00FFFDFC00FFFBFF00F6ED
            FF005B49C6002D18BA002816BD00281CB0003E35A300E2DFFF00F6F6FF00FBFE
            FF00FFFFF900FFFFF800FFFEFF00FFFCFF00FFFBFF00FFF9FF00F9F6FF00F4F2
            FF00F0E9FF00D4CCFF00C0B9FF00C0B9FC00EDE7FF00E3DDFF002F28AF00281A
            BF002A12BE003421A600C4C6F600EDF2FF004B40BC002B1ABF002514BC003025
            A900C8C2FD00FBF9FF00FAF7FF00E4DEFF00362BAA002719BF002916BF003326
            AA00D5D8FF00D9DEFF003329AB002716BD002918BF003528A800E6DFFF00FEF8
            FF00FDF7FF00CAC1FF002E1DAA002B18C3002B1CBA00483DB100F0E9FF00FBFC
            FF00FBFFFE00FBFFFC00FFFFFF00FFF9FF00F5ECFF006B60BD002A1FB5001E17
            BC002924B5008282E600F1F3FF00FDFFFF00FFFFFE00FDFAFF00EDEEFF00EAE9
            FF00EFE7FF00F3E9FF00FBF1FF00FBF6FF00FDFDFF00F5F5FF00CCC2FF004D3E
            B1003424B2002819B0002D20AA00463EB000ADAAF900EEEFFF00F3F7FF00F7FC
            FF00FDFDFF00FDF8FF00F6EBFF005F50B200301CB1002F1AB7003727A400BAB1
            FF00F9F6FF00FAF8FF00EAE0FF00463AAA00291EBA002118B5002D249900CAC2
            FF00E0DCFF0041399E002E1EB2002C1AB50035269F00D6CEFF00F8F4FF00F8F6
            FF00CBC8FF002C27A200231EB5002620AF00473C9D00EBDEFF00AB9EFF003529
            A7002518B400281EB1005E5AC100EEEBFF00F7F4FF00F8F4FF00CBC1FF002E23
            A9002419B6002A20B00049419E00EBE6FF00FFF8FF00FFFDFF00FFFEFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FEFEFE00CDCBCB00A2A2A2009A9A9A008F8F8F00D9DB
            DB00FFFFFF00FFFFFF00FFFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
            FB00FDFFFF00FBFFFF00FBFFFF00FDFFFE00FFFFFF00FFFEFF00FFFEFF00FFFE
            FF00FDFDFF00F6F8FF00E4E2FF006E5FB30044319800735FC200E6DAFF00F1F3
            FF00F5FDFF00FBFFFA00FFFFFC00FEFDFF00F8F0FF005345C2002A1ABF002317
            C3002720B1005D57AE00F1EEFF00FBFAFF00DDDFDF00F6F8F800FFFEFF00FFF8
            FE00F4E1E400462C260054322500ECBFB1006D41340045281F00F5E2FB00938A
            E10025208D0047459E00D9D7FF00DBDBED00F3F4F200F2F3EF00EFF0EC00F1F2
            F000F2F2F200F9F8FA00FDFCFE00FFFFFF00C1BEC000FFFBFF00FFFBFF00FFFE
            FF00FBF8FF00E4DCFF003E32A200291DB3002416BB002D1DB8006B5FCF00F6F3
            FF00FFFCFF00FFF7FF00FCF2FF00F3F2FF00EFF0FF00EAEBFF00DEDAFF00BAB2
            FF009588EE005242C5002E1FB6002217BB002217B9002A22AF005B55C200EEE9
            FF00AFABF3002922AD001E14C2002512BF003221AE00B2A7F700F9F3FF00FFFC
            FF00FFFFFC00FFFEFF00F6EFFF008A7AEA002F1BB4002A17BA00281BB3002C24
            9900C5C3FF00F3F5FF00FBFFFF00FFFFFC00FFFFFA00FFFFFE00FFFEFF00FFFD
            FF00FAF9FF00F3F5FF00D7D8FF006D64CC003729AC003325AD003023A7005248
            C000A99FFF004A40D2002619BB002815C0003222AC00B5ADEC00EBE5FF003C2C
            AF002817BC002115BB003129AB00D4CEFF00FCFAFF00FDFCFF00ECE9FF004A3D
            B7002A1ABB002817BE00291EA400CBCAFF00CDCCFF002E20A4002B1ABF00281B
            BD00413BB200EAECFF00FBFFFF00FBFDFF00D9D0FF003522AD002912C0002617
            B9003C33AB00E0DDFF00F8FBFF00FBFFFF00FBFDFD00FFFCFD00FFF9FF00F8EE
            FF006F63BD002B20B2002016BC002A23B400827FE600F3F5FF00FBFFFF00FDFF
            FC00FAFBFF00EAE6FF00E1DBFF00E4DCFF00E5DDFF00EBE9FF00FAFAFF00FFFE
            FF00FDFBFF00F8F3FF00D8D0FF005449AF003429AD00261AAE002A1FB5002E25
            AB007470D700E3E6FF00F2F6FF00FDFCFF00FFF7FF00ECDFFF004E3FA8002E1B
            B2002C19B60034229D00CABFFF00F6F4FF00F6F7FF00EDEEFF004E4CAC00291E
            BA002416BB003227A300B7AFFF00CECDFF002E2899002D1DB8002C1AB3003F35
            A000E3DEFF00F8F9FF00F8F9FF00D9D7FF00352F9C00291EB000271CAE003B30
            9E00D7CEFF00CCC2FF0033299B00281CB400231BB600342CA900C3BEFF00F2EC
            FF00F0EAFF007F73E9002A1DB5002114BE002F23B700625CB300F6F2FF00FFFB
            FF00FFFDF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2F200A3A3
            A30087878700BCBCBC00B7B7B700F8F8F800FBFBFB00FFFFFF00FEFEFE00FCFC
            FC00FDFDFD00FFFFFF00FFFFFF00FEFEFE00FDFFFF00FDFFFF00FDFFFE00FFFF
            FF00FFFDFF00FFFEFF00FFFEFF00FDFFFE00FBFFFB00F8FBFF00EDE5FF008372
            CD0044319E004B3EA000BCBCFC00EFF4FF00F9FBFF00FCFCFC00FFFDFF00F5EF
            FF005C4DC7002B1BC0001F12C100271FB2005D57B000F2EFFF00FBFAFF00DEDE
            DE00F4F6F600FFFEFF00FFFEFF00FFF9F900B8A59E0033150A00603328005F35
            2900442A2300F2E4FC009289DF0026228C003F3E9400E4E3FF00FBF9FF00FFFF
            FE00FDFCF800FFFFFB00FFFFFE00FFFFFF00FDFDFD00FEFEFE00FFFFFE00BEBD
            BF00FFFBFF00FFFCFF00FFFFFF00FAF8FF00E4DEFF003C33A100281DB3002416
            BB002D1EB6006D60CE00F8F4FF00FFFEFF00FFF8FF00FFF8FF00F4F1FF00AFAF
            EB00696ABB003A379E002F249E003626B300301CBB002511B7002A1BBC002A21
            B100302C9D00B0ADFF00F0EAFF00A099E4002723AB002118C3002612C200301F
            AC00C2B8FE00FAF7FF00FFFDFF00FFFFFB00FDFFFE00F4F5FF00968AF4002D1D
            B1002818B9002A1EB4002A239C00B9B8FF00F6F7FF00FDFFFF00FFFFFE00FFFF
            FC00FFFFFC00FFFEFD00FDFEFF00F6F9FF00DADCFF004F4DA700332AB0002618
            B4002B1CB4002D20B2003325AD002C1FA9003529C3002318BC002212BD003326
            B000A9A2E500E6E0FF002F20A7002716BD00251BC1002D29A700DFDAFF00FBFA
            FF00FBFEFF00F4F3FF00463AB2002A1ABB002315BB003026AE00C4C0FF00C7BF
            FF003625AC002511B800281ABF004844BB00EAEFFF00FBFFFC00FDFEFF00E4DD
            FF003221A8002814C1002517BC00372EA700D6D3FF00FBFBFF00F7F9FF00F7F8
            FF00FBF8FF00FBF5FF00F6F0FF006E68BA002B21B1002217BB002D21B500857E
            E700F4F3FF00FBFFFF00FDFFFC00FAFAFF00746DB000453A9B003A309B004840
            9D007979AF00F4F5FF00FFFDFF00FFFEFF00FFFDFF00F6F3FF00E3DEFF00706C
            CC003028AA00251AB000281AB8002F26B2005C5BB900DEDDFF00F7F3FF00FDF6
            FF00E7DEFF003B309800291BAF00291BB60037299F00D2C8FF00F9F4FF00F8F9
            FF00EBEEFF005656B000251AB000281BBD002E24A000B4ADFF00C8C4FF002D27
            9C002817B4003420B900493EA400E5E2FF00F9F9FF00F8F9FF00E4DEFF004339
            A3002818AC002B1CB300332B9D00CAC2FF00F1E9FF006D64BB003127AF002419
            B5002C22B4003B32B1008179DD00685EC800291DAB002B1CBD00291ABC002A1F
            A300C4BEFF00F8F5FF00FFFBFF00FFFFFB00FFFFFE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FAFAFA00FFFFFF00B4B4B400C2C2C200C0C0C00091919100B7B7B700FFFF
            FF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFEFF00FFFD
            FF00FFFDFF00FFFEFF00FFFEFF00FFFDFF00FFFEFF00FFFEFF00FDFFFE00FBFF
            FC00F8FFFF00F1F4FF00F3F2FF00968FDA0042389500362C96009A91E800F9F1
            FF00FFFCFF00FBFDFE00F6F3FF00594BC1002918BB002115C1002921B4005954
            AF00F1EFFF00FAFBFF00DDE0DE00F4F9F700FAFFFD00FFFFFE00FFFFFB00FFFD
            F3007B655A00411D130046221A0046312900F7EBFF00908ADC00232087004846
            9800E0E0FF00FAFAFF00FFFEFA00FFFFFC00FFFFFE00FCFDFB00FFFFFE00FFFF
            FE00FFFFFE00FFFFFC00BDBEBA00FEFDFF00FFFEFF00FFFFFE00F8F8FF00E2DE
            FF003A349F00281EB1002417B9002D1EB5006B61CC00F6F5FF00FDFDFF00FDF8
            FF00E9E2FF006A5FC5002F24A8002923B2002821B8002217B4002414B5002C17
            B900331EBA003222AF003C33A200A2A1E500F3F2FF00FDF2FF00A598DC003027
            AD001F17BE002414BF002C1FA900BEBDFF00F3F7FF00FDFFFF00FCFFF600F7FF
            F600F1F7FF009690FB002A1EB2002419B500291EB0002D249C00C0BBFF00FAF7
            FF00FDFDFD00FFFFFF00FFFFFE00FFFFFB00FFFFFE00FBFEFF00F3F5FF00837F
            DF002720A7002217B4002B1FB9002E24A000625AC5006053BF003426A3002417
            B3002419C3002015BF002C25AC00A6A6E600DEDDFF002A1EA6002818C3002117
            BD00342EAB00DDD7FF00FCFBFF00FAFFFF00F1F2FF00493EB8002918BF002415
            BD002E22AA00C7C0FF00CBC2FF003623AE002C16C2002515C1004E45C400EEEC
            FF00FFFEFF00FEFBFF00DED7FF003628AC002516BE002217BB00332BA700DDD7
            FF00F8F4FF00D6D3FF009A99D700C9C9FF00ECEDFF00EDF0FF006365B3002A21
            AE002616BB003121B500897DE700F6F4FF00FFFFFF00FFFFFE00FAF6FF005F57
            B6003025AB002F1FB3003529AB006965B100F3F3FF00FBFAFF00FFFEFF00FFFE
            FF00FBFBFF00F6F7FF00EFEFFF009995E700382FA400291DB300281AB8002E23
            AF005E55BD00EEEAFF00F6F5FF00D9D8FF00333294002521B000231DB200342C
            9E00D1C7FF00FBF4FF00F9F5FF00F2EFFF00524EA7002D26B1002118AE00342B
            A300AFA8FF00C6C2FF0030279B002B19B4002E1AB3004D41AB00E9E2FF00FBF8
            FF00F6F1FF00E6DEFF003B2EA2002E1CBB002C1EBA002E269800CAC6FF00F8F0
            FF00F0E7FF007B72E1002E24B7001E11B3002517BC00281BB7002C1FBB002215
            BD002418B8003C31B700B7ADFF00F6EFFF00FCF8FF00FFFEFF00FFFFFB00FFFF
            FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FEFEFE00F7F7F700B8B8B8009A9A
            9A00B1B1B1009F9F9F00FFFFFF00FDFDFD00FDFDFD00FFFFFF00FAFAFA00FFFF
            FF00FFFFFF00FFFEFF00FFFDFF00FFFDFF00FFFEFF00FFFEFF00FFFEFF00FFFE
            FF00FFFEFF00FDFFFF00FDFFFF00FAFFFE00FAFFFF00F5FAFF00F3F2FF00AFAB
            F2004A3DA30041359500AEA2D600FDF9FF00FBFDFE00F6F5FF00574ABE002919
            BA002517C3002A1FB5005A55B100F1EEFF00F9F9FF00DBE0DF00F7FCFA00FAFF
            FD00F9FDF800FFFFF700FFFFF800ECDCD5004B2D2800361914003C2C2500EFE8
            FD00918BDC002521860043419300E3E0FF00FBFBFF00FFFFFB00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFE00FFFFFC00FCFFFA00BBBFBA00FFFFFF00FFFF
            FF00FDFFFC00F7FAFF00E2DFFF003A349F00281DB3002416BB002D1EB5006B61
            CC00F4F5FF00F8FCFF00F1F0FF007873C2003224AC002517BD00241AC0002119
            B9002D23B5003024AC00382AAE006051CB009487F500D9D1FF00F2F1FF00F4F5
            FF00FFF7FF00B9AAE7002D21A3002016BD002212BD003429B500A6A6F200F1F7
            FF00FAFDFF00FDFFF900F8FFFB00EDF5FF008883F0002C21B7002419B500271D
            AD0034299D00BFB8FF00FBF7FF00FDFDFD00FFFEFF00FFFFFF00FFFFFB00FFFF
            FE00FBFEFF00E8E9FF004038AD002C20C0002414BF00291DB1009E98F700EDE8
            FF00F1E6FF009C8FF100291DB1002317C3001F15BC002923A600ABACE900E2E2
            FF003529B1002816C1002115BB00362CAE00D7CFFF00FAF9FF00F6FDFF00E6EB
            FF00443AB6002C1BC2002B1AC100291BA200CEC6FF00CEC3FF00321EA7002916
            C1002314C300433AC000ECE8FF00FFFBFF00FDFAFF00D6CFFF003123AA002114
            BC00251ABC003A31AA00E0D7FF00F9F3FF00D0CCFF003A38920033309300706F
            CF00C7CAFF006868CC00281EB1002617B9003122B3008B7EE400F8F4FF00FFFF
            FF00FFFFFE00FAF5FF005C51B9003122B3002917B6003021AB006E68BA00F4F1
            FF00FAF7FF00F9F8FF00F9F8FF00F8F9FF00F6F8FF00F6F7FF00F2EFFF00B1AB
            FD003429AF002719B7002617B9003023A700A69EE400EFECFF00E1E0FF003F3E
            9E002320B1001D18AF002E269B00CBC3FF00FBF4FF00FAF3FF00F3ECFF005951
            AE002921AA00251EAF002D259A00B9B1FF00D0CAFF00342B9A002F1AB6002F1B
            B400453AA800DDD9FF00F7F4FF00FAF6FF00DDD3FF003B2FA700291ABC002416
            B400352F9C00D5D1FF00FAF5FF00F5EEFF00786DDB002B1FB300291DBD002518
            BA002D21B9002C20BA002417BF00251AB7003C31B000B8B0FF00F8F4FF00FDFB
            FF00FFFDFD00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFE00D8D8D80097979700A3A3A300E8E8E800E7E7E700DBDBDB00FFFF
            FF00FFFFFF00FEFEFE00FCFCFC00FFFFFF00FFFDFC00FFFFFC00FFFFFB00FFFF
            FE00FFFFFE00FFFFFE00FFFFFE00FFFEFF00FFFDFF00FFFCFF00FFFEFF00FFFF
            FF00FFFEFF00FBFBFF00F6F6FF00DDD7FF006C64A0004A406F00E1DBFA00FBFE
            FF00F6F4FF005648BE002F1CBF002413C200291CB4005D54B500F3EEFF00F8F7
            FF00D7DADE00F7FAFE00FBFFFF00FCFFFB00FFFFFB00FFFFFE00FFFEFE00C8B2
            B400644F4E00766A6800F9F6FF008E89D8002522850047429700E6E3FF00F9F8
            FF00FFFEFE00FFFBFF00FFFBFF00FEFDFF00FDFCFE00FFFFFE00FEFFFB00FDFF
            FC00BCC0BB00FFFFFF00FFFFFE00FDFFFB00F8FBFF00E2DFFF003A349F00281C
            B4002416BC002D1EB6006960CE00F3F5FF00F3FAFF00CFD2FF002F2B9400271C
            AE002415B6002A1EB6004943C0008C89DF00B3B2F400DBD5FF00F1E9FF00EFEA
            FF00EDE9FF00F3F4FF00F8F9FF00FBF7FF00D1C9F8003327A5002617BF002312
            C1002D1FB3007E79D400EEEFFF00FBFEFF00FFFFF900FAFFFF00F2F2FF005C54
            C6002B1DB8002112B3002D20B1003B319C00E6DEFF00FBF9FF00FEFEFE00FBFF
            FF00FDFFFF00FFFCFB00FFFEFF00FBF9FF00E1DEFF00382FA700291ABB002A17
            C0003E2EB700EFE9FF00FAF6FF00FDF5FF00EFE4FF003E31B5002618BE002717
            BC002E24A600BCBAF600F1ECFF004636B9002B17BE002412BD003223AD00C8BE
            FF00FAF7FF00F5FBFF00DADFFF00382DAB002616BB002919BE002F23A500E1D9
            FF00DAD2FF003A29A8002413B6002419C3002E29AE00DFDDFF00FAFAFF00F4F4
            FF00C2BEFF00291EAA002618C400291CBE00473BB300F1E8FF00FDF6FF00C8C4
            FF002F299400281FA5003025B7004037C3003A30C2002419BD002317B7003225
            AF008B81DE00F7F5FF00FFFFFE00FFFEFF00FDF5FF005C51AD00382AA7003524
            AB003B2BA0007166AE00F6EFFF00F9F4FF00E9E8FF00ECE9FF00D8D5FF00DBD7
            FF00F8F6FF00F7F4FF00F4EFFF00958BF5002D21AF002718BA003323B1005F52
            A800F6EBFF00EDE6FF004945A500281FB500241ABA002D22A100BCB3FF00FAF4
            FF00FBF6FF00EADEFF004739A2002C1FB0002B1FB3002D249800CDC5FF00D9D0
            FF00392E9C002C1AB5002918B500312A9D00D6D5FF00F4F7FF00F5F5FF00CFCA
            FF002F269B002115B500291CB8004039A100DBD7FF00F0EEFF008F8BD3003327
            A9002518B000291FA8005850C5009694EE008782E5003328B4002619B500291D
            B300352CA000D1CFFF00FAFAFF00FFFDFF00FFFCFE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFDFD00FAFAFA00FFFFFF00FFFFFF00EDEDED00FDFDFD00F6F6
            F600B1B1B10086868600DBDBDB00FBFBFB00FFFFFF00FFFFFF00FCFCFC00FFFF
            FE00FFFFF900FFFFF900FFFFFE00FDFFFE00FDFFFE00FDFFFE00FFFEFF00FFFD
            FF00FFFDFF00FFFCFE00FFFEFF00FFFEFF00FCFCFC00F9FCFF00FAF9FF00F4F2
            FF00BAB3D800EBE7FF00F7FAFF00F1F1FF005F52C6002F1ABD00210EBB003021
            B9005A51B200F3EFFF00FBF9FF00DBDCE000F6F9FE00FBFEFF00FDFFFF00FDFF
            FE00FDFFFF00FFFCFE00FFFDFF00FFFCFF00FFFDFD00F7F4FF008A85D4002824
            84004B449900E6E0FF00F8F6FF00FFFFFF00FFFDFF00FFFBFF00FFFDFF00FFFE
            FF00FFFFFF00FFFFFE00FDFFFE00BDBFBF00FFFFFF00FDFFFE00FDFFFB00F8FB
            FF00E2E0FF003C349F00291CB4002615BC002F1DB6006B60CE00F1F5FF00F1F8
            FF00B7BAFF002F2A9D002C20B4002C1DBB00281AAE00BDB4FF00EAE9FF00EBEC
            FF00E3DFFF00746DB8006C66B5007470B8009C99D100CBCBEF00FBFBFF00F3EE
            FF004A3EAE002C1EBA002715C0002819B7003B32A700C6C2FF00F4F3FF00F3F4
            FF00F0F0FF00B0ACF7003428AA002819B7002C1BBE002F20AA006B61BB00F4F0
            FF00FAFAFF00FDFFFE00FBFFFF00FCFEFE00FFFDFE00FFFDFF00FDFCFF00E5E3
            FF003D34A8002516B4002D1BC2003A2AB300E7E0FF00F4F1FF00FAF4FF00DFD6
            FF003B2EB2002718BA002C1DBB00382BA500DEDAFF00F4EEFF005D4AC100321D
            B9002A18BF002E21B200A59BF500F0EDFF00EEF1FF00BBBDFF003229AF002617
            B9002B1DB9004138AD00F1EDFF00F0EAFF004435A8002D1DB8002218BF002520
            AB00C0C0FF00F0F2FF00EFEFFF00A09CF5002A20B2001C10B6002D1EB5006457
            C300F9F1FF00FDF9FF00D8D5FF004E49A4003429A8002A1BB2002516B7002516
            BE002115C1002116B8003025B1008981E000F7F5FF00FFFFFE00FFFEFF00FDF7
            FF00CDC5FF00B8AFFF00B9AEFF00BBB0FF00CFC6F900FAF3FF00D2CCF5005653
            8B004F4BA4003D399800433D8A00E0DAFF00F6F4FF00F2EFFF00B3AAFF002B1F
            AD002616BB002E1EB10052439E00ECE1FF00F0EAFF006A64BB002B1FB3002517
            BC003025B1009087EF00F3EFFF00F4F1FF00CCC0FF003A2BA5002919B400281A
            AE00443CA100E5DFFF00EAE4FF004C41A7003221B8002717B8002A25A600B0B1
            FF00EBEFFF00ECEEFF00A9A2FD003529AB002618BD003023BB005951AE00EFEC
            FF00EDECFF0049459E002E21B2002C1DBB002E22AA00D2CDFF00EAEAFF00E7E4
            FF007D72F6002E1FBD002718BA00352BAD009D9EDA00F1F4FF00FDFCFF00FFFD
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFF
            FF00FFFFFF00FCFCFC00A0A0A00098989800AFAFAF00D6D6D600C1C1C100FEFE
            FE00FDFDFD00FFFFFF00FAFBF900FDFFFB00FBFFFC00FBFFFF00FBFFFF00FBFF
            FF00FDFFFF00FDFFFE00FFFFFE00FFFFFF00FFFDFF00FFFEFF00FFFDFF00FEFE
            FE00FDFFFF00FBFEFF00F8FCFF00F5FAFF00F3FBFF00F4FFFF00EFF2FF005548
            BB002F1BBA002A17C2002E1EB2005C53AE00F3F0FF00FDFAFF00DFDEE000FBF9
            FF00FFFCFF00FFFCFF00FEFDFF00FBFEFF00FCFEFF00FFFEFE00FFFFFC00FFFC
            FB00FAF7FF00837EC90021197800453B8E00DFD8FF00FDFAFF00FFFFFC00FEFC
            FB00FFFFFF00FFFEFF00FCFBFF00FFFFFF00FFFFFF00FDFEFF00BDBEC200FFFE
            FF00FCFEFF00FDFFFC00F8FBFF00E4DFFF003E349E002D1CB3002915BC00311E
            B5006D60CC00F3F4FF00F3F8FF00D0CEFF0039309E002918A9002712B4002D1B
            BA005547D5009791FF00918DF7004F44C0002E20A8003225B100372AAA00382E
            9200BCB6F700F6F5FF00F6F3FF00A49DF2003023A3002B18BB002815C000281B
            B3003A2FB3007F79E4009894FB00746EDF002D25A800251AB6002416BC002815
            B8003224A200BFBAF800F6F4FF00FCFBFF00FDFFFE00FBFFF900FDFFFB00FFFE
            FF00FFFDFF00FFFEFF00F3F0FF005850BB002D21B7002515BA002E22B6007F79
            DE00DAD7FF00D0CAFF00685FCD00271BAF002617B8003020B3006F62CE00F5F1
            FF00F4EFFF008F83E3003427AB00251CB300241CAF004943BA00C9C5FF00CCCC
            FF005958C600281FB6002417B9003126B2007B74D500F3F3FF00F6F3FF006E60
            C5003322B3002216BC002520B7005D5CC400CDCEFF00BFBBFF004941BE00261C
            B6002A1EB8003526A6009E90E800FBF6FF00FAFAFF00F8F9FF00E1E3FF00A59F
            EC004C41AF003223B4002717BC001E15C0001F15BC002E22B800877DE700F5F3
            FF00FDFFFF00FFFEFF00FDFCFF00F4F8FF00F2F6FF00F6F6FF00FAF6FF00FDF8
            FF00FBF3FF00DDD8FF003E388A002F2BA8002722AD002A25A600726ED800D8D5
            FF00D4D1FF005F56D5002B1EBA002518C2002B1EAF005B51A400F6F0FF00F4F3
            FF009692D9003528B2002214BA00281CB600413AB900C2C3FF00CECDFF00655A
            D6002F1EB5002A19C1003124B5006E68B700EEEBFF00F1EFFF007874C6002C1D
            AE002315BB00211BB0004F4DC800CFD1FF00CACAFF004D44BD002B1CB400220E
            BB003121B500908BD600F0EEFF00EAE5FF00524AA9002A1BB2002918C0002E22
            B8008F87FF00D6D4FF00CAC6FF004E41CD002C1BBE002515BA003026A8009293
            CF00F4FAFF00FBFDFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
            FD00FFFFFF00FEFEFE00FFFFFF00FDFDFD00FFFFFF00C5C5C500ACACAC00D7D7
            D70092929200C3C3C300C1C1C100C3C3C300FDFDFD00FDFFFE00FBFFFC00FAFF
            FE00FAFFFF00FBFEFF00FBFEFF00FBFFFF00FBFFFC00FBFEFF00F9F5FF00FAF3
            FF00F8F3FF00F8F2FF00F3EFFF00F4F3FF00F2F1FF00F3F4FF00EEF1FF00EFF2
            FF00EAEFFF00ECEBFF00584CCA002E1CBD002512BD002F1FB2006057B100F4EF
            FF00FCF9FF00E0DDDF00FCF8FE00FFFDFF00FFFDFF00FFFEFF00FBFEFF00FBFF
            FF00FFFEFF00FFFBFA00FFFFFE00FAFAFF00A4A1D900655FA6007A73B000EEE8
            FF00FDFBFF00FEFDF900FFFFFC00FFFFFE00FFFEFF00FFFEFF00FFFEFF00FEFD
            FF00FFFDFF00BEBCC200FFFEFF00FFFEFF00FDFFFE00F8FBFF00E6E0FF004235
            9B00321DAF002E17B5003420AF006F62C800F3F4FF00F4F9FF00F1EFFF007269
            C0003D2CAB002E1BB2002715B4002C1EBA002D23B3002C22B200291BB6002B1C
            BA002715B4003223AD00564CB000E9E4FF00FAF7FF00FAF8FF00E8E5FF00716A
            C5003022A6002D1BB6002A1ABB002617B5002D21B5002C22B4002A1EB600261B
            B8002418B8002A1EB8003224AC008378D800F3F1FF00FBFEFF00FDFFFF00FFFF
            FE00FDFFF800FCFFF700FFFDFE00FFFBFF00FEFDFF00F6F7FF00ADAAFA00332A
            A200271BAF00271BB1002D24A300332CA500362FAE002921AA00281DB3002D21
            AF00362DA100C3BDFF00FAF5FF00FBF6FF00D4CEFF003D379C002A25AA00231E
            AF002A23AA003028AB00332BAD002B23AC00241AB4002A20B200302A9900C4C3
            FF00F8FAFF00FAF9FF00C2B8FF0035279D002B1FB300241BB2002823A4003631
            AC002D23AB002E21B2002619B1003022AA00483D9E00DFD7FF00FDF9FF00FFFF
            FF00F9FEFD00FAFCFF00F5F3FF00DED6FF006256C6002C20AE002217BB002115
            BB003021B800877DE800F3F2FF00FBFFFF00FDFFFF00FCFEFE00F8FFFE00F8FF
            FE00FAFFFE00FFFEFF00FFFBFF00FFF9FF00F6F2FF00807BCA002D29A700221D
            B400231BB5002820AD003933A800322A9F002B1EB0002719B700271AB6003429
            A700A19ADD00F4F3FF00F6F8FF00E0DFFF003E34A6002E21B300291DB300261E
            AB002F2AA3003732AD002D1FB3002819B7002719B5002F269F00C3BDF600F8F7
            FF00F1F3FF00C5C4FF003128A0002B21B400251CB3002620AD00322CA300372E
            A6002E1FB0002B19B400341FBC003C2FA900D5D3FF00F6F7FF00F4F2FF00857D
            CA00382AAD002517B300281AB5003024B200372FA400332BA0003020B3002817
            B4002E1EB200342B9A00CACBFE00F6FBFF00FAFDFF00FDFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F1F1F100A0A0A00088888800D4D4D400ADADAD0085858500D5D5
            D500CBCDCD00EBF0EE00E5EBEA00FBFFFF00FDFFFF00FDFEFF00FBFFFF00F8FF
            FA00F6FAFF008A80CD006D5FC900685DCB00645ACC00635ACF00655CD100625A
            CC006159CB006257D1006659D300655BCD006055CF003324BB002918BF002613
            C0002D20B2005C56AF00F0EDFF00FDF9FF00DAD6DB00FFFBFF00FFFDFF00FFFF
            FF00FCFCFC00FBFFFF00FAFEFF00FFFDFF00FFFDFF00FFFFFF00FBFDFF00F3F8
            FF00F3F8FF00F6FAFF00FAFCFF00FFFEFF00FFFFFF00FFFFFF00FFFEFE00FEFE
            FE00FEFDFF00FFFDFF00FEFAFF00FFFDFF00C1BDC200FFFFFF00FFFFFE00FBFE
            FC00FAFAFF00E5DEFF003C2E8C003E27AB003C24B200422DAC006558B400F6F4
            FF00F8F9FF00F6F5FF00E9E3FF00695BBB003727AA003122B9002518BA002318
            BC002419BD002719B7002D22B4003226A8004840A500CDC9FF00F5F3FF00FFFB
            FF00FDFDFF00F6FAFF00E9EEFF007B75C200332797003624B3002D19B8002918
            BB00291ABB002A1CBA002519B1003023B400382DA7008D86DB00F1EFFF00FAFD
            FF00FCFFF800FFFFFF00FFFFFF00FFFFF800FFFFF800FFFFFC00FFFFFF00FFFE
            FF00FAFCFF00F1F6FF008685C900362AA0003423B4002D1DB1002E1FB7002B1F
            B9002B20B6003225AF003D34A200ABABEB00F4F5FF00FCF9FF00FDF9FF00F6F7
            FF00B1B1ED003934A1003127AF003022B0002F1FB3002F1DB6002F1EB5002E22
            B000342DA0009D9DE300F0F2FF00FAFCFF00F9F9FF00F4F1FF009E97E000352A
            9E003225B1002C1FB1002E1FB600301FB6002F1DB0003726B3004032A200BFB8
            F500F7F7FF00FDFDFF00FFFFFC00FFFFFC00FEFEFE00FFFBFF00FAF5FF00E8E3
            FF005A52B6002C1FB0002D1EBC003625B6008479DF00F4F6FF00FBFFFE00FDFF
            FF00FDFFFF00F8FFF900FAFFFB00FFFFFE00FFFDFE00FFFFFE00FFFDFF00F7F6
            FF00E7E5FF005956B200312AA9002E22BA002516B7002F20B8002D1EB5002A1A
            B5003323B6003328A2006E68BF00F1EFFF00F9F9FF00FAFCFF00F6F6FF00BAB5
            FF004339A4003527AA003021B2002A1BB3002F1EBB002F1DBC002B1EB000332B
            A000948EDF00F7F4FF00FDFCFF00F5FBFF00EEF4FF009D9DE9003934A1002E23
            A7002E21B3002E19B500341FBC00311CB5003724AF003F31A100B2ABF400F6F7
            FF00FAFFFF00F7F8FF00EBE8FF00665DB4003628A5003020B3002B1DB9002B1E
            B6002C1FB7002B1CB4003525B2003D2F9F009D93DF00F8F5FF00FBFDFF00FAFD
            FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800CDCDCD009D9D
            9D008E8E8E00E4E4E400BABABA00B5B7B700A8ADAC00A8ADAC00BAB9BB00CAC9
            CB00CFCED200E4E6E700FAFFFE00F3F7FF005648B1003522B4002F20B7002B1F
            B900281DBA00281DBA002B1FB9002C1EBA002D1DBE002D1BBC002E1CB7003424
            BF002314B6002617BF002515C1002B1DB1005D56B100F2EFFF00FBF9FF00DAD7
            D900F3F1F100FFFFFF00FDFBFA00FFFFFE00FBFFFF00FDFFFF00FFFEFF00FFFE
            FF00FFFFFF00FDFFFF00FAFFFF00F8FFFF00F9FFFD00F9FFFA00FDFEFC00FFFE
            FE00FFFFFF00FFFFFF00FFFFFE00FFFFFF00FFFDFF00FFFDFF00FFFCFF00C4C1
            C300FFFEFE00FFFFFF00FEFEFE00FBFBFF00EBE7FF009289CC00887AD8008777
            DC008C7ED600A9A0DF00F8F8FF00FBFEFF00FFFFFF00FAF6FF00EEE7FF00A399
            F3006C63D200443CB900342CAF003A32B500443BB4005D56BF00958EE300DED9
            FF00F6F4FF00FDFCFF00FFFDFF00FFFFFF00FAFFFF00F2FBFF00F4F3FF00C1BA
            FD008072D7005D4CC5004031B100392CAC003E33AD006056C800897EE400CAC2
            FF00F4F1FF00FAFAFF00FDFFFC00FFFFF800FFFEFF00FFFEFF00FFFFFC00FFFF
            FB00FFFFFE00FFFFFF00FFFEFF00FBFEFF00F6FBFF00F4F5FF00B9AEFE007161
            CD00483AB0003C30AE00392EAC005249BE008379DD00C8C3FF00F3F7FF00F7FA
            FF00FFFDFF00FFFCFF00F9FBFF00F2F4FF00CBC8FF00857DE1005244B4004635
            AE004331AE004737AD00766DD500B9B5FF00F3F4FF00F8FBFF00FBFEFF00FBFD
            FF00F7F7FF00F3EFFF00BFB8FF007A70D4004F42B6003E31AB003B2FA5004E40
            B0008173D900D2C7FF00F6F6FF00FAFEFF00FAFCFD00FEFFFD00FFFEFA00FFFF
            FC00FFFFFE00FBFAFF00F8F6FF00C0BCF700483DA3003C2FA300473BA5009490
            D800F3F7FF00FAFFFB00FFFEFF00FFFEFF00FDFFFB00FFFFFB00FFFFFF00FFFD
            FF00FFFEFF00FFFEFF00FFFEFF00F6F4FF00E7E3FF009990EA006156CA004133
            B6003F32B2003B2DAB004B3CB500695DC700AEA5F500EFECFF00F6F7FF00FBFD
            FF00FCFDFF00F8F9FF00F6F2FF00D5CDFF008C81DD005B4EBC003F31AF003E30
            B3003F32AC00766DD500B6B2FD00F0EFFF00FCF9FF00FEFDFF00F7FCFF00F4FB
            FF00EFF3FF00C1C0FF008278D5005344B700402EB1004431B6004B3AB3007E71
            D300CCC3FF00F6F4FF00F8FBFF00FBFFFC00FDFFFC00F7F8FF00EEE9FF00A19A
            EB00685DCB004035B1003327A9003E33B200554CC100776ECF00C2BAFF00F6F2
            FF00FDF9FF00FAFBFF00FDFFFF00F5FAF900FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
            FC00FFFFFF00FFFFFF00DADADA00BABABA00C9C9C90089898900DADADA008587
            8800C5C4C600A49EA3007B737A0089828700D6D3D500FBFFFE00F2F4FF005649
            B5002F1FB3002618B6002318BA001F15BB002115BB002518BA002518BA002619
            BB002515BA002514B9002818BD002313B8002416BC002613C0002A1CB0005954
            B000EEEEFF00F8FBFF00F1F5F000BFC1BB00FCFEF800FBFDFD00FDFFFF00FDFF
            FF00FFFFFF00FFFFFC00FFFFFB00FFFEFD00FFFFFF00FDFFFF00FAFEFF00FBFE
            FC00FDFFFE00FFFFFF00FFFFFE00FFFFFC00FFFFFB00FEFFFA00FDFEFA00FFFD
            FC00FBF9F900ECE9EB00DBD7DC00FFFCFF00FFFBFF00FEFDFF00FDFCFF00FAFA
            FF00F5F7FF00F3F5FF00F4F5FF00F3F5FF00F8FAFF00FBFFFF00F9FEF500FBFE
            F500FDFDFD00FBFBFF00F8F6FF00F2F1FF00E7E7FF00EBEBFF00E1E1FF00E7E4
            FF00F4F1FF00F8F7FF00F7F7FF00FAF9FF00FBF8FA00FFFCFE00FFFEFF00FBFF
            FF00F8FCFF00FBFAFF00FAF6FF00FAF4FF00F8F1FF00E5DFFF00E8E5FF00E4E1
            FF00F5F1FF00F7F2FF00FAF6FF00FCF8FF00FBF7FF00FDFFFF00FDFDFD00FFFD
            FF00FFFCFF00FFFDFF00FFFDFF00FFFDFF00FFFCFF00FFFCFF00FFFBFF00FDF9
            FF00FFF9FF00FBF3FF00FBF3FF00F0EBFF00E9E8FF00E5E4FF00EFEEFF00F6F5
            FF00F6F7FF00F8FBFF00FDFFFF00FFFEFF00FFFDFF00FEFDFF00FBFDFF00F8F6
            FF00F8F5FF00F7EDFF00EDE3FF00E9E1FF00F0ECFF00F3F2FF00F3F3FF00FBFB
            FF00FDFBFF00FAFAFF00FDFCFF00FDFBFF00FBF9FF00F8F5FF00F6F5FF00EFEE
            FF00E3E3FF00E8E9FF00F2F2FF00F8F4FF00FAF7FF00F7FAFF00FAFEFF00FFFD
            FF00FFFEFF00FDFFFE00FCFFFB00FEFEFE00FCFCFF00FCFBFF00FBF9FF00E9E8
            FF00EAE9FF00E8E9FF00EDF1FF00FAFFFF00F8FCF600FFFFFF00FFFCFD00FFFF
            FE00FFFFFE00FFFEFF00FFFCFF00FFFCFF00FFFDFF00FFFFFF00FFFDFF00FBF5
            FF00FAF3FF00F6F0FF00E5E2FF00E5E2FF00E7E4FF00F2EBFF00F9F2FF00F7F2
            FF00FDFAFF00FFFBFF00FFFDFF00FCFBFF00FFFDFF00FFFBFF00FAF5FF00FBF5
            FF00F5F0FF00E5E2FF00E8E7FF00EAEAFF00F2F3FF00F8F8FF00FDFAFF00FFFE
            FF00FFFFFB00FBFFFE00F5FAFD00F4F7FF00F8F7FF00F4F0FF00F1ECFF00E7E4
            FF00E6E3FF00EFEDFF00F3F2FF00FBF9FF00FBFAFF00FDFFFF00FBFFFE00FAFF
            FD00F8FDFF00F8FBFF00F5F6FF00F2F1FF00E7E4FF00EBE9FF00E1E2FF00F1F1
            FF00ECEFFF00F6F8FF00F9FAFF00F9F9FF00FFFEFF00FFFEFF00FFFEFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00DBDB
            DB00AFAFAF00B3B3B30093929400CDCACC008D868B0093898F007E757800E6E1
            E200F7F9FA00F3F4FF005E53B4003426AA00291EAA00281FAF00281FAF00271E
            AE002C1FB000291DAB00271EAA002920AD002C1EB2002C1FB1002920AD00281F
            AC002D1EB500362AAC005A56A800F1F3FF00F3F8FF00FDFFFB00D6D9D000C6C8
            C200FBFFFF00F6F9FD00FCFBFD00FFFFFE00FFFFFC00FFFFFB00FFFDFD00FFFE
            FF00FFFEFF00FEFEFE00FFFFFF00FFFFFF00FDFCFE00FBFBFB00FDFFF900FFFF
            FB00FFFFFB00FEFFFB00FFFFFC00E9E7E600BFBDBD00FBF8FA00FFFDFF00FFFD
            FF00FFFEFF00FBFDFE00F7FAFE00FAFFFF00F8FFFF00F7FFFF00F8FDFE00FBFF
            FE00FDFFFB00FDFFF900FEFFF800FFFFFB00FAFBF700FDFFFF00FDFEFF00FDFD
            FF00F9FDFE00FBFFFF00FAFBFF00FDFFFF00FDFFFC00FAFEF800FFFFFC00FFFF
            FE00FFFEFF00FFFDFF00FBFDFE00FDFFFF00FBFBFB00FEFCFC00FFFFFF00FEFE
            FE00FDFFFF00FCFEFF00FDFCFF00FAFAFF00FFFFFF00FFFFFE00FFFCFF00FFFD
            FF00FDFCFE00FFFEFF00FFFDFF00FFFCFF00FFFDFF00FFFDFF00FFFDFF00FFFC
            FF00FFFBFF00FFFBFF00FFFDFF00FFFDFF00FFFDFF00FFFEFF00F9F9F900FCFF
            FD00FBFFFF00FBFFFF00FCFFFD00FDFFFE00FCFEFE00FDFDFD00FBFAFC00FFFF
            FF00FCFDFB00FFFFFE00FFFFFC00FFFEFD00FFFCFF00FFFBFF00FEFDFF00FCFE
            FF00FBFEFF00FDFDFF00FFFFFF00FFFFFE00FFFEFF00FBFBFF00FAF7FF00FDFB
            FF00FFFEFF00FEFEFE00F8FDFC00FBFFFF00FBFFFF00F8FAFA00FFFFFF00FAFA
            FA00FBFFFE00F8FDFC00FFFDFF00FDFBFF00FDFFFF00F9FEFC00F9FEFD00FDFF
            FF00FDFCFE00FFFEFF00FFFFFF00FBFDFD00F9FEFF00F9FEFF00FAFFFB00FFFF
            FB00FFFFFE00FFFEFF00FFFCFF00FFFCFF00FFFFFF00FFFEFF00FDFCFF00FBFB
            FF00FEFFFB00FFFFFC00FFFEFF00FFFAFF00F9F7FF00F8F9FF00FDFDFF00FAFB
            FF00FFFCFE00FFFEFF00FFFFFE00FCFAFA00FFFEFF00FBFAFE00FFFEFF00FFFD
            FD00FFFFFE00FFFFFE00FFFDFD00FFFEFF00FAFEFF00FBFFFF00FBFFFF00FCFE
            FE00FFFFFE00FFFFFC00FFFFFC00FEFDF900FBFEFC00FDFFFE00FFFFFF00FDFC
            FE00FFFDFF00FFFCFF00FAFBFF00F7F9FF00FBFEFF00FDFFFF00FDFEFA00FFFF
            FB00FFFFFF00FCFEFE00FDFFFF00FDFFFF00F5FBF600F9FEFC00FBFEFF00FBFD
            FF00FAFDFF00FBFFFF00FBFFFF00FBFFFE00FBFFFF00FBFFFF00FFFFFF00FEFE
            FE00FFFCFE00FFFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FEFE
            FE00FCFCFC00FFFFFF00FFFFFF00FFFFFF00F9F9F900E2E2E200E3E1E100C3BE
            BF00DDD8D70099949100EAE5E600FFFCFF00F9F4FF006F64AC004F44A100493F
            A3004A42A6004A44A3004941A0004F43A3004C41A1004B46A2004945A4004741
            A600453FA4004845A10044409F00453CA40048419C006F6DA800F4F6FF00FBFD
            FF00FFFFFC00FFFFFE00E1E1E100BABDC200BBBEC300C5C4C800CACACA00CDCD
            CD00CBCBCB00CBCACE00CDCCD000CECDCF00CECCCC00CFCCCE00CFCCCE00CDCC
            D000CECDCF00D1D1D100CFD0CE00C5C3C200B8B6B500C3C3C300D0D0D000FFFF
            FE00FFFFFE00FFFEFA00FFFEFD00FFFFFF00FDFCFE00FDFEFF00F8FBFF00FBFE
            FF00FBFEFF00FDFEFF00FAFCFD00FFFFFF00FCFEFE00FDFFFF00F9FBFB00FFFE
            FF00FFFDFF00FFFCFF00FFFDFF00FFFDFD00FDFEFC00FDFFFF00F8FDFC00F7FE
            FB00FAFFFC00F8FEF900FAFFFD00FFFFFF00FFFFFF00FFFFFF00FDFEFC00FFFF
            FC00FFFFFB00FCFDF900FDFFFB00FBFFF800FBFFFB00FAFDFF00FDFCFF00FFFE
            FF00FCFBFD00FDF8FF00FFFDFF00FDFFFE00FBFCF800FFFFFE00FFFEFF00FFFF
            FF00FFFFFE00FFFFFE00FFFFFF00FFFDFF00FFFDFF00FDFFFF00FDFFFF00FBFD
            FE00FDFFFF00FFFFFE00FDFFFC00FAFFFB00FAFFFB00FDFFFB00FAFDFB00FBFA
            FF00FBFCFF00FBFFFF00FBFFFC00FBFFFE00FCFFFD00FFFFFC00FFFFFC00FFFE
            FE00FFFFFF00FFFFFC00FDFEFC00FAFCFD00FDFCFE00FFFEFA00FFFFFB00FFFD
            FC00FEFDFF00FFFDFF00FFFDFF00FFFAFF00FFFEFF00FFFFFF00FFFFFF00FFFF
            FF00FFFEFF00FFFEFF00FFFEFF00FBFDFE00FDFFFF00FFFEFF00FCFBFD00FCFE
            FE00FBFFFE00FBFFFF00FBFFFF00FEFDFF00FFFEFF00FFFFFE00FFFCFB00FFFF
            FF00FDFFFF00FFFFFC00FDFFF900FCF8F700FFFEFF00FFFDFF00FFFEFF00FBFF
            FC00F8FFFC00F8FEFF00F8FFFF00FAFFFA00FDFFF900FDFDFD00FFFEFF00FFFC
            FF00FEFCFF00FFFEFF00FFFDFC00FFFEFF00FFFEFD00FCFAF900FFFFFE00FDFF
            FF00FDFFFF00FDFFFE00FCFFFD00FEFCFC00FFFEFF00FFFFFF00FDFEFC00FDFF
            FE00FBFEFC00FAFBFF00FCFBFD00FFFFFB00FFFFF900FFFFFC00FFFFFE00FBFB
            FB00FCFCFC00FFFFFC00FFFFFB00FFFCFD00FFFDFF00FFFCFF00FFFCFF00FBF9
            FF00FFFEFF00FFFFFE00FFFFFE00FCFBFF00FFFDFF00FFFDFF00FFFAFB00FFFF
            F900FCFFFB00FAFCFF00FAFAFF00FDFBFF00FDFCFE00FFFFFC00FFFFFC00FCFB
            FF00FFFEFF00FDFDFD00FFFEFD00FFFFFE00FFFDFC00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FEFEFE00FDFDFD00FCFCFC00FFFF
            FF00FFFFFE00FEFFFD00FBF9F800FFFFFE00FFFFFE00FFFEFF00FFFCFF00F7F4
            FF00F8F1FF00F1EBFF00F2ECFF00F1EEFF00F3EFFF00F1EBFF00F6EDFF00F4EE
            FF00F0EDFF00EEEEFF00EEECFF00EEECFF00EFF0FF00EFF0FF00EFEDFF00F1EE
            FF00F3F4FF00F8FAFF00FEFCFF00FFFEFE00FFFEFF00FFFEFF00F5F8FC00F8FD
            FF00FCFBFD00FFFEFF00FDFFFF00FDFFFF00FDFEFF00FFFEFF00FFFFFF00FFFF
            FF00FFFEFF00FFFDFF00FEFDFF00FDFCFF00FEFDFF00FFFFFF00FFFFFF00FFFE
            FE00FDFDFD00FDFDFD00FEFEFE00FFFEFD00FFFFFC00FCFDF900FFFFFE00FFFF
            FF00FDFFFF00FAFCFD00FCFDFF00FFFEFF00FFFEFF00FFFEFF00FFFEFF00FFFE
            FF00FDFFFF00FCFEFF00FDFCFF00FFFDFF00FFFCFE00FFFAFB00FFFFFE00FFFF
            FE00FDFFFF00FBFFFF00FBFFFF00F7FCFA00FBFFFE00FBFFFE00FDFFFF00FDFD
            FD00FFFDFF00FFFFFF00FFFFFB00FFFFFB00FDFFFC00FCFFFA00F6FEF300FBFF
            F900FDFFFF00FDFDFF00FBFAFC00FFFEFF00FFFDFF00FBFCFF00FDFFFE00FCFF
            FB00FFFFFF00FFFFFE00FFFFFC00FDFFFB00FFFFFB00FFFFFC00FFFFFF00FFFF
            FF00F9FEFC00F8FEFD00FBFFFF00FDFFFF00FCFAFA00FFFFFE00FDFFFC00FAFE
            F900FDFEFA00FFFFFF00FDFCFF00F8F9FF00FAFFFF00FAFFFC00FAFFFD00FDFF
            FE00FFFFFC00FFFFFC00FFFFFE00FEFFFD00FFFFFC00FDFFFC00FFFFFF00FFFF
            FE00FFFFFC00FFFFFB00FFFFFE00FFFFFF00FEFDFF00FFFEFF00FFFEFF00FFFB
            FD00FFFFFF00FFFFFF00FFFEFF00FEFBFD00FFFCFE00FFFEFF00FFFCFE00FEFE
            FE00FFFFFF00FFFFFF00FFFFFF00FBFDFD00FDFFFF00FBFDFD00FEFEFE00FFFF
            FF00FFFEFF00FFFFFE00FFFFFE00FDFBFA00FFFFFE00FFFFFE00FFFEFD00FFFF
            FF00FFFDFF00FFFEFF00F9FFFB00F6FFFC00F8FFFF00FAFFFF00FDFFFB00FFFF
            F900FCFFFD00FDFFFF00FEFDFF00FDFCFE00FFFEFF00FFFFFE00FFFFFE00FEFF
            FD00FFFFFF00F9FBFB00FDFFFF00FDFFFE00FDFEFA00FFFFFC00FFFEFE00FFFE
            FF00FDFDFD00FDFFFE00FDFFFC00FAFDFB00FFFEFF00FFFEFF00FFFDF900FFFF
            FB00FCFDFB00FDFFFF00FFFEFF00FFFCFE00FFFFFC00FFFFFB00FFFFFB00FEFC
            FC00FFFDFF00FDFBFF00FFFEFF00FFFFFF00FEFDF900FFFFFE00FFFDFF00FFFB
            FF00FFFDFF00FFFEFF00FFFFFB00FFFFFC00FCFCFF00F9F8FF00FDFEFF00FFFF
            FE00FFFDF800FFFFFC00FFFDFF00FFFBFF00FFFFFF00FFFFFC00FEFCFB00FFFF
            FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FFFFFF00FFFFFF00FFFF
            FF00FDFDFD00FFFFFF00FEFFFD00FBFFFA00FDFFFC00FDFFFF00FEFDFF00FEFD
            FF00FFFEFF00FDFFFF00FBFEFF00F7F8FF00F7F7FF00F8FBFF00F8FBFF00FAFA
            FF00F7F7FF00FBF8FF00FBF8FF00FAF8FF00FBF9FF00FAF9FF00FAF9FF00F9F9
            FF00F9F9FF00F9F7FF00FAFAFF00FAFBFF00FFFDFF00FFFEFF00FFFCFF00FFFB
            FF00FFFDFF00FBFFFE00FBFFFE00FDFFFE00FFFFFF00FBFFFF00FBFFFF00FBFF
            FF00FCFEFE00FFFEFD00FFFDFC00FFFDFD00FFFEFF00FFFEFF00FFFEFF00FDFC
            FF00FEFBFD00FFFFFE00FFFFFE00FCFFFD00FDFFFF00FFFEFF00FEFCFF00FFFE
            FF00FDFCFE00FCFDFB00FCFFFB00FDFFFB00FDFFFB00FEFFFD00FDFBFB00FFFD
            FD00FFFDFF00FFFEFF00FFFEFF00FFFEFF00FFFFFF00FFFFFE00FFFFFC00FFFF
            FB00FFFFFC00FBFBFB00FFFFFF00FEFDFF00FBFAFC00FFFEFF00FFFFFF00FFFE
            FE00FDFDFD00FDFFFF00FFFEFF00FFFDFF00FFFDFF00FBFBFB00FDFFFE00FDFF
            FF00FAFCFD00FFFFFF00FFFFFE00FFFCFD00FFFEFE00FFFFFE00FFFFFE00FCFF
            FD00F9FEFC00F9FDFE00FBFEFF00FDFCFF00FDFEFF00FAFFFC00FBFFF900FFFF
            FB00FFFFFB00FFFFFB00FFFFFB00FDFFFF00FAFFFF00FAFFFE00FEFEFE00FFFD
            FF00FFFAFD00FDFAFC00FFFEFF00FEFBFD00FFFEFF00FFFDFF00FDFCFE00FDFF
            FC00FDFFFC00F9FBFB00FFFEFF00FFFFFF00FFFEFF00FDFEFF00FBFEFF00FBFE
            FF00FCFEFE00FEFFFB00FDFFF900FFFFFF00F9FBFC00FFFFFF00FFFFFE00FFFF
            FC00FBFFFA00FDFFFE00FBFEFC00FBFDFD00FDFFFF00FBFFFF00FAFFFE00FDFF
            FE00FCFAF900FFFFFE00FFFEFD00FDFCF800FFFFFC00FFFEFE00FDFBFB00FFFD
            FF00FFFEFF00FDFFFE00FCFFFD00FDFCFF00FFFCFF00FFFFFE00FFFFFB00FFFF
            FF00FFFEFF00FAFCFC00FFFFFF00FFFFFF00FFFFFE00F9FFFB00F9FFFD00FEFD
            FF00FFFDFF00FFFFFC00FFFFFB00FEFDF900FDFFFC00FDFFFB00FEFFFB00FFFA
            FF00FFFDFF00FBFFFF00F8FFFC00F9FCFF00FDFEFF00FFFEFF00FEFCFB00FFFF
            FB00FFFBF600FFFFFE00FFFFFF00FDFFFF00F9FDFE00FBFFFF00FDFFFF00FDFA
            FC00FFFEFF00FFFEFF00FFFCFE00FBFFFF00F7FCFB00FFFDFF00FFFDFF00FBFB
            FB00FEFFFB00FDFFFC00FDFFFE00FDFFFF00FDFFFF00FFFFFE00FEFFFB00FFFF
            FB00FCFDF900FDFAFC00FFFDFF00FFFFFF00FFFFFF00FEFBFD00FFFDFF00FCFD
            FF00FBFFFF00F7FDF800FBFFFB00FFFFFC00FEFCFC00FFFDFF00FFFDFF00FFFD
            FD00FCFFFD00FBFFFF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFE00FCFCFC00FFFFFF00FDFDFD00FFFFFF00FCFFFD00FCFFFA00FBFF
            FB00F9FBFC00FDFEFF00FDFCFF00FDFEFF00F9FEFC00FBFFFC00FBFFFE00FBFF
            FE00FBFFFB00F8FFF800FDFFFC00FCFEFE00FFFDFF00FEFCFF00FFFDFF00FFFE
            FF00FEFDFF00FFFEFF00FDFDFD00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FFFE
            FD00FFFBFE00FFFDFF00FFFBFF00FFFEFF00FDFFFC00F9FFF900FDFFFC00FCFE
            FE00F9FDFE00F9FEFF00FBFFFF00FDFFFE00FFFFFC00FFFFFC00FFFFFF00FEFD
            FF00FDFCFE00FDFFFF00FFFDFF00FFFEFF00FFFFFE00FFFFFB00FDFFFC00FAFF
            FE00FFFDFF00FFFCFF00FAF7FF00FFFEFF00FCFFFD00FDFFFB00FCFFF700FCFF
            F700FFFFFC00FFFEFD00FFFFFF00FEFCFC00FFFEFF00FFFEFF00FFFEFF00FFFE
            FE00FFFFFC00FDFFF900FFFFF900FEFFFA00FDFFFF00FCFEFF00FFFEFF00FFFE
            FF00FFFDFF00FFF9FC00FFFEFF00FFFFFF00FFFFFF00FEFDFF00FFFCFF00FFFD
            FF00FFFEFF00FBFDFE00FDFEFF00FFFDFF00FFFCFF00FFFCFE00FFFEFD00FFFF
            FC00FEFCFB00FCFFFB00FDFFFB00FBFFFC00FAFFFF00F8FBFF00FDFBFF00FBFE
            FF00F8FFFC00FAFFF900FFFFFB00FFFFFB00FFFFF800FFFFF900FDFFFF00F9FE
            FF00FDFFFF00FFFFFF00FFFDFF00FFFCFF00FFFDFF00FFFCFF00FFFDFF00FFFE
            FF00FFFDFF00FFFFFE00FDFEFA00FDFFFC00FFFEFF00FFFEFF00FFFEFF00FFFE
            FF00FBFEFF00FAFDFF00FAFCFF00FCFEFF00FFFFFB00FFFFF900FDFFFF00FBFE
            FF00FFFEFF00FCFDFB00FDFFFB00FCFFF800FAFFFB00FBFFFC00FBFFFF00F9FF
            FE00FAFFFF00FAFFFF00FAFFFB00FFFFFB00FFFEFE00FFFEFB00FFFFFC00FDFE
            FA00FFFFFE00FFFDFF00FFFBFF00FFFCFE00FDFFFC00FAFFFB00FFFCFF00FEFC
            FF00FFFFFE00FFFEFA00FFFEFF00FCFDFF00FDFFFF00FDFFFF00FFFFFE00FFFF
            FE00FAFFFC00FBFFFE00FFFDFF00FFFCFF00FFFDFE00FFFDFB00FFFFFC00FAFE
            F800FDFFF800FFFFFB00FFFBFF00FFFDFF00F8FFFF00F6FFFF00FAFEFF00FDFC
            FF00FFFEFF00FFFFFE00FFFEF900FFFFFB00FFFFFC00FEFCFC00FDFEFF00FBFE
            FF00F8FCFD00FDFFFF00FFFFFF00FFFEFF00FFFBFF00FFFDFF00FBFFFF00FAFF
            FF00FCF9FF00FFFDFF00FFFEFF00FAFFFD00FBFFFC00F9FFFB00FCFFFD00FDFF
            FC00FCFFFB00FDFFFB00FBFFF700FDFFFB00FFFEFF00FFFCFE00FFFFFE00FFFF
            FE00FFFBFF00FFFDFF00FFFEFF00FAFFFD00FAFFF900FAFFF900F9FCFA00FFFF
            FF00FFFCFF00FFFBFE00FFFFFF00FDFFFE00F8FFFF00F6FEFE00FDFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 94.071975630000000000
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        ReprintOnNewPage = True
        object Memo9: TfrxMemoView
          Width = 740.031496060000000000
          Height = 22.562994800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Vale de salida de almac'#233'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 44.409453090000000000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 22.677167800000010000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
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
          Top = 44.409453090000000000
          Width = 331.086614173228000000
          Height = 21.732285300000000000
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
        object Memo56: TfrxMemoView
          Left = 113.385826770000000000
          Top = 22.677167800000010000
          Width = 331.086614173228000000
          Height = 21.732285300000000000
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
          Top = 66.141738390000000000
          Width = 113.385826770000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 113.385826770000000000
          Top = 66.141738390000000000
          Width = 331.086614173228000000
          Height = 21.732285300000000000
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
        object Memo63: TfrxMemoView
          Left = 585.602564820000000000
          Top = 44.409453090000000000
          Width = 154.050978490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."dFechaSalida"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 585.602564820000000000
          Top = 22.677167800000010000
          Width = 154.050978490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sFolioSalida"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 585.602564820000000000
          Top = 66.141738390000000000
          Width = 154.050978490000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEntrada."sIdFolio"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 444.472440944882000000
          Top = 22.677167800000010000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
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
            'No. ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 444.472440944882000000
          Top = 44.409453090000000000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
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
        object Memo65: TfrxMemoView
          Left = 444.472440944882000000
          Top = 66.141738390000000000
          Width = 141.732295670000000000
          Height = 21.732285300000000000
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
            'Proyecto asignado:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 29.478053280000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxDBEntrada
        DataSetName = 'frxDBEntrada'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 113.385575350000000000
          Width = 58.960620160000000000
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
            '[frxDBEntrada."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 172.346456690000000000
          Width = 43.464566930000000000
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
            '[frxDBEntrada."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
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
            '[frxDBEntrada."Insumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 215.561013550000000000
          Width = 370.376040700000000000
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
            '[frxDBEntrada."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
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
        object Memo19: TfrxMemoView
          Left = 585.826771650000000000
          Width = 154.051024550000000000
          Height = 29.480314960000000000
          StretchMode = smMaxHeight
          DataSet = frmrepositorio.frxOrdenCompra
          DataSetName = 'frxOrdenCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.283944850000000000
        Top = 260.787570000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBEntrada."iFolioSalida"'
        object Memo45: TfrxMemoView
          Width = 37.795275590000000000
          Height = 30.283944850000000000
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
        object Memo46: TfrxMemoView
          Left = 37.795275590000000000
          Width = 75.590551180000000000
          Height = 30.154382290000000000
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
        object Memo47: TfrxMemoView
          Left = 172.346456692913000000
          Width = 43.464566930000000000
          Height = 30.252105370000000000
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
            'U.M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 215.433136770000000000
          Width = 370.376040700000000000
          Height = 30.252105370000000000
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
        object Memo50: TfrxMemoView
          Left = 113.385575350000000000
          Width = 58.960620160000000000
          Height = 30.252113510000000000
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
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 585.826771653543000000
          Width = 154.051024550000000000
          Height = 30.207661840000000000
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
            'Observaciones')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo53: TfrxMemoView
          Left = 113.385826770000000000
          Width = 626.645669290000000000
          Height = 41.574803150000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBEntrada."mComentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Width = 113.385875590000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTAS:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object PopSistemas: TPopupMenu
    Left = 533
    Top = 187
    object mnTiemposMuertos: TMenuItem
      Tag = 1
      Caption = 'Regenera Tiempos Muertos en las Fechas Seleccionadas'
    end
    object mnRegeneraAvances: TMenuItem
      Tag = 1
      Caption = 
        'Regenera Avances Fisicos del Contrato/Ordenes de Trabajo en la F' +
        'echa Seleccionada'
    end
    object mnValidacionReportes: TMenuItem
      Tag = 1
      Caption = 
        'Genera Proceso de Validacion de Reportes Diarios (Almacenamiento' +
        ' de Avances de Paquetes)'
    end
    object mnAsignaAvfisico: TMenuItem
      Tag = 1
      Caption = 'Asignacion de Avances Fisicos a Reportes Diarios'
    end
  end
  object ds_salida: TDataSource
    AutoEdit = False
    DataSet = QrySalida
    Left = 672
    Top = 184
  end
  object ds_datos: TDataSource
    AutoEdit = False
    DataSet = zqDatos
    Left = 286
    Top = 192
  end
  object zqDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 240
    Top = 208
  end
  object QrySalida: TUniQuery
    Connection = connection.Uconnection
    Left = 624
    Top = 200
  end
  object reporte: TUniQuery
    Connection = connection.Uconnection
    Left = 362
    Top = 274
  end
  object frxReporteValida: TfrxDBDataset
    UserName = 'frxDBRequisicion'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 442
    Top = 279
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 576
    Top = 224
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 572
    Top = 273
  end
  object zDatos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 152
    Top = 272
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    DataSet = reporte
    BCDToCurrency = False
    Left = 768
    Top = 221
  end
  object zRequisicion: TUniQuery
    Connection = connection.Uconnection
    Left = 272
    Top = 296
  end
  object zCompras: TUniQuery
    Connection = connection.Uconnection
    Left = 344
    Top = 352
  end
  object zSalidas: TUniQuery
    Connection = connection.Uconnection
    Left = 248
    Top = 360
  end
  object zEntradas: TUniQuery
    Connection = connection.Uconnection
    Left = 408
    Top = 352
  end
  object zOrdenesdetrabajo: TUniQuery
    Connection = connection.Uconnection
    Left = 560
    Top = 352
  end
  object ds_mensaje: TDataSource
    Left = 920
    Top = 223
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 872
    Top = 215
  end
  object ds_destino: TDataSource
    DataSet = zDestino
    Left = 206
    Top = 400
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 256
    Top = 408
  end
  object zCorreo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select cc.* from master_cnf_correo cc'
      'inner join usuarios u on (u.sIdusuario = cc.sIdUsuario)'
      'where '
      '(cc.sContrato = :Contrato)  and'
      '(cc.IdEmpresa = :Empresa) AND (cc.sIdUsuario =:Usuario);')
    Left = 56
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end>
  end
  object zqEnviados: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'Select distinct pc.Correo  from master_proveedor_contacto pc')
    Left = 248
    Top = 311
  end
  object SaveDialog1: TSaveDialog
    Left = 344
    Top = 208
  end
  object anexo_prequisicion: TUniQuery
    Connection = connection.Uconnection
    Left = 712
    Top = 312
  end
  object dsanexo_prequisicion: TDataSource
    DataSet = anexo_prequisicion
    Left = 760
    Top = 328
  end
  object zDestinoReq: TUniQuery
    Connection = connection.Uconnection
    Left = 1016
    Top = 288
  end
  object dsDestinoReq: TDataSource
    DataSet = zDestinoReq
    Left = 936
    Top = 304
  end
end
