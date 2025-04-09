function kits:_main/reset
execute if entity @a[tag=Doomfist] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Doomfist] run function kits:doomfist/kit
