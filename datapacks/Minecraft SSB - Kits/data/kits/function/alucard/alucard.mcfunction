function kits:_main/reset
execute if entity @a[tag=Alucard] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Alucard] run function kits:alucard/kit
