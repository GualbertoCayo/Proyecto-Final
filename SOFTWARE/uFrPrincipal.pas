unit uFrPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sStatusBar, Menus, ExtCtrls;

type
  TFrPrincipal = class(TForm)
    sStatusBar1: TsStatusBar;
    MainMenu1: TMainMenu;
    A1: TMenuItem;
    U1: TMenuItem;
    V1: TMenuItem;
    V2: TMenuItem;
    Image1: TImage;
    C1: TMenuItem;
    R1: TMenuItem;
    V3: TMenuItem;
    I1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure U1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure V2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure V3Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrincipal: TFrPrincipal;

implementation

uses
  UDM1, uFrUsuarios, uFrProductos, uFrVentas, uFrCambioContrasena,
  uRepVentas, uRepStock;

{$R *.dfm}

procedure TFrPrincipal.FormShow(Sender: TObject);
begin
 sStatusBar1.Panels[0].Text:='Usuario: '+DM1.qValidanombre.AsString+' '+dm1.qValidaapellido.Value;
 sStatusBar1.Panels[1].Text:='Rol: '+ dm1.qValidarol.Value;

 if dm1.qValidarol.Value='Vendedor' then
  begin
    A1.Visible:=False;
    V1.Visible:=False;
    i1.Visible:=False;
  end;
end;

procedure TFrPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrPrincipal.U1Click(Sender: TObject);
begin
   FrUsuarios.ShowModal; 
end;

procedure TFrPrincipal.V1Click(Sender: TObject);
begin
  FrProductos.showmodal;
end;

procedure TFrPrincipal.V2Click(Sender: TObject);
begin
  FrVentas.showmodal;
end;

procedure TFrPrincipal.C1Click(Sender: TObject);
begin
FrCambioContrasena.show
end;

procedure TFrPrincipal.V3Click(Sender: TObject);
begin
   RepVentas.showmodal;
end;

procedure TFrPrincipal.I1Click(Sender: TObject);
begin
  RepStock.ShowModal;
end;

end.
