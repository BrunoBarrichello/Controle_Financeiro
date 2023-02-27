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
    edt_numCheque: TEdit;
    edt_Destino: TEdit;
    edt_Valor: TEdit;
    edt_Cliente: TEdit;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DBEdit1: TDBEdit;
    lbl_Caixa: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fretes: TFretes;

implementation

{$R *.dfm}

end.
