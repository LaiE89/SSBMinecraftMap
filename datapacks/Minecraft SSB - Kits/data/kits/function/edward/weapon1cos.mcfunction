kill @e[type=minecraft:block_display,tag=EdwardWall]
kill @e[type=area_effect_cloud,tag=EdwardWallLocation]
kill @e[type=minecraft:interaction,tag=EdwardWallInteraction]
scoreboard players reset @s kits.timer3
effect clear @s minecraft:strength
execute at @s rotated ~ 0 run function kits:edward/circleparticles
playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:edward/walllocation
scoreboard players set @s kits.ability1CD 0
