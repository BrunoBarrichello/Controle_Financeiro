unit uControle_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.DBCtrls;

type
  TControle_Cheque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ImageList1: TImageList;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    cbx_tpPesquisa: TComboBox;
    Label3: TLabel;
    edt_Pesquisa: TEdit;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1AlterarCheque1: TMenuItem;
    N2ExcluirCheque1: TMenuItem;
    lbl_Caixa: TLabel;
    qrySoma: TIBQuery;
    qrySomaTOTAL_CAIXA: TFloatField;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure cbx_tpPesquisaChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2ExcluirCheque1Click(Sender: TObject);
    procedure N1AlterarCheque1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure Teclado1(Sender: TObject; var Key: Char; vNumero: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle_Cheque: TControle_Cheque;
  L_Form : String;
  vSoma_Caixa : Variant;
  
implementation

{$R *.dfm}

uses Unit2, Funcoes, uDM, uCad_Cheque;


procedure TControle_Cheque.BitBtn1Click(Sender: TObject);
begin
  L_Form := 'Novo';

  Application.CreateForm(TCad_Cheque, Cad_Cheque);
  Cad_Cheque.ShowModal;
  FreeAndNil(Cad_Cheque);
end;

procedure TControle_Cheque.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TControle_Cheque.BitBtn3Click(Sender: TObject);
begin
  if cbx_tpPesquisa.ItemIndex = 0 then begin
    if (MaskEdit1.Text <> '  /  /  ') and (MaskEdit2.Text <> '  /  /  ') then begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE NOME LIKE ''%' + edt_Pesquisa.Text +'%'' and (DATA BETWEEN :v1 AND :v2) ORDER BY PARA DESC ';
      DM.qryCheque.ParamByName('v1').AsDateTime := StrToDate(MaskEdit1.Text);
      DM.qryCheque.ParamByName('v2').AsDateTime := StrToDate(MaskEdit2.Text);
      DM.qryCheque.Open;
    end
    else begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE NOME LIKE ''%' + edt_Pesquisa.Text +'%'' ORDER BY PARA DESC ';
      DM.qryCheque.Open;
    end;
  end
  else if cbx_tpPesquisa.ItemIndex = 1 then begin
    if (MaskEdit1.Text <> '  /  /  ') and (MaskEdit2.Text <> '  /  /  ') then begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE NUMERO LIKE ''%' + edt_Pesquisa.Text +''' and (DATA BETWEEN :v1 AND :v2) ORDER BY PARA DESC ';
      DM.qryCheque.ParamByName('v1').AsDateTime := StrToDate(MaskEdit1.Text);
      DM.qryCheque.ParamByName('v2').AsDateTime := StrToDate(MaskEdit2.Text);
      DM.qryCheque.Open;
    end
    else begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE NUMERO LIKE ''%' + edt_Pesquisa.Text +''' ORDER BY PARA DESC ';
      DM.qryCheque.Open;
    end;    
  end
  else if cbx_tpPesquisa.ItemIndex = 2 then begin
    if (MaskEdit1.Text <> '  /  /  ') and (MaskEdit2.Text <> '  /  /  ') then begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE PARA LIKE ''%' + edt_Pesquisa.Text +'%'' and (DATA BETWEEN :v1 AND :v2) ORDER BY PARA DESC ';
      DM.qryCheque.ParamByName('v1').AsDateTime := StrToDate(MaskEdit1.Text);
      DM.qryCheque.ParamByName('v2').AsDateTime := StrToDate(MaskEdit2.Text);
      DM.qryCheque.Open;
    end
    else begin
      DM.qryCheque.Close;
      DM.qryCheque.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE PARA LIKE ''%' + edt_Pesquisa.Text +'%'' ORDER BY PARA DESC ';
      DM.qryCheque.Open;
    end;
  end;
  //DBGrid1.Canvas.Font.Color := RED
end;

procedure TControle_Cheque.cbx_tpPesquisaChange(Sender: TObject);
begin
  if cbx_tpPesquisa.Text = 'Cliente' then begin
    Label3.Caption := 'Cliente :';
    edt_Pesquisa.Width := 440;
    edt_Pesquisa.Left := 215;
  end;

  if cbx_tpPesquisa.Text = 'Nº Cheque' then begin
    Label3.Caption := 'Nº Cheque :';
    edt_Pesquisa.Width := 421;
    edt_Pesquisa.Left := 234;
  end;

end;

procedure TControle_Cheque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
	if ((gdSelected in State) or (gdFocused in State)) then begin
		Dbgrid1.Canvas.Font.Color:= clBlack;
		Dbgrid1.Canvas.Brush.Color:= $00FFE8CC ;
	end;

  if DM.qryChequePARA.AsString <> '' then
    DBGrid1.Canvas.Font.Color := clRed;

  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TControle_Cheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrySoma.Close;
  DM.qryCheque.Close;
end;

procedure TControle_Cheque.FormShow(Sender: TObject);
begin
  DM.qryCheque.Open;
  edt_Pesquisa.SetFocus;

  qrySoma.Close;
  qrySoma.SQL.Text := 'SELECT SUM(VALOR) AS TOTAL_CAIXA FROM CHEQUES WHERE PARA = trim('''')';
  qrySoma.Open;
end;

procedure TControle_Cheque.MaskEdit1Exit(Sender: TObject);
begin
  VerificaUmaData(MaskEdit1.Text ,MaskEdit2.Text);
end;

procedure TControle_Cheque.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Teclado1(Sender, Key, False);
end;

procedure TControle_Cheque.N1AlterarCheque1Click(Sender: TObject);
begin
  L_Form := 'Alterar';

  Application.CreateForm(TCad_Cheque, Cad_Cheque);
  Cad_Cheque.ShowModal;
  FreeAndNil(Cad_Cheque);
end;

procedure TControle_Cheque.N2ExcluirCheque1Click(Sender: TObject);
var vCheque_Selecionado : String;
begin
  vCheque_Selecionado := DBGrid1.SelectedField.DataSet.FieldByName('NUMERO').AsString;

  if Application.MessageBox('Deseja realmente excluir o cheque selecionado?', 'LR Válvulas', MB_YESNO + MB_ICONQUESTION) = mrNo then
    abort
  else
    DM.Inserir.Close;
    DM.Inserir.SQL.Text := 'DELETE FROM CHEQUES WHERE NUMERO =:vCheque_Selecionado';
    DM.Inserir.ParamByName('vCheque_Selecionado').Value := vCheque_Selecionado;

    DM.Inserir.ExecSQL;

    DM.qryCheque.Close;
    DM.qryCheque.Open;
end;

end.
