function kits:main/reset
execute if entity @a[tag=Raiden] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Raiden] run function kits:char/raiden/kit
