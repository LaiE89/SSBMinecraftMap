function kits:main/reset
execute if entity @a[tag=Zed] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Zed] run function kits:char/zed/kit
