function kits:main/reset
execute if entity @a[tag=Cynthia] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Cynthia] run function kits:char/cynthia/kit
