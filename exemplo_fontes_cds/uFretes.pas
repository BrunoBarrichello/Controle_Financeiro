unit uFretes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFretes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edt_Refeicoes: TEdit;
    edt_Destino: TEdit;
    edt_Combustivel: TEdit;
    edt_Empresa: TEdit;
    edt_Data: TMaskEdit;
    edt_Transporte: TEdit;
    edt_vlrPedagio: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edt_ValorFrete: TEdit;
    Label9: TLabel;
    edt_NFe: TEdit;
    Label10: TLabel;
    edt_ValorTerceiro: TEdit;
    Label11: TLabel;
    edt_Lucro: TEdit;
    check_PagoCliente: TCheckBox;
    check_PagoTerceiro: TCheckBox;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure check_PagoTerceiroClick(Sender: TObject);
    procedure check_PagoClienteClick(Sender: TObject);
    procedure edt_ValorFreteExit(Sender: TObject);
    procedure edt_vlrPedagioExit(Sender: TObject);
    procedure edt_CombustivelExit(Sender: TObject);
    procedure edt_RefeicoesExit(Sender: TObject);
    procedure edt_ValorTerceiroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fretes: TFretes;
  vCheck_Terceiro, vCheck_Cliente : String;

implementation

uses uDM, uControle_Fretes, Unit2;

{$R *.dfm}

procedure TFretes.BitBtn1Click(Sender: TObject);
begin
  if edt_Data.Text = '  /  /  ' then begin
    Application.MessageBox('Informe a data do transporte!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Data.SetFocus;
    Abort;
  end
  else if edt_Transporte.Text = '' then begin
    Application.MessageBox('Informe um transportador!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Transporte.SetFocus;
    Abort;
  end
  else if edt_Empresa.Text = '' then begin
    Application.MessageBox('Informe o nome da empresa!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Empresa.SetFocus;
    Abort;
  end
  else if edt_Destino.Text = '' then begin
    Application.MessageBox('Informe o destino do transporte!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_Destino.SetFocus;
    Abort;
  end
  else if (edt_ValorFrete.Text = '') or (edt_ValorFrete.Text = '0') then begin
    Application.MessageBox('Informe o valor do frete!', 'LR Válvulas', MB_ICONINFORMATION + MB_OK);
    edt_ValorFrete.SetFocus;
    Abort;
  end
  else begin
    DM.Inserir.Close;
    DM.Inserir.SQL.Text := 'insert into fretes (DATA, EMPRESA, DESTINO, TRANSPORTE, PEDAGIO, COMBUSTIVEL, REFEICOES, NOTA_FISCAL, VALOR_FRETE, PAGAMENTO, PAGTO_TERCEIRO, LUCRO) ' +
    'values (:DATA, :EMPRESA, :DESTINO, :TRANSPORTE, :PEDAGIO, :COMBUSTIVEL, :REFEICOES, :NOTA_FISCAL, :VALOR_FRETE, :PAGAMENTO, :PAGTO_TERCEIRO, :LUCRO)';

    DM.Inserir.ParamByName('DATA').Value := StrToDate(edt_Data.Text);
    DM.Inserir.ParamByName('EMPRESA').Value := edt_Empresa.Text;
    DM.Inserir.ParamByName('DESTINO').Value := edt_Destino.Text;
    DM.Inserir.ParamByName('TRANSPORTE').Value := edt_Transporte.Text;
    DM.Inserir.ParamByName('PEDAGIO').Value := StrToFloat(edt_vlrPedagio.Text);
    DM.Inserir.ParamByName('COMBUSTIVEL').Value := StrToFloat(edt_Combustivel.Text);
    DM.Inserir.ParamByName('REFEICOES').Value := StrToFloat(edt_Refeicoes.Text);
    DM.Inserir.ParamByName('NOTA_FISCAL').Value := edt_NFe.Text;
    DM.Inserir.ParamByName('VALOR_FRETE').Value := StrToFloat(edt_ValorFrete.Text);
    DM.Inserir.ParamByName('PAGAMENTO').Value := vCheck_Cliente;
    DM.Inserir.ParamByName('PAGTO_TERCEIRO').Value := vCheck_Terceiro;
    DM.Inserir.ParamByName('LUCRO').Value := StrToFloat(edt_Lucro.Text);

    DM.Inserir.ExecSQL;
  end;

  DM.qryFrete.Close;
  DM.qryFrete.Open;

  if Application.MessageBox('Lançamento incluso com sucesso! Deseja inserir um novo?', 'LR Válvulas', MB_ICONINFORMATION + MB_YESNO) = mrYes then begin
    edt_Data.Text := '';
    edt_Empresa.Text := '';
    edt_Destino.Text := '';
    edt_Transporte.Text := '';
    edt_NFe.Text := '';
    vCheck_Cliente := '';
    vCheck_Terceiro := '';
    edt_vlrPedagio.Text := '';
    edt_Combustivel.Text := '';
    edt_Refeicoes.Text := '';
    edt_ValorFrete.Text := '';
    edt_Lucro.Text := '';

    edt_vlrPedagio.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_vlrPedagio.Text, 0.0)));
    edt_Combustivel.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Combustivel.Text, 0.0)));
    edt_Refeicoes.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Refeicoes.Text, 0.0)));
    edt_ValorFrete.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_ValorFrete.Text, 0.0)));
    edt_Lucro.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Lucro.Text, 0.0)));
  end
  else
    Close;
end;

procedure TFretes.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFretes.check_PagoClienteClick(Sender: TObject);
begin
  if check_PagoCliente.Checked = True then
    vCheck_Cliente := 'S'
  else
    vCheck_Cliente := 'N';
end;

procedure TFretes.check_PagoTerceiroClick(Sender: TObject);
begin
  if check_PagoTerceiro.Checked = True then
    vCheck_Terceiro := 'S'
  else
    vCheck_Terceiro := 'N';
end;

procedure TFretes.edt_ValorFreteExit(Sender: TObject);
var vValor_Frete, vValor_Terceiro, vRefeicoes, vCombustivel, vPedagio : Double;
begin
  vValor_Frete := StrToFloat(edt_ValorFrete.Text);
  vValor_Terceiro := StrToFloat(edt_ValorTerceiro.Text);
  vRefeicoes := StrToFloat(edt_Refeicoes.Text);
  vCombustivel := StrToFloat(edt_Combustivel.Text);
  vPedagio := StrToFloat(edt_vlrPedagio.Text);

  edt_Lucro.Text := FloatToStr(vValor_Frete - vValor_Terceiro - vRefeicoes - vCombustivel - vPedagio);
  edt_ValorFrete.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_ValorFrete.Text, 0.0)));
  edt_Lucro.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Lucro.Text, 0.0)));
end;

procedure TFretes.edt_ValorTerceiroExit(Sender: TObject);
begin
  edt_ValorTerceiro.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_ValorTerceiro.Text, 0.0)));
end;

procedure TFretes.edt_vlrPedagioExit(Sender: TObject);
begin
  edt_vlrPedagio.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_vlrPedagio.Text, 0.0)));
end;

procedure TFretes.edt_CombustivelExit(Sender: TObject);
begin
  edt_Combustivel.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Combustivel.Text, 0.0)));
end;

procedure TFretes.edt_RefeicoesExit(Sender: TObject);
begin
  edt_Refeicoes.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Refeicoes.Text, 0.0)));
end;

procedure TFretes.FormShow(Sender: TObject);
begin
  DBEdit1.Text := IntToStr(StrToInt(DBEdit1.Text) + 1);
  edt_Data.SetFocus;

  edt_vlrPedagio.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_vlrPedagio.Text, 0.0)));
  edt_Combustivel.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Combustivel.Text, 0.0)));
  edt_Refeicoes.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Refeicoes.Text, 0.0)));
  edt_ValorTerceiro.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_ValorTerceiro.Text, 0.0)));
  edt_ValorFrete.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_ValorFrete.Text, 0.0)));
  edt_Lucro.Text := FormatFloat('#,##0.00', (StrToFloatDef(edt_Lucro.Text, 0.0)));
end;

end.
