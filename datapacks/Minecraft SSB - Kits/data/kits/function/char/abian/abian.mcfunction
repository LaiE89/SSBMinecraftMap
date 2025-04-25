function kits:main/reset
execute if entity @a[tag=Abian] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Abian] run function kits:char/abian/kit
