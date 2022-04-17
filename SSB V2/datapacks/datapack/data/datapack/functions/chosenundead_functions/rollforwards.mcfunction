kill @e[type=area_effect_cloud,tag=DarkSoulsRoll]
scoreboard players set @s Timer8 0
tag @s add ChosenUndeadResting
particle minecraft:block minecraft:gravel ~ ~0.5 ~ 1 0 1 0 50
playsound minecraft:block.gravel.fall neutral @a[distance=..20] ~ ~ ~ 3 0.5 1
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:chosenundead_functions/chosenundeadpassive3
execute if entity @e[type=area_effect_cloud,tag=DarkSoulsRoll,distance=..3] run kill @e[type=area_effect_cloud,tag=DarkSoulsRoll]