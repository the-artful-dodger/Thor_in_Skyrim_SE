Scriptname HammerpusheffectScript extends ActiveMagicEffect  

Event OnEffectStart(actor Target, actor Caster)
 if target.isinkillmove() == 0 
	Caster.PushActorAway(Target, PushForce)
 endif
EndEvent


Int Property PushForce  Auto  
