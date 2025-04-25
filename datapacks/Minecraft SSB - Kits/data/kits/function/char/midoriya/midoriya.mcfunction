function kits:main/reset
execute if entity @a[tag=Midoriya] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Midoriya] run function kits:char/midoriya/kit
