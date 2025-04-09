tag @p[tag=Kratos] add KratosPull
kill @e[type=minecraft:area_effect_cloud,tag=kratoshookplace]
execute at @p[tag=Kratos] run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute at @p[tag=Kratos] run playsound minecraft:entity.player.attack.weak neutral @a[distance=..20] ~ ~ ~ 3 0 1
scoreboard players reset @s kits.timer
