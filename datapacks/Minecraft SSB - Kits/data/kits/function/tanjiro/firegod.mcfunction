tag @s add TanjiroFiregod
playsound minecraft:entity.generic.burn neutral @a[distance=..50] ~ ~ ~ 10 0.5 1
particle flash ~ ~ ~ 0 0 0 0 10 force
scoreboard players set @s[tag=TanjiroConstantFlux] kits.timer 1
scoreboard players set @s kits.ability4CD 1
