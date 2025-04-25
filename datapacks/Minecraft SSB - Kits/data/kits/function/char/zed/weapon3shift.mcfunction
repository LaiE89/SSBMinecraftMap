summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["ultshadow2"]}
tp @s @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest]
tp @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest] @e[type=area_effect_cloud,tag=ultshadow2,limit=1,sort=nearest]
tag @s add ZedNoSwitch2