tp @s[tag=zoddsword] ~ ~ ~ ~20 ~
tp @s[tag=zoddaxe] ~ ~ ~ ~-20 ~
execute as @s[tag=zoddsword] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/swordparticles
execute as @s[tag=zoddaxe] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/axeparticles

scoreboard players set @s RaycastTimer 0
scoreboard players set @s RaycastTimer2 0
execute at @s positioned ^ ^1 ^1 run function datapack:labyrinth_functions/labyrinthbosses/zodd/raycast1
execute at @s positioned ^ ^1 ^1 run function datapack:labyrinth_functions/labyrinthbosses/zodd/raycast2

tag @a[tag=ZoddCleaved] remove ZoddCleaved