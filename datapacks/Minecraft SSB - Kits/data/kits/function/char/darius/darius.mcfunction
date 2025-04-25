function kits:main/reset
execute if entity @a[tag=Darius] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Darius] run function kits:char/darius/kit
