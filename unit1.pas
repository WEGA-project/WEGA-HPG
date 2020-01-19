unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, Types;

type

  { TKoefficients }

  TKoefficients = class(TForm)
    Button1: TButton;
    NK: TFloatSpinEdit;
    NMg: TFloatSpinEdit;
    PN: TFloatSpinEdit;
    PK: TFloatSpinEdit;
    PMg: TFloatSpinEdit;
    KN: TFloatSpinEdit;
    KMg: TFloatSpinEdit;
    CaN: TFloatSpinEdit;
    CaK: TFloatSpinEdit;
    CaMg: TFloatSpinEdit;
    MgN: TFloatSpinEdit;
    MgK: TFloatSpinEdit;
    SN: TFloatSpinEdit;
    SK: TFloatSpinEdit;
    SMg: TFloatSpinEdit;
    NP: TFloatSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    N: TFloatSpinEdit;
    NH4NO3: TFloatSpinEdit;
    NCa: TFloatSpinEdit;
    CaS: TFloatSpinEdit;
    MgP: TFloatSpinEdit;
    MgCa: TFloatSpinEdit;
    MgS: TFloatSpinEdit;
    SP: TFloatSpinEdit;
    SCa: TFloatSpinEdit;
    NS: TFloatSpinEdit;
    PCa: TFloatSpinEdit;
    PS: TFloatSpinEdit;
    KP: TFloatSpinEdit;
    KCa: TFloatSpinEdit;
    KS: TFloatSpinEdit;
    CaP: TFloatSpinEdit;
    P: TFloatSpinEdit;
    K: TFloatSpinEdit;
    Ca: TFloatSpinEdit;
    Mg: TFloatSpinEdit;
    S: TFloatSpinEdit;
    NO3: TFloatSpinEdit;
    NH4: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure KChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure MgChange(Sender: TObject);
    procedure NChange(Sender: TObject);
    procedure NH4Change(Sender: TObject);
    procedure NH4EditingDone(Sender: TObject);
    procedure NH4Exit(Sender: TObject);
    procedure NH4NO3Change(Sender: TObject);
    procedure NKChange(Sender: TObject);
    procedure NO3Change(Sender: TObject);
    procedure NO3Exit(Sender: TObject);
    procedure NPChange(Sender: TObject);
    procedure NPChangeBounds(Sender: TObject);
    procedure NPClick(Sender: TObject);
    procedure NPEditingDone(Sender: TObject);
    procedure NPEnter(Sender: TObject);
    procedure NPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NPKeyPress(Sender: TObject; var Key: char);
    procedure NPKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NPMouseEnter(Sender: TObject);
    procedure NPMouseLeave(Sender: TObject);
    procedure NPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NPMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure NPMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure NPResize(Sender: TObject);


    procedure PChange(Sender: TObject);
    procedure SChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Koefficients: TKoefficients;
  vN:Double;

implementation

{$R *.lfm}

{ TKoefficients }

procedure CalcKoef;
begin


   Koefficients.NP.value:=Koefficients.N.value/Koefficients.P.Value;
   Koefficients.NK.value:=Koefficients.N.value/Koefficients.P.value;
   Koefficients.NCa.value:=Koefficients.N.value/Koefficients.Ca.value;
   Koefficients.NMg.value:=Koefficients.N.value/Koefficients.Mg.value;
   Koefficients.CaN.value:=Koefficients.Ca.value/Koefficients.N.value;
   Koefficients.NS.value:=Koefficients.N.value/Koefficients.S.value;

   Koefficients.PN.value:=Koefficients.P.value/Koefficients.N.value;
   Koefficients.PK.value:=Koefficients.P.value/Koefficients.K.value;
   Koefficients.PCa.value:=Koefficients.P.value/Koefficients.Ca.value;
   Koefficients.PMg.value:=Koefficients.P.value/Koefficients.Mg.Value;
   Koefficients.PS.Value:=Koefficients.P.value/Koefficients.S.value;


  Koefficients.KN.value:=Koefficients.K.value/Koefficients.N.value;
  Koefficients.KP.Value:=Koefficients.K.value/Koefficients.P.value;
  Koefficients.KCa.value:=Koefficients.K.value/Koefficients.Ca.value;
  Koefficients.KMg.value:=Koefficients.K.value/Koefficients.Mg.value;
  Koefficients.KS.value:=Koefficients.K.value/Koefficients.S.value;

  Koefficients.CaN.value:=Koefficients.Ca.value/Koefficients.N.value;
  Koefficients.CaP.value:=Koefficients.Ca.value/Koefficients.P.value;
  Koefficients.CaK.value:=Koefficients.Ca.value/Koefficients.K.value;
  Koefficients.CaMg.value:=Koefficients.Ca.value/Koefficients.Mg.value;
  Koefficients.CaS.value:=Koefficients.Ca.Value/Koefficients.S.value;

  Koefficients.MgN.value:=Koefficients.Mg.value/Koefficients.N.value;
  Koefficients.MgP.value:=Koefficients.Mg.value/Koefficients.P.value;
  Koefficients.MgK.value:=Koefficients.Mg.value/Koefficients.K.value;
  Koefficients.MgCa.value:=Koefficients.Mg.value/Koefficients.Ca.value;
  Koefficients.MgS.value:=Koefficients.Mg.Value/Koefficients.S.value;

  Koefficients.SN.value:=Koefficients.S.value/Koefficients.N.value;
  Koefficients.SP.value:=Koefficients.S.value/Koefficients.P.value;
  Koefficients.SK.value:=Koefficients.S.value/Koefficients.K.value;
  Koefficients.SCa.value:=Koefficients.S.value/Koefficients.Ca.value;
  Koefficients.SMg.value:=Koefficients.S.Value/Koefficients.Mg.value;

end;

procedure TKoefficients.Label8Click(Sender: TObject);
begin

end;

procedure TKoefficients.MgChange(Sender: TObject);
begin
  CalcKoef;
end;

procedure TKoefficients.Label1Click(Sender: TObject);
begin
    NH4NO3.value := NH4.value/NO3.value;
end;

procedure TKoefficients.FormClick(Sender: TObject);
begin

end;

procedure TKoefficients.KChange(Sender: TObject);
begin
 CalcKoef;
end;

procedure TKoefficients.Button1Click(Sender: TObject);
begin

end;

procedure TKoefficients.CaChange(Sender: TObject);
begin
  CalcKoef;
end;

procedure TKoefficients.FormActivate(Sender: TObject);
begin

   CalcKoef;



   //NP.value:=N.value/P.Value;
   //NK.value:=N.value/P.value;
   //NCa.value:=N.value/Ca.value;
   //NMg.value:=N.value/Mg.value;
   //CaN.value:=Ca.value/N.value;
   //NS.value:=N.value/S.value;

  // PN.value:=P.value/N.value;
  // PK.value:=P.value/K.value;
  // PCa.value:=P.value/Ca.value;
  // PMg.value:=P.value/Mg.Value;
  // PS.Value:=P.value/S.value;
  //
  //
  //   KN.value:=K.value/N.value;
  //KP.Value:=K.value/P.value;
  //KCa.value:=K.value/Ca.value;
  //KMg.value:=K.value/Mg.value;
  //KS.value:=K.value/S.value;
  //
  //  CaN.value:=Ca.value/N.value;
  //CaP.value:=Ca.value/P.value;
  //CaK.value:=Ca.value/K.value;
  //CaMg.value:=Ca.value/Mg.value;
  //CaS.value:=Ca.Value/S.value;
end;

procedure TKoefficients.FormChangeBounds(Sender: TObject);
begin

end;

procedure TKoefficients.NChange(Sender: TObject);
begin
  NO3.value := N.value/(NH4NO3.value+1);
  NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
  CalcKoef;

  //
  //NP.value:=N.value/P.Value;
  //NK.value:=N.value/K.value;
  //NCa.value:=N.value/Ca.value;
  //NMg.value:=N.value/Mg.value;
  //CaN.value:=Ca.value/N.value;
  //NS.value:=N.value/S.value;
  //
  //PN.value:=P.value/N.value;
  // KN.value:=K.value/N.value;

end;

procedure TKoefficients.NH4Change(Sender: TObject);
begin
  //NH4NO3.value := NH4.value / NO3.value
end;

procedure TKoefficients.NH4EditingDone(Sender: TObject);
begin
      NH4NO3.value := NH4.value/NO3.value;
end;

procedure TKoefficients.NH4Exit(Sender: TObject);
begin
//
end;

procedure TKoefficients.NH4NO3Change(Sender: TObject);
begin
  NH4.value := N.value *(NH4NO3.value/(NH4NO3.value+1));
  NO3.value := N.value / ( NH4NO3.value+1 );
end;

procedure TKoefficients.NKChange(Sender: TObject);
begin

end;

procedure TKoefficients.NO3Change(Sender: TObject);
begin
  NH4.Value := N.value-NO3.value;

end;

procedure TKoefficients.NO3Exit(Sender: TObject);
begin
  NH4NO3.value := NH4.value/NO3.value;
end;

procedure TKoefficients.NPChange(Sender: TObject);
begin

end;

procedure TKoefficients.NPChangeBounds(Sender: TObject);
begin

end;

procedure TKoefficients.NPClick(Sender: TObject);
begin

end;

procedure TKoefficients.NPEditingDone(Sender: TObject);
begin

end;

procedure TKoefficients.NPEnter(Sender: TObject);
begin

end;

procedure TKoefficients.NPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TKoefficients.NPKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TKoefficients.NPKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TKoefficients.NPMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  P.Value:=N.value/NP.value;
end;

procedure TKoefficients.NPMouseEnter(Sender: TObject);
begin

end;

procedure TKoefficients.NPMouseLeave(Sender: TObject);
begin

end;

procedure TKoefficients.NPMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TKoefficients.NPMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TKoefficients.NPMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TKoefficients.NPResize(Sender: TObject);
begin

end;





procedure TKoefficients.PChange(Sender: TObject);
begin
  CalcKoef;
end;

procedure TKoefficients.SChange(Sender: TObject);
begin
  CalcKoef;
end;

end.

