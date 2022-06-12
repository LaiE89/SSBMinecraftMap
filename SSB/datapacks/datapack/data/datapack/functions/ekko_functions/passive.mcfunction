effect give @p[tag=Ekko] minecraft:speed 2 2 true
function datapack:damage2 
playsound minecraft:block.end_gateway.spawn neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
particle minecraft:dust 0 1.2 0.8 1 ~ ~ ~ 1 1 1 0 100
tag @s add EkkoPassiveCD
scoreboard players reset @s EkkoResonance