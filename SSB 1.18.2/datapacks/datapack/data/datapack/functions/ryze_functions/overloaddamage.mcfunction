function datapack:damage1
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 30
execute if entity @s[tag=RyzeFlux] run function datapack:ryze_functions/fluxdamage
kill @e[type=area_effect_cloud,tag=overload]