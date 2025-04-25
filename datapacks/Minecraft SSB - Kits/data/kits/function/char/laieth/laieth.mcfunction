function kits:main/reset
execute if entity @a[tag=Laieth] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Laieth] run function kits:char/laieth/kit
