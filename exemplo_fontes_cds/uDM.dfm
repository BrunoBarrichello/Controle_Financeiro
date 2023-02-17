object DM: TDM
  Left = 0
  Top = 0
  Caption = 'DM'
  ClientHeight = 215
  ClientWidth = 179
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Conexao: TIBDatabase
    Connected = True
    DatabaseName = '\\Bruno-PC\C:\Users\Bruno\Desktop\Banco_Dados\ARGUS_DADOS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 24
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    AllowAutoStart = False
    DefaultDatabase = Conexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 24
  end
  object dsCheques: TDataSource
    DataSet = qryCheque
    Left = 24
    Top = 96
  end
  object Inserir: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 24
    Top = 160
  end
  object qryCheque: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT NUMERO, DATA, VALOR, NOME, PARA, EM, OBS, DTBAIXA FROM CH' +
        'EQUES')
    Left = 112
    Top = 96
    object qryChequeNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'CHEQUES.NUMERO'
      Required = True
    end
    object qryChequeDATA: TDateField
      FieldName = 'DATA'
      Origin = 'CHEQUES.DATA'
    end
    object qryChequeVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CHEQUES.VALOR'
      DisplayFormat = '#,#0.00'
    end
    object qryChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CHEQUES.NOME'
      Size = 45
    end
    object qryChequePARA: TIBStringField
      FieldName = 'PARA'
      Origin = 'CHEQUES.PARA'
      Size = 45
    end
    object qryChequeEM: TDateField
      FieldName = 'EM'
      Origin = 'CHEQUES.EM'
    end
    object qryChequeOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CHEQUES.OBS'
      Size = 80
    end
    object qryChequeDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      Origin = 'CHEQUES.DTBAIXA'
    end
  end
end
