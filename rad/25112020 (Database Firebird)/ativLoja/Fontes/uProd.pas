unit uProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmProd = class(TForm)
    pProd2: TPanel;
    pProd: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProd: TfrmProd;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbProdutos.Close;
end;

procedure TfrmProd.FormShow(Sender: TObject);
begin
  dm.tbProdutos.Open;
end;

end.
