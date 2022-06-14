scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:saber_functions/saberpassive2
effect give @s minecraft:absorption 2 1 true
particle minecraft:end_rod ~ ~1 ~ 0.4 1 0.4 0 30
particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.4 1 0.4 0 100
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1
scoreboard players set @s Ability2CD 0