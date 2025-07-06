scoreboard players reset @s kits.timer3
effect clear @s minecraft:strength
execute at @s rotated ~ 0 run function kits:char/edward/circleparticles2
execute at @s run playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] at @s run playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] at @s run execute as @e[distance=..7,tag=!Edward,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/edward/wall/explodedamage
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] at @s run function kits:char/edward/wall/explodedebris
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] at @s run function kits:char/edward/wall/break
scoreboard players set @s kits.ability3CD 0
