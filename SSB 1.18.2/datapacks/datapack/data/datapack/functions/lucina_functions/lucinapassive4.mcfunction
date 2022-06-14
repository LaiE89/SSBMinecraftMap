scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222..}] positioned ~ ~ ~ run tp @s ~ ~-1.5 ~
execute if entity @s[scores={RaycastTimer2=13}] run tp @s ~ ~ ~

execute as @s[scores={RaycastTimer2=..12}] positioned ~ ~0.5 ~ run function datapack:lucina_functions/lucinapassive4