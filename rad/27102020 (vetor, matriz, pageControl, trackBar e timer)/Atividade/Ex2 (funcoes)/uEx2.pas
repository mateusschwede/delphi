unit uEx2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    lstRes: TListBox;
    btnGerar: TButton;
    lstRes2: TListBox;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  listaNp: array of Integer;
  tam: Integer = 0;

implementation

{$R *.dfm}

procedure TForm1.btnGerarClick(Sender: TObject);
var
  termo,intervalo,i,j,qPar,np,qImpar: Integer;
  calcPar,calcImpar,total: Real;
begin
  intervalo := StrToInt(edtVal.Text);
  lstRes.Clear;
  lstRes2.Clear;
  total := 0;

  for termo := 1 to intervalo do
  begin
    qPar := 0;
    qImpar := 0;

    for j := 1 to termo do
    begin
      if (termo mod j = 0) then
      begin
        if (j mod 2 = 0) then
        begin
          inc(qPar);
          lstRes.Items.Add(termo.ToString+'%'+j.ToString+'=0 ('+j.ToString+' par('+qPar.ToString+'))');
        end
        else
        begin
          inc(qImpar);
          lstRes.Items.Add(termo.ToString+'%'+j.ToString+'=0 ('+j.ToString+' impar('+qImpar.ToString+'))');
        end;
      end;

    end;
    if (qPar=qImpar) then
    begin
      lstRes.Items.Add('Par: '+qPar.ToString);
      lstRes.Items.Add('Impar: '+qImpar.ToString);
      lstRes.Items.Add(termo.ToString+' � np');
      lstRes.Items.Add('');
      np := termo;
      lstRes2.Items.Add(np.ToString);


      {if (termo mod 2 = 0) then
      begin
        // np/termo
        calcPar := np/termo;
        lstRes2.Items.Add(np.ToString+'(np)/'+termo.ToString+'(termo)='+FloatToStr(calcPar));
        total := total+calcPar;
      end
      else
      begin
        // termo/np
        calcImpar := termo/np;
        lstRes2.Items.Add(termo.ToString+'(termo)/'+np.ToString+'(np)='+FloatToStr(calcImpar));
        total := total+calcImpar;
      end;}
    end
    else
    begin
      lstRes.Items.Add('Par: '+qPar.ToString);
      lstRes.Items.Add('Impar: '+qImpar.ToString);
      lstRes.Items.Add(termo.ToString+' � � np');
      lstRes.Items.Add('');
    end;


  end;

  lstRes2.Items.Add('SOMA: '+FloatToStr(total));

end;

end.
