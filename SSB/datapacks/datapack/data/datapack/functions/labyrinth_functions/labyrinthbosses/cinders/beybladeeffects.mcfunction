tp @s ~ ~ ~ ~30 ~
particle minecraft:dust 0 0 0 2 ^ ^1 ^1 0 0 0 0 1
particle minecraft:dust 0 0 0 2 ^ ^1 ^2 0 0 0 0 1
particle minecraft:dust 1 0.3 0 3 ^ ^1 ^3 0 0 0 0 1
particle minecraft:dust 1 0.3 0 3 ^ ^1 ^4 0 0 0 0 1
particle minecraft:dust 1 0.5 0 3 ^ ^1 ^5 0 0 0 0 1
particle minecraft:dust 1 0.5 0 3 ^ ^1 ^6 0 0 0 0 1

execute positioned ~-6 ~1 ~-6 as @a[dx=12,dy=0,dz=12,tag=!CinderCleaveDamage] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/beybladedamage

execute if data entity @s {Age:12} run tag @a[tag=CinderCleaveDamage] remove CinderCleaveDamage

