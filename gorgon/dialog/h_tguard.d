BEGIN h_tguard

IF ~True()~ THEN BEGIN 0
   SAY @60000 /* Good to see you, <CHARNAME>. You're all clear to enter. */ IF ~~ THEN EXIT
END