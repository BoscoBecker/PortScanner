program Scanner;

uses
  Vcl.Forms,
  Uscanner in 'Uscanner.pas' {frmScanner},
  Vcl.Themes,
  Vcl.Styles;

// Uthread in 'Uthread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TfrmScanner, frmScanner);
  Application.Run;
end.
