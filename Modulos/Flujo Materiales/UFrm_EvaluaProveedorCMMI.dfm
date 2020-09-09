object Frm_EvaluaProveedorCMMI: TFrm_EvaluaProveedorCMMI
  Left = 0
  Top = 0
  Caption = 'Evaluaci'#243'n de Proveedores'
  ClientHeight = 471
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 35
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1138
      35)
    inline frmBarraH11: TfrmBarraH1
      Left = 575
      Top = 1
      Width = 562
      Height = 33
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 575
      ExplicitTop = 1
      ExplicitHeight = 33
      inherited Panel1: TPanel
        Height = 33
        ExplicitWidth = 562
        ExplicitHeight = 33
        inherited btnAdd: TcxButton
          Height = 31
          OnClick = btnAddClick
          ExplicitLeft = 1
          ExplicitHeight = 31
        end
        inherited btnEdit: TcxButton
          Height = 31
          OnClick = btnEditClick
          ExplicitLeft = 81
          ExplicitHeight = 31
        end
        inherited btnDelete: TcxButton
          Height = 31
          OnClick = btnDeleteClick
          ExplicitLeft = 161
          ExplicitHeight = 31
        end
        inherited btnPrinter: TcxButton
          Height = 31
          OnClick = btnPrinterClick
          ExplicitLeft = 401
          ExplicitHeight = 31
        end
        inherited btnDetalle: TcxButton
          Height = 31
          Visible = False
          OnClick = btnDetalleClick
          ExplicitLeft = 481
          ExplicitHeight = 31
        end
        inherited btnRefresh: TcxButton
          Height = 31
          OnClick = btnRefreshClick
          ExplicitLeft = 241
          ExplicitHeight = 31
        end
        inherited btnExporta: TcxButton
          Height = 31
          Caption = 'Gr'#225'ficos'
          OptionsImage.ImageIndex = 62
          OptionsImage.Images = frmrepositorio.IconosTodos16
          OnClick = btnExportaClick
          ExplicitLeft = 321
          ExplicitHeight = 31
        end
      end
    end
    object cxLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Evaluac'#237'on de proveedores'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHighlight
      Style.IsFontAssigned = True
    end
    object LabelProceso: TcxLabel
      Left = 323
      Top = 10
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
      Left = 397
      Top = 10
      Anchors = [akLeft, akRight]
      ParentFont = False
      Properties.AssignedValues.Max = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 132
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 1138
    Height = 436
    Align = alClient
    TabOrder = 1
    object PanelTipo: TPanel
      Left = 662
      Top = 1
      Width = 426
      Height = 434
      Align = alClient
      TabOrder = 0
      object Grid_Proveedor: TcxGrid
        Left = 1
        Top = 49
        Width = 424
        Height = 384
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object BView_filtro: TcxGridDBTableView
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
          Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FindPanel.DisplayMode = fpdmAlways
          DataController.DataSource = dsProveedor
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.ApplyChanges = fracImmediately
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object colChecked: TcxGridDBColumn
            Caption = '   *'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.ReadOnly = False
            Width = 30
          end
          object colIdProveedor: TcxGridDBColumn
            DataBinding.FieldName = 'IdProveedor'
            Visible = False
          end
          object BView_filtroColumn2: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'Nombre'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 334
          end
        end
        object Grid_ProveedorLevel1: TcxGridLevel
          GridView = BView_filtro
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 424
        Height = 48
        Align = alTop
        TabOrder = 1
        object cxButton1: TcxButton
          Left = 10
          Top = 10
          Width = 140
          Height = 25
          Caption = 'Marcar Todos'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000060000
            000A0000000A0000000A0000000A0000000B0000000B0000000B0000000B0000
            000B0000000B0000000B0000000B0000000B00000007000000027E5D52BDAF82
            72FFAF8272FFAE8172FFAE8072FFAE8071FFAE8071FFAE8070FFAD8070FFAD7F
            70FFAD7F70FFAC7F6FFFAC7F6FFFAD7E6FFF7C5B4FBE00000007B28577FFFCF8
            F6FFFCF8F5FFFBF7F6FFFBF7F5FFFBF7F5FFFBF7F5FFFBF6F4FFFBF6F4FFFBF6
            F3FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F2FFAE8072FF0000000AB5897AFFFCF9
            F7FFC59062FFC59062FFC58F61FFC58E60FFC48F60FFC58E60FFC48E5FFFC48D
            5FFFC48D5EFFC48C5EFFC48C5DFFFBF6F3FFB18475FF0000000AB68C7EFFFDFA
            F8FFCD9F75FFECD5B5FFE5C59CFFE5C49CFFE5C39BFFE4C49AFFE4C299FFE5C3
            9AFFE4C298FFE4C298FFC48E5FFFFBF7F5FFB28778FF00000009B98F81FFFDFB
            F9FFCEA178FFCEA177FFCEA077FFCDA077FFCEA077FFCEA077FFCDA076FFCDA0
            76FFCDA075FFCD9F75FFC69062FFFBF7F6FFB58A7CFF00000009BB9385FFFDFB
            FAFFF7F0EBFFF8EFEBFFF8F0EBFFF7EFEBFFF7EFEBFFF7F0EBFFF8EFEBFFF7EF
            EAFFF8EFEAFFF7EFEAFFF8EFEBFFFCF9F7FFB88E7FFF00000008BE9688FFFEFC
            FBFFCA9B6FFFCA9A6EFFCA996DFFCA996DFFCA986BFFC9976BFFC9966AFFC997
            6AFFC89569FFC99568FFC89568FFFCF9F8FFBA9183FF00000007C0998BFFFEFC
            FCFFD2A880FFF1E0C8FFE9CEAAFFE9CEA9FFE8CDA9FFE9CCA8FFE9CCA7FFE8CB
            A6FFE8CBA6FFE8CBA5FFCA976BFFFDFAF9FFBD9587FF00000007C29C8EFFFEFD
            FCFFD2A982FFD3A982FFD2AA82FFD2A981FFD2A881FFD2A881FFD2A981FFD1A8
            80FFD1A880FFD2A780FFCB9A6FFFFDFBFAFFC0978AFF00000006C49E91FFFEFE
            FDFFF9F0EDFFF8F1EDFFF9F0EDFFF9F0EDFFF8F1EDFFF8F0EDFFF8F1ECFFF8F0
            EDFFF8F0ECFFF8F0ECFFF8F0ECFFFDFCFBFFC29B8DFF00000006C6A093FFFFFE
            FEFFD1A77EFFD1A67DFFD1A67CFFD1A57BFFD0A57BFFCFA47AFFCFA379FFCFA2
            78FFCFA177FFCEA176FFCEA176FFFEFCFBFFC49E90FF00000005C7A396FFFFFE
            FEFFD6B18AFFF5E9D6FFEDD8B8FFEDD8B8FFEDD7B7FFECD7B6FFECD6B5FFECD5
            B5FFECD5B5FFECD4B3FFD0A479FFFEFDFCFFC5A093FF00000005C8A497FFFFFF
            FFFFD7B38DFFD7B38CFFD7B28CFFD8B18CFFD7B28BFFD7B28BFFD6B18AFFD7B1
            8AFFD6B18AFFD7B08AFFD1A77EFFFEFDFDFFC7A295FF00000004CAA699FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFC8A497FF00000003967C72BECAA7
            9AFFCAA79AFFCAA79AFFCAA79AFFCAA79AFFCAA699FFCAA699FFCAA699FFCAA6
            99FFCAA699FFCAA699FFCAA699FFCAA699FF967B70BF00000002}
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 156
          Top = 10
          Width = 140
          Height = 25
          Caption = 'Desmarcar Todos'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000002000000070000000B0000000B0000000C0000
            000C0000000C0000000C0000000C0000000B0000000700000002000000000000
            000000000000000000000000000695847EBE9E6D5DFF9E6C5DFF9D6C5CFF9D6B
            5BFF9C6B5BFF9C6B5BFF9C6A5AFF9B6959FF704B41BE00000007000000000000
            0001000000050000000A0000000ECFB7B0FFF9F2EFFFF7EEE9FFCCAB9FFFF7EE
            EAFFF7EEE9FFCCAB9FFFF7EEE9FFF7EEE9FF9D6C5CFF0000000A000000000000
            00051209043384431EDF0B040134EFE8E6FFF9F2F0FFF7EEEBFFCDACA1FFF7EE
            EAFFF7EEEAFFCCACA0FFF8EEEAFFF9F2EFFF9F7061FF0000000A000000020201
            0013794220CBE3B774FF5B270FC9EFEFEFFFE8DAD5FFCEAEA2FFCEAEA2FFCDAD
            A2FFCDADA1FFCEADA2FFCDADA2FFD9BFB6FFA37464FF000000090000000A4D2C
            168BCE9961FFFDDE96FFB98352FFB69788FFF6F6F6FFF8F2EEFFCFAFA4FFF8EF
            EBFFF8EFEBFFCEAFA3FFF8F0EBFFFAF4F1FFA67969FF0000000822140B46B67F
            54FBFCEDC5FFFEE3A1FFFBEBC1FFA26843FFD7CBC4FFFAF8F8FFCFB1A5FFF7F0
            ECFFF8F0EDFFCFB0A5FFF8F0ECFFF9F3F1FFAA7E6FFF00000007935C35DCAD6C
            3EFFAD6C3FFFF6D99CFFB17245FFAD6C3EFFB7835DFFEFEAE7FFD0B2A7FFD0B2
            A7FFCFB2A6FFD0B1A6FFD0B2A7FFDBC4BAFFAE8274FF00000007000000080000
            0014AC7346FAF7DFAAFFA4683FFFDED9D6FFF4F4F4FFFAFAFAFFF5F5F5FFF7F7
            F7FFFAF8F7FFD2B7ACFFF8F0EDFFFAF5F2FFB28879FF00000006000000000000
            00088A603DCBE6C99EFFBF9062FFC4A894FFF6F6F6FFF4F4F4FFB57D4EFFAD86
            6DFFECE9E7FFF6F2F1FFFBF7F4FFFAF4F2FFB68D7FFF00000005000000000000
            00044F382578D2AD85FFF0DAAFFFAB754BFFC6A995FFE0DAD5FFB98457FFD8B4
            82FFA67450FFDFD5CEFFF7F5F5FFDCC7C1FFA4948FC000000003000000000000
            00010403020F9C734ED7DFC19CFFF6E5BEFFC69A6FFFB17C50FFCB9F70FFFFED
            B7FFF1D9A4FFAB7A4EF83D26166F000000080000000200000001000000000000
            000000000002140F0B249B7752D4D7B68FFFEAD6B3FFF9EDCFFFFFF7DBFFFFF0
            BCFFFEF0BFFFFCF1D0FFC09265FF000000070000000000000000000000000000
            000000000000000000020504030D52402D74937250C5BE9369FAC3976BFFFFF3
            CBFFF5E8C9FFC59F79F64A39286A000000040000000000000000000000000000
            000000000000000000000000000100000002000000040000000BC59B6FFFE9D5
            B5FFA88661D91E18113000000004000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000004C59B6FFF7B60
            45A40705040F0000000200000000000000000000000000000000}
          TabOrder = 1
          OnClick = cxButton2Click
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahRight
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxSplitTipo: TcxSplitter
      Left = 1088
      Top = 1
      Width = 6
      Height = 434
      AlignSplitter = salRight
      Visible = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 655
      Height = 434
      Align = alLeft
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 287
        Width = 653
        Height = 146
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object pnlBtn2: TPanel
          Left = 1
          Top = 109
          Width = 651
          Height = 36
          Align = alBottom
          TabOrder = 0
          inline frmBarraH21: TfrmBarraH2
            Left = 461
            Top = 1
            Width = 189
            Height = 34
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 461
            ExplicitTop = 1
            ExplicitWidth = 189
            ExplicitHeight = 34
            inherited Panel1: TPanel
              Width = 189
              Height = 34
              ExplicitWidth = 189
              ExplicitHeight = 34
              inherited btnPost: TcxButton
                Left = 3
                Top = 1
                OnClick = btnPostClick
                ExplicitLeft = 3
                ExplicitTop = 1
              end
              inherited btnCancel: TcxButton
                Left = 96
                Top = 1
                OnClick = btnCancelClick
                ExplicitLeft = 96
                ExplicitTop = 1
              end
            end
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 651
          Height = 108
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 106
          ClientRectLeft = 2
          ClientRectRight = 649
          ClientRectTop = 30
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 647
              Height = 76
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object dFechaInicio: TcxDBDateEdit
                Left = 279
                Top = 11
                DataBinding.DataField = 'FechaInicio'
                DataBinding.DataSource = dsProvEvalua
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 121
              end
              object edtCodigo: TcxDBTextEdit
                Left = 63
                Top = 11
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsProvEvalua
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 115
              end
              object lcbDepartamento: TcxDBLookupComboBox
                Left = 63
                Top = 39
                DataBinding.DataField = 'IdDepartamento'
                DataBinding.DataSource = dsProvEvalua
                ParentFont = False
                Properties.KeyFieldNames = 'IdDepartamento'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsArea
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 145
              end
              object dFechaTermino: TcxDBDateEdit
                Left = 515
                Top = 11
                DataBinding.DataField = 'FechaTermino'
                DataBinding.DataSource = dsProvEvalua
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
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
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Text = 'Fecha de Inicio: '
                Control = dFechaInicio
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem2: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Codigo: '
                Control = edtCodigo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutItem3: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                CaptionOptions.Text = 'Area:'
                Control = lcbDepartamento
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem4: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignVert = avClient
                CaptionOptions.Text = 'Fecha de Termino:'
                Control = dFechaTermino
                ControlOptions.ShowBorder = False
                Index = 2
              end
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 279
        Width = 653
        Height = 8
        AlignSplitter = salBottom
        Control = Panel2
      end
      object grid_evaluacion: TcxGrid
        Left = 1
        Top = 1
        Width = 653
        Height = 278
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxView_Evaluacion: TcxGridDBTableView
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
          DataController.DataSource = dsProvEvalua
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.TranslateBetween = True
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
          OptionsView.NoDataToDisplayInfoText = '<No hay Datos>'
          OptionsView.CellAutoHeight = True
          OptionsView.Indicator = True
          object cxView_EvaluacionColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 123
          end
          object cxView_EvaluacionColumn3: TcxGridDBColumn
            Caption = 'Fecha de Inicio'
            DataBinding.FieldName = 'FechaInicio'
            Width = 160
          end
          object cxView_EvaluacionColumn2: TcxGridDBColumn
            Caption = 'Fecha de Termino'
            DataBinding.FieldName = 'FechaTermino'
            Width = 142
          end
        end
        object grid_evaluacionLevel1: TcxGridLevel
          GridView = cxView_Evaluacion
        end
      end
    end
    object cxSplitterOpciones: TcxSplitter
      Left = 656
      Top = 1
      Width = 6
      Height = 434
      AlignSplitter = salRight
      Control = Panel1
    end
    object PanelDetalle: TPanel
      Left = 1094
      Top = 1
      Width = 43
      Height = 434
      Align = alRight
      TabOrder = 4
      Visible = False
      object PanelCentro: TPanel
        Left = 1
        Top = 1
        Width = 41
        Height = 432
        Align = alClient
        TabOrder = 0
        object PanelTop: TPanel
          Left = 1
          Top = 1
          Width = 39
          Height = 35
          Align = alTop
          TabOrder = 0
          DesignSize = (
            39
            35)
          object cxNuevoDetalle: TcxButton
            Left = -250
            Top = 1
            Width = 151
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Nuevo'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxNuevoDetalleClick
          end
          object cxLeyenda2: TcxLabel
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'Tabla...Agregando Datos'
            ParentColor = False
            ParentFont = False
            Style.Color = clNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHighlight
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clHighlight
            Style.IsFontAssigned = True
            Transparent = True
          end
          object EliminarEvalua: TcxButton
            Left = -93
            Top = 3
            Width = 126
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Eliminar Evaluaci'#243'n'
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = EliminarEvaluaClick
          end
        end
        object PanelDown: TPanel
          Left = 1
          Top = 396
          Width = 39
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            39
            35)
          object cxCancelarDetalle: TcxButton
            Left = -54
            Top = 3
            Width = 84
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Cancelar'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 0
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxCancelarDetalleClick
          end
          object cxGuardarDetalle: TcxButton
            Left = -194
            Top = 3
            Width = 134
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Aplicar Evaluaci'#243'n'
            OptionsImage.ImageIndex = 56
            OptionsImage.Images = connection.cxIconos16
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = cxGuardarDetalleClick
          end
        end
        object cxPageDetalle: TcxPageControl
          Left = 1
          Top = 36
          Width = 39
          Height = 360
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          OnChange = cxPageDetalleChange
          ClientRectBottom = 358
          ClientRectLeft = 2
          ClientRectRight = 37
          ClientRectTop = 29
          object cxTabSheet2: TcxTabSheet
            Caption = 'Preguntas'
            ImageIndex = 0
            object cxGridEvaluar: TcxGrid
              Left = 0
              Top = 0
              Width = 35
              Height = 199
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGridViewEvalua: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = 'Registro [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsEvaluaDetalle
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'Calif.: 0 %'
                    Kind = skSum
                    Column = colPuntos
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridViewEvaluaColumn2: TcxGridDBColumn
                  Caption = 'Tipo'
                  DataBinding.FieldName = 'IdPregunta'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'IdPregunta'
                  Properties.ListColumns = <
                    item
                      FieldName = 'TipoEvalua'
                    end>
                  Properties.ListSource = dsPreguntas
                  Properties.ReadOnly = True
                  Width = 98
                end
                object colPregunta: TcxGridDBColumn
                  Caption = 'Descripci'#243'n'
                  DataBinding.FieldName = 'IdPregunta'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'IdPregunta'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Pregunta'
                    end>
                  Properties.ListSource = dsPreguntas
                  Properties.ReadOnly = True
                  Width = 410
                end
                object colPuntos: TcxGridDBColumn
                  Caption = 'Puntuaci'#243'n'
                  DataBinding.FieldName = 'Puntuacion'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    '0'
                    '5'
                    '10')
                  Width = 95
                end
              end
              object cxGridEvaluarLevel1: TcxGridLevel
                GridView = cxGridViewEvalua
              end
            end
            object cxImage1: TcxImage
              Left = 0
              Top = 199
              Align = alBottom
              Enabled = False
              Picture.Data = {
                0D546478536D617274496D616765FFD8FFE000104A4649460001010100780078
                0000FFE100C84578696600004D4D002A000000080003013B00020000000F0000
                00328769000400000001000000429C9D00010000001E000000A2000000004453
                41492D444556454C4F5045520000000490030002000000140000007890040002
                000000140000008C929100020000000332330000929200020000000332330000
                00000000323031393A30363A32362031383A33353A323900323031393A30363A
                32362031383A33353A323900000044005300410049002D004400450056004500
                4C004F005000450052000000FFDB00430007050506050407060506080707080A
                110B0A09090A150F100C1118151A19181518171B1E27211B1D251D1718222E22
                2528292B2C2B1A202F332F2A32272A2B2AFFDB0043010708080A090A140B0B14
                2A1C181C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
                2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFFC00011080070035603
                012200021101031101FFC4001F00000105010101010101000000000000000001
                02030405060708090A0BFFC400B5100002010303020403050504040000017D01
                020300041105122131410613516107227114328191A1082342B1C11552D1F024
                33627282090A161718191A25262728292A3435363738393A434445464748494A
                535455565758595A636465666768696A737475767778797A838485868788898A
                92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6
                C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9
                FAFFC4001F010003010101010101010101000000000000010203040506070809
                0A0BFFC400B51100020102040403040705040400010277000102031104052131
                061241510761711322328108144291A1B1C109233352F0156272D10A162434E1
                25F11718191A262728292A35363738393A434445464748494A53545556575859
                5A636465666768696A737475767778797A82838485868788898A929394959697
                98999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3
                D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C030100
                02110311003F00FA468A2BE54D2355D66EB43B1B89FC47E206965B78DDDBFB6A
                E8658A824F12544E6A1B9C18DC7D2C1454AA26EFDBFE1D1F55D15F307DB755FF
                00A187C41FF83BBBFF00E3947DB755FF00A187C41FF83BBBFF00E39597D62279
                9FEB1617F965F72FF33E9FA2BE60FB6EABFF00430F883FF07777FF00C728FB6E
                ABFF00430F883FF07777FF00C728FAC443FD62C2FF002CBEE5FE67D3F457CC1F
                6DD57FE861F107FE0EEEFF00F8E51F6DD57FE861F107FE0EEEFF00F8E51F5888
                7FAC585FE597DCBFCCFA7E8AF983EDBAAFFD0C3E20FF00C1DDDFFF001CA3EDBA
                AFFD0C3E20FF00C1DDDFFF001CA3EB110FF58B0BFCB2FB97F99F4FD15F307DB7
                55FF00A187C41FF83BBBFF00E3947DB755FF00A187C41FF83BBBFF00E3947D62
                21FEB1617F965F72FF0033E9FA2BE60FB6EABFF430F883FF0007777FFC728FB6
                EABFF430F883FF0007777FFC728FAC443FD62C2FF2CBEE5FE67D3F457CC1F6DD
                57FE861F107FE0EEEFFF008E51F6DD57FE861F107FE0EEEFFF008E51F58887FA
                C585FE597DCBFCCFA7E8AF983EDBAAFF00D0C3E20FFC1DDDFF00F1CA3EDBAAFF
                00D0C3E20FFC1DDDFF00F1CA3EB110FF0058B0BFCB2FB97F99F4FD15F307DB75
                5FFA187C41FF0083BBBFFE3947DB755FFA187C41FF0083BBBFFE3947D6221FEB
                1617F965F72FF33E9FA2BE60FB6EABFF00430F883FF07777FF00C728FB6EABFF
                00430F883FF07777FF00C728FAC443FD62C2FF002CBEE5FE67D3F457CC1F6DD5
                7FE861F107FE0EEEFF00F8E51F6DD57FE861F107FE0EEEFF00F8E51F58887FAC
                585FE597DCBFCCFA7E8AF983EDBAAFFD0C3E20FF00C1DDDFFF001CA3EDBAAFFD
                0C3E20FF00C1DDDFFF001CA3EB110FF58B0BFCB2FB97F99F4FD15F307DB755FF
                00A187C41FF83BBBFF00E3947DB755FF00A187C41FF83BBBFF00E3947D6221FE
                B1617F965F72FF0033E9FA2BE60FB6EABFF430F883FF0007777FFC728FB6EABF
                F430F883FF0007777FFC728FAC443FD62C2FF2CBEE5FE67D3F457CC1F6DD57FE
                861F107FE0EEEFFF008E51F6DD57FE861F107FE0EEEFFF008E51F58887FAC585
                FE597DCBFCCFA7E8AF983EDBAAFF00D0C3E20FFC1DDDFF00F1CA3EDBAAFF00D0
                C3E20FFC1DDDFF00F1CA3EB110FF0058B0BFCB2FB97F99F4FD15F307DB755FFA
                187C41FF0083BBBFFE3947DB755FFA187C41FF0083BBBFFE3947D6221FEB1617
                F965F72FF33E9FA2BE60FB6EABFF00430F883FF07777FF00C728FB6EABFF0043
                0F883FF07777FF00C728FAC443FD62C2FF002CBEE5FE67D3F457CC1F6DD57FE8
                61F107FE0EEEFF00F8E51F6DD57FE861F107FE0EEEFF00F8E51F58887FAC585F
                E597DCBFCCFA7E8AF983EDBAAFFD0C3E20FF00C1DDDFFF001CA3EDBAAFFD0C3E
                20FF00C1DDDFFF001CA3EB110FF58B0BFCB2FB97F99F4FD15F307DB755FF00A1
                87C41FF83BBBFF00E3947DB755FF00A187C41FF83BBBFF00E3947D6221FEB161
                7F965F72FF0033E9FA2BE60FB6EABFF430F883FF0007777FFC728FB6EABFF430
                F883FF0007777FFC728FAC443FD62C2FF2CBEE5FE67D3F457CC1F6DD57FE861F
                107FE0EEEFFF008E51F6DD57FE861F107FE0EEEFFF008E51F58887FAC585FE59
                7DCBFCCFA7E8AF983EDBAAFF00D0C3E20FFC1DDDFF00F1CA3EDBAAFF00D0C3E2
                0FFC1DDDFF00F1CA3EB110FF0058B0BFCB2FB97F99F4FD15F307DB755FFA187C
                41FF0083BBBFFE394FB5BBD524D634A81FC43E2031DC6A76704ABFDB777F3249
                711A38FF0059C65588C8E79E29AAF16EC694B3DC355A91A718CAEDA5B2EBF33E
                9CA2B9BFF840F48FF9FCF107FE147A87FF001FA3FE103D23FE7F3C41FF00851E
                A1FF00C7EB73DE3A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D2
                3FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1
                FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107F
                E147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF
                009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF
                00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E80
                3A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851
                EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7
                F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3F
                E103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147
                A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009F
                CF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF0084
                0F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A
                2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1F
                FC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C4
                1FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103
                D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87F
                F1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF10
                7FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48
                FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9B
                FF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E
                803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF8
                51EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23F
                E7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FA
                3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF009FCF107FE1
                47A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00840F48FF00
                9FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A4A2B9BFF00
                840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA1FFC7E803A
                4A2B9BFF00840F48FF009FCF107FE147A87FF1FA3FE103D23FE7F3C41FF851EA
                1FFC7E803A4A2B9BFF00840F48FF009FCF107FE147A87FF1FAC8F12786ED741D
                3ECAFF004CBFD712E1356D3A3FDEEBB7B3232BDEC28EAC8F2956055981041EB4
                01DDD145140057C99A07FC8B7A67FD7A45FF00A00AFACEBE4CD03FE45BD33FEB
                D22FFD00573623647CBF11FF000A1EBFA1A145145719F1814514500145145001
                45145001451450014514500145145001451450014514500150DDC9343692496B
                07DA2655CA45BC26F3E993C0A9A90F4F5A069D9DCC3D3F5EBEB8BABB8B50D285
                925A45E64AFF006A59307190BC0C671CF5E063D4554B1F174F756371792E991C
                7043107063BD49096240552A065739CF23B55AD374DBC1E17BA86F21885FDE19
                A496391B285989C0254F4C60707A552D1344B81AA8B9BBD22D74C823B536EF0C
                6EAE2E0920EE38EDC77C9FAD6DEEEA7B1CB84B546E2B4B6CDF4DEDEF5DDFE763
                5F4CD67FB48C4AB06C628ED2FCF91195728074E7255B078FBB56B50D4ACF4AB5
                FB4EA13AC11676EE209C9F400726B9F9749D563BAB796C10DBABCD978E29022C
                4A1D02E402032F96ADC0CF2DF8D6A78806ABF6680E8E8652251E744B208D9D31
                D031E9CFE352E2AEAC734E8D17562A2D72BBF5DBE7AFC9FF00C3972C351B4D52
                D05CD84CB342491B80239F420F22A8A7886397C449A5456D29043E677055772F
                50A08F9BEBFCEA2F0B69F77A6DADEA5F422279AF1E65024DE36B05EFD4F4239E
                6A6BBB2B897C55A7DE2479821865591F70E09C638EB45A2A56FEB617B3A11AD3
                85EEACECEFE575B6E555F156ED4C4434F97EC26E7EC82F378C79BD31B7AE33C6
                685F156ED4C4434F97EC26E7EC82F378C79BD31B7AE33C66A88D1756FB52E9CD
                6F11B05D43ED9F6BF30676EEDDB36F5CE7BF4A068BAB7DA974E6B788D82EA1F6
                CFB5F9833B776ED9B7AE73DFA55A503B7D8E0FCB6EFD3BEFF1797E068D8F89D6
                F5DD16D4ABF9A8912F999DE199864F1C1011891CF02B7AB9ED5349B87B8965D3
                ADC43B3611E432C6F31671E61C8230768C024F735ADA5477516936B1EA0DBEE5
                62512B67396C73CF7FAD66D2B5D1C188851E553A5A795EEF6FEBE65BA28A2A0E
                20A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
                00A92CBFE460D0FF00EC35A7FF00E95C551D4965FF00230687FF0061AD3FFF00
                4AE2AB87C48EBC0FFBDD2FF12FCD1F4FD14515E91FA805145140051451400514
                51400514514005145140051451400514514008EC11199BA28C9AF3BB3F8C1A76
                A1A5CB756769BE44D0EE35A585A4652D1C723204CECC06CA1DDE848C6F1CD7A2
                D6378C2C2E755F03EB9A7D847E6DD5D69F3C30C7B82EE768D828C9C0192475A9
                936A2DAFEB47FF0003EE2E1672499C4E83F1635ABBD6341B7F1378264D12C7C4
                1C585EA6A91DD798C537A828AA0A823B9E9C71E9BDA6FC59F03EAF35DC563AFC
                2CD6503DC5CB490C91AC28ADB496665007240C67272319ACDF87FF0008BC2DE1
                2B3D33544D022B7D7D2D105C4CF3BCC525280395CB32839C8CAFE1C56059FC33
                D6EE7E00DDF85A5B7B7B1D5E5BC92E84533AB24A45C798A1D9090432A81EDC67
                A55CAC9B5DBFCFF1B6FD2FB7999C6ED26FCBF5FBBB791D9E8DF153C17E20D375
                1BED1F5C8EEA0D32169EEC2C12878E35192FE5950CC07A806B61BC55A2A5CE8F
                6FF6E0D2EB6A5F4F448DD8CEA17796E07CA029072D81CD711E1BD0BC4DE21F1F
                2788FC5FE1AB2F0EDBDAE94FA6AD9C774972F75BD81258A0C08C004053C8C9AA
                7F0F3E1D6BDA578B751B9F1315365A5D9B693E1F915C1636C5D98B9009C360AA
                F383C7B64AFEBF3FCF4F4BBEC3FEBF2FCB5BF7D0EBAC3E28F82B53F1537872C3
                C416D36A818A084060ACC3AAAB91B18FB024F5F4A2F7E28F82B4EF152F872F7C
                416D16AACE23F24862AAC7A2B381B14FB120D78FF853E0FF008AB4FF0010695A
                66B76BACCDA66957EB7515E2F8922165947DCAE96A616704FA64724FCC339A4D
                5BE0F78AA5F14EAFA73DAEB37FA1EABA8BDD99AD3C4715A5AAABBEEFDE5BB44E
                CCCA7B807A0C53566E3FD76FBBAEFD81F5FEBBFDFD36EE7ACF8CBE2AF857C172
                5C596A3A9DB9D5E3B579E2B02CC0C8429654670A550B6303775C8C034B7DF153
                C2DA1787347D53C53A945A536AD6B1DC456D8799C0650DD114920671BB005713
                E27F0878CEC35AF1943E1EF0ED9EBB65E2BB348C5DCF7A913DA324263DACAC32
                F93CAE3001C12454DFF08BF8C7C2BAD687E23D13C396BE209D3C3B069375A7CB
                7B1C125B3A72595DB2A57B103AFEB496DF77E4FF005B2BEDD47D7EFF00D3FE0E
                8775ABFC4CF07E85A4E9FAA6A7AE411D8EA4ACD697088F224A1465B0514E0FB1
                EFC75E2AD6ADE33D2348F03BF8AE6924934C16EB711948C87943E360556C1CB1
                200071D79C579E68BF0D75CD2E6F008BBB4B59C699A85EDF6A0206510DA19816
                4540C41215880300E08CFBD779F10BC3373E2EF04DE695A7CF1DBDE968E7B592
                5FB8258DD5D777B12B83F5A25A2F9FE1FAFF00C005BA5FD6EFEEFF008263787B
                E226BB7BE28B3D1FC51E06BFD07FB462792CAE45CADD230519224D80794718EB
                DCE2B4ACFE29F82750F149F0E59F886D65D53798C42036D67FEEAC98D8C7D812
                6B2745BFF899AF7886DA3D7740B2F0DE8F0C1225E37DB12E9EF1D8614C7B398F
                0467E6EC7B9AE3749F01F8D9745D13C0D79E1FD36DF4BD1F534BD3E214BB5633
                22485FE4880DEB2367058F1D7EB54B5924FF00AD7F45F793F65BFEB6FD7F03D0
                6F3E2F7812C35C6D1EF7C430C37EB746D1A178651B24040209DB80391F313B4F
                3CF06B1AFBE356990F8FF52F0CD9C56CE74CB69659EE6EA79A2CBC68EEE8AA90
                3E428519624753B43118393AB7C3ED72EBC11E3DB38B4A47BFD5F5F17964A658
                F32C2248886C96C2E02C9C120F5E39AD5D5BC21AE5D78A3C7D77058EE8357F0F
                A59593F9C83CD9846E0AE0B657961C9C0F7ACEEF953EB6FF00DB6FF9E9EA5A4B
                99AE97FD6DF96BF79B37FF0016BC1FA1E95A45D788B5AB6B29355B54BA863896
                59B28C32186230C17D1995738E839020F107C5CF0F785FC496B65AD5C436FA65
                D699FDA116A424670F9902AA2C6AA4B641DD907A0E9DEB8BD5BC2DF1264F0D69
                7E1BB5D356E34A93C39158CB1AEA696CB677423DAED215CB4A3A00AA4A9EFEF2
                C1E1DF1BF87B55F0AEAFA5F84A0D5A4D33C2E9A6DCDACF7F0C2C936E50423658
                670339E8572339E2AE5A49DB6BBFBAD2FD52D7CC95B2F45FA7F9BD3C8EF27F88
                760FE20F09D8E90916A567E2617062BE8A7C2C4228F7FDDDA7767A1190411F85
                3EC3E28F82B53F1537872C3C416D36A818A084060ACC3AAAB91B18FB024F5F4A
                E0FC3BF0D3C45A4DCF8045D5BC5B74F97539B516B795765A1B843B114120B609
                C7CA0E08F4E6B9BF0A7C1FF1569FE20D2B4CD6ED7599B4CD2AFD6EA2BC5F1244
                2CB28FB95D2D4C2CE09F4C8E49F986734D25CC93FEB5FD3F109691BAFEB7E9E7
                A7A1EB1A778E753BEF115AE9CFE1CF2E0B8D42F2D1AE96FD5F6C70282B3050BF
                32B31DA70708DC13938AED28A2A7A20EA1451450014514500145145001451450
                014514500145145001451450015CDF8F3FE45DB5FF00B0D695FF00A70B7AE92B
                9BF1E7FC8BB6BFF61AD2BFF4E16F401D25145140057C99A07FC8B7A67FD7A45F
                FA00AFACEBC87C11E08F0A5DFC3FF0F5C5D7863469E79B4BB6924964D3E26676
                31292C495C924F39AF9FCF335A796D384E716EEEDA1C18DCADE6515053E5B6BB
                5FF5479D515EC5FF00080783BFE853D0FF00F05B0FFF001347FC201E0EFF00A1
                4F43FF00C16C3FFC4D7CAFFADF87FF009F72FC0F2FFD527FF3FBFF0025FF0082
                78ED15EC5FF080783BFE853D0FFF0005B0FF00F1347FC201E0EFFA14F43FFC16
                C3FF00C4D1FEB7E1FF00E7DCBF00FF00549FFCFEFF00C97FE09E3B457B17FC20
                1E0EFF00A14F43FF00C16C3FFC4D1FF080783BFE853D0FFF0005B0FF00F1347F
                ADF87FF9F72FC03FD527FF003FBFF25FF8278ED15EC5FF00080783BFE853D0FF
                00F05B0FFF001347FC201E0EFF00A14F43FF00C16C3FFC4D1FEB7E1FFE7DCBF0
                0FF549FF00CFEFFC97FE09E3B457B17FC201E0EFFA14F43FFC16C3FF00C4D1FF
                00080783BFE853D0FF00F05B0FFF001347FADF87FF009F72FC03FD527FF3FBFF
                0025FF008278ED15EC5FF080783BFE853D0FFF0005B0FF00F1347FC201E0EFFA
                14F43FFC16C3FF00C4D1FEB7E1FF00E7DCBF00FF00549FFCFEFF00C97FE09E3B
                457B17FC201E0EFF00A14F43FF00C16C3FFC4D1FF080783BFE853D0FFF0005B0
                FF00F1347FADF87FF9F72FC03FD527FF003FBFF25FF8278ED15EC5FF00080783
                BFE853D0FF00F05B0FFF001347FC201E0EFF00A14F43FF00C16C3FFC4D1FEB7E
                1FFE7DCBF00FF549FF00CFEFFC97FE09E3B457B17FC201E0EFFA14F43FFC16C3
                FF00C4D1FF00080783BFE853D0FF00F05B0FFF001347FADF87FF009F72FC03FD
                527FF3FBFF0025FF008278ED15EC5FF080783BFE853D0FFF0005B0FF00F1347F
                C201E0EFFA14F43FFC16C3FF00C4D1FEB7E1FF00E7DCBF00FF00549FFCFEFF00
                C97FE09E3B457B17FC201E0EFF00A14F43FF00C16C3FFC4D1FF080783BFE853D
                0FFF0005B0FF00F1347FADF87FF9F72FC03FD527FF003FBFF25FF8278ED15EC5
                FF00080783BFE853D0FF00F05B0FFF001347FC201E0EFF00A14F43FF00C16C3F
                FC4D1FEB7E1FFE7DCBF00FF549FF00CFEFFC97FE09E3B457B17FC201E0EFFA14
                F43FFC16C3FF00C4D1FF00080783BFE853D0FF00F05B0FFF001347FADF87FF00
                9F72FC03FD527FF3FBFF0025FF008278ED15EC5FF080783BFE853D0FFF0005B0
                FF00F1347FC201E0EFFA14F43FFC16C3FF00C4D1FEB7E1FF00E7DCBF00FF0054
                9FFCFEFF00C97FE09E3B457B17FC201E0EFF00A14F43FF00C16C3FFC4D1FF080
                783BFE853D0FFF0005B0FF00F1347FADF87FF9F72FC03FD527FF003FBFF25FF8
                278ED15EC5FF00080783BFE853D0FF00F05B0FFF001347FC201E0EFF00A14F43
                FF00C16C3FFC4D1FEB7E1FFE7DCBF00FF549FF00CFEFFC97FE09E3B457B17FC2
                01E0EFFA14F43FFC16C3FF00C4D1FF00080783BFE853D0FF00F05B0FFF001347
                FADF87FF009F72FC03FD527FF3FBFF0025FF008278ED15EC5FF080783BFE853D
                0FFF0005B0FF00F1347FC201E0EFFA14F43FFC16C3FF00C4D1FEB7E1FF00E7DC
                BF00FF00549FFCFEFF00C97FE09E3B457B17FC201E0EFF00A14F43FF00C16C3F
                FC4D1FF080783BFE853D0FFF0005B0FF00F1347FADF87FF9F72FC03FD527FF00
                3FBFF25FF8278ED15EC5FF00080783BFE853D0FF00F05B0FFF001347FC201E0E
                FF00A14F43FF00C16C3FFC4D1FEB7E1FFE7DCBF00FF549FF00CFEFFC97FE09E3
                B457B17FC201E0EFFA14F43FFC16C3FF00C4D1FF00080783BFE853D0FF00F05B
                0FFF001347FADF87FF009F72FC03FD527FF3FBFF0025FF008278ED15EC5FF080
                783BFE853D0FFF0005B0FF00F1347FC201E0EFFA14F43FFC16C3FF00C4D1FEB7
                E1FF00E7DCBF00FF00549FFCFEFF00C97FE09E3B457B17FC201E0EFF00A14F43
                FF00C16C3FFC4D1FF080783BFE853D0FFF0005B0FF00F1347FADF87FF9F72FC0
                3FD527FF003FBFF25FF8278ED15EC5FF00080783BFE853D0FF00F05B0FFF0013
                47FC201E0EFF00A14F43FF00C16C3FFC4D1FEB7E1FFE7DCBF00FF549FF00CFEF
                FC97FE09E3B52597FC8C1A1FFD86B4FF00FD2B8ABD7BFE100F077FD0A7A1FF00
                E0B61FFE26B1BC4FE07F09DBE9B66D0786346899B56D3A3629A7C40956BD8559
                785E85490477048AE9C2714D0AF88A7455369CA4974EAEC694B85DD0A91ABED6
                FCAD3F87B6BDCF5AA2B9BFF8571E08FF00A137C3FF00F82B83FF0089A3FE15C7
                823FE84DF0FF00FE0AE0FF00E26BF413DF3A4A2B9BFF008571E08FFA137C3FFF
                0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E0
                8FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B
                9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0F
                FE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF
                0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE1
                5C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082
                B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA
                137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF
                008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26
                803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF
                00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C78
                23FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83F
                F89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C
                3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF0085
                71E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A
                4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0
                AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE
                84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A
                3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF
                0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E0
                8FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B
                9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0F
                FE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF
                0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE1
                5C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA137C3FFF0082
                B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF008571E08FFA
                137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26803A4A2B9BFF
                008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF00E0AE0FFE26
                803A4A2B9BFF008571E08FFA137C3FFF0082B83FF89A3FE15C7823FE84DF0FFF
                00E0AE0FFE26803A4AE6FC79FF0022EDAFFD86B4AFFD385BD1FF000AE3C11FF4
                26F87FFF0005707FF13587E2CF05785748D2EC6FB4AF0D68F637716B5A5F9771
                6D611472266FE0070CAA08C8247D0D007A051451400579F7803FE49AF867FEC1
                16BFFA256BD06BCFBC01FF0024D7C33FF608B5FF00D12B5F9FF1BFFBBD1F57F9
                1D586DD9D0514515F971DC145145001451450014514500145145001451450014
                51450014514500145145001451450079DF8EFE206ABA1F889346F0FAE8B1CD1D
                A0BB9E6D66EFC88DC162AB0C6723F78DB49049C0C734DF11F8E3C551EA91699E
                19D1EC05E5BE92355D4575098B2A2E71E4C6C8705F21BE6FBBC533E207C38D43
                C43E221ACE8B16877534D626C27875B81A448D77122588A824483711552EBE1A
                78974A86C0F84758B1338D15746BE3A8A3ED68C72248C2E70C3240078C63AD7D
                4D0596FB2A4DB8F359DEF7DFFBD6E9DB4EDE664F9B9DF6FF0086FF0083FD587C
                7F16E6935BD319ACE18749BBD3D2F245219A60AD04923329070551904646D392
                E390783E8DA5497936936B2EA91C715E4912B4D1C59DA8C464A8CF271D33ED58
                29E107B7F0BE83E1DB6B84361A79885D3B021E658972B81C8E64084827A023BD
                56F871E10D43C21A75F41A95C5BC8D713232ADBB33292B1AA348D951F3B952CC
                39E7B9EB5C18BFA954A4E546D171D96FCCAED5FC9F56B5E9A8A1CEADCC3EF7E2
                469DA778AA1D12FB4AD6EDD67B95B48B5196C192D1E56E02890904E4F008183D
                738E6B4BC572789A2D3A393C22FA324C8C5AE1B583208D6300F20C7CE73EBC62
                BCFEF7E1978BAFFC46B7779A9E93776D6BADC7A9DB4D3894DD34624CF925C82B
                1A85CE154104E338EDDF78E348D4B5FF0004EA7A4E89710DB5E5EC5E4ACB3332
                AAA9203E4804F2BB874EF5556960E955A3EC649DFE2BEA96DABFBFF02D5DC9A7
                B7FC39C45C7C45F13695F0A0789B5A1A245797B791C3A7958A616ED133604AE0
                B6FC150CE31838C719E2AA1F8ADAF45E07835959BC3DA94B3DDCB10974F4B8F2
                94245BD6265936BACAEDF28CFAA9C1AEE7C4FE1DD4EEBC3DA75B785A6D3EDEEF
                4C9A29604BFB559617118C053C164EC432618638EB547C37E14D7B45D135FBA9
                EF2C5BC45AD4AF70C60574B58242BB576E72C40EA49E4FEB5D74EBE5EE8BA928
                46EE5B5FA6C96DA24B5BDDEBA5B533B4FDDFC7F1FF0080741A0EAD36B2B7B726
                344B34B8686D88CEE70802BB13D3FD607031D973939AD6AE0740F87B75A0FC40
                FED5B7B987FB363B630C7F3133B8F2E2411B0DB8DA1A367CEEE59CF1D49EFABC
                4C6428C6A2F632BA693F4F27E7DCD217B6A14514571961451450014514500145
                1450014514500145145001451450014514500145145001587E2DFF0090558FFD
                86B4BFFD2F82B72B0FC5BFF20AB1FF00B0D697FF00A5F057A594FF00C8C687F8
                E3FF00A5222A7C0CEF68A28AFDFCF2828A28A0028A28A0028A28A0028A28A002
                8A28A0028A28A002B89B0F18EB977E22B7B1B8F0E5FDBDB4DA8DE5B35C3D93EC
                8E285018DCB938C484E43E31C6D00FDEAEDA908CA91ED49DECEC3E963C0747F8
                E1E2B961D2751D467F065D5A5F5EA5ABE95617128D490348533E5962063AF7C8
                C7AD7A241F16F459FC4DA9E8EBA6EB0ABA4CB2C77FA81B51F65B511A962CF206
                3804290063248E94BF0E3E1AE9DE0FF0DE9E9A9693A3C9AEDB799E66A36F6CA6
                462CEC46242A1FEE902A3D37E1E5C7F6478E34CD5AE6110789AFAE2689EDC966
                8A39230A370207CC08CE0647BD395D5D2D747FA597E6C7A395FA5FF0D75FC877
                873E2F685E24D620D3A1D3F59B17BD477D3A6D42C8C316A0146498589F9B8E79
                C75AB717C4ED127D0743D4E182F5CEB979F62B5B311A79E25DC5583AEEC00BB4
                EE3938F7AE7FC3DE03F1A3EB5E1F3E32D5B479B4CF0CE4D82E9D0C826B96F2CC
                6AD316E170A7385E09FCEAC693F0BEEAC3E2FDCF8967BE8A5D123335C69D61C9
                6B7BA9C2899F18C00769C727EF76C735A7325D3FCBFCFF000D3D0877B3EFFD7E
                5A7E25BD43E31F8774DD727B196D35792CED2E3ECD77AC43625AC6D65CE0A3CB
                9E08240380464D4DE24F8B1A2786F5A9B4D7D3F58D4DED1164BF9B4CB133C562
                8C321A56C8DA36FCDC678AF3CD4BF67BB8B8F1B5F5E456BE1DBFD32FEF5AE9E7
                D464BD1750873B99152195118024E0920FAD5BF1C7C09BAD6FC7575ADE956DA0
                DFDBDF88FCD8B5896ED1ADCAA843E5F90EBB81001F9BBD42BF2C6FBF52DDB99F
                6FEBFAFEAC775AEFC56D0345BAD3EDA08752D626BFB517A8BA4DA35C7956C7A4
                EE06309F4C9F6AC7D1FE315B2FC3BD075BD7AD27BAD575A6956DB4DD1AD5A596
                7D8EC09442D9C05009CB7F8536F3E1D789743D7F4ED57E1F5FE8F6AF1E931E91
                7505FC33346B1A3644916199B209E1598FB93542C7E1678AB43F0D784E7D0F53
                D297C49E1D5B98C8BA591ED2E526725812007040C741D7F3AAD35F5FD5FF00C0
                255FFAF4FF003BFE1B1D05C7C64F0DDB78357C46F06A5E42DF2E9F3DA7D980B9
                B69CF549232C3047B13ED9ADF8FC5F6FFF000835C78A2FF4ED474CB6B7B796E2
                4B5BF804570AA99EA9938271C64F715C3B7C2DD7EE3458E4D4352B09F5ABBF11
                DBEB5A832078E0458F03CB8B824E00182D8CF7AF49D7348B7D7FC3F7FA45EE7E
                CF7D6EF6F215EA0329191EFCD4CAFC8EDBFF00C05FADC6ADCCAFB7FC17FA58F3
                FD1FC57F13E7BCD1F52D4BC2FA4C9A16AD2A0FB3D8CD21BCB28DC656494B6108
                03AE00F4E2AF6A7F1A3C35A5EB9756325AEAF3DA58CE2DAF756B7B22F65692E7
                1B24933C10481C03D6A8E91E13F89D0DE68FA6EA7E28D2A2D0B489508B8B18A4
                1797B1A0C2C7286F90023AE09EC79359FA87C2FF001888F5CF0E68FADE931785
                35EBC92EAE64B881DAF6DFCD6CC89181F23038C658E79ED56F7D36D7F4B5FF00
                1FEAC257B6BFD6F7B7E06F7897E32687E18D6B50D32E34BD6EFA5D3A28E7B993
                4FB313471C4EBBBCC2DB80551C649C7518CF38B5AE7C57D0745B8D36DE2B6D53
                559F50B45BE58F4CB369DA1B63D26900C10BF4C9F6AAB3FC3EBF37DE3892DE6B
                5116BDA4C36163BDDB746C90BC64C9F2F032C3A67A1E2B31FE1EF8C347D4F47D
                5BC21A9E8F15F47A243A3EA11EA11C8F1ED8F9F3222B82581CE01C0F5A8E96FE
                B67FADBEF0FEBF2FF37F713F853E275D6B765E099352F2209FC47F6C2E905A12
                84439230ED2831F001FBB267A7CBD6B4342F8C3E1DF1078860D2ECED7558A2BB
                9248AC752B8B329697AE992CB1499E4F07A81D3E9589E1FF00857ACE991780A3
                BEBBB19078745FADF18A47FDE7DA1485F2F2833D79CE31DB3573C15E0DF1EF85
                E5D3F449F5FD28F85F4B67F24C16EC6F2E90E4AC726F0550027AA1CE0633CD54
                AD776F3FCDFF00C007B5FF00AEBFD6FF00F024B2F8C3A5C5E08D1F58BE8EFB52
                BDD5A59A3B4B1D3B4E22E2E0C6ECADB61F35F0001C92E73D78CE05B93E30F86E
                2F0947E2068752F27FB4174E9ED7ECB8B9B59CFF000491939C8EFB727D335CD6
                99F0A7C55A0786FC2D3E87A96929E23F0FB5DA85B9123DA5C473C858A9200704
                023A0EBF9D5D4F85FAECDA54336A9A8D85CEB175E24B6D6F5128AC902AC78062
                886093850305B19EF46F2F9FEABF4BBFEB572B2BDBCFF5FD6DFD6DD0E87F1434
                BD7B49D62EEDF48D760B9D1DD52EB4C9B4F6FB6658657112924E7F4EA7039AAF
                61F183C3B75A16B5A9EA16DAA68C744D9F6DB4D4ED0C5709BFFD5E10139DC781
                CFD7039ACFF107C3EF12DEDE78D2EF42D5EDF4F9F5C7B27B3712C8A408502BA4
                854654374CA92707F0AC1B7F831AEDD69BE2A8B54BDD1ACEE35D8ECE684E990B
                AC56D7103138D8DCB29E3E627249248F54BF45FA5FF5FEB72DA1BFA17C5C8F5A
                F1A5DD9DC69F75A2E9565A29D46E06AD66F05CC4C24C1246E20A14C11807EBDA
                AF787BE2EE87E25D5E0D36DEC357D3E4BD477D3A7D4AC4C50DF85192626C9DC3
                1CF38383EBC562DB7C3AF17F8835DD5AFF00C7DA8E8FB752D01F48DBA4AC83C9
                CBEE0C038F9BA924E472718C7353787BC07E347D6BC3E7C65AB68F3699E19C9B
                05D3A1904D72DE598D5A62DC2E14E70BC13F9D3B5F4FEB77FA5ADFD59777FD6C
                BF5BDCDEF0A6AFE34BFD4AC53C49A7D85BDAC9A6B4D70D6F0CC8C971E7108A37
                9C6D318DDB4FCE0FDE0B900F674514005145148028A28A0028A28A0028A28A00
                28A28A0028A28A002B9BF1E7FC8BB6BFF61AD2BFF4E16F5D25737E3CFF009176
                D7FEC35A57FE9C2DE803A4A28A2800AF21F0478DFC2969F0FF00C3D6F75E27D1
                A09E1D2EDA3922935089591844A0A905B2083C62BD7ABE28D2BFE40D65FF005E
                F1FF00E822BE6388B2FA78EA508CDB567D0FA4E1FCA9E67567053E5E557DAFFA
                A3E96FF84FFC1DFF00436687FF0083287FF8AA3FE13FF077FD0D9A1FFE0CA1FF
                00E2ABE74A2BE3BFD5BC3FF3CBF0FF0023EBFF00D4F7FF003FFF00F25FFED8FA
                2FFE13FF00077FD0D9A1FF00E0CA1FFE2A8FF84FFC1DFF00436687FF0083287F
                F8AAF9D28A3FD5BC3FF3CBF0FF0020FF0053DFFCFF00FF00C97FFB63E8BFF84F
                FC1DFF00436687FF0083287FF8AA3FE13FF077FD0D9A1FFE0CA1FF00E2ABE74A
                28FF0056F0FF00CF2FC3FC83FD4F7FF3FF00FF0025FF00ED8FA2FF00E13FF077
                FD0D9A1FFE0CA1FF00E2A8FF0084FF00C1DFF436687FF83287FF008AAF9D28A3
                FD5BC3FF003CBF0FF20FF53DFF00CFFF00FC97FF00B63E8BFF0084FF00C1DFF4
                36687FF83287FF008AA3FE13FF00077FD0D9A1FF00E0CA1FFE2ABE74A28FF56F
                0FFCF2FC3FC83FD4F7FF003FFF00F25FFED8FA2FFE13FF00077FD0D9A1FF00E0
                CA1FFE2A8FF84FFC1DFF00436687FF0083287FF8AAF9D28A3FD5BC3FF3CBF0FF
                0020FF0053DFFCFF00FF00C97FFB63E8BFF84FFC1DFF00436687FF0083287FF8
                AA3FE13FF077FD0D9A1FFE0CA1FF00E2ABE74A28FF0056F0FF00CF2FC3FC83FD
                4F7FF3FF00FF0025FF00ED8FA2FF00E13FF077FD0D9A1FFE0CA1FF00E2A8FF00
                84FF00C1DFF436687FF83287FF008AAF9D28A3FD5BC3FF003CBF0FF20FF53DFF
                00CFFF00FC97FF00B63E8BFF0084FF00C1DFF436687FF83287FF008AA3FE13FF
                00077FD0D9A1FF00E0CA1FFE2ABE74A28FF56F0FFCF2FC3FC83FD4F7FF003FFF
                00F25FFED8FA2FFE13FF00077FD0D9A1FF00E0CA1FFE2A8FF84FFC1DFF004366
                87FF0083287FF8AAF9D28A3FD5BC3FF3CBF0FF0020FF0053DFFCFF00FF00C97F
                FB63E8BFF84FFC1DFF00436687FF0083287FF8AA3FE13FF077FD0D9A1FFE0CA1
                FF00E2ABE74A28FF0056F0FF00CF2FC3FC83FD4F7FF3FF00FF0025FF00ED8FA2
                FF00E13FF077FD0D9A1FFE0CA1FF00E2A8FF0084FF00C1DFF436687FF83287FF
                008AAF9D28A3FD5BC3FF003CBF0FF20FF53DFF00CFFF00FC97FF00B63E8BFF00
                84FF00C1DFF436687FF83287FF008AA3FE13FF00077FD0D9A1FF00E0CA1FFE2A
                BE74A28FF56F0FFCF2FC3FC83FD4F7FF003FFF00F25FFED8FA2FFE13FF00077F
                D0D9A1FF00E0CA1FFE2A8FF84FFC1DFF00436687FF0083287FF8AAF9D28A3FD5
                BC3FF3CBF0FF0020FF0053DFFCFF00FF00C97FFB63E8BFF84FFC1DFF00436687
                FF0083287FF8AA3FE13FF077FD0D9A1FFE0CA1FF00E2ABE74A28FF0056F0FF00
                CF2FC3FC83FD4F7FF3FF00FF0025FF00ED8FA2FF00E13FF077FD0D9A1FFE0CA1
                FF00E2A8FF0084FF00C1DFF436687FF83287FF008AAF9D28A3FD5BC3FF003CBF
                0FF20FF53DFF00CFFF00FC97FF00B63E8BFF0084FF00C1DFF436687FF83287FF
                008AA3FE13FF00077FD0D9A1FF00E0CA1FFE2ABE74A28FF56F0FFCF2FC3FC83F
                D4F7FF003FFF00F25FFED8FA2FFE13FF00077FD0D9A1FF00E0CA1FFE2A8FF84F
                FC1DFF00436687FF0083287FF8AAF9D28A3FD5BC3FF3CBF0FF0020FF0053DFFC
                FF00FF00C97FFB63E8BFF84FFC1DFF00436687FF0083287FF8AA3FE13FF077FD
                0D9A1FFE0CA1FF00E2ABE74A28FF0056F0FF00CF2FC3FC83FD4F7FF3FF00FF00
                25FF00ED8FA2FF00E13FF077FD0D9A1FFE0CA1FF00E2A8FF0084FF00C1DFF436
                687FF83287FF008AAF9D28A3FD5BC3FF003CBF0FF20FF53DFF00CFFF00FC97FF
                00B63E8BFF0084FF00C1DFF436687FF83287FF008AA3FE13FF00077FD0D9A1FF
                00E0CA1FFE2ABE74A28FF56F0FFCF2FC3FC83FD4F7FF003FFF00F25FFED8FA2F
                FE13FF00077FD0D9A1FF00E0CA1FFE2A8FF84FFC1DFF00436687FF0083287FF8
                AAF9D28A3FD5BC3FF3CBF0FF0020FF0053DFFCFF00FF00C97FFB63E8BFF84FFC
                1DFF00436687FF0083287FF8AA3FE13FF077FD0D9A1FFE0CA1FF00E2ABE74A28
                FF0056F0FF00CF2FC3FC83FD4F7FF3FF00FF0025FF00ED8FA2FF00E13FF077FD
                0D9A1FFE0CA1FF00E2A8FF0084FF00C1DFF436687FF83287FF008AAF9D28A3FD
                5BC3FF003CBF0FF20FF53DFF00CFFF00FC97FF00B63E8BFF0084FF00C1DFF436
                687FF83287FF008AAC6F13F8E3C2771A6D9AC1E27D1A565D5B4E91826A111215
                6F61666E1BA050493D8026BC36AF787FFE470F0F7FD86AC7FF004A63AEBC1641
                428E2A9545277524FA746BC8E5C6F0ABA185A95BDB5F962DDB97B2BFF31F4D7F
                C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00
                155D2515FA69F9B1CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC551FF0B1FC11FF00439787FF00F06907FF00155D251401CDFF00C2C7F047FD
                0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F06907FF00155D251401
                CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF00439787FF00F069
                07FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41FFC551FF0B1FC11FF
                00439787FF00F06907FF00155D251401CDFF00C2C7F047FD0E5E1FFF00C1A41F
                FC5561F8B3C6BE15D5F4BB1B1D2BC4BA3DF5DCBAD697E5DBDB5FC5248F8BF809
                C2AB1270013F415E815CDF8F3FE45DB5FF00B0D695FF00A70B7A00E928A28A00
                2BE28D2BFE40D65FF5EF1FFE822BED7AF8A34AFF00903597FD7BC7FF00A08AF2
                733F8227DFF047FBC56FF0AFCCB7451457887EA4145145001451450014514500
                14514500145145001451450014514500145145001451450043773FD9ACE69F1B
                BCA8D9F1EB819AC38EF755895049325C49756AD34482300C6C0038F7EB5BF2C4
                B3C2F148329229561EA08C56769FA3BD9DC24B3DDB5C7951F950A940BB17F0EA
                78EB5D14A508C5F36E78D8FA18AAB5E1EC9B51EE9DADAEADABEB75A2D1D9F6DC
                658EA12B491C7792F97B4B64CA0234996210638E7009C0F6F5AD0BB9A4B7B669
                2183CF71D13785FCC9E954AE746FB4B6E69F0ED2333B6CFBCA71C75E080AA33E
                DD2A7D4EC1B50B74449CC0F1C82456DA18647A83D69CBD9CA49AF985158DA742
                A41A6DA4B95DD5DE9E7749AF3D1BB8DD2B52FED2864631794F1B94650E1C67D8
                8EB5953EA973FDB7227DAA682D639963C8B60E99C0C82DD464D6B69DA7B5879F
                BA733199F792CA01CE307A5413E8D25C5C37997F335A3C8246B7600F39CE031E
                40F6AB84A8C6A4BB7F5DD3397114B30AB84A4B5E74F5B34AFBDAFCB28E9B376B
                FA19D3EB7756FAB4AB34FB04738416BE4FDE8F206FDFDBAD594BFBE4B8992E98
                C4ACF847740AA80331241EE36007273C9AB3369124F7A5E5BE95AD4C825FB391
                9F9874F9BD3DAA7BCD3FED8CECD2ED3B02C7F2E761DC189EBCE70BC71D3DEA9D
                4A3A2B2FEBE5FD77318613314E7273968DD95F7DFF00BCECAD6B6D67AF2ADCB6
                8EB222BC6C195864329C8229D5059DB7D92CE38376FDA396C63249C9A9EB89DA
                FA1F4D4DC9C139AB3B6ABCC28A28A45851451400514514005145140051451400
                5145140051451400514514005145140055EF0FFF00C8E1E1EFFB0D58FF00E94C
                7546AF787FFE470F0F7FD86AC7FF004A63ADB0FF00C687AAFCCF3736FF009175
                7FF04BFF004967D7D451457D59F8005145140051451400514514005145140051
                451400514514005731E2ABAF15DBEA3663C2FA72DDDB7D96E9E72D3469FBF11F
                EE10EE392ACD9076E39C1240041E9E8A4F51A766783F8EBC7DE20D0BC53A3E99
                AC78DDBC1492E8315D5CEED2A2D44B5D1765643B13DBA8C2FCBC0E6B5347F8B1
                E27B3F07F860DFF8765D7B57D72E6E2DEDCA38B36B858F94976B2E1430393D00
                009E9C57A27FC22DFF001720F8AFED9D74A1A77D97CAFF00A6A64DFBF3EF8C63
                F1A6EBFE13FEDCF15F8735AFB6F91FD8734D2F93E56EF3FCC8F6637646DC75E8
                69AF3EAFF57FA7FC35C4F7D3A2FD3FCFFAB1CA6A1F15B5A8350B9B2D2BC0B75A
                A4FA4DBC736B621BF8D56C99D0398D091FBE6033F7719C715B16BF1334EB8D4A
                D3CD81A0D2AFB443AC5B6A123FDF54E648CA638655218F27AFB550F10FC2FD42
                FF00C47A96A9E19F17DE787E3D6915355B68ED5261701576828CC418DB6E46E1
                9A778BFE10E9BE25F0468FE1BB2BF9F4B8B49DB1C370837C8D0ECD8F19E47DF1
                D4F4C8E9DA96AD79FF00C3FE09D9AEBA6A3D2FFD797E2F54FA19BA97C6D4D37C
                23A16A926868B7FAF79925958DC6A715BA0854F12493C8155320A9039EB8CD2F
                FC2F5D23FE15F8F107D87FD37EDFFD9BF60FB6C5E5FDA76EEC7DA33E5F978E7C
                CE98ED5ADE3CF85765E31B3D2459DD45A6DD68EA63B4926B18EF221190014686
                4F95BEE8C7A62B3EEBE0B595EFC3F8BC3F75A85BFDBA1BB17A97D068F6D0C426
                036F36E8A11976F043649F5E829E9AFAFE17FF002FC7C84BA5FF00AD3FCFB742
                1D2FE3A69975E12D6F54D434D305F68C6259AC6CEF62BC594CA71179734676B6
                4F07FBBCF5A874CF897AF278EB505F18E913F8774FD3FC3ADA8CDA7B4915C659
                65FF0058B22804E578DA71820F1DEAE587C18B64F04EABA16ADA9C13CFA8946F
                B6E9DA3DB69E6231B6E8C858946EC373F313ED8A934CF8517CFAB6A17FE32F16
                4FE237D47486D2660D6696FB632D9CAED240C0F624939CF6A6FCBFE06CFF005F
                9074FEBBAFD3E63FC3BF14F50D4F5AD2ED7C41E0FBCD0ACF5C0C749BD92E9261
                71852E03AA8062257900E7FAD5AF87BF10757F1DC92DC37851F4CD210CB1AEA0
                F7CB279B2A3EDDAB1ED0C463277703208E6AAF877E165FE99AD69775E20F17DE
                6BB67A1861A4D9496A908B7CA9405D9493290BC0271FD2BA4F02F853FE10AF0A
                C5A37DB7EDBE5CD34BE7795E5E7CC919F1B727A6EC75A7A5FF00AFC7CFF00E9F
                77EB7B796DBEBB9C0C9F13757D1BE3E6A9A16B0E5FC31BAD6D6293CA502CEE25
                88326580C90E438E73838E94FD0BE2AEAF1F8274053A64FE27F13EB37178B6F6
                B13C76CAC90CCE0B33E36A00A1474E7F5AE96F7E1858EABAA78C6E355BAFB45B
                78A20B789A010806D8C285438624EE392187030477AC5B4F8333E9BE15F0FDA6
                93E2AB8B2D774079CDB6AF1DA2B07599CB3ABC2CC430E71F7BB67DAA57C293F2
                FEBEFF00C362A56BE9FD69FD7CD5CEB7C13E30FF0084BB4FBB6B9D367D2752D3
                EE4DADF584EE1CC32800F0C386520821BBD7126FFE2378DA6D6F56F07EBF67A3
                D96997B359D969B258A4C6F9A13863248DCC7B981031D07E75DBF82BC1E3C23A
                7DDADC6A53EADA96A1726EAFAFE75086694803851C2A80000BCE2B97D67E136A
                7717DAB2F86BC6979A1693ADCAD36A3A7259C730777E2431C84831EE1D719E7F
                2A1EFA76FC74FC3712DBE7F86BF8EDFE65AD67E21EBBA5EA1A7F87F4DF099D7B
                C4CD60B7B7F6B6B78B0416CA7E52448E39F9810063A77AAB75F185A4D2FC3971
                A07866EB53BBD766B8B65B17B85825826841DC8C586DFBC082723039E7A55AD6
                3E17DDB6A1A7EA7E0FF15DEE81A9DA582E9D25D4902DE7DA605E46F57232F9E7
                77E953E97F0BAD7469FC2AF65A94CE3409AEA791A74DF25E493A10ECCD91B4E5
                89E87D3DE9EFF7FEBF95BE7716CBE5FA7E77F958E3BC53F16FC5175F0FA1BFF0
                EE812E99A97F6D7F64DF2B5CC2ED692ABA8D8A5D4AB17CEDDC570BC9C1E0D74B
                A0F8C75BFED3F13E9F3E9FA86A3A868B6762FF00639AF2D06E9658B7380EB1C6
                AB839DCC5981C6540FBA64B9F855F69D22F6C7FB676FDABC49FDBDBFECB9DBF3
                86F2B1BF9E98DDFA533C47F0947882EFC5939D724B56F109B264D96C1BECCD6C
                38C82D89031EA08152B67E7F8691FD6FF70F4BFF005FCDFE473F7FF18B53D53E
                1D78C2E2CEC1742D7BC3EB0E445770DF463CC61821D4142701811838FAF4D39F
                E296AED65AF69DAA7876EBC35ABC3A25C6A7A64934D14E264453862070AE0E09
                439EF9F743F066EE6D23C4F6DA878B24BCBAF125B5B457175269E89E5BC24E19
                51182852B8017B63A9AB56FF0009AF659F55BAF10F8BAEB59BCBAD2A6D26CA69
                AD1231670480E495523CC7E9F37CB9FE44AF66976FC6DFE761C6C9ABF7FF002F
                F83E663DD7C6C9342F0FF86ADA4B28357D72FF00478350BB6BAD4ADF4E880751
                CEF930A58B03F2A8E95D05BF8875AF1E68BA47883C0F7D35969D716779F6885E
                DE191FCF0A523037B72CB20C81908C01CB0E01C9D73E0645A95AE86F63ACDBDB
                6A3A5E99169B25C5DE8F0DEC5711C6386F2A5C846CE7904F0715E87E19D062F0
                D7876D74A81E39040A77491DAC56EAEC4E4911C4AA8BC9E807D7279AB972BE6F
                576F4D7F4B7CC8575CBF2FEBEFFC09F448B508741B08B5B9D6E3514B78D6EA64
                50A249428DEC0000004E7A0157A8A293777704ACAC1451452185145140051451
                4005145140051451400514514005737E3CFF009176D7FEC35A57FE9C2DEBA4AE
                6FC79FF22EDAFF00D86B4AFF00D385BD00749451450015F1CE9FE1AF11C1A6DA
                C52F85FC40AF1C28AC3FB1EE4E08001FE0AFB1A8AE7AF878D7494BA1EC6559BD
                7CAA729D049B92B6B7FD1A3E41FF00847FC41FF42CF883FF0004D73FFC6E8FF8
                47FC41FF0042CF883FF04D73FF00C6EBEBEA2B97FB368F77F87F91EF7FAEB98F
                F243EE97FF00247C83FF0008FF00883FE859F107FE09AE7FF8DD1FF08FF883FE
                859F107FE09AE7FF008DD7D7D451FD9B47BBFC3FC83FD75CC7F921F74BFF0092
                3E41FF00847FC41FF42CF883FF0004D73FFC6E8FF847FC41FF0042CF883FF04D
                73FF00C6EBEBEA28FECDA3DDFE1FE41FEBAE63FC90FBA5FF00C91F20FF00C23F
                E20FFA167C41FF00826B9FFE3747FC23FE20FF00A167C41FF826B9FF00E375F5
                F5147F66D1EEFF000FF20FF5D731FE487DD2FF00E48F907FE11FF107FD0B3E20
                FF00C135CFFF001BA3FE11FF00107FD0B3E20FFC135CFF00F1BAFAFA8A3FB368
                F77F87F907FAEB98FF00243EE97FF247C83FF08FF883FE859F107FE09AE7FF00
                8DD1FF0008FF00883FE859F107FE09AE7FF8DD7D7D451FD9B47BBFC3FC83FD75
                CC7F921F74BFF923E41FF847FC41FF0042CF883FF04D73FF00C6E8FF00847FC4
                1FF42CF883FF0004D73FFC6EBEBEA28FECDA3DDFE1FE41FEBAE63FC90FBA5FFC
                91F20FFC23FE20FF00A167C41FF826B9FF00E3747FC23FE20FFA167C41FF0082
                6B9FFE375F5F5147F66D1EEFF0FF0020FF005D731FE487DD2FFE48F907FE11FF
                00107FD0B3E20FFC135CFF00F1BA3FE11FF107FD0B3E20FF00C135CFFF001BAF
                AFA8A3FB368F77F87F907FAEB98FF243EE97FF00247C83FF0008FF00883FE859
                F107FE09AE7FF8DD1FF08FF883FE859F107FE09AE7FF008DD7D7D451FD9B47BB
                FC3FC83FD75CC7F921F74BFF00923E41FF00847FC41FF42CF883FF0004D73FFC
                6E8FF847FC41FF0042CF883FF04D73FF00C6EBEBEA28FECDA3DDFE1FE41FEBAE
                63FC90FBA5FF00C91F20FF00C23FE20FFA167C41FF00826B9FFE3747FC23FE20
                FF00A167C41FF826B9FF00E375F5F5147F66D1EEFF000FF20FF5D731FE487DD2
                FF00E48F907FE11FF107FD0B3E20FF00C135CFFF001BA3FE11FF00107FD0B3E2
                0FFC135CFF00F1BAFAFA8A3FB368F77F87F907FAEB98FF00243EE97FF247C83F
                F08FF883FE859F107FE09AE7FF008DD1FF0008FF00883FE859F107FE09AE7FF8
                DD7D7D451FD9B47BBFC3FC83FD75CC7F921F74BFF923E41FF847FC41FF0042CF
                883FF04D73FF00C6E8FF00847FC41FF42CF883FF0004D73FFC6EBEBEA28FECDA
                3DDFE1FE41FEBAE63FC90FBA5FFC91F20FFC23FE20FF00A167C41FF826B9FF00
                E3747FC23FE20FFA167C41FF00826B9FFE375F5F5147F66D1EEFF0FF0020FF00
                5D731FE487DD2FFE48F907FE11FF00107FD0B3E20FFC135CFF00F1BA3FE11FF1
                07FD0B3E20FF00C135CFFF001BAFAFA8A3FB368F77F87F907FAEB98FF243EE97
                FF00247C83FF0008FF00883FE859F107FE09AE7FF8DD1FF08FF883FE859F107F
                E09AE7FF008DD7D7D451FD9B47BBFC3FC83FD75CC7F921F74BFF00923E41FF00
                847FC41FF42CF883FF0004D73FFC6E8FF847FC41FF0042CF883FF04D73FF00C6
                EBEBEA28FECDA3DDFE1FE41FEBAE63FC90FBA5FF00C91F20FF00C23FE20FFA16
                7C41FF00826B9FFE3747FC23FE20FF00A167C41FF826B9FF00E375F5F5147F66
                D1EEFF000FF20FF5D731FE487DD2FF00E48F907FE11FF107FD0B3E20FF00C135
                CFFF001BA3FE11FF00107FD0B3E20FFC135CFF00F1BAFAFA8A3FB368F77F87F9
                07FAEB98FF00243EE97FF247C83FF08FF883FE859F107FE09AE7FF008DD1FF00
                08FF00883FE859F107FE09AE7FF8DD7D7D451FD9B47BBFC3FC83FD75CC7F921F
                74BFF923E41FF847FC41FF0042CF883FF04D73FF00C6E8FF00847FC41FF42CF8
                83FF0004D73FFC6EBEBEA28FECDA3DDFE1FE41FEBAE63FC90FBA5FFC91F20FFC
                23FE20FF00A167C41FF826B9FF00E3747FC23FE20FFA167C41FF00826B9FFE37
                5F5F5147F66D1EEFF0FF0020FF005D731FE487DD2FFE48F907FE11FF00107FD0
                B3E20FFC135CFF00F1BAB7A3E8DAE5AF89346BA9FC35E20486DB53B49E56FEC6
                BA3B51274763811E4E1549C0E6BEB3A2AA197D28494937A7F5D8C711C5D8FC45
                19D19C2169269D93EAADFCC737FF0009E691FF003E7E20FF00C27350FF00E314
                7FC279A47FCF9F883FF09CD43FF8C5749457A07C79CDFF00C279A47FCF9F883F
                F09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47F
                CF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00
                C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D2514
                01CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE
                315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC
                27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3
                E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF0
                9E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43F
                F8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883F
                F09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47F
                CF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00
                C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D2514
                01CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE
                315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC
                27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3
                E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF0
                9E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43F
                F8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883F
                F09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47F
                CF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00
                C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D2514
                01CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC27350FFE
                315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3E7E20FFC
                27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF09E691FF3
                E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43FF8C51FF0
                9E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883FF09CD43F
                F8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47FCF9F883F
                F09CD43FF8C51FF09E691FF3E7E20FFC27350FFE315D251401CDFF00C279A47F
                CF9F883FF09CD43FF8C5647893C496BAF69F6561A6586B8F70FAB69D27EF742B
                D851552F61776677882A80AAC492474AEEE8A0028A28A00FFFD9}
              TabOrder = 1
              Transparent = True
              Height = 130
              Width = 35
            end
          end
        end
      end
    end
  end
  object zProveedor: TUniQuery
    Left = 809
    Top = 284
  end
  object dsProveedor: TDataSource
    DataSet = zProveedor
    Left = 809
    Top = 332
  end
  object zProvEvalua: TUniQuery
    Connection = connection.Uconnection
    AfterScroll = zProvEvaluaAfterScroll
    Left = 199
    Top = 188
  end
  object dsProvEvalua: TDataSource
    DataSet = zProvEvalua
    Left = 271
    Top = 188
  end
  object dsPreguntas: TDataSource
    DataSet = zPreguntas
    Left = 821
    Top = 390
  end
  object zPreguntas: TUniQuery
    Connection = connection.Uconnection
    Left = 717
    Top = 382
  end
  object zEvaluaDetalle: TUniQuery
    Connection = connection.Uconnection
    CachedUpdates = True
    Left = 996
    Top = 149
  end
  object dsEvaluaDetalle: TDataSource
    DataSet = zEvaluaDetalle
    Left = 908
    Top = 149
  end
  object mPreguntas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 720
    Top = 280
  end
  object zPuntos: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      'SELECT '#39'-1'#39' as Punto, '#39'No Aplicable'#39' as Concepto'
      'UNION'
      'SELECT '#39'0'#39' as Punto, '#39'No Cumple'#39' as Concepto'
      'UNION '
      'SELECT '#39'1'#39' as Punto, '#39'Cumple al Minimo'#39' as Concepto'
      'UNION'
      'SELECT '#39'2'#39' as Punto, '#39'Cumple Parcialmente'#39' as Concepto'
      'UNION'
      'SELECT '#39'3'#39' as Punto, '#39'Cumple Plenamente'#39' as Concepto '
      'UNION'
      'SELECT '#39'4'#39' as Punto, '#39'Supera las Espectativas'#39' as Concepto;')
    Left = 988
    Top = 277
  end
  object dsPuntos: TDataSource
    DataSet = zPuntos
    Left = 892
    Top = 277
  end
  object frxReporte: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 43671.535013645840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      ''
      'End.')
    OnGetValue = frxReporteGetValue
    OnReportPrint = 'no '
    Left = 676
    Top = 157
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxEvaluaProveedor
        DataSetName = 'ds_EvaluaProveedor'
      end
      item
        DataSet = frxDBPreguntas
        DataSetName = 'frxDBPreguntas'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -7
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 279.000000000000000000
      PaperHeight = 400.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'ReporteDiarioBarcoOnBeforePrint'
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 86.929133860000000000
        Top = 200.315090000000000000
        Width = 978.898270000000000000
        AllowSplit = True
        Condition = 'contrato."sContrato"'
        object Memo2: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 313.700787400000000000
          Width = 665.196850390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Del [<ds_EvaluaProveedor."FechaInicio">] al [<ds_EvaluaProveedor' +
              '."FechaTermino">]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 313.700787400000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 37.692913390000000000
          Width = 245.669291340000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'Proveedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 71.708661420000000000
          Width = 245.669291340000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haRight
          Memo.UTF8W = (
            'Puntos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 245.669291340000000000
          Top = 37.692913390000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            'TIEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 313.700787400000000000
          Top = 37.692913390000000000
          Width = 272.125984250000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'CALIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 585.826771650000000000
          Top = 37.692913390000000000
          Width = 136.062992130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            'SERVICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 721.889763780000000000
          Top = 37.692913390000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 4643583
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 857.952755910000000000
          Top = 37.692913390000000000
          Width = 120.944881890000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 29928
          HAlign = haCenter
          Memo.UTF8W = (
            'CLASIFICACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 245.669291340000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            '40')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 313.700787400000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 381.732283460000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 449.763779530000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 517.795275590000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 585.826771650000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 654.000000000000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 722.000000000000000000
          Top = 71.708661420000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 4643583
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 245.669291340000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 313.700787400000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 381.732283460000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 449.763779530000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 517.795275590000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 585.826771650000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 654.000000000000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 722.000000000000000000
          Top = 56.590551179999970000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 4643583
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 789.921259840000000000
          Top = 37.692913390000000000
          Width = 68.031496060000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 29928
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 120.401574800000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Picture1: TfrxPictureView
          Width = 245.669291338583000000
          Height = 56.692913390000000000
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo52: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = -1.000000000000000000
          Top = 81.606299210000000000
          Width = 978.897637800000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'EVALUACI'#211'N DE PROVEEDORES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture3: TfrxPictureView
          Left = 718.000000000000000000
          Width = 259.000000000000000000
          Height = 49.133858267716500000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000001D400
            0000550806000000F0BC15A50000000467414D410000B18F0BFC610500000009
            70485973000017110000171101CA26F33F000089DA4944415478DAEC5D077C14
            C5F79F99DDABE9C95DE8904BB0F1131B16E4474B4213141B282282A88094108A
            0A0A0808A22835804A13516CA0A28048498882EDA7D87E3FBB9000A2944B25E5
            DAEECCFFCDDE5D3C2EBB971ED07F1E9F90DCDEEECCECBC99F77D6FE6CD7B189D
            07347BF66CFD8FF0BB0342C6B2B2B26BDD6E77614C4CCC37C50505E31921B7C0
            CFFA8CA54B5F0B7E2ECB92708780C96C19A1338DDD668CB08E215484297B2A25
            3F27ABAAFBA3A2A262FAF7EE7DD9C5975EBA00617C91D3E98CB2C4C589AD5AB7
            828F1831C61AB6BD50C7A993A7D0F1E3C7A13B4999DE60F83EFFF4E9399B5E7F
            FD3FC5C5C5458DDD7F4DD4444DD444FF34C2E7AAE271E3C685EBF5FACB41D077
            62B29C2A13F216A6540C0F0B7BB1DCE1F88F2CCB770B846CD5E9F51D5D2ED7E3
            191919F382CBC8B424A6C708C2B2622A377AFB75D0756E44CF00128E4ACD3BB2
            39D4BDC9C9C95DBA76ED9A116FB5761A78F3CDA86DDBB68DDEDE40E2E07DE4C8
            11B42F2B0B9D3871E2F3FF7DFFFDACCD9B37679ED346355113355113FDCDA951
            0175F4E8D166A06400D17620D4CB40B23F2D080206F0DC0BF6D95A00D4285358
            D836B0DE6499D2BE02422BC2C2C32F29292959B37CC58A31C1E571408D3D8780
            EA42B404DEE1012D40857714870C1932E2EA4E9D16DD7EFBEDD1B6C4C4466F67
            5574ECD851B46DDBB6B2AC3D7BC7BFBB7DFBC673DD9E266AA2266AA2BF2B350A
            A002904601900E1305A18FC7E3E98A30FE062EAF859F69003AC7E1F73CF8ADD3
            1162A118AF8546C5304ADF81FBAE07C08DA0B2BC63E9F2E5C383CB3DDF2DD4DB
            6FBFE58EE4E45E2F8E183102F482F0466F6375C9E170A0175F7CB164F7EE9DE3
            B66FDFB9E95CB7A7899AA8899AE8EF480D0AA8E9E9E9090094978AA2F8AB2449
            7300507B504A632963E9707DA380F106BDC1D0CF234967E0FAFFE0DA4B60BD2E
            83478B00A8F8E622B7F2BE2118BBCB1D8EDBD7AC59531E58FEF90CA87DFAF4B9
            BC7BF76EDBD2D226B68D8C8C6CF4F6D5944A4A4AD0BAB56BF37EFAF9D0CD6BD7
            3EFFE9B96E4F1335511335D1DF8D1A0C50274D9A3408C0663600668CCBE57A1D
            80711121A415589E9FC0F5B796AF5871CFA4891367C1F74F00A0CE0640DD02F7
            00C6E2ADF0F841F8B916EE8B84CF1BE17A0F41146F58B264495E601DE733A04E
            9C3871F65D77DD35A773E7CE8DDEB6DAD27FBFFB0E65AC58B168FDFAF50F9FEB
            B6F8E920EAA4337670541AA7F61FAD34197D243574FDD90889D60E1D48F0F57F
            FDF8A3048DA2E7BA7F820906A2D0A1430721F8FA1668EFDC06682F0319F24387
            0EBAE0EB3FFEF8A37C0742F53E313777E8A0EF1074AD31C68256BF726AA8BEAD
            6D7F34649FFC53F9ADC55FFB8F3F425DA8DA75D52BA0726FDDA2A2A2CE1E8FE7
            A84EA7DB0E974A0044DF05B094972F5FBE84DF0356EBBB00421D2559EE06966B
            47F8FB4D4CC83AF8EA2880ED45F0B91B226427FCBE042C540A809A05D7EF82BF
            4741193F05D677BE026A8F1E3D12460C1FFEDE90BBEEBACC6432357ADB6A4BC5
            454568F39B6FFEF4BF6FBE19B462F5EA1FABBA3FDBDA213C5AF644E56B7C6F86
            1F9701BB924FFC9A5755597EDA11D536265C275C2A23DC0311168E191A202012
            2907C82B3E682943BF6382F732CA7E4758F888A0E253C9767B695DFB6077B366
            61580E6BA967AC3715B00594B9141D223629A07E3D229CF7FFC1087F2910F4BB
            53F2EC8FCD8FB75F8DBEF234207BB4F910D52E5A10854E1E82AE81BEE922227C
            B9BFBDBCAF18C214C6E9019843DF6301ED935CE8B7DE8539C5B5AE0FF80E9C6D
            0EF2F3068AC8A518B17E81DF1BA07F5C08FD0075EF3310B2DF458B7EAC2D6FB2
            DBB5337A4A69AC0EEBFB23CC2EA6980D240C19FC3EF122D42531F627BCE90E01
            CB074BDCF48B1B8B8F15D66BFFB66B172D970BABC311E95C1E8019BC6F616CA0
            728446F7B11FDE5D9F756AD1BB71174544119A0432BE2B70380963741330F82C
            80F3F7097C970533A50826CB0E148E8E241F3DEAACD5FB03BF75C8DDCC83A4FE
            5AFC7603BF5123F1DBC3D809987BDB81DF5F02BFBFAC2DBF9579A3235D3D045F
            09F3A313F0F3CAC0EFBD72861D1308D9CB40DE8820670A85D293034F9C28D72A
            B35E0115ACB26BB885093FE341100D8346A60258BE07BFF550D16F300096C1F5
            AE00B2DB0164D3CC66F3AB0E87234B278AEDE0F39F92241D84FB0F40513FC0E7
            3C2887C4C4C4E4F27E040DC8B365CB96B390F37C05D4ABAEBAAAD3A4F4F44FEF
            193E5CDFE80DAB23EDD8BEDDB36CF1E281591F7DB4ABAA7BB3E26D93A391B8A0
            48A5FF15610333DACDE403D03F7DAA2A6B6F4C621421742011F018CCF0B5943F
            EE2B436D9072B88089C5BF036C65A500BC9900184B91BDCDE7B5D15E3743FD16
            427B124C8641D9309911D78430AF9FA8DC2F31AE8E33042AAD2C21562820FC8A
            4792B714161EFDA221347535DAD9BEBD415F2CDF0475A7411F5CCF8F72C1DF48
            50E93010B04AA34018BAE18DF67B307DA985C5B4E5D21F7F74D7A4CE7DD684BE
            F0FC3828AE37748D11FBFA289864C6D57AC6A0EF40C9603BDD325DD8A7E0E8E7
            35A96B6F73DB353A098D9531BE15DE2B12DE91A88D07FF5810E1978CD9171E2A
            3FD5323E7C6F4DDF4D8BB22C8977419F6E346102CDF9EB789B7F7CC2F81FD4DB
            9EFB767DD415B2EFE31353619CA7C3ABF6E27D8F7C7DAF353F24EF513CEED4EF
            2004BDCE1059977CFA508D78E0E3F75898647D4835F90D7CFA4092E8C2DE8547
            3FAB495D9CDF7A193F0893F7B6EAF25BC2EC4B44E505CE687D66FF43875CD5A9
            E7D3D6AD4D0E87EE56287A2C94DF1906A8286ACC9B60394318DE46115E969277
            F82BB5B2EB0EA88CE1B489137B02F85D2208421192E5796056BE029FBF074E8E
            26FC0E84A295E331944E70BADDEF180C86EFE1C98FC1E2BC0D4078287CC7C05A
            CD5ABC78F1E99A549D654D9C6E13F54F153500A0F2A15846294803A6DA49A100
            F59E7BEEB9F2EEBBEFFEB86FDFBEE67A6F5803D3BBEFBE8B664E9F3EE8875F7E
            A95240ECB3264EB310F1E950805A46A54FA07FBA862A678F25F10211B3B92226
            7711E64523E6135C5AEB6818FD357809F2821E4CAE1299B125516D639FBCFAAB
            EA5B8B1FC6D9AE01456E3208843B8D081329A07EE6FBA9AA7E11DED54969214C
            CCD56EEA5AD9ABE0F81F0DC5234E1F83A5E2C1EE99D08A7403C10690624A9BAB
            6A2F174F5C53713306328F66983DD2935DCE1C2FA8AABEEFADD6F01328620208
            B1C70C1847D4B43E104A79D0BF8F1FB2C7AE1B538525CF97DF62E36D77090C2D
            3062D286D745AB180FC457175FB38339EB8667169733DD53B7E4FF5252977ECE
            8E6DDF9A09740B806967073BBB76FF1807B3EFD65EA70FBF5B77AEAAD341A8A6
            D06A1B253232DF40508CBFEF43F587BF4F90AF5FF45E9E1778189E7620EFF08B
            552D5173ABD4839CE3C1F49D51537E8B5801F37CE0C3EC687BEC9AAA566E38BF
            2DF1B621A02C3C555B7EF3796F64FA055DABE077768B0B2DD423CD31126EF479
            9562FF3B55679E2BF5317612C6F2CCD4BCDC0DC1DB3EF562A1A6A7A78F02305D
            234BD221F868024BE14300CB616969691DB02074A792540A66F35CB8FE0958A4
            0F1A8DC6BEBC5D1919193BEA526FB635B16B2426031BC642C52686D92D7A445A
            7B54BABA2A401D3A74E8817EFDFA853540C31A94B66EDD8A663DF6D8ED3FFCFC
            F33B55DD0B0ACDC33144782614A0BA18FD28D59EDB53AB8C3DB1ED2E2182B021
            1C93EB9C20B0EAB211A5E74E6CF0DB4DD9E32979394F56678F735F5CC2CD6095
            2E0E2324A9AC8EF5F3C9660653E00CA5993A81A4773F79A8CA65F3DA105F16A3
            65F8593D1626F0F79550CD8382883E250040621D95D043A1968067832CE96EB5
            CDD663F23863B5ABCFC8794351593965E37B17E4843C9EF59135710454F102B4
            CFE8AA455D8A55C3F83840F352F20F3F5EEB7E46D0CF56610580E9034E567964
            3416A066596D63E18D32F4088BEE5AF4879F0018B925590CF26C32B1E7BCA2B5
            37C8F9DDC392384B47F09CBAF01B4CBA72E0DF84547BCE8650F77E684D1A0E72
            74B5AE8EFC7651F6646A7ECE4CADFB3EB0B46DA147E23326828749B57C2F7F3F
            02A83A65248F4BB51F3DEBDD6A0DA883070F165AB66C790FFC793D21642BA594
            2F413C6A321AAF05D0FC213A26A6734141C1657C7957278A45922439C10A7878
            E9D2A53B6B5B676353A6D596158985945295C9D4D8804A3D1E74FCBD2D482A2F
            43A0A478ED7E4C50EB81B7235D44FD79113726A0F2655E4CD8F31102B9CB11A0
            95D685F8607753EA6284DD9972FAC87BA1EECDB424DE009AEE069860CD1CF514
            A98ABFB719F852CAE4CF8984472517E67C5F2F0507D03E001C01E197785D6A42
            2150ABE6A4A57D0BDEE534E6A1F2E35179710BB52C095F44B275042C1549A39F
            0297C5D59412FE5498B26241FF00B17E734ADE31D525B30FE393AE9719DD6C40
            426BB7867A4382CA556B1117E81ECA4A252C8F00A157E5580E26EE8C462DB627
            A18FA6F2AE526B496300EA87CD2FB84496E54C03222DB5FAA3BAFCE6D74C5C89
            A2EC24A324B55781BAC2976DB50D82125F14EA83DF8CFE4129BAB5777EEE976A
            E5EC8F4DB8CE23E02DC0EF3675E1379FF712F05BC6ECDE148DE5F77D16DB0C23
            11E6F339A3F65ED5ED47A4F42341E554CE0524BF35D57EE4BBC0326A4513274E
            1C8D317E122699052A9DB26CD9B2A593274F6EC5189B0E3F63E0BB7930109603
            A0DEA213849660A57EBC2423E3E3DAD6D7D8B437E2E23862746F05CBA95BD979
            00A8526929FAB05F7FE438750A097A3DA2B28C8828A21EEF6F4761EDDAD5DB7B
            3726A0EE01411D8EC58D1E448D5A6B0C7C3209017B36CC07BCA12CC9302FA07D
            E0717986F5D358CE0490E80E70F2224CB02435EB23F03D9425655CFDFA799BF9
            8403F0D84BA97B647D2EFFEE0E4B8CD7995136582B1DD4AC15E26B6FA072C23F
            F34FB2CAFDDCAA773256047D3120D57EB8D271A94F233BC43AF4CE6C13219769
            5969DEF203F716BDF5AB0923853754DE48B06942B2FDC7B31C57BC9670E2DB66
            8C6F8136557A5EAD2EFE590E5517930EC8541ED227FFF73FABDBC7D9E1175A90
            519A0B3C1F03EF226859328D01A85971898BF5044F9134DE518DDFD8D7475A4A
            8001FAC549E99CBCBC4EF3EF4067FBA51C886A1BE3D189FB8C845C515FFC2E47
            F2CB8899C6ABF2DB627B2B8C905B1DF5C56F2A7FCCA86748F09CDBDDACAD4D47
            755B00E43B9569BC9750A91FBDFFCB1A4A2B5F8D0250CD48B6E7A69FFD4C0D89
            076A30994CEF0168C2B867CBE1E7624110C2E0F7D6A8A8A8DF8A8A8AB8157AB5
            288AA98B172FFEAA36759C6B3A1F01755FCA00E43C791211BD0131594258D4A1
            E43D00A8B6FA0B65D85880CAF76818763E1786C83D7C05406D20F265490FDFA4
            0F8CD5CC900E049D196B0C744E7AC54A657930FB86A49CAE1C67F9D3D69D4DE5
            AED39B2330B9D111629957F4011168B34EFE2ADEEA19548FCDF06E82CC588867
            61F22BFBAAF2EC5E79479EA82FFE7C68491ACD305BAD7820067DC7979CA14F5C
            D0AC5D32C12B40113949256A16043C01BAF14E10180635C54511B04CDA74CCCC
            468D0CF204CD8A49BA030BF455B050C5E0FEC64A5F13B078E44F31C3B390884F
            81997039F4FB433A44AE540322DE2F12020C2242CF9453BFFDE7AC3111DBBE33
            25F45D23C1CD5C2A1684C13B9E7E837A1FA384FC8464D60E38940EEFD987A2CA
            D604071BE093E464F27D6045BC5255DF7227AFB062D609DEF3691843DD6815CB
            820D0DA8BB9B5D162FCA259F00B8B557EB0F41E94BE68196BC2331FA9C2808F9
            58464684E91468D7109921A2363EB9EC9210FD056476B7EE270FD9CFE2776CFB
            C188C8AF8921F8ED027E3301F88D2AF83D15F87D9526BF1972C2784CE97DFAF0
            594E4AFB622FB88E11F93D2D7EF379ECA2EC1058818F21427E8409D756F6F2BB
            AF9AF5E8E3B75CCEE4FB7BDB8F9CB5ADB0D76ABB5D6498C73E089354DE4BD193
            29DB4504B65AC6C261E5BACC7A81F09903FD15ADF66EE18AC246F77B081ADCF7
            54CE697F5935A6D9B36793E2C2C205A24E972E4912DF042ED5E974111E8FE707
            0A131780B60580EBAD7ABDFEF9458B169DACE5783AA7743E026A76EF9B90132C
            5402162A030B158385DAF383F75058C2DF0F50B3ACED9340FC67C3446C236958
            5A9881C289D96298F8AB5C44549880DDAE0E50F6DD0804060894283550E17B83
            7CD9B590CAD352EC39CF0497BD27CE361426EB6A985CE11E0D81292A7A377282
            15B89D4AF84583017FA5B4412A8F12A970334CB4A13A4CAE0E05AA46C5CB99FD
            8C3CEC8E9E45B9FFAB0FFEECB3DA768250BBC113A4D113EFBBCB205897198CD2
            AC2EC78F3BFCDF71A03014D3A198B115D0E6B0E077E69A393CE72298764EB61F
            FDF62C3E591237011FEF56B30A8C8A70659F508C47A4DA0F1DAE782626E95F48
            609B40505E112C28B1AF5FCABDFBDCF371805CCC8AB3CD11089ECDEF091E517A
            6F5F1EC1B27C577280B77066BCAD1991F13A83806F5413CA5CE89580455CA673
            8ED33AEEB0D96A0D6F46C23BC8143F04F3F9063D21E1B2CF2B3A143534A0F2A5
            76BE8A02E056090414CB140C2A00ABE5D82C3F167824E6608B4EE612B9F01903
            C20F429F08C1BD22780115304EE81AECF50BFC7E05DE699816BFC16AFD0CDA34
            3CD97EF850050F62DB772002DD040ACF955AFC7650363B392F675E20BF332D89
            8F8B0058DC735883DF47DD9234B45FE1B18A9593DDCD12E375325A6720F8262D
            7E9FA1F22BE53AE78381FC86B13516F8FA9C1C64B9FB2D53509ADF2A374BA36F
            3C76F6111CEEE14D105B0BCA7158701B8D5E47C4EF994086A49E3AFC83BFBC5A
            D18409136C60814EA194C61142BE060035EA44719E24CBB72C5BB6ECBDDA967B
            BE5013A0362CA08220BC4C60F86BACB13F6552062B7AC69E77F831B56328FBE2
            6D532290B098D711F82577500351F027F00D9752F61A08ED6938E079EED02397
            9337A3B030B04463A9971FEAA30C3B00781EEB9597B34CED9E6C6BBBE60C0B0B
            F5205CB4842F46FEBD16CA85C9FCBA0682F834B275AC43AFFBCA444882334898
            F826F761B008FA77CFCBFD35F8D95F517BC371ABFCB2190B779407BD37F1B516
            2CDF59C9A773E657BC63780B0B331A3F575B16E79607F7AE6414A7F7CACF7921
            B8BE2C6BD24361183F5BAED2C75ECB83BE2B09E5C3FA9E3A55C6AF71D03716C9
            DB2288D0A744BD7D149488A5BDF3721E0A2E6FAFC5762380F7BB6091551A4B06
            AFE3D557D863BC3DB5E8A7A395DBD9BE8F1ED3611E86EED1052C8D576747BDA1
            0135D3627BCA4C84E902FA6B7CF98F71E8BDFC3E4498EEA6E4FC5F7F0E7E76B7
            B5DD1522229B01042F08061EEF4A06A200C8837A9ECED95AD18F112DE388C1F0
            39D4D9DEA1C16FF83509E6F3F3C1F5EDB3D8A6C0738B43F0FB3D9891C3FCE753
            1525AF487E379208FD4A54BCA7B93A4D295B9A9A9F33B512CF2C89FDF5046D0B
            C1EF6F04B7FEB6E4E25F8E543C5305A0BA291BAB368E3F45AD4D0EABB85F8784
            AB83951ADF9CFB1F00EA5D3506D4B4B434038066CB952B57E6065E9F3469D200
            28643C5811042CD4E66039DCB97CF9F25F6A306ECE097D1C1717E144D1A309A1
            51029137F43875ECACF76A02D4865EF26D770541E2375A7B3DDCC284C9391D2C
            CC856A752BE75605BA002C2E03F7A4F13B2EC090FF4D20E84B103A02888C7C77
            34FE21F07C1A08FA2E204B361B3069E566EA96B10018EDA27875AFBCC3E343BD
            FF8EA88E31665DE90E1D215D24A62E84BD5ABDFCA144A5BB6BB28FA7DADF60F9
            6191ED0101D532B8ED6665CF56CE4ECDCB4DD17C3E3E691461742541581FC831
            CE2B51B15AD8B6647BCECDFEEBFCDC2354F30608294B707D06EFDEEB1101B381
            3D4F57B6BE339B252563996E016B3A2ED822F62EE5D313A244AEEB5178F8777E
            8D7B7B8B020700E1D260F0F65910DCDA189C9A9753C9A9F1407CDB443715DF87
            7EB958CDFA8651E1000BBC1FCCD3FDC1CF02107C13238857781531542D200DEC
            B7EA02EA87F1B68E9158B8B64856B77BBDA752D827A9F9472A64E73EAB6D9E80
            C860AA18A24A8D5C778B8F24A4791821E8842C65A6DA737AAB95772026B1AD5B
            406F9809B9DE51A93F15409531224392ED87DEAA181FCD12536032727E5BD5F8
            0DC07C1466EBCD814E38156D6D9ED08349F82DE0B74595DF8C9D822EBEB67761
            CE31A5AEB8848B40E7DD02FCEEA8C66F59E137BB23252FF7FDE0BA3E6AD6D626
            C90ABF2FD1E0B753067EA7E41DF9A8E2DDACED6E434C785917B4E4EB07540F45
            7353F30FCF09AE8BE38060707D216292180CA8DE3D5BFA9903CBB7DD683F7AD2
            5F5E95E4B3461F07D0BC0240732F58A42F80159AC3BF4B4F4FBF050A99A8D3E9
            0A9D2ED7E2152B569CF77160F75ADA5D4990F01868C3834AA9540E9D3FA077FE
            D10F833BB2B101B520AF18EDDFFF0D2A29F3AED645849950972E97A1F8E6B1FF
            3C406D71E1C554923E83C9162D6BECBD40A9BF524C170912FBB867C1D19F503D
            1008A971262CACE293584D78EABD6DFE432FE12EDD7C933F741FD8066384370B
            1A7BBA5C7851848BDD44EEDBF7D491FF54555E28FAC8D2F62A0989EF1B086E1E
            2CF04C5E05643B08D8815ACF67C6B7BB0533E14578C7188F9AC0A43447CFF457
            F8CFF265798F33ACD2AB2C8DFB149E6F4AC598AE034F7C55692935DB9AD49E32
            FABA8908573BD5053AC003B93EB9C0BBE4B837AE5D4F902BAF80A2D33AF8DDBC
            0142582191C96570FFF1E0BABC8E34C23AB0A46F73AA583B8A8318632352ED87
            5F0E7E1600F5B3302274569BE3FEED030FD376F0A92EA08272F27882A09F5BA8
            3257B812C795C2124A27421B5704F6211351149364E5788B9E081228062D6486
            AF02EB48E7A4ECEB5E79391FA8F23AD6762DBCF616E8CFB66EB5257EC4D78259
            8F9E79B907FCD781DFF7C0E5E7D4F86D52F6CAE977A5BA982E6AFCE65B386053
            BE6624E45AA7CA0A03BF2248F8DFA04029F8F0A1C5D60D10FD55685F1B0D7E17
            51095DDE5B650EF2084714F86D22E476357EFB9CD1EE4D09D847CDB2B649424C
            DC1A4E848E652AE39132940306E3E34693E71DFF76C981F80B123D549A4530B9
            9705AD5A789DBBB8AC40193DED8727F997B2AB04D4E9D3A7C7949797BF8031BE
            1240954730BA0584F9B788900900AA9FF07BC07AB59E3973A664E3C68DB50A6D
            D598048C0701489F00A0BC986B4E854C7A9FB8E9B0E4E2A36725D96E6C40753B
            3D68C1331BD14BAFED54384381C31126235ABC200DDD30A0CB3F0E50F9DE17A6
            E82D98805D5D1AAEF93EE7223EB87F83BF7F70630AC2947D0216568E9A555415
            7DDFA183DE6E7764441071CC198D36F3C90502E8B55EF6DCBBAB53E6076DDBB6
            D03B84CF7588B4D57260E1E07386D1FBFA54711EAF2AF201EA4E00D4661A16EA
            8760A1266B3D9F696D772F58252F405B0DC16DF50A319A4729EAEF3FE29069B1
            3DC6BDF541B921C116ADD1BBB4B633C59E3B40AD2E9F77F06B6049F5555B6286
            F21841E47EB090943ED96B49B813F8BA5EA7B25FE8DD4F937FC56676B95AF83C
            1EEFB9D852B80CEA1AA7B6E4A858D3B2FC647EFE35B383BD5A01503F0540BD3E
            708E63E4F77EA62598E25D0CB31E2221F1B2CAFE60750135D45CF1010E148FC7
            A6E61D5E5BFB1112505F7CC22C2312E6C03821C1A3D26B31D2E32292AFED9177
            EC44401BA7C3AF27D5F86DF02E6FEE028BF106B5FA0E44758C91F4A59B4059ED
            5FAE0EA8DC021F05CFAFF7D6651B0C5740B92395C05B198B543E64324A9705FA
            02F86935F0FB024BE112B0BE27A8F1DBE8B5A69FFCD0DE66CE5C5FD434E51854
            BC6DBE9E91696A67B77DE3BF0433FC19C2CC1F4DF54223269DDC2A47FA94F906
            8AB70E8BFDBB9FFEF5BF817D1592264F9E3C441484D73D92B4A3C8E51A176D30
            5C07A0BA163AE9081684C14B972E3D545519E7036D6BD1C91CE12E784447C844
            01A3185F68AE3312C30088872B05B76F6C40DDF276169A382D43197D3A1D0C75
            992A037FC9FC3474FBA0E47F1CA02AD170AC095323B1B8B034C4B1155189B483
            9509CDF90082201F067D3148E393A0517E0142684F29D37D5C9D8838DCA14194
            D1CBA0D9F6553B12E0D7A481549D99D44809B2504E36806018A2B5ECCBF783CB
            195B0065CEAACB3EEADE98C4B64460DCEBB3B54B6D0996D2DFB18EDC9A72423D
            2C1AF06B1D68EFF73B54AC73DFB25C2916E80329A78EBCA9DC6F49586520C238
            350728C5AA627835CC9D07D5EAF20507D81841C830B53D51657995B119206017
            78DB969026226139D48455F7B8989CF97B18BB69A4463CDA7D96A4191104CF2F
            D1D8C30360596733CB69B6A0E7030195B74BF40624E04C3A08636D2E34F49400
            961E007D3BCFDF0450F7582EE8AFC3F22B20A362DDAA9EBACA6AC486A37974DC
            48F4577F80D598018A439A16BF25CAD6A6E4E78E56AB939F8A87E75F020B70B8
            16BFE1BF59DC9740E977AB6DBC80C80A2D7E7B80DFC742F03BD392F45824C14F
            966A2850C0EFF506833B2D1090B7B56861314BC6978C880C905165BF075189E7
            8815EF7C4EBC1FD456B2F4CA6A144C37CC1E4D3E7DB68F454840E5C7638C46E3
            8504400840F54600D54F004C1F4482D0454FC89B922CDFBA7CF9F2068B10525F
            B437BE6DA240C5857A826F838F84FA7AC84D698690DF76AA5AECD7C604D4835F
            FE8446A72F447FDA0B9019AC521E7C93032A1F588BE68D47B7DFFECF0354EFF3
            6D9208D3BD0E9AE635E5ACEAB00EFE33A902F29E477328C76D70313CC99701F7
            880259673E19F59B5680820F2D8917C0BD5B60EC5EEE563D86A0783F4A305106
            F5AE22284405EFB875642D781600355D0B507D13FCC512D191162AB07655E43B
            A7F93968E0D7A87953824060D0862D3266137B9DCE3DE5FFEE7BD4417F2AD679
            2316D05ABD8A90E5247AF729CB30610F269FCE5572E2EE8B4B5C6F14F07D2E15
            01CBEBF330B4A2575ECE44ADF6EEB326AD8FC0F83E35A7135FE0F1A701501F55
            C6425CC24346223CEBD1721A41F47D779470BB56BCD67DF1495323105EA405A8
            300EDF24C8F440F05948BEE41B23889DB9E074294BBBEC389874AF97537746FF
            823F8EEF89B7751418DEC5F7ADFF0E80BA37DED64BA0788D01139B4B4577F33A
            172189C8EC86E482DCCCB3FA222E61AD51101ED0E237586AAB7AE7E54CD0E677
            E2DA484C1E38A3C16F78C16752F372A779FBBDDD1403161787E0F74EE0F76D5A
            FCDE1B9F34250AE1C5A59A0A14DDACA7FA078243117E166F6BE6A27C2AE11150
            8DB9A6DAAD8F570594A2C752F3DBACC741D8A109A86969699100A4AFC39FBF7C
            1B1DFDC81545450F0B844C07403D4674BA7DB2DB3D1426C41D2B56ACC8AE0DE3
            1B8B76C724FE5B2FA225D0C9D7728127F83CF980616B4C76CFA42EA8F29202A7
            C60254B7CB83D2A72E456FEDDC8FC2C3FECA4CC341B5ACA41C2D7C622CBA6FC4
            4DFF484055FAD962BB1134C20D6039591CD500D540F21E15C13C6D2E9FACCA79
            37C09417A82C2EEA55F05BA5600AA0D55E4530DD06D6462B8F06A0CA8CBA2486
            BBF6C9CF39589D36402904B4EDC70150678704544A37BA85F2F17EAFD6DA1277
            5401F09BC94764F0A80C3C27883199E7A12C4F24C800CD1ACA1D3CE0BD2D5ACB
            D2FE77877B27A7E67BBD3881BFEF8280BC59D3E2406841B23D6786565BB3ACB6
            A531449C143C3EFC02166C9355C9A78FA4F13F017CE745133253ED5EC56241E8
            8D287BF470ED684EB6FBA20471BDDA52BE6F394F756B07FAF32B331692CA999C
            030DCA12115BDB2D2FF737FF9E181F3330A6B69FEF809ADD0389F2CFED861159
            780ADADA5C4D69F2EE2763EE48B341C0A5138333C28072F14E04116E0DB1A250
            A10069BCE36278C7296A3C5496F9317B1E94B5F1BC6F616CCC85B1F1B836BFD9
            9BF976E3F03B907A82836C6BE2BDD0D60D6AFCF601EACE72B73C4C2D13CDEED8
            84EBF444582510D449AA418434A56DDE884C6F494C97DE27FF973FD5EE517D76
            E2E4C97761B0E030C643651E958790D68C3B0660CCC30B5E53E6722D81C2672E
            5DBAD481CE530206DF2632F40CB433896B42DE7373D4018C5D9B8F4A67DC1122
            C5506301EA7BDBF6A3710F2D4122A0BE7FA9811307D4520EA873C7A2FBEFFDE7
            022AA77DF10937334A9E8822C2655C10848A5CA445FE8831BE3DD0CF60E88F4B
            B6FF76D699CAEA022A94F46FAD6C126A941D9FF8208C87E73D210015C6DD4B1E
            A17C429D01D592D409C4EF07222656ADB0837E25C34FCC17D83CD4B94ABF750E
            773E9A6A3FB248A9CB9AF85E0426034BD4F7C428616C564FDF92AD6A5BAD894B
            A28930B93A800A02723EF07F86968085775D9767CF79502B930F8CC591F0FC8B
            3505D4ECB8A4871846BF1F174A770C57E1CDDF015079A20489B81F66084F8376
            EAD57C12BCFBDE4A108E83D082BB7BAB1CAD0240DD0A20754B89C69EB78081DF
            A7739FD46A07F07011F0606A750015149927A289384B8BDF3262EB11F05B2BDE
            300FBF194984976A02A87C7B462AC3A361FE3F0235B5AA4DA8D38A7781E218C1
            69FEE33281DF57A269D3A645399D4EAEA11B41B0CF0150E5CB3A07A2A3A3A714
            1716CE671827508361CA8A679E395E75131A9FB8D5906D499C0083FD09825114
            5FDEE39E5F2EC47E7352FA340CA617AB2AA33100F5CFE37674C73D3351EE8953
            C80020E9727B90006A9340C8FF2B40E594D9BC7D07EC91C78818F78F10042532
            0C4C8A1AE741FBCBAB53FE5A8FE5C1DD4E1FCBA9A8A3612C540C82E46198C40B
            1B0350BDF5253D610465D615C2A2AF00ADBF9E53F8A11588A2E2B03F006AB2FD
            C8B3FC5A55800A8374564A23012A28C4EBF21B0050ABA2FA04D4D810802A2B2B
            E0F8C19A026A765CBB8B1921B344848722AFE251E91E3F988215FE9B8EB07BBA
            6B789B5705A8D00FB3521A095081DFEB497D03AA2571920EA3458067824B63FE
            738726D19F64C3B70DA01612D1E43D32F31D186B8302835CA8022A0F7CDFAA45
            8B69D083E9A228C64B92548E65B90F12C5F630896603E707666464D47BD0EFFA
            A09DB1ED230D447E0C06FA64D0E2F51EE814C5D100B1DD4E99CDD20AD21C4C8D
            01A8331E7F016D786317D28375EAF648A8E305ED507E71093A9D5FC45704FE5F
            01AA9FB8BBBF41C47D40785D0302A64F94408C2E1F08C801833B946E59E13A4F
            E515388F3E92EC73BC50AC3B2FA0B60C05A814912EBDF20E7F5D9DF6FA94B7F9
            3A821F6D8C255F4EFB9BB7B77A64794314160694547399DCE718F52B888A0801
            9316C11EAB3EA72427217422809C22D481BFDB2331B9510350C1B063F392EDB9
            B3B5EA0401BB384A6309D007A8CF415D7C4F8E03EA9300BE8F156A0BD84DC4DE
            66A456AEDB4C6BE2BDD11A4B803AE5E80BDD89DDF4EE7306A8F18933DB10DD3C
            AD6333FCA5CA6436A157FEE155D56D1B3F6A642002DFCEBAD2A9A128F1B2F5DE
            4845DF02A28D4F2D3CAC79AC1100F53D00542D058ABFF1FC14FBE1595ACF7F18
            9FF86C24161ED20454C45E80F132CE07A8F36288383304BF5F8DB2C78CD45CE2
            B7260D8F2264630840FD0000F56E3FA0665A6CDD4066BFA327D8A29608C3770E
            BB1806E5EB14D3EF09230684E57E22167AFBD3BC05F789C11BB465D3198F9C76
            AB6F5C5502D4D9B3679B8B0A0A9602987E2108420EA0F93DB22C0FE27FF3C00E
            8CD2DD51D1D123E7CE9D5BE324CE0D4DFCB0BF40D8B3A2404629EBFEDE589C14
            444E06417461B2EFF06DB5CA6A60407DE79D6CF4F0ECE791D303562998D13C13
            FDB2A726A22D3B3E42BBB3FE83C2C24CA8B0B00400F54134E6FE5BFEDF00AA9F
            B25BB4B0608FF1129D62ADCAD7C08CBED84048323FE1EEB7BCE41050A2F3060F
            28D053DCB7ABCFDAFC30F6824B64417A1B26C225219C927842EC1B53ED47F654
            AB9DA88748ADBFF3D8AF53A5D016EA0B00EE9393D1D17A395AB627AE4D4B13D1
            3D0F1AF2403920607FF05939E2D3BA41881C84FE7A0EEE9802D6CAA52E1540F5
            3A25A151C9A773B8EF0417B01B4D840C776A38A9480867A4DA0FA76BB511148D
            95918230BE58035029668BC0E27958A9CB9A380DB4FEA783BD2A0304EC0E5714
            19A4E5A4C297DD61AE3E5F42359C54287B4BCF74F755952F3398EA0B50F7C65F
            901847D0C58552E5B922787F312CE3EFFD812EAAA26C6BD23DC0F127C3B1D0A6
            4C43A9E23CF57A63D33D2006D393F38FFE1CAA4CE0F706E0F7BD9AFC6668656A
            5E4E9AF6F38919518290A6C56FB8BA24D5EE8D7C946D4D78D888C567B4F94DDF
            77857242B3248D8E2078B5A65737A5EF98A930B273C1A1334A4271A7EEB92822
            DE7B8655EE7FEFD8A73994A14905F9A6DDFE7D5B3EC704A29F06FC99187C0E95
            93CEBFA245C8103FFF2B016A5A5A5A124FC7A613C5561E49FA9552BA03ACD462
            00D334008F2822CB3D97AC5C199231E7823E8D6DDDCA497419A07DDFC63383F0
            FC7830090B40139FE68E165EA96E36773F3524A09E3A5180468E7D121DFCEF2F
            0A709E395386D246DD8EE6CCBC1FDD3DEA09B46BEFE72832220CE5179C510075
            EC03B76A026ACAEEED48D7B635FAEEAB8388EF7577EC781932994CCA92717171
            B1F23B262606B95C2E24F2BCF4BECD357E5D10844A6D3B5F00F52CDEC284601E
            7D0466AC5919C35711CAEE840ABA81A5191E2A78799812C7954EF6870FFCC8D2
            B6858484574C4448D53A36237B5755D3030FD857D536874BC78FCDDCE9D17070
            F0C632A50BF3F37267682D59D686DE8C6C1DDB4CAF7B10DE84070C8FE3995144
            FCD7422F6F0F8C7F1758CFDBCAB1344D87483CA3788BDA617A6F00035A422819
            9E9CEF150EDCC904C6F914AAE289A9DC4FE94B2979B923B5DA976549DA1049F0
            BD5A4E2E94D159307794631499F1896308432FA805C8F05A986C3F36CB7D93B5
            8ECD58131F89C064618863332F1A0DEE096AE71A43517D016A7D917745248127
            967FD84848B85363BFD41B8B9A79E0BD5FF00878BE3F787B28DA176F7B5664E4
            212D7E83B2B931F974EEBD9ACF5B13D7476272DF194DA726343B252F47491491
            6549188531591382DF07805F7DB5F8C5435B4660FCACD6B1197E2CA854E79CC0
            BDEAB9A7B6C8D0DB30472F70ABF010944E06F36412B42D23B8AC8360A4158BEC
            553D2203D432FE442A67CCD9B264FBE1295859B509A011234618A3A3A31F833F
            F9725702FC4C10052152A6340F04F876E8985D4BCF43AF5EAE49E8B0EE451DCF
            42E00353E8B81F412B7B2C25BF7AC71F82A9A100D5E396D0D38B5E41196BDF46
            E63023009D1B75BCD0865E5C351DB56AD30CDD32F451F4D9973F281EBFD502D4
            3DDB91D8BA15FAE6CB2FD12FBFFC82E2E3AD28223C02198C46B477CF1E64B3D9
            5002FC7CF1C57F50E7CED783D55BA838ACF07A93939301D0CF6E6263002AB7EA
            0CAD0FEBF264195B0481B9E08794B11886C470FE3DCFEE5AEC91ED5ACB73BB9B
            350BD3C9E69E14E355C087765A96AA371E305D8DC2E8242E88B7B56861364BC6
            759158B8AB54035039C1DB2C064DFA21540DE267DBC23CC68F00DC3B68817B98
            3760F7FDD5D9BBAF05E1ACB88B2EC4D8D3173ABD3708A88B6444FD119AB24171
            DA66377AF6DD098249394C8FD07A102C11C1E0E03D4C4FED0C917EFEE56E2EB4
            40283F05659E957924E0A0FFBB00A8B7AA358A1F273A632D7C15E6CFE0528D25
            4410F9692088567AEB4ABC0DE411574C2235DAF63D09A3D768012A3C3F1F0075
            86968075C83C2E6C9B47B0C692B1169D4F80BA13B53718E3E5F984E129009844
            EBF89392385EA6BF1282E7FF6A8F7E638CC6B26930ED8B4F9A02E365A1A8C26F
            9FD5B72D392FF766B56739BF4BAC05AF8461E1CE526D404DF78356767CD22D50
            D74BD07F516AFC0665ED07A3D1738D16A066C6D9E6450AC24C2D7E3B195A1665
            8F7E842F1967C525A6C0A5EDA0749A8365852FA3D5118948297D83C2CF56D465
            491C6220F875B51528258214A399A016DCC35740CF02D4F4F4F4EEF0D6EB115F
            BE42E88C9EB10E20B464B8E93E78F968B058073CF7DC73E7552087F7E26DCD22
            19DA00DAF70D1C4C39D095F19C7888A457771F4C8D1A0A5077BEFF099A386D19
            8FDC8274A280CACB9DA86FCAB568DCE8DB5056E69768E31B1F20A724298E491C
            509F9D37168DB9EF969080AA0740DDF5FEFBE8E75F7E466EB71B9D3E751A2526
            252283C1802428CB6EB7233D3CD3B16347949393A358AB71B17168D0E0C12832
            F2ECE4E48D01A859CD92FE05FD364E6048CF100658A51453D48D60FC2F3E6023
            88804A98B4E8A3D3B9D3E7860884B0C79A381240F3C52ACE7FBE0A36E283FEF3
            873CE0781411A66B05C6F79E59643F1BA8EEDAEA2C0F66B6B07503D57D1F8C3F
            510DD87D20EDA602ED9372F2AFD8A20D49BE55718483B69AC10A9C6D44788E9A
            F39457AB6747312EB9D47F9C22CBD2EE2E90DBABE1DD22829505B377FFE88BBC
            BC4E5D82A30F79EBB23503CEBD164E84148DC839082CD2013D7DB179F75A13BB
            8212B009FABF5DB015E113E676D965B8A477C9CFF9C17579836B082B79D08A72
            953390BE6C27E96A16485574BE00AA371A54C17C98238FF840A0D23DCA122F34
            0AC06837B0E7E19A4613E3C001EFBA468BDF20570FE6E75DDD598DDF9F344B8C
            77C9E8553321BDB4F80D56E04DA054EEE0D73EB2267581FE7CCD44703B973AA0
            E663A7EEE2E4D25FF382EBE2FC66A524C32C08A3D422259995A341AC62650AC6
            FDAD6684DF517330F2D6C53EA584DD167876FBACFA78A2012C7E2369CC1B2765
            5FEA8934843B409E05A893264E7C86617C2FFC7907083C9E1DE397651919F773
            AF5F8FC7F3AF8888888373E7CE553D17742E887BB809445C0283E806E6639C93
            CADBE1AD1F0E0C325D1B6A08403D535C8A468E59800E7CF93F1466362AD7B8B5
            2849D4EBE10B2FA2D7EB2A96650B0ACFA0F93347A1B407072199E743D50054A1
            754BF4BFAFBE4679F979154BBB070F1E44B1B1B1C862B1280E4E91915148A783
            A9027594973B502B00E12B2EBFA2D27B358A851A97783523E84B3E49FD1397FA
            8E7670327827EFB7329306840A289F65BDE0723DA6DF6A79AEFA626DBEA1A7E2
            683F38EE6D66BB51A4E855B0BA22D54C15259939636E19915929F64321A32571
            4B9BC5FFFE2294750F0D01EA30E13EA73A7467EF1355C706AE29F1AC3722D69B
            652A0B3031AFD6317C2239FFF087C1F7F1B08BA74E97BF1A25E806693B72B0FD
            29F69C1EFE6B7B6392AE1704B655AF12EAD007523988E9FAA7E6FF5269AE6559
            132E474AB6137C61E56C27CADE5399DE2D5CDEF58C37ED5B56F425ED90CEB515
            84E1950EB5E5684ACB803903534FE5EC0BAE8B1FD62F63F84D50AE7A04D7E53F
            AB4C91DCAF87FDC8EE9AF66F7D016A76B3C44B2311B9A6886A6F358001F3A95A
            A6204E3C9B0BCCDDC598A9C78CD679974EDD30179646E9748BAE3E511988AAA2
            3DB1ED3A0B44D8AA162BDA378E730913FBAB65B7E1D9A3C072DE0CF75DA4C66F
            9EDC4070A12B7A96E4FCC6AFED8DE9D096880EE037B9CAA1EA2047CB294137F7
            3E7D76F0095F5D3C6CE9EB464292D5F8EDF307E8DFD317E738DB6A1B0496F316
            356BD61737F81B86D90DDA809AD815C6E0013540F5297BFF03DE0DEE0A987336
            A0A6A7BF6E329986389DCEEF29A517C2C3CF646464687A759D4BDADFBC6D0759
            16F812C3557C1F41F426737ED923E087ABB35F5015D537A0BA0130172D79152D
            79610B8A8830572A8F2903E3ECF383A5650E3478400FB470C10414AE2728B367
            BFCA4E49BBDE4361EDDAA252005C0E9CDC2AE57BA9DF7DF79D629D5E72C925CA
            F5F0F070E577595999F29BEF9F72AB35981A03503F09036DD6CCBE121169ADE5
            E60F13837A185A085AE6639AF5C725CE07613FC3A3B9E4AB2CC72CCDB31BA7FB
            1D0D40BB8DA6E5E49D482C246B59A93EE171526668589FFCCA09CAFD041A7DBA
            88D162B01A04AD03E21158E029E51615E4E54CAF8FFD53254B07264360BC0BA0
            5987416775C48885C36F7D24113A9D91E97F0D02EAFDEFA039C003ADCB487EC7
            AC64F7A80C0CDEF46D7466E0B1087EBED14D3C3C325307672521A99083523635
            395F259D973571841EE1B5C05F5D702F8BDEC3F1FFC54E476A72E90945F073E5
            44B6FEFE76242603D5960CB9A33EF0633900FE944A7D02D68E88E82EB82B422D
            9C1C80B19D60DA2738D76B75A8BE00D51F1CBF2084976F7070FC8AF78B4F1A28
            32B41174E16855EF747ECC83B113A097CFED959FB3BAA6EFE82785DFD8F39991
            E07F69F0DB09A0FD508A3DB7922732F7BA3520B44E9BDFF47F22F0BB7BE94925
            A1B9D799EFD816981FB768F39B65405D9383EBDA1B9F743D0018F01B456AF15B
            4042DF9E7987BE51EEB726F5D321B60D4AD551156F5DB852E246D20D7DEDC73E
            51E59D257136F0798EDA1E2A57FE41C67D6E22F25DD79F3A7AA4427C3FFCF0C3
            1160DDF0308397C2C77B18A55D88209C811B0E528FE7F9652B57BE8FCE13F226
            B4E5B91D4927970F88244657839EFE68B763952363D486EA1B503FFFEC7B74CF
            E879C8257B1430E3160DA5F4AC45390C33862FF5FAC909D666E7CB2E412B973F
            825A358F447BBBF6F94778F92AFB6BF185EBC09A1AAE364839094A4C550A0626
            7E1531FAF259A99894D44FC230C0DC740242546B4DD89B8B94DD191CAB796FBC
            6D8A91E1A7A892C62C54827176C4CDE87A82853702CF9A718D1504D8DD22C143
            19C3915A6570ED1580F604A378A89AD5581BE2B920230879DFE0B3EEFFCA84C2
            7CB9326909F4FDFD3DEDB95B029FE3CBBD6686A7BB1133564ECAAE1C19E0E0D8
            23F858D93E6BC27A104EF751153E99BD4771F60B4C3FA447DECF1541D67745B6
            8ED519F46F8461D25B6D09D69BCB93AD8ACA8B991C782C820767D721348F05ED
            E1F9FB122C895C9D846FEA56F8D7617A1E133A2E2EF139B340463B54E6A9370B
            8FFC3ED5B946F4FEF3CF4ACBC555D1B90EECB027EEA29602F1649910B9D8A9B1
            FBA13CCF583E74D91E8AB184FF7207D0BE5FF9CDDE48F62DC106F07BAD888407
            D472C22A47AF28FD5844863B02F9CDB3FD483AF175934A2284007E3F979F679C
            1C18F928D39A380DF83D1F69F01B64FB11108737259FCAA938A2E98D119DB4CA
            44F0835AFC76307967A9E81C31F0845759DB179B701D23E45D1D58DE6A8AAF5E
            91E56C7B91533FF2B6A02D85ECB8A49E94B05745845AAA69C3DECC36F27BC44D
            EFE53E1F15809A9E9E3E3CCC6C1E55565EFE2D088B1C4C692108EC2B01304682
            F09EB97CE5CA1AEF3F340465C7B66F8D88FCA691085D0044BD6BF388CDF79088
            A7FB9EFA6F9DCFF8F9A93E01958717BCEBDE39E8D383DF23A351EFB346811926
            634574240EB01E49461200A5FF7B87D385BA75BA14652C7D08B5B046A0BDDDFE
            1980AAF0D16A1B0416EA96E084BF81C4414DE00E548CFE015D52E13080318E87
            CB170A1A07D939F9F64F732908E0D4C2B3A399F0739C6E59DE06BCEDEC60DAC9
            A47D162EFFF317E0099F9C7C7B129AC55AEBC1BAE6AC736B58A6FE736A65547E
            5EC86B3B31B986CE305AF481A56D0B0316F741232E567B77AF70A03F82AE365D
            C86FFB812EEEA4C985DD3340988CC30C47045BF315C1D2197DCD66A7F7DB828E
            F564C5270C4414BFA5C34427A968F760A14B202CB779043AD5782AE1B86C397E
            195883D38137B741CF09C12DF41FC19031BD2525285E72668BB657618FB81D2C
            A4961AB18AB9F5F199C4F0445D7E9B6FC5F8DCB61213D2E1BD46C10D26B5508C
            DE8006D223A9BE601535A5730DA8FB14D0C14F879A27FE32F8164A60B4B550F7
            F2B24AA83437D99E3BE7ACF76D66BB09CB88F35BAFCA6F6827F0669B5BA05338
            BFB1E58F8E14CB9CDFB787E237A5F2ADC9F947CFEAA3EC96EDAEA06EB2C34848
            2B4D7E83F527519CC6F94D9AE5B6A15448470C8FC61AFCF60675A18FA6DA739E
            F65F57CE6D4BF49570007C3559EE3DD6A32445C81404F6143DD5663F9F371ED1
            3388C968A69E9044B7C673BEB489D33FB2E73CCBFD3D2A7A7FF2E4C9A0F1A369
            6099C683C482F7636EF8B200FEFE50E7F12C7B76D5AA3A2547AE0F52962490B4
            C640D010C56B0C33EA66E869626F33BBBE04969FEA1350D7ACDE8AE62F7D85E7
            AB522221B91C6E74FFD0FE68D4FD37235127563C77E0C3AFD182E5AFA282E212
            E53A07D4AE5776402B963D8C5AC647FEA30095EF83080CF33DB6EE0EC634EBF0
            97A30B38E1C5858B9B690B187E27F00D1523BAA8E0B4FA526B666CE2AD8280D6
            81A08C7585A85FF0D52FF8EA6701F5878A526456B2E3B01F89870DE95954F354
            7321FB3DCE360784D06CB786752F7A2DE362F8B200798FA2B6817720BCCDC1E2
            D61F2C5DA0729F9EF9472B79F0675BADE194456C05C1D1CB852A9F77147C7D02
            BCF813FE70418BC2058CADBE738795885B396532FBC883A5BB6E08481DC64909
            FE1F677BDE08D6A65A0E527F784910B2761080A58C1FB145A885562E5AA33709
            FAAF1E24DFD9B716CBBD9CCE25A02AD629767F6420A4BD3BC418AD290564559A
            9E62CF5918F81DF7A017E530CEEFDED5E1377C0A235E053714BFF7EBB034A487
            1ABF2DB6E7E0FDC648D5E037FC69804B2D43F31BFD2633E9CEDE7947BF09FC6E
            9FC5F69889084FBA7C46985A9F08DEE33A055074B1EF92554FB0592B029AC9E7
            C028133CC81F8250995FE3C78F6F298AE278F8739B5EAFFFD1E572DD0C56401F
            42C8D500AC5F1A8DC6294F3FFD748D974BEA9378042423A12B4158DC23787360
            5137A58B485EEE0CADF05475A1FA02D4FCBC6274F39069E8EBFFFE8ACC669372
            5C25A5CB9568E59229A84DBBE66795B961FD36347DDE1AE496256559D8E170A2
            7E3DAE45CFAF9A8EE263CCFF2840E594696D0F562ADD043C35B854847D6DC80B
            668A96FA39616878CF3CAF13847AFB13D260A23E6B40C4E0AA455C4F2DF22D3B
            FD2E3134B64F5E6EBD6F95EC8D6A9B28E8844C1010B67225E34E65D2F93C3E39
            6925C8F62B0BE58CAD1550C994648DD8D6D9D6A47E98A1B74582CC6E8D738FBC
            1CFF09582D01C4C11B842FF5C8784472FEA14D6A7565C524FD0B897417F4616B
            CD339618571CC59042BC9BB242C0A427C13A9D59DBBE3E97800AE3F321B0399F
            065011E47A1C9FA10095D33E6B525FCCD83B3A0093FAE0B74B4223530B2A2777
            57FA37B67D07783BCEEF36F5C36FBA2055256183779B88BC1E86F195651ACA49
            605D9C6486907632096F228A52262DE86D3F3223B00CE5B80C74E07BF0613E34
            F84D00D4536BD6AC51F636A64E9DDAEEC20B2FFC73CC9831D53ACB1448EF5B6C
            179A05AC8F681DF3CBD55F55EF2C941A71CBD485A41560998EC04A9C4565EF68
            B1DD6E7C4C2B1B415DA9BE00F5EB833FA1D7DFCE44E560952AD6A9D38DEE1B31
            005D77EDA595CADCFFE137E89D1DFB9144BDC7665C2E0FEAD6F97274E7903E48
            703B51664AFF7F14A0F2BDD4226BD12C334633004E89AB1641F183EB0CF32EB3
            1EC68C8CEA997F38E49969BE7EBBCF6A9B2E323C0B2C3E53591DEBE713310CF8
            7646967F67021ADFEB54EEF63A151882B22D894340C8AFE729A89CB55046449F
            D50FC0BF95CA629A5A761E3FF184CE175A0AA709043FC18F79BB6B511FB72A0C
            F010F4F11B2E4198D8FFE421BBD6BD0024F710465E30804077D4A22E651C703E
            30F95360E9C8DE1A9EB3D5A17305A8DC2BFBF469E77B6642FAD5340B53555415
            A02ADEEB96E3D374843DC13D3B6ACB6FBE7C50CAE89B3A4148EB1E82DF1FC5DB
            EE9679CA39E0776DC6B29FDF2554FECC4DD9C81B344E7864C527DE45285A0FF5
            989C75B0F8FDCBEB2594EE9699E7BEC093087E401D68361ADF2B773828001677
            89FE4910C59F3D1E0FDFB7DA91919171AA2615F2ECE8725CE2FD06018D5698C1
            E4D12979C7AA9DBD2390BC3920139E30626186ECCB52EB412CA34D94F0C88535
            8C7E54136AEC04E355D1F91A7A9007FC2EAC43A4A4DDCD2E0B1368D934036693
            F4884438349664AA22BE67CAF7CB8A64F933419067F43C7534BB9A8FE2CCF8C4
            D1069806222297C83E479F9A4C376FA00382BC6EF5EC4346F1135581795D89F5
            E82166FDF0FB0423C64F82B03797D540E87261C0EF2DA3F415A64333AB739C47
            516AB17B0600F11478575D790D940FA362CD80258CE85B22961EE9A17180BEE2
            DD78B26AAB6D3C586673C17289ADC9BBE914E0E6C24EFA983234A5BAB1BBB588
            032A08B01D30BE5AD44770FCC210C1F15140707C9E2C4290E95618D3173AEAA8
            E8A9D5170A5039655B3B8433E67C4CC0E8A13AF0FB6DC43CD352EDBF1F0E75BF
            37E1836D1C80F013B5E1379FF7C554FA14D833A92A7E433D63615C019E78D345
            D6B467B9BF81097A1014A36C9D482680A2F063E0F77E409D095AC40889D24D00
            10ED18631D092197C16F4619BB0D007567752BE4A1B1F81E8F9EE047A1D12277
            8270533A2A392F775D0DDBAE747456BC6D0A74DA1C60503877B828A7F2D6489D
            73D8D57548D45C1D3ADF00552E2F47FB52075402D4E4DDDB91B96DEB7A7BEF1A
            016A8880DF7E67977CEA39986A3F724DA872389F332DB6017A8CC64249FDCD58
            407E2F4329C4F28CE05B9EE1DA7039936160E35724B7B0B977F16F39A886B4D7
            D2EE4A11931120D40682B56A6315F523D59D4AEC7398F2462452C25C7E2B33FA
            9A4C0DAFAAE5496C28CAB224DE05026C22F445672E86F8DE07D5385AC1DB2A2A
            562977F4602F1B907E534D62DB1EECD4495774B46004CCED093A442EF7A78493
            ABAE2F47426C13C89895A12C954AEF169730504FC824827132F139A0A9D5457C
            BCE0E0064A423E28DE6F42FD4B033DB36B4B7BE36CD78091B12F4E10C2D5C2D6
            79C738BB23D57E684BA8726A1A1C3FCB9270071887AF030893FADC3FF5D7C7C7
            6C19A2B3534E7B4301AA5136286DF20FC7EE05B93B5E47C815D5E537806F2EE7
            B75E1056D494DF3A1FBF856AF2BB94D202B8E50DA87B59A8ED9D40DA1393D017
            C0703C947C2328975856EA41480BC645DFF23657DACFC8F23186C81B92C7F342
            DFE2CA8AA102A813274EE4E1C3620138D7F3CF0F4E9D1A2FBA5C2D0441304B92
            F4EBAA55ABAAB57FEADD644E98A1C7C2E33C0B0E1F08918AF64057E5E7754A57
            8BB0118AB22DB61B29C26F1A09362B19E329DBC504796CF2A9A3476A524E6DE8
            BC03548703ED5359F24DDEB30399DBB4AAB7F7AE9985DA3E298AA04B4A6475B6
            F250C194D1FC9EA78F7E569DBAB9A3124C964B4133BF9262720522CC0256460A
            58AE679D6DE30281F73D8C895D30074EC110FB4226C2D7BD82B4C59A927204C3
            9A702966C2C5D0F27E3E2788EEA0A1B79202E61A171C2EC64E61C43E81F97812
            5EF2031088BFD66569B12EB423BE6DA299916E04916E2018AE31117C9987FDD5
            5700F6BCFB3E814B3F419F7D5A8EA5033706A4B5AB297D10977091010B3D0866
            D78230BA0A14E72BFDFDA378742A3FF42B504E7E0001FBB107CB5F8052F55D6D
            EADA19DBBEB501CBDD0581F0A34A1D40D02A812718FA2B103908DE5F611E1ED4
            61F28D034B1FEB4E271CAC2F27459E7043D4B16B40801BD586391FE332A507AB
            4ABC51D55CE17A9B2CE3FFF52EF4AE16EC6D91D89679584723BC66BD057F0E26
            4C7EAE8ED2E1E737067E03A85E09F3E1AA607ECB887E8D19FEBE5EF84D683781
            6018CBB403286E2AFCA6BFC1852FFDFCCE3D6DF9AABAE1152BEA69DEDC6A94C3
            AE228CF500206D07A55F0FC069F3D7C5C92B6778985FF43EE099DD80D8575C19
            0D76783AAB4BF97F13264CB81C2CD20C1EB4870AC213A2C753440C06BDCBE5CA
            2B2A2A3ABD69D3A6EA1C47C1FBE213471B19CEA018E9FD5A95376415CD64840D
            D38A44A146FBE21253E18DD6C1644DF04540FA18DEEC81BA4640AA2ED517A03A
            4E1C43DFCF791A951DFD1309467DB5EB0F262653549A938B982479C32BF1FE85
            DFE1893600585DADCBA56E3732366B86AE79210301CF6B04A80D49DC090DE991
            C1C058BC9ECA62E04639EF45B0B05C30584F78E288B3A6890FAA43DCBBD52447
            1187C0E245248705D72F33525EEA91F2C2A2B1432BBE6C6313F7D064EEF0D868
            518EF54F58DE5607C654C7A8BD44749F19588F2B3BBC3EBD27224614A4B8C0FE
            01CB81B9254FBE204416FB433ED695DE6CDDDA14E7D64562C69A077F47082B76
            787405FD0B0E9D69D00EFE7F4EA1F85D2A090526415FF477E33757A2C363DB87
            45886E8B9B9188C0EF14394388EC72B8FFC4268FAB3AA917F1E6CD9B858F3FFE
            789140C83D94D2728C310FEEEA144451943D9E4312A5F7AEAC4676191ED15FC7
            D0DB462C5C10B8E6EF0B6CFD87C0D0AD3DABB99FF151B3B63646C5D7014CAFE3
            66B893B223A0FD8CACAFC3F1D5A1FA02D4D2A3BFA0CFEF1E83CEFC9C83045FB8
            C1DA90B2C46832221474CE8C5BAEAC0E4B42D4E94261EDDAA0D4039900F8C6F3
            06509BA8899AA889FE6E84274F9E1C0B40CAA3D07C0582F920C1F871CAD83AB0
            5873E0BA5192A4979E7BEEB92AB58E4CAB6D500C16B614AB44CA204A2C4D7443
            B2FDF0AEAACAF14659D1BD1C8E85017C59C1C568910F4C1B253D929FEA0B50CB
            8EFD86BEB87F222AF935D70B88E71951970B99DBB4463D794CE026406DA2266A
            A226AA35E151A346B50833993E05CBA705F6067410010437C88C7D0CDF7F9A91
            9151AD80DE3C1D8F09E1AD6ADE6011CAB22F1BD333EFF09A5065EC6CDFDE6028
            A28B0D048F47DE7CA614FEA5A5E4E73ED7D81DD304A84D80DA444DD4444D5413
            C2F7DD775F444454D4644469B40866A944690258A9D781951A03003B69D9B265
            2F54A7A0CC66B66BB18CB7E9306A16EC0DC0F7511D327B02ACCCD921CBB0D8EE
            D763BC1CEA0DF37A8BC9CB525582233706ED8AEC102B1A9C5B4119E85E27403D
            FA2BFA7CD85874E6979CBA012AF72835E82B2DF952979BAB1DB52E5601D4B66D
            50EAFEDD4D80DA444DD4444D5407C2A3478FD699CD669EA6EA5B6A32ED129CCE
            1960A5EEA0945E01F81A01E0B660E9D2A55566B9DFD5BA43ACCEE5DC1886C98D
            C156AAD11BA2697D89E898A8E5140160DA4DC4F84D1DB7949112326C670B2A0E
            B9A4066EFDF5491FC524B59145F6162803D796870054CCD8E894BC236F067E17
            08A84EFB9FE8978C65A8FC8F3F91A0AF9D53120F9A4FDD122AF8CF0F480600C5
            3C803EDF3785EBB1D7FC0B891166C5EBB736443D1E64B458D165F39E56BC879B
            00B5899AA8899AA87684D367CF8E4645451F0370BE0940FA03FC7E1A80B48B2C
            CBF7C3F7DD1D0EC72DFEA849A148399C6BB12D8812C4E9C54167ADBC19D4E97B
            7AB73CB25B71E56C30D9CDDA2550996C35134139EB0436D777449286762F3856
            A7631075A1ECE689573399BD66C0E402B558AFD5B55039D0794A0A01F0A44AD6
            65F5B9C4033B94A14F068F442E7B1E223A5DC5B1992EAFAF47E676ADBD005B1B
            E28137782AB7288BD2BE26406DA2266AA226AA1DE1710F3DD45CE7F17C0B323B
            174432B744DBC3CFE3F0F976EE13B47CF9F241D52D6C9F2569B41EA3D5525066
            049D37E8F0974E99DCD6BFE0D0F1C067944CF4D6C2574C18DFC918CF1042CB65
            82EFAE2AF24843138F5F2A33FA8A81108B5A0E426FCE4C7A04D0A857AAFDD059
            91401AE21C2A757B50568FBEC879EAE4D909C6333F40A656CDEB5E818F9A00B5
            899AA8899AA876A400AAE876BF230A828ECAB205AC143358A9FC98510CC0C832
            A06A0796CEB424DE0040BC494F706C20082919D411FD4D20BABE3D4EFD5A115D
            C21B212761A688C91C3D2204034C38109B19987AE75C51963571A4C0C398AA24
            A5E5E44BEDF5758A3DA753F077FF5F420F36511335511335D15F54B106397EFC
            F89E3C32128029DF37ED432915E167D5CA952BBFA86E614AE26F425F37127C99
            3308503D88FD4C88EE86E453BF1CF15FFFD092D81F007C8301A378A6EC9BD2CD
            9162CCC8AB4F7CD5A06105AB43D0B6059182F068A8C0EF6E8676A6D80F0F08FE
            FE5C012A3F8F9A73F80F945F508C8C063D8A8B8D4211116614191D7E56596525
            0E545478061515972A29E22223C3D10517B6E179469B00B5899AA8899AA89684
            67CF9EAD2F2E2C1CAB37181EF648D22384904C49923E0770FD1900752658A85F
            57B7B0EC162D2C5432BD1586498F40471E252E2363277588F5E8EE0BCF96656D
            930450BBC58C852BB905E860EC67C19B84B6CA20120D4DDB5AB430874BA697C2
            31195CAAE290E44D25847908E7A5604D4F0DFEFE5C01EA57077F46331E7F1EE5
            FE7E1240320C35B7C6A081377647A31EB8B9A29CC2C212F4E4532FA12347FE44
            7F9ECA470585C5E8AA8E17A18D1B66219D5ED704A84DD4444DD444B5243C69D2
            A41660DA7C6E301A7F2A2F2F1FEF72B98E85994CF71141489725E9DB65191943
            AB5BD866D4416FB13A5F8920C21D2501969D3F6BBB87E14EBDF20E7F7D1000AB
            4832AD3063721F0F4C0C60EB00F01E929A7F64DBB9EE104EBE9C8C9B8D58E8A0
            96524CF426BD75C38B8D4C3D9DFB5AF0F7E70A50D76DD886A63CB61245C6842B
            CE46F9F9C5287DCC60F4F4BCB115E57CF7DF43A8CF2D9310E3E9BB742292A19C
            7E5DAF46EBD7CE40822834016A3DD2236969ADDD184F86BEFE64F9F2E54DFD59
            CF346CD8B0304B6CEC0C98A1C73332321AFDAC7A289A3C7122F741B9C6E5F12C
            7CFEF9E70BABFBDC942953DA50499A541F63262D2DAD0318464341B67E0EFDB3
            E35CF7494D09B0E92A68FB6D0683210C706913BC43AD3296D5B2EE5E18E3FE20
            1F5F847ABFAFEE73982717D7E974FBE1C1FD50C03B220869B050791AB7A73063
            3F01A00EA94943F65913D7441361545110A07AB307485726DB8F7E9BDD2C71A4
            4811CFAA60C24AFA23B6A8D7E99C871BABB3AA7C074BC29D264C5E7622A457F3
            9D553C7C192D15F4B47BCF3F2B074A3E17809A9F578466CC598DDE7A7F3F8A08
            37238F2423B34E87663F3212DD3DAC9F52860CD79E7A6A237AE1D5ED4804F0E4
            4BC40413B469F54CF4EF7F5FAEDC5317409D3871626F82F19D3086E23C6EF771
            10746FAD58B18247E1F227B17F8C30F6E9D28C8CD76A5AF6DF91A6A6A75FA733
            1A3F2F77385E824939B2BECA0541D90FFAB9BF28086DF867507CF7C15858579D
            E36DF54163C78E6DA317C59988907740E8EF56BB273D3DBDAFD1681CE72C2FFF
            C2E1722D5DB3664DBD6FE33CF8E083F16693E91465ECAB65CB965D5D5FE5C238
            EE04326BB8A8D3B5953C1E1EDBF3A5652B56ECA9491993264EDC08CF0F2F2B2F
            4F0240CD999496D607407230B4752ECC89E35ACF4D9E3CB9B341AFFFAC3EC6CC
            649EF404643ACCC395C0A7B4AAEE079E45834C182A10D29B519E4D0EF3E8796B
            6B9ABEB3A604E3D90AE37901C8DAADFECC66202FE2607CEF080B0BEBCC31E94C
            49C99DD01637605217B7243D519DE87D75211803F3C2C3C266021F06C3D87AAB
            BACFF1255FB1B8B8F859D06446C0C474F3AC07F02202006C3926E44198A45586
            0B0CA47DF149330486E6B3004F5F82BCE10709952F76E99093C8E4133D26ADF8
            C2295880FB2846436B1238BF2189476BD217C94B238930B6542307A0373E31FB
            D6C08ABB77CDCFAF744EF65C00EAA79FFD170D1F358F03BD929CBCB4B41CFDFB
            BACBD0A6B5B35078845929C3E170A39B6E9B8A7ECA3D8EF43AAE38C9282E3202
            65BEBF1C592CD1CA3DB505D4B449936E1260F2994CA6667C02B8DD6EE4743A7F
            87F1743F4C92BD30596F33198D6F3B9CCE2C10B4B72F5CB8B0B811D97A4E682A
            086619E3FF401F3C5F1D81561D02CDF92110F0D3406BB7E8F93800A5A8BCBCDC
            2353BA0D844FDA82050B4E34F47B411BC6EB75BA956E97EB1D50B86F0FFE7EDA
            B469514E87E3D5F0F0F00165A5A5F746C5C4BC3A77EEDC7AC9FE1248A3478FB6
            C0983A04A0F115F46F6A7D940982F47E10EE73608CB60643831B17FCC7EE72BB
            D7405FCF0330AC56228649E9E9DC60180E6DBB10C4E91990AD1BA13F6E07017D
            C792254B3453BD41DF5E0D60F61F78EEB9BA8E994913260C4082B09187928539
            383DD4BDE90F3D7405F6781611427A98CD66915F73381CFCDD3F924471F4AA25
            4B1A2C9312C88631005E2FC058791DC6CA30182B1494812100E8AF7328823614
            427F8C81C13E1E3EA7C81E4FFFE52B577ED050EDF1B5E9510EF2D07737031FAA
            BD72AA3825C1C0344746465E0E20DA12068D1104A30346FF4F50D04F356D0800
            EA1478F1C53CC595DF46F5EE39F20C1D42778CA5F14624DCC9AFBB987C9A3232
            A457032763AE09EDB4B64F3231BA47C0385152CD83E9B5B63D88AECEB7E78EBF
            E3AFD7ACA0C604D4E45DDB90A96D1BB4E59D2C3466F222141D15AEE4C3A40096
            0F0C1D80663FFE404519DF7DFB1B1A3AFA09547CA65459EE75B9DC68D00DDDD1
            82F9632B40B73680CA051B08A01D20DCAE73B95CF9D06B3C0B442BB01EF420EC
            DF5F9E91712368DEF7C3F7EBCACACA0E198CC6E4679E79E678A83241D1331616
            16C6C3982CAB6EFAC0F38DEA1B506192DF05937C35F4750408BB4228B708E65A
            18006B3C0FF6E1763A5F0481341E0452BD64BF015980A74E9DDA9AA74506C5FA
            8F80762C015E4E06D0FC16EAEBC40560E073004A5D41293F0092700B11C5110D
            6539D737A00298DD04F3FB5550562240192C80FE2D86CFE1F0D90A0A2277B31C
            F9C71F7F6CDAB2A5EA34947E4075BA5C49005094CAF25600D4AEA5656533C0E2
            790A21F5E49BE70250C1426C0DF2EE95B0F0F09E303FF9257E12032EE1B65C69
            8377D801CAC5A8458B169DAC76E52A04739A949494B402D0F63CFBECB3A7A07C
            A50FC09A5F600E0B7BB4BCAC6CBFCBE3B9852F91433F2C867E1807FD300DEADE
            0CA0DA123EBF057FDB64972B6DE9CA952BEBCAEF50542740AD4FCA8C4F9C4418
            E2804AFCA38E57C2BC3F6FC22C1D00D669B888915CCEE8AC547BEE530DD93135
            A56C6BBB7BF558DCC0A78FDA88AF00544CEF56DB3FE5D49880DA2F7B272A3446
            A131A3E7A1CFBEFB0919F43AE4727B50ABE616B469F52C74D1C5ED2ACA489FBC
            04BDF5FE4748847B788C89D233E5E8DD379E465DAFBFACE29EDA002A0CFE07A0
            B8B588D21C89B1BB6363630F0218DE07037236F4E11C18906BD3274CB8C56836
            6F85C9B987523A1834FD90A997A6A6A7F794197B15FE7CEB8F1327A65447889D
            6F549F803A61C2049B40C84E93C9743108FB5DC0C0055151519F1515155D8A19
            9BACD3EB87BB3D9EDF4048F503815DEB5CA781044A900978F53F98B3C5A01455
            1C0F03C07CD068303C0F56DB1678AF3B029F01E16C0081F90A8C875B25594E01
            B977A0A1FAB73E0175D2A8512D98D9FC1628815DC08AE40AFE8CE8E8E82FF3F2
            F22EE389D141E05F0FCA6196A19AAB2B7E40F548D245168BA5A8B8A8E82500D4
            C1674A4A0601B8BDADF95C2303AA6F8572BC5E1497C994164B1ECF53D1B1B18B
            615C85C3587A04E6F014E0A701789D0273B64E860F5FC6D589229F0FB9A010DE
            ECDF06006BF47E73783857B6372D5BBE7C385C62D07F7CEE772782900A16FDAF
            7C2C42BF1C80367502D9D7B7A64BF035A5F3065079A6798CC91A10D9519E4A90
            C4284698F0339C6588EE06C81A71BE2CF5723A10D536C6A313F6EA08E9E4D188
            3CC4D742E0BBD344A0D769253A6F4C401DB07F373A04FAFFC09B27A152B74B59
            EE753ADDE8B20E8968F77B4B2B9E3F7AE404BA7BD413E8D0913F90D96440E50E
            17BAD8D606BDB47A264AB0B5A8B8AF36800A83EF651848F700A04E8081BECA7F
            DDB7B1FF09B750400837834B5309635FC03D55EE4980304841846C01C1F2C61F
            7FFE39F1FF3BA002503D01C27E162824FC185B5F28AFC8FFDDE0C183F5AD5AB4
            7819FAEB504DCE8D57453E40FD0D785B0882AEA3FF3ADF0F1704E161B05CB705
            0BD9C9F7DF1FCBC2C29E6518FF006D5CD290FD5B5F80CA2D7118C3F78699CD2F
            0268FE0CE5DD00E51DF17F3F69FCF8AB0198368119BE3626266669B045AE467E
            400525E7D2E79E7BEE2894DF1300E15600AD85AB56ADFA53F3B94606D471E3C6
            B50390DB0596687BB7CB356DF98A15153C837125B46AD9F225E8A03883C97457
            5DB7697C80FA1DB4E73028853754002ACF7826498F6341D801E337D3D70F7BA0
            1F2E0685A41BEF3F7E6D4A7AFA601002FF02307EA621F6E403E9BC01D47DD6A4
            BE8CD197414D8D77078112AFCC1B869015C23DB7A4E61DD9DF909D52F3B6278C
            2088BC84947473EA80AA244C67F20B2683674A97E3C75597B21A1B507F2EA5E8
            861B27286DE64E5E1E8F8C7A5CDB116DDA38570997C1E9D119CFA30D6F7E808C
            46BDB224CCE09E85B3C7A2A177F73DAB9EDA002A6898592061BA82B0B8162C92
            EFEAE37D7D16EA9BF0429B4198A7C3A52A85D8F946F505A80A70FC5F7BE7015F
            55B1FCF1736EBFE981802028228A0AA282288A221D7D08A2341B18C4424DA588
            28020A8A422A243405019F027604952E8A3E9EA282EFD99E8A0501A949486E92
            5BCFFF3B27E7E67F8D0984EEF3653F1F4872EF39BBB3B3B3F39BD99D9D753A5F
            B759ADC2E39E58EC7F88D81C356A5423C0CF17BA347BA2253E3EDE8197F60D12
            94CF185C519D776459AF3A807332CAC902D43163C6447A3C9EA5F0F7269FC793
            94919DFDBBE5440196B31A36BC32C26EFF6EDAB469D58AD8AD08A8D5A5E57403
            6A6A6AEAADF4FB75406A83C3E9EC5D1134A1A739605B70B42D9AEA14014EFAF6
            19F361075EEFCD47DA0A00D05603E49758ACD676696969D5E6DFC92A7F1A402D
            CB96A42D0250EB540454B37E4DB612E0F3A7BB1CD831FE7433E948A5EC288FE3
            7D876ABAD2538577AA0756299A446EDD02FD556E8A9F6E40FD8F2BA074EF99A8
            78027EDD43F578BCCAB52D9B29CB5F9CAA03EABAF59F2823C76428875DC58ACD
            66558A0A8B953B6FEBA44C9D3454898AFE3D89C7B5E49B942456E575288FD628
            8F2F4F467F531212AE8178493FF962465656EAC9E2E3E92C7836AD148BE5E313
            0554BCD3F64CEED7A9E7DF7886379EAE685E298989893FD2B678A8AD4E579BD5
            2DF7E10D478487EF3851401D3D7A743DAFC7F30D0A7C2732D733D43B3DDE72BC
            802A11C6E8C88F4F06A062E876D754757155802ACBBDF9F9F9CFD8ADD6140C8A
            2199D9D9F38EA79DEA1631D062A3A3BF86A6EFE95BD723F22F39F96D745C73B7
            D77BD59C3973F69D4ABA2A2BC70DA85A354055AD6203BDB25215A04A23B6B2FC
            B71F06FCEACD5DF376FCA9A23C37D46D9C6AD24C33004CB5AA7044DD3B0DF837
            6A26E5CE232D559F4E40EDBEE95DE567AF45E9DB6FB4B237BF40B198CDFA926F
            8B4B1A2B6B56642A9F7FFEADF260E233CACFBBF729E1E14EC55554ACB4BAACA9
            B22067BC727683B83FB4733C808A127813E1BB19E1BB2518F65EB1609D5E10F0
            F99E40617D2D9378D1A245A5E2618485858D0624AEF67BBD3B99684F7ABDDE5D
            168BE531ACE62E3EAFB7398A651FBF7FC7E7EF01AC8F07EB4B1A39F26FAAD93C
            DCA428E13E4D5B5364B7E72C983EBDD0A0E732B3AAA651DFE37AA8BDA23CA1F2
            139E4DCACCC9D9CA6469C3638FF02F024B790600F576055A5BF0EC08ACE3A67E
            9FEF5793C5320D2BF9A81735248E18D1039A12306A248DE71CDAFC56339B3F61
            16CC0D558EC6D9EF47ED76FB25EED2D26FCC56EB74EAFFB1CA7A1313EF0D733A
            17B83D9E89D0FA84720CF3513FE262B53E66B7D99AA0347FC6EB9F107A6C433C
            CA43870E0D860F774193DF623265A66566AE82C60487DDDEA7A4B4B48DDCCDC0
            987C02E87C6BB1D926321675E1FB543E5F9D1172FE93BAC20A0A0A4621831D7D
            3E5FBEE2F7A765CE9AF561F99825255D4B9D53A51FC6B84CE5633772F31472B3
            F9687D318CAC1493D95CC7E7F7AFC0237F05B9FB1C19F922145013EEBE3B4AAD
            5DFB51FADD1A19CA430E9EE0FB6D55D69B927293D56279C7E376CF07541EAC0E
            5F756F0B19A1EE8EA2DBFC81C01CF85A7E49461050E95B73B9535A9694F1A625
            4829213333B3DCE80C9519C666361F7D87DC7C42BD738232234BEF4A2030CA6A
            B57602A05DB4FB724CEDDA2F545C0930226385FE00FCC9B0C05B3CD417A16141
            65803A6EDCB8D8D2E2E27710A6063277A1FF73A51AC5D80A18C638F79093218C
            C933F4694348DF9FA5CE629E7902B97A9CFE4866D97CBCD32B555595B957C29C
            FF8277BFB13B9D0F151616C64484852D44BE166826D33EE4506895737CE1569B
            ED33AFDBFD1EBC99CC3B09F4BD3DFC4A0A8D13906032DE49122CA3BD774BEDF6
            67671B2B09CC9D7369F3618C868B90DB5FA1239739B425B43FFA3E725EDE68E6
            7B37435EC653CF8DD499551150472525DDE0579431D012EEF5F9DE428E734323
            BFD5F575CF7F990E5F5ED50C8D54CD4A612090DCF9C08EB7956A94AA00559221
            C0149762D26EEDB8EFC775D5A9EB7495D5679DD7C61A302DB5ABEA79EE2ABD53
            DD43D57C5AE0814E077E7CEE48F59DDEA0A4779483F648E5DE7B2628DBBEDBA1
            A0440054B7D2A2791365CE8C51CAD8477295F73FF9420753F15CEBC6462B6953
            462A9DBA5C55693BC7B987FA288AED090470892F1078A0B2A30586E5BD1689FF
            B0B8B8B8775E5E9E7AF6D96767A1E887022CFAF1849292928F4C9AF65000308C
            8C8CBCBA883ECB119CA8A828E5E0C183EBF192BA485D4CE8DB989CB3222222CE
            96BFDD6EB782A27982493651220799609D686B3DA0B610657B794C4C4C2B7E57
            98B8EFC8993C391611151979958CF4E1C242B9D8602093E61F069DDDA92317E5
            D7488E4D300915406FABAD2C18E5972A58207B70B7D1E6B3E1E1E1B14C36E5F0
            E1C3FBE55C1D9F0DE0E782A07234F6AC16391C8EF6F45DE8967EAF0364EEAEC2
            1297BAA78787858D721517DF54D5B9CFCACA9021431AC0DB1701E31B82474068
            6B2D3C89875772BC46859783A4BF3CE390ED0278B497311A8432EC7556DDBA43
            0FECDFAFDF42040F1580F71714B5A4283D87B1DE081FE761E40C33C6C489C194
            89527A101EC8D958057A7FE4DDFB83CA56CE45868587BF56545CBC88F75BC8B8
            F8CBC665ABB4190A3495C88F9C715EE8743A1B884C886CA0ECB2E0EF60BEDE82
            6C7493E7468D1A15EEF3789EB5D9ED77C0637028A0B85CAEED664D1B9056C501
            7DE81A85129D8EA21C3DB31AFBBEB451175ECE62AEF513D915BE414F3EF48C63
            7CE6CA33414005FC9BA5A7A7EF4C484878BA76AD5A630BF3F3DBA76565C95697
            4A9F7AD3A7F94199C118D9477FDEA4C2BB8332234790DC25250BE06B6FFAAE27
            6261FEB8D04789E959590BA42D318A0EE7E727F2DE13D425C144227F7B5459D5
            08047A00222F52D7C315FB311EC3CE1508C8498E2F9C6161BDAAB39CAD47DF1F
            3A9449BF1F84BFBA33565854F41F80E581ACB27E2929C9C9DFC08B487E7D232A
            226238DF4B42062FC6F3353257A53077A5BF3BCD164B6B31D0A2A3A2FE5578F8
            F014E6E72E7E9F2D4776A4AF2277B4B7A5B8B4B433323A5FCEC95277AB20F8C3
            C301F0301D7D51478E90517F00A0CBDEB56BD743F5EAD5BB00607C1E23EE2A89
            5696B95C5A5AFABDDF6CEE3F333DFD73A33F96FC43879E81BFC9F04E953AD009
            12FCF41B32DA8371B82308A8FAB95E45C9098F88A82F51F5D0A801C033DBEED9
            93DADF88F15037D43D7F9B53518F00A82665BFCF37A0D3C11FFF5E9D495C19A0
            EADE29FF976881199D0FFC38F6583CDE535D64A9F7B0D7B9C86932F52DD50255
            126678A79B2D8ABF7FFB03BF1CF1ACDFE904D4AEEB562AFE3AF594C71ECD5116
            BFB64E0F3892F3A575E3629436975DA4AC58BF45B1582D8A000A1A489990728F
            F2C090DBAA6CE778001565710D42BD06A51D89C25D8C30A663057EA1848C33A0
            700502FA0693FE9F28BF3B9874CD90030131134A6F078AA79E283FDE1DC373AD
            519ADD9900625D1660A5EEC67A5DC37BA3C5BBA32F6F3339AF40A065B9AF94B6
            9B528F8789D609E1FF676A6AEAF53CF30EEFBAA9D3CAF73BF9BD31BF7B98603B
            79EE62DEFB81F663996867310967651A802707BA01BC47F13876A38C0EF2FC39
            F42B06EF659278C8C150FFD082D23B9789FA3613B7391EC8AFD02F8AE97CDE0D
            E79F4CBAECAC9933938DFAB3782E116F318FC9FB2BDFD74399D641094CAB4CE9
            A5A4A539033FFDB4007EDC8EB1725D10F8A5C8713794EC39D4A15FB48B02C221
            36EF86F787E4EFE4C4C45C8065187CCCA3EFBF42BB9CAD8CA5ADA912BC6458EF
            AF000C5789F78992B0CB33F47D243F2D28CC61A525254DA1D3CF187C87A7F025
            DE812CBF5F401FDF847FCF0797E30594F86E06BF7AA1E31BDE8F46E99E8BA1F0
            097FF716AF383531B107C6D29B7C27DE8B9F71F9957168443B1125C5C50FE11D
            3E53857CD9CDC89703C3003E1F809E3DBC771E5F39192B0BE0F636E377B32167
            0FE1394DE39962DAFD81B66A53FFD978DA8BE0D3B0CA96CB7947BCEDC480C9F4
            407646C6D2A3C9BB64F04136D622B336E44C5616C21987F391C7CF3090BAE8C7
            3E2A002ABC9E8C51F498DBE5BA2E7DE6CC8F68F33CDA5C058F9AC9796D458E40
            85C80C639485579962CCAD0D8CAB9BFE881C8BCC36441E3F3797ED2FBA46E0F9
            5B346D19FD3C07F9FB91B129A68EA64AF0A482A63D056F2756EC87448EDB2C96
            1D8CC51B7C7FDBD1FA6D8CF36DB4FB1AB4F8E0B1ECAF87D91D8EF3E9C34AE4A7
            BFF017FE7C04E05FC13C2B65780A647C94B218880ED07F91CC4380F4270CB07F
            63C80CA59E86CC897FC91C03FC3F83DEA98C6F637EDA91CD1DC8D03AEA92958F
            5CDE950C5437C09B2FA0FF62F8F2AAA38C87DF438B977A2F81363997DD061E34
            E6DFABD4B397F7F6D1760378570B1E49B20A7D2542029D684B64C3099D625C98
            E8C745BA3E09E878D047B24C49062BEA7D0D43BBB5AE7714C5C53B17C9DCF37B
            BDF764CE9CB944EA53D7D7397F0B9D6F7324402D0C6877743AF0C3B2EA307C6D
            9D263799CA8292EA048F9E081895600969AAB767E7FD3B7FA84E3DA7A32061A6
            76B51B4FB29A4D1344F8AA0A233597FDF379FD5A4AC7433F1EF5FCD39948ECF0
            F69A7F28031E785C898E2A4B842F961642A5EFA996791EC5CAC0BE5D95679E1A
            A99F41ADAA1C6F620794771A565EAA780F08F77E843217A09A939B9BAB9F5D0B
            01D47F6075C6E3A10E62B2CC41714C01241E332E6768BC7DFBF6259B366DF2A1
            49DA33D996CB512B344B62B01DEA194C9FE6A3C8D6A2C0EF7BDFE5DA77BDD339
            09C53A16659681F08F95255D14F016BEF73049C6ECDEBD3B076FF861DE7B423C
            01C06336DF8D0A783C37581D8E15D02034DD24E737F1B41A3091EE63F2BC2901
            5672F693BAE6C1CBAF6262633BF2CC1FA20B256905DEE6ABF4F7338FA2DC3B9B
            C98E028DA7BD6C945C54714909B893952AC6008AF80B5942E5E760399C2EFD86
            F697E1CDAF7905051D172D5A941F5AF78313278639F2F2163047FB40F37528AC
            F2CB2A92468CB81619580A489E2B939FBEFA50E0C37966BE284B1490DC736CA1
            7F83E9CB2AF1BE51CEE21DEEDFB5674F8B86F5EA5DA5994CEFF1F77B76A7F376
            BC9ADA289C1B19C3C5A2A825CF777E7EFE7F640F352333B365F958272777E19D
            E54140D5A334316000872BF1E6C74AA4682ACA0E745F427DADF12EEE015097C8
            9E1ECA7815B2E985A6D43D7BF6CCAE5FBF7E220A7106CA74C561BBFD9EE0B27D
            05FECAF2DBEBF4E5308A75A0240A81865EF0701E4056578C190154C0270A9EAF
            851FCD90852478BEC000BF97F8BC361AFDEACA8E148991239991E8677C7A35F6
            CB860F1F1E61359B07229FFBE4088C2CAB33FE2BA1F15C3E138F667555808A2C
            B415A3283921A1AFCDE17819C3EA53FA3448D2DB416B3C3CFD9DCC18C7908650
            D777FCFD8E6C6740EB4BCCA326CC0D59B1782F2529690C86D333180D92ED2E1E
            59FEA5202F6F2C6D4FE45D07BC9ECC73932AE9F76500C476C66C597532E2D1CF
            58007809864D17DE799C779ED481C6E793040C1763D1DD9A9E9DBD9971DE42DF
            DA30A66B3002E55EEDFD8CBF0703300A0B703B74FF80BC760FAE64C9EA1532B0
            95314B677C461932F62EE3D60C80BC4EF8A77F9694B404D9E91904D460BFA1E5
            FD528FA71FB250E897AD1645A9074F0720C745FC3D1EDA56C9322F3AE526E4FD
            EF8C938BB9D61479F587391C39F4E7010CC7B9D10505C94571716600320339BD
            0F993601FA7A120959B2678C1702EE6B18B3FB319A644CC7C2BF29F07D2396C3
            DDF3D2D30F9C74405D13D7F866C0E779B9475400D5823237694AB157D3EEEB78
            60C751ADBFD35936C635BAD3A49A6509B05655C76442F67E37879994BED756E3
            98CF9900D477D66C51E2873CA184853B75009522A02A4B1385852EA543DB96CA
            C2390F2B91914726E97801D558F27B58724023D851A2E011B4E57847F7499AB0
            20A042D9476AA346F7E17525335926F3CE5D951DA30902AA5C7C8F66D1015596
            670EE7E72FE0BD3EDE9292EBB27273F57D3126751C1367B58047DBB66D5B01C8
            2D99B89F30413781317D243104C0D51480F9178F1FF4994CB7E464666ED53D1F
            93691D74D5A1ADDB2A4B6422CB69F9797952F76558E24D2B4641A224AC3229A1
            6960C0EDBE3723276769F97BF9F9D991E1E1230A5D2E5D391A7B5C8B69EF3194
            51F9158528867451AA48E03D1573AE0AA03AF3F39F5335AD2F93BC2D40F749F0
            BBE49123DB2966F3DBD1D1D111B29406B078A963847EEE37294994703A744F46
            49957B7E490909999275C6E4F75F8D371067B1DB3760604C819E0995F45D07D4
            8A51BE1501152BFF46FAB51479DB121D137373706F4F96E69540E00564610520
            7BA73C67B5DBDF759794ACB68785DD2EBC94F48176AB753DC682D803BD01FE3F
            EC25D3DE93B4F7307D9B40DFA684F0ED713CE70928EED5D07F9391925122C365
            89B33C81357C1F4EFD33797F208AF50F67C7E15526FC8DA78D41C8E29BC73E3B
            0185E4E4A1264D4B631C8733868BAA0254BCA3366214D1E67CE47180E6F10C4A
            9F356B5988CCCC8C8C88187EB8B030533CD44AE75AD912F563D03C0437F1750C
            BE1701965ED47D23EFAC976764E99BB9F73C0ABF2F9F9F1440D58D248B652B40
            F396C962191CF4F6310E7A39C2C2DE009452A92783BE7D0A2F9BA17B7A068FC1
            48114006943E3F1640E5D9EB650F5AFFCC0054C6F75A59D5927E038ABDDC5EEF
            4DC17692860C398FB9684BCFC9A934B31386FF427EDCCA3B9785A9AAC967B5AE
            4446A3B0BCAF1790D4FB59E68DAEC4E0BFACC4E7EB6A55D50F79E665FAD30E4C
            EB312B33F30363BCC2700C96F35C7BCDE7EB929695F5CF930EA81BEA367950D1
            02D91645B5CB956C16665DA916C874594A1FB965CF9E337E2D5BB06C8ABBF086
            80EA7F01B03CA7AA7D53299266102BCB8DF2B9A363352F3D3F1380BA76FDC7CA
            A0A15315ABDD5A0EA8524A4A3D4A9373EA29CFCE1CA75CD2BCF151DB39D1E4F8
            4CAE9E28AFFBB18C6F114087CEC1B88D0BF1982E07BC6499F0A3E8D8D8C100E3
            50944086242930FBFD4915270080DA5194B41C9BD9B57B77B29C4395684C9FD7
            BB4296F3F05A3BFCAEDDA424D94FBA1BCB3E362C2CEC6214C5A7412B5FBED7B3
            C1C87DF6AABAC36BB7F7CD993E7DB701D03962E9A308E5C0FD2795F5292931F1
            05782AFB29E7859EFFD4BF4B4A8AA14F02CA11D02B010CDF96D3949CDC1325BA
            A2C80054594E963D3F267C8F74630FC7A8E36FBCFF2A60308E07B343EB1F8062
            8CF37A9FA3FD7EC8E075A101157A7093A2DC8C051E8D82E986A2EB80021F291E
            2AE330530254F04E9A86469942C31DD0207D1EC118EDA2CDB5F0F327FE1E8552
            5AF5BB31280B3EF9FA68808A924AC1CA4F0728EF67ACCBE30B7443C7EB5D8F22
            8AE3FD0630A0AB333C7C8DABA4E471D9EF9667060F1E1C191511B1985F2FC620
            B9257BEEDCEF2AE1BFEC1B7785C6CB421395E3A177600EAC818E4DD0D1953E27
            60746407BCDE0E19460E6963ECDBD2D7D795B27DC93F2CABD39F2CFA23E7A8E3
            01D4B78E47EEE59C2975BC6D0A04923266CD9A5F15A09614165E151D17F719C0
            F9097C0FC78BBA253D24AD9F80537864E41BAEA2A2CCCC2A0095FEF467DC72E1
            6B128A7F13F36A15E0A39ADDEE4EE9F3E61D0819EBE1807636B23DADB2F3C932
            2723C2C3B701842F55E71214193FB3CDB606E08B878F8B43E4A4017DFF17F2F7
            3286D3500C9DADB459DF62B55E8101581E17609C43FD548ECD949494F4089E25
            AD0C5083C76698AF3704A3AE83808A817055B8C9541AB0D9564A663FAFCDD63E
            B79A599C30281F1783D21F08488E60C90CB896715FCEA41DF26E48EC077D988F
            7EBADF555CDCD96AB57E4BDF64AB45E649BFD0DCC6D099181519998501741774
            BE74F201B5CEF9B247FAB455F74C65DFD4FFBAD7E3BCFFA6C35F1D3A1E413D15
            6563AD0BAED1CC81054ED574498956F591398125F1B0F15E1774DCBFE3415551
            AA955CE04C00EA071F7CAE0C1E3E4D29F57BF5655E291EAF4F715A6DCA938F3E
            A0DC7E47D76AB573326E9B31CE4D6661B9DD85F7F33E93B57DCA88112D0266F3
            5B28812D28FC3B998412F1F70113DEE1F7F9BEF04B908BC9348BEFBE973A2A03
            5484F722C660B924DF075825D0A13C201BC57505CAFF1CC0AAA1E2F59E637138
            B602A863B082655F4F26ED59706503F5ED6232F5954C4D06A0CE64F2FFCDD82B
            F934483F5EE740ACF08E1218013F5B5377C05E52D2FCE979F37EE7A1EAF5AAEA
            F74CCCCFA9A7476806283987AA99CD1FD3DE4C265B32C0309F3E0EE0D97F18FB
            AC06F1A638FAD50EA538115E3D115A7FBFE5CBCDF5376FCEC1E31E82C7DF3E18
            F851B1488E5FDE9F0A7F258A741E7F2F82B703E1BFEC259786B4D590E75AC007
            39DBBB163A566080B4C0C3DD03FD12693BA73C88E82880CABF85D03B8A71790A
            03669CDBE36913BA24AD3F9B942400D52D2F3F1F3B2AF6069E5BCDB83C285EB4
            7CAF9F758D8A7A0EBA5BA95E6FCF8CDCDCEF43DF97E5559BC5221EC179806543
            598A0EF9AE1E32F62D63B755A27C01F6F128C1A978ACEFF1F5FFEB1B55ADCDBF
            ABA137372333734CC57D70A19F3EA6F2CC08FAFE6C35655CF6AF6FC64BEC819C
            C432A6F550BA97D2C64840654195805A5A2A72FF3563B05F92FA0B4084CA0CCF
            5DC5B8FD13999184F6FACA8CACA48841859C89C15417003897779B042478CCEB
            FD9EE757D3A18F6C365BFCF49025730167FAF43C1A6E6E6551BEF0EF0280EC3B
            E85E5D1C1BDB7B5E25DB1915F8F4006DCD634E88071A7A14480C83EBF188DF0C
            88C168324964B73D341988949305A83CD7CA6136476A65FD1623786045433758
            0C191EC2F8B6E59F03396B0EFD113EBFBFA5CD6CBE16CFFA95E2A2A20959B366
            4D097D0F199F403F1E671C3A4B7430FD96FDE2A59F6FDF7E8F6C49059F4B4D4A
            BA15B97C1D9AF4D5935301A80F31FAD3A43EDCE3E516B369E40DBF7DBFBF3AEF
            9E8EB23EAE5177936ACE80B34D8F148424C50EA4BA15ED5BAB4FE9D62E6FC72F
            D56DE34C00EAB75FFDA40C4F99A16CFFCF8F8A83EF65C9D561B52A23EFEB8D25
            DA4FB1E1B956A79CACEBDB8C7DA52D4C00CBB6EDDB1BB46CD9F222885A09487E
            CC641A9097971738BB5EBD8900E078BBDD6E167AF156CB0F975706A862515B4C
            A69778E612D90B0DF5C405F8785F80F53C0035CECC04C5924D469164C9F74664
            E606DEF9213A3ABADFE4C9933D46B8FC2CF15083806A80F65C80AF2D6D583563
            F582777F06502FAF08A8C611989D3CB729BFA0E066390E54FEDD8811AD0450A9
            2187BAA93A69190AA5BF441C9A0CA3478AB42111B800C193785A8F54E4250A67
            249EC44C80281985935519BFA163224A7A3C4A776446D992EF1B80572F7D0FBD
            425BC2278C988776EDD993D6A0418301F437833188D5A3670B0BBF15CF5680FB
            A8808AC7A7078A2526E6F2FEB0A2E2E2CB727272FE5581AEE5D0D5171ED4A7CF
            97A33857332E03E8871EE468DCC72CE0DA46F5F97A540454F172A1613DED9D45
            3F1A870615E94B8856AB7E0E5522C0E1D374506EB4C885C84745FED2EF1C093E
            AB08A812290A302FC19B7F32AB12FE572C7A24B1CFF714FCBA97BEC9D12B5D16
            3D1E4F099C1E212B324702D403070E7C1B57BB760144BC87A7DA235466045C20
            F863894190285F634B218BBFE369232C283728F91264EB6E04FF573E59435DEB
            3026068702AA1C2D43D016F3DD739501AA71CB8B18772E87C9D4EBE9A39CBF45
            A6C6002CCF48C4B8C84A287FF5388DC3875FB500EA00F44699F715CF2E9F2C40
            05E45ACA96A25FFAADAAEB984FBFEB77082FCF42FEE558572FF826B98983E3B4
            8FB1BEDC6EB174088F8C7CA9E8F0E1319986E11DD2D78790FB69B4D5893FF7A2
            CBBEE49D85D032F877F29998D8433399DEC2C0D157A14E01A05E305C55028F6A
            AAF6F72873E9C4D67F92655EFA67DE18D778104C9AEC30991B1C0D4C6DFA156D
            5AB149D3EEE870F0C7635A063A1380EAF70794D75EDFA8BCB4748D121E1E2659
            1E950EEDAE54E20775D7A37CAB5B4EE67DA828DA8F9060394B7AB1D9EF8FF5AB
            EA2A0350EF95C924CA22C2E190FDB77100EB5528098B5AB68FB54496D0542353
            521050B1A89B339905941AA1D00E69DAFFAFD58BA2914C417C702B3FC350ACFF
            C4634A41C833E57B0154406423DF7F47FBFD68DF1B0AA828ACDE00EDB682FCFC
            4528E30100742E93299DBA4AF090E63161AE9540908A96B0B10CFD93EC1F1E3C
            74E8E6175E78A1DC831A939CDC0A53563CD432404D4C5C2CF7536A655187DEDF
            C91B634A3DB2843AA9221F8D33B7AFF1DEFA98D8D8BE9525BF0F026AB9879A94
            F41275DE81F2F825944FBA1122B9F654750E6D3DADEFDB1D38D015041AC8D73D
            C2C3C3A301EE6C802B79D2A4497614FE37D5F0506738EDF651AE92925615CF32
            F2AC7E74A3B0A8A8565454D4B506A0DE038D7A54A4BE4F9B97F72C6D5C5D19A0
            CA923A3FDEE3FB86D0756E68CAB98A9992787612F54FA4FEDDD0E60DEDB3D1EF
            37AEBDEEBA51FDFBF7FFDD4A9311C0F53D63BC86F1E97D94C41972DCA50B86DD
            3B3CFF15136F8457D37E90602E802407994D447E9F3D12A04A7A437E3F845CFC
            E3D0A1433D42650639BD1239FD9821CA91603CF8D717FE2D83FA2FF084C7BADD
            EE2FA1F14EFE7E446E03E395EFE997E4B57D2F3A266610B2517EAD9971C67511
            833FBF0A409580A7B9806A1FF4499FA3E5C795B3C91268C7DC90486B57E87722
            BFB232008DA9D0FB2E3459918D96A1CF9C4C40755A2CB1F05D0C898D4700D4C9
            F0E951FE2DC373CE80EE5D56B3F931DEB98D7169A506026D9DE1E1CB91CD87B3
            43621A8C77C723135319E3CEB4295B23DF3067973026839490AC6D78A8B7C0E3
            37F178E5ACF363271D50DF6DD8AC96D5571CD9E9B79F76AA7F9274711BEB34AA
            079E8E8431A36DAAC92E39868F04A67266D6AC2AFED2807F52E7033F4DA97643
            463953178C4B11600DFA6D26B3E998DB39EEEBDB1212A250A622D441D6CAF9C9
            8FA1E55CABCD76811C81097AA8070F1E1C1CAA4424B55BC3B3CF9EC0E499C064
            94C3F543A9AFA3B92CC06459C81E6A137D0F3510D80382F6655296D76100A4DE
            E18282826BF138361F0BA032C17AA25C8AA85F2263B701203D827DD113756B9A
            649D695C11508D746A1F4AE42AB4DE129A6507EFAAB3C3665B87E7A6079850CF
            4C3EEECB73FD51AA5B4269979F424F65D79CC9110B010314E98510740D0AFF5F
            159FF903A026268A221D88F26906A8FE508DB6D4E484843E56BB7D89D7E3F9D8
            EE74DEB265CB1657CB962D7F90E5E923062525278FB53B1C4FBBE56AB2ACACF2
            ABC9744FCEEB95558126BC1FC77BDD8E1550F5F6121337D197B6F0EDC250FEEA
            F7964AC088A26C160F55B2DB50FF938056B7D8D8D88D7BF6EC51ABC35FE3BA39
            01D3F350A0BDA1EDC38ACF887CFFF6DB6FAE66CD9A69797979CFD16E37CDEBED
            9D959BFB4F638CCA22918F02A89EE2E2D611B1B1DB91D17F23336ED9430D4DAD
            27FB940ED9672E2E2E8B0C4F4A9279D816BABA4964ABD16FD9079F093F120189
            2D28FEB7995B79784ADD43E55322E2A17336EFCEA8CAF3664C1EC4039E5BE872
            4D63FEFE617F598C5EA7D3192EF5221FFD918F6500DFD0DDBB773F0B8F4D067F
            85A79A3C2BBF43F3367811A80C5099979F41CFF7CCB51E41C3E55801154FB1B5
            D364F2FBE9377F1F86C77F0B1E150B96B973E75ABFFEEAAB2FA9E350716969BB
            A00C2425243C459D83A9E36A80B8892427819E79DB6262923685C8464A525236
            7A2B0159EA048F7760086CA5AECF01E0DB43CFEBCA2D5A8CEBB38C9704692D3C
            E980FA672BEB6A37E9683269E3ADAADA257084A331C122E9056D70B924105864
            F206923B16FC9C5FAD8642CA9904D4132DC795CB3725E526E8E9C0049209A98B
            1293E4527E6C6242EF43D95D328ABF91D695720E35262666A0F2D5574A418306
            0D83C71800CBCB50E49BF97E1513E8CE91C9C9ED2C81802C2B2EA55E092CD2F4
            D46531312F3281AE573D9E36692111A172A69209BE5B14264AE2BA63055464A3
            3B0A3556578A58F4C1A5577DAFCCE1580928C859ED3F78A872D09D3A9E07C884
            07FD43AD7CDC8B8951E1E193B08075E5287B50D49F193099926686ECD50928CB
            CF8A4AA1BC48F2F6E4E4E798B8F7BA8A8A5ECFAF55EBAE4515BCD4E4D4D4D19A
            CF27E7F71225B980448262CD3E01AF46C8442F7F2E39B9BE5C8967EC21EBD769
            A1940E88723322B5258FAC1B65D253AED8E23309B23A1C7A81F71F8292F0A2F8
            7D0980BE9CB18A0F3E477F6FE0F3D7E09B7890374A142E7D78E75801957A66F1
            FD08EA29DF7BD5E9484C4CB258AD998CEB1AE8B81119E8C3732FF0DC8CEC90A8
            6551E476BB5D05D80E2895143D5B5441C188088723DBE5722D86BEFB830AB88C
            FD9A4A1FA7035ABB6D0EC77CB9079676E2949292EE99F3E7EF3168946B2B9F42
            970E97C0ACAA00155968336BD6AC8FA96FA92A5B0D156446BCECC88888893C97
            465F47A3D83FC5338ACC9A39B369C8330FD1D604FA39D46AB5BEEEF77A5FE567
            3B8FCF775D48462815F0C8C5D0190A5095078155C2DB8B300236C3C7E2629F6F
            606E853D7AE8EEC1BC1888FC8F563C9E70D566FB0223293778AE5A8A5CCE50A7
            4E9DFAC1E037FABEBD3240358E577D827CFD7C221E2A9FB5918C6A80DCEBF4BB
            3373F77A78FC913C237999016B13066BA464D182EE4DE89FBE21FD91F9DD51BC
            5C1E939859B9EFBBB0C8E5EAF4DC73CFE9F32F61E2C428537EFE2ABBCD763DB2
            D005D9F9D8EB76AF642C2FC413BD2968D8885C50DF42F4433C63D0392D3373C3
            5F165057C79E7FA9D5ACC59B55D340C0F42CF7519678A508985ACBA292DFF1FA
            DC436ECADBBDF378DAFE5F0254C9FC63B358DE9043D428B64159B366BDA12F25
            6124A294E3B104973021EE290F4A52942DBD6EBB6DC05BAFBEDAC36F328DF659
            2C83E5F26214CCDD7CB790317A8949153F3225E56A7320F02A937DAB1C3A172F
            56BC5494E8382CCBA7DC5EEF4226FA585192A39392AE00AC6723E18B78768EA4
            B863327C74AC806A937D194D7B53BC680100798FBA92F1009E02840ED94B4A9A
            55DC43359E79008530AFB4B4F44D269D58AA87468E1CD90EEF6311D67F639711
            6D3C06E5E5C1CA55CA8298EE92885549FF56E272CDC5E3F6D29FA4AA94BE7840
            F0E765B9ABD35D5A3A1BB09C1C8C369404E6D42791AAED017609AC9927677165
            E98D3AF7293E5FFF8CB233B5B27C2A3703EDC3EB1FD2B061C3C6C8D17C94CE52
            089C2BF5584CA68D3E9F6F87A92C12F9004AEC33DEA9A5E5E75F91B56851BE1E
            2464B34980CF2B414095086A514C7C7E2E4A51FAB5523C3AF8B690CF7A179794
            2402E033135352BA87D96CAB8E03506FA73D89B4FE8AFEF591C03531D878E745
            BCA7167897EF30EEDD0D595C8DDCC542C73D721E54C0128F720ECAB5BE525CFC
            6010002B16B95C00A0D884923E97FE3FA19ACD598681234AF361FA321E19C847
            562493D693B4DD8671146FF683D4D454495129DB42E733FE0F8A015315A016B9
            DDD7CECCC8D8821C3F08D8CD652CDF7078BD83A795DD01DA8E771685399D8DF1
            7874404D4A4CFC94B9D58431EC965106C4CD25A986B4052D8324DA96BAA638C3
            C21E014496E417143C287BB246C28259668BA52EBCA8F4D88C142369C684F088
            88479817129D9B1CF4D0253A9AEF66C8D575D093828CBD44BF5732A68D009851
            C164068923473EC9B874A43DA1E7DBAA00555F09282E5E0BFFA2D4B26BD976F7
            EFDFDFD4A06EDDCB6D61619F5617508DA334FFA6DFCFD0EF31D0FD320039508E
            E16044483F9D5EBF7F3160BB413C54FA7403DFED07D0BBF3DD520C146C4F9F64
            4FDAC92F8B3092FA794A4BCBF751F5E420168BACF838F9FE6FE9D9D9AB79770C
            3AE5693CD6B9CCF304D11F62C0F1D95C0CAC5D181BBDB2E6CEFDE92F07A8ABCF
            3AB7B12960B9DFAEA83D01C7167E3AE6A9466226591B72D0D7E240E00B45F5F6
            3E910414A70A503774BEF98F178CAF7EEB8C02AA5CE585B2791325D01AC5B907
            4EAF4679C531696EE69F078BAE8BE46945202FC73A95B46A9B959898916A5E5E
            060A6510C2F9995A66497660B288824F0194B399CC2DCD26D3AB9245488E0594
            7A3CDF89D72191B3E2E93259EA01D61B19B71D4C9AAB99582D685FA26913054C
            2420EA98977C4B4AF6FAEDF64F68F36C94ABD05A4AFD3763BDC760114BF0CB95
            9545134A9E6226DF7A26E1B9D024E7007F82A67678C94D256D1F9E77F9110868
            7B05DAFA783C1E59B695BDB246806417FEFE0EA5744D555EAA41EB2414E42312
            7043DF3641DBF7B40BBBD5D636BBBD85A456937390D0385B8F9E8D8E7E0BC0E9
            028F250FB184FD9F0B8D5D5126DF01A89734AC5FFF4E4758D812F8B15BDF8753
            D58B79FE1AF8B890CF86088F50E89B19DFEBA06D2D3C914C4939B47396A5CC38
            FAFF4C494949E9D090425F776194C81E9A6498EA26D97DA049AE9BFB5A02386C
            4EE75BC70AA8FA52A1C5B206A06C45BF3FE559F1C2DAC0874B8517F02E982949
            BCB2F9C8C27D46F6A13572F518C64A0FF8E435FBFD5754753E51962B1D0EC710
            007526CF6AF461832AE3A8AA12C1DB0B303417BB5C0B50D463A165A22C0742CB
            569ED9CEF797C3D7D6F4B5140370F891829282999252478C681AB05AD7C2C773
            E1E73AF1DA78BE1D7597C98CCFA7838B9C9B64CC0751B7DCE2B455FA4D5B974A
            5012033F14FE2FD603F84CA6E5F0228EF9B6121A0E5047378BC8B1E8098CAF8C
            2A00D59049D95258151519D9EC7061E10EE449828A64A1AE1D637A1E6DED650C
            EF888989D95C70E8503232335DCF58A52872CCCACCFCBC83B9EDC383EF99396B
            D6BAAA0095B18E28C8CF5F26797279773DCFFF029F1F451EE322C2C3FF7D0C80
            AA2776D0E32C14E515FA5D5BFACD2387F95B8EEB3964899C76A6C083B6CCFBF7
            24331AEF7531E22FF6C2D34E929F9BB97B2F7C9C23B9A525998B5A9629A92775
            46D06F89C9B8CDC894743140BC1A83530CAE15D4B79F7F373AEDF686C592CC24
            3373067F6BD502D4C301EDF6CE077E58AEFC49CBDB175C6077E405AE57CC6A1F
            B3A6B4431E2F35521D562BC7A16C04C8BE2912F1BEA299933B1CF8BE5A49A2AB
            2AA7CC43EDD20340FD0D40B503A83E00D5AA747877C5195FF2953CAB4CAAE701
            86B325FA0F85A4E7A845E1CCBFFEFAEB8749100802D912C15E85D07DB87BF7EE
            BBEBD5ABF73784FD05493B274AD1C851FA3113A3BB246290FD379E5F1A1616D6
            C3E97028070E1EFC4C2EB9360EBF4B34EBE37CA74AB0899E44A2B8782B93F33E
            9968927A10D0FA00AB7A347FA71934CAF196CDC8C37F008B5BCB01353F5F2653
            773EEF2951BE890909F3E8C7039267D7549693F73BBE2F6472C6D9DDEE2BC493
            A8D87FA9072F6804FDC994FCB1D29FC2423D46622DFF3AA318E6A25C861B745C
            051D2F437B2309A4927821E871D3D7E172DCE2487CD6AF1973BB67C3E3BB2508
            2418C9AA47087B3CF2F30DFA91104C7E2FB7D4302E4B243DA13C2B6DB95CAE02
            E47D587A56D64B924508E5BB18006A1EA485EFF763950FCCCAC9D1730603944F
            C187719191910AC0F79BD56EEFC058D5D6335529CA73C1A41B8661256D759228
            5023876E89A43184AF0B25B25602389CE1E16F16B95CF7A2249F37782751BECF
            2317D7044A4B6FACEC1CAA14238BD073C88259C645CFCBEA760BA80B90CAB25E
            27A3CFCD684BF2175FAE47A2D227DA0B40D043D1B56A654B747755FC3596BC1F
            A5FEF18C8F12942D914D64F95D93DBFD60FAECD93B0D452E97BD3BE5320A0C10
            05B95DC567B2149E28B7B6C0B7B98CC5BD28F60B8CE4F853232322C6171716B6
            936C42460ED99128F68C509991685DEAE9C44F498E3FC24856F1567878B8C5A4
            DF755C2AE32CE0213AFB115902172F932F9FA6AE24C92D6CD293B9E006497090
            AA5ECD730B2583D891646BE4C8919D30009F8596C641593022E7F7D3B7A1B366
            CD7ACDE0AFAC462C8D8888B8CE24C15E65396DA5FF4FD187A972AC09E0FBDA00
            D4E6A16DC82A53FD060D263BACD647844E682C85B64B6823AC566CEC97787FD9
            00AA1CE712401583A619F55E1B4CF6218176D0752BE32386E776A3DF93A0619C
            8C97D06CE88277D4B2C0C2A1125814E42F735926E53F18D78B6957CE8C6F33F6
            CF173194BD445EA4EF181512C8B753290B44ECC3736F1806ED08DA4A672CF4BD
            63690B23EB1D87D77B77502F540B508B34A55FC7FDDF1FF552E8535D2452F79D
            0B2EB078F2CCB638A538B244B5B482F6EBC1C26E164D95BCA4B5E5FCAB2CEF56
            371A4A8054AE0CF5C8F298D73FBC7DC12F3F56F3D52ACBA90054949CB277D35A
            C55F5A52760C42D3EF5650EADED059B184479C341E1F77EA4159AED2B4F112AD
            EBF77A0F20D04B99F839B2D422DFCB121D542F9188CC4B9A351B3664C8105932
            896752CA3BB5F14C3FF1A1F482FB13524471F17D86E4D30570E63041F5C3E97A
            82EEBCBC54866D2813250CC5F1A9A6AA0F33193F33DE6B83725885127C94FAE6
            C867FAF10B2C5023C270708887FA345F77A2ED41926A50BC21EA9C692BF3AEF6
            F9E4D61993A905F5DFE376BBBBCEAE0450A5E84B67FCC0534805C46CD094890C
            AE170B1AA5BA2434CAD258DA4B63B29F4F1BBFF0FD5C09F2A8CE25EA7A22094D
            BB5712A8C397F3F4005E4DDB2CD9883C3EDFEB15E99340207E3C4E9F2E808772
            D6742AB42C0DA1BB23744C91BCA4420B5A222DFA8B2F964D36CEDAC9D10AB3AA
            8AC2B91A4B7C33C07D2F0AEA22FAF702EDBE149A6149A265AD66F334C6B3B3DC
            36C3984ED9BD77EF9260BF84160C95171997E18CD572632C05506515A1953910
            B833AD924C49528CE3237721FB0F31CFEB42AB5C6727C9F15FE5B3AFA8EFB690
            3EB7A21F4F9AADD6D601AFB79031498F8E8E9E5D594052C522F4205B0319C354
            787296EC37F3FB9C42976BFE3C236942F0861E3E1F072D31180DB21FFE32B2FA
            223C49134095E548C6E876686B2B77D4CA3222F48F2975B9BACBD26D059919A5
            DF36E3F349CABB8DCCF55760D8629199F6C8E815F9F929F47324AF98E8B32454
            90F3C3D3A97F6630C182185B5EB77BB42CF92313019E7B5291DCB46673BA04F6
            6585DCD4545519366CD85500DD181DD0E5288CA26C615E4C9F199224431FE794
            94CBAD8A321E19E8AC959D9999C99C9A11DC139520327E08A076ACD8862481E0
            BD2CDAE90090BD6F7338E279B70186D2668FECCD66653D66C8F9CBB4DF1479ED
            19CC94849122015637E2BDF70C5E13691C611ACEB36314D18866B3A4B69C22DB
            02C84C34723B05AFF44E5D1E9907B2EF891E4AA65F436619E32091FA1852D325
            B849B67618CF111200088F27D1B77BA8EBDDE0782113F748E4B0E45C96CB2FA8
            7772E8ED4D470554590675070239E0D4067F403D6900716C45F5AB6AA08EA62A
            E760E8D65534F502B448737E8A23EA904BCB857E9F5828C750AB4D3FC7A8F931
            595FF4F9BDE3BA1DDCB9FB64502B807AF7DD777F70E38D379E217E1D7F399163
            3313E3E31DA5F5EAD9F7EFDF1F58B0608184EF978B9558A778A5E1EE5AB57CF3
            264F2E097E3766F0E048539D3A2694B4BBB2E320B26787776476ECD85132F9E5
            9743BD0B15018F142F1525EF093DEA204089D51B8EC75B1A4C6F261369ECD8B1
            1192A02134398078254C0AAB44700615BF2855DE771AFD289CD8BEBDA5F8EAAB
            9DD39F79A648A924397E6891491C1B1BABD09F4249C127167045FAA48822C022
            B660A5FB2535E3B1F23AF8BEFC1EDACF233D5B555B127805CD56C9FD17CA9B10
            7E3AE0871DA0F18AD214FE02286154E9ADD8AF20EF84CF158F320828D24ED80E
            C6F2E590B194F6013C3363E93ADAE5E49259A90EF2022DC56214C95E2D4A3050
            B15F297DFB3A6D4D9AD8E08D169A38A1BA252877477A3F1800437F8A44768416
            3E76CB58885CE1A1DBEAD7AFAFCB812CC123FF76E4C25511D82BCA8C184D54EB
            0EE5AD51B752AB56AD227946DA865FEE508F5B647CDCB871FA73C114990F51B7
            A37EFD4AE756654540837A1DF23B73C21D7A46B6B27136DA12FE94CF0BA14D39
            785099CEDCA9AA8D060D1A38F6EEDDABCF0BD10DE79F7F7E44E83C1199E54F73
            B0BF4139E18795B12FAA687CCA3C939F41B908A153D70541790CEA21EA2D0E1D
            0709AC828672B935EE8A8D909304A1F505C742F44EC5B6A41C1550A51CFBE18B
            935F54E37F35E4EF803E8AC706A2C1779D180A5E4DCBF7A95A7AA13936ED963D
            9F9EB4F3B2B7F5EFDFEADE01033EECD9B3A7E34CF3ED58CB8A152B940963C7F6
            FDE2DB6F5F3DD3B4D4949A52536ACA7F53A916A0AA4A356E213FC545ABE2F763
            2D62D21BC147DBE8D5531D4EC1DEF035AD5AB54A18356AF35D77DDE53CED8C3A
            C102A006B2D3D37BADDFB469E589D756536A4A4DA929FF3BA55A80FA5728C128
            DE122D50EA5794BF6B667F5AB7DF7EFEFA842BAEA4F4ECDAB5F12DFDFAADE8D7
            BFFFA5D1D1D167BAEBD52E050505CAB2654BB77FF9D9E7FDAA0A0EA92935A5A6
            D4949A5279F94B036AD0B336CBFF92B629A0AC0B2881AC3A759D6B2EFDEA2BCF
            89D65F55912C1D1F7DF4514A7C7CFCD31D3B763CF10A4F53D9B66D9B92919636
            6DD19225E3D5A3EC15D6949A52536A4A4DF97DF94B02AAECF99AD5B2FD569FA6
            48C4DBE781803F4B33AB6BBA54E33ED393516EBFF5D64B5A5DD3E68D7BE20735
            AD57AFDE9966C951CBFEFDFB95F9F3E67DBDF7D75FFB67CF99F3EF13AFB1A6D4
            949A5253FEB7CA5F065083206AD193DAEBE74FF3029AF6B559312FB07A6CAFB7
            3DCDD7C749C4DD030F3C30B86DDBB6B97DFAF4B14545459D69165559F2F3F395
            850B16E4FFF2F3CFC999D9D98BCE343D35A5A6D4949AF2DF58FE6B0135144025
            D0A81408F56A5A9EAA69BF0654ED6353407BA1CEC1F08F2E554EDDD26E75CAB0
            61C3129A5E78E123B7F4BAE5AC468DCEFBDDB5527F86F2F34F3F29AFBDF6DADE
            DDBFFE3A614646C6FC13AFB1A6D4949A5253FE378BBAA1EEF9DB9C8A9EF8FB4F
            5F6411576EF5940C26C5928D4701401565A7AA683B355595EC1C5B1C6EEFC6B6
            877FFDD35C662E253535B5ABCB5598D4ADEB8DDD2EBEF8626BADDAB595989818
            FD4EC1D07B054F7591CC1E9261A6A8A848D9FBDB6FCA8E1D3BFC6B56AF7ED7AF
            F9727373E7BE7DA6F954536A4A4DA929FFCD45DD18D7E4794D0DB4F8D303AAA6
            48CED24200F43F0145D9AB6AEAC18049FB3160F27F73AAA2754F66D9BA756BD8
            EC9C9CDBBD7EFF65AD5BB76E59AB56ADE678ABF6B3CF3E3B107AD9F4A92C7BF6
            EC3101A89EE2A2A2AD9B366DFCD2E30B7CBD6CD932490B77D40C3D35A5A6D494
            9A52538E5CD40F63CE6BE4716A7FFAF392AAA6A866D5EC6AB767C72F679A9613
            2D8F3CF2C839BB76EDBAD0E3F1D85D9267F4341587C32119893C7171CE7FA5A5
            CDD977A6F950536A4A4DA9297FA572A6F335D4949A52536A4A4DA9297F895203
            A835A5A6D4949A52536ACA4928FF07E85EEA5189159AA60000000049454E44AE
            426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165354330700000
        Top = 309.921460000000000000
        Width = 978.898270000000000000
        DataSet = frxEvaluaProveedor
        DataSetName = 'ds_EvaluaProveedor'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 245.669291340000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<ds_EvaluaProveedor."Nombre">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 789.921259840000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 857.952755910000000000
          Width = 120.944881890000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 245.669291340000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<ds_EvaluaProveedor."P1">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 313.700787400000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<ds_EvaluaProveedor."P2">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 381.732283460000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 449.763779530000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 517.795275590000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 585.826771650000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 654.000000000000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 722.000000000000000000
          Width = 68.031496060000000000
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 14.513612340000000000
        Top = 355.275820000000000000
        Width = 978.898270000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 12.551020000000000000
        Top = 839.055660000000000000
        Width = 978.898270000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 393.071120000000000000
        Width = 978.898270000000000000
        Condition = 'contrato."sContrato"'
        object Memo39: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 978.897637800000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15500550
          HAlign = haCenter
          Memo.UTF8W = (
            'Referencias')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 434.645950000000000000
        Width = 978.898270000000000000
        DataSet = frxDBPreguntas
        DataSetName = 'frxDBPreguntas'
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          Width = 245.669291340000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxDBPreguntas."TipoEvalua">] [<frxDBPreguntas."PuntosMaximos"' +
              '>] pts. ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 245.669291340000000000
          Width = 732.094488190000000000
          Height = 18.897637800000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<frxDBPreguntas."Pregunta">]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 303.293144170000000000
        Top = 476.220780000000000000
        Width = 978.898270000000000000
        object Memo102: TfrxMemoView
          Left = 245.669291340000000000
          Top = 35.999999999999880000
          Width = 272.125984251969000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8220'Proveedor Confiable'#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 245.669291340000000000
          Top = 55.999999999999880000
          Width = 272.125984251969000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8220'Proveedor Condicionado'#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 245.669291340000000000
          Top = 76.000000000000120000
          Width = 272.125984251969000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8220'Proveedor No Confiable'#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Top = 35.999999999999880000
          Width = 245.669291338583000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            '75% a 100%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Top = 55.999999999999880000
          Width = 245.669291338583000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8W = (
            '60% a 74%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Top = 76.000000000000120000
          Width = 245.669291338583000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            '0% a 59%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 245.669291340000000000
          Top = 113.385826770000000000
          Width = 272.125984250000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'ELABOR'#211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 245.669291340000000000
          Top = 162.519685039370000000
          Width = 272.125984250000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'Compras')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 706.000000000000000000
          Top = 113.385826770000000000
          Width = 272.125984250000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 706.000000000000000000
          Top = 162.519685039370000000
          Width = 272.125984250000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'Subdirecci'#243'n Operativa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 706.000000000000000000
          Top = 222.779220000000000000
          Width = 272.125984250000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 706.000000000000000000
          Top = 271.913078270000000000
          Width = 272.125984250000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 45056
          HAlign = haCenter
          Memo.UTF8W = (
            'Subdirecci'#243'n Financiera Comercial')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zReporteEvalua: TUniQuery
    Connection = connection.Uconnection
    SQL.Strings = (
      '')
    Left = 671
    Top = 204
  end
  object imgStars: TcxImageList
    Height = 24
    Width = 110
    FormatVersion = 1
    DesignInfo = 10748495
    ImageInfo = <
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010101043B3B3B882020
          204F010101060000000000000000020B10190416213300000103000000000000
          0000000000031A1A1A433333337B010101030000000000000000000000000000
          0000000000000000000001010104393939892020204E01010106000000000000
          00000E0E0E191B1B1B33000000030000000000000000000000031A1A1A433333
          337C020202040000000000000000000000000000000000000000000000000101
          0104393939892020204E0101010600000000000000000E0E0E191B1B1B330000
          00020000000000000000000000031A1A1A433333337C02020204000000000000
          00000000000000000000000000000000000001010104393939892020204F0101
          010600000000000000000E0E0E191B1B1B330000000200000000000000000000
          00031A1A1A433333337B01010103000000000000000000000000000000000000
          000000000000010101033B3B3B892020204F0101010600000000000000000E0E
          0E191B1B1B33000000030000000000000000000000031A1A1A423333337C0202
          0204000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002575757B59C9C9CF65A5A5AB11718
          183C000000040000000000000000000000000000000416161637545454A99595
          95F1515151AC0000000200000000000000000000000000000000000000000000
          000000000002565656B69C9C9CF65A5A5AB11717173C00000004000000000000
          0000000000000000000416161637545454A9959595F1515151AC000000020000
          0000000000000000000000000000000000000000000000000002565656B69B9C
          9BF65A5A5AB11818183C00000004000000000000000000000000000000041616
          1637545454A9959595F1515151AC000000020000000000000000000000000000
          0000000000000000000000000002565656B69C9C9CF65A5A5AB11818183C0000
          00040000000000000000000000000000000416161637545454A9959595F15151
          51AC000000020000000000000000000000000000000000000000000000000000
          0002575757B59C9C9CF65A5A5AB11717173C0000000400000000000000000000
          00000000000416161637545454A9959595F1505151AC00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B3B3B7DB9BABAFFB9BABAFF9A9B9BF9555555A51717
          1738030303141A1A1A3C565656A69A9A9AF8B8B8B8FFB6B6B6FF3232326F0000
          0000000000000000000000000000000000000000000000000000000000003A3A
          3A7DB9B9B9FFB9B9B9FF9B9B9BF9555555A517171738030303141A1A1A3C5656
          56A6999999F9B8B8B8FFB6B6B6FF3232326E0000000000000000000000000000
          0000000000000000000000000000000000003A3A3A7DB9B9B9FFBABABAFF9B9B
          9BF9555555A517171738030303141A1A1A3C555556A69A9A9AF8B8B8B8FFB6B7
          B6FF3232326E0000000000000000000000000000000000000000000000000000
          0000000000003B3B3B7DBABABAFFBABABAFF9B9B9BF9555555A5171717380303
          03141A1A1A3C555556A69A9A9AF8B8B8B8FFB6B6B6FF3232326E000000000000
          00000000000000000000000000000000000000000000000000003B3A3B7DB9B9
          B9FFB9B9B9FF9B9B9BF9555555A517171738030303141A1A1A3C565656A69999
          99F9B8B8B8FFB6B6B6FF3232326E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000025252554AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD9494
          94EFBBBBBBFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E4300000000000000000000
          0000000000000000000000000000000000000000000025252554AFAFAFFFBDBD
          BDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBBBBFFBEBEBEFFBEBE
          BEFFA6A6A6FF1D1D1D4200000000000000000000000000000000000000000000
          0000000000000000000025252554AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF9393
          93ED6B6B6BBD969696EFBCBCBCFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E420000
          0000000000000000000000000000000000000000000000000000000000002525
          2654AFAFAFFFBDBDBDFFBEBEBEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBB
          BBFFBEBEBEFFBEBEBEFFA6A6A6FF1E1E1E430000000000000000000000000000
          00000000000000000000000000000000000025252554AEAEAEFFBDBDBDFFBEBE
          BEFFBBBBBBFF939393ED6B6B6BBD949494EFBBBBBBFFBEBEBEFFBEBEBEFFA6A6
          A6FF1E1E1E420000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001515152F9D9D
          9DFEC2C2C2FFBFBFBFFFBFBFBFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBF
          BFFFC3C3C3FF909090F10E0E0E22000000000000000000000000000000000000
          00000000000000000000000000001616162F9D9D9DFEC2C2C2FFBFBFBFFFBFBF
          BFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3C3FF909090F10E0E
          0E22000000000000000000000000000000000000000000000000000000000000
          0000161616309D9D9DFEC2C2C2FFBFBFBFFFBFBFBFFFC1C1C1FFC3C3C3FFC2C2
          C2FFBFBFBFFFBFBFBFFFC3C3C3FF919191F10E0E0E2200000000000000000000
          00000000000000000000000000000000000000000000161616309D9D9CFEC2C2
          C2FFBFBFBFFFBFBFBFFFC1C1C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3
          C3FF909090F10F0F0F2200000000000000000000000000000000000000000000
          000000000000000000001616162F9D9D9DFEC1C1C1FFBFBFBFFFBFBFBFFFC1C1
          C1FFC2C2C2FFC1C1C1FFBFBFBFFFBFBFBFFFC3C3C3FF909090F10E0E0E220000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A1A858585E1C6C6C6FFC1C1
          C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFC6C6C6FF7474
          74CA070707150000000000000000000000000000000000000000000000000000
          0000000000000A0A0A1A858585E1C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2
          C2FFC1C1C1FFC1C1C1FFC1C1C1FFC7C7C7FF737373CB06060615000000000000
          00000000000000000000000000000000000000000000000000000A0A0A1B8585
          85E1C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1
          C1FFC6C6C6FF737373CB07070715000000000000000000000000000000000000
          00000000000000000000000000000A0A0A1A858585E1C6C6C6FFC1C1C1FFC1C1
          C1FFC1C1C1FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFC6C6C6FF747474CA0707
          0715000000000000000000000000000000000000000000000000000000000000
          00000A0A0A1B858585E2C6C6C6FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC1C1
          C1FFC1C1C1FFC1C1C1FFC6C6C6FF747474CA0707071500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040414707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF595A59A60000000A0000
          0000000000000000000000000000000000000000000000000000000000000404
          0415707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC7C7C7FF585858A70000000B0000000000000000000000000000
          000000000000000000000000000000000000040404146F6F6FCBC9C9C9FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF5959
          59A60000000A0000000000000000000000000000000000000000000000000000
          00000000000004040415707070CCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC7C7C7FF585858A70000000B000000000000
          0000000000000000000000000000000000000000000000000000040404146E6E
          6ECCC9C9C9FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC7C7C7FF585858A70000000B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D3D3D77A9A9A9F1C9C9C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A00000000000000000000
          000000000000000000000000000000000000000000003D3D3D77AAAAAAF2C9C9
          C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8
          C8FF8D8D8DE21C1C1C4A00000000000000000000000000000000000000000000
          000000000000000000003D3D3D77A9A9A9F1C9C9C9FFC6C6C6FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A0000
          0000000000000000000000000000000000000000000000000000000000003D3D
          3D77AAAAAAF2C9C9C9FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC8C8C8FF8C8C8CE11C1C1C4A0000000000000000000000000000
          0000000000000000000000000000000000003D3D3D77A8A8A8F1C9C9C9FFC6C6
          C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8C8FF8B8B
          8BE11D1D1D4A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000074A4A4A86C4C4C4F9DFDF
          DFFFD9D9D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9
          C9FFCACACAFFCACACAFF939393EA1F1F1F500000000000000000000000000000
          000000000000000000074A4A4A86C4C4C4F9DFDFDFFFD9D9D9FFD3D3D3FFCECE
          CEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFF9393
          93EA1F1F1F500000000000000000000000000000000000000000000000064A4A
          4A87C4C4C4FADFDFDFFFD9D9D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9
          C9FFC9C9C9FFC9C9C9FFCACACAFFCACBCAFF939393E920202050000000000000
          0000000000000000000000000000000000064A4A4A87C4C4C4FADFDFDFFFD9D9
          D9FFD3D3D3FFCECECEFFCBCBCBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACA
          CAFFCACACAFF939393E920202050000000000000000000000000000000000000
          0000000000074A4A4A87C4C4C4F9DFDFDFFFD9D9D9FFD3D3D3FFCECECEFFCBCB
          CBFFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFF939393EA1F1F
          1F50000000000000000000000000000000000000000000000000000000000000
          0000000000000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCF
          CFFFD1D1D1FF9C9C9BEE2626265C0000000100000000000000000404040F5B5B
          5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDB
          DBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2626
          265C0000000100000000000000000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1
          D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2727275B00000001000000000000
          00000404040F5B5B5B98D0D0D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFDFDFDFFFDBDBDBFFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FF9B9B9BEE2727275B0000000100000000000000000404040F5B5B5B98D0D0
          D0FDE6E6E6FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFDFDFDFFFDBDBDBFFD6D6
          D6FFD3D3D3FFD1D1D1FFCFCFCFFFCFCFCFFFD1D1D1FF9B9B9BEE2626265B0000
          0001000000000000000000000000000000000000000000000000090909176D6D
          6DA7DBDBDBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E2
          E1FFB4B4B4EB3939396400000000080808156D6D6DA7DBDBDBFFECECECFFE8E8
          E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7
          E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E2E1FFB4B4B4EB393939640000
          0000090909156F6F6FA7DBDBDBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1
          E1FFE1E1E1FFE1E1E1FFB4B4B4EB3939396400000000080808156D6D6DA7DBDB
          DBFFECECECFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE8E8E8FFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E1E1FFB4B4
          B4EB3939396400000000080808156D6D6DA7DBDBDBFFECECECFFE8E8E8FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE6E6
          E6FFE3E3E3FFE1E1E1FFE1E1E1FFE1E1E1FFB4B4B4EB39393964000000020000
          0000000000000000000000000000000000003B3B3B779C9C9CDEC7C7C7F6D9D9
          D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFECECECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE2E2E2FDDADADAFF9C9C
          9CE52323234E383838719C9C9CDFC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEE
          EEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEF
          EFFFEDEDEDFFE9E9E9FFE2E2E2FDDADADAFF9C9C9CE52323234E383838719C9C
          9CDEC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEDEDFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE2E2
          E2FDDADADAFF9C9C9CE52323234E383838719C9C9CDEC7C7C7F6D9D9D9FDE5E5
          E5FEEBEBEBFFEEEEEEFFEDEEEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
          ECFFEFEFEFFFEFEFEFFFEDEDEDFFE9E9E9FFE1E2E2FDD9DADAFF9C9C9CE52323
          234E383838719C9C9CDFC7C7C7F6D9D9D9FDE5E5E5FEEBEBEBFFEEEEEEFFEDEE
          EEFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEFEFEFFFEFEFEFFFEDED
          EDFFE9E9E9FFE2E2E2FDDADADAFF9C9C9CE52424244F00000000000000000000
          000000000000000000000606060C0707070C0A0A0A1C1B1B1B3A3434345D5151
          5187737373AAC6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB2B2
          B2E47D7D7DAE5D5D5D934040406F2929294D1313132F0B0B0B19050505090606
          060B0707070C0A0A0A1C1B1B1B3A3434345D51515187737373AAC6C6C6EEF2F2
          F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB2B2B2E47D7D7DAE5D5D5D934040
          406F2929294D1313132F0B0B0B19050505090606060B0707070C0A0A0A1C1B1B
          1B3A3434345D51515187737373A9C6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0
          F0FFEFEFEFFFB2B2B2E47D7D7DAE5C5C5C93404040702929294D1313132F0B0B
          0B19050505090606060B0707070C0A0A0A1C1B1B1B3A3434345D515151877373
          73AAC6C6C6EEF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFB1B1B1E37D7D
          7DAE5C5D5D934040406F2929294D1313132F0B0B0B19050505090606060B0707
          070C0A0A0A1C1B1B1B3A3434345D51515187737373A9C6C6C6EEF2F2F2FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFB3B3B3E47D7D7DAE5D5D5D934040406F2929
          294D1313132F0B0B0B1905050509000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004F4F
          4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F41E1E1E43000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4
          F4FFF5F5F5FFD6D7D6F51E1E1E43000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F51E1E
          1E43000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004F4F4F7EEBEB
          EBFEF5F5F5FFF4F4F4FFF5F5F5FFD6D6D6F41D1D1D4300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F4F4F7EEBEBEBFEF5F5F5FFF4F4F4FFF5F5
          F5FFD6D7D7F51F1F1F4300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006060617B8B8B8DEFAFA
          FAFFF7F7F7FFFAFAFAFF7B7B7BAA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000006060616B8B8B7DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B
          7BAA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000606
          0616B8B8B7DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B7BAA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006060617B8B8B8DEFAFAFAFFF7F7
          F7FFFAFAFAFF7B7B7BAA00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000006060616B8B8B8DEFAFAFAFFF7F7F7FFFAFAFAFF7B7B7BAA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7
          D7F61A1A1A320000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A1A31000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004B4B4B73F9F9
          F9FFFEFEFEFFD7D7D7F619191931000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A
          1A32000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004B4B4B73F9F9F9FFFEFEFEFFD7D7D7F61A1A1A3100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C6C93000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C17B5B5B5D9FFFFFFFF6D6D6D93000000050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C
          6C92000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C0C0C17B5B5B5D9FFFFFFFF6C6C6C9300000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0C0C17B5B5
          B5D9FFFFFFFF6D6D6D9200000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000057575771C6C6C6EB232323340000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000057575771C6C6
          C6EA232323350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000057575771C6C6C6EA22222235000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057575771C6C6C6E922222235000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000057575771C6C6C6E92323
          2335000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A1A
          1A2C363636600303030700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001A1A1A2B36363660030303080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A1A1A2B36363660030303070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001A1A1A2C3636
          3660020202070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A2B3636366003030308000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0204014267A6032A416100000814000000000000000001060A11030D15230000
          01010000000000000000000005100123355501375A9200010204000000000000
          00000000000000000000000000000000000001010104494949A72D2D2D610303
          0314000000000000000001060A11030D15230000010100000000000000000202
          0210252525553F3F3F9201010104000000000000000000000000000000000000
          00000000000001010104484848A62D2D2D610303031400000000000000000808
          08110F0F0F2300000001000000000000000002020210252525553E3E3F910101
          0103000000000000000000000000000000000000000000000000010101044949
          49A62D2D2D610303031400000000000000000808081110101023000000010000
          00000000000002020210242424553F3F3F910101010300000000000000000000
          000000000000000000000000000001010104484848A62E2E2E61030303140000
          000000000000070707110F0F0F23010101010000000000000000020202102525
          25553E3E3E930101010400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001035273AB17B2
          D2F7096888B9002136580000000800000000000000000000000000000008001F
          3355086282B113AACDF6034969A1000000010000000000000000000000000000
          0000000000000000000000000002525252ABA3A3A4F7666666B9252525580000
          00080000000000000000000000000000000823232455606060B19B9B9BF64C4C
          4CA1000000010000000000000000000000000000000000000000000000000000
          0001525252ABA3A3A4F7666666B9252525580000000800000000000000000000
          00000000000823232355606060B19C9C9CF64C4C4CA000000000000000000000
          00000000000000000000000000000000000000000001525252ABA3A3A4F76666
          66B9252525580000000800000000000000000000000000000008232324556060
          60B19C9C9CF64B4B4CA000000000000000000000000000000000000000000000
          00000000000000000001525452ABA3A4A4F7666666B925252558000000080000
          000000000000000000000000000824242455606060B19B9B9BF64C4C4CA10000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002354F7C16C5E2FF18C5E1FC0C9F
          C2F2035C7DB10016294A0000000800182D4F035D7EB20D9DC1F118C3E1FC16C2
          E0FF022E456E0000000000000000000000000000000000000000000000000000
          0000000000003939397BB7B7B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A0000
          00081E1E1E4F606060B2999999F1B7B7B7FCB5B5B6FF3131316E000000000000
          00000000000000000000000000000000000000000000000000003838387CB7B7
          B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A000000081D1D1D50606060B29999
          99F1B7B7B7FCB5B5B5FF3131316E000000000000000000000000000000000000
          00000000000000000000000000003939397CB8B8B8FFB7B7B8FC9B9B9BF25E5E
          5EB11B1B1B4A000000071D1D1D505F5F5FB2999999F1B7B7B7FCB5B5B5FF3232
          316E000000000000000000000000000000000000000000000000000000000000
          00003839387CB7B8B8FFB7B7B8FC9B9B9BF25E5E5EB11B1B1B4A000000071E1E
          1E4F606060B2999999F1B7B7B7FCB5B5B5FF3232326E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000022355505ADD2FF09BFDDFF09BFDDFF06B6D8FC028F
          B3E7006B92CE0294B8EA06B7D8FC09BFDDFF09C0DEFF05A5CBFF001A29430000
          0000000000000000000000000000000000000000000000000000000000002626
          2654AFAFAFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E7737372CE979797EAB8B8
          B8FCBDBDBDFFBEBEBEFFA7A7A7FF1E1E1E430000000000000000000000000000
          00000000000000000000000000000000000026262655ADADAEFFBDBDBDFFBDBD
          BDFFB7B7B7FC949494E7727272CE969696EAB8B8B8FCBDBDBDFFBEBEBEFFA7A7
          A7FF1F1F1F430000000000000000000000000000000000000000000000000000
          00000000000026272755ADAEAFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E77272
          72CE979797E9B7B7B7FCBDBDBDFFBEBEBEFFA7A7A7FF1F1F1F44000000000000
          000000000000000000000000000000000000000000000000000026262655AEAE
          AFFFBDBDBDFFBDBDBDFFB7B7B7FC949494E7737373CE979797EAB8B8B8FCBDBD
          BDFFBEBEBEFFA7A8A7FF1E1E1E43000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001320320091BCFE00B4D6FF00B2D4FF00B3D5FF00B1D4FF00AFD3FE00B2
          D6FF00B3D5FF00B2D4FF00B5D7FF0087B1F2000E152200000000000000000000
          00000000000000000000000000000000000000000000161616329E9E9EFEC1C1
          C1FFBFBEBFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBFBFFFC3C3
          C3FF929292F31010102300000000000000000000000000000000000000000000
          00000000000000000000161616329F9F9FFEC2C2C2FFBFBEBFFFBFBFBFFFBEBE
          BEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBEBFFFC3C3C3FF919191F2101010230000
          0000000000000000000000000000000000000000000000000000000000001616
          16329E9E9EFEC1C2C2FFBFBEBFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBF
          BFFFBFBEBFFFC3C3C3FF919191F2101010230000000000000000000000000000
          000000000000000000000000000000000000161616329F9F9FFEC2C2C2FFBFBE
          BFFFBFBFBFFFBEBEBEFFBBBBBBFEC0BFC0FFBFBFBFFFBFBFBFFFC3C3C3FF9191
          91F2101010230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000B121C0078
          A5E700ABD0FF00A7CEFF00A7CEFF00A7CEFF00A7CDFF00A7CEFF00A7CEFF00A7
          CEFF00ABD1FF006991D200070D18000000000000000000000000000000000000
          00000000000000000000000000000C0C0C1C8A8A8AE7C6C6C6FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C1C1FFC7C7C7FF797979D30707
          0718000000000000000000000000000000000000000000000000000000000000
          00000B0B0B1C8A8A8AE7C6C6C6FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC7C7C7FF787878D20808081800000000000000000000
          000000000000000000000000000000000000000000000C0C0C1C8A8A8AE7C6C6
          C6FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC7C7
          C7FF787878D10808081700000000000000000000000000000000000000000000
          000000000000000000000C0C0C1C898989E8C6C6C6FFC1C2C1FFC1C2C1FFC1C2
          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C1C1FFC7C7C7FF787878D1070707170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000003060E005B83C600A0CBFF009C
          C6FF009CC6FF009CC6FF009CC6FF009CC6FF009CC6FF009CC6FF009FCBFF004B
          6BA1000103080000000000000000000000000000000000000000000000000000
          0000000000000202020F6C6C6CC7C9C9C9FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A100000008000000000000
          00000000000000000000000000000000000000000000000000000202020F6D6B
          6DC5C8C9C8FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C5
          C4FFC6C6C6FF585858A100000008000000000000000000000000000000000000
          00000000000000000000000000000202020E6D6D6DC6C8C8C8FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A10000
          0008000000000000000000000000000000000000000000000000000000000000
          00000202020E6C6C6CC6C9C9C9FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC6C6C6FF585858A20000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000062033520A7DA9EE0090BFFF0090BEFF0091BFFF0091
          BFFF0091C0FF0092C0FF0092C0FF0092C0FF0093C2FF00618ED6000A14250000
          0000000000000000000000000000000000000000000000000000000000002121
          21529B9B9BEFC9C9C9FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC9C9C9FF7A7A7AD70B0B0B250000000000000000000000000000
          000000000000000000000000000000000000212122519B9B99EEC8C8C8FFC7C7
          C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC9C9C9FF7B7B
          7BD60A0A0B250000000000000000000000000000000000000000000000000000
          000000000000222222529B9B99EEC8C8C8FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC9C9C9FF7B7B7BD60B0B0B25000000000000
          0000000000000000000000000000000000000000000000000000212121529B9B
          9BEEC9C9C9FFC7C7C7FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC9C9C9FF7C7C7CD70B0B0B25000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B25
          385642AAC2EB51C7DCFE36B4D2FF1398C1FF058ABAFF0088B7FF0085B6FF0083
          B6FF0085B6FF0086B8FF0087B8FF0085B6FD005684CC000B1423000000000000
          00000000000000000000000000000000000027272755AAAAAAEBD8D8D8FED4D4
          D4FFCECECEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CA
          CAFFC3C3C3FD727272CC0A0A0A23000000000000000000000000000000000000
          00000000000027272755AAAAAAEBD8D8D8FED5D5D5FFCECECEFFCACACAFFC9C9
          C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CACAFFC3C3C3FD727272CC0A0A
          0A2300000000000000000000000000000000000000000000000027272756AAAA
          AAEBD8D8D8FED5D5D5FFCECECEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACA
          CAFFCACACAFFCACACAFFC3C3C3FD727272CC0A0A0A2300000000000000000000
          000000000000000000000000000027272755AAAAAAEBD8D8D8FED4D4D4FFCECE
          CEFFCACACAFFC9C9C9FFC8C8C8FFC8C9C9FFCACACAFFCACACAFFC9CACAFFC3C3
          C3FD727272CC0A0A0A2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F2E405D47A6C1E95BCBE1FF5ACB
          DFFF59CAE0FF58C9DEFF4BBED9FF31AACCFF1E99C1FF148CBAFF0B86B7FF0580
          B3FF007CB0FF0079B0FF0075AEFD004B7CC80007122700000000000000000000
          0000000000002F2F2F5DB0B0B0E9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDE
          DDFFD8D8D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5
          C5FD717171C809090A28000000000000000000000000000000002F2F2F5DB0B0
          B0E9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDEDDFFD8D8D8FFD4D4D4FFD0D0
          D0FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5C5FD717171C80A0A0A280000
          00000000000000000000000000002F2F2F5DB0B0B0E9E2E2E2FFE1E1E1FFE0E0
          E0FFE1E1E1FFDDDEDDFFD8D8D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCC
          CCFFCCCCCCFFC5C5C5FD717171C8090909270000000000000000000000000000
          00002F2F2F5DAFB0AFE9E2E2E2FFE1E1E1FFE0E0E0FFE1E1E1FFDDDEDDFFD8D8
          D8FFD4D4D4FFD0D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFC5C5C5FD7171
          71C80A0A0A280000000000000000000000000000000000000000000000000000
          000000000000113344624AA6C2E85DC9E0FF5CC7DCFF5CC7DDFF5CC6DCFF5CC7
          DCFF5CC7DDFF5DC8DDFF5CC8DEFF57C2D9FF47B8D3FF3FABCDFF36A3C8FF2B9D
          C4FF2798C1FF2693BEFD20698DC604121927000000000000000036363662B8B8
          B8E8E8E8E8FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6
          E6FFE4E4E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDADADAFFD1D1D1FD7F7F
          7FC611111127000000000000000036363662B8B8B8E7E8E8E8FFE6E6E6FFE5E5
          E5FFE5E5E5FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6E6FFE4E4E4FFE1E1E1FFDEDE
          DEFFDBDBDBFFDADADAFFDADADAFFD1D1D1FD7F7F7FC610101027000000000000
          000036363662B8B8B8E8E8E8E8FFE6E6E6FFE5E5E5FFE5E5E5FFE6E6E6FFE4E5
          E4FFE5E5E5FFE6E6E6FFE4E4E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDADA
          DAFFD1D1D1FD7F7F7FC610101027000000000000000036363662B8B8B8E8E8E8
          E8FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFE4E5E4FFE5E5E5FFE6E6E6FFE4E4
          E4FFE1E1E1FFDEDEDEFFDBDBDBFFDADADAFFDBDBDAFFD1D1D1FD7F7F7FC61010
          10270000000000000000000000000000000000000000000000000F374D744FAD
          C9F666CFE8FF64CBE3FF63C8E0FF61C6DEFF5FC6DCFF60C4DBFF5FC3DAFF5FC3
          DAFF5FC4DAFF60C4DBFF60C5DBFF61C6DDFF62C7DFFF63C7DDFF61C7DFFF63C9
          E1FF61CAE4FF3C8BA6D1051720313837376EBCBCBCF6F2F2F2FFF3F3F3FFF0F0
          F0FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFECECECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEFEFEFFF989898D11818
          18313838386DBDBDBDF6F2F3F3FFF3F3F3FFF0F0F0FFEEEEEEFFEDEDEDFFEBEB
          EBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFECECECFFEEEEEDFFEEEE
          EEFFEFEFEFFFF4F4F4FFEFEFEFFF979797D1181818313737376DBCBCBCF6F2F3
          F2FFF3F3F3FFF0F0F0FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFECECECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEFEF
          EFFF979797D0181818313838386EBDBDBDF6F2F3F3FFF3F3F3FFF0F1F0FFEEEE
          EEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFECEC
          ECFFEEEEEDFFEEEEEEFFEFEFEFFFF4F4F4FFEEEEEEFF979797D1191919320000
          00000000000000000000000000000000000004111C2C112F3F581C47587A2A60
          7AA436819ECC4B9FBBEB58B2CFFA63C3DBFF64C3DAFF63C3DAFF63C3DAFF64C3
          DAFF64C3DAFF63C2DAFF5BB6D2FA53A8C3F24090AAD932738EBA29596F981540
          527501111C2D1212122A333232584E4E4E7A6B6B6BA4929292CCB6B6B6EBD1D1
          D1F9EAEAEAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE8E8E8FFD7D7
          D7FAC1C1C1F2A3A3A3D9808080BA62626298464646751313132D1212122A3333
          33584F4E4F7A6B6B6BA4929292CCB6B6B6EBD1D1D1F9EAEAEAFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEFEFFFE8E8E8FFD7D7D7FAC1C1C1F2A3A3A3D98080
          80BA62626298464646751414142D1212122A323232584E4E4F7A6B6B6BA49292
          92CCB6B6B6EBD1D2D1F9EAEAEAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFE8E8E8FFD7D7D7FAC1C1C1F2A3A3A3D9808080BA62626298464646741414
          142D1212122A333333584F4E4F7A6B6B6BA4929292CCB6B6B6EBD1D1D1F9EAEA
          EAFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE8E8E8FFD7D7D7FAC1C1
          C1F2A3A3A3D9808080BA62626298464646751414142E00000000000000000000
          00000000000000000000000101020002020401030406020506090307090B0409
          0C13050E1A2C367993BE69C5DDFF68C3DAFF69C3DAFF69C4DBFF67C0D9FF2253
          6D9905131F31050A0F1B03080A0C0206080A0204050801030406000102030101
          01020202020403030306050505090808080B0A0A0A130E0E0E2B888888BFF2F2
          F2FFF3F4F3FFF2F3F2FFF2F2F2FFECECECFF5B5B5B98151515310B0B0B1B0909
          090C0707070A0505050803030306010101030101010202020204030303060505
          05090808080B0A0A0A130E0E0E2B8A8A8ABFF2F3F2FFF3F4F3FFF2F3F2FFF2F2
          F2FFEBECECFF5B5B5B99151515310B0B0B1B0909090C0707070A050505080303
          030601010103010101020202020403030306050505090808080B0A0A0A130E0E
          0E2B888888BFF2F2F2FFF3F4F3FFF2F3F2FFF2F3F2FFEBEBEBFF5B5B5B991515
          15310B0B0B1B0909090C0707070A050505080303030601010103010101020202
          020403030306050505090808080B0A0A0A130E0E0E2B888888BFF2F2F2FFF3F4
          F3FFF2F3F2FFF2F3F2FFECECECFF5B5B5B98151515310B0B0B1B0909090C0707
          070A050505080303030601010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010D23
          304963B6D0F96EC3DBFF6EC3DAFF6FC5DDFF5098B4E201080F1C000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000012626264AE0E0E0F9F7F7F7FFF6F6
          F6FFF9F9F9FFB7B7B7E30808081C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000012626264AE0E0DFF9F7F7F7FFF6F6F6FFF9F9F9FFB7B7B7E20808
          081C000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012626264ADFDF
          DFF9F7F7F7FFF6F6F6FFF9F9F9FFB7B7B7E20808081C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012626264ADFDFDFF8F7F7F7FFF6F6F6FFF9F9
          F9FFB7B7B7E20808081C00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000102053D7790BD75C5
          DDFF71C2DCFF73C4DDFF1C405679000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C
          4C79000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C4C7900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010105909090BCFCFCFCFFF9F9
          F9FFF8F8F8FF4C4C4C7900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001010105909090BDFCFCFCFFF9F9F9FFF8F8F8FF4C4C4C790000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001026324A70BAD6FF7BC8E0FF5291
          B0DE040C121D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C2C2C4AEEEEEEFFFFFFFFFFB7B7B7DE0D0D0D1C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002D2D2D4AEEEE
          EEFFFFFFFFFFB7B7B7DE0D0D0D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002C2C2C4AEEEEEEFFFFFFFFFFB6B6B6DE0D0D
          0D1D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002C2C2C4AEEEEEEFFFFFFFFFFB7B7B7DE0D0D0D1D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000106080F447890BA80C9E4FF22425674000001010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000707
          070F989898BAFFFFFFFF53535374000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000707070F989898BAFFFFFFFF5353
          5373000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707070F989898BAFFFFFFFF5353537400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000707070F9999
          99BBFFFFFFFF5353537400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010101010200000000000000000000
          0000000000001D37465F4980A0D308131B270000000000000000000000000000
          0000000000000000000100000000000000000000000000000000000000000000
          00000000000101010102000000000000000000000000000000004646465FA6A6
          A6D2191919270000000000000000000000000000000000000000000000010000
          0000000000000000000000000000000000000000000000000001010101020000
          000000000000000000000000000046464660A5A5A5D319191927000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          0000000000000000000000000001010101020000000000000000000000000000
          00004646465FA6A6A6D219191928000000000000000000000000000000000000
          0000000000010000000000000000000000000000000000000000000000000000
          000101010102000000000000000000000000000000004646465FA6A6A6D21919
          1927000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010101043434347C16161640000000000000000000000000030F
          131D081D2A4000020205000000000000000000000000121212342D2D2D6F0101
          0103000000000000000000000000000000000000000000000000010101043434
          347C161616400000000000000000000000001111111D24242440020202050000
          00000000000000000000121212342D2D2D6F0101010300000000000000000000
          0000000000000000000000000000010101043434347C16161640000000000000
          0000000000001111111D24242440020202050000000000000000000000001111
          12342D2D2D6F0101010300000000000000000000000000000000000000000000
          0000010101043434347C161616400000000000000000000000001111111D2424
          244002020205000000000000000000000000121212342D2D2D6F010101030000
          00000000000000000000000000000000000000000000010101033434347C1616
          16400000000000000000000000001111111D2424244002020205000000000000
          000000000000121212342D2D2D6F010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0203001F3356010B111B00000205000000000000000009131C29143042650003
          0408000000000000000000000104000A0F18001A284400010102000000000000
          00000000000000000000000000000000000000010203001E3356000B111B0000
          0205000000000000000009141D29133043650002040800000000000000000000
          0104000A0F18001A284400010102000000000000000000000000000000000000
          00000000000001010103242424560C0C0C1B0101010500000000000000000915
          1D2913304364000204080000000000000000000000040A0A0A181B1B1B430101
          0102000000000000000000000000000000000000000000000000010101032323
          23560C0C0C1B010101050000000000000000191919293C3C3C65030303080000
          000000000000000000040A0A0A181B1B1B440101010200000000000000000000
          000000000000000000000000000001010103242424560C0C0C1B010101050000
          000000000000191919293C3C3C65030303080000000000000000000000040A0A
          0A181B1B1B440101010200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000010301517ABB096E
          93C90224375400080D1700000103000000000000000000000000000001030008
          0C150221314C076485BC014A70B0000101030000000000000000000000000000
          000000000000000000000001010301527ABC096E93C90224375500080D160000
          01030000000000000000000000000000010300080C150221314C076487BC014A
          70B0000101030000000000000000000000000000000000000000000000000101
          0103575757BB6A6A6CC927272755090909160000000300000000000000000000
          000000000003090909152323234C636363BC505050AF01010103000000000000
          00000000000000000000000000000000000001010103575757BB6A6A6AC92727
          2754090909170001000300000000000000000000000000000003090909152323
          234C636363BC4F4F4FB001010103000000000000000000000000000000000000
          00000000000001010103585858BC6C6C6CC92727275509090916010101030000
          0000000000000000000000000003090909152323234C636364BC4F4F4FB00101
          0103000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001034463941ED0EDFF12A9CEFF055A
          7CB0011F2E4800070A110001040700070B14011F2E48055877AB10A4C9FE1DCD
          EAFF043E5A880000000100000000000000000000000000000000000000000000
          000000000001044463951ED1EDFF12A9CFFF055B7BAF011F2E4800070A110001
          040700080B14011F2E48055877AB10A4C9FE1CCEEBFF043E5987000000010000
          000000000000000000000000000000000000000000000000000148484894BDBD
          BDFFA1A1A1FF5D5D5DAF21212148070707110202020708080814212121485A5A
          5AAB9B9B9BFEBBBBBBFF40414187000000000000000000000000000000000000
          000000000000000000000000000148484894BDBDBDFFA1A1A1FF5C5C5CB02122
          2148070707110202020708080814212121485A5A5AAB9B9B9BFEBBBBBBFF4141
          4188000000010000000000000000000000000000000000000000000000000000
          000147474795BDBDBDFFA1A1A1FF5D5D5DAF2222224807070711020202070808
          0814212121485A5A5AAB9B9B9BFEBBBBBBFF4040408700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000022840660CB7D9FF14C8E3FF0FC3E4FF0595BAF5014C
          6A960029406301506D9B0594BDF70EC4E5FF14C9E5FF0BB1D4FF002236560000
          0000000000000000000000000000000000000000000000000000000000000229
          40660CB8D9FF14C7E3FF0EC3E3FF0594BAF5014C6A960029406301516D9B0594
          BDF70EC4E5FF14C9E5FF0BB1D5FF002135550000000000000000000000000000
          0000000000000000000000000000000000002E2E2E66B3B3B3FFBFBFBFFFBDBD
          BDFF969697F5525252962E2E2E635454549B959596F7BDBDBDFFC0C0C0FFADAD
          AFFF252626550000000000000000000000000000000000000000000000000000
          0000000000002E2E2E66B3B3B3FFBFBFBFFFBDBDBDFF969697F5525252962E2E
          2E635454549B969696F7BDBDBDFFC0C0C0FFAEAEAEFF26262656000000000000
          00000000000000000000000000000000000000000000000000002E2E2E66B3B3
          B3FFBFBFBFFFBDBDBDFF969697F5525252962E2E2E635454549B959596F7BDBD
          BDFFC0C0C0FFAEAEAEFF25262555000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000192942029DC7FE02B8D8FF04B7D8FF04BFDFFF02B1D7FF0199C2FE01B2
          D9FF04BFDFFF03B7D8FF03B9D9FF0194BEFB00131E3100000000000000000000
          0000000000000000000000000000000000000000000000192942029EC7FE02B8
          D8FF03B7D8FF04BFDFFF02B1D7FF0199C2FE01B3D9FF04BFDFFF03B7D8FF03B9
          DAFF0192BEFB00121E3000000000000000000000000000000000000000000000
          000000000000000000001E1E1E42A6A6A6FEBFBFBFFFBEBEBEFFC4C4C4FFB8B8
          B8FFA3A3A3FEBBBBBBFFC4C4C4FFBEBEBEFFC0C0C0FF9B9B9CFB161616300000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E42A6A6A6FEBFBFBFFFBEBEBEFFC4C4C4FFB9B9B9FFA3A3A3FEBBBBBBFFC4C4
          C4FFBEBEBEFFC0C0C0FF9D9D9DFB151515310000000000000000000000000000
          0000000000000000000000000000000000001D1D1D42A6A6A6FEBFBFBFFFBEBE
          BEFFC4C4C4FFB8B9B8FFA3A3A3FEBBBBBBFFC4C4C4FFBEBEBEFFC0C0C0FF9C9C
          9CFB161616300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000E16240084
          AEF300AFD3FF00ACD1FF00ACD0FF00AFD3FF00B3D7FF00AFD3FF00ACD0FF00AC
          D1FF00B0D4FF0075A0E10009101A000000000000000000000000000000000000
          0000000000000000000000000000000E16230084AEF300AFD3FF00ACD1FF00AC
          D0FF00AFD3FF00B3D7FF00AFD3FF00ACD0FF00ACD1FF00B0D5FF0076A0E20008
          101B000000000000000000000000000000000000000000000000000000000000
          000010101024939393F3C3C3C3FFC0C0C0FFC0C0BFFFC3C3C3FFC6C6C6FFC2C2
          C2FFC0C0BFFFC0C0C0FFC5C4C5FF838583E20A0A0A1B00000000000000000000
          0000000000000000000000000000000000000000000010101023939393F3C3C3
          C3FFC0C0C0FFC0C0BFFFC3C3C3FFC6C6C6FFC2C2C2FFC0BFBFFFC0C0C0FFC5C5
          C5FF838383E10909091A00000000000000000000000000000000000000000000
          0000000000000000000010101024939493F3C3C4C4FFC0C0C0FFC0C0BFFFC3C3
          C3FFC6C6C6FFC2C2C2FFC0C0BFFFC0C0C0FFC5C5C5FF838383E10A0A0A1A0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000050B15006892D500A5CEFF00A2
          CAFF00A2CAFF00A2C9FF00A2C9FF00A2C9FF00A2CAFF00A2CAFF00A6CEFF0059
          7DBA0002060F0000000000000000000000000000000000000000000000000000
          00000000000000040B15006792D500A6CEFF00A2CAFF00A2CAFF00A2C9FF00A2
          C9FF00A2C9FF00A2CAFF00A2CAFF00A4CFFF00587FBA0002060F000000000000
          0000000000000000000000000000000000000000000000000000050505147A7A
          7AD4C7C7C7FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3
          C3FFC7C7C7FF666866B90202020F000000000000000000000000000000000000
          0000000000000000000000000000060606147A7A7AD4C7C7C7FFC3C3C3FFC3C3
          C3FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC7C7C7FF686868BA0202
          020F000000000000000000000000000000000000000000000000000000000000
          0000060606157A7B7AD5C7C7C7FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2
          C2FFC3C3C3FFC3C3C3FFC6C6C7FF686868BA0202020F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030C142303628DD30099C5FF0095C2FF0096C2FF0097
          C3FF0097C3FF0097C3FF0097C3FF0097C3FF0099C6FF004E72AE0003070E0000
          000000000000000000000000000000000000000000000000000000000000030A
          142303628DD30099C5FF0095C2FF0096C2FF0097C3FF0097C3FF0097C3FF0097
          C3FF0097C3FF0098C6FF004E73B00003070F0000000000000000000000000000
          0000000000000000000000000000000000000B0B0B227B7B7BD2CACACAFFC5C5
          C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C7C6FFC7C8C7FF6060
          60AE0303030E0000000000000000000000000000000000000000000000000000
          0000000000000B0B0B227A7A7AD3CACACAFFC5C5C5FFC5C5C5FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FF5F5F5FAF0303030F000000000000
          00000000000000000000000000000000000000000000000000000B0B0B237A7A
          7AD3C9C9C9FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7
          C7FFC8C8C8FF5F5F5FAF0303030F000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000040B
          0F1921647AA12CA4C8FC129CC5FF078EBCFF038DBCFF008CBBFF008BBBFF008C
          BBFF008CBBFF008DBBFF008DBCFF0074A4EC002C48730004060B000000000000
          000000000000000000000000000000000000040B0F1921647AA12DA5C7FD129C
          C5FF078EBCFF038DBCFF008CBBFF008BBBFF008CBBFF008CBBFF008DBBFF008D
          BCFF0073A5ED002D48740004060B000000000000000000000000000000000000
          0000000000000B0B0B19626262A1BDBDBDFCCDCDCDFFC9C9C9FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C9C8FFC9C9C9FFA0A0A0EC373737730303
          030B0000000000000000000000000000000000000000000000000A0A0A196262
          62A1BDBDBDFDCDCDCDFFC9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFA1A1A1ED393939740403040B00000000000000000000
          00000000000000000000000000000A0A0A19626262A1BDBDBDFDCDCDCDFFC9C9
          C9FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFA1A1
          A1ED383838740404040B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000040C111B276B82A856CAE1FF5DD2
          E4FF50C4DBFF3EB6D4FF24A1C7FF0F8EBDFF0986B8FF0584B7FF0383B6FF0081
          B4FF0080B4FF0085B9FF0071A7F8002B47750003060B00000000000000000000
          000000000000040C111B276B82A856CBE1FF5DD2E4FF50C4DBFF3EB6D4FF24A1
          C7FF0F8EBDFF0986B8FF0584B7FF0383B6FF0081B4FF0080B4FF0084B9FF0070
          A8F7002B47750003060B000000000000000000000000000000000C0C0C1B6B6B
          6BA8D6D6D6FFE4E4E4FFDBDBDBFFD8D8D8FFD2D2D2FFCECECEFFCDCDCDFFCCCC
          CCFFCBCBCBFFCACACAFFCBCBCBFFD0D0D0FFA9A9A9F8373737750303030B0000
          00000000000000000000000000000B0B0B1B696969A8D6D6D6FFE4E4E4FFDBDB
          DBFFD8D8D8FFD2D2D2FFCECECEFFCDCDCDFFCCCCCCFFCBCBCBFFCACACAFFCBCB
          CBFFD0D0D0FFAAAAAAF7373737750303030B0000000000000000000000000000
          00000C0C0C1B696969A8D6D6D6FFE4E4E4FFDBDBDBFFD8D8D8FFD2D2D2FFCECE
          CEFFCDCDCDFFCCCCCCFFCBCBCBFFCACACAFFCBCBCBFFD0D0D0FFAAAAAAF73838
          38750303030C0000000000000000000000000000000000000000000000000000
          000000010102050F131F2B6F87AB59CAE1FF5ECCE2FF5CC9DEFF5FCBE0FF5ECB
          E0FF5CC9DFFF57C5DCFF48B8D5FF34A6CAFF2596C0FF158CBAFF1185B6FF0E82
          B4FF0A84B9FF0972A8F707334B760206080C0000000000010102050F131F2B6F
          87AB59CAE1FF5ECCE2FF5CC9DEFF5FCBE0FF5ECBE0FF5CC9DFFF57C5DCFF48B8
          D5FF34A7CAFF2596C0FF158CBAFF1185B6FF0E82B4FF0A84B9FF0972A8F70733
          4C760206080C00000000010101020F0F0F1F737373ABDEDEDEFFE8E8E8FFE4E4
          E4FFE3E3E3FFE3E3E3FFE4E4E4FFE2E2E2FFDFDFDFFFD9D9D9FFD6D6D6FFD3D3
          D3FFD1D1D1FFD1D1D1FFD7D7D7FFAEAEAEF73B3B3B760707070C000000000101
          01020F0F0F1F737373ABDEDEDEFFE8E8E8FFE4E4E4FFE3E3E3FFE3E3E3FFE4E4
          E4FFE2E2E2FFDFDFDFFFD9D9D9FFD6D6D6FFD3D3D3FFD1D1D1FFD1D1D1FFD7D7
          D7FFAEAEAEF73C3C3C760707070C00000000010101020F0F0F1E737373ABDEDE
          DEFFE8E8E8FFE4E4E4FFE3E3E3FFE3E3E3FFE4E4E4FFE2E2E2FFDFDFDFFFD9D9
          D9FFD6D6D6FFD3D3D3FFD1D1D1FFD1D1D1FFD7D7D7FFAFAFAFF73C3C3C760707
          070C000000000000000000000000000000000000000000000000051219262D72
          89B05DC9E3FF61CAE0FF5FC7DFFF5EC7DFFF5EC7DDFF5DC5DCFF5EC6DCFF5EC6
          DCFF5EC6DCFF62C9DEFF62C9DEFF61C9DEFF5CC4DCFF54BED8FF46B7D3FF43B4
          D5FF3DA2C3FA194456760004070C051217242E7288B05DC9E3FF61CAE1FF5FC7
          DFFF5EC7DFFF5EC7DDFF5DC5DCFF5EC6DCFF5EC6DCFF5EC6DCFF62C9DEFF62C9
          DEFF61C9DEFF5CC4DCFF54BED9FF46B7D4FF43B4D5FF3DA2C3FA194456760004
          070C13121224797979B0E6E6E6FFEFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEBEBEBFFEAEAEAFFE8E8
          E8FFE7E7E7FFEBEBEBFFC2C2C2FA484848760505050C12121223797979B0E7E7
          E7FFEFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE9E9E9FFE9E9E9FFEBEBEBFFEAE9E9FFE8E8E8FFE7E7E7FFEBEBEBFFC2C2
          C2FA484848760505050C12121224797979B0E6E6E6FFEFEFEFFFEBEBEBFFEBEB
          EBFFEBEBEBFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEBEB
          EBFFEAEAEAFFE8E8E8FFE8E8E8FFEBEBEBFFC2C2C2FA484848760505050D0000
          0000000000000000000000000000000000000C2D3F6139839BC84495AFD74FA7
          BFE757B4CDED5CBCD4F15FC0D7F761C3DBFF61C3DAFF61C3DAFF61C3DAFF61C3
          DAFF61C3DAFF61C3DBFF5FC0D9F85FC0D6F35EBBD4EF58B4CBEA52A9C3E7327D
          9AC90317233A0A2B3C5C3B849DC84495AFD74FA7BFE757B4CDED5CBCD4F15FC0
          D7F761C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DAFF61C3DBFF60C1
          D9F85FC0D6F35EBBD4EF58B4CBEA51A9C3E7327D9AC90316243A2E2D2D5C9090
          90C8AEAEAED7C1C2C1E7D4D4D4EDE0E0E0F1E7E7E7F7ECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFEBEBEBFFE7E6E6F8E3E4E4F3DADADAEFCECE
          CEEAC3C3C3E7888888C81919193A2D2D2D5C909090C8AEAEAED7C2C2C2E7D4D4
          D4EDE0E0E0F1E7E7E7F7ECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFEBEBEBFFE6E6E6F8E3E4E4F3DADADAEFCECECEEAC3C3C3E7888888C81919
          193A2D2D2D5C909090C8AEAEAED7C1C2C1E7D4D4D4EDE0E0E0F1E7E7E7F7ECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFEBEBEBFFE7E6E6F8E3E4
          E4F3DBDBDBEFCECECEEAC3C3C3E7888888C91A1A1A3D00000000000000000000
          00000000000000000000020A0E18040C121E09192330112730431836445E1F4A
          5B792C5E739B52A0BBE867C5DCFF66C3DAFF66C3DAFF66C3DAFF66C3DBFF4590
          ADDA2E637AA0245263831A3E4F69142E3B510D212B3B0A1C2433020C121D0108
          0D16040C121E09192330112730431836445E1F4A5B792C5E739B52A0BBE867C5
          DCFF66C3DAFF66C3DAFF66C3DAFF66C3DAFF4590ADDA30637AA0255263831A3E
          4F69152E3B510D212B3B0A1C2533030B131D0A0A09160B0B0B1E191919302A2A
          2A433C3C3C5E545454796969699BBCBCBCE8F2F2F2FFF0F0F0FFF0F0F0FFF1F1
          F1FFEEEEEEFFA8A8A8DA717171A05C5C5C8345454569313131512323233B1E1E
          1E320D0D0D1D090909160B0B0B1E191919302A2A2A433C3C3C5E545454796A6A
          6A9BBCBCBCE8F1F1F2FFF0F0F0FFF0F0F0FFF1F1F1FFEEEEEEFFA7A7A7DB7171
          719F5C5C5C8345454569313131512323233B1D1D1D320D0D0D1D090909160B0B
          0B1E191919302A2A2A433C3C3C5E5454547969696A9BBCBCBCE8F1F1F1FFF0F0
          F0FFF0F0F0FFF1F1F1FFEEEEEEFFA8A8A8DA717171A05C5C5C83454545693131
          31512323233B1D1D1D330D0D0D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000051F47
          5F8467BCD7FE6BC4DBFF6AC3DAFF6CC5DDFF5DB1CBF30B24324E000001070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000051F475F8467BCD7FE6BC4DBFF6AC3
          DAFF6CC5DDFF5DB1CBF30B24324E000001070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000551515184EAEAEAFEF4F5F4FFF4F4F4FFF6F6F6FFD6D5D6F32525
          254E000000070000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000550505084E9E9
          EAFEF4F5F4FFF4F4F4FFF6F6F6FFD7D5D7F32525254E00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000551515184E9E9E9FEF4F5F4FFF4F4F4FFF6F6
          F6FFD5D5D5F32626264E00000007000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000060F1A549AB5E172C5
          DEFF70C3DBFF72C5DEFF357088B4000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000050F1A5399B5E272C5DEFF70C3DBFF72C5DEFF366F
          88B5000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          041ABCBCBCE2FAFAFAFFF7F7F7FFF9F9F9FF838383B400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000505051ABCBCBCE1FBFBFBFFF7F7
          F7FFF9F9F9FF838383B400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000404041ABCBCBCE2FBFBFBFFF7F7F7FFF9F9F9FF838383B50000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024485F8375C2DBFE77C4DCFF66B0
          CBF50C1F2A410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000023485F8475C2DBFE77C4DCFF65B0CCF60C1E2940000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000056565684F7F7
          F7FEFBFBFBFFDEDEDEF623232341000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000056565584F8F8F8FEFBFBFBFFDDDEDEF52424
          2441000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000056565684F8F8F8FEFBFBFBFFDEDEDEF62323234100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000060E14205B9CB6E37FCAE2FF37687FAC010103070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000060E
          141F5C9CB6E380CBE2FF38687FAB010103070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010101020C4C4C4E3FFFFFFFF8383
          83AB010101070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001010101FC5C5C5E3FEFEFEFF838282AC00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F0F0F1FC5C5
          C5E3FEFEFEFF838383AB01010107000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000000000000000000
          0000000000012E50658769ACCAF4122430440000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000000000000000000000000000012E52658769AC
          CAF4132430430000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000000000000000000000000000167676787DCDCDCF32E2E2E44000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          000167676787DBDBDBF32E2D2D44000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000000000000000000000000000168686887DBDBDBF42E2E
          2E43000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001010200111B2D0006090E000000020000000000000000101E
          2737254A628A0105080F0000000000000000000000010004070C000C15230000
          0002000000000000000000000000000000000000000000000000010101021313
          132D0606060E000000020000000000000000101F2737254A628A0105080F0000
          000000000000000000010505050C0F0F0F230000000200000000000000000000
          0000000000000000000000000000010101021313132D0606060E000000020000
          000000000000282828366060608A0606060F0000000000000000000000010505
          050C0E0E0E230000000100000000000000000000000000000000000000000000
          0000010101021313132D0606060E000000020000000000000000282828376060
          608A0606060F0000000000000000000000010505050C0F0F0F23000000010000
          00000000000000000000000000000000000000000000010101021313132D0606
          060E000000020000000000000000272727376060608A0707070F000000000000
          0000000000010505050C0E0E0E24000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0204012F4B7B031E2F4800060B140000000000000000050D121B081A263C0000
          0103000000000000000000050A120219283F0128406900000202000000000000
          0000000000000000000000000000000000000001030401304B7B031E2F480006
          0B140000000000000000040D121A0719263C0000010300000000000000000005
          0A12021A283F0128406900000202000000000000000000000000000000000000
          00000000000000010204012F4B7B031E2F4800060B140000000000000000040D
          121B0619263B00000002000000000000000000050A12021A283F012840690000
          0202000000000000000000000000000000000000000000000000010101043434
          347B21212148080808140000000000000000050C121B0819263C000000020000
          000000000000060606121C1C1C3F2C2C2C690000000200000000000000000000
          0000000000000000000000000000010101043434347B21212148080808140000
          0000000000001010101A2020203C000000030000000000000000060606121C1C
          1C3F2C2C2C6A0000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000010204547DC01398
          B9E2054C6795011622370003080F0000000000000000000000000003080F0114
          20340447618D0F90AFDA034E72B3000001020000000000000000000000000000
          000000000000000000000000010204567EC01398B9E2064C6795011621370003
          070F0000000000000000000000000003080F011420340646618D1090B1DA034E
          72B4000001020000000000000000000000000000000000000000000000000000
          010204547DC01398B9E2064C6795011621360003070F00000000000000000000
          00000003070F011420340445618D0F90AFDA034D72B400000102000000000000
          000000000000000000000000000000000000000000025A5A5AC08E8E8EE24D4D
          4D95181818360404040F0000000000000000000000000404040F161616344848
          488D868686DA515151B300000002000000000000000000000000000000000000
          00000000000000000002595959C08E8E8EE24D4D4D95181818370404040F0000
          000000000000000000000505050F161616344848488D858585DA515151B30000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033C578319CEECFF16BEDEFF0A88
          ABE1023D58830010192800050A1300111C2B023D57840985AADF16BCDBFF17CA
          E9FF03334D750000000000000000000000000000000000000000000000000000
          000000000000033C56841ACEECFF17BEDEFF0A88AAE1023D5783001019280005
          0A1300111C2C023D57840985AADF17BDDCFF17CBE9FF03334D75000000000000
          0000000000000000000000000000000000000000000000000000033C57831ACE
          ECFF17BEDEFF0A88AAE1023D57830010192800050A1300111C2B023D57840985
          AADF16BDDBFF17CAE9FF03344D75000000000000000000000000000000000000
          00000000000000000000000000003F3F3F83BDBDBDFFB2B2B2FF868686E14141
          418311111128060606131313132B41414184858585DFB0B0B0FFBBBBBBFF3737
          3775000000000000000000000000000000000000000000000000000000000000
          00003F3F3F84BEBEBEFFB2B2B2FF868686E14141418311111128060606131313
          132B42424284858585DFB0B0B0FFBBBBBBFF3737377500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000123375A0AB1D4FF0FC3E0FF0EC5E4FF08B3D7FF0072
          99D50045629202779DDA08B4D8FF0EC4E4FF0EC4E1FF08A9CEFF011C2E4B0000
          0000000000000000000000000000000000000000000000000000000000000123
          375909B1D4FF0EC3E0FF0EC5E4FF08B3D7FF007299D50045629202779DDB08B4
          D8FF0EC4E4FF0EC5E1FF08AACFFF011C2D490000000000000000000000000000
          0000000000000000000000000000000000000123385A09B1D4FF0EC3E1FF0EC5
          E4FF08B3D7FF007299D50045629202779DDA08B4D8FF0EC4E4FF0EC5E1FF08A9
          CFFF011B2D4A0000000000000000000000000000000000000000000000000000
          0000000000002828285AB1B1B1FFC0C0C0FFC2C2C2FFB4B4B4FF787878D54A4A
          4A927C7C7CDAB4B4B4FFC1C1C1FFC0C0C0FFA9A9A9FF2020204B000000000000
          00000000000000000000000000000000000000000000000000002828285AB0B0
          B0FFC0C0C0FFC2C2C2FFB4B4B4FF787878D54A4A4A927C7C7CDAB4B4B4FFC1C1
          C1FFC0C0C0FFA9A9A9FF20202049000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001622370097C1FD00B6D6FF01B3D5FF01B6D8FF02B8DBFF00B3DAFF03B8
          DBFF01B6D7FF01B3D5FF01B7D8FF008BB5F6000F192800000000000000000000
          00000000000000000000000000000000000000000000001522370096C1FE00B6
          D6FF01B3D5FF01B6D8FF02B8DBFF00B3DAFF03B8DBFF01B7D7FF01B3D5FF01B6
          D8FF008BB5F7000F192700000000000000000000000000000000000000000000
          00000000000000000000001622370096C0FD00B6D7FF01B3D5FF01B6D8FF02B8
          DBFF00B3DAFF03B8DBFF01B7D7FF01B3D5FF01B6D8FF008BB5F7000F19280000
          0000000000000000000000000000000000000000000000000000000000001818
          1837A3A3A3FDC0C0C0FFBEBEBEFFC1C1C1FFC2C2C2FFBFBFBFFFC3C3C3FFC1C1
          C1FFBEBEBEFFC1C1C1FF969696F6121212280000000000000000000000000000
          00000000000000000000000000000000000019191937A1A1A1FEC0C0C0FFBEBE
          BEFFC1C1C1FFC2C2C2FFBFBFBFFFC3C3C3FFC1C1C1FFBEBEBEFFC1C1C1FF9595
          95F7121212270000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000C121E007B
          A7EC00ADD2FF00A8CEFF00A8CEFF00A9CEFF00AAD0FF00A9CEFF00A8CEFF00A8
          CEFF00ADD2FF006C96D500060D17000000000000000000000000000000000000
          0000000000000000000000000000000B121E007AA7EC00ADD1FF00A8CEFF00A8
          CEFF00A9CEFF00AAD0FF00A9CEFF00A8CEFF00A8CEFF00ADD2FF006B95D60007
          0C17000000000000000000000000000000000000000000000000000000000000
          0000000C121E007BA7EC00ADD2FF00A8CEFF00A8CEFF00A9CEFF00AAD0FF00A9
          CEFF00A8CEFF00A8CEFF00ADD2FF006B96D600070D1700000000000000000000
          000000000000000000000000000000000000000000000C0C0C1F8D8D8DECC5C5
          C5FFC1C1C1FFC0C0C0FFC1C1C1FFC2C2C2FFC1C1C1FFC0C0C0FFC1C1C1FFC6C6
          C6FF7C7C7CD50808081700000000000000000000000000000000000000000000
          000000000000000000000C0C0C1E8C8C8CECC5C5C5FFC1C1C1FFC0C0C0FFC1C1
          C1FFC2C2C2FFC1C1C1FFC0C0C0FFC1C1C1FFC6C6C6FF7C7C7CD6080808170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000003091200618BCF00A1CBFF009E
          C7FF009EC7FF009FC7FF009EC7FF009FC7FF009EC7FF009EC7FF00A2CBFF0051
          75B00001050D0000000000000000000000000000000000000000000000000000
          0000000000000003091200618CCF00A1CAFF009EC7FF009EC7FF009FC7FF009E
          C7FF009FC7FF009EC7FF009EC7FF00A2CBFF005175B00001040D000000000000
          0000000000000000000000000000000000000000000000000000000309120061
          8CCF00A1CBFF009EC7FF009EC7FF009FC7FF009EC7FF009FC7FF009EC7FF009E
          C7FF00A2CBFF005177B10001040C000000000000000000000000000000000000
          000000000000000000000000000004040413767676CFC8C8C8FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC7C7C7FF616161B00000
          000C000000000000000000000000000000000000000000000000000000000000
          000004040412757575CFC8C8C8FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC7C7C7FF616161B00000000D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001061A2539096D96DA0295C3FF0092C0FF0092C0FF0093
          BFFF0094C0FF0094C0FF0094C0FF0094C0FF0094C3FF00537AB9000911210000
          000000000000000000000000000000000000000000000000000000000001061B
          2639096D97DA0295C3FF0092C0FF0092C0FF0093BFFF0094C0FF0094C0FF0094
          C0FF0094C0FF0094C3FF00547ABA000912210000000000000000000000000000
          000000000000000000000000000000000001061A2539096D97D90295C4FF0092
          C0FF0092C0FF0093BFFF0094C0FF0094C0FF0094C0FF0094C0FF0095C4FF0053
          7AB9000911210000000000000000000000000000000000000000000000000000
          0000000000011919193A868686DBC9C9C9FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7
          C7FFC7C7C7FFC7C7C7FFC8C8C8FFC7C7C7FF6A6A6AB90A0A0A22000000000000
          0000000000000000000000000000000000000000000000000001191919398585
          85DAC9C9C9FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8
          C8FFC7C7C7FF6A6A6AB90A0A0A22000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000103071E
          2638308AA2CD3EBDDAFF22A4CAFF1297C1FF078CBCFF0489B9FF0188B9FF0087
          B9FF0087B8FF0087B8FF0088B9FF0082B6FF004366A20009111D000000000000
          000000000000000000000000000000000103071E26383089A2CD3EBEDAFF22A4
          CAFF1197C1FF078CBCFF0489B9FF0188B9FF0087B9FF0087B8FF0087B8FF0088
          B9FF0082B5FF004367A20009111D000000000000000000000000000000000000
          000000000103071E2638308AA2CD3EBEDAFF22A4CAFF1197C1FF078CBCFF0489
          B9FF0188B9FF0087B9FF0087B8FF0087B8FF0089B9FF0082B5FF004367A20009
          111D0000000000000000000000000000000000000000000000031D1D1D388989
          89CDD4D4D4FFD0D0D0FFCCCDCDFFCACACAFFCACACAFFC9C9C9FFC8C8C8FFC8C8
          C8FFC8C8C8FFCACACAFFBABABAFF595959A20A0A0A1D00000000000000000000
          00000000000000000000000000031D1D1D388A8A8ACDD5D5D5FFD0D0D0FFCCCD
          CDFFCACACAFFCACACAFFC9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFCACACAFFBABA
          BAFF595959A20A0A0A1D00000000000000000000000000000000000000000000
          00000000000000000000000000000001020409232E43338CA6D05ED2E8FF5FD0
          E2FF5CCDE1FF4ABED8FF36AECEFF27A0C7FF1893BEFF0C89B9FF0983B5FF0681
          B4FF037FB3FF0280B4FF017BB3FF004065A30009122000000000000000000000
          00000000020409232E43338CA6D05ED2E8FF5FD0E2FF5CCDE1FF49BED8FF36AE
          CEFF27A0C7FF1893BEFF0C89B9FF0983B5FF0681B4FF037FB3FF0280B4FF017B
          B3FF004065A3000912200000000000000000000000000001020409222F43338C
          A6D05ED2E8FF5FD0E2FF5CCDE1FF49BED8FF36ADCEFF27A0C7FF1893BEFF0C89
          B9FF0983B5FF0681B4FF037FB3FF0280B4FF017BB3FF004065A3000912200000
          000000000000000000000000000422222243919191D0E4E4E4FFE2E2E2FFE0E0
          E0FFDDDCDCFFD8D8D8FFD5D5D5FFD2D2D2FFCFCFCFFFCDCDCDFFCCCCCCFFCCCC
          CCFFD0D0D0FFC0C0C0FF595959A30A0A0A200000000000000000000000000000
          000422222243919191D0E4E4E4FFE2E2E2FFE0E0E0FFDDDCDCFFD8D8D8FFD5D5
          D5FFD2D2D2FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFD0D0D0FFC0C0C0FF5959
          59A30A0A0A200000000000000000000000000000000000000000000000000000
          0000010204060E28344A3C91ABD65FD0E7FF5ECAE0FF5CC7DEFF5DC7DEFF60CB
          E0FF62CDE1FF5BC7DDFF52BED8FF4AB6D3FF40ADCEFF33A3C7FF2799C1FF2190
          BCFF1B8DBCFF1486B9FF0F4F70A5050F162200000000010203050E27344A3C90
          ABD65FD0E7FF5ECAE0FF5CC7DEFF5DC7DEFF60CBE0FF62CDE1FF5BC7DDFF52BE
          D8FF49B6D3FF40ADCEFF33A3C7FF2799C1FF2190BCFF1C8DBCFF1486B9FF0F4F
          70A5050F162200000000010203050D28344A3C91ADD65FD0E7FF5ECAE0FF5CC7
          DEFF5DC7DEFF60CBE0FF62CCE1FF5BC7DDFF52BED8FF4AB6D3FF40ADCEFF33A3
          C7FF2799C1FF2190BCFF1C8DBCFF1486B9FF104F70A5050F1622000000000202
          02052929294A9E9E9ED6EBEBEBFFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE4E4E4FFE3E3E3FFE1E1E1FFDDDDDDFFDBDBDBFFD9D9D9FFD6D6D6FFDBDB
          DBFFC7C7C7FF646464A50F0F0F2200000000020202052828284A9E9E9ED6EBEB
          EBFFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE4E4E4FFE3E3E3FFE1E1
          E1FFDDDDDDFFDBDBDBFFD9D9D9FFD6D6D6FFDBDBDBFFC7C8C7FF646464A50F0F
          0F22000000000000000000000000000000000000000000000000061B293F3C8B
          A8D960CAE2FF5FC6DEFF5FC6DEFF5FC6DEFF5FC6DEFF5EC5DCFF5EC3DAFF5FC5
          DCFF62C7DDFF63C8DDFF63C7DDFF61C7DDFF5FC6DDFF5DC4DCFF5CC2DCFF59C3
          DCFF54BDDBFF29607AA502090E19061A263B3C8CA8D95FC9E2FF5FC6DEFF5FC6
          DEFF5FC6DEFF5FC6DEFF5EC5DDFF5EC3DAFF5FC5DCFF62C7DDFF63C8DDFF63C7
          DDFF61C7DDFF5FC6DDFF5DC4DCFF5CC2DCFF59C3DCFF54BDDBFF28607AA40209
          0E19061A263B3B8BA8D95FCAE2FF5FC6DEFF5FC6DEFF5FC6DEFF5FC6DEFF5EC5
          DCFF5EC3DAFF5FC5DCFF62C7DDFF63C8DDFF63C7DDFF61C7DDFF5FC6DDFF5DC4
          DCFF5CC2DCFF59C3DCFF55BDDBFF27607AA502090E1A1C1B1B3B979797D9E9E9
          E9FFEBEBEBFFEBEBEBFFECECECFFECECECFFEBEBEBFFE9E9E9FFE9E9E9FFE9E9
          E9FFEAEAEAFFEAEAEAFFECECECFFECECECFFECECECFFEAEAEAFFEEEEEEFFDDDD
          DDFF686868A50B0B0B191B1B1B3B979797D9E9E9E9FFEBEBEBFFEBEBEBFFECEC
          ECFFECECECFFEBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFEAEAEAFFECEC
          ECFFECECECFFECECECFFEAEAEAFFEEEEEEFFDDDDDDFF686868A50B0B0B1C0000
          0000000000000000000000000000000000000A32476B306C80A13A7B8FB4408A
          9FC14996ADD14EA1B9E254AEC7ED5FBED7FD62C3DAFF62C3DAFF62C3DAFF62C3
          DAFF63C3DAFF5FBDD7FA57B1CBEE51A8C1E74E9CB4DA4893A9C942889FBF3575
          8DB9061E2D47082F4366306C7FA13A798FB4408AA0C14996ADD14EA1B9E254AE
          C7ED5FBED8FD62C3DAFF62C3DAFF62C3DAFF62C3DAFF63C3DAFF5FBDD7FA57B1
          CBEE51A8C1E74E9CB4DA4893A9C942889FBF34758DB9061E2D47082E4366306C
          80A13A798FB4408A9FC14996ADD14EA1B9E254AEC7ED5FBED7FD62C3DAFF62C3
          DAFF62C3DAFF62C3DAFF63C3DAFF5FBDD7FA57B1CBEE51A8C1E74E9CB4DA4893
          A9C940889FBF35758DB9071E2D4734333366747474A1898989B49F9F9FC1B0B0
          B0D1BFBFBFE2CECECEEDE6E6E6FDEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
          EEFFE3E3E3FAD3D3D3EEC5C5C5E7B8B8B8DAA9A9A9C99D9D9DBF808080B92222
          224733333366747474A1898989B49F9F9FC1B0B0B0D1BFBFBFE2CECECEEDE6E6
          E6FDEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFE3E3E3FBD3D3D3EEC5C5
          C5E7B8B8B8DAA9A9A9C99D9D9DBF808080B92222224800000000000000000000
          0000000000000000000000000000000000000000000100040B1908162137112C
          3B541D445470438BA6D168C4DCFF67C3DAFF67C3DAFF67C3DAFF66C0D9FF3874
          8AB6204959741335445D0C1E2D46020D16280000051000000000000000000000
          0000000000000000000100040B1908162137112C3B541D445470438DA6D168C4
          DCFF67C3DAFF67C3DAFF67C3DAFF66C0D8FF38748CB6204959741335445D0C1E
          2D46020D16280000051000000000000000000000000000000000000000010003
          0B1908162137112C3B541D445470438BA6D168C4DCFF67C3DAFF67C3DAFF67C3
          DAFF66C0D8FF38748AB6204959741335445D0C1E2D46020D1628000005100000
          00000000000000000000000000000000000101010119151515372E2E2E544A4A
          4A70A2A2A2D1F1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFECECECFF838383B65050
          50743838385D1E1E1E460B0B0B28000000100000000000000000000000000000
          00000000000101010119151515372E2E2E544A4A4A70A4A4A4D1F1F1F1FFF1F1
          F1FFF1F1F1FFF2F2F2FFECECECFF838383B7505050743838385D1E1E1E460B0B
          0B28000000100000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000112D
          3E5D63B8D0F86DC4DCFF6CC3DBFF6EC5DDFF56A0BCE8010A1327000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000112E3E5D63B8D0F86DC4DCFF6CC3
          DBFF6EC5DDFF56A3BBE8010A1427000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000112D3E5D63B8D0F86DC4DCFF6CC3DBFF6EC5DDFF56A3BBE8010A
          1327000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003232325DE3E3
          E3F8F6F6F6FFF5F5F5FFF8F8F8FFC4C4C4E80A0A0A2700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003232325DE3E3E3F8F6F6F6FFF5F5F5FFF8F8
          F8FFC4C4C4E80A0A0A2700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000030A44859ECB74C5
          DEFF72C2DBFF72C3DCFF2852688F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000030A44869ECB74C5DEFF72C2DBFF72C3DCFF2852
          6890000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          030A44859ECB74C5DEFF72C2DBFF72C3DCFF2853688F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000AA1A1A1CBFCFCFCFFF8F8
          F8FFF7F7F7FF6363638F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000A9F9F9FCBFCFCFCFFF8F8F8FFF7F7F7FF6363638F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001531426171BDD6FC7AC7DEFF5C9F
          BBE8050F16250000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001531426171BDD7FC7AC7DEFF5B9EBBE805101625000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001631426171BD
          D7FC7AC7DEFF5B9FBBE8050F1625000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B3B3B61F0F0F0FCFDFDFDFFC8C8C8E81111
          1125000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003A3A3A61F0F0F0FCFDFDFDFFC8C8C8E81111112500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002040A104E87A2CF7EC8E2FF2A4F6487000001030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000204
          09104E87A2CF7EC8E1FF2B4F6487000001030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020409104E87A2CF7EC8E1FF2B50
          6287000001030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000005050510ABABABCFFBFBFBFF6464648701010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000005050510ABAB
          ABCFFBFBFBFF6464648701010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010003050A00000000000000000000
          000000000001253E4F6B5794AFDC0B1820300000000000000000000000000000
          0000000203070000000000000000000000000000000000000000000000000000
          0000000000010003050A00000000000000000000000000000001253E506B5693
          B1DC0B18202F0000000000000000000000000000000000020307000000000000
          00000000000000000000000000000000000000000000000000010404040A0000
          0000000000000000000000000001253F506B5693B1DC0B181F2F000000000000
          0000000000000000000002020206000000000000000000000000000000000000
          00000000000000000000000000010303030A0000000000000000000000000000
          00014F4F4F6BBFBFBFDC1E1E1E30000000000000000000000000000000000202
          0207000000000000000000000000000000000000000000000000000000000000
          00010404040A000000000000000000000000000000014F4F4F6BBFBFBFDC1E1E
          1E2F000000000000000000000000000000000202020700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000102030023385D010F17240000020600000000000000000811
          1A26122C3D5E00030407000000000000000000000104000D1420001D2D4C0001
          0102000000000000000000000000000000000000000000000000000102030022
          385D000F172400000206000000000000000008121A26112B3E5E000204070000
          00000000000000000104000D1420001D2D4C0001010200000000000000000000
          0000000000000000000000000000010101032727275D10101024010101060000
          00000000000008131A25112B3E5D000203070000000000000000000000040E0E
          0E201F1F1F4B0101010200000000000000000000000000000000000000000000
          0000010101032727275D10101024010101060000000000000000171717263737
          375E020202070000000000000000000000040E0E0E201F1F1F4C010101020000
          00000000000000000000000000000000000000000000010101032727275D1010
          1024010101060000000000000000171717253737375E02020207000000000000
          0000000000040E0E0E201F1F1F4C010101020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000003C5D940A64
          83B2001E335900000005000000000000000002090F1A00000204000000000000
          00000000020A00253D64075D7EB200253D650000000000000000000000000000
          000000000000000000000000000000020407014C73B1065977A4001324430000
          0000000000000001010102090E19000000010000000000000000000009170233
          4E7805597BB60017254100000000000000000000000000000000000000000000
          000000000000000C1422045A81BD054B68940009172F00000000000000000103
          050801070B140000000000000000000000000007122704435F8C035175B0000B
          121E00000000000000000000000000000000000000000000000000000000001A
          2B46076387C0023C568200020B1D0000000000000000010609100004080D0000
          00000000000000000000000E1F3B07506D9B024468A300010305000000000000
          000000000000000000000000000000000000000000003030306F636363BD3030
          306F0101010E000000000000000001080D170002040800000000000000000000
          00011E1E1E50595959A93B3B3B88000000000000000000000000000000000000
          000000000000000000000000000000000000003251841AB9D8FF1399B9E20655
          75A6001625400000000400000000000000000000040B011E3354065F80B315A1
          C2E7139FC1EF00192F5400000000000000000000000000000000000000000000
          00000000000000000105044D71AA1BBEDCFC108DAED903456393000D192D0000
          0000000000000000000000030A15012940690A6E8EC017ADCCEF0D85A7DA000B
          1932000000000000000000000000000000000000000000000000000000000006
          0C1B096C90C719BBDAF80E7FA1D0023853800007101E00000000000000000000
          00000008101F0234507D0C7C9CCC17B6D4F6076487BC00040A15000000000000
          00000000000000000000000000000000000000000000000F1E390E8BAFE119B2
          D1F2097293C5012B436B00030913000000000000000000000001000D1A2D0342
          5F900E89A9D519B7D8FA0445679C000001030000000000000000000000000000
          00000000000000000000000000002525255E9B9B9BF59B9B9BEB646464B72323
          23560000000A00000000000000000000000518181840535353A28C8C8CDEA5A5
          A5FD313131770000000000000000000000000000000000000000000000000000
          00000000000000000000001A305610B5D3FC17C8E5FF11B5D4FD0788A9D80146
          629200132035001C2D47025475A70993B6E012B9DAFF17CAE8FF0B92B2E00007
          142B000000000000000000000000000000000000000000000000000000000000
          000202324D7913C3E2FF16C6E2FF0EADCDF7067C9DD00138527C00101C2F0125
          385A036283B90C9DBEE813BEDEFF15CBE9FF07718EBC00010815000000000000
          000000000000000000000000000000000000000000000001030C0554719E15CA
          E9FF14C2E1FF0CA6C7F1046E90C5012D436800101A2D0130476E047092C70CA6
          C7F014C1E0FF14C8E7FF054A6791000001080000000000000000000000000000
          000000000000000000000000000000020C1F087997C416CCEAFF14BFDFFF0C9F
          C0E9036082B60122335400111D31013B5582067CA0D00EADCDF615C5E2FF11BE
          DEFF022C436A0000000000000000000000000000000000000000000000000000
          00000000000010101038949494E4BFBFBFFFB3B3B3FF939393E0575757A41C1C
          1C42181818394C4C4C95878787D7ADADADFCBCBCBCFFA7A7A7FA191919450000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000C18300396BEF707BCDBFF07BEDDFF05BBDCFF03A6CAF5007BA0D30185
          A8DA03AED0FC06BDDEFF07BEDCFF07BCDCFF027095D00001050C000000000000
          00000000000000000000000000000000000000000000000000000020335104A8
          CEFF08BDDBFF07BEDDFF05B9DAFF029DC0EE00779CD1018DB1E104B2D5FF07BE
          DEFF07BEDDFF05B6DAFF015371A0000001030000000000000000000000000000
          000000000000000000000000000000000003013C567E05B4D9FF07BEDCFF06BE
          DDFF05B6D8FF0295B9E600769BD00298BAE905B6D8FF06BEDDFF07BFDCFF04AD
          D3FF01334A6E0000000100000000000000000000000000000000000000000000
          0000000000000000030A015D7DAE06B9DDFF07BEDCFF07BEDEFF04B2D4FF018A
          ADDF00789DD203A0C4F005B9DBFF07BEDDFF07BEDDFF039FC8FF001A28400000
          0000000000000000000000000000000000000000000000000000000000000404
          0417828282D8BEBEBEFFBEBEBFFFBEBEBEFFAFAFAFFB888888D8858585D5ABAB
          ABF7BDBDBEFFBEBEBFFFBEBEBEFF919191F20909091C00000000000000000000
          000000000000000000000000000000000000000000000000000000040810007B
          A6EB00B2D4FF00B0D3FF01B2D4FF01B5D7FF00B1D6FF00B2D5FF01B5D6FF01B1
          D4FF00B1D3FF00AED2FF005277B2000000000000000000000000000000000000
          00000000000000000000000000000000000000131E30008FB9FB00B3D5FF00B0
          D3FF01B2D4FF01B4D7FF00B0D6FF00B3D7FF01B4D6FF00B0D3FF00B2D5FF00A3
          CAFE003955820000000000000000000000000000000000000000000000000000
          0000000000000000000000293D5F009EC8FF00B3D5FF00B0D3FF01B3D5FF01B3
          D7FF00B0D5FF01B4D7FF01B3D5FF00B0D3FF00B4D6FF0094BEFA002133500000
          0000000000000000000000000000000000000000000000000000000000000000
          00010046639400A9D1FF00B2D4FF00B0D3FF01B4D6FF00B2D7FF00B0D5FF01B4
          D7FF01B2D4FF00B0D3FF00B4D6FF0080ACEF000D162300000000000000000000
          00000000000000000000000000000000000000000000000000036B6B6BC5BEBE
          BEFFBFBFC0FFBFBFBFFFC2C2C2FFC0C0C0FFC0C0C0FFC2C2C2FFC0C0C0FFBFBF
          BFFFC0C0C0FF777777D801010105000000000000000000000000000000000000
          00000000000000000000000000000000000000000103005D87CA00A9CDFF00A6
          CCFF00A5CCFF00A5CCFF00A8CEFF00A7CDFF00A5CCFF00A5CCFF00A7CDFF00A0
          C5FD003554890000000000000000000000000000000000000000000000000000
          00000000000000000000000B111E00749EE300AAD0FF00A6CCFF00A5CCFF00A6
          CCFF00A8CEFF00A7CDFF00A5CCFF00A5CCFF00A8CFFF0090B8F4002339610000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001B2B450086B2F300AAD0FF00A6CCFF00A5CCFF00A6CDFF00A8CEFF00A6
          CDFF00A5CCFF00A6CCFF00AAD1FF007BA5E40013203A00000000000000000000
          000000000000000000000000000000000000000000000000000000314A760099
          C1FB00A8CFFF00A5CCFF00A5CCFF00A7CDFF00A8CEFF00A5CCFF00A5CCFF00A6
          CCFF00ABD1FF00628CCC00060D17000000000000000000000000000000000000
          000000000000000000000000000000000000515151A3BDBDBDFFC2C2C2FFC1C1
          C1FFC1C1C1FFC3C3C3FFC3C3C3FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FF5858
          58AF000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004267A8009BC5FF009BC5FF009CC5FF009C
          C5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC6FF008FBAF8001C32580000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000610005982C7009EC9FF009BC5FF009CC5FF009CC5FF009CC5FF009C
          C5FF009CC5FF009CC5FF009EC9FF007AA5E2000E1D3900000000000000000000
          0000000000000000000000000000000000000000000000000000000B1930006F
          9BDE009EC9FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009C
          C5FF00A0CBFF006289C400040D1C000000000000000000000000000000000000
          000000000000000000000000000000000000001C31590084B0F2009DC8FF009C
          C5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009CC5FF009ECBFF0048
          69A2000002060000000000000000000000000000000000000000000000000000
          0000000000000000000033333381BABABAFDC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFBFBFBFFF3838387E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000061A263C14739BDC0493C1FF008FBDFF008EBCFF008FBEFF0092BFFF0093
          BFFF0093BFFF0092BFFF0092BFFF008AB9FD003D5F9D0002060C000000000000
          00000000000000000000000000000000000000000000000000000A2A3C5B127E
          A8ED0394C1FF008EBDFF008EBDFF0090BEFF0092BFFF0093BFFF0093BFFF0092
          BFFF0094C1FF007FAFF5002C497A000000000000000000000000000000000000
          0000000000000000000000000000000001060D3C547C0E88B5F50193C1FF008E
          BCFF008EBDFF0090BEFF0093BFFF0093BFFF0093BFFF0092BFFF0094C2FF0071
          9EE8001D31540000000000000000000000000000000000000000000000000000
          00000000000000050A1511516EA00A8FBBFB0091BFFF008DBCFF008FBDFF0091
          BFFF0092BFFF0093BFFF0093BFFF0092BFFF0093C1FF00608DD600101D340000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D276E6E6EC1C3C3C3FEC6C6C6FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC3C3C3FF626262BE0606061A00000000000000000000
          00000000000000000000000000000000000000000000091F2C45368DA5CC4DC1
          DAFF38B6D4FF1EA1C7FF0F92BEFF058ABBFF0084B6FF0081B5FF0082B5FF0085
          B8FF0087B8FF0088B9FF0076A7F10038588E0004060C00000000000000000000
          00000000000000000000000000011030425E3DA1B9DF4BC2DAFF33B1D1FF1A9D
          C4FF0D90BEFF0389B9FF0083B6FF0081B4FF0083B6FF0085B8FF0087B8FF0088
          B9FF006D9DE70029426D00000001000000000000000000000000000000000000
          00000000010919475B7B43ADC5E847C1DAFF2EADCDFF169AC2FF0C8EBCFF0188
          B8FF0083B5FF0081B4FF0083B6FF0086B8FF0088B9FF0086B7FF00618ED8001D
          2F5000000000000000000000000000000000000000000000000000030B18225F
          739749B7D0F143BDD8FF28A8CBFF1497C1FF098EBCFF0087B8FF0082B5FF0081
          B4FF0085B6FF0086B8FF0087B8FF0081B3FD00557FC500111E33000000000000
          0000000000000000000000000000000000001010102D777777B2CACACAF9D6D6
          D6FFD0D0D0FFCCCDCCFFCACBCAFFC8C8C8FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
          C9FFC9C9C9FFB6B6B6F95B5B5BAB0707071E0000000000000000000000000000
          000000000000000000000B22314C3C90A9CE59CBE2FF5DCEE2FF59CBDFFF52C5
          DCFF47BBD7FF36ADCEFF26A0C6FF1C95C0FF118CBAFF0783B5FF017DB1FF0078
          AFFF0079B0FF00669EF2002D528D0000020C0000000000000000000000000000
          00031336496842A1BCE25BCEE3FF5DCDE1FF59C9DFFF51C4DBFF45B8D6FF32AA
          CCFF249DC4FF1B92BEFF0E8AB9FF0782B4FF007CB0FF0079AFFF0077AFFF005E
          93E800213E6F000000000000000000000000000000000000040D1D4C60854BB1
          CAEC5BCFE4FF5BCDE1FF57C8DEFF4FC2DAFF42B5D3FF2FA7CAFF229AC3FF1991
          BDFF0C89B7FF0680B3FF007BAFFF0078AEFF0075AEFF005486DA00142B510000
          000000000000000000000000000000040D1C27637BA050BCD3F45CCFE4FF5BCB
          E0FF56C7DEFF4DC0D9FF3DB3D1FF2CA4C9FF2098C1FF178FBCFF0A87B7FF047F
          B3FF007AAFFF0078AEFF0073ACFF004878C5000B1B3700000000000000000000
          00000000000012121231808080B7D5D5D5FBE4E4E4FFDFDFDFFFDEDEDEFFDCDD
          DCFFD9DAD9FFD5D5D5FFD2D2D2FFD0D0D0FFCECECEFFCCCCCCFFCACACAFFCDCD
          CDFFB6B6B6FB5B5B5BAB0505051F000000000000000000000000000000000D25
          35504092ABD35CC9E0FF5ECADFFF5CC7DCFF5DC8DDFF5FC9DEFF5DC8DEFF5AC6
          DCFF58C3DBFF51BED7FF46B5D2FF3DACCDFF37A5C8FF2E9FC4FF2B99C2FF2897
          C3FF2386B1F2184C6590000003090000000000000005173A4F6E48A4BEE45DCB
          E2FF5DC8DDFF5CC7DDFF5DC8DDFF5EC9DEFF5EC8DDFF5AC6DCFF57C2DAFF50BB
          D6FF44B3D1FF3DABCCFF36A4C8FF2D9EC3FF2A99C2FF2696C1FF237EA6E8143C
          4F720000000000000000000107112151688C50B1CBEF5DCBE2FF5CC7DDFF5CC7
          DDFF5DC8DEFF5FC9DEFF5DC7DDFF59C5DBFF55C0DAFF4EBAD5FF41B1D0FF3CA9
          CBFF33A2C6FF2C9CC3FF2999C2FF2694C0FF21749BDA0E2B3952000000000000
          0000000812202C6781A953BDD4F75ECBE1FF5CC7DDFF5CC7DDFF5EC9DEFF5FC9
          DEFF5CC7DDFF59C3DBFF54C0D8FF4CB8D4FF3FAFCFFF3BA8CAFF30A1C6FF2C9B
          C2FF2998C2FF2691BDFF1E698BC6071A25370000000000000000151515358888
          88BFDCDCDCFCE9E9E9FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4
          E4FFE3E3E3FFE0E0E0FFDFDFDFFFDCDDDDFFDADADAFFDADADAFFDDDDDDFFC4C4
          C4FA69696AAC0A0A0A1D00000000000000000B2D3F5E489BB8E163CEE7FF64CD
          E4FF62C9E0FF61C8DFFF61C8DFFF5FC6DDFF5FC4DAFF60C5DBFF61C6DCFF61C5
          DBFF60C5DBFF5FC5DCFF60C6DDFF5FC6DEFF5DC4DEFF5BC3DDFF5AC4E0FF54B7
          D1FD285E749900070F1B1641567A52ACC8F065CFE9FF64CBE3FF62C8E1FF61C8
          E0FF61C8DFFF60C6DCFF5FC4DAFF60C5DBFF62C6DCFF61C5DBFF5FC5DBFF5FC5
          DBFF5FC7DEFF5EC6DEFF5CC3DCFF5AC3DDFF5AC4E0FF4FACC8F31C4659770008
          10202459719857BAD5FD66D0E8FF64CBE2FF61C9DFFF61C8DFFF61C8DFFF5FC5
          DBFF60C4DBFF61C5DBFF61C6DCFF60C5DBFF5FC4DBFF5FC6DDFF60C6DEFF5DC6
          DEFF5CC3DCFF5BC3DEFF5AC4E1FF489DB9E513324056000D192B31718AB65DC4
          DEFF65CFE7FF62CAE2FF61C8E0FF61C8DFFF60C8DEFF5FC5DAFF60C4DBFF61C5
          DCFF61C6DCFF60C5DBFF5FC5DBFF60C6DCFF5FC6DEFF5DC4DDFF5BC3DDFF5AC3
          DEFF5AC2DEFF3E8BA5CF091F2A3B1C1B1B3F949494D1E8E8E8FFF5F5F5FFF1F1
          F1FFF0F0F0FFEFEFEFFFEEEEEEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF4F4F4FFE1E1E1FF7E7E
          7EB61111112500000000051C2A411E4D607E2C62779B357790BB4190ADD751A8
          C2F05AB6CFF861C2DAFF64C5DBFF62C3DAFF63C3DAFF63C3DAFF63C4DAFF65C5
          DDFF62C0D9FE5DB9D3F954ACC6F3479BB4DF3B849EC7336E86AF1C4A5D84000D
          17280A26344C215466842E667BA2367D96C14496B2DD53ABC5F25CB9D2F963C4
          DCFF63C3DBFF63C3DAFF63C3DAFF63C3DAFF63C3DAFF65C5DDFF61C0D8FC5BB7
          D1F951A9C4F14496AFDA3A8099C2306B82AC153C4E6F000B14261031415C2458
          6A8A2F6980A83A829BC7479AB5E155AEC9F55DBAD5FB64C6DDFF62C3DAFF63C3
          DAFF63C3DAFF62C3DAFF63C3DAFF65C6DDFF5FBFD7FB5AB5CEF94FA6C0EC4290
          AAD6387C95BD2C667CA60E2E3D59000D1729153B4D6A275C6E8F326E84AE3C87
          A2CB4A9FBAE757B1CBF75EBED6FC65C6DDFF62C3DAFF63C3DAFF63C3DAFF63C3
          DAFF64C5DBFF64C4DDFF5EBDD6FB58B2CCF84CA3BBE83E8BA7D1387790B9275E
          739D07202D44131415314B4B4B766A6A6A95808080B5A0A0A0D2BDBDBDEBD3D3
          D3F8E4E4E4FEEFEFEFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEFEFEFFFE8E8
          E8FFDBDBDBF9CBCBCBF6B5B5B5E49A9A9ACC838383B35A5A5A92171717330000
          0000000204060003060C030A0F1907131A260C1E263113272E3E172F3D55306C
          82AA63BDD7FE68C4DCFF67C3DAFF66C3DAFF6BC9E0FF4F9DBAE8214C60811632
          4158132830440E21293509181F2B060F1420030A0E160004060A000203060004
          080E040C111C08161D280D202834132830431732425B3E849DC866C3DBFF67C4
          DBFF67C3DAFF66C3DAFF6BC8E0FF458BA8D81C44547116303E5612272F3F0D1F
          273308161D29050E131E02090C14000305080002040800050911050E131E0918
          1F2B0F222936142A3448173949644A9AB5E469C4DCFF67C3DAFF67C3DAFF66C3
          DAFF69C6DEFF3A7996C5193E4D67152D3C5211262D3A0C1D253108141B27040D
          121C02080B11000204070002040901070B13060F15210A1A212C10242B38152B
          384D1A44567355AAC6F469C4DBFF67C3DAFF67C3DAFF68C4DBFF64BDD6FE3168
          83AD17394861152B384D10242B390B1B232F07121925040C101A0106090F0202
          03060202020A08080816111111231E1E1E2F2A2A2A3A333333516161618CDADA
          DAFCF5F5F5FFF1F1F1FFF1F1F1FFF7F7F7FFD2D2D2F5636363953C3C3C5B2F2F
          2F49262626371B1B1B2D111111220B0B0B180505050C00000000000000000000
          00000000000000000000000000000000000000000001091A24385199B3DD6FC8
          E1FF6BC3DAFF6DC3DBFF6BC4DEFF2B596E910005091100000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000003122B3B5961B3CDF46DC5DDFF6BC2DAFF6CC4
          DBFF66BCD7FE19384A680002050B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000001061C43577B6CC2DCFF6BC2DAFF6BC3DAFF6CC4DAFF5DB0CCF80B1F
          2D44000002070000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000002050C2D5F
          769F6FC8E2FF6CC3DAFF6BC2DAFF6DC5DDFF5098B4DF06101B2D000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A1E969696C0FCFCFCFFF5F5
          F5FFF5F5F5FFF8F8F8FF929292BB0808081C0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102052E5C72976EC0D9FC72C3DCFF75C8
          E1FF569BB6E10C19253700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000103060D407B94C174C5DDFF71C2DBFF77CAE3FF44829BC6040A
          0F18000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000030A
          101C5095B2E173C5DCFF71C2DAFF75C8E1FF31637EA800000204000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D1F2B3F5CAAC5EE75C6
          DDFF71C2DBFF71C2DBFF21495D83000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000047474769E4E4E4F7FBFBFBFFFBFBFBFFDFDF
          DFF53636365D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A17233860A4C0E879C7E0FF74C0DBFF325C72970101
          0407000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000112B3A5771BAD5FE79C5DEFF6CB7D4FB1E3B4D6A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000022455A7C77C5
          DFFF79C6DDFF62ABC7F30E1F2C3F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000104070B36667BA37AC9E3FF79C5DDFF5799
          B5E4030B131F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0F0F1EA9A9A9C8FFFFFFFFFCFCFCFF999999C2050505110000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000020535627BA47EC8E1FF63A1BCE70A17243900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000003060D477E
          9BC883CEE7FF4E839DC6050A121D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008121A285897B2DE84D0E7FF3662
          7AA10103050A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001429364E67AAC6EE7FC9E3FF23445A7D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00015757577AEFEFEFFBF0F0F0FE313131570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000091A
          253A69ABC9F6355E779E00000206000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001833435E6CB0CFFC2441
          5472000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010202042D54678964A8C7F613253246000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000206081044768EB45996B5E5060F17220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E22C0C0
          C0DB9F9F9FC80303030B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          01010015233B00020A1C0000000000000000000000000000020528516A920A19
          24360000000000000000000000000000000000030E20000E1625000000000000
          0000000000000000000000000000000000000000000000020305001625410000
          0310000000000000000000000000050E121B26506892060F1522000000000000
          0000000000000000000000091429000910190000000000000000000000000000
          000000000000000000000000000000060B100013223D00000006000000000000
          0000000000000E202A3C20455C8302070A0F0000000000000000000000000000
          0000000E1B300005090C00000000000000000000000000000000000000000000
          0000000000000D0D0D2013131334000000000000000000000000000000001935
          456019374B6C000103040000000000000000000000000000000A141414330101
          0103000000000000000000000000000000000000000000000000000000001313
          132F0C0C0C29000000000000000000000000000000015A5A5A7E333333500000
          0000000000000000000000000000030303141313133000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76290000424D762900000000000036000000280000006E000000180000000100
          2000000000004029000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0304002D49770014223B00000000000000000000000000000000000000000000
          0000000000000000000000000000000E1C3300253C6300010203000000000000
          00000000000000000000000000000000000000020204002E49770014223B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000E1C3300253C6300010203000000000000000000000000000000000000
          00000000000000020204002D49770014223B0000000000000000000000000000
          00000000000000000000000000000000000000000000000E1C3300253D630001
          020300000000000000000000000000000000000000000000000000020204002D
          49770014223B0000000000000000000000000000000000000000000000000000
          00000000000000000000000E1C3300253C630001020300000000000000000000
          000000000000000000000000000000020204002E49770014223B000000000000
          000000000000000000000000000000000000000000000000000000000000000E
          1C3300253D630001020300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000102034D73AD1180
          9FC9043B53790009152A00000000000000000000000000000000000000000007
          132603374D720E7897C1024469A3000001020000000000000000000000000000
          0000000000000000000000000002034E73AE11809FCA043C53790009152A0000
          0000000000000000000000000000000000000008142603374D720E7897C10244
          69A3000001020000000000000000000000000000000000000000000000000000
          0002034C72AE11809FCA043B5379000915290000000000000000000000000000
          0000000000000008142603374D720E7897C1024469A300000102000000000000
          00000000000000000000000000000000000000000002034D73AD11809FC9043C
          53790009152A0000000000000000000000000000000000000000000713260337
          4D720E7897C1024469A300000102000000000000000000000000000000000000
          00000000000000000002034E73AE11809FC9043C53790009152A000000000000
          00000000000000000000000000000008142603374D720E7897C1024469A30000
          0102000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000034261931BCAE8FF13A9CAF5076F
          8EBC012F456A00070F1C000000040009111E0130456B086B8BB912A7C7F318C5
          E5FF033A58860000000000000000000000000000000000000000000000000000
          000000000000034261931BCBE8FF13A9CBF5096F8EBC012F456A00070F1C0000
          00040009101E0130456B086D8BB912A7C7F318C6E6FF033A5886000000000000
          0000000000000000000000000000000000000000000000000000034260921BC9
          E8FF13A9CBF5096F8EBB012F456A00070F1C000000040009101E0130456B086D
          8BB912A7C7F318C6E5FF033A5786000000000000000000000000000000000000
          0000000000000000000000000000034261931BCAE8FF13A9CBF5076F8EBC012F
          456A00070F1C000000040009111E0130456B086B8BB912A7C7F318C5E5FF033A
          5886000000000000000000000000000000000000000000000000000000000000
          0000034260931BCAE8FF13A9CAF5076F8EBC012F466A00070F1C000000040009
          101E0130456B086D8BB911A7C7F318C6E6FF033A588600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001283E630CB7D9FF11C7E3FF0DBFE0FF069ABDEF015C
          7BAC0039547E016180AF069ABDEF0DBFDFFF13C8E5FF0BB0D5FF012033520000
          0000000000000000000000000000000000000000000000000000000000000128
          3E620CB8D9FF11C7E4FF0DBFE0FF069ABDEF015C7BAC0039547E016180AF069A
          BDEF0DBFDFFF12C8E5FF0AB1D5FF012133510000000000000000000000000000
          00000000000000000000000000000000000001283E620CB7D9FF11C7E4FF0DBF
          E0FF069ABDEF015C7BAC0039547E016180AF069ABDEF0DBFDFFF13C8E5FF0BB1
          D5FF002033510000000000000000000000000000000000000000000000000000
          00000000000001283E630CB7DAFF11C7E4FF0DBFE0FF059ABDEF015C7BAC0039
          547E016180AF069ABDEF0DBFDFFF13C8E5FF0AB1D5FF01203452000000000000
          000000000000000000000000000000000000000000000000000001283D620CB8
          D9FF11C7E3FF0DBFE0FF059ABDEF015C7BAC0039547E016180AF069ABDEF0DBF
          DFFF12C8E5FF0AB1D5FF00203351000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000018263E019AC5FE02B7D8FF04B8D8FF03BCDDFF01AED4FF009BC1F501B0
          D5FF03BCDDFF04B8D8FF03B8D9FF0291BBF900111C2E00000000000000000000
          000000000000000000000000000000000000000000000018263D019AC4FE02B7
          D8FF04B8D8FF03BCDDFF01AED4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8
          D9FF018FBAFA00121C2D00000000000000000000000000000000000000000000
          000000000000000000000019263E029BC5FE02B8D8FF04B8D8FF03BCDDFF01AE
          D4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8D9FF0291BBF900111D2E0000
          0000000000000000000000000000000000000000000000000000000000000018
          263F019AC4FE02B7D8FF04B8D8FF04BCDDFF01AED4FF009BC1F501B0D5FF03BC
          DDFF04B8D8FF03B8D9FF0191BBF900111C2E0000000000000000000000000000
          0000000000000000000000000000000000000018263D029BC4FE02B7D8FF04B8
          D8FF04BCDCFF01AED4FF009BC1F501B0D5FF03BCDDFF04B8D8FF03B8D9FF0190
          BBF900111C2E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000E15220081
          ABF000AED2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AA
          CFFF00AFD3FF00739DDF00080F1A000000000000000000000000000000000000
          0000000000000000000000000000000E15220081ADF000AED2FF00AACFFF00AB
          CFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AFD3FF00739DDF0009
          0F1A000000000000000000000000000000000000000000000000000000000000
          0000000D15230081ABF000AFD2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AF
          D2FF00AACFFF00AACFFF00AFD3FF00739DDF0008101A00000000000000000000
          00000000000000000000000000000000000000000000000E15230081ACF000AE
          D2FF00AACFFF00ABCFFF00AFD3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AF
          D3FF00739DDF00080F1A00000000000000000000000000000000000000000000
          00000000000000000000000E15230081ADF000AED2FF00AACFFF00ABCFFF00AF
          D3FF00B2D6FF00AFD2FF00AACFFF00AACFFF00AFD3FF00739DDF00080F1A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060F00628BD100A3CDFF00A1
          C8FF00A0C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1C8FF00A4CDFF0054
          77B30001040A0000000000000000000000000000000000000000000000000000
          0000000000000002060F00628ED100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0
          C8FF00A1C8FF00A1C8FF00A1C8FF00A3CDFF005479B30001040A000000000000
          00000000000000000000000000000000000000000000000000000001060F0062
          8BD100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1
          C8FF00A3CDFF005477B30001040A000000000000000000000000000000000000
          00000000000000000000000000000002060F00628ED100A3CDFF00A1C8FF00A0
          C8FF00A0C8FF00A0C8FF00A1C8FF00A1C8FF00A1C8FF00A4CDFF005479B30001
          040A000000000000000000000000000000000000000000000000000000000000
          00000002061000628ED100A4CDFF00A1C8FF00A0C8FF00A0C8FF00A0C8FF00A1
          C8FF00A1C8FF00A1C8FF00A3CDFF005479B30001040A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000003101B30066994DA0095C3FF0091BFFF0094C0FF0096
          C2FF0096C1FF0096C1FF0096C1FF0096C1FF0097C4FF005278B8000309130000
          0000000000000000000000000000000000000000000000000000000000000310
          1B30056A95DB0095C3FF0091BFFF0094C0FF0096C2FF0096C1FF0096C1FF0096
          C1FF0096C1FF0096C4FF00537AB8000309140000000000000000000000000000
          00000000000000000000000000000000000003101B2F066994DA0095C3FF0091
          BFFF0094C1FF0096C2FF0096C1FF0096C1FF0096C1FF0096C1FF0096C4FF0053
          78B8000308140000000000000000000000000000000000000000000000000000
          00000000000003101B30056A95DB0095C3FF0091BFFF0094C0FF0096C2FF0096
          C1FF0096C1FF0096C1FF0096C1FF0097C4FF005279B800030913000000000000
          000000000000000000000000000000000000000000000000000003101B300669
          95DA0096C3FF0091BFFF0094C0FF0096C2FF0096C1FF0096C1FF0096C1FF0096
          C1FF0096C4FF00537AB800030913000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000515
          1D2C2B728BB236ACC9F91BA2C8FF0E94C0FF028CBBFF0086B8FF0086B7FF0088
          B9FF008ABAFF008BBAFF008CBCFF0076A6EC0037568800050911000000000000
          00000000000000000000000000000000000005151D2C2A728BB236ACCAFA1CA2
          C8FF0E94C0FF028CBBFF0086B8FF0086B8FF0088B9FF008ABAFF008BBAFF008C
          BCFF0077A8EC0037568700050911000000000000000000000000000000000000
          00000000000005141D2C2A728BB136ACC9F91CA2C8FF0E94C0FF028CBBFF0086
          B8FF0086B7FF0088B9FF008ABAFF008BBAFF008CBCFF0077A6EC003756870005
          091100000000000000000000000000000000000000000000000005141D2C2A72
          8BB236ACCAFA1CA2C8FF0E94C0FF028CBBFF0086B8FF0086B7FF0088B9FF008A
          BAFF008BBAFF008CBCFF0076A7EC003756880005091100000000000000000000
          000000000000000000000000000005141D2C2A728BB136ACCAFA1CA2C8FF0E94
          C0FF028CBBFF0086B8FF0086B7FF0088B9FF008ABAFF008BBAFF008CBCFF0077
          A7EC003756880005091100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000717212F2E788FB655C7DFFF5AD0
          E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9BC3FF148FBDFF0987B7FF0080B3FF007B
          B0FF007BB1FF007EB5FF006FA4F3003353880003091300000000000000000000
          0000000000000717212F2E788FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8
          CBFF1F9BC3FF148FBDFF0987B7FF0080B3FF007BB0FF007BB1FF007FB5FF006F
          A4F30033528800030913000000000000000000000000000000000717212F2E78
          8FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9BC3FF158FBDFF0987
          B7FF007FB3FF007BB0FF007BB1FF007FB5FF006EA4F300325388000309130000
          00000000000000000000000000000717212F2E788FB655C7DFFF5AD0E3FF4FC3
          DBFF3FB7D4FF2DA8CBFF1F9BC3FF158FBDFF0987B7FF0080B3FF007BB0FF007B
          B1FF007EB5FF006FA4F300335388000309130000000000000000000000000000
          00000717212F2E788FB655C7DFFF5AD0E3FF4FC3DBFF3FB7D4FF2DA8CBFF1F9B
          C3FF148FBDFF0987B7FF0080B3FF007BB0FF007BB1FF007FB5FF006FA4F30033
          5388000309130000000000000000000000000000000000000000000000000000
          000000000000091C2432347D95BD59C6DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCA
          DFFF59C6DDFF53C1D9FF47B8D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188D
          BAFF138BBCFF117AAAF30C3F5B8901070B120000000000000000091C2432357D
          95BB58C6DEFF5DCDE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF47B8
          D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188DBAFF138BBCFF117AA9F30C3F
          5B8901070B120000000000000000091C2432347D95BC59C6DEFF5DCCE1FF5CC8
          DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF48B8D4FF3CADCDFF32A2C7FF299A
          C2FF2293BEFF188DBAFF138BBCFF1178AAF30C3F5B8901070B12000000000000
          0000091C2432347D95BD59C6DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6
          DDFF53C1D9FF48B8D4FF3CADCDFF32A3C7FF299AC2FF2293BEFF188DBAFF138B
          BCFF117AAAF30C3F5B8901070B120000000000000000091C2432337D95BB58C6
          DEFF5DCCE1FF5CC8DEFF5FCBE0FF5DCADFFF59C6DDFF53C1D9FF47B8D4FF3CAD
          CDFF32A3C7FF299AC2FF2293BEFF188DBAFF138BBCFF117AAAF30C3F5B890107
          0B12000000000000000000000000000000000000000000000000071B2436367D
          97C35CC8E3FF63D1E9FF63CDE6FF62CDE4FF61CAE1FF5FC7DCFF5FC6DCFF61C7
          DCFF60C6DCFF60C7DCFF5FC6DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBD
          DEFF48ACCDFA22576D8F00080C1507192233357E97C25DC8E3FF64D1E9FF63CD
          E6FF62CDE4FF61CBE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC6
          DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D8F0008
          0C1507192233377E97C25CC8E3FF63D1E9FF63CDE6FF62CDE4FF61CAE1FF5FC7
          DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC5DCFF5DC5DCFF5AC3DCFF52C0
          DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D9000080C1507192233357E97C25CC8
          E3FF63D1E9FF63CDE6FF63CDE4FF61CAE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6
          DCFF60C7DCFF5FC6DCFF5DC5DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48AC
          CDFA22576D8F00080C1507192233357E97C25CC8E3FF64D1E9FF63CDE6FF63CD
          E4FF61CAE1FF5FC7DCFF5FC6DCFF61C7DCFF60C6DCFF60C7DCFF5FC6DCFF5DC5
          DCFF5AC4DCFF52C0DCFF4FBCDBFF4DBDDEFF48ACCDFA22576D9001090D160000
          0000000000000000000000000000000000000A2637552F6E86AF3C879CBF4794
          ADD14EA4BDDE54AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3
          DAFF63C5DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2B8D84898AECD2B6E
          87AF0216223709243551306F86AE3D879CBF4794ADD14EA3BDDE54AEC6EA5AB7
          D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5DBFF62C6DEFF5DBA
          D4FB5AB3CCEE54ADC4E250A2B9D84896AECD2B6E87AF0216223709243551306F
          86AE3D879CBF4794ADD14EA4BDDE54AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3
          DAFF62C3DAFF62C3DAFF63C5DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2
          B9D84898AECD2B6E88B00216223709243451306E86AE3C879CBF4794ADD14EA4
          BDDE55AEC6EA5AB7D2F962C4DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5
          DBFF62C6DEFF5DBAD4FB5AB3CCEE54ADC4E250A2B9D84896AECD2B6E87AF0216
          223709243551306F86AE3D879CBF4794ADD14EA5BDDE55AEC6EA5AB7D2F962C4
          DCFF62C3DAFF61C3DAFF62C3DAFF62C3DAFF63C5DBFF63C6DEFF5DBAD4FB5AB3
          CCEE54ADC4E250A2B9D84898AECD2B6E87B00317233900000000000000000000
          00000000000000000000020B111B061118230B1C233012262F3F16313D521D41
          4E69255164844B98B2DF67C4DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C84
          9DC928556988204655711838445A152C364810232B3A0B1E2632010B111B020A
          101A061118230B1C233012262F3F16313D521D414E69255064844B98B2DF67C4
          DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC828556988204655711838
          445A152C364810222B3A0B1E2632010B111B020A101A061118230B1C23301226
          2F3F16313D521D414E69255164844C99B2E067C4DCFF67C4DAFF67C3DAFF67C3
          DAFF67C4DBFF3C849DC928556989204655711838445A152C364810232B3A0B1E
          2632010B111B020A101A061118230B1C233012262F3F16313D521E414E692551
          64844B98B2DF67C4DCFF67C4DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC82855
          6988204655711838445A152C364810222B3A0B1E2632010B111B020A101A0611
          18230B1C233012262F3F16313D521E414E69255164844B98B2DF67C4DCFF67C4
          DAFF67C3DAFF67C3DAFF67C4DBFF3C849DC828556988204655711838445A152C
          364810232B3A0B1E2632020B111B000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040003070E1B41
          547668BDD7FE6BC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F2C430105090F0000
          0107000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000040003070E1B40547568BDD7FE6BC4DCFF6BC3
          DBFF6CC5DCFF59ACC7F20B1F2C440105090F0000010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040003070E1B41547668BDD7FE6CC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F
          2C44010509100000010700000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000040003070E1B41547668BD
          D7FE6BC4DCFF6BC3DBFF6CC5DCFF5AADC7F20B1F2C430105090F000001070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000040003070E1B40547568BDD7FE6BC4DCFF6BC3DBFF6CC5
          DCFF59ACC7F20B1F2C430105090F000001070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001070D164D91ADD973C6
          DFFF6FC2DBFF73C7E0FF30647CA6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001070C164D92ADD973C6DFFF70C2DBFF73C7E0FF2E63
          7CA7000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000107
          0C164D91ADD973C6DFFF70C2DBFF73C7E0FF30647CA600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001070D164D91ADD973C6DFFF6FC2
          DBFF73C7E0FF30647CA600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001070C164D92ADD973C6DFFF70C2DBFF73C7E0FF2E637CA70000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F42567775C1DDFF78C5DEFF5FA9
          C6F10B1A263A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001F42567775C1DCFF79C5DEFF60AAC6F10B1A263B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F42567774C1
          DCFF79C5DEFF60AAC6F10B1A263A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F42567775C1DDFF78C5DEFF5FAAC6F10B1A
          263A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F42567775C1DCFF79C5DEFF60A9C6F10B1A263B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000050C121E5592AEDA80CCE5FF3361799F010103070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000050C
          121E5592AEDA81CCE5FF336178A0010103070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050C121E5792AED980CCE5FF3461
          799F010103060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050C121E5592AEDA80CCE5FF3361799F01010307000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050C121E5592
          AEDA81CCE5FF336178A001010307000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000012C4F608061A2C0EA10212C3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012C4F5F8061A2
          C0EA10202C3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012C4E607F61A2C0EA10202C3F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00012C4F608061A2BFEA10202C3F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000012C4F5F8062A2C0EA1020
          2B3F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000010203001B2D4B000209130000000000000000000000000C1A
          22311E3F54780204070C0000000000000000000000000000050E001625410001
          010200000000000000000000000000000000000000000000000000010203001B
          2E4D000309140000000000000000000000000C1A22311E4054780204070C0000
          000000000000000000000000050E001625410001010300000000000000000000
          000000000000000000000000000000010203001B2E4C00020913000000000000
          0000000000000C1922301E3F53770204070C0000000000000000000000000000
          050E001625410001010200000000000000000000000000000000000000000000
          000000010203001B2E4C000209130000000000000000000000000C1A22311E40
          54780204070C0000000000000000000000000000050E00162541000101020000
          00000000000000000000000000000000000000000000010101032020204C0505
          05130000000000000000000000000C1A22311E3F54780204070C000000000000
          0000000000000303030E1A1A1A41010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object zArea: TUniQuery
    Connection = connection.Uconnection
    Left = 497
    Top = 301
  end
  object dsArea: TDataSource
    DataSet = zArea
    Left = 424
    Top = 307
  end
  object frxEvaluaProveedor: TfrxDBDataset
    UserName = 'ds_EvaluaProveedor'
    CloseDataSource = False
    DataSet = zReporteEvalua
    BCDToCurrency = False
    Left = 736
    Top = 181
  end
  object frxDBPreguntas: TfrxDBDataset
    UserName = 'frxDBPreguntas'
    CloseDataSource = False
    DataSet = zPreguntas
    BCDToCurrency = False
    Left = 588
    Top = 246
  end
end
