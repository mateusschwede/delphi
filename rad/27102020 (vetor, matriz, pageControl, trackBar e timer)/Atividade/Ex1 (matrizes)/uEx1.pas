unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    strMatriz: TStringGrid;
    btnGerar: TButton;
    strPar: TStringGrid;
    strImpar: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    strNum: TStringGrid;
    lstDif: TListBox;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matriz: array[0..10,0..9] of Integer;
  vetPar: array of Integer;
  vetImpar: array of Integer;
  vetDif: array of Integer;
  t: Integer = 0;
  x: String;

implementation

{$R *.dfm}

procedure TForm1.btnGerarClick(Sender: TObject);
var l,c,c2,c3,c4,c5,i,n,lnd,cnd,contDif: Integer; nd: String;
begin
  Randomize;
  contDif := 0;
  c2 := 0;
  c3 := 0;
  c4 := 0;
  c5 := 0;
  for l := 0 to strMatriz.RowCount-1 do
  begin
    for c := 0 to strMatriz.ColCount-1 do
    begin
      n := Random(100);
      strMatriz.Cells[c,l] := IntToStr(n);
      matriz[l,c] := StrToInt(strMatriz.Cells[c,l]);

      //Pares e �mpares
      if (n mod 2=0) then
      begin
        SetLength(vetPar,c2+1);
        vetPar[c2-1] := n;
        strPar.ColCount := c2+1;
        strPar.Cells[c2,0] := n.ToString;
        inc(c2);
      end
      else
      begin
        SetLength(vetImpar,c3+1);
        vetImpar[c3-1] := n;
        strImpar.ColCount := c3+1;
        strImpar.Cells[c3,0] := n.ToString;
        inc(c3);
      end;
    end;
  end;

  //N�meros diferentes
  for l := 0 to strMatriz.RowCount-1 do
  begin
    for c := 0 to strMatriz.ColCount-1 do
    begin

      //Defino valor
      nd := strMatriz.Cells[l,c];
      lstDif.Items.Add('Val '+strMatriz.Cells[c,l]);

      for lnd := 0 to strMatriz.RowCount-1 do
      begin
        for cnd := 0 to strMatriz.ColCount-1 do
        begin
          if strMatriz.Cells[lnd,cnd]<>nd then
          begin
            inc(contDif);
          end;
          inc(c5);
        end;
      end;
      if contDif=c5-1 then
      begin
        //Informa
      end;

    end;
  end;


end;


end.
