unit uFrUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, Grids, DBGrids, CRGrid, ComCtrls,
  sStatusBar,StrUtils, ExtCtrls, sPanel, sDBNavigator;

type
  TFrUsuarios = class(TForm)
    CRDBGrid1: TCRDBGrid;
    qUsuarios: TMSQuery;
    dsqUsuarios: TMSDataSource;
    sStatusBar1: TsStatusBar;
    qUsuariosidUsuario: TIntegerField;
    qUsuariosusuario: TStringField;
    qUsuariosnombre: TStringField;
    qUsuariosapellido: TStringField;
    qUsuarioscontrasena: TStringField;
    qUsuariosemail: TStringField;
    qUsuariosrol: TStringField;
    qUsuariosTelefono: TStringField;
    sDBNavigator1: TsDBNavigator;
    procedure qUsuarioscontrasenaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrUsuarios: TFrUsuarios;

implementation

uses
  uFrPrincipal,UDM1;

{$R *.dfm}

procedure TFrUsuarios.qUsuarioscontrasenaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   if DisplayText then
    Text := DupeString('*', Length(Sender.AsString))
  else
    Text := Sender.AsString;
end;

end.




