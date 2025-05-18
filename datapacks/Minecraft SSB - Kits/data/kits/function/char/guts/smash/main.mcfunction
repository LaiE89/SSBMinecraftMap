execute as @p[tag=Guts] at @s facing entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination] eyes run tp @s ^ ^ ^1.25
execute as @p[tag=Guts] at @s if entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination,distance=..2] run execute at @s run function kits:char/guts/smash/dashend
execute at @p[tag=Guts] rotated as @s rotated ~ 0 run tp @s[tag=GutsDragonslayerSmashPrep] ^ ^1 ^-2

execute positioned ^ ^ ^1 run function kits:char/guts/dragonslayerparticles2
execute if entity @s[tag=!GutsDragonslayerSmashPrep] run scoreboard players set @s kits.raycastTick 0
execute if entity @s[tag=!GutsDragonslayerSmashPrep] run function kits:char/guts/smash/raycastdamage

tp @s[tag=!GutsDragonslayerSmashPrep,tag=GutsDragonslayerSmashFlipped] ~ ~ ~ ~ ~25
tp @s[tag=!GutsDragonslayerSmashPrep,tag=!GutsDragonslayerSmashFlipped] ~ ~ ~ ~ ~-25

execute if entity @s[tag=!GutsDragonslayerSmashPrep,x_rotation=-90] run tag @s add GutsDragonslayerSmashFlipped
execute if entity @s[tag=!GutsDragonslayerSmashPrep,x_rotation=-90] run tp @s ~ ~ ~ ~180 ~

execute if entity @s[x_rotation=30..90,tag=GutsDragonslayerSmashFlipped] run function kits:char/guts/smash/end