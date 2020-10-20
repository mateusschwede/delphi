unit uEx32;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    btnGerar: TButton;
    lstRes: TListBox;
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
var l,i,j,x: Integer;
begin
  l := StrToInt(edtVal.Text);
  if (l<=20) then
  begin
    x := 1;
    for i:=1 to l do
    begin
      lstRes.Items.Add(i.ToString + '- ');
      for j:=1 to i do
      begin
        lstRes.Items[i-1] := lstRes.Items[i-1] + x.ToString + ' ';
        inc(x);
      end;
    end;
  end
  else
  begin
    MessageDlg('20 linhas no m�ximo',mtError,[mbOk],0);
  end;
end;

end.
