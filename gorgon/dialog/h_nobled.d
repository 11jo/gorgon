APPEND NOBW2

IF ~~ THEN BEGIN h_1
   SAY ~I suppose you mean *Samantha*, in which case yes, that is what she is called.~ IF ~~ THEN GOTO h_2
END

IF ~~ THEN BEGIN h_2
   SAY ~Why that is of concern to you, however, is worrisome enough for me to notify the guards.~
       ++ ~I think she might be in danger. Someone is trying to have her killed.~ GOTO h_3
       ++ ~Cut the attitude lady, I'm trying to save your daughter from being assassinated. Tell me everything you know so I can be on my way.~ GOTO h_3
       ++ ~Do you know if she has any enemies or someone who would want to hurt her?~ GOTO h_3
END

IF ~~ THEN BEGIN h_3
   SAY ~Eh? Samantha is a good girl who would give no cause for such things. Sounds like nonsense to me.~
       ++ ~Are you sure about that? I talked with the maid and she doesn't seem to care for her at all.~ GOTO h_4
END

IF ~~ THEN BEGIN h_4
   SAY ~That is of no surprise. Samantha and I both detest the wretch, and with good reason. Not a ten-day ago, she was caught with Samantha's missing necklace stuffed into her pockets.~ IF ~~ THEN GOTO h_5
END

IF ~~ THEN BEGIN h_5
   SAY ~I would have her sent off to the dungeons myself, yet she is a relative of my husband and he would not allow it.~ IF ~~ THEN GOTO h_6
END

IF ~~ THEN BEGIN h_6
   SAY ~I dare to imagine what else she may have stolen from my house.~
       +~PartyHasItem("h_misc15")~+ ~Does this coin look familiar to you?~ GOTO h_7
END

IF ~~ THEN BEGIN h_7
   SAY ~It does not. In fact, its grotesque forgery makes me feel unwell. Remove it from my sight at once.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@620,QUEST)~ EXIT
END

END

EXTEND_TOP NOBW2 0
   +~Global("h_TalkedToMaid","GLOBAL",1)~+ ~Is your daughter's name Sam, by any chance?~ GOTO h_1
   ++ ~I'll be going now.~ EXIT
END