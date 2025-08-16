program KingStar;

uses
  Forms,
  ExcptDlg,
  DbExcpt,
  Main in 'MAIN.PAS' {MainForm},
  About in 'ABOUT.PAS' {AboutForm},
  datamodu in 'datamodu.pas' {DM: TDataModule},
  Unit7 in 'Unit7.pas' {pickmedicine},
  Unit14 in 'Unit14.pas' {pickmed_bat},
  Unit35 in 'Unit35.pas' {pickbusimate},
  Unit15 in 'Unit15.pas' {setmedexport},
  Unit16 in 'Unit16.pas' {pickcustomer},
  Unit11 in 'Unit11.pas' {login},
  Unit12 in 'Unit12.pas' {syscover},
  Unit20 in 'Unit20.pas' {qrystock},
  Unit44 in 'Unit44.pas' {qrymedexg},
  Unit48 in 'Unit48.pas' {setpassword},
  Unitrecerror in 'Unitrecerror.pas' {ReconcileErrorForm},
  Unit1 in 'Unit1.pas' {setbusioption},
  Unit3 in 'Unit3.pas' {setstaff},
  Unit4 in 'Unit4.pas' {setbroker},
  Unit5 in 'Unit5.pas' {setbusimate},
  Unit2 in 'Unit2.pas' {setcustomer},
  Unit47 in 'Unit47.pas' {setuser},
  Unit6 in 'Unit6.pas' {setmedicine},
  Unit13 in 'Unit13.pas' {setbrokermed},
  Unit10 in 'Unit10.pas' {setmedimport},
  Unit17 in 'Unit17.pas' {repimportbill},
  Unit201 in 'Unit201.pas' {qryclassimp},
  Unit202 in 'Unit202.pas' {qryclassexp},
  Unit18 in 'Unit18.pas' {repexportbill},
  Unit27 in 'Unit27.pas' {report01},
  Unit28 in 'Unit28.pas' {pickbroker},
  Unit39 in 'Unit39.pas' {reppaybill},
  Unit36 in 'Unit36.pas' {repreceivebill},
  Unit30 in 'Unit30.pas' {setreport05},
  Unit34 in 'Unit34.pas' {qrybrokerbal},
  Unit38 in 'Unit38.pas' {Qrybrokerexg},
  Unit40 in 'Unit40.pas' {setsettle},
  Unit70 in 'Unit70.pas' {report11},
  Unit28a in 'Unit28a.pas' {pickstaff},
  Unit238 in 'Unit238.pas' {setsysupdate},
  mycds in 'mycds.pas',
  KSserver_TLB in 'KSserver_TLB.pas',
  Unit52 in 'Unit52.pas' {setmedistprice},
  Unit13a in 'Unit13a.pas' {qrybrokermed},
  Unit53 in 'Unit53.pas' {setruleapply},
  Unit54 in 'Unit54.pas' {setreport07},
  Unit55 in 'Unit55.pas' {qryupdbrokerlog},
  Unit56 in 'Unit56.pas' {Qrybrokerexg1},
  Unit58 in 'Unit58.pas' {setcompany},
  Unit52a in 'Unit52a.pas' {sysflow},
  Unit20a in 'Unit20a.pas' {qrystock1},
  Unit14a in 'Unit14a.pas' {pickmed_bat1},
  Unit60 in 'Unit60.pas' {setvisitlog},
  Unit16a in 'Unit16a.pas' {pickbusimate2},
  Unit266 in 'Unit266.pas' {setbusiframe},
  Unit7a in 'Unit7a.pas' {pickmedicine1},
  Unit16b in 'Unit16b.pas' {pickbusimate3},
  Unit61 in 'Unit61.pas' {pickbusiframe},
  Unit62 in 'Unit62.pas' {setmatemedfee},
  Unit53a in 'Unit53a.pas' {setruleapply1},
  Unit53b in 'Unit53b.pas' {setruleapply2},
  Unit13b in 'Unit13b.pas' {setbrokermedtl},
  Unit25 in 'Unit25.pas' {setcheckstock},
  Unit28b in 'Unit28b.pas' {pickbroker1},
  Unit53f in 'Unit53f.pas' {setruleapply3},
  Unit59c in 'Unit59c.pas' {settrustrule},
  Unit65 in 'Unit65.pas' {settrustruleapply},
  Unit65b in 'Unit65b.pas' {settrustruleapply2},
  Unit65c in 'Unit65c.pas' {settrustruleapply3},
  Unit67 in 'Unit67.pas' {setlinkword},
  Unit20b in 'Unit20b.pas' {qrystock2},
  Unit29b in 'Unit29b.pas' {setreport10},
  Unit71 in 'Unit71.pas' {setbrokerfeeapply},
  Unit71b in 'Unit71b.pas' {setbrokerfeeapply1},
  Unit71c in 'Unit71c.pas' {setbrokerfeeapply2},
  Unit29c in 'Unit29c.pas' {setreport11},
  Unit72 in 'Unit72.pas' {setbrokerfeepay},
  Unit72a in 'Unit72a.pas' {setbrokerfeepay1},
  Unit52c in 'Unit52c.pas' {setmedistprice1},
  Unit52d in 'Unit52d.pas' {setmedistprice2},
  Unit28c in 'Unit28c.pas' {pickmanager},
  Unit28d in 'Unit28d.pas' {picklevel3},
  Unit2a in 'Unit2a.pas' {setagent},
  Unit16c in 'Unit16c.pas' {pickagent},
  Unit76 in 'Unit76.pas' {setrecaccount},
  Unit202b in 'Unit202b.pas' {qryclassexp2},
  Unit201a in 'Unit201a.pas' {qryclassimp1},
  Unit10a in 'Unit10a.pas' {setmedimport1},
  Unit15b in 'Unit15b.pas' {setmedexport2},
  Unit76a in 'Unit76a.pas' {setrecaccount1},
  Unit15c in 'Unit15c.pas' {setmedexport3},
  Unit28e in 'Unit28e.pas' {picklevel2},
  Unit202c in 'Unit202c.pas' {qryclassexp3},
  Unit16e in 'Unit16e.pas' {pickstore},
  Unit16f in 'Unit16f.pas' {pickbusimate5},
  Unit266c in 'Unit266c.pas' {setbusiframe3},
  Unit84 in 'Unit84.pas' {setpromoapply},
  Unit84a in 'Unit84a.pas' {setpromoapply1},
  Unit253 in 'Unit253.pas' {setexpaybook},
  Unit253a in 'Unit253a.pas' {setexpaybook1},
  Unit215b in 'Unit215b.pas' {setexpaycheck},
  Unit205 in 'Unit205.pas' {setexpay},
  Unit205b in 'Unit205b.pas' {setexpay2},
  Unit205c in 'Unit205c.pas' {setexpay3},
  Unit54a in 'Unit54a.pas' {setreport20},
  Unit16d in 'Unit16d.pas' {pickshop},
  Unit16g in 'Unit16g.pas' {pickhospital},
  Unit16h in 'Unit16h.pas' {pickbusimate1},
  Unit29d in 'Unit29d.pas' {setreport22},
  Unit86 in 'Unit86.pas' {setexpaycash},
  Unit86a in 'Unit86a.pas' {setexpaycash1},
  Unit9 in 'Unit9.pas' {picksupplier},
  Unit93 in 'Unit93.pas' {setexpaybook2},
  Unit93a in 'Unit93a.pas' {setexpaybook2a},
  Unit16i in 'Unit16i.pas' {pickbusimate7},
  Unit16j in 'Unit16j.pas' {pickbusimate8},
  Unit16k in 'Unit16k.pas' {pickbank},
  Unit25a in 'Unit25a.pas' {setcheckstock1},
  Unit111a in 'Unit111a.pas' {qryreport24},
  Unit111b in 'Unit111b.pas' {qryreport25},
  Unit81a in 'Unit81a.pas' {pickaccounts},
  Unit90b in 'Unit90b.pas' {pickaccountall},
  Unit91a in 'Unit91a.pas' {repaccdocu},
  Unit124a in 'Unit124a.pas' {pickexpensesup},
  Unit125 in 'Unit125.pas' {pickcompobj},
  Unit125a in 'Unit125a.pas' {pickcompobjall},
  Unit146 in 'Unit146.pas' {report33},
  Unit6b in 'Unit6b.pas' {setmedprice},
  Unit6c in 'Unit6c.pas' {setmedprice1},
  Unit6d in 'Unit6d.pas' {setmedprice2},
  Unit6e in 'Unit6e.pas' {setmedprice3},
  Unit5f in 'Unit5f.pas' {setbusimate10},
  Unit201e in 'Unit201e.pas' {qryclassimp5},
  Unit29e in 'Unit29e.pas' {setreport10a},
  Unit71e in 'Unit71e.pas' {setbrokerfeeoffset},
  Unit71f in 'Unit71f.pas' {setbrokerfeeoffset1},
  Unit84b in 'Unit84b.pas' {setpromoapply2},
  Unit266d in 'Unit266d.pas' {setbusiframe3a},
  Unit126 in 'Unit126.pas' {setexpayrec},
  Unit126a in 'Unit126a.pas' {setexpayrec1},
  Unit111c in 'Unit111c.pas' {qryreport31},
  Unit1b in 'Unit1b.pas' {setchannel},
  Unit1c in 'Unit1c.pas' {setcustgroup},
  Unit10f in 'Unit10f.pas' {setmedimport7},
  Unit201f in 'Unit201f.pas' {qryclassimp7},
  Unit25b in 'Unit25b.pas' {setcheckstock2},
  Unit25c in 'Unit25c.pas' {setcheckstock3},
  Unit74c in 'Unit74c.pas' {setreport32},
  Unit266a in 'Unit266a.pas' {setbusiframe9},
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
  Unit29g in 'Unit29g.pas' {setreport10b},
  Unit29h in 'Unit29h.pas' {setreport10c},
  Unit105 in 'Unit105.pas' {setexpayA},
  Unit105b in 'Unit105b.pas' {setexpayA1},
  Unit105c in 'Unit105c.pas' {setexpayA2},
  Unit106 in 'Unit106.pas' {setreport26},
  Unit107 in 'Unit107.pas' {setexpaycashA},
  Unit107a in 'Unit107a.pas' {setexpaycashA1},
  Unit19 in 'Unit19.pas' {qryclasscheckstock},
  Unit10b in 'Unit10b.pas' {setmedimport2},
  Unit20c in 'Unit20c.pas' {setmatestock},
  Unit31 in 'Unit31.pas' {pickbusimate10};

{$R *.RES}

begin
{$IFDEF WIN32}
  Application.Initialize;
{$ENDIF}

  Application.Title := 'KingStar';
  RxErrorIntercept;
  DBErrorIntercept;
  syscover:=Tsyscover.create(application);
  syscover.show;
  syscover.update;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tpickmedicine, pickmedicine);
  Application.CreateForm(Tpickmed_bat, pickmed_bat);
  Application.CreateForm(Tpickcustomer, pickcustomer);
  Application.CreateForm(Tpickbusimate, pickbusimate);
  Application.CreateForm(Tpickbroker, pickbroker);
  Application.CreateForm(Tpickstaff, pickstaff);
  Application.CreateForm(Tpickmed_bat1, pickmed_bat1);
  Application.CreateForm(Tpickbusimate2, pickbusimate2);
  Application.CreateForm(Tpickmedicine1, pickmedicine1);
  Application.CreateForm(Tpickbusimate3, pickbusimate3);
  Application.CreateForm(Tpickbusiframe, pickbusiframe);
  Application.CreateForm(Tpickbroker1, pickbroker1);
  Application.CreateForm(Tpickmanager, pickmanager);
  Application.CreateForm(Tpicklevel3, picklevel3);
  Application.CreateForm(Tpickagent, pickagent);
  Application.CreateForm(Tpicklevel2, picklevel2);
  Application.CreateForm(Tpickstore, pickstore);
  Application.CreateForm(Tpickbusimate5, pickbusimate5);
  Application.CreateForm(Tpickshop, pickshop);
  Application.CreateForm(Tpickhospital, pickhospital);
  Application.CreateForm(Tpickbusimate1, pickbusimate1);
  Application.CreateForm(Tpicksupplier, picksupplier);
  Application.CreateForm(Tpickbusimate7, pickbusimate7);
  Application.CreateForm(Tpickbusimate8, pickbusimate8);
  Application.CreateForm(Tpickbank, pickbank);
  Application.CreateForm(Tpickaccounts, pickaccounts);
  Application.CreateForm(Tpickaccountall, pickaccountall);
  Application.CreateForm(Trepaccdocu, repaccdocu);
  Application.CreateForm(Tpickexpensesup, pickexpensesup);
  Application.CreateForm(Tpickcompobj, pickcompobj);
  Application.CreateForm(Tpickcompobjall, pickcompobjall);
  Application.CreateForm(Tpickbusimate10, pickbusimate10);
  syscover.hide;
  syscover.free;
  login:=Tlogin.create(application);
  login.ShowModal;
  login.free;
  mainform.timer1.enabled:=true;
  Application.Run;

end.
