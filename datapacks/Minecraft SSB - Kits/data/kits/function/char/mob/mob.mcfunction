function kits:main/reset
execute if entity @a[tag=Mob] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Mob] run function kits:char/mob/kit
