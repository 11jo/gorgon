BEGIN h_xevecd

IF ~Global("h_GilbaldQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY @68000 /* Don'tcha look down on me! I'll be rollin' in riches, bigger 'n the Silvershields, mark me words! */ IF ~~ THEN GOTO 0.5
END

IF ~~ THEN BEGIN 0.5
   SAY @68001 /* Alright then, what is you want? Quickly! I'm an important man, ya know. */
       ++ @68002 /* Greetings, Xevec. Care to shed some light on these counterfeit coins you've been using around town? */ GOTO 2
       ++ @68003 /* Xevec, you've been accused of using fake gold at our establishments. What do you have to say for yourself? */ GOTO 2
       ++ @68004 /* I think it's time for me to end you misery, Xevec. Any last words? */ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @68005 /* Nah, nah, I ain't just rollin' over! This gold's mine, earned it with my blade, fair 'n square! */
       ++ @68006 /* Allow me to test your skills then! */ GOTO 10
       ++ @68003 /* Xevec, you've been accused of using fake gold at our establishments. What do you have to say for yourself? */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @68007 /* Absurd, I tell ya! No fake gold here, none! */
       ++ @68008 /* It was used at Gilbald's and Meredia's, and you frequented them both. */ GOTO 3
       ++ @68009 /* Then allow me to examine your gold. */ GOTO 4
       ++ @68010 /* I don't believe you. Time to die! */ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY @68011 /* Spent some time there, sure, but not so foolish as to flaunt fake coins in their faces, no <PRO_SIRMAAM>! */
       ++ @68009 /* Then allow me to examine your gold. */ GOTO 4
       ++ @68010 /* I don't believe you. Time to die! */ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY @68012 /* Alright, alright, but try any tricks, and I'll take your fingers as souvenirs, got it? */
       ++ @68013 /* I knew it! See? All of these coins are fake. */ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @68014 /* What? Impossible, impossible, I say! */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @68015 /* Deceived, tricked, by that woman with the coins! Lost my senses, I did! */
       ++ @68016 /* What woman? Who decieved you? */ GOTO 7
       ++ @68017 /* You better not be lying, Xevec. */ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @68018 /* Hired me, she did! Finalized at Gilbald's, but never got her name or place! */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @68019 /* Wanted Sam dead, she did! In Nashkel! Paid up front, promised more after the deed. */
       ++ @68020 /* Sam in Nashkel? I'll look into it. */ GOTO 9
       ++ @68021 /* I don't have time for all that. Time to die, Xevec! */ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY @68022 /* No lies, no lies! She spoke like she knew Sam. */ IF ~~ THEN GOTO 9.5
END

IF ~~ THEN BEGIN 9.5
   SAY @68023 /* Find the mark, find the woman, mark my words! */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   AddJournalEntry(@613,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @68024 /* Enough chit-chat, let's get to it! Got skills, me! */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   SetGlobal("h_KilledXevec","GLOBAL",1)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END
       
IF ~Global("h_GilbaldQuest","GLOBAL",5)~ THEN BEGIN 11
   SAY @68025 /* What now? Not my fault, I swear! */
       +~Global("h_TalkedToMaid","GLOBAL",2)~+ @68026 /* I found the woman who hired you Xevec, looks like you were telling the truth. */ GOTO 12
       ++ @68027 /* I'll be back later. */ EXIT
END

IF ~~ THEN BEGIN 12
   SAY @68028 /* Great news, eh? Cleared my name, didn't you? */
       ++ @68029 /* I'll inform Gilbald of your involvement and he will decide your fate. */ GOTO 13
       ++ @68030 /* I did, Xevec. Might want to stay clear of the Den for a while, though, to be safe. */ GOTO 13
       ++ @68031 /* Well, not quite. You still used counterfeit gold, and the punishment is death. Sorry Xevec. */ GOTO 14
END

IF ~~ THEN BEGIN 13
   SAY @68032 /* Understood, understood. Gilbald's fair, he'll hear the tale, I'm sure of it! */
IF ~~ THEN DO ~
   SetGlobal("h_DidNotKillXevec","GLOBAL",1)
   AddJournalEntry(@618,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY @68033 /* Enough talking then, let's get to it! I got skills, me! */
IF ~~ THEN DO ~
   SetGlobal("h_KilledXevec","GLOBAL",2)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END

       
       
       
       
       



//I was celebrating a rather lucrative contract I had just received.
//None of that really matters anymore, Xevec.