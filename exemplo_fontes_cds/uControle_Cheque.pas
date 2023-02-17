unit uControle_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

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
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit222: TEdit;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1AlterarCheque1: TMenuItem;
    N2ExcluirCheque1: TMenuItem;
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2ExcluirCheque1Click(Sender: TObject);
    procedure N1AlterarCheque1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
//    procedure Teclado1(Sender: TObject; var Key: Char; vNumero: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle_Cheque: TControle_Cheque;
  L_Form : String;

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
  // DM.Inserir.SQL.Text := 'SELECT NOME, DATA, VALOR, EM, PARA, NUMERO FROM CHEQUES WHERE NOME LIKE % :vNome %'
end;

procedure TControle_Cheque.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'Cliente' then begin
    Label3.Caption := 'Cliente :';
    Edit222.Width := 440;
    Edit222.Left := 215;
  end;

  if ComboBox1.Text = 'Nº Cheque' then begin
    Label3.Caption := 'Nº Cheque :';
    Edit222.Width := 421;
    Edit222.Left := 234;
  end;

end;

procedure TControle_Cheque.FormShow(Sender: TObject);
begin
  DM.qryCheque.Open;
end;

procedure TControle_Cheque.MaskEdit1Exit(Sender: TObject);
begin
  VerificaUmaData(Sender);
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
