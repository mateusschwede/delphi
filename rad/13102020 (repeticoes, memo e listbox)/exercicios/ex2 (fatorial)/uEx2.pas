unit uEx2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    btnCalc: TButton;
    lblRes: TLabel;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcClick(Sender: TObject);
var m,i,tot: Integer;
begin
  tot := 0;
  if (m>0) then
  begin
    lblRes.Caption := IntToStr(m) + '! = ';
    for i := 1 to m do
    begin
      //C�digo aqui
    end;
  end
  else
  begin
    MessageDlg('Insira valor positivo',mtError,[mbOk],0);
  end;
  lblRes.Caption := IntToStr(tot);
end;

end.
