unit uRepVentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  DB, DBAccess, MSAccess, MemDS, ComCtrls, sStatusBar, frxClass, frxDBSet;

type
  TRepVentas = class(TForm)
    FECHA: TsDateEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sStatusBar1: TsStatusBar;
    q1: TMSQuery;
    dq1: TMSDataSource;
    frxventasdiarias: TfrxReport;
    frxq1: TfrxDBDataset;
    q1idVentas: TIntegerField;
    q1nombreRazonSocial: TStringField;
    q1ciNit: TStringField;
    q1fechaVenta: TDateField;
    q1montoTotal: TCurrencyField;
    frxq2: TfrxDBDataset;
    q2: TMSQuery;
    dq2: TMSDataSource;
    frxReport1: TfrxReport;
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepVentas: TRepVentas;

implementation

uses
  UDM1;

{$R *.dfm}

procedure TRepVentas.sButton1Click(Sender: TObject);
begin
  q1.Close;
  q1.Params[0].Value:= FECHA.Date;
  q1.Open;

  frxventasdiarias.ShowReport();
end;

procedure TRepVentas.sButton3Click(Sender: TObject);
begin
  q2.close;
  q2.params[0].Value:=FECHA.Date;
  q2.Open;

  frxreport1.ShowReport();
end;

procedure TRepVentas.FormShow(Sender: TObject);
begin
 if dm1.qValidarol.Value='Vendedor' then
  begin
    sButton3.Visible:=False;
  end;
end;

procedure TRepVentas.sButton2Click(Sender: TObject);
begin
  Close;
end;

end.
