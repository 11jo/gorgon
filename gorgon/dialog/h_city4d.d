BEGIN h_city4d

IF ~Global("h_PoisonInspector","GLOBAL",1)~ THEN BEGIN 0
   SAY @23500 /* By the gods! The Inspector's been poisoned! Sieze that harlot, quickly! */
       ++ @23501 /* Well, looks like we're about to dance, gents. Let's see who's got the quicker feet. */ GOTO 2
       ++ @23502 /* You've seen what happens when you cross us. You can either fall in line with the Gorgon's Eye, or meet the same fate as the Inspector. The choice is yours. */ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @23503 /* Shit, it's the Gorgon's Eye! Men, ready yourselves! */
IF ~~ THEN DO ~
   SetGlobal("h_WatchTalk","GLOBAL",2)
   SetGlobal("h_InsWatchAttack","GLOBAL",1)
   SetGlobal("h_FinalWatchTalk","GLOBAL",1)
   AddJournalEntry(@548,QUEST)
   ReputationInc(-1)
   ActionOverride("h_city3c",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY @23504 /* We... we never signed up for this, mate. We joined the Watch to protect the city, not to become pawns in some underworld feud. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @23505 /* After what we've just seen... there's no denying it. The Gorgon's Eye is a force to be reckoned with. I... have no choice. I will do as you say. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @23506 /* But understand this, even if more of us succumb to your might and influence, Commander Whitewood... she'll never yield. She will hunt you down until her dying breath. */
       ++ @23507 /* We'll handle Whitewood when the time comes. For now, you've made the wise choice. */ GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @23508 /* C'mon men. Let's go. */
IF ~~ THEN DO ~
   SetGlobal("h_DecoyAttack","GLOBAL",1)
   SetGlobal("h_FinalWatchTalk","GLOBAL",1)
   AddJournalEntry(@547,QUEST)
   ReputationInc(-1)
   ActionOverride("h_city3c",EscapeArea())~ EXIT
END

IF ~Global("h_WatchFireTalk","GLOBAL",1) Global("h_FinalWatchTalk","GLOBAL",0)~ THEN BEGIN 7
   SAY @23509 /* I... I can't believe it. This... This can't be real. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @23510 /* It's like a nightmare, it can't be real... What have you done? */
       ++ @23511 /* This is the price of defiance. Fall in line with the Gorgon's Eye, or meet a similiar fate. */ DO ~SetGlobal("h_FinalWatchTalk","GLOBAL",1)~ GOTO 10
       ++ @23512 /* You have a chance to live. Join us, obey our orders, and you'll survive this night. */ DO ~SetGlobal("h_FinalWatchTalk","GLOBAL",1)~ GOTO 10
       ++ @23513 /* No worse than what I shall do to you. Prepare yourself. */ DO ~SetGlobal("h_FinalWatchTalk","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @23514 /* You... you bastard! I'll kill you! */
IF ~~ THEN DO ~
   SetGlobal("h_InsWatchAttack","GLOBAL",1)
   SetGlobal("h_FinalWatchTalk","GLOBAL",1)
   AddJournalEntry(@549,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @23515 /* This... this is beyond reckoning. I can't fathom the depths of darkness that led to such an act. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @23516 /* If this is the power of the Gorgon's Eye, then I have no choice but to yield. I swear it... I'll fall in line. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @23517 /* But understand this, even if others like me succumb to your might and influence, Commander Whitewood... she'll never yield. She will hunt you down until her dying breath. */
       ++ @23507 /* We'll handle Whitewood when the time comes. For now, you've made the wise choice. */ GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @23518 /* I... I have to go now. */
IF ~~ THEN DO ~
   SetGlobal("h_DecoyAttack","GLOBAL",1)
   SetGlobal("h_FinalWatchTalk","GLOBAL",1)
   AddJournalEntry(@549,QUEST)~ EXIT
END