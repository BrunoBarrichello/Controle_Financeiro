unit Funcoes;

interface

uses
  Windows, Forms, Messages, SysUtils, Classes, Graphics, Vcl.Controls, Dialogs, DBGrids, Grids,
  StdCtrls, IBX.IBDatabase, DBClient, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBTable, ComObj, DB,
  TLHelp32, PsAPI, Registry, ShellApi, Printers, DateUtils, variants;

type
  TEnderecosCliente = record
    Endereco: String;
    Objeto: TObject;
end;

  procedure Teclado1(Sender: TObject; var Key: Char; vNumero: Boolean);
  procedure VerificaUmaData(Sender :TObject); overload;
  procedure VerificaUmaData(vDt1,vDt2 : String); overload;
Const
  xlWBATWorksheet = -4167;

implementation

procedure Teclado1(Sender: TObject; var Key: Char; vNumero: Boolean);
begin
  if (vNumero = True) then begin
    if (key in [',', '.']) then key:=FormatSettings.DecimalSeparator;
    if not (CharInSet(Key,['0'..'9', #13, #8, ',' ,'-'])) then key:=#0;
  end;
  if Key = #13 then begin
    keybd_event(VK_Tab, 0, 0, 0);   Key := #0;
  end;
end;

procedure VerificaUmaData(Sender :TObject);
begin
  if (TEdit(Sender).Text <> '') and (TEdit(Sender).Text <> '  /  /  ') and (TEdit(Sender).Text <> '  /  /    ') then begin
    try
      StrToDate(TEdit(Sender).Text);
    except
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('ATENÇÃO !' + #13 + #13 + 'A data informada não é válida, verifique : ' + TEdit(Sender).Text),'Argus', mb_ok + MB_ICONSTOP);
      abort;
    end;
  end;
end;

procedure VerificaUmaData(vDt1,vDt2 : String);
begin
  if (vDt1 <> '') AND (vDt1 <> '  /  /  ') then begin
    try
      StrToDate(vDt1);
    except
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('ATENÇÃO !' + #13 + #13 + 'A data informada não é válida, verifique : ' + vDt1),'Argus', mb_ok + MB_ICONSTOP);
      abort;
    end;
  end;

  if (vDt2 <> '') AND (vDt2 <> '  /  /  ') then begin
    try
      StrToDate(vDt2);
    except
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('ATENÇÃO !' + #13 + #13 + 'A data informada não é válida, verifique : ' + vDt2),'Argus', mb_ok + MB_ICONSTOP);
      abort;
    end;
  end;
  if (vDt1 <> '') AND (vDt1 <> '  /  /  ') and (vDt2 <> '') AND (vDt2 <> '  /  /  ') then begin
    if StrToDate(vDt1) > StrToDate(vDt2) then begin
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('ATENÇÃO !' + #13 + #13 + 'A data inicial não pode ser maior que a data final, verifique : ' + #13 +
      'Data Inicial: ' + vDt1 + #13 + 'Data Final: ' + vDt2),'Argus', mb_ok + MB_ICONSTOP);
      abort;
    end;
  end;
end;


end.
