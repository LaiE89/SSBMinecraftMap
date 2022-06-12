scoreboard players set @s RaycastTimer 0 
execute at @s positioned ~ ~1.5 ~ run function datapack:mob_functions/mobpassive2
particle minecraft:flash ~ ~ ~ 0 0 0 0 20
scoreboard players set @s Ability4CD 0