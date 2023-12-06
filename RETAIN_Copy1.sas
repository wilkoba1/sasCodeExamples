data contab;
input tipo $  valor;
datalines;
receita 700
despesa 500
;
run;

proc sort data=contab;
by descending tipo;
run;

data contab;
  set contab end=eof;
by descending tipo;
  retain total 0;    

    total = lag1(valor)-valor;
    output;

if eof then do;
   tipo = "TOTAL";
   valor = lag1(total);  
   output;
end;

run;

data contab;
 set contab end=eof;
if tipo="TOTAL" then valor=total;
output;
run;


data contab;
set contab end=eof;
output;
if eof then do;
tipo = "Imposto";
total = lag1(total);
output;
end;
run;

data contab (drop=total);
 set contab;
if tipo="Imposto" then valor=valor*0.1;
run;