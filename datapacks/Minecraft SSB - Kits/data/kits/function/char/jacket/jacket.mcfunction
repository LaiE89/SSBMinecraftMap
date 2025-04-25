function kits:main/reset
execute if entity @a[tag=Jacket] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Jacket] run function kits:char/jacket/kit
