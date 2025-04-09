scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:ekko/ekkopassive4
particle end_rod ~ ~ ~ 0.8 1.4 0.8 0 50 force
playsound minecraft:entity.guardian.death neutral @p[distance=..30] ~ ~ ~ 2 2 1
playsound minecraft:block.conduit.deactivate neutral @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @s kits.ability2CD 0
