object frmClientesFac: TfrmClientesFac
  Left = 0
  Top = 0
  Caption = 'Facturas a Clientes'
  ClientHeight = 489
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 884
    Height = 454
    Align = alClient
    TabOrder = 0
    object PanelIzq: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 452
      Align = alLeft
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 183
        Height = 450
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object cxColumnCliente: TcxGridDBColumn
            Caption = 'Cliente'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object PanelCentro: TPanel
      Left = 186
      Top = 1
      Width = 697
      Height = 452
      Align = alClient
      TabOrder = 1
      object PanelInfoBot: TPanel
        Left = 1
        Top = 262
        Width = 695
        Height = 189
        Align = alBottom
        TabOrder = 0
        object cxSplitter1: TcxSplitter
          Left = 1
          Top = 1
          Width = 693
          Height = 6
          AlignSplitter = salTop
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 1
          Top = 7
          Width = 693
          Height = 181
          Align = alClient
          TabOrder = 1
          LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 85
            Top = 10
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            CaptionOptions.Text = 'cxDBTextEdit1'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 695
        Height = 261
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object cxColumn1: TcxGridDBColumn
            Caption = 'Proyecto'
            Visible = False
            GroupIndex = 0
          end
          object cxColumn2: TcxGridDBColumn
            Caption = 'Fecha OC'
          end
          object cxColumn3: TcxGridDBColumn
            Caption = 'Estatus'
          end
          object cxColumn4: TcxGridDBColumn
            Caption = 'Acuse de Recibo'
          end
          object cxColumn5: TcxGridDBColumn
            Caption = 'Entrega de Dosier'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 35
    Align = alTop
    TabOrder = 1
    inline frmBarraH11: TfrmBarraH1
      Left = 509
      Top = 1
      Width = 374
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 509
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        ExplicitWidth = 374
        ExplicitHeight = 33
      end
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Tabla... Agregando datos'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBtnFace
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      Style.TextColor = clHighlight
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.cxIconos16
    Left = 89
    Top = 48
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
      ImageIndex = 3
      ShortCut = 122
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
end
