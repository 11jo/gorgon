BEGIN h_pits2d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @50500 /* If you're aiming to step into the arena, you'd best be sure you're ready. Weakness doesn't last long here. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY @50501 /* Well now, what brings you before me, newcomer? Looking for a taste of true combat, are you? */ 
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~~ THEN BEGIN 1
   SAY @50506 /* My tale was forged in the bitter cold of the Spine of the World. Born to the Uthgardt, the tribe of the Elk, hearty folk who knew the ways of the tundra better than most. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @50507 /* Life there was harsh, unforgiving. Survival wasn't just a choice, it was a way of life. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @50508 /* As I grew, I trained with the tribe, learning the art of war from seasoned warriors who'd seen it all. The tundra, you see, it's a cruel teacher, but it hones one's spirit like no other. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @50509 /* When I came of age, I set out to explore the world beyond. Found myself in places like Ten Towns, where the chill cuts to the bone, and the bitter winds echo the rigors of life. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @50510 /* Over the years, I honed my skills, learned to harness raw power, and earned my scars in battles that would make your head spin. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @50511 /* The pits, they call to me now. A new challenge, a new proving ground. The fire still burns within, and I aim to see just how bright it can blaze. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @50512 /* So, that's the tale. Now, enough jawing. If you're looking to test yourself, step up. I'll give you a taste of true combat. */
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~~ THEN BEGIN 8
   SAY @50513 /* They're about raw power, about knowing your own strength and using it to crush your foes. Cunning's for the shadows, but in the pits, it's muscle that matters most. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @50514 /* When you're in there, let anger fuel you. Let it be the fire that makes you hit harder and swing faster. This ain't no dance, it's a brawl. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @50515 /* You're there to hit and hit hard. In the pits, it's about grit, guts and survival of the fittest. Only the strongest walk out. */
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~~ THEN BEGIN 11
   SAY @50516 /* This beast of a blade has been with me for longer than I can remember. It's an old Dwarven make, forged from frost giant bones deep within the Spine of the World. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @50517 /* The weapon came into my possession during the tumultuous times of the Ten Towns, back when the Companions of the Hall were stirrin' up more trouble than they could rightly handle. */ IF ~~ THEN GOTO 12.5
END

IF ~~ THEN BEGIN 12.5
   SAY @50518 /* The blade belonged to a warrior of repute, from my own tribe, who took a liking to the dual-handed style. But his time with the weapon was short-lived, and he left it behind in his wake. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @50519 /* I found it abandoned in the snow, half-buried in the aftermath of a skirmish. The moment my hands closed around the hilt, I knew it was meant for me. */ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY @50520 /* It's been with me ever since, cleavin' through foes and earnin' its share of scars. It's not just a weapon, but a part of me. It's seen me through the worst of times and brought me out the other side. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @50521 /* So, I fight with it, honoring the legacy it carries and wieldin' it with the same fury it had in its prime. */
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @50522 /* Go on then, and remember, strength above all else. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 17
   SAY @50523 /* You bested Khalid, did you? You've got potential, no doubt about it. But don't let your guard down. The pits hold fiercer challenges yet. */
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 18
   SAY @50524 /* You've got some skill, I'll admit it. But don't go thinking this makes you invincible. There's always someone stronger, always another challenge. Keep your guard up. */
       ++ @50525 /* Thanks, Grom. You're a true warrior. */ GOTO 19
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~~ THEN BEGIN 19
   SAY @50526 /* Yeah, yeah. Go on, now. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 20
   SAY @50527 /* Lyria's a crafty one, always dancing around. You showed some real mettle in that fight. Wasn't an easy battle, but it never is in the pits. It's only gonna get tougher from here. */
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 21
   SAY @50528 /* You've got some fight in you. I've tangoed with Serra a time or two doing our trials in the North, and she's no pushover. You're starting to make a name for yourself here. */
       ++ @50502 /* Grom, tell me about your history. What's your story? */ GOTO 1
       ++ @50503 /* What can you tell me about the pits? Any hard-earned lessons you'd be willing to share? */ GOTO 8
       ++ @50504 /* I see you fight with a two-handed weapon. What led you to favor that style? */ GOTO 11
       ++ @50505 /* I'll be going now. */ GOTO 16
END

IF ~Global("h_BeatRoran","GLOBAL",2)~ THEN BEGIN 22
   SAY @50529 /* Hah! Roran's been dethroned! You've got some real strength in those bones of yours. If anyone stands a chance against Isla, it's you. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",4)~ THEN BEGIN 23
   SAY @50530 /* Hah! Isla's returned, and she's not here for a friendly spar. This is gonna be a fight to remember! */ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY @50531 /* You've got your work cut out for you, but I know you're up for the challenge. Embrace the battle, my friend. It's what we live for! */ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",5)~ THEN BEGIN 25
   SAY @50532 /* Brutal and unforgiving, just the way a fight should be. You've proven yourself as a force to be reckoned with. */ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY @50533 /* Isla was a legend, and you've etched your name beside hers in the blood-soaked sands. */ IF ~~ THEN EXIT
END