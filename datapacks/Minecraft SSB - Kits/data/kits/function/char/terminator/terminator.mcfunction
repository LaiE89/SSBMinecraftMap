function kits:main/reset
execute if entity @a[tag=Terminator] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Terminator] run function kits:char/terminator/kit
