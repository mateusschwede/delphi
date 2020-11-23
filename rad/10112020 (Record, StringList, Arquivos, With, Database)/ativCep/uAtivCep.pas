unit uAtivCep;
interface
uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;
type
  TAtivCepMateus = class(TForm)
    cmbUf: TComboBox;
    lblCep: TLabel;
    cmbCid: TComboBox;
    imgBandeira: TImage;
    lstRes: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure cmbUfChange(Sender: TObject);
    procedure cmbCidChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var AtivCepMateus: TAtivCepMateus; i: Integer;
implementation {$R *.dfm}

procedure TAtivCepMateus.cmbCidChange(Sender: TObject);
begin
  for i:=0 to lstRes.Items.Count-1 do
  begin
    if cmbCid.Items[cmbCid.ItemIndex]=lstRes.Items[i].Split([';'])[1] then
    begin
      lblCep.Caption := 'Cep: '+lstRes.Items[i].Split([';'])[3];
    end;
  end;
end;

procedure TAtivCepMateus.cmbUfChange(Sender: TObject);
begin
  imgBandeira.Picture.LoadFromFile('..\..\assets\bandeiras\'+cmbUf.Items[cmbUf.ItemIndex]+'.png');
  lblCep.Caption := '';
  cmbCid.Clear;
  for i:=0 to lstRes.Items.Count-1 do
  begin
      if cmbUf.Items[cmbUf.ItemIndex]=lstRes.Items[i].Split([';'])[4] then
      begin
        if i<>0 then
        begin
          cmbCid.Items.Add(lstRes.Items[i].Split([';'])[1]);
        end
      end;      
  end;
end;

procedure TAtivCepMateus.FormCreate(Sender: TObject);
begin
  if FileExists('..\..\assets\cidades.txt') then
  begin
    lstRes.Items.LoadFromFile('..\..\assets\cidades.txt');
  end
  else
  begin
    MessageDlg('Arq. n�o encontrado!',mtError,[mbOk],0);
  end;
end;

end.
