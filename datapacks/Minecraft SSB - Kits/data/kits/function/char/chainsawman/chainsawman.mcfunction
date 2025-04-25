function kits:main/reset
execute if entity @a[tag=Denji] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Denji] run function kits:char/chainsawman/kit
