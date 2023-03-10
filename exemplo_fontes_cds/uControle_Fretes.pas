unit uControle_Fretes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TControle_Fretes = class(TForm)
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    cbx_tpPesquisa: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    vTp_Pesq: TRadioGroup;
    BitBtn2: TBitBtn;
    edt_Pesquisa: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    AlterarLanamento1: TMenuItem;
    ExcluirLanamento1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExcluirLanamento1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AlterarLanamento1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle_Fretes: TControle_Fretes;
  vFrete_Selecionado, L_Form : String;

implementation

uses uDM, Unit2, uFretes;

{$R *.dfm}

procedure TControle_Fretes.AlterarLanamento1Click(Sender: TObject);
begin
  L_Form := 'Alterar';

  Application.CreateForm(TFretes, Fretes);;
  Fretes.ShowModal;
  FreeAndNil(Fretes);
end;

procedure TControle_Fretes.BitBtn3Click(Sender: TObject);
begin
  if vTp_Pesq.ItemIndex = 3 then begin
    DM.Inserir.Close;
    DM.Inserir.SQL.Text := 'SELECT * FROM FRETES WHERE TRANSPORTE=:vTransportador';
    DM.Inserir.ParamByName('vTransportador').Value := edt_Pesquisa.Text;
  end;

end;

procedure TControle_Fretes.BitBtn4Click(Sender: TObject);
begin
  L_Form := 'Novo';

  Application.CreateForm(TFretes, Fretes);;
  Fretes.ShowModal;
  FreeAndNil(Fretes);
end;

procedure TControle_Fretes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Text: string;
  TextRect: TRect;
  TextWidth: Integer;
  TextX: Integer;
begin
  if (Column.FieldName = 'PAGAMENTO') or (Column.FieldName = 'PAGTO_TERCEIRO') then begin
    if Column.Field.AsString = 'S' then begin // Verifica se o valor � "S"
      Text := 'PAGO';
      DBGrid1.Canvas.Brush.Color := clGreen; // Define a cor de fundo da c�lula como verde
      DBGrid1.Canvas.Font.Color := clWhite; // Define a cor da fonte da c�lula como branca
      DBGrid1.Canvas.Font.Style := [fsBold];
      DBGrid1.Canvas.FillRect(Rect); // Limpa a c�lula
      TextWidth := DBGrid1.Canvas.TextWidth(Text);
      TextX := Rect.Left + (Rect.Right - Rect.Left - TextWidth) div 2;
      TextRect := Rect;
      TextRect.Left := TextX;
      DBGrid1.Canvas.TextRect(TextRect, TextX, Rect.Top + 2, Text);
    end
    else
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State); // Mant�m o valor padr�o
  end else
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State); // Mant�m o valor padr�o
end;

procedure TControle_Fretes.ExcluirLanamento1Click(Sender: TObject);
begin
  vFrete_Selecionado := DBGrid1.SelectedField.DataSet.FieldByName('ID').AsString;

  if Application.MessageBox('Deseja realmente excluir o lan�amento selecionado?', 'LR V�lvulas', MB_YESNO + MB_ICONQUESTION) = mrNo then
    abort
  else begin
    DM.Inserir.Close;
    DM.Inserir.SQL.Text := 'DELETE FROM FRETES WHERE ID =:vID';
    DM.Inserir.ParamByName('vID').Value := vFrete_Selecionado;

    DM.Inserir.ExecSQL;

    DM.qryFrete.Close;
    DM.qryFrete.Open;
  end;
end;

procedure TControle_Fretes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.qryFrete.Close;
end;

procedure TControle_Fretes.FormShow(Sender: TObject);
begin
  DM.qryFrete.Open;
end;

end.
