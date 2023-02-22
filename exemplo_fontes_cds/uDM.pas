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
    qryChequeNUMERO: TIntegerField;
    qryChequeDATA: TDateField;
    qryChequeVALOR: TFloatField;
    qryChequeNOME: TIBStringField;
    qryChequePARA: TIBStringField;
    qryChequeEM: TDateField;
    OpenBanco: TOpenDialog;
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
