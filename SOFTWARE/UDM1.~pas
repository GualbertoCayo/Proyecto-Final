unit UDM1;

interface

uses
  SysUtils, Classes, DB, DBAccess, MSAccess, MemDS;

type
  TDM1 = class(TDataModule)
    ConexionFni: TMSConnection;
    qValida: TMSQuery;
    qValidaidUsuario: TIntegerField;
    qValidausuario: TStringField;
    qValidanombre: TStringField;
    qValidaapellido: TStringField;
    qValidacontrasena: TStringField;
    qValidaemail: TStringField;
    qValidarol: TStringField;
    qValidaTelefono: TStringField;
    Kardex: TMSQuery;
    KardexidKardex: TIntegerField;
    KardexIdProducto: TIntegerField;
    KardexDescripcion: TStringField;
    KardexFecha: TDateField;
    KardexEntrada: TIntegerField;
    KardexSalida: TIntegerField;
    KardexSaldo: TIntegerField;
    KardexDetalle: TStringField;
    KardexIdVentas: TIntegerField;
    FECHA: TMSQuery;
    FECHAFECHA: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
