object FListarPedido: TFListarPedido
  Left = 0
  Top = 0
  Width = 309
  Height = 80
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 309
    Height = 75
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnClick = Panel1Click
    object LblNome: TLabel
      Left = 79
      Top = 15
      Width = 34
      Height = 15
      Caption = 'NOME'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2434341
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblValor: TLabel
      Left = 231
      Top = 15
      Width = 39
      Height = 15
      Caption = 'VALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2434341
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblData: TLabel
      Left = 231
      Top = 36
      Width = 22
      Height = 12
      Caption = 'DATA'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6776679
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cxImage1: TcxImage
      Left = 9
      Top = 7
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        00000020080300000044A48AC60000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C00000015744558745469746C6500
        436865636B3B4D61726B3B5469636B0B00C7240000004B504C5445FFFFFFFFFF
        FFFCFDFD9FC2B6E4EEEBB1CDC3E0EBE7FEFFFFA0C2B779A99977A89877A79780
        AD9E7FAD9EA3C4B97EAC9D76A797D4E3DEDFEBE7A2C3B8A6C6BBD5E4DFE3EDE9
        E3EDEAE2ECE945FDC6340000000174524E530040E6D866000000844944415478
        5ED5D3370E03310C44518FE266E770FF931A368BC11058A9B5D9FE07420575E8
        CFA9393F0EA60E88656D8218F05C15F80E945981EF61D8DD1061DD03DF05CC6E
        3FBE9D209F47DF05E48AFBA8EF1370AB80097601C7074CB00BA0F0DD00C5855D
        0005BB000A760526D2A75F1B07B324848D8980E2B5754E6EFAAF7F41D09D3777
        7D319D27A472A00000000049454E44AE426082}
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Height = 66
      Width = 64
    end
  end
end
