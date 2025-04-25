scoreboard players add @s[tag=LuffyPistol,tag=!ChargingLuffyPistol] kits.timer 1

execute if entity @s[tag=!ChargingLuffyPistol] if entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] at @s[tag=!ChargingLuffyPistol] facing entity @e[tag=LuffyPistolDestination,limit=1,sort=nearest] feet run tp @s ^ ^ ^2

execute if entity @e[tag=LuffyPistolDestination,type=area_effect_cloud,distance=..3] run function kits:char/luffy/pistol/pistolending
execute if score @s kits.timer matches 80.. run function kits:char/luffy/pistol/pistolending

execute at @s[tag=!ChargingLuffyPistol] as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth] at @s run function kits:char/luffy/pistol/pistoldamage

execute at @s[tag=ChargingLuffyPistol] run execute if entity @p[tag=Luffy] as @e[type=area_effect_cloud,tag=LuffyPistol,tag=ChargingLuffyPistol] at @s positioned ~ ~0.75 ~ facing entity @p[tag=Luffy] feet run function kits:char/luffy/arm/particles
execute at @e[type=area_effect_cloud,tag=LuffyPistolAngle] run execute if entity @p[tag=Luffy] as @e[type=area_effect_cloud,tag=LuffyPistolAngle] at @s positioned ~ ~0.75 ~ facing entity @p[tag=Luffy] feet run function kits:char/luffy/arm/particles
execute at @s[tag=!ChargingLuffyPistol] run execute if entity @e[type=area_effect_cloud,tag=LuffyPistolAngle] as @e[type=area_effect_cloud,tag=LuffyPistol,tag=!ChargingLuffyPistol] at @s positioned ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=LuffyPistolAngle] feet positioned ~ ~0.75 ~ run function kits:char/luffy/arm/particles2

#execute at @s positioned ~ ~1.75 ~ run function kits:char/luffy/pistol/punchparticles
