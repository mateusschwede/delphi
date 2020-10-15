unit uEx3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    btnExec: TButton;
    lstMatriz: TListBox;
    procedure btnExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecClick(Sender: TObject);
var l,i,j,x: Integer;
begin
  l := StrToInt(edtVal.Text);
  x := 1;
  if (l<=20) then
  begin
    for i := 1 to 20 do
    begin
      lstMatriz.Items.Add(i.ToString + '- ');
      for j := 1 to i do
      begin
        lstMatriz.Items.Append(x.ToString);
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
