cas;

caslib gcs_test
   datasource=(
     srctype="gcs"
     bucket="ai_academy"
			gcsAuthFile="/innovationlab-export/innovationlab/homes/Wilson.Kobayashi@sas.com/gcs_file/ai-academy-453412-eb72b7f6e11a.json"
     );

libname gcs_test cas caslib="gcs_test";

proc casutil;
  list files incaslib="gcs_test";
  load incaslib="gcs_test" casdata="CARS.csv" outcaslib="gcs_test" casout="CARROS";

run;

