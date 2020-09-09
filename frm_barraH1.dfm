object frmBarraH1: TfrmBarraH1
  Left = 0
  Top = 0
  Width = 562
  Height = 38
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 38
    Align = alClient
    AutoSize = True
    TabOrder = 0
    ExplicitWidth = 589
    object btnAdd: TcxButton
      Tag = 10
      Left = 1
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Nuevo Registro'
      Align = alRight
      Caption = 'Agregar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnAddClick
      ExplicitLeft = 33
    end
    object btnEdit: TcxButton
      Tag = 11
      Left = 81
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Editar Registro'
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
      ExplicitLeft = 84
    end
    object btnDelete: TcxButton
      Tag = 12
      Left = 161
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Eliminar Registro'
      Align = alRight
      Caption = 'Eliminar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = connection.cxIconos16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 188
    end
    object btnPrinter: TcxButton
      Left = 401
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Imprimir en Pantalla'
      Align = alRight
      Caption = 'Imprime'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 428
    end
    object btnDetalle: TcxButton
      Left = 481
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Detalle de Registro Seleccionado'
      Align = alRight
      Caption = 'Detalle'
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 508
    end
    object btnRefresh: TcxButton
      Left = 241
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Refrescar Datos'
      Align = alRight
      Caption = 'Refresca'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 268
    end
    object btnExporta: TcxButton
      Left = 321
      Top = 1
      Width = 80
      Height = 36
      Hint = 'Exportar a Excel'
      Align = alRight
      Caption = 'Exportar'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 348
    end
  end
end
