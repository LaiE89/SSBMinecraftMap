damage @s 6 bypass:player_attack by @p[tag=Ryze]
particle enchanted_hit ~ ~1 ~ 0 0 0 1 30 force
execute if entity @s[tag=RyzeFlux] run function kits:char/ryze/fluxdamage
kill @e[type=area_effect_cloud,tag=overload]
