scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ~ ~ ~ run tp @s ~ ~2 ~
execute as @s[scores={RaycastTimer=..1111}] positioned ~ ~-0.5 ~ run function datapack:doomfist_functions/doomfistpassive5