particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.4 2 0.4 0 1000
particle minecraft:poof ~ ~ ~ 0.4 2 0.4 0.01 500
function datapack:damage1

scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:mob_functions/mobpassive6