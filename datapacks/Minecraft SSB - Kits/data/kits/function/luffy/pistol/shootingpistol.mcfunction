scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:luffy/pistol/destination
playsound minecraft:entity.player.attack.strong neutral @a[distance=..15] ~ ~ ~ 5 0 1
execute at @e[type=area_effect_cloud,tag=ChargingLuffyPistol] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["LuffyPistolAngle"]}
tag @e[type=area_effect_cloud,tag=ChargingLuffyPistol] remove ChargingLuffyPistol
tag @s remove LuffyUsingPistol
