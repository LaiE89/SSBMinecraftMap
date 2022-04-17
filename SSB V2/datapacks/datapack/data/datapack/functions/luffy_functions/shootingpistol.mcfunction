scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:luffy_functions/luffypassive5
playsound minecraft:entity.player.attack.strong neutral @a[distance=..15] ~ ~ ~ 5 0 1
execute at @e[tag=ChargingLuffyPistol,type=armor_stand] run summon armor_stand ~ ~ ~ {Tags:["LuffyPistolAngle"],Invisible:1b,NoGravity:1b,Invulnerable:1,DisabledSlots:2039583}
tag @e[tag=ChargingLuffyPistol,type=armor_stand] add FullyChargedLuffyPistol
tag @e[tag=ChargingLuffyPistol,type=armor_stand] remove ChargingLuffyPistol
tag @s remove LuffyUsingPistol