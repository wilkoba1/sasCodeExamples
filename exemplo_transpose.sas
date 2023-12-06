proc sort data=sashelp.stocks out=acoes;
by date stock;
run;

proc transpose data=acoes out=exemplo_transpose;
    by date;
    id stock;
    var close;
run;