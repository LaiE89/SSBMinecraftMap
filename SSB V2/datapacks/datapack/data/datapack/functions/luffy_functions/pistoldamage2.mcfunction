tag @s add LuffyKB2
function datapack:damage2
tag @s remove LuffyGrabbed
effect clear @s levitation
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 3 1 1
particle minecraft:explosion ~ ~1 ~
execute as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol] at @s run scoreboard players set @s RaycastTimer 0 
execute as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=FullyChargedLuffyPistol] at @s positioned ~ ~1.5 ~ run function datapack:luffy_functions/luffypassive4
tag @e[tag=LuffyKB2] remove LuffyKB2