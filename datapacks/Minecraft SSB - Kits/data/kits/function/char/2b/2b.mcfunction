function kits:main/reset
execute if entity @a[tag=2B] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=2B] run function kits:char/2b/kit
