unit uGridMatriz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids;

type
  TfrmGridMatriz = class(TForm)
    stgMat: TStringGrid;
    btbAdd: TBitBtn;
    stgVet: TStringGrid;
    BitBtn1: TBitBtn;
    btnSoma: TButton;
    btnAdd2: TButton;
    lstVetDin: TListBox;
    procedure btbAddClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridMatriz: TfrmGridMatriz;
  vet2: array of Integer; //Array din�mico
  tam: Integer = 0;

implementation

{$R *.dfm}

procedure TfrmGridMatriz.BitBtn1Click(Sender: TObject);
var vet: array[0..9] of Integer;
var matr: array[1..3,1..3] of Integer; //Linhas colunas
var matr3d: array[1..3,1..3,1..10] of Integer; //Cubo
var l,c,n: Integer;
begin
  n := 0;
  for l := 1 to stgMat.RowCount-1 do
  begin
    for c := 0 to stgMat.ColCount-1 do
    begin
      stgMat.Cells[c,l] := IntToStr(n);
      matr[l,c] := StrToInt(stgMat.Cells[c,l]);
      inc(n,2)
    end;
  end;

  Randomize;
  n := 0;
  for l := 1 to stgVet.RowCount-1 do
  begin
    for c := 0 to stgVet.ColCount-1 do
    begin
      stgVet.Cells[c,l] := IntToStr(n);
      vet[c] := StrToInt(stgVet.Cells[c,l]);
      inc(n,2)
    end;
  end;
end;

procedure TfrmGridMatriz.btbAddClick(Sender: TObject);
var l,c: Integer; n: Int64;
begin
  n := 0;
  //tela view � col lin, mas programa � lin col
  for l := 0 to stgMat.RowCount-1 do
  begin
    stgMat.Cells[0,l+1] := IntToStr(l+1);
  end;
  for c := 0 to stgMat.ColCount-1 do
  begin
    stgMat.Cells[c+1,0] := IntToStr(c+1);
  end;

  for l := 1 to stgMat.RowCount-1 do
  begin
    for c := 1 to stgMat.ColCount-1 do
    begin
      stgMat.Cells[c,l] := IntToStr(n);
      inc(n,2);
    end;
  end;
end;

procedure TfrmGridMatriz.btnAdd2Click(Sender: TObject);
begin
  SetLength(vet2,tam+1);
  tam := tam+1;
  vet2[tam-1] := Random(100);
  lstVetDin.Items.Add('Vet['+(tam-1).ToString+']='+(vet2[tam-1]).ToString);
end;

procedure TfrmGridMatriz.btnSomaClick(Sender: TObject);
var l,c,s: Integer;
begin

end;

end.
