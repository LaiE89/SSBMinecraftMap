function kits:main/reset
execute if entity @a[tag=Kratos] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Kratos] run function kits:char/kratos/kit
