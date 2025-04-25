execute at @s positioned ~ ~ ~ rotated ~ 0 run function kits:char/ekko/phasedive/rolldirection
particle minecraft:end_rod ~ ~ ~ 0.8 1.4 0.8 0 50 force
playsound minecraft:entity.guardian.death neutral @p[distance=..30] ~ ~ ~ 2 2 1
playsound minecraft:block.conduit.deactivate neutral @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players reset @s kits.timer2
scoreboard players set @s kits.ability2CD 0
