scoreboard players set @s RaycastTimer3 0
playsound minecraft:block.beacon.activate neutral @a[distance=..50] ~ ~ ~ 2 2 1
execute at @s positioned ~ ~1.5 ~ run function datapack:ekko_functions/ekkopassive3
scoreboard players set @s Ability3CD 0