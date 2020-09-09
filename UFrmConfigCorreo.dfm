object FrmConfigCorreo: TFrmConfigCorreo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Configurar cuenta de correo'
  ClientHeight = 315
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object ly1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 486
    Height = 278
    Align = alClient
    TabOrder = 0
    object LblEmpresa: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Nombre de Empresa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxTextCorreo: TcxTextEdit
      Tag = -1
      Left = 119
      Top = 34
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnEnter = cxTextCorreoEnter
      OnExit = cxTextCorreoExit
      OnKeyUp = GlobalKeyUp
      Width = 344
    end
    object cxTextContrasena: TcxTextEdit
      Tag = -1
      Left = 119
      Top = 61
      ParentFont = False
      Properties.EchoMode = eemPassword
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnEnter = cxTextContrasenaEnter
      OnExit = cxTextContrasenaExit
      OnKeyUp = GlobalKeyUp
      Width = 344
    end
    object cxTextSMTP: TcxTextEdit
      Tag = -1
      Left = 119
      Top = 88
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnEnter = cxTextSMTPEnter
      OnExit = cxTextSMTPExit
      OnKeyUp = GlobalKeyUp
      Width = 176
    end
    object cxSpinPuerto: TcxSpinEdit
      Tag = -1
      Left = 347
      Top = 88
      ParentFont = False
      Properties.AssignedValues.MinValue = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      OnEnter = cxSpinPuertoEnter
      OnExit = cxSpinPuertoExit
      OnKeyUp = GlobalKeyUp
      Width = 121
    end
    object cxGroupCorreo: TcxGroupBox
      Left = 10
      Top = 143
      Caption = 'Enviar Correo'
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 124
      Width = 185
      object edtCorreo: TcxTextEdit
        Left = 118
        Top = 24
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 299
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 28
        Caption = 'Correo Destinatario:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object edtAsunto: TcxTextEdit
        Left = 118
        Top = 52
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 299
      end
      object cxLabel2: TcxLabel
        Left = 65
        Top = 52
        Caption = 'Asunto:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object btnEnviar: TcxButton
        Left = 342
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Enviar'
        TabOrder = 4
        OnClick = btnEnviarClick
      end
    end
    object cxCheckCorreo: TcxCheckBox
      Left = 369
      Top = 115
      Caption = 'Probar Correo'
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      OnClick = cxCheckCorreoClick
    end
    object tgTLS: TdxToggleSwitch
      Left = 226
      Top = 115
      Caption = 'Aplica TLS'
      Checked = False
      ParentFont = False
      Properties.StateIndicator.Kind = sikText
      Properties.StateIndicator.OffText = 'No'
      Properties.StateIndicator.OnText = 'Si'
      Properties.StateIndicator.Position = sipInside
      Properties.ValueChecked = 'Si'
      Properties.ValueUnchecked = 'No'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
    end
    object tgNotificarAutorizar: TdxToggleSwitch
      Left = 95
      Top = 115
      Caption = 'Notificar'
      Checked = False
      ParentFont = False
      Properties.DisplayChecked = 'Si'
      Properties.DisplayUnchecked = 'No'
      Properties.ReadOnly = False
      Properties.StateIndicator.Kind = sikText
      Properties.StateIndicator.OffText = 'No'
      Properties.StateIndicator.OnText = 'Si'
      Properties.StateIndicator.Position = sipInside
      Properties.ValueChecked = 'Si'
      Properties.ValueUnchecked = 'No'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
    end
    object dxLyLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlytmly1Item1: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmly1Item2: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Correo Electr'#243'nico:'
      Control = cxTextCorreo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmly1Item3: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Contrase'#241'a:'
      Control = cxTextContrasena
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmly1Item4: TdxLayoutItem
      Parent = dxlytcrtdgrply1Group1
      AlignHorz = ahClient
      CaptionOptions.Text = 'SMTP:'
      Control = cxTextSMTP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmly1Item5: TdxLayoutItem
      Parent = dxlytcrtdgrply1Group1
      CaptionOptions.Text = 'Puerto:'
      Control = cxSpinPuerto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytcrtdgrply1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLyLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = cxGroupCorreo
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cxCheckCorreo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Aplica TLS'
      CaptionOptions.Visible = False
      Control = tgTLS
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLyLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = tgNotificarAutorizar
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 278
    Width = 486
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btn1: TcxButton
      Tag = -1
      AlignWithMargins = True
      Left = 327
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = '&Guardar'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TcxButton
      AlignWithMargins = True
      Left = 408
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btn2Click
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 152
    Top = 65528
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object zCorreo: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'select cc.* from master_cnf_correo cc'
      'inner join usuarios u on (u.sIdusuario = cc.sIdUsuario)'
      'where '
      
        '(cc.IdEmpresa = :Empresa) AND (cc.sIdUsuario =:Usuario) AND (cc.' +
        'sContrato =:Contrato);')
    Left = 256
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Usuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        Value = nil
      end>
  end
  object responseMsg: TRESTResponse
    Left = 98
    Top = 264
  end
  object clientMsg: TRESTClient
    BaseURL = 'http://74.208.182.122/api/sendmail'
    Params = <>
    HandleRedirects = True
    Left = 34
    Top = 264
  end
  object requestMsg: TRESTRequest
    Client = clientMsg
    Method = rmPOST
    Params = <>
    Response = responseMsg
    SynchronizedEvents = False
    Left = 170
    Top = 264
  end
end
