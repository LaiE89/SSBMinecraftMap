#effect give @s slowness 1 9 true
particle minecraft:flash ~ ~1 ~ 0 0 0 0 5 force
summon area_effect_cloud ~ ~ ~ {Tags:["2bspear","2bspearforward","projectile"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20}
summon area_effect_cloud ~ ~ ~ {Tags:["2bspear","2bspearbackward","projectile"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20}
tp @e[type=area_effect_cloud,tag=2bspear] @s
data modify entity @e[type=area_effect_cloud,tag=2bspearforward,limit=1] Rotation[1] set value 0f
data modify entity @e[type=area_effect_cloud,tag=2bspearbackward,limit=1] Rotation[1] set value 0f
execute as @e[type=area_effect_cloud,tag=2bspearforward] at @s run tp @s ^ ^ ^2
execute as @e[type=area_effect_cloud,tag=2bspearbackward] at @s run tp @s ^ ^ ^-2
scoreboard players set @s kits.ability3CD 0
