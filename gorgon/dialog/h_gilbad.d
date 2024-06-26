BEGIN h_gilbad

IF ~Global("h_GilbaldQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @37000 /* Welcome to the only high-stakes joint on the whole Sword Coast! We're talkin' high buy-ins and even higher payoffs! If you ain't packin' plenty of gold, you're playin' with the minnows! */ IF ~~ THEN EXIT
END

IF ~Global("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 0
   SAY @37000 /* Welcome to the only high-stakes joint on the whole Sword Coast! We're talkin' high buy-ins and even higher payoffs! If you ain't packin' plenty of gold, you're playin' with the minnows! */ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_GilbaldQuest","GLOBAL",1) GlobalLT("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 2
   SAY @37001 /* Got any leads on the perp? */
       ++ @37002 /* Nothing to report yet. */ EXIT
       +~Global("h_KilledXevec","GLOBAL",1)~+ @37003 /* It was Xevec. Found him clutchin' fake gold so I dealt with him swiftly. */ GOTO 3
       +~Global("h_KilledXevec","GLOBAL",2)~+ @37004 /* It was Xevec. Turns out he didn't know his fillings were fool's gold, compliments of the dame at the Nashkel manor. */ GOTO 4
       +~Global("h_DidNotKillXevec","GLOBAL",1)~+ @37004 /* It was Xevec. Turns out he didn't know his fillings were fool's gold, compliments of the dame at the Nashkel manor. */ GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY @37005 /* Quick work, <CHARNAME>. I'm glad I rolled the dice with you. */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@615,QUEST_DONE)
   TakePartyItemAll("h_misc15")
   DestroyItem("h_misc15")
   AddExperienceParty(300)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY @37006 /* Sharp eye, <CHARNAME>. I'm glad I rolled the dice with you. My men'll tend the clean up. */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@619,QUEST_DONE)
   TakePartyItem("h_misc15")
   TakePartyItem("h_misc32")
   DestroyItem("h_misc15")
   DestroyItem("h_misc32")
   AddExperienceParty(1000)
   GiveGoldForce(800)~ EXIT
END



CHAIN
   IF ~Global("h_GilbaldQuest","GLOBAL",1)~ THEN h_gilbad 0
@37007 /* You strut like a winner, <CHARNAME>. Feel like rollin' the bones and takin' fate for a spin? */
   == h_game2d
@37008 /* Uh, Gilbald? I'm gonna need you to come and take a look at something. */
   == h_gilbad
@37009 /* Hmm? What is it? */
   == h_game2d
@37010 /* Well, you see... I was tallyin' last nights haul... */
   =
@37011 /* ...and. */
   == h_gilbad
@37012 /* By gods, spit it out man! */
   == h_game2d
@37013 /* Looks like we've been slipped a mickey! Some of these coins ain't singin' the right tune! */
   == h_gilbad
@37014 /* Toss one here, let me have a look. */
   =
@37015 /* Shit, you're right! Who'd be daft enough to try and snake us? They gotta know what's comin'. */
   == h_game2d
@37016 /* Apologies, boss. Can't fathom how this slipped my radar. I'll man up and take whatever lumps you dish out. */
   == h_gilbad
@37017 /* Noted. Craftsmanship ain't half bad, to be honest. Whoever's behind this ain't no slouch. */
   =
@37018 /* <CHARNAME>, look into this for me, will ya? Rather not make a scene if we don't gotta. Check with my crew for the night's score, then do some diggin'. */
   =
@37019 /* If you find out who's responsible, feel free to give that rat a one-way ticket to the Reaper. */
   DO ~
      SetGlobal("h_GilbaldQuest","GLOBAL",2)
      SetGlobal("h_SpawnMaid","GLOBAL",1)
      AddJournalEntry(@610,QUEST)~
EXIT

