program KAserver;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  KAserver_TLB in 'KAserver_TLB.pas',
  Unit2 in 'Unit2.pas' {KA: TRemoteDataModule} {KA: CoClass},
  common in 'common.pas';

{$R *.TLB}

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
