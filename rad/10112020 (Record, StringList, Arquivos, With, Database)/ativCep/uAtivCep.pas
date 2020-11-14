unit uAtivCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TAtivCepMateus = class(TForm)
    cmbEstado: TComboBox;
    lblCep: TLabel;
    Label1: TLabel;
    cmbCidade: TComboBox;
    Label2: TLabel;
    imgBandeira: TImage;
    memRes: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure cmbEstadoChange(Sender: TObject);
    procedure cmbCidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var AtivCepMateus: TAtivCepMateus;

implementation
{$R *.dfm}

procedure TAtivCepMateus.cmbCidadeChange(Sender: TObject);
var i: Integer;
begin
  for i:=0 to memRes.Lines.Count-1 do
  begin
    if cmbCidade.Items[cmbCidade.ItemIndex] = memRes.Lines[i].Split([';'])[1] then
    begin
      lblCep.Caption := 'Cep: ' + memRes.Lines[i].Split([';'])[3];
    end;
  end;
end;

procedure TAtivCepMateus.cmbEstadoChange(Sender: TObject);
var i: Integer;
begin
  imgBandeira.Picture.LoadFromFile('..\..\assets\bandeiras\'+cmbEstado.Items[cmbEstado.ItemIndex]+'.png');
  lblCep.Caption := 'Cep:';
  cmbCidade.Clear;
  for i:=0 to memRes.Lines.Count-1 do
  begin
      if cmbEstado.Items[cmbEstado.ItemIndex] = memRes.Lines[i].Split([';'])[4] then
      begin
        if i<>0 then
        begin
          cmbCidade.Items.Add(memRes.Lines[i].Split([';'])[1]);
        end
      end;      
  end;
end;

procedure TAtivCepMateus.FormCreate(Sender: TObject);
const arquivo = '..\..\assets\cidades.txt';
begin
  if FileExists(arquivo)=true then
  begin
    memRes.Lines.LoadFromFile(arquivo);
    memRes.Visible := false;
  end
  else
  begin
    MessageDlg('Arq. n�o encontrado!',mtError,[mbOk],0);
  end;
end;

end.
