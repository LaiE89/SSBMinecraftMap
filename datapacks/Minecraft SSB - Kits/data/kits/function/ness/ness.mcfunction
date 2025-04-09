function kits:_main/reset
execute if entity @a[tag=Ness] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Ness] run function kits:ness/kit
