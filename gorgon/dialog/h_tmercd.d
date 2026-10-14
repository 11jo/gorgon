BEGIN h_tmercd

IF ~True()~ THEN BEGIN 0
   SAY @63000 /* Here, we cater to those with discerning tastes. No questions asked, just transactions made. */
       ++ @63001 /* Alright, let's see what you've got. */ GOTO STORE_1
       ++ @63002 /* I'll pass for now, thanks. */ EXIT
END

IF ~~ THEN BEGIN STORE_1
   SAY @63003 /* Step right up, my friend. */
IF ~~ THEN DO ~
   StartStore("sto4901",LastTalkedToBy(Myself))~ EXIT // StartStore("h_tensto",LastTalkedToBy(Myself))~
END
