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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AtivCepMateus: TAtivCepMateus;

implementation

{$R *.dfm}

end.
