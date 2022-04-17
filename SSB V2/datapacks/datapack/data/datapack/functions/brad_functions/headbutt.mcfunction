effect give @s minecraft:levitation 1 0 true
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:brad_functions/bradpassive2
execute if entity @e[type=area_effect_cloud,tag=Bradheadbuttplace,distance=..2] run function datapack:brad_functions/headbuttend