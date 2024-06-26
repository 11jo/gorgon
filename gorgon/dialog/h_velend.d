BEGIN h_velend

IF ~Global("h_SorenQuest","GLOBAL",1)~ THEN BEGIN 0
   SAY @65500 /* Master Thaldor, let us continue this discussion in a more private setting, away from prying ears. */
IF ~~ THEN DO ~
   AddJournalEntry(@354,QUEST)
   SetGlobal("h_SorenQuest","GLOBAL",3)
   ActionOverride("h_thaldc",EscapeArea())
   EscapeArea()~ EXIT
END

CHAIN
   IF ~Global("h_SorenQuest","GLOBAL",2)~ THEN h_velend 0
@65501 /* Good evening, Master Thaldor. I trust your journey from Mirabar was uneventful? */
   == h_thaldd
@65502 /* Indeed, Captain. The roads were clear, and the shipment remains secure. These weapons are of the finest Mirabaran steel, untainted by the cursed ore plaguing the Sword Coast. */
   == h_velend
@65503 /* Excellent news. The Flaming Fist is in dire need of such armaments. Our troops have been sorely lacking in reliable equipment as of late. */
   == h_thaldd
@65504 /* Rest assured, the supply is substantial. Enough to outfit an entire battalion, if need be. */
   =
@65505 /* We shall have them unloaded at the northern gates of the city and ready for inspection by the morrow. */
   == h_velend
@65506 /* Very well. I trust the usual arrangements have been made regarding payment? */
   == h_thaldd
@65507 /* Indeed, Captain. Your agent in Mirabar has sorted out the details of compensation. You'll find the terms most agreeable. */
   == h_velend
@65508 /* Good. This transaction serves the interests of both Mirabar and the Flaming Fist. */
   =
@65509 /* Let us hope this venture is met with success. We will not soon forget this favor, Master Thaldor. */
   == h_thaldd
@65510 /* Nor shall Mirabar, Captain. Our alliance is one forged in steel and mutual interest. May our endeavors be prosperous. */
   DO ~
      AddJournalEntry(@355,QUEST)
      SetGlobal("h_SorenQuest","GLOBAL",4)
      ActionOverride("h_velenc",EscapeArea())
      EscapeArea()~
EXIT
