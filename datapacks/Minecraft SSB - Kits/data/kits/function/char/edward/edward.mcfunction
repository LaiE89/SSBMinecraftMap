function kits:main/reset
execute if entity @a[tag=Edward] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Edward] run function kits:char/edward/kit
