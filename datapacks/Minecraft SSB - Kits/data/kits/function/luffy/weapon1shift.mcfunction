tag @s add LuffyUsingPistol
playsound minecraft:item.crossbow.quick_charge_3 neutral @a[distance=..15] ~ ~ ~ 3 0 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:80,Tags:["LuffyPistol","ChargingLuffyPistol","projectile"]}
scoreboard players set @s kits.ability1CD 0
