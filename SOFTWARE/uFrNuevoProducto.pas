unit uFrNuevoProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sButton, Mask, sMaskEdit, sCustomComboEdit,
  sCurrEdit, sCurrencyEdit, ComCtrls, sStatusBar, sComboBox, DB, MemDS,
  DBAccess, MSAccess;

type
  TFrNuevoProducto = class(TForm)
    eDescripcion: TsEdit;
    eTipo: TsComboBox;
    sStatusBar1: TsStatusBar;
    ePCompra: TsCurrencyEdit;
    ePVenta: TsCurrencyEdit;
    eCantidad: TsCurrencyEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    libre: TMSQuery;
    libreidProducto: TIntegerField;
    libreDescripcion: TStringField;
    libreTipo: TStringField;
    librePrecioCompra: TCurrencyField;
    librePrecioVenta: TCurrencyField;
    libreStock: TIntegerField;
    sButton3: TsButton;
    procedure ePCompraExit(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Limpiar();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrNuevoProducto: TFrNuevoProducto;

implementation

uses
  UDM1, uFrProductos;

{$R *.dfm}

procedure TFrNuevoProducto.ePCompraExit(Sender: TObject);
var
   monto:Currency;

begin
  if ePCompra.Value > 0 then
   begin
     monto := ePCompra.Value;

     monto := monto * 1.20;
     monto := monto /0.87;

     ePVenta.Value:=monto;

   end
  else
   ePVenta.Value:=0;
end;

procedure TFrNuevoProducto.sButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrNuevoProducto.sButton1Click(Sender: TObject);
begin
  libre.Close;
  libre.Params[0].Value:=Trim(eDescripcion.Text);
  libre.Open;

  if Trim(eDescripcion.Text)='' then
   begin
     ShowMessage('La descripción no puede estar en blanco');
     eDescripcion.SetFocus;
   end
  else
  if not libre.IsEmpty then
   begin
     ShowMessage('El nombre del Producto ya esta en uso por el item con id: '+libreidProducto.AsString+' del tipo: '+libreTipo.AsString );
     eDescripcion.SetFocus;
   end
  else
  if Trim(eTipo.Text)='' then
   begin
     ShowMessage('El tipo no puede estar en blanco');
     eTipo.SetFocus;
   end
  else
  if ePCompra.Value <=0 then
   begin
     ShowMessage('El precio de compra debe ser mayor a 0');
     ePCompra.SetFocus;
   end
  else
  if ePVenta.Value <=0 then
   begin
     ShowMessage('El precio de venta debe ser mayor a 0');
     ePVenta.SetFocus;
   end
   else
  if eCantidad.Value <0 then
   begin
     ShowMessage('La Cantidad Inicial no puede ser menor a 0');
     eCantidad.SetFocus;
   end
  else
   begin
      FrProductos.qProductos.Insert;
      FrProductos.qProductosDescripcion.Value  :=eDescripcion.Text;
      FrProductos.qProductosTipo.Value         :=eTipo.Text;
      FrProductos.qProductosPrecioCompra.Value :=ePCompra.Value;
      FrProductos.qProductosPrecioVenta.Value  :=ePVenta.Value;
      FrProductos.qProductosStock.Value        :=Round(eCantidad.Value);
      FrProductos.qProductos.Post;

      DM1.Kardex.Close;
      DM1.Kardex.Open;

      DM1.FECHA.Close;
      DM1.FECHA.Open;

      DM1.Kardex.Insert;
      DM1.KardexIdProducto.Value:= FrProductos.qProductosidProducto.Value;
      DM1.KardexDescripcion.Value:= FrProductos.qProductosDescripcion.Value;
      DM1.KardexFecha.Value:=DM1.FECHAFECHA.Value;
      DM1.KardexEntrada.Value  :=Round(eCantidad.Value);
      DM1.KardexSalida.Value:=0;
      DM1.KardexSaldo.Value:=Round(eCantidad.Value);
      DM1.KardexDetalle.Value:='Creación de producto';
      DM1.Kardex.Post;


      ShowMessage('Producto ingresado con éxito');

      Close;
   
   end;


end;

procedure TFrNuevoProducto.Limpiar();
begin
   eDescripcion.Clear;
   eTipo.Text      :='Ropa Femenina';
   ePCompra.Value  :=0;
   ePVenta.Value   :=0;
   eCantidad.Value :=0;
end;


procedure TFrNuevoProducto.sButton3Click(Sender: TObject);
begin
   Limpiar();
end;

procedure TFrNuevoProducto.FormShow(Sender: TObject);
begin
   Limpiar();
end;

end.
