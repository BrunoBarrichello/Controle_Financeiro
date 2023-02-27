unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Datasnap.DBClient, IBX.IBTable;

type
  TDM = class(TForm)
    Conexao: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsCheques: TDataSource;
    Inserir: TIBQuery;
    qryCheque: TIBQuery;
    OpenBanco: TOpenDialog;
    qryChequeNUMERO: TIntegerField;
    qryChequeDATA: TDateField;
    qryChequeVALOR: TFloatField;
    qryChequeNOME: TIBStringField;
    qryChequePARA: TIBStringField;
    qryChequeEM: TDateField;
    qryFrete: TIBQuery;
    dsFretes: TDataSource;
    qryFreteDATA: TDateField;
    qryFreteEMPRESA: TIBStringField;
    qryFreteDESTINO: TIBStringField;
    qryFreteTRANSPORTE: TIBStringField;
    qryFretePEDAGIO: TFloatField;
    qryFreteCOMBUSTIVEL: TFloatField;
    qryFreteREFEICOES: TFloatField;
    qryFreteNOTA_FISCAL: TIBStringField;
    qryFreteVALOR_FRETE: TFloatField;
    qryFreteLUCRO: TFloatField;
    qryFretePAGAMENTO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

uses uCad_Cheque, uControle_Cheque;

end.
