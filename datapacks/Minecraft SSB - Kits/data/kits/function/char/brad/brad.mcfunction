function kits:main/reset
execute if entity @a[tag=Brad] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Brad] run function kits:char/brad/kit
