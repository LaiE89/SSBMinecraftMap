tp @s ~ ~ ~ ~20 ~
particle minecraft:dust 1 1 1 1 ^ ^1 ^1 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^1.25 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^1.5 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^1.75 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^2 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^2.25 0 0 0 0 0
particle minecraft:dust 1 1 1 1 ^ ^1 ^2.5 0 0 0 0 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^3 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^3.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^4 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^4.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^5.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^6 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^6.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^7 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^7.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^8 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^8.5 0 0 0 10 0
particle minecraft:dust 0.25 0.25 0.25 4 ^ ^1 ^9 0 0 0 10 0

scoreboard players set @s RaycastTimer 0
scoreboard players set @s RaycastTimer2 0
execute at @s positioned ^ ^1 ^1 run function datapack:guts_functions/gutspassive2
execute at @s positioned ^ ^1 ^1 run function datapack:guts_functions/gutspassive3

tag @e[tag=GutsCleaved] remove GutsCleaved