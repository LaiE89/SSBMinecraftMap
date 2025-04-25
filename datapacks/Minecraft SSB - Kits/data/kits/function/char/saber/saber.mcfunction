function kits:main/reset
execute if entity @a[tag=Saber] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Saber] run function kits:char/saber/kit
