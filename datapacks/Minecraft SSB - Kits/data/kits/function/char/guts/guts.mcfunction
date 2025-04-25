function kits:main/reset
execute if entity @a[tag=Guts] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Guts] run function kits:char/guts/kit
