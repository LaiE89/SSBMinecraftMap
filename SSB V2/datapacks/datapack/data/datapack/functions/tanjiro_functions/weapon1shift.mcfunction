tag @s add TanjiroConstantFlux
execute if entity @s[tag=!TanjiroFiregod] run playsound minecraft:ambient.underwater.enter neutral @a[distance=..30] ~ ~ ~ 10 0 1
execute if entity @s[tag=TanjiroFiregod] run playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..30] ~ ~ ~ 10 0 1
scoreboard players set @s Ability1CD 0
