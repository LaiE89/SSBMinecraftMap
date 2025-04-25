function kits:main/reset
execute if entity @a[tag=Itadori] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Itadori] run function kits:char/itadori/kit
