unit uAtivCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TAtivCepMateus = class(TForm)
    cmbEstado: TComboBox;
    lstImport: TListBox;
    lblCep: TLabel;
    Label1: TLabel;
    cmbCidade: TComboBox;
    Label2: TLabel;
    imgBandeira: TImage;
    procedure FormCreate(Sender: TObject);
    procedure cmbEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Registro = Class
    descricao: String;
    cep: String;
    uf: String;
  End;

var
  AtivCepMateus: TAtivCepMateus;

implementation

{$R *.dfm}

procedure TAtivCepMateus.cmbEstadoChange(Sender: TObject);
var
  i: Integer;
  lista: TStringList;
begin
  imgBandeira.Picture.LoadFromFile('..\..\assets\bandeiras\'+cmbEstado.Items[cmbEstado.ItemIndex]+'.png');

  if cmbEstado.Items[cmbEstado.ItemIndex]='TODOS' then
  begin
    lblCep.Caption := 'Cep:';
    cmbCidade.Clear;

    for i:=0 to lstImport.Items.Count-1 do
    begin
      if i<>0 then
      begin
        lista:=TStringList.Create;
        ExtractStrings([';'],[' '],pchar(lstImport.Items[i]),lista);

        cmbCidade.Items.Add(lista.Strings[1]);
      end
    end;

    FreeAndNil(lista);
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
    MessageDlg('Arq. n�o encontrado!',mtError,[mbOk],0);
  end;
end;

end.
