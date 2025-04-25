function kits:main/reset
execute if entity @a[tag=Ekko] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Ekko] run function kits:char/ekko/kit
