function kits:main/reset
execute if entity @a[tag=Siris] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Siris] run function kits:char/siris/kit
