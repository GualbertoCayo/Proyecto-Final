program SISTEMA_VENTAS;

uses
  Forms,
  uFrIntro in 'uFrIntro.pas' {FrIntro},
  UDM1 in 'UDM1.pas' {DM1: TDataModule},
  uFrPrincipal in 'uFrPrincipal.pas' {FrPrincipal},
  uFrUsuarios in 'uFrUsuarios.pas' {FrUsuarios},
  uFrProductos in 'uFrProductos.pas' {FrProductos},
  uFrNuevoProducto in 'uFrNuevoProducto.pas' {FrNuevoProducto},
  uFrEditaProducto in 'uFrEditaProducto.pas' {FrEditaProducto},
  uFrAumentaStock in 'uFrAumentaStock.pas' {FrAumentaStock},
  uFrBajaStock in 'uFrBajaStock.pas' {FrBajaStock},
  uFrVentas in 'uFrVentas.pas' {FrVentas},
  uFrCambioContrasena in 'uFrCambioContrasena.pas' {FrCambioContrasena},
  uRepVentas in 'uRepVentas.pas' {RepVentas},
  uRepStock in 'uRepStock.pas' {RepStock};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrIntro, FrIntro);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFrPrincipal, FrPrincipal);
  Application.CreateForm(TFrUsuarios, FrUsuarios);
  Application.CreateForm(TFrProductos, FrProductos);
  Application.CreateForm(TFrNuevoProducto, FrNuevoProducto);
  Application.CreateForm(TFrEditaProducto, FrEditaProducto);
  Application.CreateForm(TFrAumentaStock, FrAumentaStock);
  Application.CreateForm(TFrBajaStock, FrBajaStock);
  Application.CreateForm(TFrVentas, FrVentas);
  Application.CreateForm(TFrCambioContrasena, FrCambioContrasena);
  Application.CreateForm(TRepVentas, RepVentas);
  Application.CreateForm(TRepStock, RepStock);
  Application.Run;
end.
