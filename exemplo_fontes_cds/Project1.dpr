program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Principal},
  uControle_Cheque in 'uControle_Cheque.pas' {Controle_Cheque},
  uDM in 'uDM.pas' {DM},
  uCad_Cheque in 'uCad_Cheque.pas' {Cad_Cheque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TControle_Cheque, Controle_Cheque);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCad_Cheque, Cad_Cheque);
  Application.Run;
end.
