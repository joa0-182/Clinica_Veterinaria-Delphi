unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbBixinho: TFDTable;
    tbAgendamento: TFDTable;
    dsBixinho: TDataSource;
    dsAgendamento: TDataSource;
    tbBixinhoId: TFDAutoIncField;
    tbBixinhonome_estimacao: TStringField;
    tbBixinhonome_dono: TStringField;
    tbBixinhocelular: TStringField;
    tbBixinhodata_cadastro: TDateField;
    tbBixinhocpf: TStringField;
    tbAgendamentoId: TFDAutoIncField;
    tbAgendamentoId_bixinho: TIntegerField;
    tbAgendamentodata: TDateField;
    tbAgendamentohora: TStringField;
    tbAgendamentoespecialidade: TStringField;
    tbAgendamentoveterinario: TStringField;
    procedure tbBixinhoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbBixinhoAfterInsert(DataSet: TDataSet);
begin
      tbBixinhodata_cadastro.Value := Date();
end;

end.
