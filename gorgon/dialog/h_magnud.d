BEGIN h_magnud

IF ~Global("h_MagnusBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @46000 /* Apologies, I'm lost in my thoughts right now. If you don't mind, I'd rather be left alone. */ IF ~~ THEN EXIT
END

IF ~Global("h_MagnusBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY @46001 /* This part of town holds a certain melancholy beauty. It's hard not to feel a sense of nostalgia gazing into its waters. */
       ++ @46002 /* It's quite a magnificent pool, isn't it? The swirling water is oddly mesmerizing. (Snap his neck.) */ GOTO 10
       ++ @46003 /* I'm sorry to disturb your reflections, but there's a necromancer in the city who desires your demise. */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @46004 /* Why? What could I have done to earn this enmity? I spend most of my time in isolation, with no quarrels or debts with anyone. */
       ++ @46005 /* He seeks to use your remains for his resurrection experiments. He believes your blue hair may hold some value for his research. */ GOTO 3
       ++ @46006 /* I can't recall. Honestly, I'd rather not get involved. I just thought it best to inform you. */ GOTO 9
END

IF ~~ THEN BEGIN 3
   SAY @46007 /* Interesting. What is it he hopes to discover from me? */
       ++ @46008 /* He believes he can find a way to make resurrection more accessible for the common folk. */ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @46009 /* I see. If that's the case, then I have no objections. I've had a fulfilling life, and today has been a rather special day. */
       ++ @46010 /* Wait, what? You can't be serious. */ GOTO 5
       ++ @46011 /* I didn't come here to harm you. I came to warn you. */ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @46012 /* My mother was taken from me many years ago, and the healers in my village refused to bring her back. I've never been able to accept their decision, and I've carried that resentment since. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @46013 /* If my passing can spare others from such suffering, then I'm willing to give my life in the name of progress. */
       ++ @46014 /* Are you absolutely sure about this? */ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @46015 /* I am. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @46016 /* These pools, you know... they remind me of my mother. I believe she would have found solace here. */
       ++ @46017 /* (Snap his neck.) */ GOTO 11
       ++ @46018 /* This is madness. I can't take your life! */ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @46019 /* I understand. Thank you, my friend. Take care, and may your travels be safe. */
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_MagnusBounty","GLOBAL",2)
   AddJournalEntry(@442,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @46020 /* Yes, it certainly is... */
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @46021 /* I'll be joining you soon... */
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)~ EXIT
END