playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0 1
particle minecraft:block minecraft:dirt ~ ~0.5 ~ 2 0 2 0 100
scoreboard players set @s RaycastTimer2 0
execute at @s positioned ~ ~1.5 ~ run function datapack:luffy_functions/luffypassive7
scoreboard players set @s Ability2CD 0