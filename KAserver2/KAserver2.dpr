program KAserver2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  KAserver_TLB in 'KAserver_TLB.pas',
  Unit2 in 'Unit2.pas' {KA2: TRemoteDataModule} {KA2: CoClass},
  common in 'common.pas',
  KAserver2_TLB in 'KAserver2_TLB.pas';

{$R *.TLB}

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
