summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["meathook","projectile"]}
tp @e[type=area_effect_cloud,tag=meathook] @s

playsound minecraft:item.trident.riptide_3 neutral @a[distance=..20] ~ ~ ~ 2 2 1
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.ability3CD 0
scoreboard players set @s kits.ability1CD 20
