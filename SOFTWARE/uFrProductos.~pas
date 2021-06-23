unit uFrProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MSAccess, MemDS, Grids, DBGrids, CRGrid, ComCtrls,
  sStatusBar, QExport4Dialog, StdCtrls, ExtCtrls, sPanel, sDBNavigator,
  sButton;

type
  TFrProductos = class(TForm)
    qProductos: TMSQuery;
    dsqProducto: TMSDataSource;
    sStatusBar1: TsStatusBar;
    CRDBGrid1: TCRDBGrid;
    QExport4Dialog1: TQExport4Dialog;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sButton4: TsButton;
    sButton5: TsButton;
    sDBNavigator1: TsDBNavigator;
    qProductosidProducto: TIntegerField;
    qProductosDescripcion: TStringField;
    qProductosTipo: TStringField;
    qProductosPrecioCompra: TCurrencyField;
    qProductosPrecioVenta: TCurrencyField;
    qProductosStock: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrProductos: TFrProductos;

implementation

uses
  UDM1, uFrNuevoProducto, uFrEditaProducto, uFrAumentaStock, uFrBajaStock;

{$R *.dfm}

procedure TFrProductos.FormShow(Sender: TObject);
begin
  if qProductos.Active then qProductos.Refresh
  else qProductos.Open;
end;

procedure TFrProductos.sButton5Click(Sender: TObject);
begin
  QExport4Dialog1.Execute;
end;

procedure TFrProductos.sButton1Click(Sender: TObject);
begin
FrNuevoProducto.showmodal;
end;

procedure TFrProductos.sButton2Click(Sender: TObject);
begin
  if qProductos.IsEmpty then
   begin
     showmessage('No existe un registro seleccionado');
   end
  else
   begin

     FrEditaProducto.ShowModal;
   end;
end;

procedure TFrProductos.sButton3Click(Sender: TObject);
begin
   if qProductos.IsEmpty then
   begin
     showmessage('No existe un registro seleccionado');
   end
  else
   begin

     FrAumentaStock.ShowModal;
   end;


end;

procedure TFrProductos.sButton4Click(Sender: TObject);
begin
  FrBajaStock.showmodal;
end;

end.
