summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["ZedShadow2"]}
execute at @e[type=armor_stand,tag=ZedShadow,limit=1,sort=nearest] run tp @s ~ ~ ~
tp @e[type=armor_stand,tag=ZedShadow,limit=1,sort=nearest] @e[type=area_effect_cloud,tag=ZedShadow2,limit=1,sort=nearest]
tag @s add ZedNoSwitch