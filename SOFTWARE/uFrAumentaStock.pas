unit uFrAumentaStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sGroupBox, ComCtrls, sButton,
  sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit;

type
  TFrAumentaStock = class(TForm)
    StatusBar1: TStatusBar;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ePCompra: TsCurrencyEdit;
    ePVenta: TsCurrencyEdit;
    eCantidad: TsCurrencyEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    Label5: TLabel;
    procedure ePCompraExit(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure Limpiar();
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAumentaStock: TFrAumentaStock;

implementation

uses uFrProductos, UDM1;

{$R *.dfm}

procedure TFrAumentaStock.ePCompraExit(Sender: TObject);
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

procedure TFrAumentaStock.Limpiar();
begin
  ePCompra.Value:= FrProductos.qProductosPrecioCompra.Value;
  ePVenta.Value := FrProductos.qProductosPrecioVenta.Value;
  eCantidad.Clear;
end;

procedure TFrAumentaStock.sButton3Click(Sender: TObject);
begin
  Limpiar();
end;

procedure TFrAumentaStock.FormShow(Sender: TObject);
begin
  Limpiar();
end;

procedure TFrAumentaStock.sButton1Click(Sender: TObject);
begin
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
     ShowMessage('La Cantidad de ingreso tiene que ser mayor a 0');
     eCantidad.SetFocus;
   end
  else
   begin
     FrProductos.qProductos.Edit;
     FrProductos.qProductosPrecioCompra.Value :=ePCompra.Value;
     FrProductos.qProductosPrecioVenta.Value  :=ePVenta.Value;
     FrProductos.qProductosStock.Value        :=FrProductos.qProductosStock.Value+ round(eCantidad.Value);
     FrProductos.qProductos.Post;

      DM1.Kardex.Close;
      DM1.Kardex.Open;

      DM1.FECHA.Close;
      DM1.FECHA.Open;

      DM1.Kardex.Insert;
      DM1.KardexIdProducto.Value              := FrProductos.qProductosidProducto.Value;
      DM1.KardexDescripcion.Value             := FrProductos.qProductosDescripcion.Value;
      DM1.KardexFecha.Value                   :=DM1.FECHAFECHA.Value;
      DM1.KardexEntrada.Value                 :=Round(eCantidad.Value);
      DM1.KardexSalida.Value                  :=0;
      DM1.KardexSaldo.Value                   :=FrProductos.qProductosStock.Value;
      DM1.KardexDetalle.Value                 :='Aumento de Stock por ingreso de productos';
      DM1.Kardex.Post;


      ShowMessage('Producto ingresado con ?xito');

      Close;
   end;

end;

end.
