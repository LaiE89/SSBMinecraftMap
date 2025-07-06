summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["ZedUltShadow2"]}
execute at @e[type=armor_stand,tag=ZedUltShadow,limit=1,sort=nearest] run tp @s ~ ~ ~
tp @e[type=armor_stand,tag=ZedUltShadow,limit=1,sort=nearest] @e[type=area_effect_cloud,tag=ZedUltShadow2,limit=1,sort=nearest]
tag @s add ZedNoSwitch2