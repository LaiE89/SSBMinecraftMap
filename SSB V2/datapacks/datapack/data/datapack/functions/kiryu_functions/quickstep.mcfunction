particle minecraft:block minecraft:dirt ~ ~0.2 ~ 1 0 1 0 100
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..10] ~ ~ ~ 3 1 1
scoreboard players set @s RaycastTimer 0 
execute at @s positioned ~ ~1.5 ~ run function datapack:kiryu_functions/kiryupassive3
scoreboard players set @s Ability1CD 0