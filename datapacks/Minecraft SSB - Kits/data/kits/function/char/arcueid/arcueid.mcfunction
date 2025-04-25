function kits:main/reset
execute if entity @a[tag=Arcueid] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Arcueid] run function kits:char/arcueid/kit
