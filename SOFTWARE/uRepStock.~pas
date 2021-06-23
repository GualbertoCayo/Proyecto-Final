unit uRepStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sStatusBar, QExport4Dialog, frxClass, frxDBSet, DB,
  KDaoTable, StdCtrls, sButton, Mask, sMaskEdit, sCustomComboEdit,
  sToolEdit, MemDS, DBAccess, MSAccess;

type
  TRepStock = class(TForm)
    f1: TsDateEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    CheckBox1: TCheckBox;
    dExistencias: TDataSource;
    frxExistencias: TfrxDBDataset;
    QExport4Dialog1: TQExport4Dialog;
    sStatusBar1: TsStatusBar;
    EXISTENCIAS: TMSQuery;
    EXISTENCIASIdProducto: TIntegerField;
    EXISTENCIASDescripcion: TStringField;
    EXISTENCIASPrecioCompra: TCurrencyField;
    EXISTENCIASENTRADA: TIntegerField;
    EXISTENCIASSALIDA: TIntegerField;
    EXISTENCIASSALDO: TIntegerField;
    frxReport1: TfrxReport;
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepStock: TRepStock;

implementation

uses
  UDM1;

{$R *.dfm}

procedure TRepStock.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='fechas' then Value:=f1.Text;
end;

procedure TRepStock.sButton1Click(Sender: TObject);
begin
  EXISTENCIAS.Close;
  existencias.params[0].Value:=f1.Date;
  existencias.Open;


  if CheckBox1.Checked then
   begin
     EXISTENCIAS.Filtered   :=False;
     existencias.Filter   :='saldo>0';
     EXISTENCIAS.Filtered :=True;
   end
  else
  EXISTENCIAS.Filtered:=False;



  frxReport1.ShowReport();
end;

procedure TRepStock.sButton2Click(Sender: TObject);
begin
 QExport4Dialog1.Execute;
end;

procedure TRepStock.sButton3Click(Sender: TObject);
begin
 Close;
end;

end.
