proc python;
submit;
# Convert SAS Data set into Pandas Data frame
df = SAS.sd2df("SASHELP.CLASS") 
print(df)


# create a new column 'year' with value 2023
df['year']=2023


print(df)

# Convert dataframe back to SAS dataset
SAS.df2sd(df,'work.teste')
endsubmit;
quit;

proc print data=teste;
run;