object DM: TDM
  OldCreateOrder = False
  Height = 286
  Width = 355
  object conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object tbBixinho: TFDTable
    Active = True
    AfterInsert = tbBixinhoAfterInsert
    IndexFieldNames = 'Id'
    Connection = conexao
    TableName = 'clinica.bixinho'
    Left = 96
    Top = 88
    object tbBixinhoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
    end
    object tbBixinhonome_estimacao: TStringField
      FieldName = 'nome_estimacao'
      Origin = 'nome_estimacao'
      Required = True
      Size = 80
    end
    object tbBixinhonome_dono: TStringField
      FieldName = 'nome_dono'
      Origin = 'nome_dono'
      Required = True
      Size = 80
    end
    object tbBixinhocelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #####-####;1;_'
      Size = 16
    end
    object tbBixinhodata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbBixinhocpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'Id'
    Connection = conexao
    TableName = 'clinica.agendamento'
    Left = 208
    Top = 88
    object tbAgendamentoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
    end
    object tbAgendamentoId_bixinho: TIntegerField
      FieldName = 'Id_bixinho'
      Origin = 'Id_bixinho'
      Required = True
    end
    object tbAgendamentodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentohora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentoveterinario: TStringField
      FieldName = 'veterinario'
      Origin = 'veterinario'
      Required = True
      Size = 40
    end
  end
  object dsBixinho: TDataSource
    DataSet = tbBixinho
    Left = 96
    Top = 144
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 208
    Top = 144
  end
end
