BEGIN h_doriad

CHAIN
   IF ~Global("h_DorianQuest","GLOBAL",0)~ THEN h_doriad 0
@30000 /* Ah, Silas, my esteemed friend, you stand on the precipice of acquiring a treasure beyond measure. */
   =
@30001 /* Among my recent acquisitions, a collection of tomes of varying rarity, one stands as the crown jewel. */
   =
@30002 /* 'Netheril's Grimoire of Lost Arcana'. Its secrets have the power to reshape the very fabric of magic itself. */
   == h_silasd
@30003 /* Indeed, Dorian, the rumors of this grimoire have reached even the distant enclaves of Halruaa. */
   =
@30004 /* The potential within its pages is said to rival the most ancient tomes of our art. */
   == h_doriad
@30005 /* Within its confines lie incantations thought lost to time, spells that could unlock unimaginable potential. */
   == h_silasd
@30006 /* Your reputation as a master of acquisition is well-earned. Your services are invaluable to those who seek true power. */
   =
@30007 /* Tell me, how did you come across this grimoire? I've heard whispers it was being safeguarded by the monks of Candlekeep. */
   == h_doriad
@30008 /* It so happened that this precious tome was en route to the hallowed halls of Candlekeep, nestled within the confines of a heavily-guarded caravan. */
   =
@30009 /* With the cloak of night, and a well-timed intervention, I liberated it from their watchful eyes, leaving the monks none the wiser. */
   == h_silasd
@30010 /* A daring feat, indeed. However, do not underestimate the monks when it comes to safeguarding their knowledge. */
   =
@30011 /* They are known to possess formidable resources and an unyielding dedication to their collection of tomes. The pursuit of enlightenment is a sacred charge for them. */
   == h_doriad
@30012 /* Your caution is duly noted. Rest assured, my approach was calculated and my tracks have been well-covered. */
   =
@30013 /* The monks of Candlekeep will find no thread to unravel in their pursuit. */
   =
@30014 /* 'Netheril's Grimoire' is yours to claim, secure in the knowledge that it was acquired with the utmost discretion. */
   == h_silasd
@30015 /* It seems you spoke too soon, Dorian. Look, we have company. */
   =
@30016 /* Do you see the purpose in their eyes? It's a purpose that most certainly coincides with our current endeavor. */
   == h_doriad
@30017 /* Well, it appears our discretion has been compromised. No witnesses can be allowed, of course. Prepare yourself, Silas. */
   DO ~
      SetGlobal("h_DorianQuest","GLOBAL",1)
      ActionOverride("h_silasc",Enemy())
      Enemy()~
EXIT
