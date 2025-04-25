function kits:main/reset
execute if entity @a[tag=Spawn] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Spawn] run function kits:char/spawn/kit
