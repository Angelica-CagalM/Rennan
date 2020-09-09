object frmBarraH2: TfrmBarraH2
  Left = 0
  Top = 0
  Width = 180
  Height = 32
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 180
    Height = 32
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 40
    object btnPost: TcxButton
      Left = 0
      Top = 0
      Width = 87
      Height = 30
      Hint = 'Salvar cambios (F10)'
      Align = alCustom
      Caption = 'Aceptar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnPostClick
    end
    object btnCancel: TcxButton
      Left = 93
      Top = 0
      Width = 87
      Height = 30
      Hint = 'Cancelar cambios (F12)'
      Align = alCustom
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = frmrepositorio.IconosBarra
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
end
