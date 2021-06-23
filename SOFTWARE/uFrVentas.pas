unit uFrVentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, ExtCtrls, sPanel, ComCtrls, sStatusBar,
  Grids, DBGrids, RXDBCtrl, ExRxDBGrid, sEdit, DB, DBAccess, MSAccess,
  MemDS, sButton, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit, sLabel, sDBText, Buttons, sBitBtn, CustomizeGrid,
  frxClass, frxDBSet, frxExportXLS, frxExportBaseDialog, frxExportPDF;

type
  TFrVentas = class(TForm)
    sStatusBar1: TsStatusBar;
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    sPanel2: TsPanel;
    sEdit1: TsEdit;
    ExRxDBGrid1: TExRxDBGrid;
    qProducto: TMSQuery;
    dsqProducto: TMSDataSource;
    qProductoidProducto: TIntegerField;
    qProductoDescripcion: TStringField;
    qProductoTipo: TStringField;
    qProductoPrecioCompra: TCurrencyField;
    qProductoPrecioVenta: TCurrencyField;
    qProductoStock: TIntegerField;
    sCurrencyEdit1: TsCurrencyEdit;
    sButton1: TsButton;
    qTemp: TMSQuery;
    dsQtempr: TMSDataSource;
    DBGrid1: TDBGrid;
    qTempidTemp: TIntegerField;
    qTempIdUsuario: TIntegerField;
    qTempIdProducto: TIntegerField;
    qTempDescripcion: TStringField;
    qTempPrecioCompra: TCurrencyField;
    qTempPrecioVenta: TCurrencyField;
    qTempCantidad: TIntegerField;
    qTempPrecioTotal: TCurrencyField;
    qTotal: TMSQuery;
    sDBText1: TsDBText;
    dsqTotal: TDataSource;
    Label1: TLabel;
    qTotalTOTAL: TCurrencyField;
    sButton2: TsButton;
    CustomizeGrid1: TCustomizeGrid;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sBitBtn1: TsBitBtn;
    qVentas: TMSQuery;
    qVentasidVentas: TIntegerField;
    qVentasnombreRazonSocial: TStringField;
    qVentasciNit: TStringField;
    qVentasfechaVenta: TDateField;
    qVentasmontoTotal: TCurrencyField;
    qDetVentas: TMSQuery;
    qDetVentasidDetVentas: TIntegerField;
    qDetVentasFecha: TDateField;
    qDetVentasIdProducto: TIntegerField;
    qDetVentasDescripcion: TStringField;
    qDetVentasPrecioCompra: TCurrencyField;
    qDetVentasPrecioVenta: TCurrencyField;
    qDetVentasCantidad: TIntegerField;
    qDetVentasPrecioTotal: TCurrencyField;
    qDetVentasGanancia: TCurrencyField;
    qrebaja: TMSQuery;
    qrebajaidProducto: TIntegerField;
    qrebajaDescripcion: TStringField;
    qrebajaTipo: TStringField;
    qrebajaPrecioCompra: TCurrencyField;
    qrebajaPrecioVenta: TCurrencyField;
    qrebajaStock: TIntegerField;
    qDetVentasIdVentas: TIntegerField;
    frxReport1: TfrxReport;
    frxVentas: TfrxDBDataset;
    frxqDetVentas: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    procedure ormShow(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ExRxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sCurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVentas: TFrVentas;

implementation

{$R *.dfm}





uses
  UDM1;


procedure TFrVentas.ormShow(Sender: TObject);
begin
//  if qProducto.Active then qProducto.Refresh
//  else qProducto.Open;

    qTemp.Close;
    qTemp.Params[0].Value := dm1.qValidaidUsuario.Value;
    qTemp.Open;

    qTotal.Close;
    qTotal.Params[0].Value := dm1.qValidaidUsuario.Value;
    qTotal.Open;
end;

procedure TFrVentas.sEdit1Change(Sender: TObject);
begin
  if Length(sEdit1.Text)>1 then
   begin
      qProducto.Close;
      qProducto.Params[0].Value:=Trim(sEdit1.Text);
      qProducto.Open;
   end;
end;

procedure TFrVentas.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if  Key = #13 then
   if not qProducto.IsEmpty then
     ExRxDBGrid1.SetFocus;
end;

procedure TFrVentas.ExRxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     if  Key = #13 then
      sCurrencyEdit1.SetFocus;
end;

procedure TFrVentas.sCurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if  Key = #13 then
  sButton1.SetFocus;
end;

procedure TFrVentas.sButton1Click(Sender: TObject);
begin
  if  qProducto.IsEmpty then
   begin
     ShowMessage('Debe haber un producto seleccionado');
     sEdit1.Clear;
     qProducto.Close;
     sEdit1.SetFocus;
   end
  else
  if sCurrencyEdit1.Value<= 0 then
   begin
     ShowMessage('Ingreses un cantidad válida');
     sCurrencyEdit1.SetFocus;
   end
  else
  if sCurrencyEdit1.Value> qProductoStock.Value then
   begin
     ShowMessage('No existe la cantidad disponible');
     sCurrencyEdit1.SetFocus;
   end
  else
  begin
     qTemp.Insert;
     qTempIdUsuario.Value:=dm1.qValidaidUsuario.Value;
     qTempIdProducto.Value:=qProductoidProducto.Value;
     qTempDescripcion.Value:=qProductoDescripcion.Value;
     qTempPrecioCompra.Value:=qProductoPrecioCompra.Value;
     qTempPrecioVenta.Value:=qProductoPrecioVenta.Value;
     qTempCantidad.Value:=Round(sCurrencyEdit1.value);
     qTempPrecioTotal.Value:= qProductoPrecioVenta.Value* sCurrencyEdit1.value;
     qTemp.Post;

     qTotal.Close;
     qTotal.Params[0].Value := dm1.qValidaidUsuario.Value;
     qTotal.Open;

     sCurrencyEdit1.Clear;
     sEdit1.Clear;
     sEdit1.SetFocus;
  end;


end;

procedure TFrVentas.sButton2Click(Sender: TObject);
begin
  if qTemp.IsEmpty then
   begin
     ShowMessage('No existen registros para eliminar');
   end
  else
  begin
   if MessageDlg('¿Desea Eliminar la fila?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qTemp.Delete;
      qTotal.Close;
      qTotal.Params[0].Value := dm1.qValidaidUsuario.Value;
      qTotal.Open;
    end;
  end;
end;

procedure TFrVentas.sBitBtn1Click(Sender: TObject);
begin
  IF qTemp.IsEmpty then
  begin
     ShowMessage('No tiene productos seleccionados para la venta');
     sEdit1.SetFocus;
  end
  else
  IF sEdit2.Text= '' then
   begin
     ShowMessage('Ingrese un NIT , coloque 0 en defecto');
     sEdit2.SetFocus;
   end
  else
  IF sEdit3.Text= '' then
   begin
     ShowMessage('Ingrese el nombre, coloque S/N en defecto');
     sEdit3.SetFocus;
   end
  ELSE
  begin
     DM1.FECHA.Close; DM1.FECHA.Open;

     qVentas.Close; qventas.Open;
     qDetVentas.Close; qDetVentas.Open;
     
     qVentas.Insert;
     qVentasnombreRazonSocial.Value:=sEdit2.Text;
     qVentasciNit.Value:=sEdit3.Text;
     qVentasfechaVenta.Value:=dm1.FECHAFECHA.Value;
     qVentasmontoTotal.Value:=qTotalTOTAL.Value;
     qVentas.Post;

     qTemp.Refresh;
     qTemp.First;


     while not qTemp.Eof do
      begin
        //INGRESA DETALLE DE VENTAS
        qDetVentas.Insert;
        qDetVentasFecha.Value:=qVentasfechaVenta.Value;
        qDetVentasIdProducto.Value   :=qTempIdProducto.Value;
        qDetVentasDescripcion.Value  :=qTempDescripcion.Value;
        qDetVentasPrecioCompra.Value :=qTempPrecioCompra.Value;
        qDetVentasPrecioVenta.Value  :=qTempPrecioVenta.Value;
        qDetVentasCantidad.Value     :=qTempCantidad.Value;
        qDetVentasPrecioTotal.Value  :=qTempPrecioTotal.Value;
        qDetVentasGanancia.Value     :=(qTempPrecioVenta.Value-qTempPrecioCompra.Value)*qTempCantidad.Value;
        qDetVentasIdVentas.Value     :=qVentasidVentas.Value;
        qDetVentas.Post;
        //REBAJA CANTIDAD DEL STOCK

        qrebaja.Close;
        qrebaja.Params[0].Value:=qTempIdProducto.Value;
        qrebaja.Open;

        qrebaja.Edit;
        qrebajaStock.Value:=qrebajaStock.Value- qTempCantidad.Value;
        qrebaja.Post;

        //REGISTRAR SALIDA KARDEX

        DM1.Kardex.Close;
        DM1.Kardex.Open;



        DM1.Kardex.Insert;
        DM1.KardexIdProducto.Value  := qTempIdProducto.Value;
        DM1.KardexDescripcion.Value := qTempDescripcion.Value;
        DM1.KardexFecha.Value       :=DM1.FECHAFECHA.Value;
        DM1.KardexEntrada.Value     :=0;
        DM1.KardexSalida.Value      := qTempCantidad.Value;
        DM1.KardexSaldo.Value       := qrebajaStock.Value;
        DM1.KardexDetalle.Value     :='Rebaja de Stock por: Venta de productos Nº '+qVentasidVentas.AsString;
        dm1.KardexIdVentas.Value    := qVentasidVentas.Value;
        DM1.Kardex.Post;

        qTemp.Next;
      end;


      qTemp.First;
      while not qTemp.Eof do   qTemp.Delete;


      frxReport1.ShowReport();
      qProducto.Refresh;

      ShowMessage('Venta realizada con éxito');
  end;
end;

end.
