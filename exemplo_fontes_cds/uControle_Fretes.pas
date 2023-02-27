unit uControle_Fretes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  System.ImageList, Vcl.ImgList;

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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle_Fretes: TControle_Fretes;

implementation

uses uDM, Unit2;

{$R *.dfm}

procedure TControle_Fretes.FormShow(Sender: TObject);
begin
  DM.qryFrete.Open;
end;

end.
