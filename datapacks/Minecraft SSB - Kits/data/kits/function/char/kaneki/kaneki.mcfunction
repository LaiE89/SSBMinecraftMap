function kits:main/reset
execute if entity @a[tag=Kaneki] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Kaneki] run function kits:char/kaneki/kit
