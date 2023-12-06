proc cas;
   session casauto;         /**/
   builtins.serverStatus;   /**/
run;

cas casauto listsessions;

cas _all_ list;


cas casauto listsessopts;

%put TIMEOUT for session CASAUTO: %sysfunc(getsessopt(casauto, timeout)) minutes.;

proc cas;
   session casauto;
   session.sessionStatus result=r;
   print "Session status:";             
   print "State:         " r["state"];
   print "Connections:   " r["number of Connections"];
   print "Timeout:       " r["Timeout"] "minutes";
   print "Action Status: " r["ActionStatus"];
   print "Authenticated: " r["Authenticated"];
   print "Locale:        " r["locale"];
run;


/* List the nodes on the shared and personal servers. */
proc cas;
   session casauto;
   builtins.listnodes;
run;

quit;