options locale=es_es;
%shpimprt(shapefilepath=/home/sasdemo/shapefile/mx/Demo_MX_estado/Mexico_States.shp, id=CODE, outtable=MX_ESTA_DEMO, cashost=sasserver.demo.sas.com,
   casport=5570, caslib='casuser');

cas;
caslib _all_ assign;

data casuser.MX_ESTADOS;
  set casuser.MX_ESTADOS;
  sequence = _n_;
run;


proc casutil;
save incaslib='casuser' casdata='MX_ESTADOS' replace;
run;


%SHPCNTNT(SHAPEFILEPATH=/home/sasdemo/shapefile/mx/Demo_MX_estado/Mexico_States.shp);