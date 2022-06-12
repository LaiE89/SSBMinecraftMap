playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 3 2 1
scoreboard players set @s Timer 0 
scoreboard players set @s RaycastTimer2 0 
execute at @s positioned ~ ~1.5 ~ run function datapack:irelia_functions/ireliapassive3
tag @s add IreliaFlawlessDuet
scoreboard players set @s Ability3CD 0