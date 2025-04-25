function kits:main/reset
execute if entity @a[tag=Noctis] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Noctis] run function kits:char/noctis/kit
