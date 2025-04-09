function kits:_main/reset
execute if entity @a[tag=Luffy] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Luffy] run function kits:luffy/kit
