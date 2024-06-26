BEGIN h_bald2d

IF ~Global("h_BaldwinQuest","GLOBAL",10)~ THEN BEGIN FINAL_0
   SAY @11500 /* The Kerykeion, at last, within my grasp. Its power courses through my veins already, despite the final act of fusion! */ IF ~~ THEN GOTO FINAL_1
END

IF ~~ THEN BEGIN FINAL_1
   SAY @11501 /* Behold the culmination of power! With the Kerykeion in my hands, I will become unstoppable. No force, mortal or divine, can thwart me now. */ IF ~~ THEN GOTO FINAL_2
END

IF ~~ THEN BEGIN FINAL_2
   SAY @11502 /* My ambitions, once mere dreams, shall solidify into reality. The world shall bow before the might I now possess! */
       ++ @11503 /* Glad to be of service, Baldwin. How should we proceed? */ GOTO FINAL_3
       ++ @11504 /* Baldwin! You underestimate the danger of the Kerykeion. It must be destroyed! */ GOTO FINAL_7
       ++ @11505 /* You are alone, Baldwin, and the pieces remain inert. I will kill you, and claim the Kerykeion as my own! */ GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_3
   SAY @11506 /* I will travel south to begin my crusade into Amn, where I will use the Kerykeion to crater the city of Athkatla and wipe out the Shadow Thieves from existance. */
       ++ @11507 /* What of the guild? Who will run things while you're away? */ GOTO FINAL_4
       ++ @11508 /* You would kill thousands of innocent lives, just for the sake of revenge? No, I can't let you do this, it must be destroyed! */ GOTO FINAL_7
       ++ @11505 /* You are alone, Baldwin, and the pieces remain inert. I will kill you, and claim the Kerykeion as my own! */ GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_4
   SAY @11509 /* The Beregost branch of the Gorgon's Eye will need a new leader, and if you'll have it, I plan to entrust that privelage to you. */ IF ~~ THEN GOTO FINAL_5
END

IF ~~ THEN BEGIN FINAL_5
   SAY @11510 /* You've proven yourself, <CHARNAME>. Your cunning, your resolve, it sets you apart. The shadows respond to your command, and the guild recognizes your capability. */ IF ~~ THEN GOTO FINAL_6
END

IF ~~ THEN BEGIN FINAL_6
   SAY @11511 /* The mantle of Guildmaster suits you, and the Gorgon's Eye will thrive under your leadership. */ IF ~~ THEN GOTO FINAL_10
END

IF ~~ THEN BEGIN FINAL_7
   SAY @11512 /* Destroyed? Madness! The power it holds is the very key to my ascension! You underestimate what we could become, what I could become! This is my destiny! */  IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_8
   SAY @11513 /* Treason, is it? You overestimate yourself, <CHARNAME>. While the fusion remains incomplete, the proximity of its components is sufficient enough to infuse me with newfound power. */ IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_9
   SAY @11514 /* If you dare to stand in my way, <CHARNAME>, rest assured, I will hold nothing back. */ IF ~~ THEN GOTO FINAL_10
END

IF ~~ THEN BEGIN FINAL_10
   SAY @11515 /* Hold a moment... We are not alone. */
IF ~~ THEN DO ~
   CreateCreature("h_sthiec",[402.156],S)
   CreateCreature("h_richac",[331.351],E)
   CreateCreature("h_sthiec",[536.474],N)
   CreateCreature("h_sthiec",[752.407],W)
   SetGlobal("h_SpawnRichard","GLOBAL",1)
   SetGlobal("h_BaldwinQuest","GLOBAL",11)~ EXIT
END


CHAIN
   IF ~Global("h_BaldwinQuest","GLOBAL",9)~ THEN h_bald2d 0
@11516 /* Evening, Gerard. I trust you understand the purpose of my visit. */
   == NOBL10
@11517 /* Baldwin. You've always had a knack for stating the obvious, haven't you? */
   =
@11518 /* Your efforts are wasted here, however. The Shadow Thieves will be unrelenting in their pursuit, and you will not survive. */
   == h_bald2d
@11519 /* This newfound boldness is but the last gasp of a dying man. Your defiance has sealed your fate. */
   == NOBL10
@11520 /* I've simply grown weary of this charade, of groveling before you wretched Gorgon's Eye scoundrels. */
   == h_bald2d
@11521 /* Your disdain for our ilk is of little concern to me, Gerard. But your actions, and the chaos it has sown, cannot be left unchecked. */
   == NOBL10
@11522 /* Chaos has long been the currency of this city, Baldwin, and the Gorgon's Eye has bled it dry. I won't play puppet any longer. */
   == h_bald2d
@11523 /* Motivations matter little to me, my friend, and actions have consequences. */
   =
@11524 /* I present a final choice before you. */
   =
@11525 /* Surrender the Kerykeion and I will grant you a swift death, otherwise, defy me, and it will become abundantly clear how I recieved of my namesake. */
   == NOBL10
@11526 /* Kill me if you must, Butcher, but let it be known that I will no longer suffer your indignities any longer. */
   == h_bald2d
@11527 /* So be it. */
   DO ~
      Kill("NOBL10")
      SetGlobal("h_BaldwinQuest","GLOBAL",10) ~
EXIT





