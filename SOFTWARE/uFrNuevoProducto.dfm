object FrNuevoProducto: TFrNuevoProducto
  Left = 271
  Top = 561
  Width = 477
  Height = 314
  Caption = 'Ingreso  de Nuevo Producto'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object eDescripcion: TsEdit
    Left = 16
    Top = 32
    Width = 433
    Height = 21
    TabOrder = 0
    BoundLabel.Active = True
    BoundLabel.Caption = 'Descripci'#243'n'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
  end
  object eTipo: TsComboBox
    Left = 16
    Top = 72
    Width = 433
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'Tipo de Producto'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 1
    Text = 'Ropa Femenina'
    Items.Strings = (
      'Ropa Femenina'
      'Ropa Masculina'
      'Ropa para Ni'#241'os'
      'Varios')
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 256
    Width = 461
    Height = 19
    Panels = <>
  end
  object ePCompra: TsCurrencyEdit
    Left = 16
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
    OnExit = ePCompraExit
    BoundLabel.Active = True
    BoundLabel.Caption = 'Precio Compra'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
  end
  object ePVenta: TsCurrencyEdit
    Left = 172
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
    BoundLabel.Active = True
    BoundLabel.Caption = 'Precio Venta'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
  end
  object eCantidad: TsCurrencyEdit
    Left = 328
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 5
    BoundLabel.Active = True
    BoundLabel.Caption = 'Cantidad Inicial'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclTopLeft
    DecimalPlaces = 0
    DisplayFormat = '### ### ##0;-### ### ##0;0'
  end
  object sButton1: TsButton
    Left = 48
    Top = 168
    Width = 100
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 6
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 312
    Top = 168
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = sButton2Click
  end
  object sButton3: TsButton
    Left = 184
    Top = 168
    Width = 100
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 8
    OnClick = sButton3Click
  end
  object libre: TMSQuery
    Connection = DM1.ConexionFni
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  Producto'
      'WHERE'
      '  producto.Descripcion=:Descripcion')
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'Descripcion'
        Size = 19
        Value = 'Zapatillas "Adidas"'
      end>
    object libreidProducto: TIntegerField
      FieldName = 'idProducto'
      ReadOnly = True
    end
    object libreDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object libreTipo: TStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object librePrecioCompra: TCurrencyField
      FieldName = 'PrecioCompra'
    end
    object librePrecioVenta: TCurrencyField
      FieldName = 'PrecioVenta'
    end
    object libreStock: TIntegerField
      FieldName = 'Stock'
    end
  end
end
