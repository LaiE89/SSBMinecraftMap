function kits:main/reset
execute if entity @a[tag=Kirito] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Kirito] run function kits:char/kirito/kit
