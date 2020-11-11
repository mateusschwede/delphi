unit uAtivCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAtivCepMateus = class(TForm)
    cmbEstado: TComboBox;
    lstCidades: TListBox;
    lstImport: TListBox;
    lblCep: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cmbEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Registro = Record
    Descricao: String;
    Cep: String;
    Uf: String;
  End;

var
  AtivCepMateus: TAtivCepMateus;

implementation

{$R *.dfm}

procedure TAtivCepMateus.cmbEstadoChange(Sender: TObject);
begin
  //lblCep.Caption := cmbEstado.Items[cmbEstado.ItemIndex];
  if cmbEstado.Items[cmbEstado.ItemIndex]='TODOS' then
  begin
    //Mostra tds cidades
  end;
end;

procedure TAtivCepMateus.FormCreate(Sender: TObject);
const arquivo = '..\..\assets\cidades.txt';
begin
  if FileExists(arquivo) then
  begin
    lstImport.Items.LoadFromFile(arquivo);
  end
  else
  begin
    MessageDlg('Arq. não encontrado!',mtError,[mbOk],0);
  end;
end;

end.
