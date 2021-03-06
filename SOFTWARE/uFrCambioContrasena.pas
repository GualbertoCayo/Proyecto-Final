unit uFrCambioContrasena;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, ComCtrls;

type
  TFrCambioContrasena = class(TForm)
    StatusBar1: TStatusBar;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCambioContrasena: TFrCambioContrasena;

implementation

uses
  UDM1;

{$R *.dfm}

procedure TFrCambioContrasena.sButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrCambioContrasena.FormShow(Sender: TObject);
begin
 sedit1.clear;
 sEdit2.Clear;
 sEdit3.Clear;
end;

procedure TFrCambioContrasena.sButton2Click(Sender: TObject);
begin
  if sEdit1.Text<> dm1.qValidacontrasena.Value then
   begin
     ShowMessage('La contrase?a actual no es v?lida');
   end
  else
  if sEdit2.Text<>sEdit3.Text then
   begin
     ShowMessage('Las contrase?as no coinciden');
   end
  else
  if sEdit2.Text='' then
   begin
     ShowMessage('La contrase?a no puede estar en blanco');
   end
  else
   begin
     dm1.qValida.Edit;
     DM1.qValidacontrasena.Value:=sEdit2.Text;
     dm1.qValida.Post;
     ShowMessage('Contrase?a cambiada con ?xito');
     Close;
   end;

end;

end.
