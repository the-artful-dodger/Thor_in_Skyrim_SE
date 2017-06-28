Scriptname ThunderBookScript extends ObjectReference  

import Debug
import Game
import Utility

Book Property ThunderBook auto

bool Property HasBeenRead = false auto

Perk Property ThunderReward auto

Spell Property WrathoftheThunderer auto

Spell Property KynesFury auto


Function ReadPerkBook(bool fromWorld)
	if (HasBeenRead)
		return
	endif
  
  Actor player = GetPlayer();

  if(!player.HasPerk(ThunderReward))
    player.AddPerk(ThunderReward)
	player.addspell(WrathoftheThunderer)
	player.addspell(KynesFury)
    HasBeenRead = true
  endif
  
  if(HasBeenRead)
    Notification("You possess the Heart of Thunder.") 
  endif
endFunction

Event OnEquipped(Actor reader)
	if(reader != GetPlayer())
		return
	endif

	; Notification("Player reading perk book from inventory.")
	WaitMenuMode(1.0)
	ReadPerkBook(false)
EndEvent

Event OnActivate(ObjectReference reader)
	if(reader != GetPlayer() || IsActivationBlocked())
		return
	endif

	; Notification("Player reading perk book from world.")
	WaitMenuMode(1.0)
	ReadPerkBook(true)
EndEvent