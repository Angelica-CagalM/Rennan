object frmValida: TfrmValida
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
    TabOrder = 0
    OnClick = cxListaClick
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
      object grid_datosViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Periodo'
        Width = 72
      end
      object col_est: TcxGridDBColumn
        Visible = False
        Width = 80
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
        Left = 739
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
        Left = 633
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
    ReportOptions.LastChange = 43567.696201493060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure Memo22OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."Tipomovimiento"> = '#39'TRASPASO (ENTRADA)'#39 +
        ' then'
      '        Memo22.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo53OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."Tipomovimiento"> = '#39'ENTRADA DE MATERIAL' +
        #39' then'
      '        Memo53.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo54OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."Tipomovimiento"> = '#39'ENTRADA DE COMPRA'#39' ' +
        'then'
      '        Memo54.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."Tipomovimiento"> = '#39'RECEPCION DE MERCAN' +
        'CIA'#39' then'
      '        Memo55.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo56OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <frxDBRequisicion."Tipomovimiento"> = '#39'ENTRADA INICIAL INV' +
        'ENTARIO'#39' then'
      '        Memo56.Text := '#39'X'#39';'
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
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
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 154.960693390000000000
        Top = 532.913730000000000000
        Width = 980.410081999999900000
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 117.165430000000000000
          Width = 147.401574800000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            'SCM-MEX-IMS-002-S Rev. 0'
            #169'Copyright Subsea 7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 789.921770000000000000
          Top = 117.165430000000000000
          Width = 188.220189290000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'pagina: [<Page>] de [TotalPages#]'
            'seabed-to-surface')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 396.850650000000000000
          Top = 117.165430000000000000
          Width = 188.220189290000000000
          Height = 30.236213150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Fecha: [frxDBRequisicion."Fecha"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Top = 83.149660000000040000
          Width = 322.015796850000000000
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
            'NOMBRE Y FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 3.779530000000022000
          Width = 322.015796850000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
        object Memo32: TfrxMemoView
          Left = 322.015748030000000000
          Top = 83.149660000000040000
          Width = 340.157541340000000000
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
            'NOMBRE Y FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 322.015748030000000000
          Top = 3.779530000000022000
          Width = 340.157480310000000000
          Height = 79.370093390000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
        object Memo46: TfrxMemoView
          Left = 662.173228350000000000
          Top = 83.149660000000040000
          Width = 319.748077870000000000
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
            'NOMBRE Y FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 662.173228350000000000
          Top = 3.779530000000022000
          Width = 317.480314960000000000
          Height = 79.370093390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 57.440940000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Picture2: TfrxPictureView
          Left = 789.965548200000000000
          Width = 187.464566930000000000
          Height = 52.593669910000000000
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          Top = 18.897650000000000000
          Width = 264.566929130000000000
          Height = 21.732285300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clNavy
          Memo.UTF8W = (
            'Sistema de Gesti'#243'n del Negocio  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 151.181200000000000000
          Top = 1.786685550000001000
          Width = 606.992304170000000000
          Height = 16.166069750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SAFETY | INTEGRITY | INNOVATION | PERFORMANCE | COLLABORATION')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 52.157494960000000000
        Top = 351.496290000000000000
        Width = 980.410081999999900000
        DataSet = frmrepositorio.frxDBRequisicion
        DataSetName = 'frxDBRequisicion'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 676.535735750000000000
          Width = 94.488201180000000000
          Height = 52.157494960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 771.023949130000000000
          Width = 94.488054720000000000
          Height = 52.157494960000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBRequisicion."sModelo"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590575590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 226.771709690000000000
          Width = 449.764045590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 865.512428980000000000
          Width = 113.385792200000000000
          Height = 52.157480310000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."NumeroMaterial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Width = 75.590575590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590575590000000000
          Height = 52.153493530000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Medida"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.063474850000000000
        Top = 294.803340000000000000
        Width = 980.410081999999900000
        Condition = 'frxDBRequisicion."sContrato"'
        object Memo45: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590575590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 226.771629130000000000
          Width = 449.746170700000000000
          Height = 30.252105370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 676.535503860000000000
          Width = 94.488142200000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'p.o.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 771.023705040000000000
          Width = 94.488145810000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 865.511908660000000000
          Width = 113.385869490000000000
          Height = 30.240325110000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'TRAZABILIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Width = 75.590575590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590575590000000000
          Height = 30.283944850000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'U. MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 134.740164200000000000
        Top = 136.063080000000000000
        Width = 980.410081999999900000
        Condition = 'contrato."sContrato"'
        object Memo15: TfrxMemoView
          Width = 981.165774170000000000
          Height = 19.945599750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE DE ENTRADA DE ALMACEN')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 357.920937640000000000
          Top = 34.015674800000000000
          Width = 302.362321890000000000
          Height = 17.952755300000000000
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."Empresa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 298.582772360000000000
          Top = 34.015674800000000000
          Width = 59.716525670000000000
          Height = 17.763779530000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 359.055350000000000000
          Top = 52.913420000000000000
          Width = 302.362321890000000000
          Height = 17.952755300000000000
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 219.212740000000000000
          Top = 52.913420000000000000
          Width = 139.086660550000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'OBRA QUE SOLICITA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 702.992580000000000000
          Top = 15.118120000000010000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo36: TfrxMemoView
          Left = 778.583180000000000000
          Top = 15.118120000000010000
          Width = 200.315011890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 702.992580000000000000
          Top = 32.881887320000010000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."dFechaEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 778.583180000000000000
          Top = 32.881887320000010000
          Width = 200.315011890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRequisicion."sFolioEntrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 702.992580000000000000
          Top = 51.023619610000000000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 778.583180000000000000
          Top = 51.023619610000000000
          Width = 200.315011890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 34.015770000000010000
          Width = 143.622061890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TRASPASO (ENTRADA)')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 143.622140000000000000
          Top = 34.015745589999990000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 51.779527559999990000
          Width = 143.622061890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADA DE MATERIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 143.622140000000000000
          Top = 51.779527559999990000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo53OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 143.622140000000000000
          Top = 69.543307090000010000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 143.622140000000000000
          Top = 87.307086614173180000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo55OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 143.622140000000000000
          Top = 105.826771653543000000
          Width = 75.590521890000000000
          Height = 17.952755300000000000
          OnBeforePrint = 'Memo56OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 69.543307090000010000
          Width = 143.622061890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADA DE COMPRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Top = 87.307086610000000000
          Width = 143.622061890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEPCION MERCANCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 105.448818900000000000
          Width = 143.622061890000000000
          Height = 17.952755300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADA INICIAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 45.354333150000000000
        Top = 464.882190000000000000
        Width = 980.410081999999900000
        object Memo1: TfrxMemoView
          Width = 151.181121890000000000
          Height = 40.818897640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Width = 827.716991890000000000
          Height = 40.629935300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
