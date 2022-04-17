particle minecraft:smoke ~ ~1 ~ 0.4 1 0.4 0 100
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:alucard_functions/alucardpassive3
scoreboard players remove @s Timer2 3
scoreboard players set @s Ability4CD 0