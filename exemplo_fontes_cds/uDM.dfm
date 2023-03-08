object DM: TDM
  Left = 0
  Top = 0
  Caption = 'DM'
  ClientHeight = 620
  ClientWidth = 1014
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
    DatabaseName = 'C:\Users\Bruno\Desktop\Banco_Dados\ARGUS_DADOS.FDB'
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
    Left = 106
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
      'SELECT NUMERO, DATA, VALOR, NOME, PARA, EM FROM CHEQUES'
      '     ORDER BY PARA DESC')
    Left = 104
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
  end
  object OpenBanco: TOpenDialog
    Left = 104
    Top = 160
  end
  object qryFrete: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM FRETES ORDER BY PAGAMENTO ')
    Left = 232
    Top = 96
    object qryFreteDATA: TDateField
      FieldName = 'DATA'
      Origin = 'FRETES.DATA'
    end
    object qryFreteEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = 'FRETES.EMPRESA'
      Size = 100
    end
    object qryFreteDESTINO: TIBStringField
      FieldName = 'DESTINO'
      Origin = 'FRETES.DESTINO'
      Size = 100
    end
    object qryFreteTRANSPORTE: TIBStringField
      FieldName = 'TRANSPORTE'
      Origin = 'FRETES.TRANSPORTE'
      Size = 70
    end
    object qryFretePEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      Origin = 'FRETES.PEDAGIO'
      DisplayFormat = '#,#0.00'
    end
    object qryFreteCOMBUSTIVEL: TFloatField
      FieldName = 'COMBUSTIVEL'
      Origin = 'FRETES.COMBUSTIVEL'
      DisplayFormat = '#,#0.00'
    end
    object qryFreteREFEICOES: TFloatField
      FieldName = 'REFEICOES'
      Origin = 'FRETES.REFEICOES'
      DisplayFormat = '#,#0.00'
    end
    object qryFreteNOTA_FISCAL: TIBStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'FRETES.NOTA_FISCAL'
      Size = 30
    end
    object qryFreteVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'FRETES.VALOR_FRETE'
      DisplayFormat = '#,#0.00'
    end
    object qryFretePAGAMENTO: TIBStringField
      FieldName = 'PAGAMENTO'
      Origin = 'FRETES.PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryFreteID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'FRETES.ID'
      Required = True
    end
    object qryFretePAGTO_TERCEIRO: TIBStringField
      FieldName = 'PAGTO_TERCEIRO'
      Origin = 'FRETES.PAGTO_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object qryFreteLUCRO: TFloatField
      FieldName = 'LUCRO'
      Origin = 'FRETES.LUCRO'
      DisplayFormat = '#,#0.00'
    end
  end
  object dsFretes: TDataSource
    DataSet = qryFrete
    Left = 176
    Top = 96
  end
end
