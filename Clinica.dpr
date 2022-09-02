program Clinica;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCadBixinho in 'untCadBixinho.pas' {frmCadBixinho},
  untCadAgendamentos in 'untCadAgendamentos.pas' {frmCadAgendamento},
  untDM in 'untDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadBixinho, frmCadBixinho);
  Application.CreateForm(TfrmCadAgendamento, frmCadAgendamento);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
