execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace,limit=1,sort=nearest] feet run function kits:char/noctis/projectile/move
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace,distance=..3] run execute positioned as @e[type=area_effect_cloud,tag=noctisthrowplace,limit=1,sort=nearest] run tp @s ~ ~ ~
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace,distance=..3] run kill @s
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace,distance=..3] run function kits:char/noctis/throwlanded
