function kits:main/reset
execute if entity @a[tag=Doomslayer] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Doomslayer] run function kits:char/doomslayer/kit
