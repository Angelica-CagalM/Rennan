object frmValida_CMMI: TfrmValida_CMMI
  Left = 121
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Autorizar Documentos'
  ClientHeight = 551
  ClientWidth = 1166
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object cxLista: TcxListView
    Left = 0
    Top = 41
    Width = 1166
    Height = 80
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
      00000002000000FFFFFFFF00000000FFFFFFFF000000000B5000720065007300
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
    TabOrder = 0
    OnClick = cxListaClick
    ExplicitLeft = -1
    ExplicitTop = 45
  end
  object grid_datos: TcxGrid
    Left = 0
    Top = 121
    Width = 1166
    Height = 430
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      object grid_datosViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Periodo'
        Width = 72
      end
      object col_est: TcxGridDBColumn
        Visible = False
        Width = 80
      end
      object grid_datosViewColumn2: TcxGridDBColumn
        Visible = False
        Width = 80
      end
      object grid_datosViewColumn4: TcxGridDBColumn
        Visible = False
        Width = 59
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1166
    Height = 41
    Align = alTop
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 79
      Width = 1164
      Height = 39
      Align = alTop
      TabOrder = 1
      object btnAutoriza2: TcxButton
        Tag = 11
        Left = 633
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
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
        Left = 527
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object btnEnviar2: TcxButton
        Left = 1057
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object cxVisualizar2: TcxButton
        Left = 951
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
      object cxRefrescar2: TcxButton
        Tag = 12
        Left = 845
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Refrescar'
        OptionsImage.ImageIndex = 19
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxRefrescarClick
      end
      object btnRechazar2: TcxButton
        Tag = 12
        Left = 739
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Rechazar'
        OptionsImage.ImageIndex = 17
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnRechazarClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1164
      Height = 39
      Align = alTop
      TabOrder = 3
      object btnAutoriza5: TcxButton
        Tag = 11
        Left = 527
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAutorizaClick
      end
      object btnValida5: TcxButton
        Tag = 10
        Left = 421
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object btncancelar5: TcxButton
        Tag = 12
        Left = 739
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btncancelarClick
      end
      object btnEnviar5: TcxButton
        Left = 1057
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object btnRechazar5: TcxButton
        Tag = 12
        Left = 633
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Rechazar'
        OptionsImage.ImageIndex = 17
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnRechazarClick
      end
      object cxVisualizar5: TcxButton
        Left = 951
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVisualizarClick
      end
      object cxRefrescar: TcxButton
        Tag = 12
        Left = 845
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Refrescar'
        OptionsImage.ImageIndex = 19
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxRefrescarClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 118
      Width = 1164
      Height = 39
      Align = alTop
      TabOrder = 0
      object btnAutoriza: TcxButton
        Tag = 11
        Left = 103
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
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
        Left = -3
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object btnAsignarCC: TcxButton
        Tag = 11
        Left = 315
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Asignar CC.'
        OptionsImage.ImageIndex = 18
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = btnAsignarCCClick
      end
      object btnComprar: TcxButton
        Tag = 11
        Left = 527
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'P.O.'
        OptionsImage.ImageIndex = 14
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnComprarClick
      end
      object btnLiberar: TcxButton
        Tag = 11
        Left = 209
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Liberar'
        OptionsImage.ImageIndex = 16
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = btnLiberarClick
      end
      object btncancelar: TcxButton
        Tag = 12
        Left = 739
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btncancelarClick
      end
      object btnEnviar: TcxButton
        Left = 1057
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object btnRechazar: TcxButton
        Tag = 12
        Left = 633
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Rechazar'
        Enabled = False
        OptionsImage.ImageIndex = 17
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnRechazarClick
      end
      object cxVisualizar: TcxButton
        Left = 951
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVisualizarClick
      end
      object btnPR: TcxButton
        Tag = 11
        Left = 421
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'P.R.'
        OptionsImage.ImageIndex = 14
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnPRClick
      end
      object cxRefrescar3: TcxButton
        Tag = 12
        Left = 845
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Refrescar'
        OptionsImage.ImageIndex = 19
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxRefrescarClick
      end
      object btnMateriales: TcxButton
        Left = 1
        Top = 1
        Width = 120
        Height = 37
        Align = alLeft
        Caption = 'Materiales MR'
        Enabled = False
        OptionsImage.ImageIndex = 109
        OptionsImage.Images = frmrepositorio.IconosTodos32
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnMaterialesClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 40
      Width = 1164
      Height = 39
      Align = alTop
      TabOrder = 2
      object btnAutoriza3: TcxButton
        Tag = 11
        Left = 633
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Autorizar'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnAutorizaClick
      end
      object btnValida3: TcxButton
        Tag = 10
        Left = 384
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Validar'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaClick
      end
      object btncancelar3: TcxButton
        Tag = 12
        Left = 739
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btncancelarClick
      end
      object btnEnviar3: TcxButton
        Left = 1057
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Enviar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnEnviarClick
      end
      object cxVisualizar3: TcxButton
        Left = 951
        Top = 1
        Width = 106
        Height = 37
        Align = alRight
        Caption = 'Visualizar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = connection.IconosBarra
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = cxVisualizarClick
      end
      object cxRefrescar1: TcxButton
        Tag = 12
        Left = 845
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
        OnClick = cxRefrescarClick
      end
      object btnValidaTecnico3: TcxButton
        Left = 490
        Top = 1
        Width = 143
        Height = 37
        Align = alRight
        Caption = 'Validar T'#233'cnico'
        OptionsImage.ImageIndex = 48
        OptionsImage.Images = frmrepositorio.IconosTodos32
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnValidaTecnico3Click
      end
    end
  end
  object ds_datos: TDataSource
    AutoEdit = False
    DataSet = zqDatos
    Left = 294
    Top = 248
  end
  object rDiarioValida: TfrxReport
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
    ReportOptions.LastChange = 43734.797975428240000000
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
      
        '    Memo27.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.0' +
        '0'#39',(<frxOrdenCompra."dCosto">*<frxOrdenCompra."dCantidad">))'
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo46.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.0' +
        '0'#39',(<frxOrdenCompra."dMontoMN">));'
      ''
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo47.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.0' +
        '0'#39',(<frxOrdenCompra."dMontoDescuento">))'
      'end;'
      ''
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '       Memo48.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#' +
        '0.00'#39',(<frxOrdenCompra."dMontoMN">*<frxOrdenCompra."dIVA">/100))'
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo51.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.0' +
        '0'#39',((<frxOrdenCompra."dMontoMN">)+(<frxOrdenCompra."dMontoMN">)*' +
        ' (<frxOrdenCompra."dIVA">/100))+(<frxOrdenCompra."OtrosCargos">)' +
        '-((<frxOrdenCompra."dMontoMN">)*(<frxOrdenCompra."dRetencionIVA"' +
        '>/100)))'
      'end;'
      ''
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frxOrdenCompra."UsuarioValido"> = '#39#39' then'
      '       Memo30.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo30.Text :=  '#39'ELABOR'#211#39' +#13+ <frxOrdenCompra."UsuarioV' +
        'alido"> +'#39' '#39'+DateTimeToStr(<frxOrdenCompra."FechaValido">);'
      '    end;'
      'end;'
      ''
      'procedure Memo32OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if <frxOrdenCompra."UsuarioAutorizo"> = '#39#39' then'
      '       Memo32.Text := '#39#39
      '    else'
      '    begin'
      
        '       Memo32.Text :=  <frxOrdenCompra."sFicha3"> +#13+ <frxOrde' +
        'nCompra."UsuarioAutorizo"> +'#39' '#39'+DateTimeToStr(<frxOrdenCompra."F' +
        'echaAutorizo">);'
      '    end;'
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo26.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.00' +
        #39',(<frxOrdenCompra."dCosto">))'
      'end;'
      ''
      'procedure Memo50OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo50.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.00'#39 +
        ',(<frxOrdenCompra."dMontoMN">*<frxOrdenCompra."dRetencionIVA">/1' +
        '00))'
      'end;'
      ''
      'procedure Memo53OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo53.Text := FormatFloat(<frxOrdenCompra."Simbolo">+'#39',#0.00'#39 +
        ',<frxOrdenCompra."OtrosCargos">)'
      'end;'
      ''
      'begin'
      ''
      '// lineas quitadas en la parte del firmante'
      '// [frxOrdenCompra."sFicha1"]'
      '//[frxOrdenCompra."sFicha2"]'
      '//[frxOrdenCompra."sFicha3"]'
      ''
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 480
    Top = 336
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
      PaperHeight = 350.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 314.574808030000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 739.008350000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Orden de compra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 501.165354330000000000
          Top = 115.047244090000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero OC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 607.370078740000000000
          Top = 115.047244090000000000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 115.047244090000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Proveedor:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 152.842531890000000000
          Width = 64.251968500000000000
          Height = 45.354323390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Direcci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 247.559055120000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Contacto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 198.425196850394000000
          Width = 64.251968500000000000
          Height = 49.133858267716500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 115.047244090000000000
          Width = 436.976377950000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."RazonSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 152.842531890000000000
          Width = 436.913385830000000000
          Height = 45.354323390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxOrdenCompra."Calle"> +'#39' '#39'+ <frxOrdenCompra."Interior"> +'#39' '#39 +
              '+<frxOrdenCompra."Exterior">+'#39' '#39'+ <frxOrdenCompra."Colonia">+'#39' C' +
              '.P. '#39'+ <frxOrdenCompra."CodigoPostal"> +'#39' '#39'+<frxOrdenCompra."Ciu' +
              'dad">+'#39' '#39'+ <frxOrdenCompra."Estado">] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 247.559055118110000000
          Width = 436.913385830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 198.425196850394000000
          Width = 436.913385830000000000
          Height = 49.133858267716500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 266.456692913386000000
          Width = 436.913385830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Correo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 607.370078740000000000
          Top = 266.456692913386000000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sLugarEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 501.165354330000000000
          Top = 152.842531890000000000
          Width = 105.826771650000000000
          Height = 45.354323390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'Solicita:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 607.370078740000000000
          Top = 152.842531890000000000
          Width = 131.149606300000000000
          Height = 45.354323390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sRequisita"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 501.165354330000000000
          Top = 133.944881890000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'Fecha Elaboraci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 607.370078740000000000
          Top = 133.944881890000000000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 133.944881890000000000
          Width = 64.251968503937000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'RFC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 133.944881890000000000
          Width = 436.913385830000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 266.456692913386000000
          Width = 64.251968503937000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'e-mail:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 285.354330708661000000
          Width = 64.251968500000000000
          Height = 28.346461570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Acepto Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 64.251968500000000000
          Top = 285.354330708661000000
          Width = 47.244094490000000000
          Height = 28.346461570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 111.496062990000000000
          Top = 285.354330708661000000
          Width = 389.913385830000000000
          Height = 28.346461570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 501.165354330000000000
          Top = 247.559055118110000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'T. Entrega')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 501.165354330000000000
          Top = 198.425196850394000000
          Width = 105.826771650000000000
          Height = 49.133858267716500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'Centro de Costo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 501.165354330000000000
          Top = 266.456692913386000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'L.A.B. /  F.O.B.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 501.165354330000000000
          Top = 285.354330708661000000
          Width = 105.826771650000000000
          Height = 28.346461570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapY = 4.000000000000000000
          Memo.UTF8W = (
            'C. Comerciales')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 607.370078740000000000
          Top = 198.425196850394000000
          Width = 131.149606300000000000
          Height = 49.133858267716500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."CentroCosto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 607.370078740000000000
          Top = 247.559055118110000000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 607.370078740000000000
          Top = 285.354330708661000000
          Width = 131.149606300000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Condiciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 18.897637800000000000
          Width = 739.008350000000000000
          Height = 30.236227800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Top = 46.795275590000000000
          Width = 739.008350000000000000
          Height = 68.031483860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RFC: [setup."sRFC"]'
            'Sucursal: [setup."sDireccion1"] [setup."sDireccion2"]'
            '[setup."sTelefono"]'
            '[setup."sEmail"]')
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
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 461.102660000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
        ReprintOnNewPage = True
        object Memo11: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Part.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 64.251968500000000000
          Width = 47.244094490000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 111.496062990000000000
          Width = 49.133853390000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'U/M')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 160.629923700000000000
          Width = 274.015772440000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 501.039370080000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'P. Unitario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 434.645674170000000000
          Width = 66.498663760000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Req')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677167800000000000
        Top = 506.457020000000000000
        Width = 740.409927000000000000
        DataSet = frmrepositorio.frxOrdenCompra
        DataSetName = 'frxOrdenCompra'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Width = 64.251968500000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 64.251968500000000000
          Width = 47.244094490000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 111.496062990000000000
          Width = 49.133853390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 160.629923700000000000
          Width = 274.015772440000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
        object Memo26: TfrxMemoView
          Left = 501.165354330000000000
          Width = 105.826771650000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxOrdenCompra."Simbolo"> ][<frxOrdenCompra."dCosto"> ]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.214148100000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxOrdenCompra."dCosto">*<frxOrdenCompra."dCantidad">)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 434.645674170000000000
          Width = 66.519680160000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sNumFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 113.385826770000000000
        Top = 551.811380000000000000
        Width = 740.409927000000000000
        object Memo52: TfrxMemoView
          Left = 501.165354330709000000
          Top = 75.629559999999970000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Otros Cargos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 501.165354330000000000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 607.370078740000000000
          Width = 131.155550740000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM((<frxOrdenCompra."dCantidad">*<frxOrdenCompra."dCosto">),Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Width = 160.629921260000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe con letras:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 111.496062992126000000
          Top = 94.488188980000010000
          Width = 49.133858267716500000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxOrdenCompra."Moneda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 18.897650000000000000
          Width = 160.629921260000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '([CANTIDAD_LETRA])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 94.488188980000010000
          Width = 111.496062990000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'MONEDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 501.165354330000000000
          Top = 56.692913389999940000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 501.165354330000000000
          Top = 94.488188976377960000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 607.370078740000000000
          Top = 56.692913389999940000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxOrdenCompra."dMontoDescuento"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo51: TfrxMemoView
          Left = 607.370078740000000000
          Top = 94.488188980000010000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxOrdenCompra."dMontoMN">)+((<frxOrdenCompra."dMontoMN">)*(<' +
              'frxOrdenCompra."dIVA">/100))-((<frxOrdenCompra."dMontoMN">)*(<fr' +
              'xOrdenCompra."dRetencionIVA">/100))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 501.165354330000000000
          Top = 18.897637799999980000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'I.V.A. [<frxOrdenCompra."dIva">]%:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 607.370078740000000000
          Top = 18.897637799999980000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo48OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxOrdenCompra."dMontoMN">)* (<frxOrdenCompra."dIVA">/100)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 501.165354330000000000
          Top = 37.795275589999960000
          Width = 105.826771650000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Retenci'#243'n [<frxOrdenCompra."dRetencionIva">]%:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 607.370078740000000000
          Top = 37.795275589999960000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxOrdenCompra."dMontoMN">)* (<frxOrdenCompra."dRetencionIVA"' +
              '>/100)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 607.204724410000000000
          Top = 75.629559999999970000
          Width = 131.149606300000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo53OnBeforePrint'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxOrdenCompra."OtrosCargos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 160.535560000000000000
          Width = 340.535433070000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 160.535560000000000000
          Top = 18.897637799999980000
          Width = 340.535433070000000000
          Height = 94.488188980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."Notas"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Top = 438.425480000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdenCompra."IdOrdenCompra"'
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 158.653680000000000000
        Top = 687.874460000000000000
        Width = 740.409927000000000000
        object Memo38: TfrxMemoView
          Width = 366.614173228346000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Datos de la facturaci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 366.614173228346000000
          Width = 373.039370078740000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Lugar de entrega de materiales.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Rich1: TfrxRichView
          Top = 18.897637799999980000
          Width = 366.614173228346000000
          Height = 113.385826770000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020415269616C3B7D7B5C66315C666E69
            6C5C666368617273657430205461686F6D613B7D7D0D0A7B5C636F6C6F727462
            6C203B5C726564305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E
            657261746F722052696368656432302031302E302E31383336327D5C76696577
            6B696E64345C756331200D0A5C706172645C71635C625C66305C667331382043
            4F4D50415C2764315C27636441204445204D554C5449534552564943494F5320
            50415241204D414E54454E494D49454E544F20494E54454752414C45532C2053
            2E4120444520432E562E5C7061720D0A5C6230205246433A204D4D492D303231
            3132362D4231305C7061720D0A417175696C657320536572645C2765316E2038
            363120696E742E20224322205C7061720D0A436F6C2E2043656E74726F2C2056
            6572616372757A2C207665722E5C7061720D0A432E502E2039313730305C7061
            720D0A0D0A5C706172645C6366315C66315C7061720D0A7D0D0A00}
        end
        object Memo42: TfrxMemoView
          Left = 366.614173228346000000
          Top = 18.897637799999980000
          Width = 373.039370078740000000
          Height = 113.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Calle 38 No.62 entre 19 y 25 Col. Cuauht'#233'moc'
            
              'Cd. del Carmen, Campeche. de lunes a viernes de 8:30 a 17:30 hrs' +
              '. s'#225'bados de: 9:00 a 13:00 hrs')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 132.283464570000000000
          Width = 739.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'Nota: Es requisito indispensable el env'#237'o de su factura electr'#243'n' +
              'ica en formato .PDF y .xml para proceder al pago')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 145.826840000000000000
        Top = 907.087200000000000000
        Width = 740.409927000000000000
        object Memo44: TfrxMemoView
          Align = baCenter
          Left = 275.012013500000000000
          Top = 89.133889999999950000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sPuesto2VT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 42.571073500000000000
          Top = 89.133889999999950000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sPuesto1V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 510.559060000000000000
          Top = 89.133889999999950000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sPuesto3A"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 41.574830000000000000
          Top = 36.220469999999970000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sFirmante1V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baCenter
          Left = 275.012013500000000000
          Top = 36.220469999999970000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sFirmante2VT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 510.236550000000000000
          Top = 36.220469999999970000
          Width = 190.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxOrdenCompra."sFirmante3A"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 126.929190000000000000
          Width = 190.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Anexo 2 CMMI-COM-01 Rev. 0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 41.574830000000000000
          Width = 190.385900000000000000
          Height = 34.015770000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ELABORA: '
            '[frxOrdenCompra."UsuarioValido"], [frxOrdenCompra."FechaValido"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo32: TfrxMemoView
          Left = 510.236550000000000000
          Width = 190.385900000000000000
          Height = 34.015770000000010000
          OnBeforePrint = 'Memo32OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'AUTORIZA: [frxOrdenCompra."UsuarioAutorizo"], [frxOrdenCompra."F' +
              'echaAutorizo"]')
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
        object Memo19: TfrxMemoView
          Left = 275.000000000000000000
          Width = 190.385900000000000000
          Height = 34.015770000000010000
          OnBeforePrint = 'Memo30OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALIDACI'#211'N T'#201'CNICA '
            
              '[frxOrdenCompra."UsuarioValidoTecnico"], [frxOrdenCompra."FechaV' +
              'alidoTecnico"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object ds_salida: TDataSource
    AutoEdit = False
    DataSet = QrySalida
    Left = 672
    Top = 184
  end
  object zqDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 240
    Top = 256
  end
  object QrySalida: TUniQuery
    Connection = connection.Uconnection
    Left = 616
    Top = 200
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 572
    Top = 273
  end
  object Moneda: TUniQuery
    Connection = connection.Uconnection
    Left = 576
    Top = 224
  end
  object zDatos: TUniQuery
    Connection = connection.Uconnection
    Left = 328
    Top = 392
  end
  object zValida: TUniQuery
    Connection = connection.Uconnection
    Left = 368
    Top = 392
  end
  object zDestino: TUniQuery
    Connection = connection.Uconnection
    Left = 256
    Top = 408
  end
  object ds_destino: TDataSource
    DataSet = zDestino
    Left = 206
    Top = 400
  end
  object ds_mensaje: TDataSource
    Left = 424
    Top = 255
  end
  object zMensaje: TUniQuery
    Connection = connection.Uconnection
    Left = 376
    Top = 247
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
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 656
    Top = 285
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 135
    Top = 229
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
  end
  object zDestinoSAP: TUniQuery
    Connection = connection.Uconnection
    Left = 744
    Top = 240
  end
  object dsDestinoSAP: TDataSource
    DataSet = zDestinoSAP
    Left = 808
    Top = 240
  end
  object zCorreosValidar: TUniQuery
    Connection = connection.Uconnection
    Left = 760
    Top = 328
  end
  object dsCorreosValidar: TDataSource
    DataSet = zCorreosValidar
    Left = 848
    Top = 328
  end
  object zDestinoReq: TUniQuery
    Connection = connection.Uconnection
    Left = 952
    Top = 224
  end
  object dsDestinoReq: TDataSource
    DataSet = zDestinoReq
    Left = 968
    Top = 288
  end
  object OpenDialog1: TOpenDialog
    Left = 720
    Top = 408
  end
  object zMaterialesR: TUniQuery
    Connection = connection.Uconnection
    Left = 600
    Top = 352
  end
  object zActualizar: TUniQuery
    Connection = connection.Uconnection
    Left = 680
    Top = 392
  end
  object Folio: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select * from anexo_requisicion')
    Left = 512
    Top = 240
  end
  object zMR: TUniQuery
    Left = 512
    Top = 416
  end
  object dsMR: TDataSource
    DataSet = zMR
    Left = 440
    Top = 432
  end
end
