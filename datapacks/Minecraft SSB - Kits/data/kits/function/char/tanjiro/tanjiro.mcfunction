function kits:main/reset
execute if entity @a[tag=Tanjiro] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Tanjiro] run function kits:char/tanjiro/kit
