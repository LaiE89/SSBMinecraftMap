tag @s add LuffyKB
function datapack:damage1
tag @s remove LuffyGrabbed
effect clear @s levitation
playsound minecraft:entity.generic.hurt neutral @a[distance=..20] ~ ~ ~ 3 0 1
particle minecraft:explosion ~ ~1 ~
execute as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol] at @s run scoreboard players set @s RaycastTimer 0 
execute as @e[type=armor_stand,tag=LuffyPistol,tag=!ChargingLuffyPistol,tag=!FullyChargedLuffyPistol] at @s positioned ~ ~1.5 ~ run function datapack:luffy_functions/luffypassive3
tag @e[tag=LuffyKB] remove LuffyKB