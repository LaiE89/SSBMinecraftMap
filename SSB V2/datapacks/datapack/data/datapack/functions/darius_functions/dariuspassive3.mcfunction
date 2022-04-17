scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer2 2222
execute as @s[scores={RaycastTimer2=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={RaycastTimer2=11}] run tp @s ~ ~ ~
execute as @s[scores={RaycastTimer2=..10}] positioned ~ ~0.5 ~ run function datapack:darius_functions/dariuspassive3