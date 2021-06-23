object DM1: TDM1
  OldCreateOrder = False
  Left = 305
  Top = 405
  Height = 403
  Width = 756
  object ConexionFni: TMSConnection
    Database = 'db_a7669d_fni'
    Username = 'db_a7669d_fni_admin'
    Password = 'FNI12345'
    Server = 'SQL5075.site4now.net'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object qValida: TMSQuery
    Connection = ConexionFni
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  USUARIO'
      'WHERE'
      '  USUARIO.usuario = :usuario'
      'AND '
      '  USUARIO.contrasena = :contrasena')
    Left = 160
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'usuario'
        Size = 13
        Value = 'Administrador'
      end
      item
        DataType = ftString
        Name = 'contrasena'
        Size = 3
        Value = '123'
      end>
    object qValidaidUsuario: TIntegerField
      FieldName = 'idUsuario'
      ReadOnly = True
    end
    object qValidausuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object qValidanombre: TStringField
      FieldName = 'nombre'
      Size = 50
    end
    object qValidaapellido: TStringField
      FieldName = 'apellido'
      Size = 50
    end
    object qValidacontrasena: TStringField
      FieldName = 'contrasena'
      Size = 50
    end
    object qValidaemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object qValidarol: TStringField
      FieldName = 'rol'
    end
    object qValidaTelefono: TStringField
      FieldName = 'Telefono'
    end
  end
  object Kardex: TMSQuery
    Connection = ConexionFni
    SQL.Strings = (
      'SELECT TOP(0) *'
      'FROM KARDEX')
    Left = 248
    Top = 32
    object KardexidKardex: TIntegerField
      FieldName = 'idKardex'
      ReadOnly = True
    end
    object KardexIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object KardexDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object KardexFecha: TDateField
      FieldName = 'Fecha'
    end
    object KardexEntrada: TIntegerField
      FieldName = 'Entrada'
    end
    object KardexSalida: TIntegerField
      FieldName = 'Salida'
    end
    object KardexSaldo: TIntegerField
      FieldName = 'Saldo'
    end
    object KardexDetalle: TStringField
      FieldName = 'Detalle'
      Size = 200
    end
    object KardexIdVentas: TIntegerField
      FieldName = 'IdVentas'
    end
  end
  object FECHA: TMSQuery
    Connection = ConexionFni
    SQL.Strings = (
      'SELECT '
      '  GETDATE() AS FECHA')
    Left = 328
    Top = 32
    object FECHAFECHA: TDateTimeField
      FieldName = 'FECHA'
      ReadOnly = True
    end
  end
end
