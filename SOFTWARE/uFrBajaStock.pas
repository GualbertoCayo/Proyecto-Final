unit uFrBajaStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sGroupBox, ComCtrls, sButton,
  sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit, sMemo;

type
  TFrBajaStock = class(TForm)
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
    eCantidad: TsCurrencyEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    Label5: TLabel;
    sMemo1: TsMemo;
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
  FrBajaStock: TFrBajaStock;

implementation

uses uFrProductos, UDM1;

{$R *.dfm}

procedure TFrBajaStock.Limpiar();
begin
   eCantidad.Clear;
   sMemo1.Clear;
end;

procedure TFrBajaStock.sButton3Click(Sender: TObject);
begin
  Limpiar();
end;

procedure TFrBajaStock.FormShow(Sender: TObject);
begin
  Limpiar();
end;

procedure TFrBajaStock.sButton1Click(Sender: TObject);
begin
  if eCantidad.Value>FrProductos.qProductosStock.Value then
  begin
    ShowMessage('Esta intentando rebajar mas cantidad de la que tiene');
    eCantidad.SetFocus;
  end
  else

  if eCantidad.Value <0 then
   begin
     ShowMessage('La Cantidad de ingreso tiene que ser mayor a 0');
     eCantidad.SetFocus;
   end
  else
  if trim(sMemo1.Text) = '' then
   begin
     ShowMessage('Ingrese una raz?n para la baja de Stock');
     sMemo1.SetFocus;
   end
  else
   begin
     FrProductos.qProductos.Edit;
     FrProductos.qProductosStock.Value        :=FrProductos.qProductosStock.Value- round(eCantidad.Value);
     FrProductos.qProductos.Post;

      DM1.Kardex.Close;
      DM1.Kardex.Open;

      DM1.FECHA.Close;
      DM1.FECHA.Open;

      DM1.Kardex.Insert;
      DM1.KardexIdProducto.Value                     := FrProductos.qProductosidProducto.Value;
      DM1.KardexDescripcion.Value := FrProductos.qProductosDescripcion.Value;
      DM1.KardexFecha.Value       :=DM1.FECHAFECHA.Value;
      DM1.KardexEntrada.Value     :=0;
      DM1.KardexSalida.Value      := Round(eCantidad.Value);
      DM1.KardexSaldo.Value       :=FrProductos.qProductosStock.Value;
      DM1.KardexDetalle.Value     :='Rebaja de Stock por: '+smemo1.text;
      DM1.Kardex.Post;


      ShowMessage('Se realizo la baja de stock con ?xito');

      Close;
   end;

end;

end.
