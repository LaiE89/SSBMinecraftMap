scoreboard players reset @s kits.timer4
playsound minecraft:entity.bee.hurt neutral @a[distance=..20] ~ ~ ~ 2 0.5 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1,Tags:["raidencrescent","raidencrescent1"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1,Tags:["raidencrescent","raidencrescent2"]}
tp @e[type=area_effect_cloud,tag=raidencrescent] @s
execute as @e[type=area_effect_cloud,tag=raidencrescent2] at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @e[type=area_effect_cloud,tag=raidencrescent] at @s run tp @s ~ ~ ~ ~ 90
execute as @e[type=area_effect_cloud,tag=raidencrescent] at @s run function kits:char/raiden/crescentparticles
tag @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] add RaidenCrescentSliced 
execute as @e[tag=RaidenCrescentSliced] run function kits:char/raiden/damage
tag @s add RaidenAirCrescent
scoreboard players set @s kits.ability2CD 0
