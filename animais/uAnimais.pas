unit uAnimais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tanimal = class(TForm)
    Label1: TLabel;
    imgLeao: TImage;
    imgCavalo: TImage;
    imgHomem: TImage;
    imgMacaco: TImage;
    imgMorcego: TImage;
    imgBaleia: TImage;
    imgAvestruz: TImage;
    imgPingum: TImage;
    imgPato: TImage;
    imgAguia: TImage;
    imgTartaruga: TImage;
    imgCrocodilo: TImage;
    imgCobra: TImage;
    btnComecar: TButton;
    rbtInicio: TRadioGroup;
    rbtReptil: TRadioGroup;
    rbtAve: TRadioGroup;
    rbtNaoVoa: TRadioGroup;
    procedure btnComecarClick(Sender: TObject);
    procedure rbtInicioClick(Sender: TObject);
    procedure rbtReptilClick(Sender: TObject);
    procedure rbtAveClick(Sender: TObject);
    procedure rbtNaoVoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  animal: Tanimal;

implementation

{$R *.dfm}

procedure Tanimal.btnComecarClick(Sender: TObject);
begin
  {Imagens minimizadas}
  imgLeao.Visible := False;
  imgCavalo.Visible := False;
  imgHomem.Visible := False;
  imgMacaco.Visible := False;
  imgMorcego.Visible := False;
  imgBaleia.Visible := False;
  imgAvestruz.Visible := False;
  imgPingum.Visible := False;
  imgPato.Visible := False;
  imgAguia.Visible := False;
  imgTartaruga.Visible := False;
  imgCrocodilo.Visible := False;
  imgCobra.Visible := False;

  {RadioInicio visivel}
  rbtInicio.Visible := True;
end;

procedure Tanimal.rbtAveClick(Sender: TObject);
begin
  if(rbtAve.ItemIndex=0) then rbtNaoVoa.Visible := True;
  if(rbtAve.ItemIndex=1) then imgPato.Visible := True;
  if(rbtAve.ItemIndex=2) then imgAguia.Visible := True;
end;

procedure Tanimal.rbtInicioClick(Sender: TObject);
begin
  if(rbtInicio.ItemIndex=2) then rbtReptil.Visible := True;
  if(rbtInicio.ItemIndex=1) then rbtAve.Visible := True;

  if(rbtInicio.ItemIndex=0) then
  begin
    //Mam�fero
  end;
  
end;

procedure Tanimal.rbtNaoVoaClick(Sender: TObject);
begin
  if(rbtNaoVoa.ItemIndex=0) then imgAvestruz.Visible := True;
  if(rbtNaoVoa.ItemIndex=1) then imgPingum.Visible := True;
end;

procedure Tanimal.rbtReptilClick(Sender: TObject);
begin
  if(rbtReptil.ItemIndex=0) then imgTartaruga.Visible := True;
  if(rbtReptil.ItemIndex=1) then imgCrocodilo.Visible := True;
  if(rbtReptil.ItemIndex=2) then imgCobra.Visible := True;
end;

end.
