function kits:main/reset
execute if entity @a[tag=Ryze] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Ryze] run function kits:char/ryze/kit
