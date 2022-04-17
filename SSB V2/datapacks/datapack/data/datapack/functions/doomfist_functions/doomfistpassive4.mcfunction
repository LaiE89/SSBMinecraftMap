scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={RaycastTimer=31}] run tp @s ~ ~ ~
execute as @s[scores={RaycastTimer=..30}] positioned ~ ~0.5 ~ run function datapack:doomfist_functions/doomfistpassive4