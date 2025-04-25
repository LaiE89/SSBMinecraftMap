function kits:main/reset
execute if entity @a[tag=Sekiro] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Sekiro] run function kits:char/sekiro/kit