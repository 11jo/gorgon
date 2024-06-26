BEGIN h_varlid

IF ~True()~ THEN BEGIN 0
   SAY @65000 /* By the gods! What is the meaning of this intrusion? Identify yourself at once! */
       ++ @65001 /* Your own allies want you dead, Lord Varlind. What have you uncovered that's made you a target? */ GOTO 2.5
       ++ @65002 /* I'm here to collect the bounty on your head. You won't leave this room alive. */ GOTO 1
       ++ @65003 /* (Snap his neck.) */ DO ~Kill("h_varlic") AddJournalEntry(@453,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
   SAY @65004 /* Wait, you don't understand! I am a key figure in the politics of Baldur's Gate. My knowledge, my influence, it all serves to maintain order and stability. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @65005 /* I am the beacon of hope for Baldur's Gate. Without me, the delicate balance that keeps this city from spiraling into chaos will shatter! */
       ++ @65006 /* And what exactly do you mean by that? Why is there a bounty on your head? */ GOTO 3
       ++ @65007 /* Sorry, Varlind, but that's not my concern. (Snap his neck.) */ DO ~Kill("h_varlic") AddJournalEntry(@453,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2.5
   SAY @65008 /* So, the day has come, has it? I knew something wicked was afoot, but to think they'd actually make a move against me... */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @65009 /* You must understand, there's new players in town, ones whose motives are shrouded in darkness. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @65010 /* These... newcomers, they've fabricated tensions with Amn to manipulate the political landscape. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @65011 /* My recent meeting with the Amnian emissary here has confirmed that the rumors of enmity and mobilization are entirely false. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @65012 /* This organization, they've gained favor with the Grand Dukes, including Belt. My suspicions and unwillingness to align myself with them are what's made me a target. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @65013 /* But I assure you, there's more to this than meets the eye. There's a malevolence lurking beneath the surface, and I fear what they might do next. */
       ++ @65014 /* You're a marked man, Varlind. Get out of Baldur's Gate before it's too late. */ GOTO 8
       ++ @65015 /* Interesting last words. Goodbye, Varlind. */ DO ~Kill("h_varlic") AddJournalEntry(@453,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @65016 /* I cannot abandon Baldur's Gate in its hour of need. This city has weathered storms far graver than this, and it will endure yet again. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9       
   SAY @65017 /* I am not one to cower in the face of adversity. It is my duty to protect the people and uphold what is right. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @65018 /* I will stand ready, for the sake of Baldur's Gate and all who call it home. If my fate is to be decided in this turbulent time, so be it. But, I will not go quietly. */
       ++ @65019 /* Your bravery is commendable, Lord Varlind. Baldur's Gate is fortunate to have someone like you. */ GOTO 11
       ++ @65020 /* Stubbornness won't save you, Varlind. Sometimes survival means making hard choices. */ GOTO 12
       ++ @65021 /* Is there truly no alternative? Is there no path that ensures both your safety and the city's future? */ GOTO 14
END

IF ~~ THEN BEGIN 11
   SAY @65022 /* Thank you for your kind words. It heartens me to know that there are those who still believe in the strength and resilience of Baldur's Gate. Together, we will weather this storm. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12
   SAY @65023 /* Perhaps you're right. It's possible that my resolve blinds me to more pragmatic options. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @65024 /* But sometimes, one's duty demands a certain level of stubbornness. I will face this challenge head-on, consequences be damned. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14
   SAY @65025 /* I've weighed my options, considered every angle. At this juncture, I see no alternative that guarantees both the city's safety and my own. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @65026 /* It is a difficult decision, but it is one I make with a heavy heart, and with the knowledge that I do so for the greater good. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @65027 /* Remember, even in the darkest times, Baldur's Gate has a way of finding its light. Farewell, and thank you for doing what's right. */
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",1)
   AddJournalEntry(@454,QUEST)
   EscapeArea()~ EXIT
END