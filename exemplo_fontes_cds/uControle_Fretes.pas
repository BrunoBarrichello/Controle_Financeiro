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
    RadioGroup1: TRadioGroup;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle_Fretes: TControle_Fretes;
  vFrete_Selecionado : String;

implementation

uses uDM, Unit2, uFretes;

{$R *.dfm}

procedure TControle_Fretes.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFretes, Fretes);;
  Fretes.ShowModal;
  FreeAndNil(Fretes);
end;

procedure TControle_Fretes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var Campo1Value : String;
begin
//  if DM.qryFretePAGAMENTO.AsString = 'S' then begin
//    DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, 'Pago' + Campo1Value);
//  end;
end;

procedure TControle_Fretes.ExcluirLanamento1Click(Sender: TObject);
begin
  vFrete_Selecionado := DBGrid1.SelectedField.DataSet.FieldByName('ID').AsString;

  if Application.MessageBox('Deseja realmente excluir o lançamento selecionado?', 'LR Válvulas', MB_YESNO + MB_ICONQUESTION) = mrNo then
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
