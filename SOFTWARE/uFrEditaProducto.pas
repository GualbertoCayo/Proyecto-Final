unit uFrEditaProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sButton, Mask, sMaskEdit, sCustomComboEdit,
  sCurrEdit, sCurrencyEdit, ComCtrls, sStatusBar, sComboBox, DB, MemDS,
  DBAccess, MSAccess;

type
  TFrEditaProducto = class(TForm)
    eDescripcion: TsEdit;
    eTipo: TsComboBox;
    sStatusBar1: TsStatusBar;
    ePCompra: TsCurrencyEdit;
    ePVenta: TsCurrencyEdit;
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
  FrEditaProducto: TFrEditaProducto;

implementation

uses
  UDM1, uFrProductos;

{$R *.dfm}

procedure TFrEditaProducto.ePCompraExit(Sender: TObject);
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

procedure TFrEditaProducto.sButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrEditaProducto.sButton1Click(Sender: TObject);
begin
  libre.Close;
  libre.Params[0].Value:=Trim(eDescripcion.Text);
  libre.Params[1].Value:=FrProductos.qProductosidProducto.Value;
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
   begin
      FrProductos.qProductos.Edit;
      FrProductos.qProductosDescripcion.Value:=eDescripcion.Text;
      FrProductos.qProductosTipo.Value:=eTipo.Text;
      FrProductos.qProductosPrecioCompra.Value:=ePCompra.Value;
      FrProductos.qProductosPrecioVenta.Value:=ePVenta.Value;
      FrProductos.qProductos.Post;

      ShowMessage('Producto editado con éxito');
      Close;
   end;


end;

procedure TFrEditaProducto.Limpiar();
begin
   eDescripcion.Text := Trim(FrProductos.qProductosDescripcion.AsString);
   eTipo.Text      :=Trim(FrProductos.qProductosTipo.AsString);
   ePCompra.Value  :=FrEditaProducto.ePCompra.Value;
   ePVenta.Value   :=FrEditaProducto.ePVenta.Value;

end;


procedure TFrEditaProducto.sButton3Click(Sender: TObject);
begin
   Limpiar();
end;

procedure TFrEditaProducto.FormShow(Sender: TObject);
begin
   Limpiar();
end;

end.
