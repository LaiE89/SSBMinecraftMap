function kits:main/reset
execute if entity @a[tag=Brucelee] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Brucelee] run function kits:char/brucelee/kit
