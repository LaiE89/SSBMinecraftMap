effect give @p[tag=Ekko] minecraft:speed 2 2 true
damage @s 9 bypass:player_attack by @p[tag=Ekko]
playsound minecraft:block.end_gateway.spawn neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
particle dust{color:[0.000,1.000,0.800],scale:1} ~ ~1 ~ 0.3 0.3 0.3 0 100 force
tag @s add EkkoPassiveCD
scoreboard players reset @s kits.specific.ekkoResonance
