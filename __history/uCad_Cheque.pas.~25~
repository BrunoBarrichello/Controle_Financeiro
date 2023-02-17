unit uCad_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TCad_Cheque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edt_numCheque: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edt_Cliente: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_Valor: TEdit;
    Label6: TLabel;
    edt_Destino: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Cheque: TCad_Cheque;
  vCheque_Selecionado : String;

implementation

{$R *.dfm}

uses Unit2, uControle_Cheque, uDM, Funcoes;

procedure TCad_Cheque.BitBtn1Click(Sender: TObject);
begin
  if (edt_numCheque.Text = '') or (edt_numCheque.Text = '0') then begin
    Application.MessageBox('Digite o número correto do cheque!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_numCheque.SetFocus;
    Abort;
  end
  else if (edt_Cliente.Text = '') or (edt_Cliente.Text = '0') then begin
    Application.MessageBox('Digite um nome válido para o cliente!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Cliente.SetFocus;
    Abort;
  end
  else if (edt_Valor.Text = '') or (edt_Valor.Text = '0') then begin
    Application.MessageBox('Digite um valor válido!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Cliente.SetFocus;
    Abort;
  end
  else begin
    if L_Form = 'Novo' then begin

      DM.Inserir.Close;
      DM.Inserir.SQL.Text := 'INSERT INTO CHEQUES (NUMERO, DATA, EM, NOME, VALOR, PARA) ' +
      'VALUES (:vNum_Cheque, :vData_Receb, :vData_Deposito, :vNome, :vValor, :vDestino)';

      DM.Inserir.ParamByName('vNum_Cheque').Value := edt_numCheque.Text;
      DM.Inserir.ParamByName('vData_Receb').Value := StrToDate(MaskEdit1.Text);
      DM.Inserir.ParamByName('vData_Deposito').Value := StrToDate(MaskEdit2.Text);
      DM.Inserir.ParamByName('vNome').Value := edt_Cliente.Text;
      DM.Inserir.ParamByName('vValor').Value := StrToFloat(edt_Valor.Text);
      DM.Inserir.ParamByName('vDestino').Value := edt_Destino.Text;

      DM.Inserir.ExecSQL;

      if Application.MessageBox('Cheque incluso com sucesso! Deseja inserir um novo?', 'LR Válvulas', MB_ICONINFORMATION + MB_YESNO) = mrYes then begin
        edt_numCheque.Text := '';
        MaskEdit1.Text := '';
        MaskEdit2.Text := '';
        edt_Cliente.Text := '';
        edt_Valor.Text := '';
        edt_Destino.Text := '';
        DM.qryCheque.Close;
        DM.qryCheque.Open;
      end else
       Close;

    end
    else begin
      DM.Inserir.Close;
      DM.Inserir.SQL.Text := 'UPDATE CHEQUES SET NUMERO =:vNum_Cheque, DATA =:vData_Receb, ' +
      'EM =:vData_Deposito, NOME =:vNome, VALOR =:vValor, PARA =:vDestino WHERE NUMERO =:vCheque_Selecionado' ;

      DM.Inserir.ParamByName('vNum_Cheque').Value := edt_numCheque.Text;
      DM.Inserir.ParamByName('vData_Receb').Value := StrToDate(MaskEdit1.Text);
      DM.Inserir.ParamByName('vData_Deposito').Value := StrToDate(MaskEdit2.Text);
      DM.Inserir.ParamByName('vNome').Value := edt_Cliente.Text;
      DM.Inserir.ParamByName('vValor').Value := StrToFloat(edt_Valor.Text);
      DM.Inserir.ParamByName('vDestino').Value := edt_Destino.Text;
      DM.Inserir.ParamByName('vCheque_Selecionado').Value := vCheque_Selecionado;

      DM.Inserir.ExecSQL;

      Application.MessageBox('Alterações realizadas com sucesso!', 'LR Válvulas', MB_OK + MB_ICONINFORMATION);
      Close;
    end;

    DM.qryCheque.Close;
    DM.qryCheque.Open;
  end;
end;

procedure TCad_Cheque.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TCad_Cheque.FormShow(Sender: TObject);
begin
  edt_numCheque.SetFocus;

  if L_Form = 'Alterar' then begin
    vCheque_Selecionado := Controle_Cheque.DBGrid1.SelectedField.DataSet.FieldByName('NUMERO').AsString;

    DM.Inserir.Close;
    DM.Inserir.SQL.Text := 'SELECT NUMERO, DATA, EM, NOME, VALOR, PARA FROM CHEQUES WHERE NUMERO =:vCheque_Selecionado';
    DM.Inserir.ParamByName('vCheque_Selecionado').Value := vCheque_Selecionado;
    DM.Inserir.Open;

    edt_numCheque.Text := DM.Inserir.FieldByName('NUMERO').AsString;
    MaskEdit1.Text := FormatDateTime('DD/MM/YYYY', DM.Inserir.FieldByName('DATA').AsDateTime);
    MaskEdit2.Text := FormatDateTime('DD/MM/YYYY', DM.Inserir.FieldByName('EM').AsDateTime);
    edt_Cliente.Text := DM.Inserir.FieldByName('NOME').AsString;
    edt_Valor.Text := DM.Inserir.FieldByName('VALOR').AsString;
    edt_Destino.Text := DM.Inserir.FieldByName('PARA').AsString;
  end;
end;

procedure TCad_Cheque.MaskEdit1Exit(Sender: TObject);
begin
  VerificaUmaData(Sender);
end;

procedure TCad_Cheque.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Teclado1(Sender, Key, False);
end;

end.
