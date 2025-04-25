particle sneeze ~ ~1.5 ~ 0.3 0.3 0.3 0 2 force

execute if entity @e[type=minecraft:area_effect_cloud,tag=PKFlashPlace,limit=1,sort=nearest] as @s at @s facing entity @e[type=minecraft:area_effect_cloud,tag=PKFlashPlace,limit=1,sort=nearest] eyes run tp @s ^ ^0.2 ^0.35
execute if entity @e[type=minecraft:area_effect_cloud,tag=PKFlashPlace,distance=..1] run function kits:char/ness/psiflashend
