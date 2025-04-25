execute as @e[type=area_effect_cloud,tag=ChargingLuffyPistol] at @s run tp @s ^ ^ ^-0.5 facing entity @p[tag=Luffy]
scoreboard players set @s kits.raycastTick 0
execute rotated ~ 0 positioned ~ ~ ~ run function kits:char/luffy/pistol/destinationpreview