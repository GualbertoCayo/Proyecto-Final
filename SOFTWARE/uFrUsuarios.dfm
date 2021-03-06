object FrUsuarios: TFrUsuarios
  Left = 226
  Top = 274
  Width = 862
  Height = 439
  Caption = 'Usuarios Registrados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 0
    Width = 846
    Height = 353
    Align = alTop
    DataSource = dsqUsuarios
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idUsuario'
        Title.Caption = 'Id'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usuario'
        Title.Caption = 'Usuario'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Nombre'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apellido'
        Title.Caption = 'Apellido'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contrasena'
        Title.Caption = 'Contrase'#241'a'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'e-mail'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rol'
        PickList.Strings = (
          'Vendedor'
          'Administrador'
          'Gerente')
        Title.Caption = 'Rol'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono'
        Width = 92
        Visible = True
      end>
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 381
    Width = 846
    Height = 19
    Panels = <>
  end
  object sDBNavigator1: TsDBNavigator
    Left = 0
    Top = 353
    Width = 846
    Align = alTop
    DoubleBuffered = False
    FullRepaint = False
    TabOrder = 2
    DataSource = dsqUsuarios
  end
  object qUsuarios: TMSQuery
    Connection = DM1.ConexionFni
    SQL.Strings = (
      'Select *'
      'From Usuario')
    Active = True
    Left = 72
    Top = 48
    object qUsuariosidUsuario: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idUsuario'
      ReadOnly = True
    end
    object qUsuariosusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object qUsuariosnombre: TStringField
      FieldName = 'nombre'
      Size = 50
    end
    object qUsuariosapellido: TStringField
      FieldName = 'apellido'
      Size = 50
    end
    object qUsuarioscontrasena: TStringField
      FieldName = 'contrasena'
      OnGetText = qUsuarioscontrasenaGetText
      FixedChar = True
      Size = 50
    end
    object qUsuariosemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object qUsuariosrol: TStringField
      FieldName = 'rol'
    end
    object qUsuariosTelefono: TStringField
      FieldName = 'Telefono'
    end
  end
  object dsqUsuarios: TMSDataSource
    DataSet = qUsuarios
    Left = 72
    Top = 96
  end
end
