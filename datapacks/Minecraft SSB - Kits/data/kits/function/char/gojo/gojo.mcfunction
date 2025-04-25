function kits:main/reset
execute if entity @a[tag=Gojo] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Gojo] run function kits:char/gojo/kit