scoreboard players add @s RaycastTimer 1

execute as @s[scores={RaycastTimer=0..13}] run tag @a[distance=..1.5] add ZoddCleaved 

execute as @a[tag=ZoddCleaved] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/cleavedamage

execute as @s[scores={RaycastTimer=..13}] positioned ^ ^ ^0.5 run function datapack:labyrinth_functions/labyrinthbosses/zodd/raycast1