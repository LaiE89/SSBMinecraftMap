summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["zedshadow2"]}
tp @s @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest]
tp @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest] @e[type=area_effect_cloud,tag=zedshadow2,limit=1,sort=nearest]
tag @s add ZedNoSwitch