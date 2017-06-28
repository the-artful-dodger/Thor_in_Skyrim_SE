Scriptname AddThunderPerkScript extends ObjectReference 
;{Adds Heart of Thunder perk (at least it's supposed to)}

Perk Property ThunderPerk  Auto  
;{Defines the perk.}
objectreference Property AbandonedChest  Auto

SPELL Property WrathThunder  Auto

Event OnActivate(objectreference abandonedchest)
	debug.trace("thunder script is running")
	if !game.getplayer().HasPerk(thunderperk) && !game.getplayer().HasSpell(wraththunder)
     	   Game.GetPlayer().AddPerk(ThunderPerk)
	   Game.GetPlayer().AddSpell(WrathThunder)
           Debug.Notification("You possess the Heart of Thunder.")
	endif
EndEvent


  

 

  

  
