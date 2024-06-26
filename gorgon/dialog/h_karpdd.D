APPEND Karp

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",7) Global("h_KarpWork","GLOBAL",0) Global("h_KarpWorkGood","GLOBAL",0) Global("h_KarpGood","GLOBAL",0) Global("h_KarpBad","GLOBAL",0)~ THEN BEGIN K_0
   SAY @42000 /* Looks like we'll be gettin' a good harvest this year, thank the gods for that. Now, what is it I can help you with? */
       ++ @42001 /* I'm here about the rings you've found, Karp. */ GOTO K_1
END
 
IF ~~ THEN BEGIN K_1
   SAY @42002 /* Rings, you say? I'm not sure I follow you, stranger. There's been nothin' but turnips and the like from these fields. But you... you don't look like any simple buyer or farmer. Who sent you here? */ IF ~~ THEN GOTO K_2
END

IF ~~ THEN BEGIN K_2
   SAY @42003 /* The folks I deal with know better than to send someone who sticks out like a sore thumb. And you sure don't match the description of the buyer I was expectin' from Ulgoth's Beard. */ IF ~~ THEN GOTO K_3
END

IF ~~ THEN BEGIN K_3
   SAY @42004 /* You best explain yourself quickly, 'cause I don't take kindly to uninvited questions about my personal affairs. */
       ++ @42005 /* I'm not asking, Karp. Give me the rings, or things might get unpleasant. Consider this your only warning. */ GOTO K_4
       ++ @42006 /* Think about what your husband would do if he found out about your dealings. Want to avoid that? Give me the rings. */ GOTO K_4
       ++ @42007 /* The road from Ulgoth's Beard was fraught with danger. Bandits left me looking rougher than intended. */ GOTO K_11
       ++ @42008 /* I can't help but wonder why you're selling these rings under the table. What are you afraid of, Karp? */ GOTO K_21
END

IF ~~ THEN BEGIN K_4
   SAY @42009 /* Wait, wait! Just hold on a moment, please! Don't do anything rash. Let... Let me explain, just give me a chance! */ IF ~~ THEN GOTO K_5
END

IF ~~ THEN BEGIN K_5
   SAY @42010 /* These rings, they're all I have to get away from here. My husband, he's... he's not a good man. He beats me, and my boy too. */ IF ~~ THEN GOTO K_6
END

IF ~~ THEN BEGIN K_6
   SAY @42011 /* I've been selling whatever I can find in the fields, trying to scrape together enough to flee south, to Athkatla. My sister, she's willing to take us in. I can't stay here, not any longer. */ IF ~~ THEN GOTO K_7
END

IF ~~ THEN BEGIN K_7
   SAY @42012 /* Please, you have to understand, I'm doing this for my son, to give us a chance at a better life, away from the violence and fear. I'm begging you, have some mercy. */
       ++ @42013 /* Your story is unfortunate, Karp, but it changes nothing. Hand over the rings now, or you'll deeply regret it. */ GOTO K_8
       ++ @42014 /* Maybe I can help you get to Athkatla, and in return you can provide me with the rings. */ GOTO K_10.2
END

IF ~~ THEN BEGIN K_8
   SAY @42015 /* Alright, alright! I'll give you the rings. Just take them and go. I can't risk you or anyone else getting violent. My boy... I have to think about him. Please, just leave us be after this. */
       ++ @42016 /* Smart decision, Karp. It's good you chose to comply without further fuss. I'll be taking these off your hands now. */ GOTO K_9
       ++ @42017 /* I doubt that's all you've been hiding. Hand over everything else you've found buried around here, or you'll find out just how unpleasant I can get. */ GOTO K_10
END

IF ~~ THEN BEGIN K_9
   SAY @42018 /* Just take them and go! G-get away from me! */
IF ~~ THEN DO ~
   SetGlobal("h_KarpBad","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy())
   GiveItem("RING06",LastTalkedToBy())
   ReputationInc(-1)~ EXIT
END
   
IF ~~ THEN BEGIN K_10
   SAY @42019 /* You're taking everything from us, aren't you? F-fine, take it all, you... you monster! */
IF ~~ THEN DO ~
   SetGlobal("h_KarpBad","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy())
   GiveItem("RING06",LastTalkedToBy())
   GiveItem("h_misc06",LastTalkedToBy())
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN K_10.2
   SAY @42020 /* Help me... get to Athkatla? I must admit, I didn't expect an offer like this. */ IF ~~ THEN GOTO K_10.4
END

IF ~~ THEN BEGIN K_10.4
   SAY @42021 /* Look, I'm wary of strangers bearing promises, but if you truly can find a safe way for me and my boy to reach Athkatla, then... I'd be willing to part with the rings. */ IF ~~ THEN GOTO K_10.6
END

IF ~~ THEN BEGIN K_10.6
   SAY @42022 /* But not before. They're all I have right now. Once I'm safely away from here, away from him, the rings are yours. */ IF ~~ THEN GOTO K_10.8
END

IF ~~ THEN BEGIN K_10.8
   SAY @42023 /* I'll be around here in the meantime, tending to the farm. */
IF ~~ THEN DO ~
   SetGlobal("h_KarpWorkGood","GLOBAL",1)
   AddJournalEntry(@318,QUEST)~ EXIT
END

IF ~~ THEN BEGIN K_11
   SAY @42024 /* Bandits, you say? That's unfortunate, but these roads can be treacherous. I must admit, you're not quite what I was expecting, but these are strange times indeed. */ IF ~~ THEN GOTO K_12
END

IF ~~ THEN BEGIN K_12
   SAY @42025 /* You claim to be the buyer, and while I have no reason to doubt you, understand my need for some reassurance. These dealings are delicate, after all. You do understand my position, don't you? */
       +~CheckStatGT(Player1,17,INT)~+ @42026 /* If I were not the intended buyer, how would I know of the rings' existence? The improbability of a coincidence here speaks to the truth of my claim. */ GOTO K_18
       +~CheckStatLT(Player1,18,INT)~+ @42026 /* If I were not the intended buyer, how would I know of the rings' existence? The improbability of a coincidence here speaks to the truth of my claim. */ GOTO K_14
       +~CheckStatGT(Player1,17,WIS)~+ @42027 /* Wisdom guides us to expect the unexpected, especially on treacherous roads. Let's not allow unforeseen complications to cloud our purpose here. */ GOTO K_18
       +~CheckStatLT(Player1,18,WIS)~+ @42027 /* Wisdom guides us to expect the unexpected, especially on treacherous roads. Let's not allow unforeseen complications to cloud our purpose here. */ GOTO K_14
       +~CheckStatGT(Player1,17,CHR)~+ @42028 /* Your caution is understandable, but let me assure you, my intentions are as clear as they are sincere. Let's proceed with trust and see this arrangement to a successful end. */ GOTO K_18
       +~CheckStatLT(Player1,18,CHR)~+ @42028 /* Your caution is understandable, but let me assure you, my intentions are as clear as they are sincere. Let's proceed with trust and see this arrangement to a successful end. */ GOTO K_14
END

IF ~~ THEN BEGIN K_13
   SAY @42029 /* I'm sorry, but something here just doesn't add up. You claim to be the buyer, yet something about this meeting feels amiss. */ IF ~~ THEN GOTO K_14
END

IF ~~ THEN BEGIN K_14
   SAY @42030 /* If you truly are who you say you are, then you would know the answer to a simple question. It's a code we agreed upon, a little security measure. */ IF ~~ THEN GOTO K_15
END

IF ~~ THEN BEGIN K_15
   SAY @42031 /* So, tell me, what did one snowman say to the other snowman? Only the true buyer would know the answer to this. */
       ++ @42032 /* I'm having a meltdown! */ GOTO K_16
       ++ @42033 /* I've got a frosty feeling about this... */ GOTO K_16
       ++ @42034 /* We are stuck in a bloody snowglobe! */ GOTO K_16
       ++ @42035 /* Smells like carrots. */ GOTO K_18
       ++ @42036 /* Ice to meet you. */ GOTO K_16
       ++ @42037 /* Let's roll. */ GOTO K_16
       ++ @42038 /* Forget this game, Karp. I'm not here to play riddles. Hand over the rings now or things are going to get unpleasant. */ GOTO K_4
END

IF ~~ THEN BEGIN K_16
   SAY @42039 /* You're not who you claim to be, are you? I don't know what you're after, but you won't find it here. */ IF ~~ THEN GOTO K_17
END

IF ~~ THEN BEGIN K_17
   SAY @42040 /* I suggest you leave now, before I take this matter to someone who can deal with liars and thieves. Don't test my patience any further. */
       ++ @42041 /* I apologize for the deception, Karp. My intentions aren't to harm you. I'm genuinely curious about these rings and why you've been so secretive about them. */ GOTO K_21
       ++ @42042 /* Enough of this charade. I'm not leaving here without those rings. Hand them over swiftly, or you'll find that my patience has run dangerously thin. */ GOTO K_4
END

IF ~~ THEN BEGIN K_18
   SAY @42043 /* You really are the buyer from Ulgoth's Beard. My apologies for being cautious, but I suppose one can't be too careful these days. */ IF ~~ THEN GOTO K_19
END

IF ~~ THEN BEGIN K_19
   SAY @42044 /* Now, let's get down to business. Here are the rings, and I'll accept 1000 gold in return, as agreed upon. Let's make sure this transaction goes smoothly. */
       +~PartyGoldGT(999)~+ @42045 /* Here's the 1000 gold as agreed. Pleasure doing business with you. */ GOTO K_25
       +~CheckStatGT(Player1,13,CHR)~+ @42046 /* The broker who arranged our meeting will handle the payment. They'll ensure you get what's due once I confirm the rings are genuine. */ GOTO K_20
       +~CheckStatLT(Player1,14,CHR)~+ @42046 /* The broker who arranged our meeting will handle the payment. They'll ensure you get what's due once I confirm the rings are genuine. */ GOTO K_16
END

IF ~~ THEN BEGIN K_20
   SAY @42047 /* Alright then, I suppose that makes sense. The broker did mention something about handling the finances. Just make sure they know the deal is done and the rings are with you now. */ IF ~~ THEN GOTO K_26
END

IF ~~ THEN BEGIN K_21
   SAY @42048 /* Your sudden honesty is as surprising as it is suspicious. But since you know about the rings, I might as well tell you the whole truth. */ IF ~~ THEN GOTO K_22
END

IF ~~ THEN BEGIN K_22
   SAY @42049 /* These rings, they're more than just buried treasures. They're my only hope for a better life. My husband, he's... he's cruel, to me and our boy. */ IF ~~ THEN GOTO K_23
END

IF ~~ THEN BEGIN K_23
   SAY @42050 /* He knows nothing of these rings, and that's how it must stay. I've been secretly selling what I find to save enough to flee to Athkatla, where my sister has promised us refuge. */ IF ~~ THEN GOTO K_24
END

IF ~~ THEN BEGIN K_24
   SAY @42051 /* That's all there is to it. Now you know, so what's your play here? */
       ++ @42013 /* Your story is unfortunate, Karp, but it changes nothing. Hand over the rings now, or you'll deeply regret it. */ GOTO K_8
       ++ @42014 /* Maybe I can help you get to Athkatla, and in return you can provide me with the rings. */ GOTO K_10.2
END

IF ~~ THEN BEGIN K_25
   SAY @42052 /* Thank you, truly. This gold... it's more than just coin to me; it's a chance for a new beginning. I hope these rings serve you well, as they're now a part of my family's hope for a better future. */ IF ~~ THEN GOTO K_26
END

IF ~~ THEN BEGIN K_26
   SAY @42053 /* You know, you seem like someone who might have connections. I don't suppose you know anyone reliable who could... discreetly escort me and my son to Athkatla? */ IF ~~ THEN GOTO K_27
END

IF ~~ THEN BEGIN K_27
   SAY @42054 /* I have a sister there, and we need to get to her safely. It's a long journey, and the roads can be dangerous. Any help or guidance would be greatly appreciated. */
       ++ @42055 /* I'll look into it and get back to you. */ GOTO K_28
       ++ @42056 /* Sorry, I'm currently tied up with other pressing matters and can't assist you right now. */ GOTO K_40
END

IF ~~ THEN BEGIN K_28
   SAY @42057 /* Oh, thank you! That means more to me than I can express. Just knowing there's someone willing to help gives me hope. */ IF ~~ THEN GOTO K_29
END

IF ~~ THEN BEGIN K_29
   SAY @42058 /* Please, let me know if you find anyone. My son and I will be ready to leave as soon as it's safe. You have my deepest gratitude. */ IF ~~ THEN GOTO K_30
END

IF ~~ THEN BEGIN K_30
   SAY @42023 /* I'll be around here in the meantime, tending to the farm. */
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_misc17",LastTalkedToBy())
   GiveItem("RING06",LastTalkedToBy())~ EXIT
END

IF WEIGHT #-1 ~OR(2) GlobalGT("h_KarpWorkGood","GLOBAL",0) GlobalGT("h_KarpWork","GLOBAL",0) Global("h_KarpGood","GLOBAL",0)~ THEN BEGIN K_31
   SAY @42059 /* Oh, you've returned! I've been anxiously awaiting any news. Were you able to find someone to help us travel safely to Athkatla? */
       +~!Global("h_KarpWorkGood","GLOBAL",2) !Global("h_KarpWork","GLOBAL",2)~+ @42060 /* I'm sorry, I haven't found anyone just yet. I'll let you know as soon as I have something concrete. */ GOTO K_32
       +~Global("h_KarpWorkGood","GLOBAL",2)~+ @42061 /* I have something lined up for you in Beregost. Leave tonight with your son, and you'll be contacted upon your arrival in the city. */ GOTO K_34
       +~Global("h_KarpWork","GLOBAL",2)~+ @42061 /* I have something lined up for you in Beregost. Leave tonight with your son, and you'll be contacted upon your arrival in the city. */ GOTO K_37
END

IF ~~ THEN BEGIN K_32
   SAY @42062 /* I understand, these things can take time. I appreciate you not forgetting about us and continuing to look. Please, do let me know as soon as you find a safe way for us. */ IF ~~ THEN GOTO K_33
END

IF ~~ THEN BEGIN K_33
   SAY @42063 /* Every day here is a day too long, but knowing there's someone out there trying to help gives me a bit of hope. Thank you. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN K_34
   SAY @42064 /* Oh, thank you, truly! You've brought us more than just assistance, you've brought us hope. Here are the rings, as I promised. And, there's something else I'd like you to have. */ IF ~~ THEN GOTO K_35
END

IF ~~ THEN BEGIN K_35
   SAY @42065 /* I found it buried in the field over a month ago. It's odd, unlike anything I've ever seen, and no one I've approached could make sense of it. */ IF ~~ THEN GOTO K_36
END

IF ~~ THEN BEGIN K_36
   SAY @42066 /* Maybe it's of some value or use to someone with your resources and connections. Consider it a token of my deepest appreciation for your help. Safe travels, and farewell. */
IF ~~ THEN DO ~
   SetGlobal("h_KarpGood","GLOBAL",1)
   AddJournalEntry(@320,QUEST)
   GiveItem("h_misc17",LastTalkedToBy())
   GiveItem("RING06",LastTalkedToBy())
   GiveItem("h_misc06",LastTalkedToBy())
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN K_37
   SAY @42067 /* Words can hardly express my gratitude for what you've done. You've turned what seemed an impossible dream into a hopeful reality. As a token of my appreciation, please, take this. */ IF ~~ THEN GOTO K_38
END

IF ~~ THEN BEGIN K_38
   SAY @42065 /* I found it buried in the field over a month ago. It's odd, unlike anything I've ever seen, and no one I've approached could make sense of it. */ IF ~~ THEN GOTO K_39
END

IF ~~ THEN BEGIN K_39
   SAY @42066 /* Maybe it's of some value or use to someone with your resources and connections. Consider it a token of my deepest appreciation for your help. Safe travels, and farewell. */
IF ~~ THEN DO ~
   SetGlobal("h_KarpGood","GLOBAL",1)
   AddJournalEntry(@320,QUEST_DONE)
   GiveItem("h_misc06",LastTalkedToBy())
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN K_40
   SAY @42068 /* I understand, I won't impose further. Safe travels on your own journeys, and should our paths cross again, perhaps fortunes will align differently. Farewell for now. */
IF ~~ THEN DO ~
   SetGlobal("h_KarpGood","GLOBAL",3)
   AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy())
   GiveItem("RING06",LastTalkedToBy())~ EXIT
END

IF WEIGHT #-1 ~Global("h_KarpBad","GLOBAL",1)~ THEN BEGIN K_41
   SAY @42069 /* Just leave me and my boy in peace, that's all I ask! */
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_KarpGood","GLOBAL",1)~ THEN BEGIN K_42
   SAY @42070 /* Thank you so much. I'll gather our things and get my boy ready. We'll leave for a better life soon, all thanks to you. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN K_43
   SAY @42071 /* I couldn't leave. There wasn't enough coin for both me and my boy, so I sent him ahead to Athkatla. He's safe there now, and that's all that matters. */ IF ~~ THEN GOTO K_44
END

IF ~~ THEN BEGIN K_44
   SAY @42072 /* When my husband found out, he... he was furious. He took his anger out on me. */ IF ~~ THEN GOTO K_45
END

IF ~~ THEN BEGIN K_45
   SAY @42073 /* Later that night, he went off to the Belching Dragon, got himself good and drunk. The next day, they found him in the river, a nasty wound on his head, drowned. */ IF ~~ THEN GOTO K_46
END

IF ~~ THEN BEGIN K_46
   SAY @42074 /* They think he fell in, hit his head on the rocks. I'll stay on the farm for now, just glad my boy is safe... */
IF ~~ THEN DO ~
   SetGlobal("h_KarpGood","GLOBAL",3)~ EXIT
END

END

EXTEND_TOP Karp 0
   +~GlobalGT("h_RigaldoQuest","GLOBAL",7) Global("h_KarpGood","GLOBAL",2)~+ @42075 /* Karp, I thought you'd be on your way to Athkatla by now. Is there something wrong? */ GOTO K_43
   ++ @42076 /* I'll be going now. */ EXIT
END
