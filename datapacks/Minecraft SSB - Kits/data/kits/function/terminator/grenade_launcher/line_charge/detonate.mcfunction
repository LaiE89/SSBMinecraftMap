## When Line Charge Grenade Starts Detonating
# Motion
data merge entity @s {Motion:[0.0,1.1,0.0]}

# Allows hit enemies to be hit again
tag @e[tag=TerminatorLineChargeGrenadeHit] remove TerminatorLineChargeGrenadeHit

# Sound
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 1 1.5 1
