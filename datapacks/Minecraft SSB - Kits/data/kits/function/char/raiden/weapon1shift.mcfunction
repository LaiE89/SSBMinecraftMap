playsound minecraft:block.gravel.fall neutral @a[distance=..20] ~ ~ ~ 10 1 1
scoreboard players set @s kits.raycastTick 0
execute as @s at @s positioned ~ ~1.5 ~ run function kits:char/raiden/raidenpassive2
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1,Tags:["raidencrescent","raidencrescent1"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1,Tags:["raidencrescent","raidencrescent2"]}
tp @e[type=area_effect_cloud,tag=raidencrescent] @s
execute as @e[type=area_effect_cloud,tag=raidencrescent2] at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @e[type=area_effect_cloud,tag=raidencrescent] at @s run tp @s ~ ~ ~ ~ 90
execute as @e[type=area_effect_cloud,tag=raidencrescent] at @s run function kits:char/raiden/crescentparticles
scoreboard players set @s kits.ability2CD 0
