playsound minecraft:entity.bat.takeoff neutral @a[distance=..20] ~ ~ ~ 5 0 1
particle sweep_attack ~ ~2 ~ 0 0 0 0 1 force
particle sweep_attack ~ ~1 ~ 0 0 0 0 1 force
particle sweep_attack ~ ~ ~ 0 0 0 0 1 force
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~ ~ rotated ~ 0 run function kits:char/cynthia/lucario/extremespeedlocation
scoreboard players set @s kits.ability1CD 0
