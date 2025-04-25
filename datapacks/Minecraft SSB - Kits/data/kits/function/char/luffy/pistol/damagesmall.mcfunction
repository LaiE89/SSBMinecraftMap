scoreboard players add @p[tag=Luffy,tag=!LuffyGear] kits.timer2 10
playsound minecraft:entity.generic.hurt neutral @a[distance=..20] ~ ~ ~ 3 0 1
playsound minecraft:entity.generic.big_fall neutral @a[distance=..20] ~ ~ ~ 3 0 1

particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @e[type=area_effect_cloud,tag=LuffyPistol,tag=!ChargingLuffyPistol] at @s run scoreboard players set @s kits.raycastTick 0 
execute as @e[type=area_effect_cloud,tag=LuffyPistol,tag=!ChargingLuffyPistol] at @s positioned ~ ~1 ~ run function kits:char/luffy/pistol/knockback {"Distance":"10"}