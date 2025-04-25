effect give @s minecraft:levitation 1 0 true
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/brad/bradpassive2
execute if entity @e[type=area_effect_cloud,tag=Bradheadbuttplace,distance=..2] run function kits:char/brad/headbuttend
