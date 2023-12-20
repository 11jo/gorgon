BEGIN h_zedadd

IF ~Global("h_ZedaQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~You smell of books... and blood.~
IF ~~ THEN EXIT
END

IF ~Global("h_ZedaQuest","GLOBAL",1)~ THEN BEGIN 1
   SAY ~So, you've dipped your toes in our dark waters but haven't yet learned to swim. The guild's a harsh mistress; she doesn't take kindly to half-hearted commitments.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~You want a place here, you've got to earn it. So, I hope you're ready to prove you're more than just a book-smelling, blood-stained wanderer.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Well, if it isn't our guild's new shadow-walker. Seeking to uncover hidden paths or smuggle prized treasures, perhaps? My skills are at your disposal.~ IF ~~ THEN GOTO 4
END

IF ~Global("h_ZedaQuest","GLOBAL",2)~ THEN BEGIN 4
   SAY ~Ask your questions, but choose them wisely. In our line of work, a carefully whispered word can unlock more doors than the finest lockpick.~
       +~Global("h_KarpWork","GLOBAL",1)~+ ~I met a woman in Nashkel who is looking to get her and her son smuggled out of Nashkel and escorted to Athkatla. Is that something you can help her with?~ GOTO 120
       +~Global("h_KarpWorkGood","GLOBAL",1)~+ ~I met a woman in Nashkel who is looking to get her and her son smuggled out of Nashkel and escorted to Athkatla. Is that something you can help her with?~ GOTO 122
       ++ ~I'd like to see what clerical services you offer.~ GOTO 6
       +~Global("h_ZedaRiddle","GLOBAL",1)~+ ~I'm looking to keep busy and earn my keep. Any jobs or tasks you need help handling?~ GOTO 50
       +~Global("h_ZedaRiddle","GLOBAL",2) Global("h_ZedaRiddle2","GLOBAL",1) GlobalTimerExpired("h_ZedaRiddleTimer","GLOBAL")~+ ~I've come back for more of your Bag of Mysteries. Let's see what riddles and prizes you have for me today.~ GOTO 78
       +~Global("h_ZedaRiddle2","GLOBAL",2) Global("h_ZedaRiddle3","GLOBAL",1) GlobalTimerExpired("h_ZedaRiddleTimer2","GLOBAL")~+ ~Zeda, I'm ready for another round of the Bag of Mysteries. Let's see if I can outwit your riddles this time.~ GOTO 100
       +~Global("h_WestgateLore","GLOBAL",0)~+ ~You're a woman of many layers, Zeda. Smuggler, healer... I'm curious to know more about you.~ DO ~SetGlobal("h_WestgateLore","GLOBAL",1)~ GOTO 7
       +~Global("h_WestgateLore","GLOBAL",1)~+ ~Westgate sounds like an intriguing city. What makes it such a notorious and compelling place?~ DO ~SetGlobal("h_WestgateLore","GLOBAL",2)~ GOTO 12
       +~Global("h_WestgateLore","GLOBAL",2)~+ ~I'm interested in learning more about Westgate.~ GOTO 19
       ++ ~Time's pressing and shadows wait for no one. We'll have to continue this chat some other time.~ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Go on, then. Just remember, if you ever need to walk unseen or seek sanctuary in the dark, you know where to find me.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~Ah, seeking the touch of Mask's hidden mercies, are we? Even in the shadows, there's room for a bit of healing. Let's see what I can do for you.~
IF ~~ THEN DO ~
   StartStore("h_zedsto",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Curious about my past, are you? Well, I guess I can tell you a bit. I grew up in the chaos of Westgate, the city where fortunes are made and lost in a blink.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~It was there I fell in with the Night Masks. A notorious lot, they were, but sharp as daggers and twice as deadly. They taught me the fine art of stealth and the weight of a secret.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~And the Shadowspires? That's where the threads of faith tangled with my path. Learned a thing or two about the Mask's quieter gifts there.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Eventually, the constant hum of the big city wore on me. I remembered passing through Beregost on a smuggling run once, found myself charmed by the quiet of the countryside.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~So, I came back, looking for something different, and here I am, part of the Gorgon's Eye, away from the endless shadows of Westgate.~
       +~Global("h_WestgateLore","GLOBAL",1)~+ ~Westgate sounds like an intriguing city. What makes it such a notorious and compelling place?~ DO ~SetGlobal("h_WestgateLore","GLOBAL",2)~ GOTO 12
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END

IF ~~ THEN BEGIN 12
   SAY ~It's a city unlike any other. A bustling metropolis, one of the major trading powers along the Inner Sea, rivaled only by the likes of Sembia and Cormyr.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~You see, everything in Westgate has its price, and nothing is off-limits. It's a place open to all different races, beliefs, you name it. That's part of its charm, but also its curse.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~In Westgate, commerce isn't just about the goods in the market. It's the pulse that keeps the city vibrant. But there's another side to it all, a shadowy underbelly.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~The city is rife with factions, guilds, both known and hidden, each vying for control and influence. They're not your average street thugs, but a sophisticated lot, a government of the shadows.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~The temples here cater to a pantheon as varied as the city's inhabitants. It's a melting pot of faiths, where devotion to gods, both kind and cruel, is practiced openly.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Westgate's history? A saga of dragons, kings, and rebels. It's seen power change hands more times than most can count. A place where the astute and the cunning find their fortunes made or unmade.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~It's a city of opposites, where wealth and poverty, freedom and crime, coexist. Truly, Westgate is a place where every day is a dance on the knife's edge.~
       ++ ~Can you shed some light on the different factions and how they influence the city?~ GOTO 20
       ++ ~The Night Masks seem like a formidable group. What can you tell me about them?~ GOTO 36
       ++ ~You mentioned the Shadowspires. Sounds like a place of mystery. What exactly is it?~ GOTO 42
       ++ ~I'm curious about its history. What events and figures have shaped this city into what it is today?~ GOTO 46
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END

IF ~~ THEN BEGIN 19
   SAY ~What exactly are you keen on learning? Its history, its people, or perhaps the undercurrents that really move things in the city?~
       ++ ~Can you shed some light on the different factions and how they influence the city?~ GOTO 20
       ++ ~The Night Masks seem like a formidable group. What can you tell me about them?~ GOTO 36
       ++ ~You mentioned the Shadowspires. Sounds like a place of mystery. What exactly is it?~ GOTO 42
       ++ ~I'm curious about its history. What events and figures have shaped this city into what it is today?~ GOTO 46
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END
   
IF ~~ THEN BEGIN 20  
   SAY ~Westgate, my friend, is a city of many masters.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~While trade guilds and merchant houses hold sway in daylight, it's the shadowy factions that truly rule. The Night Masks, yes, they're the most infamous. But there are others too.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Take the Nine Golden Swords, a group with roots in the Shou expatriate community, aiming to control their own through subtle manipulation and influence.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Then you've got the Zhentarim, outsiders to some, but in Westgate, they're players in the game of shadows, dealing in espionage and trade in equal measure.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~And don't overlook the Mercenaries' Guild of Westgate, a force in its own right, offering muscle for coin, and often swaying the balance in the city's endless power struggles.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~Each of these factions plays a crucial part in the ever-shifting dance of power that is Westgate. It's a city where alliances are as fluid as the tides, and where understanding these players is key to survival.~
       ++ ~What can you tell me about the Nine Golden Swords.~ GOTO 26
       ++ ~What can you tell me about the Zhentarim.~ GOTO 30
       ++ ~What can you tell me about the Mercenaries' Guild.~ GOTO 33
       ++ ~I'd like to ask you something else about Westgate.~ GOTO 19
END

IF ~~ THEN BEGIN 26
   SAY ~The Nine Golden Swords, originating from the Shou lands of Kara-Tur, are a secret society akin to the Yakuza.~ IF ~~ THEN GOTO 27 
END

IF ~~ THEN BEGIN 27
   SAY ~Predominantly found in Thesk and other western regions, they still play a significant role in Westgate's underworld.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~Their operations are steeped in subtlety and influence, often manifesting in economic manipulation and covert power plays within the city's intricate political landscape.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~Their leadership is known as the Golden Master, centralizing in Phsant, and they've historically sought to extend their influence across many key cities.~
       ++ ~What can you tell me about the Zhentarim.~ GOTO 30
       ++ ~What can you tell me about the Mercenaries' Guild.~ GOTO 33
       ++ ~I'd like to ask you something else about Westgate.~ GOTO 19
END

IF ~~ THEN BEGIN 30 
   SAY ~The Zhentarim, often seen as outsiders in Westgate, wield their influence through espionage and trading.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~Although not as deeply entrenched as some local factions, their involvement in the city's shadowy dealings is notable.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Known for their ambitious and ruthless tactics, the Zhentarim's activities in Westgate include manipulating trade routes and gathering intelligence, all serving their broader aim of regional domination.~
       ++ ~What can you tell me about the Nine Golden Swords.~ GOTO 26
       ++ ~What can you tell me about the Mercenaries' Guild.~ GOTO 33
       ++ ~I'd like to ask you something else about Westgate.~ GOTO 19
END

IF ~~ THEN BEGIN 33
   SAY ~The Mercenaries' Guild of Westgate is a significant force in the city. Offering muscle for hire, they often sway the city's power balance.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Not just a simple band of hired swords, the guild has its own internal politics and is known to play a crucial role in the city's many power struggles.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~Their services are utilized by various factions, making them a pivotal player in Westgate's ongoing power dynamics.~
       ++ ~What can you tell me about the Nine Golden Swords.~ GOTO 26
       ++ ~What can you tell me about the Zhentarim.~ GOTO 30
       ++ ~I'd like to ask you something else about Westgate.~ GOTO 19
END

IF ~~ THEN BEGIN 36
   SAY ~The Night Masks, now there's a guild I know too well. More than just shadows and whispers, they are the hidden hand that moves much in Westgate. Masters of espionage, extortion, and more dark arts.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~As a former member, I can tell you, their reach extends to every corner of the city. And the rumors of vampires? More than rumors, I'm afraid.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Vampires walk among the guild's higher ranks, steering its actions from the darkness. They're a fearsome lot, with ambitions that go beyond mere gold and power.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~They aim for control, not just of Westgate's underbelly, but its very soul. They manipulate from the shadows, weaving a tapestry of fear and obedience.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~Their true goal is dominance, both political and economic, making them puppeteers of the city's fate.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~In their grip, Westgate becomes a chessboard, and everyone, from the lowest thief to the highest noble, mere pawns in their game of eternal night.~
       ++ ~Can you shed some light on the different factions and how they influence the city?~ GOTO 20
       ++ ~You mentioned the Shadowspires. Sounds like a place of mystery. What exactly is it?~ GOTO 42
       ++ ~I'm curious about its history. What events and figures have shaped this city into what it is today?~ GOTO 46
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END

IF ~~ THEN BEGIN 42
   SAY ~The Shadowspires, a place close to my heart. It's a temple, yes, but not of the ordinary sort. A sanctuary of Mask, the Lord of Shadows.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~In its hallowed halls, secrets and schemes are the currencies of faith. It was there I learned to channel divine energies, a gift from Mask himself.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~His blessings are not of the healing sort you'd find in a temple of Lathander or Torm. No, his gifts are subtler, but no less powerful.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~The Shadowspires are a beacon in the dark, a testament to the hidden strength and mystical prowess granted by Mask, offering guidance and power to those who dare to embrace the shadows.~
       ++ ~Can you shed some light on the different factions and how they influence the city?~ GOTO 20
       ++ ~The Night Masks seem like a formidable group. What can you tell me about them?~ GOTO 36
       ++ ~I'm curious about its history. What events and figures have shaped this city into what it is today?~ GOTO 46
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END

IF ~~ THEN BEGIN 46
   SAY ~Westgate's history? A saga of power, blood, and shadow. Founded under a dragon's wing, it grew to prominence on the backs of kings, tyrants, and rebels.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~The city has seen its share of rulers, from the Night King, a vampire overlord, to the rule of the Pirate Kings, and the influence of mercenaries and wizards.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~Each era left its scar, shaping Westgate into a city that knows the true cost of power.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~It's a place where fortunes are made and lost with the setting sun, a testament to the resilience of its people and the cunning of its rulers.~
       ++ ~Can you shed some light on the different factions and how they influence the city?~ GOTO 20
       ++ ~The Night Masks seem like a formidable group. What can you tell me about them?~ GOTO 36
       ++ ~You mentioned the Shadowspires. Sounds like a place of mystery. What exactly is it?~ GOTO 42
       ++ ~Seems like there's more to you than meets the eye, Zeda. Let's continue this another time.~ GOTO 5
END

IF ~~ THEN BEGIN 50
   SAY ~Looking for some action, eh? You remind me a bit of Liedel, always poking her nose where it doesn't belong. Never liked that woman to tell it true, got a funny smell about her.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~But let's focus on you. I've got something that might just pique your interest, a little game of mine called 'Bag of Mysteries.'~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~It's a test of wit with four riddles. Get one wrong, and it'll cost you 100 gold. Solve it right, and you get to dip into my bag for a prize.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Just remember, once we start, you're in till the end. Ready to test your luck and your smarts?~
       +~PartyGoldGT(399)~+ ~I'm always up for a challenge. Let's see what your riddles have in store for me.~ GOTO 57
       +~PartyGoldLT(400)~+ ~I don't have enough gold to cover the stakes. Maybe another time.~ GOTO 55
       ++ ~I think I'll pass for now. I have other matters to attend to.~ GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~The shadows hold many secrets, and the Bag of Mysteries is just one of them. If ever you find yourself craving a little intrigue or in need of a challenge, you know where to find me.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
   SAY ~A member of our esteemed guild, and you're short on gold? Now that's a twist I didn't see coming. It's not every day you find a thief who can't afford a little gamble.~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~Don't worry, there's always a way to make coin in the shadows. When your purse is a bit heavier, come back and we'll see if you're ready for the Bag of Mysteries.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
   SAY ~Ah, a willing participant for my Bag of Mysteries! Let's see if you're as sharp as you claim. Here comes your first riddle, so listen closely and think carefully before you answer.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~You are seated in a dark room with only a single match. Around you lies a candle, a wood stove and an oil lamp. Which do you light first?~
       ++ ~The candle.~ GOTO 59
       ++ ~The wood stove.~ GOTO 59
       ++ ~The room.~ GOTO 59
       ++ ~The match.~ DO ~AddExperienceParty(100)~ GOTO 60
       ++ ~The oil lamp.~ GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Ah, not quite. The answer was the match. But don't fret, the game's just begun. Hand over 100 gold, and let's see if you can fare better with the next one.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO 62
END

IF ~~ THEN BEGIN 60
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO 61
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO 61
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO 61
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO 61
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~There are three priests who all say Destin is their brother. Yet, Destin says he has no brothers. Who is lying?~
       ++ ~Noone.~ DO ~AddExperienceParty(100)~ GOTO 64
       ++ ~The priests.~ GOTO 63
       ++ ~Destin.~ GOTO 63
       ++ ~You.~ GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~It seems the gold is mine this time. You see, no falsehoods were told. The priests, they are Destin's sisters. A clever turn, wasn't it? Now, let's not lose our momentum.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO 66
END

IF ~~ THEN BEGIN 64
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO 65
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO 65
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO 65
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO 65
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~I break, but never fall. And I fall, but never break. What are we?~
       ++ ~Windows.~ GOTO 67
       ++ ~Raindrops.~ GOTO 67
       ++ ~A pair of mirrors.~ GOTO 67
       ++ ~Gusts of wind.~ GOTO 67
       ++ ~Two birds.~ GOTO 67
       ++ ~Day and night.~ DO ~AddExperienceParty(100)~ GOTO 68
       ++ ~A sickness and cure.~ GOTO 67
       ++ ~Heartache and love.~ GOTO 67
       ++ ~The temperature.~ GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~A day breaks but never falls, while a night falls but never breaks. It's all in the play of words, my friend. That'll be 100 gold for the lesson. Now, the next riddle awaits.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO 70
END

IF ~~ THEN BEGIN 68
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO 69
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO 69
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO 69
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO 69
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~I can't be seen but I can be heard. I won't answer back until you've spoken a word.~
       ++ ~A dream.~ GOTO 71
       ++ ~A voice.~ GOTO 71
       ++ ~A ghost.~ GOTO 71
       ++ ~Footsteps.~ GOTO 71
       ++ ~Sound waves.~ GOTO 71
       ++ ~A message.~ GOTO 71
       ++ ~Darkness.~ GOTO 71
       ++ ~An echo.~ DO ~AddExperienceParty(100)~ GOTO 72
       ++ ~Shadows.~ GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~Not quite the mark, I'm afraid. The answer we were looking for is an echo. Invisible to the eye, yet it speaks back only after you do. I'll take that 100 gold, if you please.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO 73
END

IF ~~ THEN BEGIN 72
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO 73
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO 73
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO 73
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO 73
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~Well, that was a lively round of Bag of Mysteries, wasn't it? I do hope it was as entertaining for you as it was for me.~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~Now, I must replenish the bag's curious contents for the next daring soul. Until next time, keep your wits as sharp as your blade!~
       ++ ~That was quite the brain teaser, Zeda. Thanks for the fun, even if the prizes were unique.~ GOTO 75
       ++ ~Honestly, that was a bit underwhelming. I expected something more than... whatever this was.~ GOTO 76
       ++ ~You have quite the collection of oddities. I can't say I've ever won anything quite like these before.~ GOTO 77
END

IF ~~ THEN BEGIN 75
   SAY ~Glad to hear you enjoyed it. A bit of fun never hurt anyone, especially among the likes of us. Keep that spirit, and you'll go far in the shadows.~
IF ~~ THEN DO ~
   SetGlobalTimer("h_ZedaRiddleTimer","GLOBAL",ONE_DAY)
   SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 76
   SAY ~Oh? Expected more? Perhaps it's not the game, but the player who lacks depth. Maybe next time you'll find the challenge, or the humor, in the little things.~
IF ~~ THEN DO ~
   SetGlobalTimer("h_ZedaRiddleTimer","GLOBAL",ONE_DAY)
   SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 77
   SAY ~Ha! That's the spirit. The Bag of Mysteries isn't about the prize, but the surprise. You've got a good eye for the peculiar, a valuable trait in our line of work.~
IF ~~ THEN DO ~
   SetGlobalTimer("h_ZedaRiddleTimer","GLOBAL",ONE_DAY)
   SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 78
   SAY ~Back for more, are you? Excellent! I've just refilled my Bag of Mysteries with all sorts of new oddities. The rules remain the same, solve the riddles to win a prize.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~But let's make it more interesting this time, shall we? Each wrong answer will cost you 200 gold. The stakes are higher, but so is the thrill.~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~Ready to test your wits against my latest riddles?~
       +~PartyGoldGT(799)~+ ~I'm in. Let's up the ante. I'm ready for your riddles, Zeda. Bring on the Bag of Mysteries!~ GOTO 81
       +~PartyGoldLT(800)~+ ~I'd love to play again, but I'm running low on gold. I'll have to pass this time.~ GOTO 55
       ++ ~Actually, thinking it over, I might sit this one out. Maybe another time, Zeda.~ GOTO 54
END

IF ~~ THEN BEGIN 81
   SAY ~That's the spirit! Let's see if you can match wits with my new set of riddles.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~Remember, each wrong answer costs you 200 gold, but get it right and who knows what wonders you'll pull from the Bag of Mysteries. Here's your first riddle, listen closely.~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~I have a head, yet no body. I have leaves, yet no branches. What am I?~
       ++ ~A book.~ GOTO 84
       ++ ~Lettuce.~ DO ~AddExperienceParty(200)~ GOTO 85
       ++ ~A tree.~ GOTO 84
       ++ ~A flower.~ GOTO 84
       ++ ~A shadow.~ GOTO 84
       ++ ~A Family tree.~ GOTO 84
       ++ ~An army.~ GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~Not quite. The answer is 'lettuce.' Clever, isn't it? Now, that'll be 200 gold for the misstep. Let's see if you can bounce back with the next one. Ready for riddle number two?~ IF ~~ THEN GOTO 87
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO 87
END

IF ~~ THEN BEGIN 85
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO 86
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO 86
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO 86
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO 86
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~The more you take of me, the more you leave behind.~
       ++ ~Coins.~ GOTO 88
       ++ ~Memories.~ GOTO 88
       ++ ~Sleep.~ GOTO 88
       ++ ~Time.~ GOTO 88
       ++ ~Footsteps.~ DO ~AddExperienceParty(200)~ GOTO 89
       ++ ~Oxygen.~ GOTO 88
       ++ ~Water.~ GOTO 88
       ++ ~Daylight.~ GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~Ah, not quite right. The answer we're looking for is 'footsteps.' A tricky one, isn't it? That'll be 200 gold for this round. Don't worry, the game's still on.~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO 91
END

IF ~~ THEN BEGIN 89
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO 90
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO 90
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO 90
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO 90
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~Walk on the living, they don't even mumble. Walk on the dead, they mutter and grumble.~
       ++ ~Zombies.~ GOTO 92
       ++ ~Grass.~ GOTO 92
       ++ ~Skeletons.~ GOTO 92
       ++ ~Planets.~ GOTO 92
       ++ ~Fire.~ GOTO 92
       ++ ~Leaves.~ DO ~AddExperienceParty(200)~ GOTO 93
END

IF ~~ THEN BEGIN 92
   SAY ~Oops, that's wrong. The answer is 'leaves.' Time to hand over another 200 gold. Let's keep the game rolling and see how you do with the final riddle, shall we?~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO 95
END

IF ~~ THEN BEGIN 93
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO 94
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO 94
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO 94
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO 94
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~Forwards I am heavy, yet backwards I am not.~
       ++ ~A hat.~ GOTO 96
       ++ ~A coat.~ GOTO 96
       ++ ~The past.~ GOTO 96
       ++ ~A thought.~ GOTO 96
       ++ ~A sentence.~ GOTO 96
       ++ ~The present.~ GOTO 96
       ++ ~Ton.~ DO ~AddExperienceParty(200)~ GOTO 97
       ++ ~The future.~ GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~The correct answer is 'ton.' You see, spelled backward it forms the word 'not.' A little play on words there. Now, that's 200 gold for the slip.~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO 98
END

IF ~~ THEN BEGIN 97
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO 98
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO 98
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO 98
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO 98
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~And that's the game! Always a pleasure to test the wits of a fellow guild member. Now, if you'll excuse me, I need to refill my Bag of Mysteries again with more intriguing oddities.~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~Remember, Zeda's always here for a bit of fun and games. Until next time!~
IF ~~ THEN DO ~
   SetGlobalTimer("h_ZedaRiddleTimer2","GLOBAL",ONE_DAY)
   SetGlobal("h_ZedaRiddle2","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 100
   SAY ~You do have a taste for adventure, I'll give you that. Let's make it more interesting this time. Each wrong answer will cost you 300 gold. Think of the thrill!~ IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101
   SAY ~And of course, the prizes, as mysterious and unique as ever. Ready to challenge your mind with my riddles once more?~
       +~PartyGoldGT(1199)~+ ~That's steep, but I'm game. Let's see if I can outsmart your riddles this time around.~ GOTO 102
       +~PartyGoldLT(1200)~+ ~That's more than I can afford right now. I'll have to pass until my coffers are a bit fuller.~ GOTO 55
       ++ ~Actually, I think I'll sit this one out. Maybe I'll try again some other time.~ GOTO 54
END

IF ~~ THEN BEGIN 102
   SAY ~Brave and ready for the higher stakes, I see. Let's see if your wit matches your courage. 300 gold per miss, but the rewards could be worth it. Now, focus and prepare yourself for the first riddle.~ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~I am not alive, but I can grow. I don't have lungs, but I need air. I don't have a mouth, but water kills me. What am I?~
       ++ ~Fire.~ DO ~AddExperienceParty(300)~ GOTO 105
       ++ ~A candle.~ GOTO 104
       ++ ~A cloud.~ GOTO 104
       ++ ~A plant.~ GOTO 104
       ++ ~A Shadow.~ GOTO 104
       ++ ~A bubble.~ GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY ~Not quite right, I'm afraid. The answer is 'fire.' That'll be 300 gold But don't worry, the game is still on. Let's see how you fare with the next riddle.~
IF ~~ THEN DO ~
   TakePartyGold(300)~ GOTO 107
END

IF ~~ THEN BEGIN 105
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftThird","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftThird","GLOBAL",1) GiveItemCreate("BLUN01",LastTalkedToBy,0,0,0)~ GOTO 106
       +~Global("h_RightThird","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightThird","GLOBAL",1) GiveItemCreate("BRAC05",LastTalkedToBy,0,0,0)~ GOTO 106
       +~Global("h_TopThird","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopThird","GLOBAL",1) GiveItemCreate("BULL02",LastTalkedToBy,0,0,0)~ GOTO 106
       +~Global("h_FrontThird","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontThird","GLOBAL",1) GiveGoldForce(1)~ GOTO 106
       +~Global("h_SecretThird","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretThird","GLOBAL",1) GiveItemCreate("MISC57",LastTalkedToBy,0,0,0)~ GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~I am always hungry, I must always be fed. The finger I touch will soon turn red. What am I?~
       ++ ~Fire.~ DO ~AddExperienceParty(300)~ GOTO 109
       ++ ~The sun.~ GOTO 108
       ++ ~A vampire.~ GOTO 108
       ++ ~Rust.~ GOTO 108
       ++ ~A candle.~ GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~The answer is fire, once again. A bit of a double bluff, using the same answer for two different riddles. Keeps you on your toes, doesn't it? That'll be 300 gold. Ready to continue?~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 109
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftThird","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftThird","GLOBAL",1) GiveItemCreate("BLUN01",LastTalkedToBy,0,0,0)~ GOTO 110
       +~Global("h_RightThird","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightThird","GLOBAL",1) GiveItemCreate("BRAC05",LastTalkedToBy,0,0,0)~ GOTO 110
       +~Global("h_TopThird","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopThird","GLOBAL",1) GiveItemCreate("BULL02",LastTalkedToBy,0,0,0)~ GOTO 110
       +~Global("h_FrontThird","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontThird","GLOBAL",1) GiveGoldForce(1)~ GOTO 110
       +~Global("h_SecretThird","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretThird","GLOBAL",1) GiveItemCreate("MISC57",LastTalkedToBy,0,0,0)~ GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~I can be cracked, made, told, and played. What am I?~
       ++ ~A game.~ GOTO 112
       ++ ~A secret.~ GOTO 112
       ++ ~A promise.~ GOTO 112
       ++ ~A joke.~ DO ~AddExperienceParty(300)~ GOTO 113
       ++ ~A puzzle.~ GOTO 112
       ++ ~A dream.~ GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY ~The answer is 'a joke.' That's another 300 gold for the miss. But don't worry, the game's still full of surprises. Let's move on to the next riddle and see if you can reclaim some ground.~
IF ~~ THEN DO ~
   TakePartyGold(300)~ GOTO 115
END

IF ~~ THEN BEGIN 113
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftThird","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftThird","GLOBAL",1) GiveItemCreate("BLUN01",LastTalkedToBy,0,0,0)~ GOTO 114
       +~Global("h_RightThird","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightThird","GLOBAL",1) GiveItemCreate("BRAC05",LastTalkedToBy,0,0,0)~ GOTO 114
       +~Global("h_TopThird","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopThird","GLOBAL",1) GiveItemCreate("BULL02",LastTalkedToBy,0,0,0)~ GOTO 114
       +~Global("h_FrontThird","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontThird","GLOBAL",1) GiveGoldForce(1)~ GOTO 114
       +~Global("h_SecretThird","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretThird","GLOBAL",1) GiveItemCreate("MISC57",LastTalkedToBy,0,0,0)~ GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~Oh, what a delightful treasure you've plucked from my collection of wonders. Each trinket is as unique as the riddles themselves. But don't dawdle, we've got more puzzles to solve.~ IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
   SAY ~I am not alive, but I can die. I have no wings, but I can fly. I have no river, but I can run. I have no mind, yet I'm the smartest one. What am I?~
       ++ ~A river.~ GOTO 116
       ++ ~The wind.~ GOTO 116
       ++ ~A shadow.~ GOTO 116
       ++ ~A flame.~ GOTO 116
       ++ ~A clock.~ DO ~AddExperienceParty(300)~ GOTO 117
       ++ ~A mountain.~ GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~The answer is 'a joke.' That's another 300 gold for the miss. But don't worry, the game's still full of surprises. Let's move on to the next riddle and see if you can reclaim some ground.~
IF ~~ THEN DO ~
   TakePartyGold(300)~ GOTO 118
END

IF ~~ THEN BEGIN 117
   SAY ~That is correct. Now, delve into the depths of the Bag of Mysteries and seize your well-earned reward. Which pocket shall it be? Choose wisely, for each one holds a secret of its own.~
       +~Global("h_LeftThird","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftThird","GLOBAL",1) GiveItemCreate("BLUN01",LastTalkedToBy,0,0,0)~ GOTO 118
       +~Global("h_RightThird","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightThird","GLOBAL",1) GiveItemCreate("BRAC05",LastTalkedToBy,0,0,0)~ GOTO 118
       +~Global("h_TopThird","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopThird","GLOBAL",1) GiveItemCreate("BULL02",LastTalkedToBy,0,0,0)~ GOTO 118
       +~Global("h_FrontThird","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontThird","GLOBAL",1) GiveGoldForce(1)~ GOTO 118
       +~Global("h_SecretThird","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretThird","GLOBAL",1) GiveItemCreate("MISC57",LastTalkedToBy,0,0,0)~ GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~Well, that was a whirlwind of wit and wonder, wasn't it? You've proven to be quite the contender. I'll have to think up some even more cunning riddles for our next game.~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~Until then, keep those gears turning. Thanks for playing, and remember, the Bag of Mysteries is always here, waiting for your next daring attempt.~
IF ~~ THEN DO ~
   SetGlobal("h_ZedaRiddle3","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 120
   SAY ~That's within my expertise. Child's play for someone of my skills, really. If she can meet my price, getting her son to Athkatla will be no trouble at all. I have my methods, discreet and efficient.~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~Let her know, once the coin is in hand, her son's safety and swift travel to Athkatla are guaranteed. Challenges of such nature are what I excel in.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 122
   SAY ~That's within my expertise. Child's play for someone of my skills, really. If she can meet my price, getting them to Athkatla will be no trouble at all. I have my methods, discreet and efficient.~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~Let her know, once the coin is in hand, their safety and swift travel to Athkatla are guaranteed. Challenges of such nature are what I excel in.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWorkGood","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN 124
   SAY ~I'm grabbin' myself a bow and heading for cover! I'm not much of the fighting type.~ IF ~~ THEN EXIT
END

CHAIN
     IF WEIGHT #-1 ~Global("h_WhitewoodDialog","GLOBAL",2) Global("h_WatchAssault","GLOBAL",1)~ THEN h_zedadd BET_0
~What in the abyss is goin' on? We've got company, mates! I knew I smelled somethin' funny!~
   =
~It's the Commander of the City Watch! And, by gods... that double-crossin' wretch, <CHARNAME>! Defend the hideout, quick!~
   == h_baldwd
~You've got a lot of gall, <CHARNAME>, showin' your traitorous face here.~
   =
~And you, Commander, what an unpleasant surprise. This ain't the city streets you're used to. You've both crossed a line, and there'll be a reckoning.~
   == h_whited
~You've brought this upon yourself, Baldwin. Your reign of terror ends today. The City Watch won't tolerate this any longer. Surrender now, or face the consequences of your actions.~
   == h_baldwd
~Surrender? You've got more bravado than sense, Commander. This den's a fortress, and you'll pay in blood for your trespassing.~
  == h_whited
~We'll see about that now, won't we? Your time is up, Baldwin. Men, advance! Take down any who stand in our way!~
   DO ~
      SetGlobal("h_HelpCityWatch","GLOBAL",1)
      SetGlobal("h_WhitewoodDialog","GLOBAL",3)
      ActionOverride("h_gilbac",EscapeArea())
      ActionOverride("h_gamesc",EscapeArea())
      ActionOverride("h_game2c",EscapeArea())
      ActionOverride("h_game3c",EscapeArea())
      ActionOverride("h_meredc",EscapeArea())
      ActionOverride("h_ilenac",EscapeArea())
      ActionOverride("h_rafaec",EscapeArea())
      ActionOverride("h_miriac",EscapeArea())
      ActionOverride("h_dariuc",EscapeArea())~
EXIT
