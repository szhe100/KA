program Project1;

uses
  Forms,
  datamodu in 'datamodu.pas' {DM: TDataModule},
  Unit88e in 'Unit88e.pas' {setruleapply5},
  Unit103f in 'Unit103f.pas' {setreceive6},
  Unit103g in 'Unit103g.pas' {setreceive6a},
  Unit6e in 'Unit6e.pas' {setmedprice3},
  Unit5f in 'Unit5f.pas' {setbusimate9},
  Unit266b in 'Unit266b.pas' {setbusiframe2},
  Unit201e in 'Unit201e.pas' {qryclassimp5},
  Unit29e in 'Unit29e.pas' {setreport10a},
  Unit71f in 'Unit71f.pas' {setbrokerfeeoffset1},
  Unit84b in 'Unit84b.pas' {setpromoapply2},
  Unit266d in 'Unit266d.pas' {setbusiframe3a},
  Unit126a in 'Unit126a.pas' {setexpayrec1},
  Unit111c in 'Unit111c.pas' {qryreport24aaa},
  Unit1c in 'Unit1c.pas' {setcustgroup};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tpickbusimate1, pickbusimate1);
  Application.CreateForm(Tsetruleapply5, setruleapply5);
  Application.CreateForm(Tsetreceive6, setreceive6);
  Application.CreateForm(Tsetreceive6a, setreceive6a);
  Application.CreateForm(Tsetmedprice3, setmedprice3);
  Application.CreateForm(Tsetbusimate9, setbusimate9);
  Application.CreateForm(Tsetbusiframe2, setbusiframe2);
  Application.CreateForm(Tqryclassimp5, qryclassimp5);
  Application.CreateForm(Tsetreport10a, setreport10a);
  Application.CreateForm(Tsetbrokerfeeoffset1, setbrokerfeeoffset1);
  Application.CreateForm(Tsetpromoapply2, setpromoapply2);
  Application.CreateForm(Tsetbusiframe3a, setbusiframe3a);
  Application.CreateForm(Tsetexpayrec1, setexpayrec1);
  Application.CreateForm(Tqryreport24aaa, qryreport24aaa);
  Application.CreateForm(Tsetcustgroup, setcustgroup);
  Application.Run;
end.
