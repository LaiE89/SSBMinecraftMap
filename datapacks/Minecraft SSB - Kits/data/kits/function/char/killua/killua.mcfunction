function kits:main/reset
execute if entity @a[tag=Killua] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Killua] run function kits:char/killua/kit
