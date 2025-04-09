function kits:_main/reset
execute if entity @a[tag=Isaac] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Isaac] run function kits:isaac/kit
