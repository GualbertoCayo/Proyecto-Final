unit uFrIntro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, sEdit, ComCtrls, sButton, sSkinManager;

type
  TFrIntro = class(TForm)
    Image1: TImage;
    StatusBar1: TStatusBar;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sSkinManager1: TsSkinManager;
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrIntro: TFrIntro;
  intentos: Word = 1;


implementation

uses
  UDM1, uFrPrincipal;

{$R *.dfm}

procedure TFrIntro.sButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrIntro.FormShow(Sender: TObject);
begin

  sSkinManager1.Active:=True;
  DM1.ConexionFni.Open;

  if dm1.ConexionFni.Connected then
    StatusBar1.Panels[2].Text := 'BD CONECTADO'
  else
    StatusBar1.Panels[2].Text := 'BD ERROR';


end;

procedure TFrIntro.sButton1Click(Sender: TObject);

begin
  if dm1.ConexionFni.Connected then
    begin
      if sEdit1.Text = '' then
       begin
         ShowMessage('El campo Usuario esta vacio');
         sEdit1.SetFocus;
       end
      else
      if sEdit2.Text = '' then
       begin
         ShowMessage('El campo contraseña esta vacio');
         sEdit2.SetFocus;
       end
      else
      begin
        DM1.qValida.Close;
        DM1.qValida.Params[0].Value := Trim(sEdit1.Text);
        Dm1.qValida.Params[1].Value := sEdit2.Text;
        DM1.qValida.Open;

        if DM1.qValida.RecordCount <> 0 then
         begin //si se encontro

           FrPrincipal.Visible :=True;
           FrIntro.Visible     :=False;
         end
        else
         begin //no se encontro
            ShowMessage('Usuario o contraseña equivocado');

            if intentos = 3 then
             begin
               ShowMessage('Sobrepaso la cantidad de intentos');
               Application.Terminate;
             end;

            Inc(intentos);

         end;

      end;
    end
  else
     begin
       ShowMessage('La base de datos no esta conectada');
     end;

end;

end.
