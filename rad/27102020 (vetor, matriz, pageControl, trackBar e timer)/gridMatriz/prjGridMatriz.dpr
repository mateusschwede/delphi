program prjGridMatriz;

uses
  Vcl.Forms,
  uGridMatriz in 'uGridMatriz.pas' {frmGridMatriz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGridMatriz, frmGridMatriz);
  Application.Run;
end.
