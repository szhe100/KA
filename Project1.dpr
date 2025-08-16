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
  Unit29g in 'Unit29g.pas' {setreport10b},
  Unit71f in 'Unit71f.pas' {setbrokerfeeoffset1},
  Unit84b in 'Unit84b.pas' {setpromoapply2},
  Unit266d in 'Unit266d.pas' {setbusiframe3a},
  Unit126a in 'Unit126a.pas' {setexpayrec1},
  Unit111c in 'Unit111c.pas' {qryreport24aaa},
  Unit1c in 'Unit1c.pas' {setcustgroup},
  Unit10f in 'Unit10f.pas' {setmedimport1a},
  Unit201f in 'Unit201f.pas' {qryclassimp111},
  Unit15h in 'Unit15h.pas' {setmedexport10},
  Unit202n in 'Unit202n.pas' {qryclassexp5},
  Unit25b in 'Unit25b.pas' {setcheckstock2},
  Unit25c in 'Unit25c.pas' {setcheckstock3},
  Unit266e in 'Unit266e.pas' {setbusiframe10},
  Unit93b in 'Unit93b.pas' {setexpaybook3},
  Unit93c in 'Unit93c.pas' {setexpaybook3a},
  Unit215 in 'Unit215.pas' {setexpaycheck1},
  Unit215a in 'Unit215a.pas' {setexpaycheck2},
  Unit105d in 'Unit105d.pas' {setexpayB},
  Unit105e in 'Unit105e.pas' {setexpayB1},
  Unit105f in 'Unit105f.pas' {setexpayB2},
  Unit106a in 'Unit106a.pas' {setreport26a},
  Unit107b in 'Unit107b.pas' {setexpaycashB},
  Unit107c in 'Unit107c.pas' {setexpaycashB1},
  Unit29f in 'Unit29f.pas' {setreport11a},
  Unit29h in 'Unit29h.pas' {setreport10c},
  Unit28g in 'Unit28g.pas' {pickchannel_dtl},
  Unit19 in 'Unit19.pas' {qryclasscheckstock},
  Unit73 in 'Unit73.pas' {setreport31},
  Unit201e in 'Unit201e.pas' {qryclassimp5},
  Unit10b in 'Unit10b.pas' {setmedimport111},
  Unit31 in 'Unit31.pas' {pickbusimate10},
  Unit6a in 'Unit6a.pas' {setmedprice5};

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
  Application.CreateForm(Tsetreport10b, setreport10b);
  Application.CreateForm(Tsetbrokerfeeoffset1, setbrokerfeeoffset1);
  Application.CreateForm(Tsetpromoapply2, setpromoapply2);
  Application.CreateForm(Tsetbusiframe3a, setbusiframe3a);
  Application.CreateForm(Tsetexpayrec1, setexpayrec1);
  Application.CreateForm(Tqryreport24aaa, qryreport24aaa);
  Application.CreateForm(Tsetcustgroup, setcustgroup);
  Application.CreateForm(Tsetmedimport1a, setmedimport1a);
  Application.CreateForm(Tqryclassimp111, qryclassimp111);
  Application.CreateForm(Tsetmedexport10, setmedexport10);
  Application.CreateForm(Tqryclassexp5, qryclassexp5);
  Application.CreateForm(Tsetcheckstock2, setcheckstock2);
  Application.CreateForm(Tsetcheckstock3, setcheckstock3);
  Application.CreateForm(Tsetbusiframe10, setbusiframe10);
  Application.CreateForm(Tsetexpaybook3, setexpaybook3);
  Application.CreateForm(Tsetexpaybook3a, setexpaybook3a);
  Application.CreateForm(Tsetexpaycheck1, setexpaycheck1);
  Application.CreateForm(Tsetexpaycheck2, setexpaycheck2);
  Application.CreateForm(TsetexpayB, setexpayB);
  Application.CreateForm(TsetexpayB1, setexpayB1);
  Application.CreateForm(TsetexpayB2, setexpayB2);
  Application.CreateForm(Tsetreport26a, setreport26a);
  Application.CreateForm(TsetexpaycashB, setexpaycashB);
  Application.CreateForm(TsetexpaycashB1, setexpaycashB1);
  Application.CreateForm(Tsetreport11a, setreport11a);
  Application.CreateForm(Tsetreport10c, setreport10c);
  Application.CreateForm(Tpickchannel_dtl, pickchannel_dtl);
  Application.CreateForm(Tqryclasscheckstock, qryclasscheckstock);
  Application.CreateForm(Tsetreport31, setreport31);
  Application.CreateForm(Tqryclassimp5, qryclassimp5);
  Application.CreateForm(Tsetmedimport111, setmedimport111);
  Application.CreateForm(Tpickbusimate10, pickbusimate10);
  Application.CreateForm(Tsetmedprice5, setmedprice5);
  Application.Run;
end.
