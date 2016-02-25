// Agent hf in project helloworld

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : message(X) 
   <- for ( numMsg(_)[artifact_type(ArtId,"display.GUIConsole")]  ) { 
          printMsg(X)[artifact_id(ArtId)]
      }.
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have a agent that always complies with its organization  
//{ include("$jacamoJar/templates/org-obedient.asl") }
