execute at @s run scoreboard players set @s RaycastTimer 0
execute at @s run function datapack:doomfist_functions/doomfistpassive4
effect clear @s slowness
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..30] ~ ~ ~ 10 0 1
particle minecraft:cloud ~ ~-20 ~ 0.4 10 0.4 0 500
effect give @s minecraft:levitation 4 0 true