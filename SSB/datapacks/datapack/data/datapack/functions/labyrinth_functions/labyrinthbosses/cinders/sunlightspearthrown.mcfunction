tp @s ^ ^ ^1.5
execute unless block ~ ~1.5 ~ air run kill @s
execute positioned ~ ~1.5 ~ run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearparticles

execute if entity @a[distance=..2] run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspeardamage