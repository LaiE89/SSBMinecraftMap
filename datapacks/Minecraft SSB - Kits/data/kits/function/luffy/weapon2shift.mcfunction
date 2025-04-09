playsound minecraft:item.crossbow.quick_charge_1 neutral @a[distance=..20] ~ ~ ~ 10 2 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["LuffyGrab","projectile"]}
tp @e[type=area_effect_cloud,tag=LuffyGrab] @s
scoreboard players set @s kits.ability4CD 0
