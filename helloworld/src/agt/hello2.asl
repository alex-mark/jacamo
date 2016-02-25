// Agent hello2 in project helloworld

/* Initial beliefs and rules */

/* Initial goals */
msg(fr,"Bonjour").
msg(br,"Bom dia").
msg(it,"Buon giorno").
msg(us,"Good morning").

!start.

/* Plans */

+!start : country(C) & msg(C,M) 
	<- for ( jcm__art(_,"dcon", ArtId) ){
			printMsg(M)[artifact_id(ArtId)]
	   }.

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }

//
//
//+!start : true <- .print("hello world.").
//
//{ include("$jacamoJar/templates/common-cartago.asl") }
//{ include("$jacamoJar/templates/common-moise.asl") }
//
//// uncomment the include below to have a agent that always complies with its organization  
////{ include("$jacamoJar/templates/org-obedient.asl") }
