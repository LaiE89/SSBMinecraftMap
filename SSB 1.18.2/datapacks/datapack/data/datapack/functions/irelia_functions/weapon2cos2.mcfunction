playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 3 2 1
scoreboard players set @e[type=armor_stand,tag=IreliaStuns] Timer 0
scoreboard players set @s RaycastTimer3 0 
execute at @s positioned ~ ~1.5 ~ run function datapack:irelia_functions/ireliapassive4
tag @s remove IreliaFlawlessDuet