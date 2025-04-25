function kits:main/reset
execute if entity @a[tag=Vergil] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Vergil] run function kits:char/vergil/kit
