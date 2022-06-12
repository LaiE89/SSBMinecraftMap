particle minecraft:block minecraft:gravel ~ ~0.5 ~ 1 0 1 0 50
playsound minecraft:block.gravel.fall neutral @a[distance=..20] ~ ~ ~ 3 0.5 1
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadraycast