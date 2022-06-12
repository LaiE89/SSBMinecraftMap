scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:lucina_functions/lucinapassive3
effect give @s levitation 1 0 true
particle minecraft:block minecraft:dirt ~ ~0.5 ~ 2 0 2 0.5 100
playsound minecraft:block.gravel.fall neutral @a[distance=..20] ~ ~ ~ 10 1 1
scoreboard players set @s Ability2CD 0
execute if entity @e[type=area_effect_cloud,tag=LucinaDestination,distance=..3] run function datapack:lucina_functions/criticalhitend