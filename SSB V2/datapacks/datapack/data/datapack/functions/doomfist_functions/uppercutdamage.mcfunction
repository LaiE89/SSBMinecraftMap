effect give @s minecraft:slow_falling 1 0 true
function datapack:damage1
effect give @p[tag=Doomfist] minecraft:absorption 1 0 true
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1 ~ run function datapack:doomfist_functions/doomfistpassive3