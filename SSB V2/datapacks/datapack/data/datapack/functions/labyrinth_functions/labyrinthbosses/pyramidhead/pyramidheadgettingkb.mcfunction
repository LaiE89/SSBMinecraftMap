function datapack:damage1
scoreboard players set @s RaycastTimer 0
execute at @s facing entity @e[type=zombie,tag=PyramidHead,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/pyramidheadkb