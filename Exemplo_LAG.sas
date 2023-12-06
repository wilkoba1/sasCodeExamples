data acoes;
  set sashelp.stocks;
run;

proc sort data=acoes;
by stock date;
run;

data exemplo_lag;
  set sashelp.stocks (keep= stock date close);
  fecha_ant = lag(close);
  fecha_ant2 = lag2(close);
  fecha_ant3 = lag3(close);
  
  med = mean (fecha_ant, fecha_ant2, fecha_ant3);

run;