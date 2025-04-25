function kits:main/reset
execute if entity @a[tag=Dragonborn] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Dragonborn] run function kits:char/dragonborn/kit
