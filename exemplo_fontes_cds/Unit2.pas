unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Buttons, System.ImageList,
  Vcl.ImgList, IniFiles;

type
  TPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    procedure Ler_Wise(tipo: integer);
    function GetWinDir: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses uControle_Cheque, uDM, uControle_Fretes;

function TPrincipal.GetWinDir: string;
var
  S: string;
  i: integer;
begin
  i := 255;
  SetLength(S, i);
  i := GetWindowsDirectory(PChar(S), i);
  SetLength(S, i);
  Result := Trim(S);
end;


procedure TPrincipal.Ler_Wise(tipo: integer);
var
  sArquivo: string;
  sWinDir: string;
  sNomeBanco: string;
  iniAcqua: TIniFile;
begin
  DM.Conexao.Connected := False;
  DM.IBTransaction1.Active := False;

  sArquivo := 'Argus_Firebird.ini';
  sWinDir := GetWinDir;

  if not FileExists(sWinDir + '\' + sArquivo) then begin
    if DM.OpenBanco.Execute then begin
      sNomeBanco := DM.OpenBanco.FileName;
      iniAcqua := TIniFile.Create(sWinDir + '\' + sArquivo);
    end else
      MessageDlg('Erro ao tentar localizar o banco de dados !', mtError,[mbOk], 0);

    try iniAcqua.WriteString('Banco', 'Caminho', sNomeBanco);
    finally iniAcqua.Free;
    end;
  end
  else begin
    iniAcqua := TIniFile.Create(sWinDir + '\' + sArquivo);
    try sNomeBanco := iniAcqua.ReadString('Banco', 'Caminho', '');
    finally iniAcqua.Free;
    end;
  end;

  try
    DM.Conexao.DatabaseName := sNomeBanco;
    DM.Conexao.Connected := True;
    DM.IBTransaction1.Active := True;
  except
    MessageDlg('Erro ao tentar conectar-se ao banco de dados !', mtError, [mbOk], 0);
    Application.Terminate;
  end;
end;

procedure TPrincipal.BitBtn1Click(Sender: TObject);
begin
  Ler_Wise(0);

  if Controle_Cheque = nil then Application.CreateForm(TControle_Cheque, Controle_Cheque);
  Controle_Cheque.ShowModal;
  FreeAndNil(Controle_Cheque);
end;


procedure TPrincipal.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TControle_Fretes, Controle_Fretes);
  Controle_Fretes.ShowModal;
  FreeAndNil(Controle_Fretes);
end;

procedure TPrincipal.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i] is TBitBtn then begin
      TBitBtn(Components[i]).Font.Name := 'Arial';
      TBitBtn(Components[i]).Font.Size := 9;
    end;
  end;
end;

end.
