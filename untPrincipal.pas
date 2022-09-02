unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Bixinho1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Bixinho1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untCadBixinho, untCadAgendamentos;

procedure TfrmPrincipal.Agendamentos1Click(Sender: TObject);
begin
      frmCadAgendamento.ShowModal;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
      frmCadAgendamento.ShowModal;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
      frmCadBixinho.ShowModal;
end;

procedure TfrmPrincipal.Bixinho1Click(Sender: TObject);
begin
      frmCadBixinho.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
      Application.Terminate;
end;

end.
