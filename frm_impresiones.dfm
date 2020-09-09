object frmImpresiones: TfrmImpresiones
  Left = 0
  Top = 0
  Caption = 'frmImpresiones'
  ClientHeight = 417
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 417
    Align = alLeft
    TabOrder = 0
    object Panel4: TPanel
      Left = 16
      Top = 48
      Width = 313
      Height = 361
      Color = clBackground
      ParentBackground = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 345
    Top = 0
    Width = 532
    Height = 417
    Align = alClient
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 6
      Top = 24
      Caption = 'Secci'#243'n de Imagenes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 121
      Width = 379
      object cxButton1: TcxButton
        Left = 15
        Top = 70
        Width = 169
        Height = 25
        Caption = '2 Imagenes por P'#225'gina'
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cxButton2: TcxButton
        Left = 190
        Top = 70
        Width = 171
        Height = 25
        Caption = '6 Imagenes por P'#225'gina'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cxButton3: TcxButton
        Left = 192
        Top = 24
        Width = 169
        Height = 25
        Caption = '4 Imagenes por P'#225'gina'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cxButton4: TcxButton
        Left = 15
        Top = 24
        Width = 169
        Height = 25
        Caption = '1 Imagen por P'#225'gina'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object cxButton5: TcxButton
      Left = 391
      Top = 24
      Width = 114
      Height = 25
      Caption = 'Regresar'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton6: TcxButton
      Left = 391
      Top = 101
      Width = 114
      Height = 25
      Caption = 'Seleccion Estilo'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton7: TcxButton
      Left = 391
      Top = 65
      Width = 114
      Height = 25
      Caption = 'Continuar'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton7Click
    end
    object Panel3: TPanel
      Left = 21
      Top = 160
      Width = 484
      Height = 177
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object cxButton8: TcxButton
      Left = 21
      Top = 343
      Width = 123
      Height = 25
      Caption = 'Vista Previa'
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cxButton9: TcxButton
      Left = 263
      Top = 343
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cxButton10: TcxButton
      Left = 432
      Top = 343
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
end
