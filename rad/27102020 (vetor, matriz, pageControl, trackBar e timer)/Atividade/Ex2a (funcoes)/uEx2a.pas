unit uEx2a;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    lstRes: TListBox;
    lstRes2: TListBox;
    btnGerar: TButton;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGerarClick(Sender: TObject);
var
  termo,intervalo,i,j,qPar,np,qImpar: Integer;
  iNp, qNp:Integer;
  calcPar,calcImpar,total: Real;
begin
  intervalo := StrToInt(edtVal.Text);
  lstRes.Clear;
  lstRes2.Clear;
  total := 0;
  iNp := 1;

  repeat
  begin
    qPar := 0;
    qImpar := 0; 
    //Gerar np's
    //Ver divisores
    for i := 0 to iNp do
    begin
      //Ver divisores par
      if (iNp mod 2 = 0) then
      begin
        inc(qPar);      
      end
      else
      begin
        inc(qImpar);
      end;      
    end;


    if qPar=qImpar then
    begin
      lstRes.Items.Add(iNp.ToString);
      inc(qNp);
    end;


    
    inc(iNp);
  end;
  until (qNp=intervalo);



end;

end.
