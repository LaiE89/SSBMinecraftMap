function kits:main/reset
execute if entity @a[tag=Trailblazer] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Trailblazer] run function kits:char/trailblazer/kit