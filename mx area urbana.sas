options locale=es_es;
%shpimprt(shapefilepath=/home/sasdemo/shapefile/mx/area urbanas/Mexico_Urban_Areas.shp, id=OBJECTID, outtable=MX_areaurbana, cashost=sasserver.demo.sas.com,
   casport=5570, caslib='casuser');

cas;
caslib _all_ assign;

data casuser.mx_areaurbana;
  set casuser.mx_areaurbana;
  sequence = _n_;
run;


proc casutil;
save incaslib='casuser' casdata='MX_areaurbana' replace;
run;


%SHPCNTNT(SHAPEFILEPATH=/home/sasdemo/shapefile/mx/area urbanas/Mexico_Urban_Areas.shp)