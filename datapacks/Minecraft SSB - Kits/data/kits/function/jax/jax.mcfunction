function kits:_main/reset
execute if entity @a[tag=Jax] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Jax] run function kits:jax/kit
