BEGIN h_bmar5d

IF ~True()~ THEN BEGIN 0
   SAY @18000 /* Charms and enchantments, cloaked in secrecy. My trinkets hold power that cling to the edges of legend. Do you seek protection, or perhaps a subtler edge? Peruse my collection and choose your hidden advantage. */
       ++ @18001 /* Reveal your hidden wares. I'm in search of a charm that whispers of power and secrets yet to be told. */ DO ~StartStore("h_bm5sto",LastTalkedToBy(Myself))~ EXIT
       ++ @18002 /* Another time, perhaps. */ EXIT
END
