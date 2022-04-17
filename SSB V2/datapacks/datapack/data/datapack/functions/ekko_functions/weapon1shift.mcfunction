scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:ekko_functions/ekkopassive4
particle minecraft:end_rod ~ ~ ~ 0.8 1.4 0.8 0 50
playsound minecraft:entity.guardian.death neutral @p[distance=..30] ~ ~ ~ 2 2 1
playsound minecraft:block.conduit.deactivate neutral @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @s Ability2CD 0