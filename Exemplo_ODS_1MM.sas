/* Create a SAS dataset with 1,000,000 records and 10 columns */
data RandomDataSet;
    do i = 1 to 1000;
        /* Generate random values for 10 columns */
        array random_values[10];
        do j = 1 to 10;
            random_values[j] = rand('Uniform'); /* Generate random values using Uniform distribution */
        end;
        output;
    end;
    drop i j;
run;

/* proc datasets lib=work; */
/* modify RandomDataset; */
/* label random_values1 = "troca label"; */
/* run; */

/* ods _all_ close;  */
/* ods excel file='RandomDataSet_ods.xlsx';  */

proc print data=RandomDataSet noobs label; 
var random_values1;
label random_values1 = "teste";
run;
/* ods excel close;  */

