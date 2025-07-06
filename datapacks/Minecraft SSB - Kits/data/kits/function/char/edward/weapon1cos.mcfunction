kill @e[type=minecraft:block_display,tag=EdwardWall]
kill @e[type=area_effect_cloud,tag=EdwardWallLocation]
kill @e[type=minecraft:interaction,tag=EdwardWallInteraction]
function kits:char/edward/transmuteweaponback
execute at @s rotated ~ 0 run function kits:char/edward/circleparticles
playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/edward/wall/location
scoreboard players set @s kits.ability1CD 0
