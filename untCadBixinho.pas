unit untCadBixinho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TfrmCadBixinho = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    edtNome_bixinho: TDBEdit;
    edtNome_Dono: TDBEdit;
    edtCPF: TDBEdit;
    edtCelular: TDBEdit;
    edtData: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Grid: TDBGrid;
    txtBusca: TEdit;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBixinho: TfrmCadBixinho;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmCadBixinho.txtBuscaChange(Sender: TObject);
begin
      DM.tbBixinho.Locate('nome_estimacao', txtBusca.Text,[loPartialKey]);
end;

end.
