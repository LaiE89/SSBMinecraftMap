scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={RaycastTimer=13}] run tp @s ~ ~ ~
execute as @s[scores={RaycastTimer=..12}] positioned ~ ~0.5 ~ run function datapack:doomfist_functions/doomfistpassive3