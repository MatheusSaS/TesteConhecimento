object Frm_View_Pedido: TFrm_View_Pedido
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Frm_View_Pedido'
  ClientHeight = 633
  ClientWidth = 986
  Color = 15591392
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 633
    Align = alClient
    BevelOuter = bvNone
    Color = 15591392
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 690
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 248
      Width = 980
      Height = 326
      Margins.Top = 8
      Align = alClient
      Alignment = taCenter
      Caption = 'Incluir Item Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6052956
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 121
      ExplicitHeight = 16
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 966
      Height = 153
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 5
      DesignSize = (
        966
        153)
      object Label3: TLabel
        Left = 14
        Top = 15
        Width = 117
        Height = 22
        Caption = 'Novo pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblCodigoCliente: TLabel
        Left = 137
        Top = 23
        Width = 3
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object PnlBuscal: TPanel
        Left = 23
        Top = 43
        Width = 933
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 16381941
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 0
        object Label7: TLabel
          Left = 31
          Top = 0
          Width = 94
          Height = 14
          Caption = 'Informe o cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = 6052956
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxImage1: TcxImage
          Left = 0
          Top = 0
          Align = alLeft
          Enabled = False
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000001974455874536F667477617265004164
            6F626520496D616765526561647971C9653C0000000B744558745469746C6500
            5A6F6F6D3BCF09FEBC000000A449444154785EA5D2C10984301484616F426A7A
            F73461115BC1C2369093772B1272F36A031690537690811D1E44B244F879A0E6
            2368A65AEB50376066ECBE12CAA87026647CFE082CE840D5C7FBCB1360B27843
            1105CE4D106B014916CF4877360B925A402610D1A4008B04720B2804827F8150
            2050867730FA0D7641FFFB0BEC12A0FB1CF8DE04BA4FE28E2E8F28D0CAE31F87
            ACDD00A747CE2E8088B6A213BD7EC0405F9BEBFFA1F53765600000000049454E
            44AE426082}
          Properties.ShowFocusRect = False
          Style.BorderColor = 15658734
          Style.BorderStyle = ebsNone
          Style.Color = 15658734
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Transparent = True
          Height = 49
          Width = 25
        end
        object EdtFiltro: TEdit
          Left = 31
          Top = 14
          Width = 811
          Height = 30
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16381941
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EdtFiltroChange
          OnEnter = EdtFiltroEnter
          OnExit = EdtFiltroExit
        end
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 250
      Width = 966
      Height = 326
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 165
      ExplicitWidth = 985
      ExplicitHeight = 460
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 966
        Height = 326
        Align = alClient
        BorderStyle = bsNone
        DataSource = DaItemPedido
        DragKind = dkDock
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Caption = 'Cod. Produto'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Desc. Produto'
            Width = 689
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_unitario'
            Title.Caption = 'Vlr. Unit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_total'
            Title.Caption = 'Vlr. Total'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 577
      Width = 986
      Height = 56
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      BevelOuter = bvNone
      Color = 15591392
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 626
      ExplicitWidth = 1005
      object cxImage3: TcxImage
        Left = 0
        Top = 282
        Cursor = crHandPoint
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F987000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
          000006624B474400FF00FF00FFA0BDA793000001B7494441546843ED99DD2A44
          5114C787A270C7958F07E0514891C8052F20EE9497E041E4926750129EC04708
          892B1F5714BF7FCDD4EAB4476666AD3333CDFED5AF33339DF65A6BDA5F679F4A
          2693C97435C3B88DA7F8813F0EBEE3316EE00086318D97984AC2CB331C477746
          F1165341BD3DC74174651753C1A2DC44571ED00638C029F460128FD0B67F82AE
          DC61ADF1271C424F54842DE00D5D99C31B7CC479FD10802D4026E9AB5E3B9162
          D2C95CFBABD7AEA5270B58C06BD440D6E7AE6215BFB036B03488A3A8C5A8D932
          C5E4E53D4661E3C8964825AFEF915DC8C6924DB386DF681B53F22B18898D279B
          A25DC90B1B5336CC2216BB8DB79ACD663145F1DE86B1FB9D48EB4D04C5FB92FC
          B50E94B5CD088B534617D286501BC314C57B9B621D53837819A3B13165D3B4AB
          081B4FB644BD856C09A3B0B164CBA48A78C6286C1CE942B188178C9A456CF2D2
          0DCD4E7AA87FC5C815F95F05E447CA76D3B3056803A65554FB987A2B694753F6
          C1964EAC5D291E2DEEA3827A30818768DB773F5ADC431B20DA2D74650CCB7A5E
          B840F7E375318357980AEAA59257970A630477506F523E319544A3EA5595FABC
          BA4DC83F9FC964325E542ABF3DE7B502C74764B50000000049454E44AE426082}
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        TabOrder = 0
        Height = 48
        Width = 43
      end
      object BtnCancelar: TPanel
        Left = 726
        Top = 5
        Width = 121
        Height = 42
        Cursor = crHandPoint
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = BtnCancelarClick
        object Label5: TLabel
          Left = 25
          Top = 12
          Width = 68
          Height = 19
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2960685
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnCancelarClick
        end
      end
      object BtnSalvar: TPanel
        Left = 860
        Top = 5
        Width = 121
        Height = 42
        Cursor = crHandPoint
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = 7328001
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = BtnSalvarClick
        object Label6: TLabel
          Left = 38
          Top = 12
          Width = 48
          Height = 19
          Caption = 'Salvar'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2960685
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnSalvarClick
        end
      end
    end
    object PnlIncluirItem: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 250
      Width = 966
      Height = 327
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      Visible = False
      ExplicitLeft = 18
      ExplicitTop = 191
      ExplicitHeight = 394
      DesignSize = (
        966
        327)
      object Label4: TLabel
        Left = 14
        Top = 16
        Width = 44
        Height = 14
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 381
        Top = 78
        Width = 62
        Height = 14
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblQuantidade: TLabel
        Left = 439
        Top = 105
        Width = 7
        Height = 15
        Caption = '1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 14
        Top = 78
        Width = 73
        Height = 14
        Caption = 'Valor Unitario'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 541
        Top = 78
        Width = 29
        Height = 14
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblTotal: TLabel
        Left = 541
        Top = 106
        Width = 6
        Height = 14
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 7328001
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel5: TPanel
        Left = 14
        Top = 32
        Width = 933
        Height = 40
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 16381941
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 0
        object cxImage4: TcxImage
          Left = 0
          Top = 0
          Align = alLeft
          Enabled = False
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
            000000180806000000E0773DF800000006624B474400FF00FF00FFA0BDA79300
            0000414944415448896360180504002312FB3F2DCC66A2B2A11860E85B30F401
            231A9F5A29096EEED08FE4510B06DE02160AF41295C407B50F88CA94433F9247
            01410000E40C0422B10141250000000049454E44AE426082}
          Properties.ShowFocusRect = False
          Style.BorderColor = 15658734
          Style.BorderStyle = ebsNone
          Style.Color = 15658734
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Transparent = True
          Height = 40
          Width = 25
        end
        object LcbProduto: TcxLookupComboBox
          Left = 29
          Top = 6
          ParentFont = False
          Properties.KeyFieldNames = 'codigo'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end>
          Properties.ListSource = DaProduto
          Properties.OnChange = cxLookupComboBox1PropertiesChange
          Style.BorderStyle = ebsNone
          Style.Color = 16381941
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 903
        end
      end
      object Panel6: TPanel
        Left = 381
        Top = 100
        Width = 24
        Height = 24
        BevelOuter = bvNone
        Color = 3938805
        ParentBackground = False
        TabOrder = 1
        object cxImage5: TcxImage
          Left = 0
          Top = 0
          Align = alClient
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
            000000180806000000E0773DF800000006624B474400FF00FF00FFA0BDA79300
            00002549444154488963601805A360148C028280118DFF9FDAE63251C9C05130
            0A46C128A0040000F41101040F4A68FA0000000049454E44AE426082}
          Properties.ShowFocusRect = False
          Style.BorderStyle = ebsNone
          Style.Color = 3938805
          TabOrder = 0
          OnClick = cxImage5Click
          Height = 24
          Width = 24
        end
      end
      object Panel7: TPanel
        Left = 481
        Top = 100
        Width = 24
        Height = 24
        BevelOuter = bvNone
        Color = 3938805
        ParentBackground = False
        TabOrder = 2
        object cxImage6: TcxImage
          Left = 0
          Top = 0
          Align = alClient
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
            000000180806000000E0773DF800000006624B474400FF00FF00FFA0BDA79300
            00004E494441544889636018055406471918180ED3D282FF504C3460A2914346
            2D18C9161C654024456C1806F0A941C927E816FCA382A349CA27D8348F66B451
            0BE86C010B89EA8F305098CE4701060000484B18DFC7159C590000000049454E
            44AE426082}
          Properties.ShowFocusRect = False
          Style.BorderStyle = ebsNone
          Style.Color = 3938805
          TabOrder = 0
          OnClick = cxImage6Click
          Height = 24
          Width = 24
        end
      end
      object BtnSalvarItem: TPanel
        Left = 835
        Top = 272
        Width = 121
        Height = 42
        Cursor = crHandPoint
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = 7328001
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = BtnSalvarItemClick
        object Label8: TLabel
          Left = 19
          Top = 12
          Width = 84
          Height = 19
          Caption = 'Salvar Item'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2960685
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnSalvarItemClick
        end
      end
      object Panel9: TPanel
        Left = 14
        Top = 93
        Width = 331
        Height = 40
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 16381941
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 4
        object cxImage7: TcxImage
          Left = 0
          Top = 0
          Align = alLeft
          Enabled = False
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
            000000180806000000E0773DF800000006624B474400FF00FF00FFA0BDA79300
            000125494441544889E5D4B14A034110C6F19F468C6061656B6567656D6921B6
            3E844FE01B582420588AAD268208225804D187B00ED848302268278285D1E2F6
            20C4BDCBDD191BFD609ADBD9FF7C3BB3B7FC37D5D1441F9F9178C70D96AAC23B
            19E0D1B8FE4D787A9289C03FD00A3118599B88F3D6506E3B56607A0CFC029B45
            DD9451D19E0F24CE4F64B468AA84F3179C6201F758C4768EC9183BD3F91B9647
            7277734EF690260DCF20AFE7B7B8C3110EC2BE418EFBE3D8C766C4490F6778C2
            3CD6F08A0D6C65B8EF04B3DFF41849DE472D1438C70C76F01CA2309CF8FBD20D
            055625835DC17A59E7A91A914DE98F541BCA3BAC02277E837A923BDEC59EE411
            AB044F358BCB08242BAE3057145EB6482578D1223F828F2B321178AABAE476F5
            43349418E8DFD0175E75C0CE1EC6DBF30000000049454E44AE426082}
          Properties.ShowFocusRect = False
          Style.BorderColor = 15658734
          Style.BorderStyle = ebsNone
          Style.Color = 15658734
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Transparent = True
          Height = 40
          Width = 25
        end
        object EdtValor: TcxDBCurrencyEdit
          Left = 31
          Top = 5
          DataBinding.DataField = 'preco_venda'
          DataBinding.DataSource = DaProduto
          ParentFont = False
          Properties.OnChange = EdtValorPropertiesChange
          Style.BorderStyle = ebsNone
          Style.Color = 16381941
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 297
        end
      end
    end
    object PnlIncluirPedido: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 173
      Width = 966
      Height = 67
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      Visible = False
      ExplicitLeft = 15
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 8
        Width = 960
        Height = 56
        Margins.Top = 8
        Align = alClient
        Alignment = taCenter
        Caption = 'Incluir Item Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6052956
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 121
        ExplicitHeight = 16
      end
      object cxImage2: TcxImage
        Left = 467
        Top = 30
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF40000001974455874536F667477617265004164
          6F626520496D616765526561647971C9653C0000001B744558745469746C6500
          4164643B506C75733B426172733B526962626F6E3B9506332F000000DE494441
          54785EEDD7AB11C4201885D15480A29C88381C35500085D04D2C922EE2706901
          FBEF15513BEC02612677C58A63335F86F7222254BF13B0AE6B8B020B01226428
          970C110258508D6F0D0568F090403A25F0A067030CEC2037ED60EE0638384026
          1DE046031C9C20975927B8DE0053FDF379079856801E18F30D96CB363027F4B7
          000FD26979239DFCA70005E9818004AA166041660206D85A40783020D402E283
          01B116901BB3BD5F7B75E45A4069FCE95D5251E801F421A04F42FA32A46F44F4
          AD987F18F18F63FE85847F25E35F4AF9D772FEC384FF34FBBF8E5F101DEB8B50
          A06F4F0000000049454E44AE426082}
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        TabOrder = 0
        OnClick = cxImage2Click
        Height = 32
        Width = 32
      end
    end
  end
  object ScrollBox1: TScrollBox
    Left = 33
    Top = 103
    Width = 933
    Height = 27
    AutoSize = True
    BorderStyle = bsNone
    TabOrder = 1
    Visible = False
  end
  object DaItemPedido: TDataSource
    Left = 66
    Top = 189
  end
  object DaProduto: TDataSource
    Left = 346
    Top = 266
  end
end
