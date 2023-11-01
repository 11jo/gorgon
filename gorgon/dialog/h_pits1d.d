BEGIN h_pits1d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Peace be with you, traveler.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY ~In the midst of the fray, there lies a certain stillness, a centering force. Can you feel it too?~
       ++ ~I've experienced it. It's as if time slows, and clarity emerges from chaos. What do you believe is the source of this, 'stillness'?~ GOTO 1
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 1
   SAY ~Ah, what you describe is the manifestation of what we monks call 'Ki'.~ IF ~~ THEN GOTO 1.5
END

IF ~~ THEN BEGIN 1.5
   SAY ~It is the life force that courses through all living things, an energy that connects us to the very essence of existence.~ IF~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~In moments of intense focus and discipline, one can attune themselves to this force, tapping into a wellspring of inner strength and tranquility.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~It allows us to move with purpose and clarity, even amidst the chaos of battle.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Through rigorous training and unwavering devotion, we learn to harness this energy, finding our center and drawing from it in times of need.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~It is a path of discipline and enlightenment, a journey towards understanding the profound connection between mind, body, and spirit.~
       ++ ~Can you teach me the art of this energy?~ GOTO 6
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 6
   SAY ~Ah, young seeker, the art of Ki is not easily conveyed through words alone. It is a power that must be felt, experienced, and integrated into your very being.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~In the heat of battle, amidst the clash of steel and the surge of adrenaline, you will find the true essence of Ki.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~The fighting pits, my friend, offer an unparalleled opportunity to hone this energy. Through every strike, every parry, and every breath, you will draw closer to understanding.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~It is in the crucible of combat that the secrets of Ki reveal themselves, and there, you shall find your path.~
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 10
   SAY ~I hail from Damara, a land scarred by the relentless tides of conflict. In my youth, Withermeet, my village, nestled within the Bloodstone Lands, faced its share of trials.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~It was a place of humble lives, bound by the bonds of community. Yet, fate dealt us a cruel hand.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Mercenaries, driven by greed and malice, descended upon us, leaving naught but ruin and ash in their wake. My parents, stalwart defenders of our home, fell valiantly in the face of darkness.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Orphaned and marked by the horrors I'd witnessed, I embarked on a desperate pilgrimage. It led me to the Monastery of the Yellow Rose, a sanctuary perched high in the Earthspur Mountains.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~The monks, dedicated to the Suffering God, Ilmater, welcomed me with open arms. They recognized the pain etched in my spirit and took me under their wing.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Within those ancient walls, I learned the ways of Ki, channeling my anguish into strength.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Years passed, and the echoes of that fateful day still haunted my dreams. Restlessness stirred within me, urging me to face the world once more.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~The shadows of my past called to me, compelling me to seek a path beyond the monastery's embrace.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~And so, with the teachings of Ki as my guide, I left the sanctuary, carrying with me the scars of that tragic day and the hope of finding purpose in a wider world.~
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 19
   SAY ~The pits, they offer a rawness, a purity in combat that resonates with my spirit. Here, amidst the clash of steel and the thunder of cheers, one discovers the true essence of oneself.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~I find a reflection of my journey, a mirror to my past, and a glimpse into my future. It's a path of growth, of understanding, and perhaps, even redemption.~
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Good luck in your trials, and may you find strength in every challenge you face.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 22
   SAY ~Well fought, my friend. Your skill and determination are evident. You've proven yourself a force to be reckoned with in these pits.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~There's a fire within you, a drive that's hard to miss. We danced on the edge of discipline and instinct out there, and it was an honor to spar with you.~
       ++ ~Your martial arts were formidable and I learned much from our bout.~ GOTO 24
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~~ THEN BEGIN 24
   SAY ~It was an honor to face you in the arena. Your defensive style made it a true test of my patience and precision. Every strike had to be calculated, every move deliberate.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~The pits are a forge for our spirits, a place where we temper our skills. Should you ever seek to refine your art further, you know where to find me.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 26
   SAY ~Remember, every victory is a step toward becoming a true champion. Stay focused and keep honing your skills. The road ahead is fraught with even greater challenges.~
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 26
   SAY ~I observed your bout with Lyria. Her agility and trickery proved challenging. A good warrior knows how to adapt and learn from each match. It will serve you well in the pits.~
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 27
   SAY ~Impressive, indeed. Serra is no easy opponent. Her skill with the bow is something to be admired.~
       ++ ~What can you tell me about 'Ki'?~ GOTO 1.5
       ++ ~I'm interested in learning more about you. Is there anything you can tell me about yourself?~ GOTO 10
       ++ ~Why do you fight in the pits, Khalid?~ GOTO 19
       ++ ~I'll be going now.~ GOTO 21
END

IF ~Global("h_BeatRoran","GLOBAL",2)~ THEN BEGIN 28
   SAY ~By the gods, you've done it! You bested Roran, the reigning champion! Your mastery over ki is truly something to behold. You've certainly earned your place among the best in the pits.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",4)~ THEN BEGIN 29
   SAY ~Isla's return... It troubles my heart. I believe all life is sacred, and such fights go against the teachings I hold dear.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~You must approach this with wisdom and caution, my friend. May you find a way to resolve this without unnecessary loss.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",5)~ THEN BEGIN 31
   SAY ~I cannot condone the taking of a life, even in the heat of battle. It saddens me to see such an end, but I understand that the pits have their own way of settling disputes.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Your skill is undeniable, and it is clear you possess a strength that cannot be ignored.~ IF ~~ THEN EXIT
END



